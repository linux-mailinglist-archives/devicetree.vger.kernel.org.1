Return-Path: <devicetree+bounces-263546-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id A3AJDxW9hmkrQgQAu9opvQ
	(envelope-from <devicetree+bounces-263546-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 05:18:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84493104DD0
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 05:18:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C7F1301C8A8
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 04:18:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35C14242D76;
	Sat,  7 Feb 2026 04:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="IL/R8+0e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9638B229B2A
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 04:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.182
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770437906; cv=pass; b=eq3J1Oq8JXgvXJqPvpT5DJpdgHy9kUgoanvEuoIIHyyA/CbKLtqk873rX7EzkYIt1rkR+iWu5rHi7kjmXBNrD0m8/sYcBd25+g9nUXnLfjgMM8s1yrxLClJy/94PTS6uXgJvllkOv98QAgi7tdFtQN1gBU4qIDMMCkfXR+l3J28=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770437906; c=relaxed/simple;
	bh=GcNkLdBEoNs7zFjUQ4qrr/4WL1EwZYCheAdBqD+kcWc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R97xy35h6Ular3WvkVDUGsZmJjBvMBdc9BDURs5B8jufXYDBIlicWqNWf/SeYYzCEQMm/zcIxz3QQxnCN+k09Hdh0o0Tz8vqCmwcJZPwjTxraybxV3enIJOSulngkeoH3NLbrTEMBLwt1Mkhro8adnZbcIokFp580c+E2m22IBY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=IL/R8+0e; arc=pass smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-79627af6349so9011967b3.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 20:18:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770437904; cv=none;
        d=google.com; s=arc-20240605;
        b=HRO7a8HHaoG7UFTA7LABgAYQwRrP7NCFTFvJwbI3t8cfFufhLe54ZBvxT9o9/LwlKX
         9fLpI4p94AA7FDkm962l8F22ecn2Ug2XMeOCeQQCuMqeDKSD0aN7RMrzeUD/Gt8sDc+P
         BfnI+nozFlQhWh26OaWUDZgNoatYsiv+uckmnSdW4oUtQdhIA8uNvPxoUVTTIiNhD8pB
         1Iu969qCFny41NtWw9Pz8CkOV1z3gaKu/Fx9SVWMiIlECpIGocJtAhKdDP3uxwhXxK/b
         /nVX6+jjnFrtJqE8MRwoTmD1ZxSGfRTpUrnB1oe4NtFQpJmu6cgxNaI6BjLAcSuurAKl
         5p4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=rlqj60mTlKp9vljDo1EyV+FIHM/jq0ew3HejDNdwclg=;
        fh=bjFHjfkQ2ke7mBwBFN5Y6Vcmv8cirngb7zEeocL9cao=;
        b=W433h0gPxXORWz/ohO2rgs21aVxg9qB0IUyWscRkvu/yhMX2nXWh8QfBKrL6N0I6Ro
         RU1NiFGaijuKB9TRzMfveQTqA9BYEnHt0oSayorSbY2kBy8F1mAk+WJBx6uBx94H75Z9
         4xoQZhBCq2oER9cut8xNvJUQaGRoJjbtUg3nqmfXh70x6W189PDqNzZr/Vv54AdGY60k
         JHE01hv47wueSSbaSfZbp8vA4z3fjqmMHD3PTsD+2vMu4MmApCbmPDlhn+Fry7/ST2gS
         1cVG/a1Iognm3Ew0WwOJZbGHzRroBfVg1VDM9NnE0vdfv5np0oOrMgnCH6HBDjMRdOQo
         ylCw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1770437904; x=1771042704; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rlqj60mTlKp9vljDo1EyV+FIHM/jq0ew3HejDNdwclg=;
        b=IL/R8+0eFTSOXeNgsBnBXCopMbSPpo1b4wYfwRDW5x0kd/75WngBJ3YeoF/NUvUeZ/
         1nsgdF22w4CCeChyNQJUrjaYUXnK08winZn6RMLHdB4SpZutdsmaPJI2WSsBukM8prMk
         5P3BCQkIDjvPEfzqd8MC20dPB2pfIZtjOXjs2Ttbv/ZWBD13ll4Ho4whlQ0rLldv8HDa
         n7GbrL6QpCTGHaVyiQbOlzYr+g/MTtdkc/88nup46kWR/148mquiYasBA10ah4T8CdDw
         qlSeF2444U7tJmJpdQiYKlW8AtqNxevJDypHn6rnn+D76jRJmKyu1P5wzEhFkD7WbRfJ
         NvOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770437904; x=1771042704;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rlqj60mTlKp9vljDo1EyV+FIHM/jq0ew3HejDNdwclg=;
        b=jyWpv1cmpEX4lyHOjrDS27s4Qe3ryLutNFqdq8gIn1+CZCA5CmaR7tFBTbziC17+re
         m1IiA4RWrqLdRmOIrAwMw7fgUEL2Qo6zaWNM9CYvGA1mYBbNoSO7O6PIOGe9jYPJXDAY
         kAZTV5q27TQY77QU8hLP/spfwIsII9zxlLwx8mDu3JK4L+XQXpkw2wyxoBkg081jDLdo
         QodfNzKMMS/C/ve7x/umgm3IdR5DLApmYXkW6GglpITL9psS83ceFi1eR+VFZKnfF8sG
         HIkjyC1oXX9ksqLn7KWyvY8FLQ3ks/CAgYDo+Lgm9Zw7ezUEOJINUdfed67RHDl0Qyrw
         qe4g==
X-Forwarded-Encrypted: i=1; AJvYcCVrFfcexhZ0LevMx5p3JtWbfQdxbm7u9WZlDl9bDb8cikiTZU7DFol9uDe76DPdwysd62H3+eieDtiS@vger.kernel.org
X-Gm-Message-State: AOJu0YyXifucNLicbSnFmhd8bTd+pQgwGZ5vcCjBAcmsP1igce9L42ma
	zeHJUqFpC2vX38fzkmWvkXgT2hTMa7j07lkEz9VqKBiWoi9yi+EZR1rhkA9t73NtIDKCMsPBh5A
	A3XElPc/s6s/j41Xyv34nhtcQKxiF5tvwu3+hTTtYmQ==
X-Gm-Gg: AZuq6aL3k79454ysYesfcu7xyfULw6zxTRNZnvuZ//CUsqfIiAUesX2HzVbFc0AXWYL
	1vY3G1DIVHVfm+MO6ieqm2CC4zSLwqd9bWQuFoQlvktqBUjC7DrU/xNzlUfmVfNRrLqP37u5gHf
	AbggFu4wNqo+5JXo9Bn7/jlEQFMSgf9AkXyPNGt8ExDXuO+wUvnC2p5CMoXvMHImxSAo6UmqdXN
	TK2TqXcNgMa1BSDLCdhZBl2PTIyvI3/kCZ1tSlhxFTDe8ZTDg9TVQeN4j/f5lh5foSClHttfyFG
	DUvjPlRGsAthCVkl2DGk4VGBiwzaXFt1MyIfAiY38cspUgR1XnTgebgDHWRj
X-Received: by 2002:a05:690c:61c2:b0:793:c9d4:3c8c with SMTP id
 00721157ae682-7952a92b6b7mr103670897b3.0.1770437904547; Fri, 06 Feb 2026
 20:18:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260202-atlantis-clocks-v5-0-0922e43acaba@oss.tenstorrent.com>
 <20260202-atlantis-clocks-v5-1-0922e43acaba@oss.tenstorrent.com>
 <20260205-upbeat-tortoise-of-admiration-b3c0eb@quoll> <CAEev2e8_4LSLNvHsiC4d7Rrd2GmjQ_5GRHU6b9-Ha69+yvn5cA@mail.gmail.com>
 <92512903-4651-4ac3-b3ea-c9297e866a3a@kernel.org>
In-Reply-To: <92512903-4651-4ac3-b3ea-c9297e866a3a@kernel.org>
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Fri, 6 Feb 2026 22:18:13 -0600
X-Gm-Features: AZwV_QiHNac6LgRRtfDmS7__jtmHqoGGjoj97IGh3VIDiCdpb8PGDE9Igjmveao
Message-ID: <CAEev2e99LEoi83_d09NEJwzcSiYdFFZvLOFZUTRRrYtL_qCErw@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] dt-bindings: clk: tenstorrent: Add tenstorrent,atlantis-prcm
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>, Joel Stanley <jms@oss.tenstorrent.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, joel@jms.id.au, fustini@kernel.org, mpe@kernel.org, 
	mpe@oss.tenstorrent.com, npiggin@oss.tenstorrent.com, agross@kernel.org, 
	agross@oss.tenstorrent.com, bmasney@redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[tenstorrent.com,quarantine];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263546-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	NEURAL_HAM(-0.00)[-0.989];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tenstorrent.com:email,tenstorrent.com:dkim,infradead.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 84493104DD0
X-Rspamd-Action: no action

On Thu, Feb 5, 2026 at 12:45=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 05/02/2026 15:31, Anirudh Srinivasan wrote:
> >>> +examples:
> >>> +  - |
> >>> +    clock-controller@a8000000 {
> >>> +      compatible =3D "tenstorrent,atlantis-prcm-rcpu";
> >>> +      reg =3D <0xa8000000 0x10000>;
> >>> +      clocks =3D <&osc_24m>;
> >>> +      #clock-cells =3D <1>;
> >>> +      #reset-cells =3D <1>;
> >>> +    };
> >>> diff --git a/MAINTAINERS b/MAINTAINERS
> >>> index dc731d37c8fe..0fc7bc6d0458 100644
> >>> --- a/MAINTAINERS
> >>> +++ b/MAINTAINERS
> >>> @@ -22534,8 +22534,10 @@ M:   Joel Stanley <jms@oss.tenstorrent.com>
> >>>  L:   linux-riscv@lists.infradead.org
> >>>  S:   Maintained
> >>>  T:   git https://github.com/tenstorrent/linux.git
> >>> +F:   Documentation/devicetree/bindings/clock/tenstorrent,atlantis-pr=
cm.yaml
> >>>  F:   Documentation/devicetree/bindings/riscv/tenstorrent.yaml
> >>>  F:   arch/riscv/boot/dts/tenstorrent/
> >>> +F:   include/dt-bindings/clock/tenstorrent,atlantis-prcm.h
> >>>
> >>>  RISC-V THEAD SoC SUPPORT
> >>>  M:   Drew Fustini <fustini@kernel.org>
> >>> diff --git a/include/dt-bindings/clock/tenstorrent,atlantis-prcm.h b/=
include/dt-bindings/clock/tenstorrent,atlantis-prcm.h
> >>> new file mode 100644
> >>> index 000000000000..3820781127c3
> >>> --- /dev/null
> >>> +++ b/include/dt-bindings/clock/tenstorrent,atlantis-prcm.h
> >>
> >> Still wrong name... Look at your compatible.
> >>
> >> Please read writing bindings doc in DT dir.
> >
> > We will have multiple compatibles in the future (I dropped these in
>
> Maybe you will, maybe not. But you do not have now.

Let me add them now.

>
> > this version and I have mentioned this in the changelog in the cover
> > letter) named "tenstorrent,atlantis-prcm-xyz". The bindings document
>
> Where did you mention it? I went TWICE through it.

Conor and I were discussing these in a previous series and were
referring to them as rcpu prcm and !rcpu prcms. I use these terms to
refer to it in "Changes in v4".

>
> > suggests picking a more generic name in this case, so isn't
> > "tenstorrent,atlantis-prcm" okay for that?
>
> No, because I don't want to keep guessing this. The docs clearly ask you
> to post complete bindings, which now became less-complete, but fine.
> Then the next rule asks you to use compatible as filename. You cannot
> keep skipping the rules.

I will add all the compatibles back, so there will be 4 of them named
"tenstorrent,atlantis-prcm-xyz". In that case is it appropriate for
the filename to be "tenstorrent,atlantis-prcm.yaml"?

>
> Best regards,
> Krzysztof


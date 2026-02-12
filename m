Return-Path: <devicetree+bounces-265184-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CABaFjYnjmlrAAEAu9opvQ
	(envelope-from <devicetree+bounces-265184-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 20:17:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EA0130A05
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 20:17:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BA441303931E
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 19:17:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FC4528E0;
	Thu, 12 Feb 2026 19:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bgWOb0on"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498F5219A81
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 19:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.222.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770923826; cv=pass; b=ZZNPS1Va/pCZhSaloHQstf0t4GktlXmiUQX6kR4B9bd2L0xC74LJOKi3ViA/WNXPZllukg+umnvmy1pbG4pHHtqghOPje+aDr0AvN/IsTvkP9eEv61a6KXKO7MrG7y7ur2NLVat1NGnPAnJOdcNBRtRyXcK6ul1BKlqQBhWTrAY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770923826; c=relaxed/simple;
	bh=+5DH5ijzAvOtI7eX5+/+AuuQ4e/7LkgnyQJmj+MOH7M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=W66uoGNX4oIwH84mA3VfDfs9EWadUbON4UshPTgnS2WOmMAKc3ols8HGmdfSut926kgotGJGlm4G6omGubKkb0ir0MxdsUDu9LDMxGpPgW3gS1ba+JgYB9QUt40cdqpJqaW2k6e4HEGf/WA3NU2jCEgvIsLZQE8fwQUClqUNDbQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bgWOb0on; arc=pass smtp.client-ip=209.85.222.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-948a076d6ecso56458241.1
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 11:17:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770923824; cv=none;
        d=google.com; s=arc-20240605;
        b=WL2eis6LUrKz1/SBXdsNKa9yWtlF5ZqnUy15Ohj/UJPV0DptxTSnastrX2b2SK9A56
         weoSPZ72+Pf634vOWYiQQXwsiOdVdYxID1SGzph9KuWwQoFTOWDjI3g0DnPhDoyup3B2
         NwzIGcu8br7u6GeDLQTS6iPKUOJyfeQH1j4KDN5e0p1zIT+8l20qRIRYFPF+WJnydF6R
         ZCnpEPY1YCKhUpCnLu53kikjNpSnsDElmD+CGGQpJoli/fKQsl6kRhiGXtSCKfm2+Pkm
         xj/bXqWThnICwtzMANZGqrkEH03PN7ew7Zi/LXqZgOD5tUFQYguhg3Y4EImDyfEjSmKx
         aDXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=+5DH5ijzAvOtI7eX5+/+AuuQ4e/7LkgnyQJmj+MOH7M=;
        fh=dfXHH+vMfKk17Eco5zb/HRPDQofX4LGSv1dbbAZplLE=;
        b=UY3C6m+4y30aR0fa34px45r2ONPPwkaZ/1kwlr1YjdEAe0Fm7f8/0Bv7bOkCU3RsnK
         j27fwF5PzhXz+38owZxJ/fqnAt2qlJLo1O8wa5wB+TaFlGa2oSc9W3inpQ/5IDkttz+1
         4z8guHYcX0Fr8glQuhNtAgsQv/CUMj+nRG0mA5t2+FE+EZn197XrvkGBuwyP447gi6L9
         vtJPa143aSW0uLxybmDK1teoeWV4cIjUdNq/cOIXL4tK1D4pQhWbIMXAu/O+UowhwOz/
         P1gKSuyG/V/9jYmD17FPxXTWvGwVhIFf2RNTchr+wBoPVycven1ZmSa72TE+Nwzk8+IC
         9Pvw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770923824; x=1771528624; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+5DH5ijzAvOtI7eX5+/+AuuQ4e/7LkgnyQJmj+MOH7M=;
        b=bgWOb0ongsiTVcBqPgk82k9gFKb4Kdf11JY81uD91F99pkMhX5EiIZ6pGjbXPtTcaC
         Ho5uApMMiSBCw0qSn690v6PZ6Yov3HeR9DWgvEBGsoBZwzgwomwrRwbEKqZkkhDUiunq
         D2qHTlHgvyvH9Onew0b/21MOJL6rRMzhho1sbWd3K9Tp64hSHJUDoxLHElIwB4eaO4VO
         V8umfn7RqcQDdYd+HvZgPrpXG2ImNvpkO+KUN6nStRv3lsXHuHTvItM8442wFyY072dd
         Dz5YSLtNSE3k3BUlfmHrDy7XyV0lAe2QS3CocKExTXWU8K0rBCQAqax/3Pckz5zJWKQ9
         i99g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770923824; x=1771528624;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+5DH5ijzAvOtI7eX5+/+AuuQ4e/7LkgnyQJmj+MOH7M=;
        b=S7Q+6ABgCPVyPjUyC51KVSppATfZGUAVHteNWejY8GT3ia+GEsbyAVaOC04bdsUv29
         Y2Pb6DSC2xDmLAUm3sagqSTkzszdcp8I5P4lb3BwFLQCHxR66dZqdmGIJQSdvrhxMQst
         p4WsEWbJKfPTgchNpS3P7nAT/92lmRC5eRT8fwYxp0fSEIKmqFrK9/Qg/AS+BI1hnDR4
         +X1zPvW76L69tlqXMXvA9kk8IlkaywY/pGfgXHKFb4Wq1eb947cb12Xm1Nsfh0eoyQzT
         v1O6tmfKybiVh3nNEka7RPi4jt0+5Qe3zqNpi5VYW/agfJf7J+PlI/u9Y8Th85b+M8VR
         DA9g==
X-Forwarded-Encrypted: i=1; AJvYcCX53UsgiOUH8pBWw5PyI6TpHgUcF8Ji8qsCUm5q8qhwH3ytCFaeiEaERWlW3K2Np1IBwAtQuoRP1vFL@vger.kernel.org
X-Gm-Message-State: AOJu0YysvOE6W0ngsiq348JmfHKTicLiO9/l2VrlEFrrdstX9+mM7T8+
	te7ilh3QPeVErKtNkrhxShEtWsLB5weDjSg02ffSnk2zR3+yBJjZKTdY1aXCFAwbzlKnYlHZWdj
	dftWs0npDEwZbfh/9bJ06ofDY/gpUSGA=
X-Gm-Gg: AZuq6aIn0IF7XY6k/ULzoiA68jQ6ZqMPPW8/N28dTX8nZFvjg3RxTzL0+ifDizYEd0e
	Kuw0WJddN76aAIfx452XaA9tCdTDVLxFfvg5BqZEHZr/Z9kowsHreLWhilLXScx0hRkqtBS+xbE
	0Kby4wp/zZ4yp2ix3LEJfa17j8g5mCdfaPG/I5At2dpxyCdKL9UbwXlR24xcm31a3Cgmxx8C5Gn
	WrGVvUtjYMrnMgNdo6Bbuft+QmWmOG5CqO67hR5TGZCjet8uRKnV46N64sAZRXDn8VldqP39vb3
	IV5vTYdaNJxFptT9H/fG4GV8S4ZV7vW+saQqShmCLLqBMTX2pZMN1/Oa5fLtpxexMfn8
X-Received: by 2002:a05:6102:160f:b0:5ee:a0de:65ea with SMTP id
 ada2fe7eead31-5fdfbb9efc0mr1372507137.38.1770923824150; Thu, 12 Feb 2026
 11:17:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211081355.3028947-1-james.hilliard1@gmail.com>
 <20260211081355.3028947-2-james.hilliard1@gmail.com> <CAMRc=MfgoKmsNAmn3rO2jDL-ZArMX2Jh-n4SnV6rpzRY3KSwuA@mail.gmail.com>
 <34a9b531-4f53-47ee-861e-1b18ff1a5752@kernel.org> <CAMRc=MfwQ8J7eT_geEf7Kj230SOvmO-LDHz9a_YgfRY-QB5V8w@mail.gmail.com>
 <20260211214708.GA3947691-robh@kernel.org> <CADvTj4p-zHMrXW+GJstB2sKS-7Wij98JNJGoiPiYmaP5RHhNQg@mail.gmail.com>
 <9afa52c1-b7de-4ccb-9114-a142567d21af@kernel.org>
In-Reply-To: <9afa52c1-b7de-4ccb-9114-a142567d21af@kernel.org>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Thu, 12 Feb 2026 12:16:54 -0700
X-Gm-Features: AZwV_QjTJOnpuLDi2ZHGibY0A42KReJLVkc_FuXVhU2nbfu1jpgvU9PmIjUN8P8
Message-ID: <CADvTj4pmAXo+KUMyB0=+x3HRdUdUq=baj_pnoa44oxnugZuTOg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] gpio: aggregator: add gpio-aggregator DT compatible
To: Krzysztof Kozlowski <krzk@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Bartosz Golaszewski <brgl@kernel.org>
Cc: Rob Herring <robh@kernel.org>, linux-gpio@vger.kernel.org, 
	Linus Walleij <linusw@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alexander Stein <linux@ew.tq-group.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Herve Codina <herve.codina@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265184-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jameshilliard1@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,glider.be:email,bootlin.com:url]
X-Rspamd-Queue-Id: C8EA0130A05
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 12:18=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On 11/02/2026 22:49, James Hilliard wrote:
> >>>>>
> >>>>> Regardless of the DT bindings - this change is perfectly fine. We d=
o
> >>>>
> >>>> You cannot have compatible without DT bindings, so this alone is not
> >>>> "perfectly fine". Maybe you wanted platform_device_id entry for
> >>>> ACPI/legacy/MFD devices?
> >>>>
> >>>
> >>> Sure you can, you just can't put it into upstream devicetree sources.
> >>> We have had a compatible for gpio-sim for testing purposes for years.
> >>> Why would it be illegal to enable matching of platform drivers over D=
T
> >>> for testing purposes?
> >>
> >> The primary issue is undocumented ones show up in 'make
> >> dt_compatible_check'. I would like that to be warning free.
> >
> > Would adding it here make sense?
> > https://github.com/torvalds/linux/blob/v6.19/Documentation/devicetree/b=
indings/incomplete-devices.yaml#L243-L245
>
> What would you like to achieve with that? The binding patch did not have
> rationale why do we want it and here is the same question - what sort of
> problem is being solved by adding it to incomplete (so wrong) devices?

See details for what I'm trying to accomplish with gpio-aggregator:
https://lore.kernel.org/all/CADvTj4oBtO0Yhib1rE8QQwgtJvy-x_hK46C63mjVAydtxH=
OV8g@mail.gmail.com/

I'm basically trying to use it for the reasons described here:
https://bootlin.com/blog/gpio-aggregator-a-virtual-gpio-chip/

Is there a different device tree mechanism that can be used to
name individual gpio lines on a gpiochip without having to name
all of them for non-hog lines?

I'm confused why a "gpio-delay" compatible is allowed but one
without the delay param is not?

Or is the issue just with the name of the compatible I used being
called "gpio-aggregator"?

> This is not a pure virtual device, but for use with actual hardware.
>
> Nacked-by: Geert Uytterhoeven <geert+renesas@glider.be>

I'm trying to use this with actual hardware, I just called it "virtual"
because that's how it was described in the bootlin blog post.

I'm confused about what the issue is here as "gpio-delay" is also
a virtual device in the same way.

> Well, it is a virtual device in that there's no actual "aggregator"
> device on the board. It virtually aggregates GPIOs into a separate
> chip for user's convenience. While there's no such device as a
> gpio-aggregator - and so we must not put it into bindings nor into
> mainline devicetree sources - having a compatible matching in the
> driver is perfectly fine IMO. Just like gpio-sim.

There's no such "gpio-delay" device either right? I'm confused
why that compatible can exist but one without the delay param can
not in the mainline sources. Aren't they both virtual devices?


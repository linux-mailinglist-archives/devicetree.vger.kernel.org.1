Return-Path: <devicetree+bounces-278925-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKglBR3+wGmiPQQAu9opvQ
	(envelope-from <devicetree+bounces-278925-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 09:47:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 753CD2EE6F0
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 09:47:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F39073037E40
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 08:39:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F33A437F005;
	Mon, 23 Mar 2026 08:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XHHc77QV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0444637FF66
	for <devicetree@vger.kernel.org>; Mon, 23 Mar 2026 08:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.43
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774255182; cv=pass; b=ZemKk79xsi/w7auGBBHvLxJzx2uyUzyA+VQA/oTeHLICC8Fw8Cf9w+6q+gKUcyN0CkSdbAYiQvcf8roMXt85h7wrKmcGfv2MOMLFAZX1RrOM2BdRecvh0k7+DoHwNyiGmlpf3uNaFfKo6UVlddumI5Y1uyFSAHxQy8IZtnbKcaY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774255182; c=relaxed/simple;
	bh=EmmyJFrLKT85XSK+HqCAF6rUkXHVUHJjs7/8BnxCbhs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HMh5vNdFRr66ZGgA2QnfrfFl87QCBzpjdzCWhbp5t8LYVjopJ1kH5SY5CAvTCIzdraX6yhb2/WQosSGfirVzEaZF4xQA2pFV/6Xmp/8m0uwtrt7Tbl1WvG3l7Z7fWBhXNyoDXOYwAg30BQoib0zKu8CC++kllIwrpxWCL3VjAuo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XHHc77QV; arc=pass smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5a27a90a7b6so4635449e87.1
        for <devicetree@vger.kernel.org>; Mon, 23 Mar 2026 01:39:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774255175; cv=none;
        d=google.com; s=arc-20240605;
        b=CgZd3ii5/pA2+wOQbuL4Tsr88GjryUq3V4yecK94r3Vg6Q7Y66X2ENONTKxtqZ1jF7
         ZOMoataG8s6/nFU82eLC5x/ou8owdpoxPY15hRhtmdFDvV7tx8A7XZ7a20PATsUam7oV
         SX5n3VHsCvFd5xwGuXjm5iSbOWMrJkyk9xngmpny81lPkcuo0+0cDa7vcJ4PFYN/2LzN
         SDyJSPkwVS37iN480M2jN2wKwTXX9UwmvsRFM54Fsb0olIoPaUhiNGKnGqvDgcCdcA92
         CDuy18wcsDJCgoDSUpC+OG15lqKudOzGbmk19i7Gu1ZNvTJieB4MKx95PlCUP0pIGbJu
         Wb4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=QWGzUWcfHBKIzGr4tnQ7GmzA7vBYgSXg555q3Uctmw4=;
        fh=MW4bDPohfSiLoI2suv6G/sq2njUyw6LSl4qXiuAEntc=;
        b=jmZitR8O9PsCzGNL/26SZ3JasQdNL5sBmxqsviUOZwH33jvSwu+WSTVsE8qMIU+sn7
         9F4iu5T+rTuymmnnXd67vKnz3/KPP03sWrldiG0jg7SwL+WAi3Xs8C6ayubVrQAR50H+
         SwEF60VLyqPrNwzEQ/AC3pZpsJS5jnsnrruQUSSPaZFv5VAiHy/GLcs5X5RHZ81hE6Zc
         ogiBbzEQ8V8NkTIAuayvUMNuoYxPSzHRT7RLHcWJcfAECvDMOgIvoDC0lwuJ3Rt1TcBU
         CbkY6Tk4o1IIdjJZeumMmmCb7JSxaJQGHKoopy6KkXBOAHZwt/epKJ477sNQJR9xRCdw
         vtUA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774255175; x=1774859975; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QWGzUWcfHBKIzGr4tnQ7GmzA7vBYgSXg555q3Uctmw4=;
        b=XHHc77QVpruL5KyIN2ZbaKi8Adz8k2POZ/6jmYcplylYOCXMgnE8x4V0sfack52l+3
         VVh2MWtTc3eMTkE2KViwjhbPV9Wdurronh0N5Vc+S4oUVi9bEQfmWfxyGY2vsPHmpmTn
         s53YTFXJloHCwIg3I8VQ2eFjyW1WbZADI0wR2b0tj2f5znKOu+GwaSWDucP3HaBGgyOO
         g3mEktW9T7PNXP8YAPWjd3CL9WjQeKznpQ4lSQQHH9o5O1g5aO2GuDZp7HS9kxhYW6Yz
         YpZ3XyUUyfeLzZyoPgc9e2+a6+16wu9cRjHmopf6/V4ZxskPAuQ898NFQkKRczY/RuEA
         NlZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774255175; x=1774859975;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QWGzUWcfHBKIzGr4tnQ7GmzA7vBYgSXg555q3Uctmw4=;
        b=Mxjg0mI++Wh71jbGJUhZYaxuRkglP4cqaPXUxDKYiQQIHW88wKAaMptK2G8q/1vqj4
         KrQfSkZs05uZBPNRtEEySfrt/X18gR/2KYh9iN7WNj58+tbE5xdeEHad7wCsaSuU/U5I
         yCsnVSaiTIcJh59ITngWS4Fhi3/jBNxsb5hRTgObTFh6+SuL3Nx58DpEWTeqI2brfb/u
         aDf5pguLhhRwlXDqW5tf+qjwbzM9fUDYKiZERCniTLYu/oOBPWcwIT63srl8CMiP/yJW
         talB+orZZUlcRWxpj0fs9etCrdQxWUzydS2LWjbAKtl/33GDRUzJR9bwDqX1VOmmXnyZ
         jf9w==
X-Forwarded-Encrypted: i=1; AJvYcCXu44lR8sd1FKTEMrDWU/AwmyxDnpmvBVBzQrkLkzKTQUD8arIEPHLIkKQEz43i9QbfTUkHn4EuyFAZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyz0y3eV1jivPkoS2N0aFTNZzC/92RWHeKfXbiLLxlDVOvaLbNo
	hBHeVwPiL0MTCW61r11Prjo1sDpk/H/Ic04uI2Bd8Nq3U7BYklmZ7nIMNlB7SwF0tAT4lbm1FYJ
	uYllvBUGlI/WP6SEwPrR+K1+vaV5RBEs=
X-Gm-Gg: ATEYQzz6ML7L/ypYbtasY9EyGCqkEk6pwRNseuYHtUJFpV1ytabVQTtJ6WPXfa9Y58a
	+dEjI5PTdU+HTKwTH2eYD0MJDcq/5OAoLs9+Yc/0cGiFmKrvbB2s7hkDGshLXsE96rtFxDz8DQf
	o5maxtBwroa4nbn4VikMIKkdq016YE2oCcxiEQnoFm2ZXmYjv8qQMTbxcGWuSQV36MlvpYHQelo
	fmvvq96juAXkumvDT7L1ThSadGBaXoqlCV2Jd5C5Py6+Q7NuxERd3DD5c+U3iVCPLqjee0ggJu+
	p3+5t1zDTJvxjad+pzjGbGMh+WTgLkFnUvdMU3Z2Hcu8AuS4p56EqrKvMmVqZI2jfGBMtMHSnHP
	qUWk=
X-Received: by 2002:a05:6512:224e:b0:5a1:3207:694c with SMTP id
 2adb3069b0e04-5a285b80c25mr4739491e87.29.1774255174670; Mon, 23 Mar 2026
 01:39:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260322-ayn-qcs8550-v3-0-4afa89c20888@gmail.com>
 <20260322-ayn-qcs8550-v3-1-4afa89c20888@gmail.com> <20260323-laughing-pumpkin-oarfish-99fafb@quoll>
In-Reply-To: <20260323-laughing-pumpkin-oarfish-99fafb@quoll>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Mon, 23 Mar 2026 03:39:23 -0500
X-Gm-Features: AaiRm50M6Gx3VDWmamN9kZNFdkjwauBN-_A31lmZhVwCens0UXbD-G998xkOdfg
Message-ID: <CALHNRZ_2tUuiBBuH-QGi8VQbZSVhQg2KGd-dQVJMq+HKiGwpmg@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: arm: qcom: Add AYN QCS8550 Devices
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-278925-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 753CD2EE6F0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 23, 2026 at 2:51=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Sun, Mar 22, 2026 at 09:05:18PM -0500, Aaron Kling wrote:
> > Namely:
> > * Odin 2
> > * Odin 2 Mini
> > * Odin 2 Portal
> > * Thor
> >
> > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/arm/qcom.yaml | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Document=
ation/devicetree/bindings/arm/qcom.yaml
> > index d054a8f5632d853509b7cd37f07f02473cf6bf71..ee68963c30eae10fd3b3a5e=
21bda63ab941893fa 100644
> > --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> > +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> > @@ -1075,6 +1075,15 @@ properties:
> >            - const: qcom,qcs8550
> >            - const: qcom,sm8550
> >
> > +      - items:
> > +          - enum:
> > +              - ayntec,odin2
> > +              - ayntec,odin2mini
> > +              - ayntec,odin2portal
> > +              - ayntec,thor
>
> I already commented on vendor prefix patch, that you incorrectly moved
> it out from this set. This only stalls your patchsets, because none of
> the trees will have it thus none will pass any checks.

You mean the checks that passed just fine on v2? This is documented in
the cover letter, which apparently no one ever reads so I wonder why
we even write them; and listed as a dep, which said checks pick up
just fine.

As I have mentioned multiple times, the vendor patch is separate
because I have multiple open series that depend on the vendor and
there's no telling which one will be picked up first.

Aaron


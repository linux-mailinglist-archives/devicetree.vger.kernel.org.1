Return-Path: <devicetree+bounces-269084-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Fe6MqQ/oWnsrQQAu9opvQ
	(envelope-from <devicetree+bounces-269084-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:54:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 550831B38B6
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:54:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3243B300D715
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 06:52:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF91A3876D0;
	Fri, 27 Feb 2026 06:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="di+605jT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9865933A9DC
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 06:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.210.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772175127; cv=pass; b=gt+8V2YCvw9WsI+iU9Vddv4yDXJiXJrcY7ccbRpPmu6cggOrxIvSi1hbra8/Idz1oasio3ktbxx5iDUO39Y7pv6eEe1iH/QnL4LocBm/rpm/NgtkQ+jPlf8VAvTnE40FjyDnhjMusXwKxvT2alD+vVhFCLc0pnbamA50WvxtZFw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772175127; c=relaxed/simple;
	bh=g9wHoPkDzs7dsMviLr9ahhhO07mSBUmi2+nWedJpil4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=p4YVyVyRPKowLoS7f+2rM7QdAXf5q2S5SlxgM6LHjX7i3yLsOgqEJeHP6MYAqF7VI93zsIVtHj4+XEgqXsb9fGhj+wIzjO6l8oU0bD+iKPU8Vhu3h7OKdl0QIWELQEM3LPmILt6uGLzbf1IndxeS4zL5S4mVWnOnG9GtfJ7pvZg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=di+605jT; arc=pass smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-7d596a5be31so100638a34.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 22:52:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772175125; cv=none;
        d=google.com; s=arc-20240605;
        b=atBbXIchaQTf4/injbpko0Se9FZQmgButjW+YoFnasC4uUaGXf/vdIxNa/1JgR42aN
         V3ICNb4ry0OlL318tI4PKbQ85EH8Nlgkyxs6T+a1gNB/mJY/VIfq7/FtgZX0gmGylXAL
         PyjMIrRfaLPStNPkf2VFLMYGPFOvpsaLfLUcyEI1FuhIAB72pdfb2lx9iOEc1AgGujPX
         318Yt/ubRjaZHD5qCHZUSsaFDf0G5pqvRiWMEVz9gPKp8vLw/9V7A16v3sFIOYxMk4Ze
         N+kdywwi1qGKRWKtO4iheWChJJ//moXzmh6ZU2j1JPN5CcLXbuC0si6RWcfWEmWqiVev
         p8UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=W+hpkMHQxm9A5ILtjnEVwOWZsFYHiCVwtuiqtCxtlTQ=;
        fh=k6VYvaDkkt21ir3/wZQc3VMXRVniSLL2XFmjkDj+kOA=;
        b=lvefcX/NmEps2KRis3fRo00QaN5aulms2aN7I26GGjl1jF+xy5xsrO4wO+eXTdwfGD
         Nc0BqFzQTQS1nMlRwqF6mkjKuFxh3Dv3k0B/CTcOs030tPsquKlNb48ajgEhuFPK4X3S
         K0IL+78gEoPbyfVmcwSPzUyALDLp8EBYBNfQnCO1/KjYAfqEW5T0ZjZvaaKB/+uU6rJt
         XF1wAkj5g/IPslE1zLvIDbZnRLcM0pRTp659U4MxIN1wTbiy5zg72iOM0m0jGq/kQ2Pt
         yQVENvYiHcdoIJsC5/zAK72oO8r21CewrsG9rcaJJr0u/EocaVcAmDF/XmLTaQUkAE9I
         mYcg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1772175125; x=1772779925; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W+hpkMHQxm9A5ILtjnEVwOWZsFYHiCVwtuiqtCxtlTQ=;
        b=di+605jTT5XFpMfGTWj5xroP0Prd6GqMdnGS1F7yEqPXRUT+0/8Bqo6j0ig1t0UwO2
         mEUk+mvz538w/bsX7urJ3LOF+K+eKAnKbBjEcfftUipA2yRsPo9lUiV8hvY4XFoIhRY5
         N0YE9VE1ehfamKwFhHEngHgwP5xSLn7lXXwLhb+lkou68qx4XOfX92D4EO1GWkIDFAQY
         ioDZhVauUR7rhI05ev8gsnRfMA8p/yiN8hx2ORU5s/uDcKubHaKDnDv6aKaSL5G2T94E
         Cp6kY+hQGqBoezBRGREmCrgHtjm0INPaeGBMAzQR3C4d/P/E4hjVF3Io33AxbZryosHM
         uDsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772175125; x=1772779925;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=W+hpkMHQxm9A5ILtjnEVwOWZsFYHiCVwtuiqtCxtlTQ=;
        b=fHqy3biYebEXxXXysBNatjY1x7iXdQ2ONo109QzWv6Mn2cc/n9YFRV0mRgyRvrJtmp
         IMF7KPWozvanwcyXjXm0I9JzEd7vPK6QISL/IZ4btXGIHzdqPUgJIcgWtbhQf7S0N9/K
         lOYL77ZoXjHyEoKRdHB7AdN0n5YX5rUknHG7Cb5Mal/Up5H08VxidT6WIkqPistQ69HV
         WnDQkZMCXeBCmFsnjPFRWw6we6P3JF6C6Qwn1o7JuimOSXfSMMzCKBKF6msE6aiSS+6o
         3JuR6Cuw7/j+tsEGO17vDkNynUyUb0UlYkH349WNiY3jRfSc8fWAy1TE7k6pP7BRd0IY
         WGMA==
X-Forwarded-Encrypted: i=1; AJvYcCUrZpWxI843ZEPL4s7AfEaZp4fev/76MEcCn4UMnj1hwJfz/b8lyF/OTb+v3JRptRJO6ZItC4YiGQ1n@vger.kernel.org
X-Gm-Message-State: AOJu0Yxouy5DwZkYhrdO9oZeRoFZtI/QMIx53PFxEm6/rsQff8xw2ntB
	kEJbe5BADAkKxMsoSZgl/i9pI81CJUUJebjHCrhqSh7XsVt0/WCbwMkkhH/4Tf4vxDNSrKJ1mpS
	FjlP5M0GMf0XKnnhvvv6BBdL39Me+jmyX1kyQsSxi
X-Gm-Gg: ATEYQzyiZ1Uv1D7XleeLR05SzAPPBGaqGSRlRl1leqNePAJ7HpZtRrViU2qBioN6Can
	Ehdk19wD76jtXDSr88LYK0UmS3bYfJlwkzLam4dNdsW2fgkXH4aw48D6DNJOqxATRMotHyt8UlT
	r9/K/8uKu0KjtrdAPxqYluVOdpdu/Vt8/sDX4WzO5OFMKm5nB5wJ9+ukB7tNZc0U1cnMM+1JW0E
	aYhYG7UyB7VW28JOsCRKqsAbwKpnq4FqmtfIYsZvdAmHer9ItEjnSuoXHGjV2LQj8QlYhegfhvx
	auDQOyEULOpo00Z/owk581efpVog+v9bdVhI3Vu0rtGG2rngvrE=
X-Received: by 2002:a05:6830:83bc:b0:7cf:d18e:706e with SMTP id
 46e09a7af769-7d591b237bemr1327887a34.5.1772175125157; Thu, 26 Feb 2026
 22:52:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260226061053.2596167-1-badhri@google.com> <8eeadb7a-5075-4444-8714-45e589dda47f@kernel.org>
 <0c91fa84-dd0e-45bf-9c08-3b374daed7ba@kernel.org>
In-Reply-To: <0c91fa84-dd0e-45bf-9c08-3b374daed7ba@kernel.org>
From: Badhri Jagan Sridharan <badhri@google.com>
Date: Thu, 26 Feb 2026 22:51:28 -0800
X-Gm-Features: AaiRm50NTve-AmaddguPfEtEJC8GabDksFfWp4neLtEZ19nDLqFIv74vF5-ygN0
Message-ID: <CAPTae5KuLGcK1TE2HcJHT9X_fXef=JSyoCSf4TF41_oTc2Lpuw@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: exynos: gs101: Enable AVS APDO
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Amit Sunil Dhamne <amitsd@google.com>, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269084-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[badhri@google.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[google.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 550831B38B6
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 10:51=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On 26/02/2026 07:51, Krzysztof Kozlowski wrote:
> > On 26/02/2026 07:10, Badhri Jagan Sridharan wrote:
> >> Enable USB PD SPR AVS for gs101 by adding SPR AVS APDO to the sink cap=
s
> >> pusblished by gs101.
> >>
> >> Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
> >> ---
> >> Depends-on:https://lore.kernel.org/lkml/20260226055311.2591357-1-badhr=
i@google.com/
> >
> > Really, how? If it depends on that, it is wrong and cannot be applied.
> > DTS cannot depend on the hardware. NAK.
>
> s/hardware/drivers/ obviously...
>
> >
> >>
> >>  arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi=
 b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
> >> index 93892adaa679..5a689be61432 100644
> >> --- a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
> >> +++ b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
> >> @@ -174,6 +174,7 @@ connector {
> >>                                              | PDO_FIXED_HIGHER_CAP
> >>                                              | PDO_FIXED_DUAL_ROLE))
> >>                                   PDO_FIXED(9000, 2200, 0)
> >> +                                 PDO_SPR_AVS_SNK_APDO(3000, 3000)
> >>                                   PDO_PPS_APDO(5000, 11000, 3000)>;
> >>                      sink-vdos =3D <VDO_IDH(1, 1, IDH_PTYPE_PERIPH, 0,
> >>                                           IDH_PTYPE_DFP_HOST, 2, 0x18d=
1)
> >>
> >> base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
> >> prerequisite-patch-id: 4dacd8bc550e317d67134d030814765fb9f4c6e1
> >> prerequisite-patch-id: e863378fc602b6bee2e9fdd8c568003c00b2a38e
> >> prerequisite-patch-id: 202a9e1e9cf27a0b9ff7ebea76eb45cdac2cb581
> >> prerequisite-patch-id: f3817c560d0e701d7499fa1fb9ee40d22816c09e
> >> prerequisite-patch-id: c071913307a6eaa417d1345485d7a9c165d40834
> >
> > 5 patches here. This is confusing.

Apologies for the confusion Krzysztof. This DTS change depends only on
the binding defined in the topic:
https://lore.kernel.org/lkml/20260226055311.2591357-1-badhri@google.com/).
I will drop the  prerequisite-patch-id and will add the following in
V2 where just the binding from topic is marked depends-on by this
patch. i.e.

Depends-on: https://lore.kernel.org/lkml/20260226055311.2591357-2-badhri@go=
ogle.com/

>
> Best regards,
> Krzysztof


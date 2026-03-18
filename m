Return-Path: <devicetree+bounces-277477-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGmXE1wYu2k+fAIAu9opvQ
	(envelope-from <devicetree+bounces-277477-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 22:25:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA6F2C2F4C
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 22:25:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9CB3D30B0A6F
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 21:25:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DC3637CD42;
	Wed, 18 Mar 2026 21:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Re2OHwjP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A209937A4AF
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 21:25:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773869142; cv=pass; b=PWYbbxemqnHUVcRcbDD/4Qarn4YEHwaGJrZ+GVcyVdarKE55KJXYoOxYmL7qEBgrn80JBjuRQIyyaoKcffdqVfWP2o0ax/zptXs67rMnT0AJ0d9jtKwv4up4jSAZWcMco9tu3HAjJu7vHmOlD6l6hiEpT6BX+XndQwXNxVqBy5k=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773869142; c=relaxed/simple;
	bh=EQzldedRTpvLua9RqcprZmThFLsNIvG4JO/73zahzZY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OJ51vlyCRV1VhRCyL1A+QVcaPx6EpeQmuYc5utJrrP/GZ1pz98uaWAoBtH46WBL9UMitg4pHMT841vT4nPlptzi+0rZ4hhjwVcmIAGRZPl4bfONUr8DkgAEy9NRlbQVhz16sJkBecu5ErwD3zZt9NvqWhigcFUR57QWRObX0OiQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Re2OHwjP; arc=pass smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b8d7f22d405so44194166b.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:25:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773869139; cv=none;
        d=google.com; s=arc-20240605;
        b=OJz3/PaBSJLlwaMeWhEl/lAFHEyTLAfCSHm/TvksZRVjS1H0qZq13gBkdCgBL/qWYf
         I0ttiN/KIkIn8KfVJUNXWGGfhKkCpjkMczaR/sFSNxXuZRvIX9XQYqsPQJ3JK+GvLWDc
         VQAYOz150rD61B7xeQkUASc+9oSIBoKaLXMF1209qfSFKocUCsY4n7/3s1OpWVW4N9Og
         EzRp2oQTHLy9evFceNtyBBdZbeuvnuuH4kwWOA+eOiD4R1IDp1T/949V9YXkbVbDzrT3
         reIDtSpGsWf+HGuiKDFsw1IR4rnyCOKBmAx0Alg5zP/03X8KYOlNGYtV+lCKvuNXA4hZ
         IrLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=K6f1m8W1umobQ+ktMqqvSwqw9J/2mgt2skFeEG9RxsI=;
        fh=619E7Jk/2U/HxY2R2VuLtFeUUTdopP8paqjm1hSFQK0=;
        b=QbiFc/PVj372ZIxvk7MY1q/kiI546BlRKz5YxwZ0mYjQkJV4e2/W20qtXKk7fbQ1IF
         QufdZyU458lgO/hyIKa5JEvaPd3+VLM6I37yC7Yt1qtY9GMl7AQgcRWn+tt41tGw/AJx
         yv8pwyBVl3kLMoVJWrc2/t53X9QkiI9p7QPreed1JoUDzKeC4UBLJee5J+yNw8GrnP2H
         YW8fvsT15x1otRkp0i9jElOubuOOh2IDiG8nldPTrMP3jpJnfdFIsrFMBOm2EsE6UKW6
         r9/VHRXqi4/hPzSNKGcCEADb4D5e9e0vfH1We2T5xS/MI8TD/O5KOqgJboL5S6OvW0cu
         Efug==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773869139; x=1774473939; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=K6f1m8W1umobQ+ktMqqvSwqw9J/2mgt2skFeEG9RxsI=;
        b=Re2OHwjPI/wDcppVPDTGr/Fitxq6TGT4tDY56to6JnJhMTzzYCnafDK2PCKKqDSUhn
         BsEOrJGmt853phtdlbowPRteBqyNBP2j/wLp2BNDngQ8Hr+WDtb0lfJTnLWr8J3xSMFv
         M6J6232/9vpMujn96uwoXZjGFD0Mvgz7BE8MN6bSibhrvytfifEJT/eGz63qWwHHuLYi
         YrUA0/dWuACmf31FnFD1Na/MNCDQ7gFYhTyFqTPVoSiNmt6c6Qpp7TClWNTea3UMaECd
         rWXoYYF793tZZfc3i3TgpUr5JwMODjualvrvBQTo5Fyfgcc+6nUn9WM3fkL17AaQ+Md5
         i19g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773869139; x=1774473939;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K6f1m8W1umobQ+ktMqqvSwqw9J/2mgt2skFeEG9RxsI=;
        b=UdXrwbd4MNGHtY790k4STNsQ3WWDurZUubks8u7YtHG4LzLus2UXoFsGw0tCsbwgBZ
         VUSKH862bB9qmnzbr7KWIID8x1ymCb1qvwg9WNhEW+lOacYLYsIbAMm1kA2rfiOj19hX
         iN8Vvo5wya/CMLbs9GPFZ9+xWTLA4kTh5snaFOM4AhjgrG35oUpPApMJQ16Y+mXVy0yn
         DasWPashsbCzN38MdB8AzuRL+a/6bEpqu7YUx/6lO6Qc4q+PlsTm+Bc9m0EmkDPkDrba
         topHJdNkc9ZqQimMFzvRACUkAxeAk0RFYTmWQexBqMDIsrkWqTcOtPJQnW4TgEopX5vd
         CtEw==
X-Forwarded-Encrypted: i=1; AJvYcCUd4L6mEsQ+Nme0uxkyTP/jm3iqIlFtKCvDueVbGXmpI/aV7o+yYdNVSVg1TpqizAXknA5FG26+UHdb@vger.kernel.org
X-Gm-Message-State: AOJu0YxTp14yYNRuM9bBmP8q+HQ+Iw5RzLBK6el9UaVzUiqLkUWJgTlV
	aYKcxTxDweNERNl8UXw1o/mErjl3Oq4VGZQDNgFPSG0Ni4J2z4R/IiSoQ6SyRLesHtygu/J3vsr
	5p4jtdlujnOSPl+N3Q5Qlnf8BcaWI6rQ=
X-Gm-Gg: ATEYQzzs67L7DXtNMXaIglGzThBhQ0axeENWB7eQ5kpzi4D5yiKS0Qj5//FR26Gk7Fj
	GFii9LrPykOS1bQvA555p2aK7cDSKoBiMS+oiAW8lCQiNO3nUEB3adGVUeHh/uL4uuT/Z1eTx+1
	U8n+Sz+9lnUHDo+qEP72pFeEHlDaxAnVWVG6PllbL317blna9J2PhXPbZ8mu+gew0ZeeUx1hARk
	tkyGxnL3s8oFm50+4F2qzKlS3/mzxRLIoiWumeINwMhE/yUrrHYSPQL6ddAM55BLpXsIfxpFn5M
	EVdjPQ==
X-Received: by 2002:a17:906:99c5:b0:b93:9407:ea5c with SMTP id
 a640c23a62f3a-b97f4b70e51mr342818966b.57.1773869138582; Wed, 18 Mar 2026
 14:25:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260317184507.523060-1-l.scorcia@gmail.com> <20260317184507.523060-4-l.scorcia@gmail.com>
 <20260318-nickel-serval-of-tolerance-621bad@quoll>
In-Reply-To: <20260318-nickel-serval-of-tolerance-621bad@quoll>
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Date: Wed, 18 Mar 2026 22:25:26 +0100
X-Gm-Features: AaiRm51yI9RGCvrRh7GVNMdJwfVjHSZ_bJ1ljw9KDUXHaZfxU7GvIWfUsRzyb80
Message-ID: <CAORyz2Laoo4EiLcHZ-ygLiFGW_h8qV7QxqNsMbueM=nov5zH0A@mail.gmail.com>
Subject: Re: [PATCH v3 3/9] dt-bindings: regulator: Document MediaTek MT6392
 PMIC Regulators
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-mediatek@lists.infradead.org, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Sen Chu <sen.chu@mediatek.com>, 
	Sean Wang <sean.wang@mediatek.com>, Macpaul Lin <macpaul.lin@mediatek.com>, 
	Lee Jones <lee@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Linus Walleij <linusw@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Julien Massot <julien.massot@collabora.com>, Gary Bisson <bisson.gary@gmail.com>, 
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>, Val Packett <val@packett.cool>, 
	Fabien Parent <parent.f@gmail.com>, Chen Zhong <chen.zhong@mediatek.com>, 
	linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277477-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com,kernel.org,mediatek.com,collabora.com,packett.cool,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.823];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: EDA6F2C2F4C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Il giorno mer 18 mar 2026 alle ore 08:43 Krzysztof Kozlowski
<krzk@kernel.org> ha scritto:

> Please use subject prefixes matching the subsystem. You can get them for
> example with 'git log --oneline -- DIRECTORY_OR_FILE' on the directory
> your patch is touching. For bindings, the preferred subjects are
> explained here:
> https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters
>
> You already received this feedback from Mark.

I am sorry I missed these. I will revise all of them in the next version.

> > +++ b/Documentation/devicetree/bindings/regulator/mediatek,mt6392-regulator.yaml
[...]
> > +properties:
> > +  compatible:
> > +    items:
> > +      - const: mediatek,mt6392-regulator
>
> Drop compatible. Regulator nodes do not have compatibles.

Thanks for this comment. It took me a while to understand what you
meant as most of the MediaTek PMIC regulator drivers still require the
compatible node to probe, including MT6397 that was the template for
this patch. I compared the driver to MT6359 that does not use it and I
am now working on the driver to not rely on it.

> With this, you can also drop example as it won't be used.

Just to be sure - do you mean remove the compatible attribute from the
example, or the whole example section?

> > +
> > +patternProperties:
> > +  "^(buck_)?v(core|proc|sys)$":
>
> Nope, underscores are not allowed. Use only hyphens.

Got it. I will actually completely remove the (buck_|ldo_) prefix
altogether as suggested in another comment.

> > +  "^(ldo_)?v(adc18|camio|cn18|io18)$":
> > +    description: LDOs with fixed 1.8V output
>
> If fixed, then encode it in the schema - min/max microvolt.

If possible I'd like some clarification here. According to Chen-Yu
Tsai comment [1], dtsi shouldn't contain voltage constraints. The way
I understood this is that electrical constraints are a matter of the
actual board layout, so if adjustments are needed they have to be in
the board dts. But you also specify "If fixed", so maybe there's an
exception to this rule when the constraint is "absolute" and boards
can't actually set a different value?

[1] https://lore.kernel.org/linux-mediatek/28102417-4a2a-4e29-afbd-d0f2aa76074b@collabora.com/T/#mb1473bb5515f3e5a1bb3ff20c717b387c42373ef

Thank you for your help!
-- 
Luca Leonardo Scorcia
l.scorcia@gmail.com


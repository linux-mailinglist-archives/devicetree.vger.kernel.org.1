Return-Path: <devicetree+bounces-249039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF75CD8A95
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 10:55:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C8BE1301D9F5
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 09:55:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8362E32B9BD;
	Tue, 23 Dec 2025 09:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fM/Gtwtv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4F631353C
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 09:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766483709; cv=none; b=tdeyjQfbzjgn5KJk9+lBeb14doRzCv+CST5qPMWH4NtyUOF/GvmZRwk/XZzOwaEnOS3qrHNf6F69UIBFX8ju5wIjEsbBZIU8UNm+WwoXnqVldKNhosL8BS6pImghqpTobyqG7/hzfzXH5qG0jOUs4lDSFdEPz8ONSAic5JXO15I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766483709; c=relaxed/simple;
	bh=j6tgXLyeMDtY81gzu+UAwTardCPOFsj4A05vaFcvi1E=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=J2mvu7pqqSR536w7xR6lQn8OVaCZimXwR5LSfBkylKWShFRiQ0RnH6gwKFo/9ePcsooAUBIIwNP3QGAe6AObFc39+d/kbRoiXF6MyGesFa5/ROP0HDn06NPQNPoAiiBVutjFz6s7nAEK+yyoBmjR23P9JC2WkeuGqjpK+YecXkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fM/Gtwtv; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42fbbc3df8fso2456051f8f.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 01:55:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766483704; x=1767088504; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/YO5Uvts04jHxPH1E+Sg8oVaj5XxMMKC7fUH8OS5AS0=;
        b=fM/GtwtvqNJcMiXL0moeDxFN9c+/k3ZEg4dRjAep0jE/qMqUoVsWB8SmknulNwhGmN
         AYVMeRgKjalrwMvev7XkzKtrRDE/4BfB4Bq8vuRKK6SSxvVYOezueo2YFDe2uXV2uIAI
         RSBxFworWfHUw48oyNXXnsSIZH1FhsySf5LFesfr2PUYRUShoG4vnPMb2a91poss2Crd
         wZ3WN2g6eQ04XEi2LlN+nBsShkLSQVqwwRizilzY9UzcjqnI1PbODa6KY2LolM5lJmmr
         LQMu+C73ZietFLPnI0L+7Y27oPEc4eXqZjAgfR60tWKt4mYKrtNCOaKX6YDNazXL7IYI
         PdnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766483704; x=1767088504;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/YO5Uvts04jHxPH1E+Sg8oVaj5XxMMKC7fUH8OS5AS0=;
        b=lNWoThDRcJKlCCqr9dFtKA+I+mGcYpiqTD5QRRShHBsIsbew6I8v2qa257QNRngt2/
         u2hoXCByIK1Q1TeXZ11oWsd2TgcYHpErHGaxf2TzJ09GFKLMV4zahI0dJy99NLnxZr6d
         hjBcdFaqSiU7nRCRRagroWHKM+lZn/ar3yE8AR2gIPWH5/jRR9bPeu/Kr6vXsKHXADx5
         zD5M9HOCMFL++NhtWdUDCqlRSn2ewYcCCohKbTVI9ZQQJVTU0X1nIdLnoAu+4Yyv4GUd
         g+cShZ0AQ2Ai2KF9yr00+n6frd/JkuX9MurMhO7ZJIXVTDxFgIi8g7kJNEgSonUblPX6
         8PRA==
X-Forwarded-Encrypted: i=1; AJvYcCX0FDAKjcegW8CHjUbnsGDBKBOO0Czrk+uWqA9cF1dwYXLP4xzCSORnlfmndgrTNwCFux3LN06XqMXj@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9mE/DbNAgbJsvjRvnCsrJCaK7j7rOnIQQefL0FLKeQn6SPG0n
	4nf2dwZeQKiHnrkqls64JQsiCQm3cp7mwuOulTTJ4q8IWWmr8JSi2+cxNA742dveM10=
X-Gm-Gg: AY/fxX7unrbxa/Kb9IZQ47yJDSXcZh+NcJEOnCfKsM2BpcSh0LdAQ8o1Dm6hmSezErf
	YtgElUeHHOGxjN1I2v7V/ISZfYwJzahSTJ3oOawE7izJO+N2EaiCHk3GeAgfGMv6eVTfZwd9MNC
	dmGsErOzi/q2DgBE92UBj25a/1l+V07nCHUQH8nyWE9sBuoKWkoJ72DTYs6+hwhEmjHOQvgLf6e
	TbRMLvo0uXGZgjHG6hipoArRN5FRAWeuTcAxQPrXA6pjzxIFoJczLuZrrMmw4FV+nJnyKdUaPgc
	7aYtpoAhvbmX7txtuCNYiS4IetJOdJ6b66NiNZvA8VCtFRG8sJiPHkdLWNahQBPrrl70WoEoWFI
	EL60ofvso2NyWMMX5dNt+MTr1aMyrVRBjg2MCFI9udyWYYAyBo+53l0sa4knY9EdxG0gC69muH0
	I7hhoUcpqmAsTABSqK
X-Google-Smtp-Source: AGHT+IHn1GlPRf1Fniuh1RmFfsJ96HpQRvJXXzVmZFTdyuEV9fySR+khcoZkMgxQXIqdh1loSsJh8Q==
X-Received: by 2002:a05:6000:25c1:b0:430:c76b:fadd with SMTP id ffacd0b85a97d-4324e4d3f7dmr14473947f8f.28.1766483704413;
        Tue, 23 Dec 2025 01:55:04 -0800 (PST)
Received: from draszik.lan ([212.129.75.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea830f3sm26479438f8f.22.2025.12.23.01.55.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 01:55:04 -0800 (PST)
Message-ID: <bf1bca0af63f161afe351cb0e449896cec11cdcc.camel@linaro.org>
Subject: Re: [PATCH v4 2/5] soc: samsung: exynos-chipid: rename method
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar	 <alim.akhtar@samsung.com>, Peter
 Griffin <peter.griffin@linaro.org>,  Srinivas Kandagatla	 <srini@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
	willmcvicker@google.com, kernel-team@android.com,
 devicetree@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, 	linux-kernel@vger.kernel.org
Date: Tue, 23 Dec 2025 09:55:15 +0000
In-Reply-To: <20251222-gs101-chipid-v4-2-aa8e20ce7bb3@linaro.org>
References: <20251222-gs101-chipid-v4-0-aa8e20ce7bb3@linaro.org>
	 <20251222-gs101-chipid-v4-2-aa8e20ce7bb3@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2025-12-22 at 16:30 +0000, Tudor Ambarus wrote:
> s/product_id_to_soc_id/exynos_product_id_to_name.
> Prepend exynos_ to avoid name space pollution. The method translates the
> product id to a name, rename the method to make that clear. While
> touching the code where it is called, add a blank line for readability
> purposes.
>=20
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
> =C2=A0drivers/soc/samsung/exynos-chipid.c | 5 +++--
> =C2=A01 file changed, 3 insertions(+), 2 deletions(-)

I'm not sure this change helps with anything, in particular as the
return value is used to assign to soc_id, but in case it gets applied:

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

>=20
> diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/ex=
ynos-chipid.c
> index b9a30452ad21c326af35c06a341b28491cee6979..88d264ef1b8835e15f774ff5a=
31f5b3de20f74ea 100644
> --- a/drivers/soc/samsung/exynos-chipid.c
> +++ b/drivers/soc/samsung/exynos-chipid.c
> @@ -71,7 +71,7 @@ static const struct exynos_soc_id {
> =C2=A0	{ "EXYNOSAUTOV920", 0x0A920000 },
> =C2=A0};
> =C2=A0
> -static const char *product_id_to_soc_id(unsigned int product_id)
> +static const char *exynos_product_id_to_name(unsigned int product_id)
> =C2=A0{
> =C2=A0	int i;
> =C2=A0
> @@ -150,7 +150,8 @@ static int exynos_chipid_probe(struct platform_device=
 *pdev)
> =C2=A0						soc_info.revision);
> =C2=A0	if (!soc_dev_attr->revision)
> =C2=A0		return -ENOMEM;
> -	soc_dev_attr->soc_id =3D product_id_to_soc_id(soc_info.product_id);
> +
> +	soc_dev_attr->soc_id =3D exynos_product_id_to_name(soc_info.product_id)=
;
> =C2=A0	if (!soc_dev_attr->soc_id)
> =C2=A0		return dev_err_probe(dev, -ENODEV, "Unknown SoC\n");
> =C2=A0


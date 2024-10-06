Return-Path: <devicetree+bounces-108213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4F29920CE
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 21:42:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 145A31C209AC
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 19:41:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 343F018A925;
	Sun,  6 Oct 2024 19:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FrxE+a/K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B84D154C08
	for <devicetree@vger.kernel.org>; Sun,  6 Oct 2024 19:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728243716; cv=none; b=UIfvkOBg8vB0CxXUlbRtbgAYtkJW9+JkzsD7QD1BvYV8dAbnrrIiMviM3Jz0/iEyn9L50bjCrh5Lh4LwGJzT2wBMx1HNk8l9F883IVKqJEN2V6yqU4pghlrOTitO+FwPgU19eZ1SgKjQVFq2y+KNjQFOHj6ivhxpfm33CKUf2ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728243716; c=relaxed/simple;
	bh=InDb0dkgQ3vKDGQcUS+MOjNktszFzkV7Qxp2mWF6+oM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RNjB7scN9m+Twbj1aS1+5sboZ0ugMXFawG5MjywiHIsdrMQQrmpJ76xwNzTE8FFY6lTvEjo64VIR1BkT6NVNyb0/MxEKPMQQMkCJV3RCojQv3hZR/9ICjtMc1JOKuHAkYJRQFf3hXCRg9NpGeiDvfL3XjdLieO63RxdMOSVKLA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FrxE+a/K; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5398b589032so5429045e87.1
        for <devicetree@vger.kernel.org>; Sun, 06 Oct 2024 12:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728243712; x=1728848512; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wFoqn5U3IFgkxMo0rRByuuyMGm0bprWMsEyD4suNSNs=;
        b=FrxE+a/KekqOw92dVZpXHbiXpyWyzx+etbH81mtCgxQntyu3xc45jxtlOAeayZ8EfT
         wsBsuWiy60GYdbtW1npulihPtgrfaLIh41sqKGklQAUKzNbb8tor5rO3+rf5tS3sGxzM
         A0K9WuwbA19Av5SxX33YE/uM1oitUShKkPIEXpt2NMROsFwRuTFcu2WHp7M+kr7ZhdOZ
         2J4zty6J2hg1qCCuqBTtJnJCToKJ36vn9SA4BpqNDNAnQCcYodBPomyqeTHd89DHJno7
         okKVfc7c7GMVU1mSivIUGoj4YgD4Yr5i0yUssfeYh2TeNcbydVdnGHzxH8Ne4Qq8GUh3
         Ju9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728243712; x=1728848512;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wFoqn5U3IFgkxMo0rRByuuyMGm0bprWMsEyD4suNSNs=;
        b=mJ7mJ/J77AzXuETQW68qBxIM7R2X3CE7U+rONkt7BbnEUjP4KRZKr7ecrZKDCVaEED
         5zs2tJIh8UlldWLFkegL1/ajFpDQrkGhnbWrb9ZfKrDI1ECOCfLMmc2MgdAA0MM6el6o
         RidDwJ32yP/prwanRF19Fehox5dRBcjtuBNmuzH620TLnKl9H3uE1W8dmsD9X96Mbsbq
         FRl3nbRsSle39Gpt1ofp2m/NOO+pc8rCrR1A/teXhocV7yR+GZ2xaTCFiqsyWmMx+umw
         jncusjB0kXzTRyl/KzNWl1iSTO+1KxxhVJy14gLRPeiWCbRJUrBuLeWJs0V7c0OUOwud
         IY9A==
X-Forwarded-Encrypted: i=1; AJvYcCUkzJNvrnJ3Idvuqam9q6tUFFSPMFPki/qPFF3cOaB0EbxBz0MAqNndSnoIPjPjBDWk0cRa6Zb2hwXZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyPxyPoqamF0+DijAHbMBHs/f4adn2IQVze8r364JxvtSsn1ixS
	BTM1aX3hxEHoD5uEfbzy+qi5TKxw+mVA8jRY0Z5K4j2LaVynsXYKj+yoW8nxjTzRHM845QQPkTm
	DtPrd+shc
X-Google-Smtp-Source: AGHT+IGsFX5d2DcSS4LcFqeh11ecsOdYzYu01fp9p+KGuVf/+pKR366N1XRvSfc1JagbihHfqGil/w==
X-Received: by 2002:a05:6512:b07:b0:536:a7a4:c3d4 with SMTP id 2adb3069b0e04-539ab9cf1a9mr5906652e87.39.1728243712591;
        Sun, 06 Oct 2024 12:41:52 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00-89ea-67f6-92cd-b49.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:89ea:67f6:92cd:b49])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539aff1d408sm594975e87.145.2024.10.06.12.41.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 12:41:52 -0700 (PDT)
Date: Sun, 6 Oct 2024 22:41:50 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Specify i2c1 clock
 frequency
Message-ID: <ykovxr6sf2uywgikeqm7inlfctgdwh5ctiag5vp5i3ctfx3mko@nanyz2yp2umo>
References: <20241004-i2c1-frequency-v1-1-77a359015d54@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241004-i2c1-frequency-v1-1-77a359015d54@oss.qualcomm.com>

On Fri, Oct 04, 2024 at 09:09:05PM GMT, Bjorn Andersson wrote:
> Per the binding, omitting the clock frequency from a Geni I2C controller
> node defaults the bus to 100Khz. But at least in Linux, a friendly info
> print highlights the lack of explicitly defined frequency in the
> DeviceTree.
> 
> Specify the frequency, to give it an explicit value, and to silence the
> log print in Linux.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


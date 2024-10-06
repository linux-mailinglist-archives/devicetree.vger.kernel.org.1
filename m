Return-Path: <devicetree+bounces-108223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EECA4992107
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 22:07:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 11A8EB20A4A
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 20:07:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AA8718A95B;
	Sun,  6 Oct 2024 20:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FVAB5WRP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80DBE18A928
	for <devicetree@vger.kernel.org>; Sun,  6 Oct 2024 20:07:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728245232; cv=none; b=OE65qCFwrYqtsj+PJeOkqLWPsAKq3h4nuN3DRctAQYN1twuQa0T5JmYIdobnPcgBVoZM/GinWoJbmvZdxEHqQd9v6/dzkxLtLLvZD+6rxR5BehaQEvQRx0jp7Bc9LDC4dLsCZJggbeKuoVEyGj04Vp2XdlGcqjUcvneHPwsVMQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728245232; c=relaxed/simple;
	bh=hWlVn6wqYOiZf/D380nxzst1Ny3r+QrTd4JE5sBLCm0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ELYNd9NrIphSRL78qCH1YtsRCLmLwsHpyRn6Rv6/fuczjImsuCgf3vH7OzXoB7ceyNvWixYzpWuzBM+IfANYBkjiD1P8gdSwyqGJls/mgkibmGnyu8AUR/mccvRsxjN2s8OFQaBDnanO1swaw2bR5ACH8FCzTa2SveeUx8V+9so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FVAB5WRP; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5389e24a4d1so4478999e87.3
        for <devicetree@vger.kernel.org>; Sun, 06 Oct 2024 13:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728245229; x=1728850029; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=S1aKTq90Vhx5SEGbGXZgfVnFGr2p8A90AYr+7ozDiYY=;
        b=FVAB5WRP5WKmhHJlnq4Rvj8inClkLG1ReUyfc09COMcSSL/ELs+ju4YyiSrvu3ktIb
         cXQszaDwIrmZhHrOcGYghofr4ngQYSYRtcZPnR7UsHdRVCwmsXJwbvbkX+xiW9W+DZu/
         JVZCLgW/7YQlgV55tCcxfl+sUBfDguQFAJGtNSUdHG04DvzLQlWycFLIt8z8F9kvF/21
         N5yMPAEOOMo0PLVHgi8PkqquOEapbnecYBQon7LEMxwLZxbeWzJ3VixJkXu9uT/PT5UU
         Sh1vXCPTzVHyCSOnCd9lvmf1EF3rUqu1F+XIkc0ao/SmAsYhNSITYhUpL0oTRqNoNdAt
         yqVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728245229; x=1728850029;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S1aKTq90Vhx5SEGbGXZgfVnFGr2p8A90AYr+7ozDiYY=;
        b=Xi1P/9JnaMMtgpTqEyeMKj4KYwaFc8ZuCsPwGceb8/CrE7fWXP1MXOm5qmtEIAtZIp
         TjYXCR4d/9FxXV7b7BYVKWrUImlBHKBPXpBl81thwXuXNSpeoNnsyQ0+AX7RGC7xEbEJ
         5JZ6TABMTa6ZX0rqQjM0U/VD6+0b0jhSvIfx9N9aqHdb6UQ+IqwyVz9CaY6LkYEheH9M
         NLaThuGpQ3BgE9G1smNCKI69T8PJ1vDB4tTa12/EN/DK3TddVdsYnT32oAZuvh3FalTj
         euDv8JyhsfIUFv5sMbQF34d/VdfDy1CzNTfn66HrjAdMl/OUAnLHgch70iUNHm4MQLLi
         kyhw==
X-Forwarded-Encrypted: i=1; AJvYcCU7PGpbls1rZsg/3w2Y2983Z7HBEEHcCiETgGenMe/mAeDmy+wW0XSk/Yehsmo0JJK/BGtixab3XLAq@vger.kernel.org
X-Gm-Message-State: AOJu0YwnPvBZA460kZjnSIRF7sCrA9/gsmPmpZh9srEWXqlE7cqQtzyL
	JzlNk6x9z5wuIW2EuhHhUkoB0nTncnniGukG6vfzhAk0W8xb25PYdbTek1kQUKw=
X-Google-Smtp-Source: AGHT+IFKknDCxNnpYRFa+g3cPJbjZFRd+fx1yS92WOXtOwvo4hAI4DPBzjNxMcxwiu6wMUNEhhPAqQ==
X-Received: by 2002:a05:6512:3d0c:b0:533:455c:8a49 with SMTP id 2adb3069b0e04-539ab8adbccmr4075594e87.38.1728245228683;
        Sun, 06 Oct 2024 13:07:08 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00-89ea-67f6-92cd-b49.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:89ea:67f6:92cd:b49])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539aff1d1f3sm599873e87.153.2024.10.06.13.07.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 13:07:07 -0700 (PDT)
Date: Sun, 6 Oct 2024 23:07:05 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rakesh Kota <quic_kotarake@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, quic_kamalw@quicinc.com, 
	quic_jprakash@quicinc.com
Subject: Re: [PATCH] arm64: dts: qcom: qcm6490: Allow UFS regulators
 load/mode setting
Message-ID: <jid5coqe4tpsafbi2haem6ye4vrpwyymkepduxkporfxzdi6cx@bfbodoxoq67l>
References: <20241004080110.4150476-1-quic_kotarake@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241004080110.4150476-1-quic_kotarake@quicinc.com>

On Fri, Oct 04, 2024 at 01:31:10PM GMT, Rakesh Kota wrote:
> The UFS driver expects to be able to set load (and by extension, mode)
> on its supply regulators. Add the necessary properties to make that
> possible.
> 
> While at it, UFS rails have different voltage requirement for UFS2.x
> v/s UFS3.x. Bootloader sets the proper voltage based on UFS type.
> There can be case where the voltage set by bootloader is overridden
> by HLOS client.
> 
> To prevent above issue, add change to remove voltage voting support
> for dedicated UFS rails.

add change to remove smth doesn't sound correct to me.
Please don't depend on the bootloader and describe hardware
configuration. If there can be two types of IDP boards and you can not
identify the voltage via other means, please create something like
qcm6490-idp-ufs3.dts. Please add proper Fixes tags.
Last, but not least, as Bjorn wrote, please split into two patches.

> 
> Signed-off-by: Rakesh Kota <quic_kotarake@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> index 84c45419cb8d..8a4df9c2a946 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> @@ -258,13 +258,15 @@ vreg_l6b_1p2: ldo6 {
>  			regulator-name = "vreg_l6b_1p2";
>  			regulator-min-microvolt = <1140000>;
>  			regulator-max-microvolt = <1260000>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM RPMH_REGULATOR_MODE_HPM>;
>  			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>  		};
>  
>  		vreg_l7b_2p952: ldo7 {
>  			regulator-name = "vreg_l7b_2p952";
> -			regulator-min-microvolt = <2400000>;
> -			regulator-max-microvolt = <3544000>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM RPMH_REGULATOR_MODE_HPM>;
>  			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>  		};
>  
> @@ -277,8 +279,8 @@ vreg_l8b_0p904: ldo8 {
>  
>  		vreg_l9b_1p2: ldo9 {
>  			regulator-name = "vreg_l9b_1p2";
> -			regulator-min-microvolt = <1200000>;
> -			regulator-max-microvolt = <1304000>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM RPMH_REGULATOR_MODE_HPM>;
>  			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>  		};
>  
> @@ -467,6 +469,8 @@ vreg_l10c_0p88: ldo10 {
>  			regulator-name = "vreg_l10c_0p88";
>  			regulator-min-microvolt = <720000>;
>  			regulator-max-microvolt = <1050000>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM RPMH_REGULATOR_MODE_HPM>;
>  			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>  		};
>  
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-138397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F31FA103BD
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 11:12:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6BC67166426
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 10:12:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 290F822DC56;
	Tue, 14 Jan 2025 10:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i3dWHoVv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488F722DC2A
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 10:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736849549; cv=none; b=C1JJiKxMqfmsynw4+75M19dXlg7aA/784jCQip5DS2wuaY2G9OcgK9DfwX5ZPy9ryqVf6oWu5NV9ZdQc0aykOIfTYmlEWTmjs1zmwObJjNTxtLufyHukenjYDzB//xfpDlooW7Jcf4GCOeQTW+y7oePm/KL5HiC0EpWM6PMiDq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736849549; c=relaxed/simple;
	bh=tMig/yT4p4lBmM/9IHHaHq3sOjkzmuVCPMQbW0c1APA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=itAebvvZMGUaO8ugQCnv+Hb8tt+lGQOaPPtfRqmV9Rze9GYE4gYYN+F/9gDjoA6zWn2dsgnRAyvBv/uiRIyda0U6DkiDKR67OTBW+VMtsY0iIdNStxcWDz+x1kGfh2MRV4hNrENgjiwMKafYhGtLLQnsMqsx0o04ln9y+FpbMzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i3dWHoVv; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-3061f1e534bso17230671fa.1
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 02:12:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736849545; x=1737454345; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=c0Qrzgg2ua23heO+J/1apVMe+JOEnRWPI3Yz+eSCuMc=;
        b=i3dWHoVvDG3grs/kTS3HFcqBoqPtT7cXT9CG/VZvcTajfueLyz2pDZ/bkK3U0vYMMA
         xEQWZRe69l4W6IcHborajE2yde/ymZ4KJiH6aDN/D6noIH12q3nJ7+lyWYKtyuzW3Wwv
         ImlgxoB3QcETinU28ux3Ajy8BFem8fXUYO7w5Lfx+IQ5/wee0wBq2lEGAZa5pT6KrVXQ
         izMh74nxUfMyCr4/G2vRjEuytHiEpfld36EynK5JkVr2+7KG15sI9AYijP/Pxar6wdJZ
         mSKie+YxI1O2n+o23Ha5vwMiC+Eu53eRcdQjbR5IUzaVlgvsaghmPAPXLoBRQS/6dahy
         6/Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736849545; x=1737454345;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c0Qrzgg2ua23heO+J/1apVMe+JOEnRWPI3Yz+eSCuMc=;
        b=w3IkaGAvb1az3VYSl1yEJf3aESgAQShEutaFWOk5/yr1NpXxbWtrjsMKmChk86C9XZ
         irlmf97Ld130UK9YN5QERdlYqCBOFyAZ+n/kied61X/zU0eqk5UW0XCE3987cwOcy2pQ
         LHgQtItdV3CY2QnXd1MoDl9D/tFKR2RIpV2VjGFDvuDT+UwFuyEUHWcRq4dDDwsD7gkF
         oJQr0mw6MwBjoqot8feTIvoXdHV3ecDf0+DYiq0wbBao5B2bQjiMdm8WDjQkMvOB8bJT
         4o+u5a3Abz+F6NOaDAWbuozQMVM1FQugJnCgYxThCcwlKwv8oXMPx+EEb1ds7KoOQnBv
         +9FQ==
X-Forwarded-Encrypted: i=1; AJvYcCUkYy1UeoCo2lQlVTh6Kc4C+UN9MQzaFy0XM+1sBkpkn96fVEAM/1QbYVterGWyFJQHYZEo6pfFz7ON@vger.kernel.org
X-Gm-Message-State: AOJu0YyXK0ydGdvOS+8Fr8eQMXxXNz7MN0PAEWvKY8TonKnZEb0NYtsx
	opcgnGyNNoaND5X6rhFSGVCY2dSFDfRQZVA/Ugm7aavCt4l63YJi3ALZ72g+uj8=
X-Gm-Gg: ASbGnctTZR7aRNgK9fJQjL4oYP2fB8np2BRJ4xEgh9fDW04JdaHpnPNC2YpBTagrA1c
	yt1HkmF5WbaMt9tVy3HZhcCkcT10pl+451yj55XG8ysve/cyHl649tkiciMJmzPEiUcI2PmRosS
	jWgxAmPTa1lke95iG5JJyDb8O1+NY5VnVeswO9IGzl04bssK9Bv45QNfp1QN53EkQFSnlHxzp2V
	qMvU+85adUlsJdjSNnvk9eKdes8RcMkNLMbDePtEUxDokIEw51JEscvRGQVDwRFvnczmbkyZKSd
	zd9hv1VepHlnRGaKXVNW1o6WDFq8E8JmBNtE
X-Google-Smtp-Source: AGHT+IGvwMKyxTPc6XYDYWpAagsTLJobLBRBIaI1VJFHrDhlbJEBvgyteqb/2DjPirIxW8WefT3Djg==
X-Received: by 2002:a05:6512:31c9:b0:542:7217:361a with SMTP id 2adb3069b0e04-542845af299mr7698904e87.10.1736849545347;
        Tue, 14 Jan 2025 02:12:25 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be49f0bsm1625315e87.36.2025.01.14.02.12.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 02:12:24 -0800 (PST)
Date: Tue, 14 Jan 2025 12:12:21 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, 
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/7] dt-bindings: phy: Add the M31 based eUSB2 PHY
 bindings
Message-ID: <a42wtus7y72mt5adklbwg2hjbuayxkeucs7t4xuzmxyag2mx7b@6wlsomzj4gha>
References: <20250113-sm8750_usb_master-v1-0-09afe1dc2524@quicinc.com>
 <20250113-sm8750_usb_master-v1-2-09afe1dc2524@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250113-sm8750_usb_master-v1-2-09afe1dc2524@quicinc.com>

On Mon, Jan 13, 2025 at 01:52:08PM -0800, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> On SM8750, the M31 eUSB2 PHY is being used to support USB2. Add the
> binding definition for the PHY driver.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  .../bindings/phy/qcom,m31-eusb2-phy.yaml           | 84 ++++++++++++++++++++++
>  1 file changed, 84 insertions(+)
> 
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,sm8750-gcc.h>
> +    #include <dt-bindings/clock/qcom,rpmh.h>
> +    #include <dt-bindings/clock/qcom,sm8750-tcsr.h>

This a typical comment, please actually update your internal
documentation: don't use GCC's and other clock controller's bindings in
examples for other blocks.

> +
> +    usb_1_hsphy: phy@88e3000 {
> +        compatible = "qcom,sm8750-m31-eusb2-phy";
> +        reg = <0x88e3000 0x29c>;
> +
> +        clocks = <&tcsrcc TCSR_USB2_CLKREF_EN>;
> +        clock-names = "ref";
> +
> +        resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
> +
> +        #phy-cells = <0>;
> +
> +        vdd-supply = <&vreg_l2d_0p88>;
> +        vdda12-supply = <&vreg_l3g_1p2>;
> +
> +    };
> 
> -- 
> 2.46.1
> 

-- 
With best wishes
Dmitry


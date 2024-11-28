Return-Path: <devicetree+bounces-125315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E129DB889
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 14:26:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E20D0163862
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 13:26:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 037601A7AD0;
	Thu, 28 Nov 2024 13:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a+oVdQmp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF3C158527
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 13:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732800373; cv=none; b=m0qUKXCt7dIxa9SES8PnCqCZCRR+Nhax3A/tW5iIendJe0SGmaif3yyBDIFeSVqDtA3O3iuqsWdKqGcIke+UeXwa9JWl+0c8maxWLXcnnVMjEVnVL5oJ183iseBoPn/RPZNgORQmz36K/U34kIqqU43CV0dRzbmWrFQ7Qck6uuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732800373; c=relaxed/simple;
	bh=jeF3AzRXu/kZv/Zs+2hBUK+871eHe48/0ki7AixpUrY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QQ3PwjJ1CN0M3CQy7MKEDiRckQHgScfSlG/Tydv3UarDZmDnqy4n2qEQBzmy1voXGKhyBfGUtMuNBmvTxySSOGLckOWfc/X7plOBKURnf60RTMx18y5NGp3pUuwp/GNDYem52Tu9j3wc3eMpC643O2/mvELlexTLk8pdbxh0d6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a+oVdQmp; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2ffe2700e91so4436061fa.2
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 05:26:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732800370; x=1733405170; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3jPSeZs2I9m/vryfi0ZM9iDP+RKgceUThW/Per9F688=;
        b=a+oVdQmpMcR7MEWyMOF8ZGuoKFZYfBlpHWZcqNZFqNpp5456LfBOitwihWXN5hrRiH
         zl2/QAecePZi7VeDW6WB50Lfggpnim8s+iA0DTuFgh2XgjXF06X5Nxi2ykZo4DFhZmgk
         IGcE4pMjICRKo5tCQNQK+rW6rdMNkdbCNJ6PXk0+70TdA57lrtp2uWC3F/g3q4yfj5Kc
         HiDEWW78KTFKGq7Tctv8j4iGv/ifW/P8Z+FpbIOILhBZedENcJTYqER3Gey11INqTRHy
         yHxVgGcTdo9n3RzP80C1o9CwoEUF7xjYkzk88w/6Ctwv8Ubbcfgbss0KkJ73MiqcGRZA
         PlVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732800370; x=1733405170;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3jPSeZs2I9m/vryfi0ZM9iDP+RKgceUThW/Per9F688=;
        b=TvI6RN/ijB5rZAMFkvrEou+TuMOoKJRSKEgNV4ROFw6x4DTcSc/pYKOdbit7CMvUc5
         utZYeFJNNCQ9o8b3IJgCfgejjCYftZCAATMBv+TOaLH67JkSApNsMS8R9MpoTeZxwU31
         ygv/fn/GecSq/DsJ+u3sc9BDYus8P/obFhMYw6mxjJi7JiG/x8PyVUv9dW/azX2hrEtz
         qaQxkPqFJlg8oFzKovZ9l7/JXYi7K8QzZnnubRM9lZ2EdTY7vovonbZJ9o5knXdCC/+R
         bJmrW7pnYLiP5nWz4x72Y6M9/1SaEn3e9uwJ19W60NIhc9qi0VNLWkMCVWwyHRi+iyoO
         rFWA==
X-Forwarded-Encrypted: i=1; AJvYcCUJtJbqKeEq5Rk85x6ZSkfTTi0GQan1aQEW/rWDzJ0vFrpMSkbrNVKkcq3Z6vJs+m2nriUR2X1X38be@vger.kernel.org
X-Gm-Message-State: AOJu0YyguzI8ywt5n6eoeOW71xGKRlwdU3e3R70yLGHGNbc1h+KRKvd4
	zJx4xKvtdzcaPgBQEvIATns6UwS1RV6KfpH3+f4H+mLKpktERGKVJ33o5qpWKt4=
X-Gm-Gg: ASbGnctiBEZXVrgZj/FIcYOVCr57NPpyMtsrzirqcm9c/impBXKzOolNQevGePp3Yn9
	EMfCwuWtMRCJzWxFqdiBiBCMFFeZXwQLjbVRkwn9C0t98z3fAwWiWIX4WTgNGI2E4UipmuGbeH6
	ixuUZIV6sOZTblDGwsFH4EpscNcP5B3VbQc451Az3PYCOLyj+phlUZx351Dgy7SvCABGLL4A0xP
	FMXBxg8WZGbM8aOplvDL5KsWN8DXAB7fvpkIEyMqOKSbYb7KJzQoSSO/CYRQp9p+Ly5rQ71VDS/
	6RmOuh9a7SfE3JOGD42FuvWm3qGhiQ==
X-Google-Smtp-Source: AGHT+IF/6PgZ+LtPfmfUOVevzirM+qCJqHyVs/NHs1RDx6TmQskfyIC9ph9W+JY2vHF9iu8Qa8S+1w==
X-Received: by 2002:a05:6512:3d88:b0:53d:d3cb:dee9 with SMTP id 2adb3069b0e04-53df00c604amr4180999e87.10.1732800370439;
        Thu, 28 Nov 2024 05:26:10 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df6443199sm177806e87.98.2024.11.28.05.26.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 05:26:09 -0800 (PST)
Date: Thu, 28 Nov 2024 15:26:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Bjorn Andersson <andersson@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Akhil P Oommen <quic_akhilpo@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 6/7] arm64: qcom: dts: sm8550: add interconnect and
 opp-peak-kBps for GPU
Message-ID: <7ylrgy44dlitavefgwaobve7runpy6eqyhufmtkxmwnqkj2g25@pfdjlf5aj4j6>
References: <20241128-topic-sm8x50-gpu-bw-vote-v3-0-81d60c10fb73@linaro.org>
 <20241128-topic-sm8x50-gpu-bw-vote-v3-6-81d60c10fb73@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241128-topic-sm8x50-gpu-bw-vote-v3-6-81d60c10fb73@linaro.org>

On Thu, Nov 28, 2024 at 11:25:46AM +0100, Neil Armstrong wrote:
> Each GPU OPP requires a specific peak DDR bandwidth, let's add
> those to each OPP and also the related interconnect path.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index e7774d32fb6d2288748ecec00bf525b2b3c40fbb..545eb52174c704bbefa69189fad9fbff053d8569 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -2114,6 +2114,9 @@ gpu: gpu@3d00000 {
>  			qcom,gmu = <&gmu>;
>  			#cooling-cells = <2>;
>  
> +			interconnects = <&gem_noc MASTER_GFX3D 0 &mc_virt SLAVE_EBI1 0>;

QCOM_ICC_TAG_ALWAYS

LGTM otherwise.

> +			interconnect-names = "gfx-mem";
> +
>  			status = "disabled";
>  
>  			zap-shader {
> @@ -2127,41 +2130,49 @@ gpu_opp_table: opp-table {
>  				opp-680000000 {
>  					opp-hz = /bits/ 64 <680000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
> +					opp-peak-kBps = <16500000>;
>  				};
>  
>  				opp-615000000 {
>  					opp-hz = /bits/ 64 <615000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L0>;
> +					opp-peak-kBps = <16500000>;
>  				};
>  
>  				opp-550000000 {
>  					opp-hz = /bits/ 64 <550000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_SVS>;
> +					opp-peak-kBps = <12449218>;
>  				};
>  
>  				opp-475000000 {
>  					opp-hz = /bits/ 64 <475000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_L1>;
> +					opp-peak-kBps = <8171875>;
>  				};
>  
>  				opp-401000000 {
>  					opp-hz = /bits/ 64 <401000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS>;
> +					opp-peak-kBps = <6671875>;
>  				};
>  
>  				opp-348000000 {
>  					opp-hz = /bits/ 64 <348000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D0>;
> +					opp-peak-kBps = <6074218>;
>  				};
>  
>  				opp-295000000 {
>  					opp-hz = /bits/ 64 <295000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
> +					opp-peak-kBps = <6074218>;
>  				};
>  
>  				opp-220000000 {
>  					opp-hz = /bits/ 64 <220000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D2>;
> +					opp-peak-kBps = <6074218>;
>  				};
>  			};
>  		};
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry


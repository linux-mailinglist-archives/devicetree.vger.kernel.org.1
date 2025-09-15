Return-Path: <devicetree+bounces-217549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A435B58286
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 18:49:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A64267A9A01
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 16:47:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C481A283FD9;
	Mon, 15 Sep 2025 16:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IhGW/2bn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA06284684
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 16:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757954935; cv=none; b=GqcO80bwSwfXjfYfs0ZUx4To+m21E6Jj2t5ZWGepXamMSN+W56lx2b6vfvlSWHf3r5j/ljMCG5613aObk2a5/4wfSjeV+4SD2ZbQZnQHbfTeMD346Dv5dm/6ni0IUw4ipfREixd7ztD0CXqtSYVJQEyX0ZWWSRwmqcwm2erzQkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757954935; c=relaxed/simple;
	bh=MBI1Pgkv5l9x8jWA6EGrPKnGTLF3QMSBlu5WNzLqQTs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BxiqzU5h7JcF/IicS96gI0Tih+olxWHzUXGcItTa/dh9ceKyrN9sArqlI3XIVwXWGNbT0ozZ622mhOgIGRFSX9CzaBtW1/Cus8qkxhonq1VQp4AgHnyZXbIJM6ghhmDOdTFEKmKB/R5yE1f9EzCW89bL1Gdholp/WaYHTgjun7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IhGW/2bn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58FEUsa0005699
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 16:48:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=CSy413Uoi4jbvjsJYcaYFgzu
	g9PD3l/kNya0fvntQm8=; b=IhGW/2bnx1+GEWJ1Yri5iu6asXH9Ly+jI7brBn50
	G7EjHqr2jfh9n2SkSIO01Id+zMZ49G7/Mk5e1Lf6K3wwMNTG4jWPbkVQ42lHyy72
	l01lHWlrRxyfzrxBftS5y0YoV5s+DDh7rVQf5jegxLdIe6C97fauG7aeXThLgxfc
	7Kb/luQL6RpDyUUrwOGU5u0Iy5aUYNdjIBZEGSJBy176ZgMk1bXtpFJkM5clN9Zx
	WQMyULxRwwJ5KrbAena7XeZLOZfiFx7bSkd8LL+zUsVJBxMGcNa9iOdjPJuRR9Y4
	TeNkXYbIlsJeDxaqhwuHVmfD5TM/PEdI7Pctkla8TSPIiQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4951snnkqa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 16:48:53 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-776aee67d5bso37070966d6.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 09:48:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757954932; x=1758559732;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CSy413Uoi4jbvjsJYcaYFgzug9PD3l/kNya0fvntQm8=;
        b=fJ9Pm/i+6kjuj2SZ/tDPu0w+TKLQl2Yu7RUvxGSNFqVvZw84E3loyGh0a43obOaZXj
         HTvTSWVeqMrqVOEp9TxqNGLG+cjeS1XeZNCYctrc2ZWXEi6Ob9SS1CwoxU3YUcwna885
         k3tr7C0GGTbu/mV+YLk3Jb6KMz3aQkHby3fmZBpqmBwaZuSE6JAzOiPMKkvuktCjGWph
         0RIsCC+rpL8lsgRVV3AcNEmK6/sP9fh04ndFc8kE+q0UB1BDxusnQIKmSQhm0HcK/7NJ
         HQwx3Nwb4hiNcOTvbbeySK4m7YfLuywJAIpt5bDtUtJ80POZesP/72rG1CG6H9A/ozSU
         a5OA==
X-Forwarded-Encrypted: i=1; AJvYcCUcmONJRbzCuVGjMLuIKPFlbqawSF110gwVK2gEau+5KjuTwZiImQ+HGIMKs7JcC7bXowatn4UXI3im@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj83MW9jFyDQpkgpdL2ZZ+io0tr+Tf8pIgRLauEhJYJhI1PP5D
	+O9aenWanNgqu74YV9jG0MtAlR3OXdVNzpxAK+PbY0lpehg3HAJf8rnK4CKOKhC4hni7S0aSiJN
	zAJx19CwGLwKWJf8wmph+sOILjcYCSIt+H8iOw7acXLoti2wAvKpxxEUFkE+5uP7h
X-Gm-Gg: ASbGncuJZtqgflYyrk/TToBeEd6DwFNlDO3QaiEfxMwmV4bs/3klu+bdED09wK1PBj8
	QFtUC4RCSDmkTwBj396jH5AaBUH2Xwcv6KgkVR6OwW0CDpCbnNVRUz27WWmfftlkCPN+6EuRdOq
	a4LF8wrn/RdAdYUs6xxEkMWtN4FXhgima4GM5UQq8Jx3azLESFoasVUKmaqHZVNCjIsROxI2eyp
	JTeV/sLIUMYfj+mlfr8vO8sVHUKWB+7xkr9u1VVNFZiHA8nwLAIzYQTge+1stzRzDCut9baOTuW
	+wEktJZ/zBTJZI+nL4lNJ64L2NY3VlPBUTaYUpax6kaxcFSwhFE7yr7fd40uFi+jRm52loEbj9G
	EYdOwtEQFpJeVTBwODQ/QDtsxcWk+ca9PHAZow3Xo90EdO2fz1TLu
X-Received: by 2002:ad4:4eab:0:b0:72c:cc04:c3b6 with SMTP id 6a1803df08f44-767c215b586mr196847966d6.31.1757954931686;
        Mon, 15 Sep 2025 09:48:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+cHbHprOXKl+GeOOLclQsZjcLydXUkO2rJ7c4SXlnRtTiEMz91VXMShb8HABaBZvJdzKOaQ==
X-Received: by 2002:ad4:4eab:0:b0:72c:cc04:c3b6 with SMTP id 6a1803df08f44-767c215b586mr196847346d6.31.1757954930938;
        Mon, 15 Sep 2025 09:48:50 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f1bf1a45csm29339611fa.60.2025.09.15.09.48.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 09:48:50 -0700 (PDT)
Date: Mon, 15 Sep 2025 19:48:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vincent Knecht <vincent.knecht@mailoo.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: qcom: msm8939: Add missing MDSS reset
Message-ID: <dvm5l5vbbden6pbihpetlyrtcr5v7uuigroiiqzlhyk2jtdpkn@pkjoluu6hana>
References: <20250915-msm8916-resets-v1-0-a5c705df0c45@linaro.org>
 <20250915-msm8916-resets-v1-2-a5c705df0c45@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250915-msm8916-resets-v1-2-a5c705df0c45@linaro.org>
X-Authority-Analysis: v=2.4 cv=JO87s9Kb c=1 sm=1 tr=0 ts=68c84375 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=M_eXORl3-W3UjsCHqzwA:9 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: uQd4uo6kqZnih2NSFFGtWhsdHHjfdOe7
X-Proofpoint-GUID: uQd4uo6kqZnih2NSFFGtWhsdHHjfdOe7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDA0MCBTYWx0ZWRfX+lyzkGtPV0oi
 f4Mlckj8oJOFwEsVrh4ZhuszIDRgSfeexP0SwRO1gyUAr9WVaYRHpls+ao3nuB8ofVdS3y7Qi3D
 kkDfr29gH0T3FoTLr3x0FeWZOg2qoHTh4S6W1SGqiEnKAJOqGAueaWHGVx4ZQQcZ/MsmgX6XlnY
 +7b/8JPihuaF2Yp02+ZuZXs39yua3xDYxC1S6g+Px4od77jwxu+1Pi5EmOBocUowUL3HtiCLbL8
 RzWh4ID3ha3S+dKnJjH03PPImQ6EB6JdweiQTr5GOCCQ8vPbCftwBvNcmqQzPJZmLT1IiySRdg5
 QblNONBUCu2j3cgCTvBFT8U3+zrAucvYBtWmh0PY9j3M27nlfMsGZEmxz/k3v2ZPomGGZLjIlKz
 sCNeizbi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_06,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 clxscore=1015 adultscore=0
 malwarescore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130040

On Mon, Sep 15, 2025 at 03:28:31PM +0200, Stephan Gerhold wrote:
> On most MSM8939 devices, the bootloader already initializes the display to
> show the boot splash screen. In this situation, MDSS is already configured
> and left running when starting Linux. To avoid side effects from the
> bootloader configuration, the MDSS reset can be specified in the device
> tree to start again with a clean hardware state.
> 
> The reset for MDSS is currently missing in msm8939.dtsi, which causes
> errors when the MDSS driver tries to re-initialize the registers:
> 
>  dsi_err_worker: status=6
>  dsi_err_worker: status=6
>  dsi_err_worker: status=6
>  ...
> 
> It turns out that we have always indirectly worked around this by building
> the MDSS driver as a module. Before v6.17, the power domain was temporarily
> turned off until the module was loaded, long enough to clear the register
> contents. In v6.17, power domains are not turned off during boot until
> sync_state() happens, so this is no longer working. Even before v6.17 this
> resulted in broken behavior, but notably only when the MDSS driver was
> built-in instead of a module.
> 
> Cc: stable@vger.kernel.org
> Fixes: 61550c6c156c ("arm64: dts: qcom: Add msm8939 SoC")
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8939.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


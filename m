Return-Path: <devicetree+bounces-171169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B4864A9DA02
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 12:12:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D2F7B1B62449
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 10:13:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AA7323F412;
	Sat, 26 Apr 2025 10:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oZmpxzfc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90365224888
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 10:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745662372; cv=none; b=TeDba26w6eENNcvBxZJcZsu4dgwNFXM1ikkVIS03KUC6ko/lY3YY+HsJXlAZ/bcJnLbACdprAl8yEg1iemzSUDpFKcDK7VlLNhWeQuIw1MknIXBXpXm/FH6uKKMuHGywMxh7OAriB0ANUlHgy8I096/Reg+BNUYskRsadl+YdLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745662372; c=relaxed/simple;
	bh=gjox0lKDk+8GrLOG0y3vy7wN4+2GxQg7oT1RFX/OuXA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZZ7opj7Z2HIyQz9SXj4Bx6thxQeTkTTZNoZZ7rwkhCbsjnZil2jy04s2DcxFrvhzeW2Qzw5tUG5BIMRZMPn5YeP90+dcFvriKkXOAJdxFUa8df++m4SlyROAaITyjq2lIy3Y+DiyQdlVKC7236uoiWzY6EFVGU6zvf4bOoO/U2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oZmpxzfc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53Q29Cq7023551
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 10:12:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z+Qcn5tAPyhWCpf8v43q7uoVPaklSa31BM363czGaA8=; b=oZmpxzfcIwuDHd6x
	YFTkk4Bbz78gW2TDDdYmnCLQAXNjQluvpVi88EGFOaZJtKbauWpCBv4lVsGJQeBb
	/2AVCFWkEdU2z3NICrE0PRYq29GgqcJEORtQ+DwSwU0iLAknMFoh+Vmw0oyGNmVe
	DokPCAmSJIqruHu40xRrwDUF6jTDUlHu2oBhgXG1MFG+8lc2g538vAx1TT8BjDH5
	5bXYZGJ/TdWVJsC+di3D6tHkgRFXNc+nBTfMJpCgtxWnOI2IbIccMdQ3txiN2Gkm
	zNAL0CVYo7XomXG59rwbiuz+X5uMRL0OB9kvfgwqx3bZGkgmxfoZbxWPcTKUSgV2
	/R1+ZA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468pev8xsj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 10:12:50 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-47983a580dbso7276461cf.3
        for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 03:12:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745662369; x=1746267169;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z+Qcn5tAPyhWCpf8v43q7uoVPaklSa31BM363czGaA8=;
        b=Y8Tff79sJnIqrMYJvoX5bak2hgwSOYe9BnE/pUbQes20axam8kLEhaDla30LQ6tq9N
         8fwhAkvKs47AWRv2vdCb4m8PhNPtxMCAIYm0F7ELy8lqzMidWTmliB4Lu46deuynWQh4
         S0ZCbPRPGXxWSYy1GBAzjGxmbJ1xLWujMam08ywsRDYJYPGSoH1+0Oce8AtCt/wJ4Rsl
         N0YQiWy+FaKljEqEBGQ39KiM14Gz1xkynPpp5I9XIK55+J5q5wR0X/6XE2raNkUBJWD8
         QnGH8vsh0knNbCMLW9xzvDhuKTTevOQdplqvufODYFe54a0ZMe4wNHu61exldxb4FwFP
         5HPw==
X-Forwarded-Encrypted: i=1; AJvYcCU7KoelBUjzKORtawoW94jw32mcQDOqURYdp700ujAnix6/hRZwoFlndCjj9tcgXZzfpUXtQWCcwT8f@vger.kernel.org
X-Gm-Message-State: AOJu0Yyr5bgiT0FH6L8+nurRdf3TNPnjp9r5C1p8TGXulsxwmnBlEmPr
	N04qGe6DVoT38SEn1Go/8OANuHbHxSaicGI+kmY5hCk24NIK5ZYf9g7NQkZSXTmeDfRRgrZWeHG
	4VHSQ/uosHPBjuu1TYlxsb3PbxXrXN6s0h2JO4T3smpWgVAdjd3DwfLiAz3Au
X-Gm-Gg: ASbGnctEVP+HLAXsma1RuRBAJO/QVdj0X1fgDAFHdqWfpoYlOG2nG7XVmRSJf9Dzke3
	jnCLK5s054IR50uVdDDejjPcZoGukVQOqyZt23KgsaEgM07M2vldbThxC+SuhMw1fws2Ao9e0M0
	WJOkQlWiTXCKwpQ7xM0nLfAV5RaGaxuTFxkmsdYC2DvViap0mh9gQmFrx8ePc6t+i9McbshZZT4
	HerlDd8OFJCwO0/Tl3dtoUDcrvQTUk48oLYNo6l46aYusPWq0RFFMUjRShBYtq2fRKdMCcVrtVR
	hdTdDeRDu59hktKU5PtzBLLODd+xz9PUGXfpkr3oSI+Df6vKfIp08nrFXbWrXa0FVns=
X-Received: by 2002:a05:622a:1b90:b0:476:add4:d2b5 with SMTP id d75a77b69052e-4801c2c33bfmr32875241cf.2.1745662369412;
        Sat, 26 Apr 2025 03:12:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH8y2/2zXerVowv3WgwNFdVM4P6Z1IVdhvxEp0YRKkj25bC74sKgwxuOCG/XTskyzaDy0UV2g==
X-Received: by 2002:a05:622a:1b90:b0:476:add4:d2b5 with SMTP id d75a77b69052e-4801c2c33bfmr32875051cf.2.1745662369029;
        Sat, 26 Apr 2025 03:12:49 -0700 (PDT)
Received: from [192.168.65.154] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6edafbf0sm264090566b.168.2025.04.26.03.12.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Apr 2025 03:12:48 -0700 (PDT)
Message-ID: <11e76323-db6b-428b-816f-e96fc9523fe5@oss.qualcomm.com>
Date: Sat, 26 Apr 2025 12:12:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 07/11] arm64: dts: qcom: sa8775p-ride: add anx7625 DSI
 to DP bridge nodes
To: Ayushi Makhija <quic_amakhija@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: robdclark@gmail.com, dmitry.baryshkov@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_abhinavk@quicinc.com,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_jesszhan@quicinc.com
References: <20250424062431.2040692-1-quic_amakhija@quicinc.com>
 <20250424062431.2040692-8-quic_amakhija@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250424062431.2040692-8-quic_amakhija@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: -EMOr05fXqL_-V8JutrxBzIMOKr8AdiU
X-Authority-Analysis: v=2.4 cv=aeBhnQot c=1 sm=1 tr=0 ts=680cb1a2 cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=GLHRRWOWZVtnXAxWSSAA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: -EMOr05fXqL_-V8JutrxBzIMOKr8AdiU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI2MDA2NyBTYWx0ZWRfX59A46nyMYxLn UFSEz88v0/rv3K95xX7A2nvvcpjhsoR6jODal2ag4mUazeRgyxxdXD5lygoDO1zBh4XZjhodFpi PldFfX7iU8k8tQi0N2YQHEJK3v/42WbjQuUuVNsi1y9Of/guo20RJvWKkCpK9S8phY1N7+5L5Sh
 Y24yjPpzZhgUEYFyG2W0Nk4PGL5qlVNOuEicSjyYlofyI7fzPXYC/hkdjU0qrVdpHCXS3+cq81D blTQIAZTfbuoPdvpnYEZE1lmZ0iaCGyG41kGayQgAPIaDXAKxRW1Y1eUCCkOgpzUCu/P05ecD8T WHP6n6/zTHyzZSgVUIIwPQAe8UpzIhxLjtCHfAK2giyg1777HENoMyrtpyOS30/ooohydGI2qXB
 GlJyw+PLvwC8JdTUkyBXr4JfE0NGtPehkE1Uyb+WoOmzSy7FsQCBXKKLJja6T+kp8v9/zpkS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-26_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 mlxlogscore=999 phishscore=0 suspectscore=0 lowpriorityscore=0 mlxscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504260067

On 4/24/25 8:24 AM, Ayushi Makhija wrote:
> Add anx7625 DSI to DP bridge device nodes.
> 
> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi | 181 +++++++++++++++++++++
>  1 file changed, 181 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> index 175f8b1e3b2d..b8851faec271 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> @@ -28,6 +28,13 @@ chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
>  
> +	vph_pwr: vph-pwr-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vph_pwr";

Please provide a reference voltage for this one

otherwise

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


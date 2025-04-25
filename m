Return-Path: <devicetree+bounces-171037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0CFA9D105
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 21:02:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D02C5188890F
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:03:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11D71219303;
	Fri, 25 Apr 2025 19:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A0MPwPKf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA6C1217647
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745607774; cv=none; b=ealG5hsP6udUG3YOmRM8ZF1isgHi/vnKMa6cvjlU9fUK1sFA7Gh4WkrwBXm/xI/OrcnVRK9vkGTNwfjhHDLL8PN61MN/vVWxGsmWigiQ5/TSG9OHW6TGwjdOZtX0IjERB9yVUN92w6YVGo6Us492aH+H0DlEd8K01oRJ3iL+PRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745607774; c=relaxed/simple;
	bh=pYCkWUjNE3NuFqcQEgnTKGicdGzX1if1k7WgCb8+6Sk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LIvyekDbHnZ8POlWj7z3CQYlRU49Ln8UTZpQmVFRxX5vOcN+Wll2uGqpV6YmSyTy9o4xAQx2CbzrVpqbBCD4svG5WqC5gqh7bbIIqz423eZz26kLXk9YxSE6R6Va2Sind2F9UF2Sa7Ynp5QwG2QOXv2p8mKHEpjvDMFco2FLaTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A0MPwPKf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJvmk032005
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:02:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nkUUiT3ss6IH9EIAP3uPnI28
	FMp0pQeC3xvyjBzjGrE=; b=A0MPwPKfawqBaD6ROdG6oY3SGx5ZePkWdkE3TOJ+
	6va1AZ8QH/ZtqM+hQXghYzF4Z2Q7sPaxEehgHwvpulGN7AIwHQxsWLnEoXxB+MP6
	FZ4Ia3W9hKe61mUxgbWFGA0Cr5+3QPlZcZmuufEMf0VOE0Du5iPpA95QKmBDJxLG
	w9RYOeck4ixQuldhuL7Q0oxM/giaE423/PyFxK64LL7axYrSZbC9H3QG1NzBtcnF
	pd0yNRAcPMNjvLqf2xCMDjkzelIzveOqxqcuy8sHet3xIyUvO9tADWbOSf0ZI0hu
	XefuWasLyULaY8k5IPIWA1SdXqbHe18ajF9rdRjOfvcjcA==
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com [209.85.166.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jgya1ew-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:02:50 +0000 (GMT)
Received: by mail-il1-f198.google.com with SMTP id e9e14a558f8ab-3d91a0d3e15so28293325ab.2
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 12:02:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745607769; x=1746212569;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nkUUiT3ss6IH9EIAP3uPnI28FMp0pQeC3xvyjBzjGrE=;
        b=gehPyoSNmjLmX5R49lWdiGhmdQhHeWqn/sdH48AYCQwlOYPMLS7jVNiMsXnxzugTjM
         B1NjYLWqLseE9LAWURBME7YZsZznyK3W6gReDi1MLZML0qYXhSLQfdxzs616XIuzlszL
         Ri5OIN88Byvmst5piyh11yjShsyNnMGy75AN+Ywy2kJGedd5h+Duo0o39IxCIqo1gpDr
         s54zgQZG1D+9ofCxQzCVStwbDGAk1S43wjT343xKgR1jjUHmp/M+lrorKpuLVK73vzGQ
         z2Xa7Cgx/3OQcxEphB5MDQeeAhK8140JZ0Ani2P1Fc/wWg8FHE+Dey+6kHZf+x8bskRH
         KjPA==
X-Forwarded-Encrypted: i=1; AJvYcCXrBr/YbmwAHqh9i0eZT0zZkeGwWFgCZouPQeWKXAMvH/Sxj38r/ujvbvKy17f0Gnx3MNllSH11pqgb@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3XvBKkzlT+1kHpZlSWolqayYI2T03iYQkOLf2M3KohjUlq2t6
	gYHvveJs1tPHYq0Qyf0zwiSI4DCfy4XvxyC2bbyTC+Aj6AlyAoedg6HQr/+1I1sF16q/ulFOeW1
	NtiUzrPjhDkycYCqERowMoNSBz3QH69cuvkozDFFPkxQSiIGFppAn97c6Etsd
X-Gm-Gg: ASbGncs5RMVQLbW5WdawVx4q5mWpkww+EvTrnQ6Qp0CS8ZlBK+vr9ZfIpqmlBh0t1Px
	XdCIZDZ48tofr3/jMfcDxsoKJspp0jVU4VWeWi7c40N9RAmM2SIgs/NvcYUr7mWldK+K64EwQzB
	K+IrSJyMDtzIQy4TF2Lu1lj44Xj7VCflpwNnGiZs3NZlJcBFkqQtHLnpywbewtKm1mRdK/f3w82
	2XezZArzMls6tZXZwKunAinFtte0/PzLQkgBQcbT44U0nGNu7M+P2X/N6T/LOJPJq4eNIMdpwTZ
	o96VE32jXjyFzCiKa/ykiCcW6tr0XUKhOOuGiDZYiVvAR1+jwFHIj09eVGlevHhkiYPoj8uXqrM
	=
X-Received: by 2002:a05:6e02:238a:b0:3d5:dec0:7c03 with SMTP id e9e14a558f8ab-3d93b479e3cmr39269275ab.12.1745607769325;
        Fri, 25 Apr 2025 12:02:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHhuXvdR/qmg7RMT82loQhMhHkY1RAz50Xasf3Q8QcQs/adSctEEm2ILPuO8VBKeb6d+RFAAw==
X-Received: by 2002:a05:6e02:238a:b0:3d5:dec0:7c03 with SMTP id e9e14a558f8ab-3d93b479e3cmr39268695ab.12.1745607768937;
        Fri, 25 Apr 2025 12:02:48 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-317d206b703sm8497861fa.114.2025.04.25.12.02.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 12:02:48 -0700 (PDT)
Date: Fri, 25 Apr 2025 22:02:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org
Subject: Re: [PATCH 4/6] ASoC: qcom: sm8250: Add Fairphone 4 soundcard
 compatible
Message-ID: <rhfklvynn27x2lwyygk5rpjwvx7p6bhbkmc5jehuy54ilhnzbz@wuhcndngavbp>
References: <20250425-fp4-usb-audio-offload-v1-0-f90f571636e4@fairphone.com>
 <20250425-fp4-usb-audio-offload-v1-4-f90f571636e4@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250425-fp4-usb-audio-offload-v1-4-f90f571636e4@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEzNSBTYWx0ZWRfX+ODeAxfPbLcf K7KHy8IPIjZrbVAosQfV/3yFFh/frzs7IrOF8/sWwl5gA3kvqrGLBn3ribQb1zA4jaDQmsv30OI qsYhurk0N8WJddDgqdcl8fRjFVKo4kNixjaR9vLxiCGC46+qS6UhUGYAox28SlVEO3pg1+gVx+w
 ifPJL56CQqJQ7A9J/i0I/qtWVY3HCscbk4MuHVCjH10/4CUHT6dSiYOf6QBxdihwyjB9ijwX0tM L7DrI8ScABlixXr+ziZN0PTWcLw7ZNA8VYkKSlqvR2Zfo+eUDTp/8HWFPBjQla9ws4t5i3sxZIX 7X1dJ+wOPZMxITetiF1dv2VilDNVlVgFBBixVmlLGe6dR5AHjcLAo4yt6dSz4VpKBwBpMzYI5D9
 zj6qs2c0UZLO8GF2NGwGX9lfNMN2OGjdRnLEi+Lh0K+1EwcXqGTYZski0n2m3hg1KmQYsEss
X-Proofpoint-GUID: TXfSQGtVarq1H5VvPcKYYk598t80o5NU
X-Proofpoint-ORIG-GUID: TXfSQGtVarq1H5VvPcKYYk598t80o5NU
X-Authority-Analysis: v=2.4 cv=M5VNKzws c=1 sm=1 tr=0 ts=680bdc5a cx=c_pps a=knIvlqb+BQeIC/0qDTJ88A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=GtLuwp1ogO1-ZJmtaBoA:9 a=CjuIK1q_8ugA:10
 a=8vIIu0IPYQVSORyX1RVL:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 mlxlogscore=846 malwarescore=0 impostorscore=0 clxscore=1015
 suspectscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250135

On Fri, Apr 25, 2025 at 12:44:54PM +0200, Luca Weiss wrote:
> Add a compatible for the SM7225-based Fairphone 4 which can use this
> machine driver.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  sound/soc/qcom/sm8250.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry


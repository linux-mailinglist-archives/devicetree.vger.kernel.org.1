Return-Path: <devicetree+bounces-242976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6563BC91C86
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 12:22:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D613B3AC8F3
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 11:22:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 497D430DEB9;
	Fri, 28 Nov 2025 11:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S3FepLsw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eZDtjxFn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF58730B51D
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764328963; cv=none; b=Ein6iTZ2GvhZIP4+g09uyiQPya+HCNLOAukEPfyHFkYPmdMGDx0RbRtncyYkNRKR/W3qE44M7Zz0VRIeGtspALbtIJFiwkFPJjG2uOi7s3256USVDuSHS9MR7dCTAx5QiZleQirmOJ7aGKthry08efhdNSD6gjyruUUoZePVWJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764328963; c=relaxed/simple;
	bh=QCOTdXE0lArlNpLd3aypqY6iWJag1nBxJAj5Q+Sqo5U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Oa21p0MXpSxpuXqPxeFagYLpPMFxIyYFpz4BTgYHSTFjyXI43WlvxKEsHhX3FYUJ/vDwJghmOIyPn49uWQ74ECUwlPl/6W3WITPI7p43sMkVsiCxb/FFxuXnziDWKY63QguVmMCUXB6P1O59ZCpCA5kUK5kbQey8ow80OcOQdl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S3FepLsw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eZDtjxFn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AS8rjnp3989803
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:22:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	L+PUl/m9D97UXikkb2Q6BQdXzgXaQFRhIIryVPZpqCs=; b=S3FepLswzwuwqqzG
	pByVNsmybIsOiXhBpwA5S/HTKAbiJ5/PxokBAfNnIb9dOQ0PtmasAoBZyG26+5eg
	QpLvKh9QFLPDJZEgbG2cAxG2Hpb0U6D3jTliwQ2jlL7sg7OSq5gdSakcLkc8d+Jx
	xZw+dkz4ex/OMAH4T2J8VL3DiRiYVcBDa2D3C1MRjOY7+TO6qvnvDbiojWGZhsFr
	/07fA3qTuysycZnTOE4HrIYJvWz8gF2emTPa8WLA6YAFkrj25dQKIzPXMcOUErcM
	Oh+No7l/1/pf40j+lfUFNeCT6gBiVx13TAGZECYQGkWxSfpbgPlX2UxHCm3y0VwA
	DpknBA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aq8mm8dy4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:22:40 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed5ff5e770so2416331cf.3
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 03:22:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764328960; x=1764933760; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L+PUl/m9D97UXikkb2Q6BQdXzgXaQFRhIIryVPZpqCs=;
        b=eZDtjxFnNajVYvxYsK7lyWsd1gGMLvE2VK1+ElSlFuQMLubwVpVgICfAbvaVxz3TZk
         p+RJMr7lRvsjcGZAxxVM0PMXebLWxZW1voRSyWFcooDOYpw0caRNmt6UK+A5fUPmaKLr
         ClHqSQiM53GEctYX/FjYp+y5T7I6J1HGFMqU8XvxsUCfGntsO1nk2phsvYaV8o/i4tdm
         85UJoiW8m4vER8hdCslAhLLM6ZCsHxAH2U7U04JC0w0C3jbIV9vrEdMKC0FPV2fgUcP/
         lbGRnqbrtixgxsGi8fX+4c+aa2mBvpfmoA4eOuO1tG2Jseo2DLfFCbg/zXcoyDP/7r9S
         UhTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764328960; x=1764933760;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L+PUl/m9D97UXikkb2Q6BQdXzgXaQFRhIIryVPZpqCs=;
        b=EhummIqqL0dJHoyM7GyEwANFoyGgvsBnDy0PA6nQ5s0AR0VMneuQF4xwI27yTNZnbA
         kAkuPfBo6apeJ1TV6Hx3Ad7ivE2NKWBih1b/eYcxjM3mpvmz1xxCm51UcJrB3knI2zck
         DQPQtdNHZk53Q52ZaYpNjP13Z+4qZsSmeUEiCR8V/VxROSJhI3jlOFTIpS/YkJFhTrib
         YgCnke1cvzjUgSvpslrU3INd0s2MSO1kbxLL0GvUbwIj8g4HhDaNXvvEmlwn/+dj6Aer
         NmLslkPab/KfHK5rPLw9AYjEDpV/1sRuXsTftVtFSgbPU7J2yhWhNrPB8TmMWEeXTD7S
         Osew==
X-Forwarded-Encrypted: i=1; AJvYcCUqHH7FX5vCLgGavToGRFRgsbadb3CuG3V17t8XBq5DGwEKKVDdwPNruoSxMmGeD2mIQci3ov0F7ERk@vger.kernel.org
X-Gm-Message-State: AOJu0YybCen/d9ppXxivEeHB8p4lu44BUuNlFGDzM0SmZLPjj2aekaq1
	WLPjEJZQoSSawTv0V+k5CR20hysP3wLvmRN2M37zBCLqCVFMNLUT9mQZhY0wqq1hT4+EsZgKWqd
	YyrMDnR0CbrIZoS5Pdea2AnJb2wNaOhC+V6iDJdDIV7Peelh5jN25NeagDiUGBmsu
X-Gm-Gg: ASbGnctBeEGeziR4VA06ek7hGBRcAc0uczUOFiGMHPDm3FVVWj1oIc2WWjsXoU5BikO
	CUoqyYfJxt0IKSlO0u2yHFQWkoPjyckVpwH1K24WHv43AfrG2bMBGI4J1oD13Jllx8nm4Ys2vDy
	6gEamc4RkuBk3M5mzg4nlgODEG3FuCPUwOYvyRz3LW3Qoz/srPUwmoZZiecReOGpGt/OP6qByV0
	WI8mKD9Ovm3nn2ApPYjtPIGco4r9/bnfVNmIgQ+d/2uPjalvCbYtvj6TfeyPvEvkWoY97H19VO+
	rrHRZWAXGKcHeZeNA3rybf+KsiVrtiuIjcYaMyif9DBd56IEedq1oaUpZTg12HUMB3GdeCplgTm
	QgOOsDtDYrDi6WvN+pMFBv3O9+eOLDyizJBLVjAdxxnFp1Pty1f8cIG8CbGPT5NdLxkk=
X-Received: by 2002:a05:622a:151:b0:4ee:1924:c6fc with SMTP id d75a77b69052e-4ee5883a43cmr263271331cf.1.1764328959477;
        Fri, 28 Nov 2025 03:22:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEj5lcs01/6XqZsn9JnDbO1u8XQP0sdJa67KNdRh14wduierNC8EEBi5L/2K8IUrtBUuOnTWw==
X-Received: by 2002:a05:622a:151:b0:4ee:1924:c6fc with SMTP id d75a77b69052e-4ee5883a43cmr263270061cf.1.1764328957510;
        Fri, 28 Nov 2025 03:22:37 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f519e8f4sm425666066b.22.2025.11.28.03.22.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 03:22:36 -0800 (PST)
Message-ID: <75bd37f9-8282-41c7-943b-f87fad76baea@oss.qualcomm.com>
Date: Fri, 28 Nov 2025 12:22:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: talos-evk: Add sound card
 support with DA7212 codec
To: Le Qi <le.qi@oss.qualcomm.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com
References: <20251125033311.254869-1-le.qi@oss.qualcomm.com>
 <20251125033311.254869-3-le.qi@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251125033311.254869-3-le.qi@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: eP1dgTe_KtYwVhKL8tnaTpxeeRWs1RvI
X-Proofpoint-GUID: eP1dgTe_KtYwVhKL8tnaTpxeeRWs1RvI
X-Authority-Analysis: v=2.4 cv=Cvqys34D c=1 sm=1 tr=0 ts=69298600 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=GiN-RvxsxEstmNQ0fm8A:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDA4MyBTYWx0ZWRfX+1nAZt2Z81uu
 99DEhqYJgo9TPwwCUsGfvLCkf4eHvGkDp8HdA/b8RIZxvnezfLIlAbGKcLAoRetW5kP+cYlqznc
 0zjBQYcZQ7Tz3UyDSOw0Pn4TEWE+S9cYDyXvsZLj7fG8KDPTaQzhFYkxtCb8aYwXnKy4c4r4XQY
 y7vXw2ePDnZaUfTNM8+ZkVQOLOANyU8uCp+pV+Dek8SXoHMasM3MEyjmIA3E8EnGf9MsD+cgJUL
 jMYzAcwzaQFd4k1wHZhOniAwlYtfaJphBeDnan+mFAG16nSctV2WR9AzCpRVdeS73xk8H0s9g0r
 0UjO+QsT7cIHMTh1rpTmYdu93uTFn1GO76YApqf/vCJBIZYZJxBUCRz6iQEN//fvZj+e4uebm4G
 8PXORmaKApXa6QcgCvm1t3cHdHqJCA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_03,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511280083

On 11/25/25 4:33 AM, Le Qi wrote:
> Add the sound card node for QCS615 Talos EVK with DA7212 codec
> connected over the Primary MI2S interface. The configuration enables
> headphone playback and headset microphone capture, both of which have
> been tested to work.
> 
> Signed-off-by: Le Qi <le.qi@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/talos-evk.dts | 54 ++++++++++++++++++++++++++
>  1 file changed, 54 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/talos-evk.dts b/arch/arm64/boot/dts/qcom/talos-evk.dts
> index 8ca0699e3c40..3f382fb6d1f5 100644
> --- a/arch/arm64/boot/dts/qcom/talos-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/talos-evk.dts
> @@ -5,6 +5,7 @@
>  /dts-v1/;
>  
>  #include "talos-evk-cb.dtsi"
> +#include <dt-bindings/sound/qcom,q6afe.h>
>  
>  / {
>  	hdmi-out {
> @@ -18,6 +19,46 @@ hdmi_con_out: endpoint {
>  		};
>  	};
>  
> +	sound {
> +		compatible = "qcom,qcs615-sndcard";
> +		model = "qcs615-snd-card";
> +
> +		pinctrl-0 = <&mi2s1_pins>;
> +		pinctrl-names = "default";
> +
> +		pri-mi2s-playback-dai-link {
> +			link-name = "Primary MI2S Playback";
> +
> +			codec {
> +				sound-dai = <&codec_da7212>;
> +			};
> +
> +			cpu {
> +				sound-dai = <&q6apmbedai PRIMARY_MI2S_RX>;
> +			};
> +
> +			platform {
> +				sound-dai = <&q6apm>;
> +			};
> +		};
> +
> +		pri-mi2s-capture-dai-link {

nit: 'capture' < 'playback'

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


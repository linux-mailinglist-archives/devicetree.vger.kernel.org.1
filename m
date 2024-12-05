Return-Path: <devicetree+bounces-127629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3079E5D3A
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 18:34:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3CD4C1881A30
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:34:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA6FC224B00;
	Thu,  5 Dec 2024 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HIMPLulk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BE8221465
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 17:34:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733420093; cv=none; b=qE06tmIGYgULJ/iGQX3Vjza4FDno1bm+cpwB/LSyQDnvBAG2Mila0twtYSV57bLwf0fidfnZZ+pxk3CRIa3BHbVl2ke5IZJQtdxz0OVjGhruxLLkaRPZzwL1/cUFcVjJuNSlubfg3ByN8VhqdQV6UT6LyuHspx0R7T2IZuMvFjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733420093; c=relaxed/simple;
	bh=SdqeuMU4MXX/6PajSfNV+46IY7u4faHnNTXFtAs461A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UqoPCJlkCvVGlXc2vNZnKgXfUQzfjV4ItwmKiGFrx0U4rDSS4hXYqtii7AsVSFRtc+cOlYCdGpwTF0HZkarWcLtVGZqubgbt9Oz70l4h+NZmabg1yZef7Kv47y/eHe38Zl1jSgbHRZz6BDpXgtaZZ8eEaQzZzP8jHFpRm3voOO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HIMPLulk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5HVmPe021353
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 17:34:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qbKA2LbQIT3K+/LPNNfeUn0eBwpIJVipyk2dlwQyiG0=; b=HIMPLulkQTcq5V0n
	2fZzuzX1tt5pzqUmoFrc2Wyb3p7/k7ZAKBBfA9hoMNv2rLLlXto0vT6MA/AEQH8p
	39i86ZLXJjLjo9CUBAjDGk4i6wr0or49dLeMpZ0EiYBNEP+ElT26vgkpyzDN+trC
	aH8REfPgISl9cHflBpSZh01rpSil3qx6COEz9eCwM1MkuyrI5DaBn7eQyFYZYKOw
	Jn9SCh/RlV9LV1EkCRu42cWcVsqXfw5iPj7ZRIPiJ8LYhljV1kQgd1f6t5eVhpnk
	8c8ilmtNJkQTwLnf/LPfDyfwZUtZUjPU2UtkOL06/nl65RPwWCZ7cHw0tI1aiIfA
	haPrMw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43be170hjs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 17:34:51 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4668f02aeebso2691671cf.1
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 09:34:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733420090; x=1734024890;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qbKA2LbQIT3K+/LPNNfeUn0eBwpIJVipyk2dlwQyiG0=;
        b=euXvoMqj8xEjPf45+umGM/kYx4hQLd+E/+MXdoeIFzInits19Xy318ylq7mo/whmnM
         eBGzStqYUWxhlzrJT5ReKH45dglOT3mSmm/C1+0fuNL9vHDfHDT0fMTimsZkr78moHZc
         f4PUbWtGootZj4WBJj3wH8deMK+SDKk6+hqjfSb+DADt4w6u8Muqn6ZabJ8Q3L9qjASV
         O5b5b9bYadgSnMEwe1nAZOMkQbT+cHtWwSXv0k4fBn2nMC4fY4rHshi6+raNsIQD5fdZ
         GdXEa++EpZY4RmpSeSneLwGb4QCcyg08CZus83NptrO9/shl0OUxHFFAllnmE0S1Z0RA
         6ZoQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHpHx2lv4MyhhggVNE7m7Tw5pJOKHNS6Wf98dW1iYyQS2+1fCWjKO+C0Ka/1BPl26oi2O139+tMMEq@vger.kernel.org
X-Gm-Message-State: AOJu0YzaSHD3DG4H7Cl/DvkFC/kK5lvQV9TJ1zUyWoSy2yuW/WB5rDa4
	KTkA7lyr13TSfMT9L2TpXpIvyqiwGgFJs4nlX0vJFq31sNi+yVdPa1m8C0ZLXRNkrq5rtG2ZfG1
	Nlw7LK01nuQRnMF4gn9AOU0aSvhbsp8iQuyIOpf87EJUDbV11V6T+t2w8bFUZ
X-Gm-Gg: ASbGncu55ePmdTGKHd5m1/eQpynALpzUy0J1l+ly2tP9DDDn5xcCUXv1NYix7QVKXYs
	CETf+GkeyKNn9lnxKiKTI9RxrpOWWmTCuphszx0G07G/AnpE6l2ZhU7+6LTXHWxgsmW8Gsl07tZ
	r20Jou5l/tqD3s/2BJz95q6JanZ7Tl1QzkFixdStEuHoiyvegxTme7TXPKrEqtoBc1kvowIZXIr
	95RT/8PnxORpW6kxF+eNBCrEf+PXeQ0HSFCkAN3FG4XdEgae9UOEGjETS+HKbztRfyCiOuR6pfn
	sL4y+cA1OP/7HKKWWU5Q9VuZ+pnromA=
X-Received: by 2002:a05:622a:60c:b0:461:6599:b9a with SMTP id d75a77b69052e-46734db29f7mr103871cf.11.1733420090299;
        Thu, 05 Dec 2024 09:34:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFkynRDwav15Be2c6+tGwT1nFZ7xQCD35mWUPmEZpM0R6AtIb4RO1VE2wnYhaQoIqidCuk3vg==
X-Received: by 2002:a05:622a:60c:b0:461:6599:b9a with SMTP id d75a77b69052e-46734db29f7mr103671cf.11.1733420089864;
        Thu, 05 Dec 2024 09:34:49 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa626088566sm119590866b.134.2024.12.05.09.34.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 09:34:49 -0800 (PST)
Message-ID: <d43a2a74-9867-42b7-8810-df081f037831@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 18:34:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: sm8750-mtp: Enable CDSP and mention
 MPSS
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241122-b4-sm8750-cdsp-v1-0-9a69a889d1b7@linaro.org>
 <20241122-b4-sm8750-cdsp-v1-3-9a69a889d1b7@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241122-b4-sm8750-cdsp-v1-3-9a69a889d1b7@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: WXx7OuyyfOj-WPwthtiPiYuHwnOGRyCU
X-Proofpoint-ORIG-GUID: WXx7OuyyfOj-WPwthtiPiYuHwnOGRyCU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 spamscore=0 bulkscore=0 priorityscore=1501 mlxscore=0
 impostorscore=0 suspectscore=0 adultscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=852 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050128

On 22.11.2024 4:26 PM, Krzysztof Kozlowski wrote:
> Enable the CDSP on MPT8750 board and add firmware for the modem, however
> keep it as failed because modem crashes after booting for unknown
> reasons.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> index 8eeed7f2f7766326cfc7830002768087e9783b9b..e2562ea5996ddfb1bee03b367082f4e1890131f3 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> @@ -791,6 +791,21 @@ &remoteproc_adsp {
>  	status = "okay";
>  };
>  
> +&remoteproc_cdsp {
> +	firmware-name = "qcom/sm8750/cdsp.mbn",
> +			"qcom/sm8750/cdsp_dtb.mbn";
> +
> +	status = "okay";
> +};
> +
> +&remoteproc_mpss {
> +	firmware-name = "qcom/sm8750/modem.mbn",
> +			"qcom/sm8750/modem_dtb.mbn";
> +
> +	/* Modem crashes with "DOG detects stalled initialization" */
> +	status = "fail";

That is a bad sign, let's hold off merging this as we may be
missing some resource..

Konrad


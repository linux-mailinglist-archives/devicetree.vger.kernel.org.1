Return-Path: <devicetree+bounces-113147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C36DA9A4C9B
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 11:31:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CEE321C204F6
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 09:31:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4ACE1DE4F3;
	Sat, 19 Oct 2024 09:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YR+IhuBL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3D9E20E30B
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 09:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729330285; cv=none; b=HvpQh5xCNakF4uoJESfmWi7ONUsLoZkh+vUe5lGv/igZVPiUjvd79YZJ38o2CWwyaKG/uUR2U/BJrOtCbBsZLmRJOAvzjeW3jC1VOvGGzvQ0xEqJdQsuuakYGcHKfIq0ErgDNfK66qkK7L9VAV3RrIv0Fe1wUcAZwL875Wv8/6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729330285; c=relaxed/simple;
	bh=u+wwrYt5s1dfXf3ZnK7WYUw4Knmje9u5RDa4GWmJtQg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Nx2gnupQDkLScEQf76sWhYh728QywyzFYvaks7FLp6PmnQC1Ke7kN0MORM4RwJ4pnkIWgNv6UbPCMO5s4rWUvoy0IUzxcTTBjGe+NU8i0ZACDsvK4jcDcBfqjnr+c3GA/Jjj7IbtJyDPV05SGu1LyWL2jqJ94eUtFFJd0KYY4PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YR+IhuBL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49J6R1IU032513
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 09:31:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kDvjpebEFAnYTPJ20HUX76lqbg+PdA/w8e9SGJWV6Mc=; b=YR+IhuBLWIikNhza
	4NAMQ6towQGowcf5fSBj0dXzQIS1z8WfS4fMyfDMNja46+FV54y0MpvxEBAqcRCQ
	V8kgMDYobw0/xjtEBe8pGD5yuXRUfYlTOXhJCjSqRX6QR6TqJewIU44H+jprI721
	S9CcD1bL1A8bG9YI+7Z1Otmhi/ZQjYrJw57RQqz80dq8vMT79b09MaY0OrJV8VbI
	0oylYWBQ1168RUDqvvhAtmXBt2rpFPHjCimXgqrLMECt1zbEFWLVFPTLriSNV9lA
	q9mwdejOdfmC4UulUzqTU7H63p/brRB383QTHxvolC8CkqfY8CRdRtPntYjPb1F7
	Sv0a+Q==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42c6rj0av1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 09:31:22 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6cbe91571easo6818696d6.0
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 02:31:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729330282; x=1729935082;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kDvjpebEFAnYTPJ20HUX76lqbg+PdA/w8e9SGJWV6Mc=;
        b=QcpjJRSBAX/PN8/jmdOd5OCspsVa/haBV5I/gl0MLz20pUBd7ENxsW5/MSvRMzqjK3
         tmeHXW0CwXETzZS7aa/9V+qKzBfUughCH4TMVEISYt8Ns33fYygGUkwxEIhPHWru3ijM
         y1fMfxF6i57IKWsRjw6pBsnD0SvbYyTlYM3Zxe1CTx26QYp/YPnAQ7vtwk7BWSFfKjIT
         Yu+5Q4iXKDPdF0/Enw/knG8nEyNIrEjXdDDMRBXNGNNa0KilPPK/tNS1RkmTYhSV0FDg
         84pXHvOAxQTo+TX+n9F3OhMd55lC6WHLZ04TnmP5Usv2P4f7LEDShdAMG9G4gR44qoQx
         2s2g==
X-Forwarded-Encrypted: i=1; AJvYcCVazjuBBSaAhlzm/zbJajktOqYX6b+6VREWbEKmIxAcmu84h7I6p6pdhXjMp+qnXri8btwaDxo+CTd5@vger.kernel.org
X-Gm-Message-State: AOJu0YyYqH9SqiMr/Ha5wrbylRG3Qk0KnSZr5SK/z4OXhML8hBNjSqHw
	zmSlB7FFgiDlNAejIaL/TQwbkzYjVgy92elbWIPYeXU2dLTjH6oJdsdkjWPrz2VAnelx000V0qH
	aPpL7ikucnwrkv5z883berGgOo7sNso2c3sGs5XyOcSWJAsU698rxdqSc4pvw
X-Received: by 2002:ad4:5f86:0:b0:6cb:e981:d7dc with SMTP id 6a1803df08f44-6cde1665644mr28861076d6.12.1729330281957;
        Sat, 19 Oct 2024 02:31:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFfKVoex1k3CzucOMf09kYM83A40/O1ZkQf6LQsRjlLle5JJwEsmOyPkmezoMSfcyXFq2dk5g==
X-Received: by 2002:ad4:5f86:0:b0:6cb:e981:d7dc with SMTP id 6a1803df08f44-6cde1665644mr28860976d6.12.1729330281569;
        Sat, 19 Oct 2024 02:31:21 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ca0b0f977csm1643733a12.83.2024.10.19.02.31.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Oct 2024 02:31:21 -0700 (PDT)
Message-ID: <b87ae968-aef5-4213-8794-e1e0a6657bdf@oss.qualcomm.com>
Date: Sat, 19 Oct 2024 11:31:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: x1e80100: Describe TLMM pins for
 SDC2
To: Abel Vesa <abel.vesa@linaro.org>, Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Johan Hovold <johan@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20241014-x1e80100-qcp-sdhc-v2-0-868e70a825e0@linaro.org>
 <20241014-x1e80100-qcp-sdhc-v2-2-868e70a825e0@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241014-x1e80100-qcp-sdhc-v2-2-868e70a825e0@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: O6ZNNsAhAgnF9FbAMY-sIYlW1Yv5ctbj
X-Proofpoint-ORIG-GUID: O6ZNNsAhAgnF9FbAMY-sIYlW1Yv5ctbj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 bulkscore=0 malwarescore=0 mlxscore=0 spamscore=0
 impostorscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 mlxlogscore=988 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2409260000 definitions=main-2410190068

On 14.10.2024 10:19 AM, Abel Vesa wrote:
> Describe the SDC2 default and sleep state pins configuration
> in TLMM. Do this in SoC dtsi file since they will be shared
> across multiple boards.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 40 ++++++++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 2d0befd6ba0ea11fdf2305d23c0cd8743de303dc..dfdae4f9225740bb3d2de6b0054ed60a2397bba9 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -5741,6 +5741,46 @@ rx-pins {
>  					bias-disable;
>  				};
>  			};
> +
> +			sdc2_sleep: sdc2-sleep-state {
> +				clk-pins {
> +					pins = "sdc2_clk";
> +					bias-disable;
> +					drive-strength = <2>;

Other nodes have bias after drive-strength

Also unusual to have _sleep before _default

The nodes look sane otherwise

Konrad


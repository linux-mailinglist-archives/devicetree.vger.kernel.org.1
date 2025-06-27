Return-Path: <devicetree+bounces-190419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 902C9AEBB71
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 17:15:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5AB191C41D31
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 15:13:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 206E42E974A;
	Fri, 27 Jun 2025 15:12:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GkKRSkss"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A15D32E8DFC
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 15:12:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751037166; cv=none; b=XWgW18dh6Y8+wpZvnP3iaNVg7vfLbpCMkLzaWZYzy3qRV/mIA7YjTBS5Afw3ZYbmtLMQsjGv5CCTWJ2inH9wMKYAMj60ZRnTb3AQa0m5ocRgBhzpjC+BF0wwwmxPOOYtBVBMEAiENotIJiCMVDARmh7soX67vU/bRCwzsFxsWp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751037166; c=relaxed/simple;
	bh=ZvUhDINxNAiascznXAJsY4SnRs0y1OpkC51/1Pwt7EQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hHEIuwZeYa44xhh0J4AE0jJrgbtZbk9vWB5oy9h5e2E2HFXSXUPbVtT+E4D6uz2/7quruqJpQkicPU8UnarrCthsTeT2JsQXEQggNp+O299wo6rIDBnjbTAxz0ydVku7Qar0gSBSF+2NuWU3ie7vof2JNS4hLU9Na2ohAlaPqFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GkKRSkss; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55RCMUhe006968
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 15:12:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RIoYRSmaGzXOqnEzOL/B5Q1z9cDXwbAoMqevw2KwgyM=; b=GkKRSkssG0OmDcFW
	UoG0lMW07UrdPewDYEm8L3LUdaxPaICQHfNngqRb9NLsgqF8hdwtCYcFTe74qeTh
	fplDV0U0dV4uCLPzaSc5Nw02PGdJ0ZLeB913+1Oj/Tdo2XFieMjd38EoIkMzA9Vu
	sWYz3p6iERBLS/RvDd3Wz0L737kFD0Yxw8swNe8u7LYsquF9NDF0ZWoPVjAWzjc2
	QuElmeBFSd6mKkhzkRw376AVnCDdcNKVbrw8rVf5TpsWlEiwDlymPyGIuwNEtto5
	sevVeIIf+bCwSTcKsR0Ehv6ooSsUCC0gNN1thp35sKCpWQSct0aXoEjGJEQHF34i
	glhKPg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47evc60edj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 15:12:43 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d0a9d20c2eso40207185a.0
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 08:12:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751037162; x=1751641962;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RIoYRSmaGzXOqnEzOL/B5Q1z9cDXwbAoMqevw2KwgyM=;
        b=NPUbwwcukh6KB6Y/MiuTakkBmMkx2qoucr2AXTFf4WC1e1/H1hCCQHnjtyHbOMk8+Q
         cnD5yrpH5ynX/wBbFpZfPhuvrdIRd28OAxyCAc1W86g9qbwJcPr9Vb9xr2fbGOWYZQFX
         iH9qxujVWuYIortKHK/Ec84tDw0288QjT7FHgfRAMgil21tPLzOy9TG0MzlREwU+ySvj
         oUnefrl+CX6p+GgYrievKquJQPdjMK1CEGD/epaBBox7m1M190RfRFqf2O1WaXzw0G83
         t6iAFt5YvMMd0IwhppljWpNSc9zCUtzFrz3bird/ACLkLzLeMGsJSrq/F4BQIAwZinla
         RfLw==
X-Gm-Message-State: AOJu0Yy03V+P3oofk2aA6M41I8e+uD9K1qc4MSWCsaf9NrD9HGQGZ4bx
	F0FS69KjNNPCokRWNa1qH1/CR1ZfG3+TZpWPuOLuWiTcUk16iDwy8lSsApeMWy7HtdVyC/0emZx
	3JSO+1Kxn7mCiYboS5NPWlggzNZMIOFBRko5Oy2w+YW8TCIudoN7WCO0yjMiFDMpc
X-Gm-Gg: ASbGncsPwdl0/w/6QVm50B4Jr0TrY6bBtEQplcnf0qzVzuio6HFfq9EIj0XOtbWS3jw
	cvx0zrpFRiANT4dvy0SQdgVzWzG8kl+js2BBT2COndXHVhZUpUKqUSpAt12ztLR7uHey1vVDRmU
	AG8oRRWTZMPTggrD7ZleJyFOxRB363slYZ4JaKcz7j4/bTNY555xmPPpd2VsUPZQZ2/HA5CZecX
	bvTL368lc2B5iFBf1d00aaj26duEnpirKVo7EVwSTQV+g6T8N/SdEXcg8p2W1RLA0Kw5I/AIgCj
	Gb+J+OFrUv6OCWkHTb6oGYcc6rwrrY3vtIII7w9oDDME2SvANVoqg22Wc2JZs8ipXbnr33IfMQc
	fKPQ=
X-Received: by 2002:a05:620a:c4a:b0:7d4:1ecb:dc36 with SMTP id af79cd13be357-7d4439349c5mr194101385a.3.1751037162231;
        Fri, 27 Jun 2025 08:12:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEAa6Nt6lvKcUWICIuULsHahpspj6k3wDamoAEPH0/kd+3Bw6XkFerAIUGmzFJfDxdsVjE5YA==
X-Received: by 2002:a05:620a:c4a:b0:7d4:1ecb:dc36 with SMTP id af79cd13be357-7d4439349c5mr194100185a.3.1751037161591;
        Fri, 27 Jun 2025 08:12:41 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353659e06sm136750066b.44.2025.06.27.08.12.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 08:12:41 -0700 (PDT)
Message-ID: <b487b8f1-906b-401d-ae6b-fe8707b7a063@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 17:12:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] arm64: dts: qcom: qcs615: Enable TSENS support for
 QCS615 SoC
To: Gaurav Kohli <quic_gkohli@quicinc.com>, amitk@kernel.org,
        daniel.lezcano@linaro.org, rui.zhang@intel.com, lukasz.luba@arm.com,
        robh@kernel.org, krzk+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, quic_manafm@quicinc.com
References: <20250625043626.2743155-1-quic_gkohli@quicinc.com>
 <20250625043626.2743155-3-quic_gkohli@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250625043626.2743155-3-quic_gkohli@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 6vIuWoAaOn1Z5LhwW55B4_OP38wa_HX5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDEyNCBTYWx0ZWRfXz3UahGFmh3am
 j/Lgyr7ULgyBSL99GQ822Eyoug5sPzXWX5sz2vtvfiQlEzUFuiU3HQfFLkkA64ZCGFXSQY2xCtD
 6h8lZHPnbQDsD+J+sUdAUbmB1ltHtV8F2C4C5soBy0suhJQxP2YCvgLxF7O3JjTQsmAq72SsDrB
 xgDoztcVtqPG4mNqIZbb3vDJPWPFH+DvIF6avJjHeWqtfW1lQzFrwfuEz1sIlsnYE0vvCQVmzCs
 mvZHmlAqXDba8WHdEb38nQbsV9ZGVq4nmF9gyw8c/1DnFs5SUk0XSaiif/BNatzbyOQP8kwzc88
 tS9qXoeNchiOTH8prh66wUc3TUmbumTmFD1aYvsoxQwWC9ytZnWiRQFAMIt7+8Qtsx6ZdHn2c4A
 pqhmG0a3MbpysQbY4LgdK4GVpgtaKVN6I57dSEISKH9rY52msCpMd4RnAyEtgB8leaJB7jTq
X-Authority-Analysis: v=2.4 cv=caHSrmDM c=1 sm=1 tr=0 ts=685eb4eb cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=VuxlMRAdqVenG9OKrt8A:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 6vIuWoAaOn1Z5LhwW55B4_OP38wa_HX5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_04,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=808 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 mlxscore=0 spamscore=0
 malwarescore=0 phishscore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506270124

On 6/25/25 6:36 AM, Gaurav Kohli wrote:
> Add TSENS and thermal devicetree node for QCS615 SoC.
> 
> Signed-off-by: Gaurav Kohli <quic_gkohli@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 205 +++++++++++++++++++++++++++
>  1 file changed, 205 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index bb8b6c3ebd03..c20e98f8399f 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -3692,6 +3692,17 @@ usb_2_dwc3: usb@a800000 {
>  				maximum-speed = "high-speed";
>  			};
>  		};
> +
> +		tsens0: thermal-sensor@c222000 {
> +			compatible = "qcom,qcs615-tsens", "qcom,tsens-v2";
> +			reg = <0x0 0x0c263000 0x0 0x1ff>,
> +				<0x0 0x0c222000 0x0 0x8>;

These '<'s are unaligned, please make sure your editor's tab width
is set to 8, do the maximum amount of tabs before it goes overboard
and fill the rest with spaces

With that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


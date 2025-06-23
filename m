Return-Path: <devicetree+bounces-188419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 326B3AE3BCC
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 12:10:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EC33E3A9F4A
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 10:08:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB117239072;
	Mon, 23 Jun 2025 10:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WuaRtJ34"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE46238177
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750673305; cv=none; b=s35w7LINmKBGtrm3UJkC1greduaAL8s/d9FCMnEs8ubYkBs/puaj7riOPBFrnJVsH6hBGMKcrejmFpJ+RsbhmQa2hydpML6XxASHwNgYykIY+Ar9K5ZBb8vFNbK/Dhj2pEgTo/0STF11irqL1M05UcTN8y3zdU/88qTOFk0VAOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750673305; c=relaxed/simple;
	bh=eIeyqlTM7XajqirG2GsOm0mN2EPqcedROiQ84CPbzhM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pdKAHbVbSW81GEtDzjTxiNqYKXW4oA76tw4G+gYcT52OGFmMQ3fJadgRa4set/86znVYDkElqFnfZEv+tPj51eVjcaukGSfF+x49/H3jCqODbq+rMdf4xdQdwbkR51iJGZoMZgKO4RF3q6/iFT6LVD+tKEcQTwGL/ifkqEEdwkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WuaRtJ34; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N97SW5024850
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:08:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PnyKX1fEcR6bJxd/pvho3kDJwhwkeyCLZI3+nIr4TFs=; b=WuaRtJ341nFVLWVF
	qEi25tLMfnDbbQWDZvBDnjAD/oeCWQHYZ27+sifMW1HhX4yVcpwoad2i8TxBZnWE
	zVNQl2cc+/OFzYYXJ7ZwKaeKIDgE3SCepFvgaZmEZckXyVA5QT40OOKrxZFcOIMn
	G8qFoqlvQl6ogmDf+UMgw/jAhKz27i5C8X9rVEeh+VX5PVnv7CfptJqYyEGB6YPc
	ljFYs/pX1ZtduDBMMnw8Cm01L5KHiUWeFZ7Tvb7RiJV9JN/NOVWqj2pIOvz6x+vO
	08w46rxAUlNPVpq0uOIp8qD1kSZFsYP5vdsiRpp0FgOdELsx9F4XRGX1o1Lo2UlY
	R5JL6A==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47emcmhucg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:08:23 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f539358795so4157656d6.3
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 03:08:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750673302; x=1751278102;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PnyKX1fEcR6bJxd/pvho3kDJwhwkeyCLZI3+nIr4TFs=;
        b=dM7t3WfH2EIj7IXuQDgHPUzmv9iSe52eU4eHUzDuNKQ2mGmJYa0FOmc/7ZS0b6/9R5
         10XJfjlNVHEsxUq5KGUy9uac70vNey4wCPYslVufRmgoRN0YWNnsgXN5uRgoVzzLyZu3
         zabsIAm/Suk7kmZiK5vuDD96vssmzkzpw/DiFWjzTLOclCAacKYOZVCND2x7GUL17vNO
         HHe+AGXv05mSqXphdnbHuEFMZuzZGgB3agjHHhdU85i6V5jDYS/JeGdRWg0TxmDAPfBW
         DVDY1ofaXVuQ2IHer9HHAG6Zh4JDTWOCf114DkC9ujxcaDH1SxXwLp3uKC4Jqwxdycy9
         zaFA==
X-Forwarded-Encrypted: i=1; AJvYcCV4o7W+yHGPtA+hy4MOT2ZX8hXCeQ8Si5Y0eqoKZengLvPYydAqX84opbUmKLYD+yEb8gT1Se1zkngm@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6AjfvOS9dvR34y4hxEgcSU3sRaxHr7RGIQkw3OibOXL/SVtBm
	ZElxOfjMBJxYEqxIX3rUTxRQMkvBAiCPtz1B+isVW/jR6vnZnD0Yo/VHldJCemTT53cFVCV334m
	2egkV5bYe6Mj10eOko2GtqxyfA+7HzTJqVr4L5c9TKQttXf2gVX9J7kXdoewd9afHEsQpI6rm
X-Gm-Gg: ASbGncs8I87UP+o09i0bMjcsr898FowRZoRp8Tt1gs0RwuzsmK48N5LxA7RDvRCEGLO
	uEtSGhODg5y93Kzmh2gG4/AEOw1QxmUpN4OUzrSny7rDmSBZ6YY0RLZrUgrNoSMT3aAjV6cHRB+
	7Ph0Zw6V1g5uy4gqLBHg4iDk7/dbRKDCM42dyrz+nWnn557WyIv87CGhFPxARpeQsxSeClFTp/E
	Q6f6rAsJWOOKeaw4EVOLtZ3BKMYx8rMnHmF7xeWqkqq0JowKO0ihX5kpcQGmGigMsW/dmaG+9ay
	2fBxH6vZXpEdNZoev/nW5XWpIu/jiPjdJ5sJLKhm2r0nb8F4YiiPFCJaO584GLS4Bw3W0TvN1Ks
	b+UU=
X-Received: by 2002:a05:6214:2c13:b0:6fa:ba15:e86 with SMTP id 6a1803df08f44-6fd0a2fd7a7mr77471196d6.0.1750673301757;
        Mon, 23 Jun 2025 03:08:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGS/1yCegb7N0aHHgiVh72Q6EJAth0MgnKHXXG+J9DtMg+J5O92x5oynT6QeF3XgvXxs2uA6A==
X-Received: by 2002:a05:6214:2c13:b0:6fa:ba15:e86 with SMTP id 6a1803df08f44-6fd0a2fd7a7mr77470986d6.0.1750673301349;
        Mon, 23 Jun 2025 03:08:21 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054080a61sm693438466b.106.2025.06.23.03.08.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 03:08:06 -0700 (PDT)
Message-ID: <b5d181d8-26bc-4855-a8df-ab352837e800@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 12:08:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sc8180x: Add video clock controller
 node
To: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250623-sc8180x-videocc-dt-v1-1-9d210c140600@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250623-sc8180x-videocc-dt-v1-1-9d210c140600@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: L38G5ldlTHQeFyuzwDbnBBts6PZKvspd
X-Proofpoint-ORIG-GUID: L38G5ldlTHQeFyuzwDbnBBts6PZKvspd
X-Authority-Analysis: v=2.4 cv=J+eq7BnS c=1 sm=1 tr=0 ts=68592797 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=970yK1cPiZu4FA_SsT4A:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA2MCBTYWx0ZWRfX5FL3uQLBlm4s
 0ZLJF5n2zxVKo79Xrlj41VZE787YYkczW6UpNSIcgwfNZtDKa4ksGBMZh13VMlplC7k8l+7Zwzy
 RDduruPH9P8lH/G6YhUPkd1ajGTMrLUwQTLs5rpm3EtHATkOVy2E8zNTc1C6xWxaVGGMaZF6yQU
 DGbLvGJXimSt23j/5PWGWCjtKm7YlWf/4fvY+MxjYMgXPZ+0BZEU3tLk8sQdUSYFXrbYpJVKMGL
 IIHM4d2IbrAKvRVqx980QrBqJhgwvK7+625KXl0QoBXruPnSmEakBZUussPu0PyJQxtOsU8VSDQ
 PDpVo/5XRl4gUfWBfDzaSNYS799wbZ4y9rRItUNxRQSQ5MWTM9IP/MDBIt3sT5RaHdpGQ/N1QD2
 Xrne+auN9rmpvb4sc6WAWkxUiWmVAmzsSUHp/rL8tASA4e2Dro6YN+q8KKz8jl+KD8g9dv/x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_03,2025-06-23_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxlogscore=999 adultscore=0 impostorscore=0 clxscore=1015
 spamscore=0 malwarescore=0 phishscore=0 priorityscore=1501 suspectscore=0
 mlxscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506230060

On 6/23/25 10:14 AM, Satya Priya Kakitapalli wrote:
> Add device node for video clock controller on Qualcomm
> SC8180X platform.
> 
> Signed-off-by: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
> ---
> Add device node for video clock controller on Qualcomm
> SC8180X platform.

Because you added this text under '---', it will not be included in
the commit log (and we want it to be there), please put the message
above your sign-off

> ---
>  arch/arm64/boot/dts/qcom/sc8180x.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
> index b74ce3175d209b569e634073662307964158b340..4590c2ff68a9885d8047d728bbf2dea0236d5b8f 100644
> --- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
> @@ -10,6 +10,7 @@
>  #include <dt-bindings/clock/qcom,gpucc-sm8150.h>
>  #include <dt-bindings/clock/qcom,rpmh.h>
>  #include <dt-bindings/clock/qcom,sc8180x-camcc.h>
> +#include <dt-bindings/clock/qcom,videocc-sm8150.h>
>  #include <dt-bindings/interconnect/qcom,icc.h>
>  #include <dt-bindings/interconnect/qcom,osm-l3.h>
>  #include <dt-bindings/interconnect/qcom,sc8180x.h>
> @@ -2943,6 +2944,19 @@ usb_sec_dwc3_ss: endpoint {
>  			};
>  		};
>  
> +		videocc: clock-controller@ab00000 {
> +			compatible = "qcom,sm8150-videocc";

If the blocks are truly 1:1 shared, with no additional software changes
required, please still include a 8180-specific compatible in the front,
with a 8150 fallback:

"qcom,sc8180x-videocc", "qcom,sm8150-videocc"

which will require a dt-bindings update

Konrad


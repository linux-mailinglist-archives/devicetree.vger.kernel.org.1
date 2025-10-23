Return-Path: <devicetree+bounces-230205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE08CC009AB
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:01:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E2373AE9AB
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 11:01:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40DF83019C4;
	Thu, 23 Oct 2025 11:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aydXRKD6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2D641C84CB
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761217280; cv=none; b=a2QxMxuFQ/cQojKeg2T52ZTfKxLJ7svoHOv3ogzw3TSS/NEhkr0XM9dX0lnE7XMfdpXHqWvPTY4j+r5zIDAibJDnIrbTR1BmTX2HaxUYe7o2JF67ZDW6ZQpgFDzot4dYyZrAbuU21qCQ3Z0Ghij6so5WAAy8DZDHY63hmg9RdZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761217280; c=relaxed/simple;
	bh=KLbKfhQdEVpsqoRQiUj+noXGDqfEwZDNBazhIEzNO4I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rI/CoS9aeqNyGn1MThdbSAH1RJJIaBC31nSHB1ImJWgckErnritEytNFZ1tS/xzBsa+Zp7i02CyX1Nc5riDcIkyvbZnaHv7kSZcAltGpKQuIGzCdm10i+pIxknlr3P41ajoMSEKCQEznRPhlOR1nFWjtyqJP08oLfpKZ3dAuS8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aydXRKD6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N7hcwV026326
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:01:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SWvodgoQHlCAgUxLTGA2zNee27B1mcvQ6fjtgBWIkUc=; b=aydXRKD6CXTPjNb3
	7s39KU9XMjsR6l2oasW0vp92hs6LaLZYFvI93oWlMeVAaTE8wbm5eClsIzHC1IAV
	iK+rOnFqIwPz/7ckt/JLNVFGMLPf9ngHMlokZc0N5OzeVIm0cFe6diztG3VP0Plk
	vu63xt/WTX85GcKgxPv6in3PofN9U2ijEfTWho1U7wJcC7lKmhMWY3tHCVgLlaWg
	bVVqXYobTQpNQEA/plPfV9XZyr7wmTBVros+5dptcrRukToHW4wzLIzuCcDDXRsA
	onPmD1aCpx+l9KQwfHSdl0JkLC9wPjxrxFwu19KzaqgtMQHL3ObcfGrpilEQacPY
	1SJMbg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49y5x8j7e4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:01:17 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-33fa6b67eeeso210144a91.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:01:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761217276; x=1761822076;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SWvodgoQHlCAgUxLTGA2zNee27B1mcvQ6fjtgBWIkUc=;
        b=Lk+58A4LZaADP4bnb4K9dijIvKWYHaVBuU43EaFCx98Z7HnnuQ/z1/nBFgg6011pGH
         9RcY19g4Ucf/HYKqYKvsllMezfN0gBR+bvYYZXYcLktJaIc3zvmX4/XUm7C/EQAdSMLV
         pqcDiWHl0lDn/19QCRTed6ogArmnmneKqjHALcVCq3QuBBzMJbqd4ZnZ7t9ror5pfNzy
         NNP1CMvMbrAhphPVBCfNHt2T9uUVHj9eguEM2oNJX21WJTtlcupVxnbyl+6fC/wTr9cM
         InFRxhbHJpiUeFCRAGKLTI7hw/9ceBXhOlq4GNIbYawfMVTBfNzqIubjOk0/dE5cw1SK
         ajGA==
X-Forwarded-Encrypted: i=1; AJvYcCWW8+4n+h0Y7I/Huqtg8+3gmFqs7ytaBIRVcDJErQmJUfHDGHgT18RMqq5OjfVMGh70Cprktqo3vAYD@vger.kernel.org
X-Gm-Message-State: AOJu0Ywq4Ui1mf26vRJ5hjQod0TmF+LdnECHos/ftrYVuI0bAuZIrYst
	LnvUIoeCW4mEr8Y9IPZx/cQfqg9SxoWiviMYgvHibZRjN0zQblLHXbOW0iOl+vrVS2cADQseChA
	yTbEfzJZcJ0oS9rufLplLjxsSG9aFTBD780Ctjy+OpArtgIQ7PEhibjzQT3BNQ+U=
X-Gm-Gg: ASbGnctNMJ3Nym8BlZgLHkCaHPvjpEK19/Drh6AJZo6EoI8ntiaHXE4XXO2VvbILKLY
	kDE+Pl6HK0FUiZPIeMLQlFn28tbM21KxwzROVYYcVSe/Fml3nHlZkYWC8vsLWNHVubeVc3TbuJs
	ZvmQPrytbSlD/Zso+68i3FG1tC0ocbUKEOnCKQDxnQ2SFEEv9XqpGlxUseaGm2g6nmrAC3nATUb
	sAcvFiOxKmI4rONLXOKJcssXEz6wDzjx+WzD5+ZUjCmohgWOiRZBtPobd7qGmd70flX850Po0MS
	AqLf2yhtvhjB97VrYl0b2e9QsXv57gBK/2cNDgLtqYTXRnoHRqsWUL8gtUSw/+qFNCl+G4lkqq2
	xItwjodj+aGCDj9l4wgWD9AkvAElU
X-Received: by 2002:a17:90a:1101:b0:33e:287c:cb2d with SMTP id 98e67ed59e1d1-33e287cce1dmr2745964a91.2.1761217275923;
        Thu, 23 Oct 2025 04:01:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7sjBjqEtUr+LFigXCOi6Pc0gZjDtpKqghp/7YaBoW9/xfSqioLyHdakc+MWVYZtwoh4Wh1Q==
X-Received: by 2002:a17:90a:1101:b0:33e:287c:cb2d with SMTP id 98e67ed59e1d1-33e287cce1dmr2745921a91.2.1761217275163;
        Thu, 23 Oct 2025 04:01:15 -0700 (PDT)
Received: from [10.217.216.168] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33faff373f5sm2070267a91.4.2025.10.23.04.01.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 04:01:14 -0700 (PDT)
Message-ID: <e9c24261-d54f-4d43-9101-a8c7bbae0399@oss.qualcomm.com>
Date: Thu, 23 Oct 2025 16:31:08 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 3/3] arm64: dts: qcom: sm8750: Add SDC2 nodes for
 sm8750 mtp and qrd board
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        quic_nguyenb@quicinc.com, quic_rampraka@quicinc.com,
        quic_pragalla@quicinc.com, quic_sayalil@quicinc.com,
        quic_nitirawa@quicinc.com, quic_bhaskarv@quicinc.com,
        kernel@oss.qualcomm.com
References: <20251007054445.4096630-1-sarthak.garg@oss.qualcomm.com>
 <20251007054445.4096630-4-sarthak.garg@oss.qualcomm.com>
 <f8671543-bba7-4ed5-ad69-297df9bcc43c@oss.qualcomm.com>
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
In-Reply-To: <f8671543-bba7-4ed5-ad69-297df9bcc43c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: NbwvQ62ClcAsRDyMeR2CrQk5393bdqwQ
X-Proofpoint-GUID: NbwvQ62ClcAsRDyMeR2CrQk5393bdqwQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIyMDE2NCBTYWx0ZWRfX2PogIqqsGLg8
 e3Q4GR0B+XgWYGhq/+6/daFPgz8h1qNaikMIBGDipLwqbOFc3Szt85tJiixP/ObeRDJUMdj/mXK
 iq/XMTztO82rpeQakitbYKSkkR5/cfn+oKzO3nBQ6WAB/A54hd/pHxsMcT66/Px80m7/YPEQltI
 wJYiiYLyoPsOwMGTinChn8Mufpzu/N29oCKW3JXVgK/dTrJ0/CgGwMVamEgYgakFZcmRInTwt/9
 4Rho0WxvcmAl8RrUIIhC+i3tu0bAYm9VcC2W0jqownHm6KX1cmlexDpvMURUdTlGPtDobEnIXvp
 gq1IBg+NVPA9o1oLDIHzHz6v52pFRbuuRPfzhec9SiM6b13/Zu28PK+3/fXi6ODtnBt+QqUwhFT
 4jNu36g11Rwgk5mSzSDim63byH54Gw==
X-Authority-Analysis: v=2.4 cv=UOTQ3Sfy c=1 sm=1 tr=0 ts=68fa0afd cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=9AcWnSgGjwGhTpeVYLEA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 clxscore=1015 phishscore=0
 bulkscore=0 malwarescore=0 impostorscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510220164


On 10/8/2025 5:49 PM, Konrad Dybcio wrote:
> On 10/7/25 7:44 AM, Sarthak Garg wrote:
>> Enable SD Card host controller for sm8750 mtp and qrd board.
>>
>> Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 15 +++++++++++++++
>>   arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 16 ++++++++++++++++
> Normally this should be one commit per board, with e.g. "sm8750-mtp:"
> in the title
>

Sure will split in separate commits per board.


>>   2 files changed, 31 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
>> index 3bbb53b7c71f..26548191d95d 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
>> +++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
>> @@ -1030,6 +1030,21 @@ &remoteproc_mpss {
>>   	status = "fail";
>>   };
>>   
>> +&sdhc_2 {
>> +	cd-gpios = <&tlmm 55 GPIO_ACTIVE_LOW>;
>> +	vmmc-supply = <&vreg_l9b_2p9>;
>> +	vqmmc-supply = <&vreg_l8b_1p8>;
> Any reason you didn't place a \n here..


Missed it will place in next series.

Regards,

Sarthak


>> +
>> +	no-sdio;
>> +	no-mmc;
>> +
>> +	pinctrl-0 = <&sdc2_default>;
>> +	pinctrl-1 = <&sdc2_sleep>;
>> +	pinctrl-names = "default", "sleep";
>> +
>> +	status = "okay";
>> +};
>> +
>>   &swr0 {
>>   	status = "okay";
>>   
>> diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
>> index 13c7b9664c89..8d018eef44da 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
>> +++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
>> @@ -916,6 +916,22 @@ &remoteproc_mpss {
>>   	status = "okay";
>>   };
>>   
>> +&sdhc_2 {
>> +	cd-gpios = <&tlmm 55 GPIO_ACTIVE_LOW>;
>> +
>> +	vmmc-supply = <&vreg_l9b_2p9>;
>> +	vqmmc-supply = <&vreg_l8b_1p8>;
> ..but added one here?
>
> FWIW I like the 2nd one more
>
> Konrad


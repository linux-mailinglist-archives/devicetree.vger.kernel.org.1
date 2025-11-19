Return-Path: <devicetree+bounces-240022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C164CC6C52C
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 03:04:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DDB3D34304B
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 02:02:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20D952512FF;
	Wed, 19 Nov 2025 02:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O1gz3Q5Q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PB21YEKn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B788251795
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 02:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763517730; cv=none; b=jzComISCruhPy6HRBnj7bQbwc64iQPDOuPPYc2prWYebdYQ6NqIaxMqp91/akXoxvVeWdWxN3SOHz/U0ZY2OhZMIq3ZQj4AjCZwm1F6kndHXbdKKWu/ZPmSiEs/DoQOPA4vQccdux9IE8/99MOSNceU4FsRFNCMLPiX5xRvpb5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763517730; c=relaxed/simple;
	bh=7f1viE8CvaMFMTbnc7qz7jbsU6+J5kEGQW8yqx66MYI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YTCn3dfWSSnrhmnekxWRUguwoR5PwWtrABvm4/sKy1VA66TkNcUFNRRcULlF1bq5oTgg3bplUaGIVXTwfRFc57tfNUkkew6Y2zg0Zr+/9M1k7f1xmD8CHs1c1tk/p+dqpaDSi4lyysRGiXC0WUhtn4o0K2mLkc3wjGmgrbWDkoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O1gz3Q5Q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PB21YEKn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AIGrPgH3165002
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 02:02:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3tFcRwzKeLu6babJyYsmyc9yoMZ8zBiFDTWsefwBPmo=; b=O1gz3Q5Qq+VPW7ku
	4M8iTrs0Hl4ihcGbm02e8R434gLwD/wh6r+jJXPhgl7N4i3eFf6DIVFg0tPlgtI6
	6MOEqNucr7slZPuXF+otDq0dVlsu0HWTX/x7x6G8GqgOpw0HPbnMlqJWb7WZT4UA
	KUmh8MQ8SsCGzeRRRty0y5embKSwdQa7tJdr2SmPtIiDbvziiwpNhSdlh6DR/S7v
	DIojARslBvfVws2nRHOhfsFx4QWSFC1S4uKvi4/reImNjJzDm9SePo1VztZurUZK
	6+KS0+vpSf86aLRkva4oXQwPXXKKadNLnB6r0Q3zE18lPI7GSZfXyApvtTYSXI8A
	tiMlEQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agvqgsd3p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 02:02:05 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2958c80fcabso169280505ad.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 18:02:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763517725; x=1764122525; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3tFcRwzKeLu6babJyYsmyc9yoMZ8zBiFDTWsefwBPmo=;
        b=PB21YEKnEZlOsjBjM5j4LeNIp7u/HGbWdN6bUu72SvL8rsdVkZqbgDrSq/V4kwZ+Js
         qLtr2BdroD4V+uDOEJenhuZoBUq5w2lWrffo3Bzx6e4Knq+EydivZuvMCKbmatDtmn9+
         qWCFH0vfbFCHnYpJtBMejOnjGaOgn5PhLx5GsvF7/8h7nnNA3Y6u0BY1WO+U+mxK+BCJ
         mtJZi1MhAZgXkD0dIZ+cBnGy/FUlUaBt7TkEXSYAZku6xByr/67ufp58wbEXJKChJbwm
         xZy704LrpBFBLONkm+H+fEM7HsDKGbLlVBPvUDDyqiAxDbQ2+BCrgDwjLLQYPn3IB60P
         3WWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763517725; x=1764122525;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3tFcRwzKeLu6babJyYsmyc9yoMZ8zBiFDTWsefwBPmo=;
        b=KCUcs8kzMALI6GzmZkWHmjarrZymhqwz5S/rENk64ySL7Fadc0hnXxMYqfWHWI3cgi
         ayZDQKcJBMxd2uXHz8E3CnBaT1x734nZ+VWR+ZEjRu7i8wxm4oTfUq+FIyz8/A6ZZ87P
         VNgrQAfH79t6PqdC/2qBf3ZBm7qKXBMz7H/OLz5zXTRT/1uxnbfPimQreOXHRdqk1Y3l
         rS430w3eB+/J3inw0B0Q440Mg8MTeHPTzvfbdPUojD3xNCG16Hs3UcoEHViSBY42FzP3
         x5nQ+BrwlNwcHpnwO7Diyl+wfVi7t1bJwi5KsQg16XXj9/qpBv3MTSA1W1ezzEOEl0FK
         53vw==
X-Forwarded-Encrypted: i=1; AJvYcCUYAotpBfHxEkIoePoCCnE/nwW2bn5yGY1V3aSqvTnHeu1OEruMEyt/MmD1nHZuKeykUPrKvUP1rbhI@vger.kernel.org
X-Gm-Message-State: AOJu0YzLeDjp70BKuAOpy6lS3xywwYv73Lgfb4gVzEFfOihiuC6OYFMx
	NweY9OKlyVfDzi7npSXCRkltDhQtCLBxqiSVkuxp619//2VK3cF3/cZM/LOpA+kWnk89tr9Mz56
	p+hrWgaBx/eOgS/9eun4jcuPPaNDQ7/fCcyiuJ8X8vmjFxA/jeE5hqvoAHTvRXm6H
X-Gm-Gg: ASbGnctSggEuSbVq94jtcYm7USYKM51TKv6TCZHDu354YfFaasv5ooOIa4guTiaWGK2
	fzQWaV6r/aVlQh+sXonG7AdMCbw4SlXru2Sc3ojgzaYdQgAA/uGoIa49O7CIdhTVVQ7QDCwod8y
	2QwQK75if3h7KcLd07azc6t23TmIINyCF6vjPRYTFanF7KCJ+e6ZKmlOsFGRZPZN94DRKp4K2OU
	dazIr29VzwuZptRLSjqmmQZZjC9OLpc0xQJkgmu1a1eL3FTo01+bfH9lcMfYq2NS7mJayid+pT6
	nQrwvq77pixijCzwMY3ls3Wmro3nyXOiFhAfFzQoqJHsmivZaXQAJzikzSejnjGNB3lyMXot17v
	b4kU6uVcNvN/tJjR5Wt5JTTn8wDUE40pRnWk0nxUVuv2J5FBKDiM0e1jRnn6ivGJoDk4q/vDsVw
	==
X-Received: by 2002:a17:902:f606:b0:298:42ba:c437 with SMTP id d9443c01a7336-2986a7676c4mr198153605ad.50.1763517724646;
        Tue, 18 Nov 2025 18:02:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHEntQRzZoDhMGwqrRc3rzZEInzusADzC6i81QtlFU1yRAn92V7cknmUJBwNjCNy9ERiFaEWA==
X-Received: by 2002:a17:902:f606:b0:298:42ba:c437 with SMTP id d9443c01a7336-2986a7676c4mr198153155ad.50.1763517724108;
        Tue, 18 Nov 2025 18:02:04 -0800 (PST)
Received: from [10.133.33.82] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c253b30sm185775125ad.46.2025.11.18.18.02.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 18:02:03 -0800 (PST)
Message-ID: <cfd9867a-5fa5-43f1-a1a7-81f05bacc47f@oss.qualcomm.com>
Date: Wed, 19 Nov 2025 10:01:57 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: qcom: dts: sm8750: add coresight nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251117-add-coresight-nodes-for-pakala-v1-1-d26bfaa44fe7@oss.qualcomm.com>
 <350ddcc0-cbab-4b58-8b50-5004f27688db@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <350ddcc0-cbab-4b58-8b50-5004f27688db@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: FU-pjvjePRJXJ_Cc0UrEEyZIkQNx7PY2
X-Proofpoint-GUID: FU-pjvjePRJXJ_Cc0UrEEyZIkQNx7PY2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE5MDAxNCBTYWx0ZWRfX0PF7zLw3j3cS
 ykM1r9tKHS7Tj2dsEee0IDZxl/T3pl5bhNuJORm12djHkgMgFNq/1PkUUsAfc/ak4LYNgAet3Gg
 S7F4wiCUEqzRlFnFIhe43mFUsFHZCmW5l390sPYtvOh2WCUrllBFdzeRNqNQTJUC9D7OJZBOU4E
 CrsS5jR8S67tgu2SUArLD4+smfVApePJhnOMGNH0YqYymJkSHmLO5ftooj/95W3P4ox2l8W1iUb
 xcHS2AfpEq9PEtFhfs9P64on5gzpTGgvABGEB4Ilt+KlJKADfGYnTz7dLbzESQ4j+KoxfHgSuhH
 FaBilOTgC05AwX3GAPZANm0LF2NYQRlYXSmuGbXJFr4nAlNvAPA2eE8pK3zcjq5FIwQQVGxpe+Z
 jxuQwF74xyTOWILWMM6OwFQPhcNPQg==
X-Authority-Analysis: v=2.4 cv=LMJrgZW9 c=1 sm=1 tr=0 ts=691d251d cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Cy051OMfBe0flYlIuU8A:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-19_01,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 suspectscore=0
 bulkscore=0 adultscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511190014



On 11/18/2025 6:03 PM, Konrad Dybcio wrote:
> On 11/17/25 10:31 AM, Jie Gan wrote:
>> Add CoreSight DT nodes for AOSS, QDSS, Turing, and Modem blocks to enable
>> the STM and TPDM sources to route trace data to the ETF for debugging.
>>
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8750.dtsi | 981 +++++++++++++++++++++++++++++++++++
>>   1 file changed, 981 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> index 3f0b57f428bb..56c2605f3e0d 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> @@ -3313,6 +3313,948 @@ tcsrcc: clock-controller@f204008 {
>>   			#reset-cells = <1>;
>>   		};
>>   
>> +		stm@10002000 {
>> +			compatible = "arm,coresight-stm", "arm,primecell";
>> +			reg = <0x0 0x10002000 0x0 0x1000>,
>> +			      <0x0 0x37280000 0x0 0x180000>;
> 
> This region is a little bigger but it's not described clearly. Is there
> a reason to use this slice of it and not the whole thing?

This region is about the STM channels which are allocated for APSS/HLOS. 
The channel 10240-20479 is allocated for APSS/HLOS, each occupied 256. 
So the start address is 10240 * 256 = 2,621,440 (0x28000). The length is 
0x180000 because we only use part of these channels so far.

> 
> [...]
> 
>> +					funnel_in0_in0: endpoint {
>> +						remote-endpoint =
>> +						<&tn_ag_out>;
> 
> Please unwrap this line

Will fix it.

> 
> [...]
> 
> 
>> +		tn@109ab000 {
>> +			compatible = "qcom,coresight-tnoc", "arm,primecell";
> 
> "tnoc@"?

In dt-binding, we suggested tn, it also could be tnoc here.

> 
> [...]
> 
> 
>> +	tpdm_llm {
> 
> Node names still can't include underscores ;)

Sure, missed this part, will fix.

> 
> Please also rename 'llm' and 'turing' to 'cdsp' unless there's a good
> reason not to
> 

Will fix.

> I confirmed the coresight components addresses match their claimed function

Thanks for checking, it's a huge effort.

Thanks,
Jie

> 
> Konrad



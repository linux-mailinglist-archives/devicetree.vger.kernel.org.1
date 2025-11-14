Return-Path: <devicetree+bounces-238567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 12133C5C7B5
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:12:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4E6AE4ECFFB
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 09:40:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88E543081A7;
	Fri, 14 Nov 2025 09:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MHF0GLbd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MV5QiRR0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C708C2D7813
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 09:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763113237; cv=none; b=UBt6BaP3F4m2JjPXKlIn3kYELrM+olbtsnyNtXIx1HlwDhI6UJDdTyixvtvO8I8oZfC18xFq4YY3lkxyltREJgufPHHMb9U0AOJ9h2j6g8tIEK6BtNz5R03+bN8VIM/33PqviQGwAYREX8oec5hN2+XleAIQ8vE8GXiY7z6tIzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763113237; c=relaxed/simple;
	bh=Mi4T3XcEa6EdPKaThvYvHMEV/+vQktgW96gwsyb88WU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DuYAkIRAKQJ4mnqza7OQPNQ4zWt3iyA6VbNOBRuwo1Q5UJMkgME+yz0oD4ZQv7zVSY+5EGLQYAIN+TfmyRG8Oy8qJ7yfhUnj5GW1vITcEpNxWZpB7eZ4GV0KVEVcb5M1PGXnAqJScJ+XBwmVZl8fQqE6G0EpDo8TJlISJG2ynUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MHF0GLbd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MV5QiRR0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE8ahqq1537328
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 09:40:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zUSPLxfkM9j/VAXTWZbk6xRZYQjSdc0/dXsIyAGTxQ8=; b=MHF0GLbdq3qDDIW2
	mVJTtHFLfM9UjVPxIYdtDyqfUvBQ67HMVilgvafcZL7/3AEmvgHD5azSNLlVTDD3
	wP31x0668cmKITC2v/K7lPgEAomKLyr0OSwqWWwtZK0SkVs8e3wrc6ezpv8avKqU
	Vm0P8GXU+XkaPEnYkaBYFGTiNoD71aZJFyt/kylj5pG6lzhy9iYrMMqxn+AcfNQU
	wZPOyh2nGHNjrdeVh4WfWZY/nxqSJo87KGCnzreAj4fI8xlIq1Me5A3R13ZfRJcR
	P1tjem3R/TyqFxIrRszRu+BZQWdM/vzmWL/RUfLE49a9VWh5nB6CBBPd21SwHQYl
	XWNIXw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9hsncb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 09:40:34 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b29f90f9fdso66891385a.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 01:40:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763113234; x=1763718034; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zUSPLxfkM9j/VAXTWZbk6xRZYQjSdc0/dXsIyAGTxQ8=;
        b=MV5QiRR07olkorLkU8HBrq7YqCtiBxxz951JTSKGFiMXZF9rNIJ8wASuZpmQqgTNTu
         qAz4PV6n/rzv3JX7/c6uijdTI1gNAT+vvZItLULUpJQUPE6/xRGaU/zET+vmH3RsTuJq
         iNeH7uW9yCIe0EvOMKse1AIWMTKCHYf9ZcVwWE8i9eWmWPTTrTCiC4eT9EPipmcYqJTZ
         pcB6TiSJcdTaaRhzRo+cqvCB+9LLCNsLE6WyxFWwxxFf2K+6wci9Zq8NNwrKNPgODHyv
         OEfhw+FPG1gFK9b2c8xqC/R7VGlPwT010agG6BCbBKT1WhAb6CBw1XUvnOC16Scj/APP
         MiQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763113234; x=1763718034;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zUSPLxfkM9j/VAXTWZbk6xRZYQjSdc0/dXsIyAGTxQ8=;
        b=rxTT3/AFtvnXaZAiSUhGI7Edi61/kgSGb4VIOJJ+cUn3v8iE8+G8Om6m09ndazRIMU
         DBDVVU03bV7Iy69zVt5uMaujf/dSyEDvblpCP0f72+/kTlLbZVE2BmWOBMd818Rjb6uy
         Kx9PCwtHcGO/Vz1FC+WdqCYjpIZPYTCNQ6RZFZiwe0E/5apWkxOM04xYW7x5zN25Z4B4
         pQbatyzIpuzdoHSL+NJCw5pi/Z9NK8uKRrDgzywstKKPQhWv99vvvu5bLDqje8CmHgxD
         Q/h/99AnJaLPFNIF3wM/ayo+W3aQL3HFzU4CAmDIvT33rPk1vUZUvPHafFxLLTnr7bAr
         OmKA==
X-Forwarded-Encrypted: i=1; AJvYcCVTLEmstrc+dqyQMft98EdScSaeSUpktCjLZPNZ+ysOraSGDTa2KzFUib1jt+hJb91PaFRgpGUrSqhp@vger.kernel.org
X-Gm-Message-State: AOJu0YwzjBMI28AzdeEuxhrPrZ6Rj54R67/o+X3Tyazlw0sOS8V0ReQT
	CrWIUNrQekT4PMVzERfIeQh8kC13wpfEFg+o8040XveiJVXcereoC7IOoq7b49++7PRbZKBTje3
	9nH0LHUnpT6Kf6LAJPF8rxVPvNzT+Od6p4rF6e1MS4zfyWHQcD3ALHVv6BVnU2hPZ
X-Gm-Gg: ASbGncvcNzck0mFaV978W0Kc/bWEYx3bKNbUqqnIUgTQAx45RT6eJRdCeKCYyQY5Gjf
	BLakjM0Ezu6fnAv4NP+STUOyAhwgmWv5PujLKCds6Y0EUfldInZzIS2rDsKM5Jf7QCY6j/Yo4Zs
	Vsou+gD40iHPPRpiG0qwqrKd6bVRPvFmRQ/Jv1ILGZ6hUOqRpxq7PFJZbTksCi5WP/dydOPTRCZ
	l3oc8Tmw+5aWsIUPoF3YCAxNxwFvZGvfOFjyiC6RGrJ5cWvCOA1Lc6pywy3PN/IbgAuXBVFFuN0
	lt4uMQs+NjlLGNj2pYoAloLbQbyinv9SA8vkFHEM84BBlahihPjjlQ5dEql4G2mndgHNLC4PT17
	I5PCoGbY4AZVmzJayP78=
X-Received: by 2002:a05:620a:4495:b0:88f:74c3:6649 with SMTP id af79cd13be357-8b2c3130e10mr214554985a.1.1763113233812;
        Fri, 14 Nov 2025 01:40:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG+KWUEsr9qbYFM764MbE5Y013bVRnhaH9X7xyioJ0T6Mpn7AHc01ToI9In2YF15IlxdKoeUA==
X-Received: by 2002:a05:620a:4495:b0:88f:74c3:6649 with SMTP id af79cd13be357-8b2c3130e10mr214553285a.1.1763113233326;
        Fri, 14 Nov 2025 01:40:33 -0800 (PST)
Received: from [10.233.17.95] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8b2af044e3asm297385685a.41.2025.11.14.01.40.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Nov 2025 01:40:33 -0800 (PST)
Message-ID: <d86c455a-e9dd-4424-9c79-aa8eb429118d@oss.qualcomm.com>
Date: Fri, 14 Nov 2025 17:40:26 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs8300-ride: Enable Bluetooth support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, cheng.jiang@oss.qualcomm.com,
        quic_jiaymao@quicinc.com, quic_chezhou@quicinc.com,
        quic_shuaz@quicinc.com
References: <20251113130942.2661069-1-wei.deng@oss.qualcomm.com>
 <nh6rlcyamnm2spm54oitckujnxp7wna26vomxvlrik3mlhh3no@22skfvcsrfhj>
Content-Language: en-US
From: Wei Deng <wei.deng@oss.qualcomm.com>
In-Reply-To: <nh6rlcyamnm2spm54oitckujnxp7wna26vomxvlrik3mlhh3no@22skfvcsrfhj>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: p2WgnBIlrUjymaPyl4-2ahTDxDyUMDAE
X-Proofpoint-ORIG-GUID: p2WgnBIlrUjymaPyl4-2ahTDxDyUMDAE
X-Authority-Analysis: v=2.4 cv=N+Qk1m9B c=1 sm=1 tr=0 ts=6916f912 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=YCW-zRLxNBBzO5pBKAoA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDA3NSBTYWx0ZWRfX2z5X63jifSdU
 Gou27skase3zwLSALQf5AjdogE91ikIpjAjVhNHMyZW/zQMIm8RrNWXD1aniABkrB4CHKAXCh1N
 OzwRjIZb5r95puo/ouOx90owWgjBk/hOEca21CksAa+3+qMNBNWYyRPtEm8Xe4OfpQnvsiLL80d
 xuGD8NS9vYBzlxPGB2JePqKNWszIWRT/GCXqo26RMF9Tq70pQJUkCBpbrz99yq8mncAnaWHyAqb
 HI4Y3OaVrQytYoPgmSfixtBPBl9/SFTI906B/xZQPfl1dV6exipM00nV9ixlYp+x+++fUqZjqAq
 Mc5jkWcN2AshpGrA0QDqdbd8wAPE8FE5JvC/lyyihpfpyphNrlnHAH7fQRinCU8cJUyuI75lto5
 41ytwGPiHo3hWt69ukphU22EtVc1oA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_02,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 bulkscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140075

Hi Dmitry,
Thanks for your comments.

On 11/14/2025 4:14 AM, Dmitry Baryshkov wrote:
> On Thu, Nov 13, 2025 at 06:39:42PM +0530, Wei Deng wrote:
>> Enable BT on qcs8300-ride by adding a device tree node for BT.
>>
>> Signed-off-by: Wei Deng <wei.deng@oss.qualcomm.com>
>> ---
>> This patch depends on:
>> - WLAN
>> https://lore.kernel.org/all/20251113055148.2729943-1-wei.zhang@oss.qualcomm.com/
>> ---
>>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 28 +++++++++++++++++++++++
>>  1 file changed, 28 insertions(+)
>>
>> @@ -571,6 +580,25 @@ wlan_en_state: wlan-en-state {
>>  	};
>>  };
>>  
>> +&uart2 {
>> +	status = "okay";
>> +
>> +	bluetooth: bluetooth {
>> +		compatible = "qcom,wcn6855-bt";
>> +		firmware-name = "QCA6698/hpnv21", "QCA6698/hpbtfw21.tlv";
> 
> The reason for these firmware-names should be added to the commit
> message.
> 

Since the platform uses the QCA6698 Bluetooth chip. While the QCA6698 
shares the same IP core as the WCN6855, it has different RF components
and RAM sizes, requiring new firmware files. Use the firmware-name property
to specify the NVM and rampatch firmware to load.
Will add this to commit message.

>> +		max-speed = <3200000>;
>> +
>> +		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
>> +		vddaon-supply = <&vreg_pmu_aon_0p59>;
>> +		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
>> +		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
>> +		vddbtcmx-supply = <&vreg_pmu_btcmx_0p85>;
>> +		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
>> +		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
>> +		vddrfa1p8-supply = <&vreg_pmu_rfa_1p7>;
>> +	};
>> +};
>> +
>>  &uart7 {
>>  	status = "okay";
>>  };
>> -- 
>> 2.25.1
>>
> 

-- 
Best Regards,
Wei Deng



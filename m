Return-Path: <devicetree+bounces-225953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 04207BD2788
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:07:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4684E3C5971
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 10:06:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14E122FE574;
	Mon, 13 Oct 2025 10:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FO3eR9up"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BC8D2E7F2D
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 10:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760349981; cv=none; b=sERjGNyzx60gvVhGkc4SS+Sm2ImogYGLr7gkmv/sAE+8HO0yFecO8VtCEmEiV5pHILkwhlRs+dw5aTAurgUQmP6PRK/Rj2gXEqJ7aAcwdpD7zwjZMAIqudn8P9VDWNtX0G0a836/FSUMAFTpX75x9xeo0v9UQpKSpc2ZHoCA2Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760349981; c=relaxed/simple;
	bh=lDWxaAzr1ubxN9qq1Z03neK8IbO1ZPnCFdTLsJXI13c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HMmHkWq3pLZrGzxolQqzWb552fTaUtkXpSLzPSTu5CfRTOfqRjdKMK88kb+mNfx62vrOLH0MvXDoGL6cbjSGft3PyntLSQlbhp81JwINKuOSVNIjkcqrp3+Qsoxk7WnsNADbiWr6MJr7zDtLHsqGKso80fWqy1IVR59Z7l2J0Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FO3eR9up; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59D2nAXB011022
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 10:06:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Otv8cx1oiW9ZoWYFXAyZiTDyE5y+heQuSLgS1nHQFWM=; b=FO3eR9up3aA534rR
	8E+4RFs1jxbtjiluWQLaj4dv5LXAMIrccWwmGQsR+fkksA/b34TNlX7M59aQ+9hd
	o30iuT9jt7YCmCFfAxQWY+76ohV4KjUC/lTZb0fs+ztM5Mmu5AI6gXqMpWlh+yJx
	CdrcVCex/AfXx+VreOeet0FcbWQhpnKLIM1kfw3qmiRNMpaAglkd8j+LrypEBFqc
	Zj1E/Dzphs4NKRFJFeQx+9fKwH7Fnne8nRsjwFlEgYZQv5XO5zg/xeAAf2bU7oFM
	iMRaOJL33B5UaI4wiyIBjZ+/iyDIo7JCD0Y/uyTWLeD6lPAYQejEWt6ewRldMf4Q
	JArytw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0bv4jj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 10:06:18 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-853f011da26so287010185a.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 03:06:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760349977; x=1760954777;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Otv8cx1oiW9ZoWYFXAyZiTDyE5y+heQuSLgS1nHQFWM=;
        b=bLQ6sEpYKnVkukDgriQwHo50ICoTtwKeJktIQ3w827TtOKsuTWiKZtPiSo4bXqzUJu
         lVhMQTDhN9JZBO/kQszyi3iWd1az1HCN32D/HXA39w/bsPRsAgTQ66n5snBvBr+Chv5N
         HeKO1PIj9SdrLrTlePo3KoqZm6KyTJyyr/GRxntL0tzy9a72QwlKojFR2tHDLw40eYan
         TcPBxeWSEtvYqTQ5FnBoIWMoaR3ltIzA+SDnxiEv6PnJjsx3UYw5jkTpn3G2aq58XD5V
         cs2AEkZ4rQVoG/YJvMIbUr47ap2nXqCchJ2pkXmKDJBG1tCRR8DzB+7J5kh5aCF6J0bB
         Syjg==
X-Forwarded-Encrypted: i=1; AJvYcCV2ClGQ3OOOBlrvBuSQhOC9SVDK9h8iPZOl2RiHYzK9m417H4Fy1oKz9/BLDbarj0nv6+yr6+1oqS1r@vger.kernel.org
X-Gm-Message-State: AOJu0YxaqY3NQJvlxBgNta9xxZ7Hs3YXwpg8L1il38qaNMPZxNEHwBS2
	UQ5GQQmshEVDKt3DNmgEmuDMff/fuPYf0gTfckDmm1zRK72QF+VUfyKDNMLRdU8uBQBDrscoG7t
	vAvnLHF283uFwrY5p2UPbaut4zwMTki4b3LPbbDo/Oq6yOWXlTcx7akXFn3b03vjD
X-Gm-Gg: ASbGncswlXmtvHZqjs0CPstVrv5jUZWidPBrWasunYSRy1AGTG6Z3NqqxwQBTmsy4GC
	sHvaH7EkzZA0OYuhP4OvpH7dTgtJGr6S+AKgg/8GjnJeGMtKwp2cp1xJxWEQxPVoLDn2QtZNRK3
	Oe73cfsw1wR8/sjXtMlzGp5yqUWHGWwQBDS8RhBe4XdXU3+AIm2CdBiocUA0dXkljD0NtSiQ7yE
	JsZGgWe3AmwqXKCF5qLYeF7uEvOUTWcXz7ePAYNVuKNX7eyDr0g5XlbIzpkhO7h57Z4taclUmMp
	T6kJVbFzSkHjBslcV2qqmshoAPfMACIFirwmRTTV0OFtcG/UmNbK3XOcO5EQDjewfeS25pvjjdX
	8ijIndvO9Sig1mhaE/6Ox+g==
X-Received: by 2002:a05:620a:31aa:b0:85a:4bc8:3d2d with SMTP id af79cd13be357-88351fd204emr2008636585a.8.1760349977125;
        Mon, 13 Oct 2025 03:06:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHXJ7K8dw++bJphGB127PSJ6QNoV+sG7t2QtOil/vVGVAQL67doMLdc6ejSELgkLCSeMcvtsw==
X-Received: by 2002:a05:620a:31aa:b0:85a:4bc8:3d2d with SMTP id af79cd13be357-88351fd204emr2008632885a.8.1760349976436;
        Mon, 13 Oct 2025 03:06:16 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d9a3fc41sm899555866b.87.2025.10.13.03.06.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 03:06:15 -0700 (PDT)
Message-ID: <375ea9e2-c2d5-4bab-8272-ed54c37f8415@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 12:06:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: add system power domain SS3
 state
To: Val Packett <val@packett.cool>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251012225950.15475-1-val@packett.cool>
 <0c8735f9-eac0-449c-aa95-b82cec0e6cb2@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <0c8735f9-eac0-449c-aa95-b82cec0e6cb2@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ibAnVgvUb9C82PJAg74Dv81fw32zNwOk
X-Proofpoint-ORIG-GUID: ibAnVgvUb9C82PJAg74Dv81fw32zNwOk
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68eccf1a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=2QVM00dS0TtG868yuiMA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfX6ncwgPuo60i7
 C4TtGi3riYgFjCdHnza+yet7pVem7rbgvYcSdyfrBk4CMeauD+gMkJcTCkeZPSbANu8VbxrYKKI
 MFy5WYjkV3JahNCUCKBQBw8HgIPnMryBKROS2Ie1byCU/mQ3audiXixlSqOtg6cA0uyNbntopi7
 7fLAfQqiSCYw9z6H/VXB2U8Qag8wjVXufxnLxKg1yX9QKeMyoLKGvnV/nlh5F4zrrvARpGbY3Xs
 bH8QXujGlcJ8gtthKxq0I1lM2R25PF+Ey+WGj9xmPounBzr6OWJ+ZBsDYF/pE17HKMK2+148mOp
 AXQu6qSvXErQcgASBu+GP8/Ks67FTtDAmlLYPxgcSXGTuClGrTtGfGFozN9cy0CUO1PYGNitRrk
 omev1oGpLUoZ+HwX6bW52bA+5tUijg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022

On 10/13/25 10:15 AM, Konrad Dybcio wrote:
> On 10/13/25 12:54 AM, Val Packett wrote:
>> Add the same PSCI state as seen on other Oryon-based SoCs like SM8750
>> and Glymur, seems to work fine on Hamoa as well.
>>
>> Signed-off-by: Val Packett <val@packett.cool>
>> ---
>> Tested on a Dell Latitude 7455:
>>
>> /sys/kernel/debug/pm_genpd/power-domain-system/idle_states:
>> State          Time Spent(ms) Usage      Rejected   Above      Below
>> S0             69476          23006      195        21562      0
>>
>> Seems to mostly be used in system suspend, though I've occasionally seen
>> the counter increment a little bit during runtime as well.
>> ---
> 
> FWIW the exact same state is hardcoded to be present if you use
> PSCI_SYSTEM_SUSPEND (which is mapped to `deep` in /sys/power/mem_sleep)
> 
>>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 10 +++++++++-
>>  1 file changed, 9 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>> index 3cf2568def3f..fab8104147bd 100644
>> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>> @@ -303,6 +303,14 @@ cluster_cl5: cluster-sleep-1 {
>>  				exit-latency-us = <4000>;
>>  				min-residency-us = <7000>;
>>  			};
>> +
>> +			domain_ss3: domain-sleep-0 {
>> +				compatible = "domain-idle-state";
>> +				arm,psci-suspend-param = <0x0200c354>;
>> +				entry-latency-us = <2800>;
>> +				exit-latency-us = <4400>;
>> +				min-residency-us = <10150>;
> 
> You seem to have copied these time numbers from 8750 as well, but
> it's not a great idea, since they're tuned for getting a good perf/pwr
> profile for a mobile phone
> 
> I attached an old patch I had laying around that described all three
> states exposed in the windows DSDT (although I'm not sure if that's
> exactly beneficial without additional tuning too)
> 
> +Mukesh please take a look

Well, I of course meant +Maulik, sorry..

Konrad


Return-Path: <devicetree+bounces-274905-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oA1LOcSws2lYZwAAu9opvQ
	(envelope-from <devicetree+bounces-274905-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:37:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F5E27E35F
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:37:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5B755300E3F5
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 06:37:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C752239E60;
	Fri, 13 Mar 2026 06:37:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Czp3QzsG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="krT1uXL7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D952A19992C
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773383873; cv=none; b=rcAscWomU3rQvJKaC18W4+U+UlZemijdWhaOM3dh9Fo/lIwiAxPAyQ6g7QaqN4hEZyukPV1glgvJ/+SWaPy7w6PZju8W2S8W2+jqUkqxRZ6WOPioQa6jBgob/3WZAZ1gH3eiGL4C1CeC1RTL8WAx9lC6tSeB49wJ/4NT/V70w8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773383873; c=relaxed/simple;
	bh=eXX32EnsrJtXZeC6ghwpSOVoFw7cQHT1FJ4A99lykxU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qaJu0FxPl0xV0uNl1sOqh2U6W7yh521CAuyR4LTM/CbZM3Q7qel+6OKvgrqQv4JJ/xwrSUs81EF4BVi2K9jx8zaq0Zg/hA2f+H/HWDMjdsTxw5qbwqW+mFSSco4PvMAeuzSRIm5KDmXUEtxpjjzq0r3wCuYoooJ3AXXjfibCxPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Czp3QzsG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=krT1uXL7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D5th4q2018291
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:37:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hEawz2/uulbkXKFxTMF08cT7BTaaWL0evQAKbAWCYMI=; b=Czp3QzsGCX64RXvk
	vGDXoHip8AhYmX03hJL+8vhjfRSAuykAyJgvUasng8zdXR6NWXZ8zo7JDjz/MlHf
	+IMGphMB++A9Y2SNQ0BovRd1IsrZoiZMa9noIraVvHuyR5bfNLzdKOzn66otKWsF
	57/DfnreXS346qP1cCBujaj7Lu9ujwjvOlASJrEPr2rqCKRjWzbzYrB/JQe6wTgW
	nRiGMHbtKkOSvwvNH8zbzlVJStUtSxuq5QpCCiV9++ndYzY4XYgZ+LtmxxrVWQTj
	O1w9iREFs1Wmjk1xoH7HKnORlbVZCZkWdBZmTEO73+kkdcLC5CxUzIZWQa3J/f8/
	6LKhuA==
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4wvu29-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:37:51 +0000 (GMT)
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-463a075e177so8572638b6e.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 23:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773383870; x=1773988670; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hEawz2/uulbkXKFxTMF08cT7BTaaWL0evQAKbAWCYMI=;
        b=krT1uXL7JTJ8ZfvZjE9q0gpMImAN+oTnt4ofC0GHKBzByYGwW+R9mTMRt9tKRibSRR
         iulcIdI/99ODD18sOvSliZ+PR+Bizy7ip/zvYFXXToUvEaO8AFi1+pzTrvqEUkfAr3In
         1lCGQMwdZ4ajB4Pv/QYhKtKrgAlAbM/dgHiyoaA0pgR34NxKTweuDmkeVQ0NoJXSOfkd
         KgWSLJSGVEJYKb56NV3MgKy3T0ne7r41fI6TVypA5bO60hZLkNy1noURyop63wUR/3nU
         MgWKlrBTA+A7HTprxmG6MJaMJvv/e0KwxvEb5o1IBv+6vTPvO1+87Q413HIcoFPhg0wB
         KBaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773383870; x=1773988670;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hEawz2/uulbkXKFxTMF08cT7BTaaWL0evQAKbAWCYMI=;
        b=Qp9Ec1wWufCpLBafIuXZNTJ3zB8V8lEqq3WLc6uXxuVi1ixoDGKAmD2Xo29wHQ9ZXV
         K8L8xUtJJMLXmplhX18hSf7w/amNfksUixmWCfH99pufUlNgF6gUV0YjCrT7Y3N/RMPP
         h5kPLCrOZd44KTIMdOcgYZBrgzWyPsYb+qXqmyvzS/64WRYyux5LeOfTCQiZo/614nKA
         a5IGSv49jjoS10qqNMaQlXL1w6D9FvMdfYbAn6b/kShQbpKY84yiRGrQDY5fhQTmoq/F
         whMmNcAtKBw6x662+Y7i25eMj2zofF1jnm/IxhauM75LyKDGmJTnZKJQp16BJs8ByD2x
         h6sQ==
X-Forwarded-Encrypted: i=1; AJvYcCVIfNz1UO3ZOF+tqYN9l7jMiASj9i6TO1izCaxQ3OrCwbhaopQ+Ua9xA2CNy6jYZJDmmWX/jZkd1szF@vger.kernel.org
X-Gm-Message-State: AOJu0YzczGmxyDT9Wtth379iIvs4ZfnXauhtYU0K3PadpBlhkR00I3im
	WtZvwzXXKojIzbMdsdVNbo2NrBb74iN/PgTjGgBXVP02u+d4ek+GyrwcvsuWYxyCnjJuf6ODeTd
	7rm+0NGwwg5GxX0eua4Zr+Lw5doGDH/dirJU0K5PqYZnEHVCgokgAsOKbjg9moJ93
X-Gm-Gg: ATEYQzzQn7SfBKVdcdiVV6TXA5MWwZlP2UK9zCCnDnCStFzdeaTngkKDH7UkmldEViW
	jKYh/F4O7/u+wVWqzNwhZRCPH/ztO/HEhbSwJjhv9Hlv79hN4x2b26ZsRu3shOlYaIEIMjdxdaK
	npg9llHlFF9EKA7k5gUCpVXtyWc5DKcSP9VQsdEikuM5sN5cIPMySdSW9rTonf/w7+vvQo6qg2z
	jMgstpnomOB4sfpJC4zVJnCD12S+LjgCxxlHAX903MKLD/ZeTtX31tlEI0NTqjN2x5ZoF8dnCwJ
	BQ43Zl24JK/bvyKIcVxZj6tMZV4aZACRgQ9FLYSb7N8Ea5V8x8wJTuOoH4GuTKE+vos9ZbX4jC2
	W2bQVZW9b5MOwFlPVthMzYMCSUFbP1pzFPjGr8XfByRvDU4U=
X-Received: by 2002:a05:6808:344c:b0:467:1c9e:2121 with SMTP id 5614622812f47-46757037223mr1168928b6e.1.1773383870289;
        Thu, 12 Mar 2026 23:37:50 -0700 (PDT)
X-Received: by 2002:a05:6808:344c:b0:467:1c9e:2121 with SMTP id 5614622812f47-46757037223mr1168922b6e.1.1773383869856;
        Thu, 12 Mar 2026 23:37:49 -0700 (PDT)
Received: from [10.239.97.158] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-46743aca62fsm2856962b6e.2.2026.03.12.23.37.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 23:37:49 -0700 (PDT)
Message-ID: <97a3f3f2-e9e2-44ac-a682-0e0f0c100a45@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 14:37:39 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: hamoa-iot-evk: support Bluetooth
 over both USB and UART
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        cheng.jiang@oss.qualcomm.com, quic_chezhou@quicinc.com,
        wei.deng@oss.qualcomm.com, jinwang.li@oss.qualcomm.com,
        mengshi.wu@oss.qualcomm.com
References: <20260311090921.1892191-1-shuai.zhang@oss.qualcomm.com>
 <cffdb8ab-a293-4535-860c-378a4b8a3d33@oss.qualcomm.com>
Content-Language: en-US
From: Shuai Zhang <shuai.zhang@oss.qualcomm.com>
In-Reply-To: <cffdb8ab-a293-4535-860c-378a4b8a3d33@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=GcoaXAXL c=1 sm=1 tr=0 ts=69b3b0bf cx=c_pps
 a=4ztaESFFfuz8Af0l9swBwA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=Zpc01jWA_6A4uBNqY6kA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=TPnrazJqx2CeVZ-ItzZ-:22
X-Proofpoint-GUID: XsEKPc0WsYhXkZMiHSE4p58bC8xrDSrX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA1MSBTYWx0ZWRfXxy+SxT6cobK/
 wBe6FIh+axZBGNzavoOlvVrJj3CHuKm/Ifjmx1IOxS/lQEWQpgYos33lpIILMeFPikdH7mR9vcW
 91ym4auVRlszRQNJ2Ir22yWTCvSLW8jgGyA6wo3/kI/2uNJzSags+YOtpKqJPlcW/DhX9d7nJML
 XhYCmO+XCIgmaf7K7mN2bwR3NFljh9Oc9IRd0Dqh/6BsWTimttyt1KSH00xSzN1SxwzqixAfq1k
 iR2czFA6gPRde8FHBTXgdnXWvW8AzSkyroY/1o6IzKx3/XI6auJ0r4AwlHAvUyE3LOUrY1eEXTI
 k6S9O+1NeUfspnfFC7zRgtXLse3qVwmY3B8lTNtppaM8kdnCQVfmK/YpI56MJXmed+FgVtX7PWE
 bmQjJIKMdrIRtocGxHXm5V4PL6qsXU1jfoUmsQ1vtCVpUYm+Sg7GoJLf5WENRuKOR8ft7gNhLMA
 mk+IzT9DZ8F+p6Nxh5A==
X-Proofpoint-ORIG-GUID: XsEKPc0WsYhXkZMiHSE4p58bC8xrDSrX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_03,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 spamscore=0 adultscore=0
 impostorscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603130051
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-274905-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shuai.zhang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 61F5E27E35F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Konrad

On 3/11/2026 9:07 PM, Konrad Dybcio wrote:
> On 3/11/26 10:09 AM, Shuai Zhang wrote:
>> When Bluetooth supports both USB and UART, the BT UART driver is
>> always loaded, while USB is hot-pluggable. As a result, when Bluetooth
>> is used over USB, the UART driver still be probed and drive BT_EN low,
>> which causes the Bluetooth device on USB to be disconnected.
> Is bluetooth connected over UART *and* USB simultaneously?
BT uses either UART or USB, never both at the same time.

On platforms supporting both, the UART driver is always probed, while 
USB is hot‑pluggable.

As a result, when BT runs over USB, the UART driver still probes and 
pulls BT_EN low,

unintentionally powering off the USB BT device.

>
>> Configure BT_EN as a GPIO hog so that it is controlled by the platform
> What's "the platform"?

hamoa-evk


>
>> instead of the UART driver, preventing BT over USB from being
>> unintentionally powered down.
>>
>> Signed-off-by: Shuai Zhang <shuai.zhang@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 14 +++++++-------
>>   1 file changed, 7 insertions(+), 7 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
>> index 630642baa435..60a0b3ecbc1b 100644
>> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
>> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
>> @@ -647,10 +647,9 @@ wcn7850-pmu {
>>   		vddrfa1p2-supply = <&vreg_wcn_1p9>;
>>   		vddrfa1p8-supply = <&vreg_wcn_1p9>;
>>   
>> -		bt-enable-gpios = <&tlmm 116 GPIO_ACTIVE_HIGH>;
> What if I want to power down Bluetooth now?


It cannot be pulled low because it is not possible to determine whether 
the inserted M.2 card is UART‑based or USB‑based.

Identifying whether the interface is USB or UART would allow control of 
the UART probe accordingly;

however, no reliable solution is available so far. Additional approaches 
are still being explored.


>
>>   		wlan-enable-gpios = <&tlmm 117 GPIO_ACTIVE_HIGH>;
>>   
>> -		pinctrl-0 = <&wcn_bt_en>, <&wcn_wlan_en>;
>> +		pinctrl-0 = <&wcn_wlan_en>;
>>   		pinctrl-names = "default";
>>   
>>   		regulators {
>> @@ -1398,11 +1397,12 @@ wcd_default: wcd-reset-n-active-state {
>>   		output-low;
>>   	};
>>   
>> -	wcn_bt_en: wcn-bt-en-state {
>> -		pins = "gpio116";
>> -		function = "gpio";
>> -		drive-strength = <2>;
>> -		bias-disable;
>> +	wcn_bt_en_hog: wcn-bt-en-state-hog {
> This name is illegal (make CHECK_DTBS=1 qcom/hamoa-iot-evk.dtb)


|I will use tlmm to control|


>
>> +		gpio-hog;
>> +		gpios = <116 GPIO_ACTIVE_HIGH>;
>> +		output-high;
>> +		input-disable;
> This property is not allowed for TLMM pins
>
>> +		link-name = "BT_EN";
> This property doesn't exist


I  will remove it;


>
> Konrad


thanks,
Shuai



Return-Path: <devicetree+bounces-248185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 94551CCFB6D
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 13:11:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A6AA03062902
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 12:10:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46028338F45;
	Fri, 19 Dec 2025 12:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kXYPeD/T";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kUtbl2k9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FC4F31985C
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 12:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766146228; cv=none; b=SA4pzuFaZN2U796zZM7ncjzg5QyvSMGelCOfI2G5o77HP9Wu7nuz1YnTRw9AioUrj8snP+SNoAWIDBBqhcXeOrIm0oTO6WEuYAhtjSUFa7oruq5s6F8DxLF2MA+v90FKXBi7V+4UC5S3+TJU4jq/VZI8jhaEt7zVOneaDjox09M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766146228; c=relaxed/simple;
	bh=70L2YXjuaacwvEy8Al02xuF9o9mP13L9w0t+IjhRb5o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OkjUnpW2P/xgO2uXeE8eZSLiW7pqagWQazjtaiHPRlZIbwbxg5i25QfHtfQzCQT7X+zbVS9JWAu845WFWIFccF/lm8fm20WJSE0Bn0P3CxfUvaVXJ1d2JQ6PjndGSKIcQRRZLOWblfuwYH0CTxgPb48Wu/n30R4FllrXKC5lD9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kXYPeD/T; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kUtbl2k9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJBZXoh4101209
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 12:10:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S1E0j2WrLuJ6HNvcM8VvC8PrOpJ89a077gsH6b1pbzI=; b=kXYPeD/TS1bfPcXu
	zYhzIMjSknQwYH9JWoO0oQvkDsTudOq8n3InwieNSoVB9w/NE4FKvRWKi88ghCSP
	BdgBDE9eluZuMs3LXHoZv/ydDwisv/wXegYpdESN3MaLfgGEB41Prurpaabyuem/
	b6c9ty2rzF32JEJUCryDFUvB9M9gCc1YnPPkQ05YG4qRJsj+MMj+ICWxjD3iuG1G
	cib6S+XM7yi2Va+CwVMdaomiKnrCR9WtrXRILukicJCNm/znnp8cu5V8g+PjEMxq
	FGh98EqAezm5seq50AXVQjkIwQSmoZqodGKB8r6FKoSVJUpvlxzTUJrICZDhKdTd
	Q60Vgg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2c2jud-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 12:10:24 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b5ff26d6a9so34289285a.0
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 04:10:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766146223; x=1766751023; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S1E0j2WrLuJ6HNvcM8VvC8PrOpJ89a077gsH6b1pbzI=;
        b=kUtbl2k9SGwab7vDE7aP8sRe2rToemoenmWe4OK20B+T3Preiaff1lwgReUfgTMjGi
         V0SOm4XIxAzplb9VJdNxIHC/PbNwk+z+xMKwW4CcbHJnTsMm38QE7w2+93nd4ARoUrBd
         nKzpvLzQPxdVLpOIwoijABCYpbk2J4rcPDdQXpvSEvwEhDmRnoXQBmYel+GPibNPQ2HY
         yHAUHXM7HR8IBoVSb2m0FYg9e5s0JfJqgisyIBAXwYwfvw26/zKeKB90yKWAJYXz9OjF
         x8kKXMC1UQARNhbmlsKwEu8ktUYFAl4UYRUvd6/n8UZ0vudP8nP1k7j6Bhr7KyfFw7jU
         R+HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766146223; x=1766751023;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S1E0j2WrLuJ6HNvcM8VvC8PrOpJ89a077gsH6b1pbzI=;
        b=cK8/124kZFUQ1gfHldLoHuJwkOo1Z48c/dkt1naqg58HnJjW2vkqGC6ErT/TxYoXke
         hPO6MGDVzVrXsvBETYcXmJhgCO7IzNBiMVRWjRcLiYRV/p3FBpwWjAmYxEY57tLBOgBJ
         GGfQCaOvLtB55f1G4mFe+TJlj4dKLUzO1oywP4Gti64S09moEngpWoLFKtE4zHGP6vII
         cNpQ7x4y0YWN/tUsa/xv/e1fWo6i4UwCTEEBonABB+/5u/n8fywDae96TEJBNMaV0ABj
         rddkJRmiYzZl5SY++CkJsO3zXFjbdUTfMBmKDG0TbbqkER67J2i9hKK//7yAXsldugQ0
         m5Ig==
X-Forwarded-Encrypted: i=1; AJvYcCUn36Y+4HgkdSaIqb97YYHC0kXT+4XaDX2i2evABJJU4bAYQKgxymZyvjsnbQv//LKNzUP5ORL4xI7A@vger.kernel.org
X-Gm-Message-State: AOJu0Yx48nP7Gk/czN+2wE4PCMELw05/0td2pMLfz5Q+K/YvMeVYtlRv
	d+KK8L1gBLLGfPGEZ2YG5SZnXOh0dk3WyVkSD0YJUykx4OpIh3MbQVlXSmD9ZWMpgkABFU5EZco
	URXvwkSnEX6qxyat8rD6bwhtAE1njxkf6sMTXNMphK9XA02cy5eLr/cgkwOZbcLAN
X-Gm-Gg: AY/fxX6SMvfdGV8LSsKJEd6Lrj2T2X2V3HB3LiPJ9g2JizFmzI6GRupulHCUG3H/bib
	1IHV1aqIVJsQbfidkh5h+f8Tj1OE7qH77Th+134KvMqXNmWBLJRCOGt/PZ6Yo5sPirsZgy8KSRC
	VwRFFrPhocsyEpZqU0Li0sDkpXdlTtr1ppMs08vBKErP1CFCNI6CGdXSRIS0kHcEtXZXtI0/EhH
	ZCLwK+yYLb3wy6QvcbbU+lDRk1M0Vnnk71bl4plLhu1EKj0kgXvr7xGHDL4sA6mzknJ6g1lezPA
	phyZOLEYBYu4/zHNHjX14vZk6XY2EAD7vctWjawy2uw4mvgeSd2sv/KDvcVUrBU3ErT+nUTrGkW
	gR1UltYBtKigm50GF3Et8QcIYGzeWmcI2i9HQnjsDxHf6JA49XHv5IyGTKLYsfaPvIg==
X-Received: by 2002:ac8:5748:0:b0:4d0:3985:e425 with SMTP id d75a77b69052e-4f4abd70338mr27037731cf.7.1766146223328;
        Fri, 19 Dec 2025 04:10:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE3J+40imZBXI40AG63cuh9IorOWKmfWvGmKndpChasYbSfFq1aRyi7tEaLSb1vEUOyTogApA==
X-Received: by 2002:ac8:5748:0:b0:4d0:3985:e425 with SMTP id d75a77b69052e-4f4abd70338mr27037251cf.7.1766146222785;
        Fri, 19 Dec 2025 04:10:22 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f4ef1fsm215165066b.64.2025.12.19.04.10.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 04:10:22 -0800 (PST)
Message-ID: <4112ba0b-6feb-4e30-a57e-50ef9e3d6b5e@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 13:10:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: monaco: add lt8713sx bridge with
 displayport
To: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Saini <vishsain@qti.qualcomm.com>,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
References: <20251120-lt8713sx-bridge-linux-for-next-v1-0-2246fc5fb490@qti.qualcomm.com>
 <20251120-lt8713sx-bridge-linux-for-next-v1-1-2246fc5fb490@qti.qualcomm.com>
 <7d31f45b-1062-4118-8769-49209908f2ef@oss.qualcomm.com>
 <aUU05P+xP1XdwihO@hu-vishsain-blr.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aUU05P+xP1XdwihO@hu-vishsain-blr.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDEwMCBTYWx0ZWRfX8D3CitRt2LAK
 EjRkxgoDh6z4iLC1ozDfNYuldL2pWZupFSc7QkLa6czKR4WdmGLeYXAP3CJr+pjc7TU4OyCfbK5
 0mufz5a9oLNvB/ULzOeszqkR1nBZVow254xrDyM526f9ux9FCTS6vpbbZDu34ha/B1CPeC092hO
 Kg2iqufKIIcoc0Ife2zv5TXyguytC40VWL1FXYqSvqNw+JqExPFpRTZKbdV1Tg5603tP6/oYqNx
 hg3E1dV9Py4qyJcoH2nVSRY9QVRARFp7Bt2OfvfGcoMfizwD9Ebo9YH7FfobQhAqTl8Gfym+oxA
 fk+crknhPzXh6VJdlqf2VwzpRnzcodfC4R2+O6N9j5zflcG0wH2rEQFZGkO/0t3ml8ln8AeW9t3
 v/xppVz7rLOxWR/zo3h3U6Uyw7LysfB22mbsvoXeu4j2ORA8qhOoBdWi8UBGV18LqGzydVEiVXy
 biESDnibQWa0MKDwOTw==
X-Authority-Analysis: v=2.4 cv=dOmrWeZb c=1 sm=1 tr=0 ts=694540b0 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=zeNy_F3JxkFpdNDQXxAA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 9n2n9bDEb0hWsodHI5MPFGK1Fy4E4NUK
X-Proofpoint-GUID: 9n2n9bDEb0hWsodHI5MPFGK1Fy4E4NUK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_03,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 bulkscore=0 malwarescore=0 spamscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512190100

On 12/19/25 12:20 PM, Vishnu Saini wrote:
> On Thu, Nov 20, 2025 at 01:11:00PM +0100, Konrad Dybcio wrote:
>> On 11/20/25 11:58 AM, Vishnu Saini wrote:
>>> Monaco-evk has LT8713sx which act as DP to 3 DP output
>>> converter. Edp PHY from monaco soc is connected to lt8713sx
>>> as input and output of lt8713sx is connected to 3 mini DP ports.
>>> Two of these ports are available in mainboard and one port
>>> is available on Mezz board. lt8713sx is connected to soc over
>>> i2c0 and with reset gpio connected to pin6 or ioexpander5.
>>>
>>> Enable the edp nodes from monaco and enable lontium lt8713sx
>>> bridge node.
>>>
>>> Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
>>> Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
>>> Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
>>> ---

[...]

>>> +	qup_i2c0_default: qup-i2c0-state {
>>> +		pins = "gpio17", "gpio18";
>>> +		function = "qup0_se0";
>>> +		drive-strength = <2>;
>>> +		bias-pull-up;
>>
>> Similarly, you can move these settings to monaco.dtsi and keep them as
>> defaults since 99.99% of I2C users will share them
> Is it ok if i update this in a different series, similar other nodes like qup_i2c1_default
> added in monaco-evk.dts?

No, I don't want you to introduce something "wrong" only because you
don't want to run git commit --amend

I see you've now sent a v2 just 7 minutes after asking this question.
Should I interpret that as you expecting me to drop everything and rush
to respond to your queries immediately, or do you not care about my
feedback anyway?

Konrad


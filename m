Return-Path: <devicetree+bounces-151677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 229DFA4685C
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 18:46:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3CA137A88EE
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 17:45:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DACF9225415;
	Wed, 26 Feb 2025 17:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jeHlYBpP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D616421CFE2
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740591955; cv=none; b=XvnwdbPfcaqL/X4vyRAY0eEhuGbgQ6gaUf8hc7+BeRY8tQkYCcG9SJFxUFGlytjJAjlHfBA3b6p18P7pbPN1xcn06CtakJa3iiOtgToF6Bv6jA9Oel5w8H2WBOV7+wdk8HPCdBp6zKt/42nL6kZRfoKiAf3bbvsvws5dtRM3QOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740591955; c=relaxed/simple;
	bh=h3UCkmKo1484qRmPGgUdh+KMuRZG6JXSyGfmIPrt1D0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lSna+7AK12jpK3TkyTEywcO7GTmcOn33hjoKJ6r0FTyFSZmiAnfQveyMKwyHHMphMXKSKORyX3bcuyofbBzTtLHE+SZtlgvV4QaalStooxM58IMgeMj5RQFyLryDByDfov5Gg9AXIHMdcuRKlHDFZR4dR9CwrYzAYmWdGW1E06M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jeHlYBpP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51QGHJoI022526
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 17:45:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	spHUr3AXu2f0Q/mYO04AU9/9MDHJOsZPrNXfPRcj58M=; b=jeHlYBpPslALlr35
	LN/uaObw2ZoG/LQHgaWyQI/uXMZ6mMDZ6U16XzI0anqA+3eGr5/MB5AnU+JwwhIU
	Juz4RQ8HBU0S9o7MDUji9ehBZaB1hB/rgaF72YoMdcI9+8rIsxe9cpHiG0PJxOt+
	aJK33zfI7qTp/eEXJdWNORn8/3OQNoGbGVgE1VoeviK3FHY7G+4+8E6CaEhNZI0Q
	sI/wYzry3EyfvRC8eDjJ5fC4eMAKBLDrpTb8ThZDDrBm+bGQ3zM0Y58MZsrJB8Om
	+43G0FqKBS0axFBOlW4LlomnjOVdCD3QdK5nltFr+7iQqbp2MzCPcMQTQEwD4uh+
	/iCfQA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4526bj07ks-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 17:45:53 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e66c7e5348so227896d6.0
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 09:45:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740591952; x=1741196752;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=spHUr3AXu2f0Q/mYO04AU9/9MDHJOsZPrNXfPRcj58M=;
        b=ObGY3aFF0YhHpgNXPvjMu8kn6iJTKlsHQ+A3n5Hu4noeqODrjWDhF2Y6hPo/rOtWN6
         MoAF+TA6zoIFrrR8xkxK0sW0nsz36IRTRTJBfARQo/lkRuz9UaT9r4vC7Bx/M3EIwdGQ
         LGYxApFz++GqmEi1RXbdGtWZj/1RuONA8G/XfIeRKJob1eZzWPo6AEJDsn9jejSq/s6F
         TEQ6QbjpROCr7KX7eIpwXRW4Q5AvarfrRn9ybBzNRwkbcpZq5UJi7DG6ApN8QAvbnihK
         ejoohTjoxwrUl8Tr+Y2mkTTyuCLj7JzMp+MQ7epZzvbRYehakuvO4m5hz+TFzLdUHejv
         Q8Tw==
X-Forwarded-Encrypted: i=1; AJvYcCVYFNOtEX2CCxfuleDR6viO7FBHs6H5YcEIgcZJWakQNtypZNSmlhxE1TcsFQVQICMGo5KmA4KV+gap@vger.kernel.org
X-Gm-Message-State: AOJu0YxB5czGSbtjIxPhJ1veaase5NtCRqnSAiUc/ykodOFfYR5J6bCe
	kVcyau+LwiHthKY+bH5DpEUJOhW/ugJG+1cqbJI+PsqB0IiEFO7lZAo0Tf8zNBnYOHyGxneoSp6
	qYiJXGGOOryo0az6bH01EVxdDzqLyqecsG6MRqy345+FSaP1v2h82IdN6jRqV
X-Gm-Gg: ASbGncuHST3lX8dOdZ5764XyVfXUSbiwNB/6l7HNJ4RgmF51HU0EAx03CYjSr53Hlwb
	Z7z5mn9KqBknIo3nvT7U0HHrCxk2/xjefnIgCzygK2TvFCo4AiN8KKriMYFSAeUCxVQ1fpx08YV
	H94UDNQZBU/Yv1IsUp0a55G+IYd4UPOD5f86hXsc3QUox9kvI7J/J2ic07dwzb/9wePoUmBC+XX
	t2RmyGw+8S4XLep36miOxo0LclEMxh3nGgVabvFhQ8ao6GP/xb+cyyg6xmb28Vxz9A9jyyCNAEj
	N6CoUTJcB5UL0hBljwkU9S3bX1RFvwck0eAAzJLXwe01yjEVTBzsFx5mrmgeomv2fUb1gA==
X-Received: by 2002:a05:6214:21ca:b0:6d8:99b2:63c7 with SMTP id 6a1803df08f44-6e6ae9a12a7mr104618796d6.9.1740591951731;
        Wed, 26 Feb 2025 09:45:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEoiQ5KxqxulmOEbv7ZhtbSVl8vtd+3f7Fmtz2NRViZu3o4YsIbbM/qm/sPMHNIsdwdfvGp7g==
X-Received: by 2002:a05:6214:21ca:b0:6d8:99b2:63c7 with SMTP id 6a1803df08f44-6e6ae9a12a7mr104618696d6.9.1740591951315;
        Wed, 26 Feb 2025 09:45:51 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed1cd5629sm361206566b.8.2025.02.26.09.45.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2025 09:45:50 -0800 (PST)
Message-ID: <99ed4a61-6e0c-4743-91a1-2312152ccf6e@oss.qualcomm.com>
Date: Wed, 26 Feb 2025 18:45:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: qcom: qcm6490-fairphone-fp5: Add PTN36502
 redriver
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250226-fp5-pmic-glink-dp-v1-0-e6661d38652c@fairphone.com>
 <20250226-fp5-pmic-glink-dp-v1-1-e6661d38652c@fairphone.com>
 <696aed52-7519-4351-a3f6-7b86778b18c3@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <696aed52-7519-4351-a3f6-7b86778b18c3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: qSrG944qjc0FBRz0gs1yedzUS1KsJLe1
X-Proofpoint-GUID: qSrG944qjc0FBRz0gs1yedzUS1KsJLe1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-26_04,2025-02-26_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 spamscore=0 mlxscore=0 bulkscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 phishscore=0 mlxlogscore=776 suspectscore=0 impostorscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502260140

On 26.02.2025 6:40 PM, Konrad Dybcio wrote:
> On 26.02.2025 3:10 PM, Luca Weiss wrote:
>> Add a node for the "Type-C USB 3.1 Gen 1 and DisplayPort v1.2 combo
>> redriver" found on this device.
>>
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Actually, please also rename the redriver node to redriver@

Konrad


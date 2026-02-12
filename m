Return-Path: <devicetree+bounces-265065-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICpHConCjWm26gAAu9opvQ
	(envelope-from <devicetree+bounces-265065-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:07:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 457FE12D4A4
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:07:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B3BCE3007298
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:07:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69D74356A1C;
	Thu, 12 Feb 2026 12:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RVJn4/fL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fOUD1JmW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABDB3563FF
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 12:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770898051; cv=none; b=fQKsG7cvOdj/f8KoNYGi2iRizqFKKT9omWydmNFzEUgAtcEfrBaEIWDNfoWOWVBOOi8nbTZGMZhLN1abVqeY1v3Q4sgpFJZdeebAM27hNlRKljNHKI6T/3wqj4fPtF8TgdWtAX94rBcfjp1g5cZ/r6TchSlNE3nRAPrvQwN6qWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770898051; c=relaxed/simple;
	bh=FadqcaIExTIUtkGIBGPU8njK45rv7t7Sin2D+ouTCvk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DpdrmIwmFbWohSZIgG2njVWBM6FMQilL+jrqR9uq/78CElyD6pVjkxaWySPPS26sV2FkKuVqTKJWX2fo9tdgptz0PgEdvjEMQnwkvCIsGqjhu1NmseTgINU8saqMz3TqkfK0kTvphGFFYIPR+uofX117HsFMfPOzCkc+YCA3bbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RVJn4/fL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fOUD1JmW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61CAFmnm008904
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 12:07:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Thpgs3r4xpWKLJQ58zxeP7+Av3iAjbR8Kct1ef46IMs=; b=RVJn4/fLiKl3DcFH
	BfdTh9xdcOIZMY10nNA3cNnyzAfQ4+j1H7AR6a8gyV0ExNdstWKgkL1vYnD12ddT
	kEspW6xXTXWUB9XF1plat3nOj51TonqYkJxfQq7r4H5CX33j+wyjqWVy6qBuRFS/
	ypJkwQ5uoPBWB6RsKZaJRF9rFOJp3/V4Z2JoX7bmV1HSpNv2a9rl9EhebDSGMr2c
	76e1mvXh102kABTyKaz2d/f/qvE0VDI9+I/KdjDf+A8JEGGfdCN9x6zhsWKAgp85
	0RWSvXZRw/vd7JRGZaFdfLCJ86xOG5YLpApNT55gr3l3otj+T99TDEm59H9l/380
	dXEwCg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9cy48a97-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 12:07:29 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8946c23cf90so28512106d6.1
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 04:07:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770898048; x=1771502848; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Thpgs3r4xpWKLJQ58zxeP7+Av3iAjbR8Kct1ef46IMs=;
        b=fOUD1JmWq1tGu3vg1Vj8XMITK+igmUw4kEXPCoETICGcQFwWRlzc+sZxEUAlJbtZPq
         qNy2MvSLl/g1Tn+w1zcB7M4mEOTop0MFZ0cBG0YDt0qYvV9+gkQOM7adIFhn5WE4lr78
         /+M/jqSYagjHNYM1Un8ZKYcs8FyrR+oukp79W/Xs2J1lb8rqJiyCokHaoDqB6Gvi0ZYt
         44sypC+snWN46ZZ2lX4LHSF99G+l0irDDXzCWustJHyriDL4JA1daNH86YznN0McX/Uw
         6LZNGnICamQPfhHgZFpW8kjkw9l4kEKCEwbGoajDm+3/NUwUcv6//G015P+WBI4eUeoV
         leDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770898048; x=1771502848;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Thpgs3r4xpWKLJQ58zxeP7+Av3iAjbR8Kct1ef46IMs=;
        b=dpaMsxzkm+YsgRvwRaWxhEvy5ih2g4N7XcG/VJ+wku6ygLHtWbRMCkz2X9K+SI9uc2
         XDxEK2bXHAIk/gSBBDMIRVk208Mz68CCN2c0UeqMWlpDqr9xcMtkDuNf8LkDThPWNhsx
         Heo+oJKJFRfdrBHcpwwKuikrKf4CMcs/5cfEwKj6gJFE6KfLHPXEfpSQqKddMTmM+2ZD
         iUsVSaNRJVq5FHrtqxetQDzoNwHrNL1oPXccjRTTKvP26DnDThjUJZ2JurEP4ms2joQI
         IKe1m/HCSq6/TWyt8pzZka9XTemTQJC7dsi5QpnBqTjLFxNlbp8YL0ajj2Vygwi4aYnB
         tGPw==
X-Forwarded-Encrypted: i=1; AJvYcCU/cIAtBowlB/iFqW8zsiQLsyesAMRpWUXcRDf5bCjvdgpXK4VCf09v+BSgjy4IM8N5B4v/J6aNLi6q@vger.kernel.org
X-Gm-Message-State: AOJu0YzPJ/ZmkJWkI3tb4pB4eN5XClxeCn5ewthQvVXiiMd/aXJRuiyT
	ejyvvfbyJygdBX7jqZwo0wMzZ2/H+uHi1USYHysCYK/oJko1gbFQl/W2FzOtsHv0SR74IsyJcB6
	DcA6MZIT9lpg9DTWBHQIy0qhNgRjSTnzR7GsWXblKwrZArDVmAf6i7mFn93KCsfH/HiLceOtk
X-Gm-Gg: AZuq6aI9KxDf9M/09k2nEiNLr39O5k+0wZSfYDe/UFCW29UR6tv0nMEONCo6yL0tuuT
	5Ct2hEBkkoq4xi3i6uYM87D/vu6ZseT+vS4T4/KCR1GdyKwaH6MhVF4rN79x2VCdZmBbZYkvicJ
	007Zrudjc8seO6GRHw2buhpOVy7zp7QpMYp1MyVsb15zJzv2SNiEvOaxg/Z7qcZ3kSYcr9KFhyi
	ZWVQMZOMz8zEJ6A+CXdH+BUuk47Fu8UpGchJga2Vx3IuA39jvYpTZxTXU3Vmb7ZED+yJASMGbar
	7uNgECG+tN6t4xqyhdlELfHg8i8Stsc139GNiI6EnxgA5INFvSJpWhnW9QZHml++5xC7e2yV5d1
	aWjBc2jyJRB+SLoZvUAls7xwIc9DPRgCuyMY3qy60E1rILm0kF0wJ7Kdr0jVLOFKBcKJxmhiX8/
	qetvU=
X-Received: by 2002:a05:6214:4c89:b0:896:f2d4:1df3 with SMTP id 6a1803df08f44-89727af2297mr28098546d6.6.1770898048362;
        Thu, 12 Feb 2026 04:07:28 -0800 (PST)
X-Received: by 2002:a05:6214:4c89:b0:896:f2d4:1df3 with SMTP id 6a1803df08f44-89727af2297mr28098386d6.6.1770898047971;
        Thu, 12 Feb 2026 04:07:27 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65a3cf38c80sm1709186a12.21.2026.02.12.04.07.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 04:07:27 -0800 (PST)
Message-ID: <0f2fc3b0-3263-490f-ad35-24651a800f11@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 13:07:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1-dell-thena: remove i2c20
 (battery SMBus) and reserve its pins
To: Val Packett <val@packett.cool>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Laurentiu Tudor <laurentiu.tudor1@dell.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260210175001.7691-1-val@packett.cool>
 <20260210175001.7691-2-val@packett.cool>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260210175001.7691-2-val@packett.cool>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 8bvsGsHxItHxWjlRxTL7tn7PKB4bSbSQ
X-Proofpoint-GUID: 8bvsGsHxItHxWjlRxTL7tn7PKB4bSbSQ
X-Authority-Analysis: v=2.4 cv=XvX3+FF9 c=1 sm=1 tr=0 ts=698dc281 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=n2RZqRzcAogvZMCmR6YA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA5MCBTYWx0ZWRfX/BJFzO33UG1H
 GtGGG4Yjv2xIUt8toFCwVI4rfCx9UQTPVdb4RsXC7tlMfEA4IJYpS6zuJptAxEFujemRyw9fd4L
 ziaJV3dqig03TTCH4jk+LW5Uo1ntrqpquIQkViJDr9vR0UOQ+t8R4bM3cGiOyCHgm/dqHzQHguB
 J074Va1yoPA1jSdqhV1dtRaToQfUo0YFjHNF9WROfTc9akibYbwcVUqajyCAmy1KIUghHAI0IKH
 uCNO1E+qZsEqgdP4Egcf7qRqy8f2dfE/ItN9KFb2m9h7+83lqLpglrZDqJ24/H39Ijb2jtONA9s
 2YsXLLwe/Q7AnBG8pX82ySnpC5y+a5wVDM/yclnMsXGo5ddbdSLghFH7ir/DUMUiPx3UPnHngU+
 1e6YszMwC0rd82Ro9V1+pXdSjki0VmAvgg036AqHC/4ybQV9RKj62Yl4NpnQKRmzFZAOoQjy/AN
 W40clv6V0tta9+CWiTg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_03,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 malwarescore=0 adultscore=0 phishscore=0
 bulkscore=0 lowpriorityscore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602120090
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265065-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 457FE12D4A4
X-Rspamd-Action: no action

On 2/10/26 6:45 PM, Val Packett wrote:
> i2c20 is used by the battmgr service on the ADSP to communicate with the
> SBS interface of the battery. Initializing it from Linux would break the
> battmgr functionality when booted in EL2. Mark those pins as reserved.
> 
> Fixes: e7733b42111c ("arm64: dts: qcom: Add support for Dell Inspiron 7441 / Latitude 7455")
> Signed-off-by: Val Packett <val@packett.cool>
> ---
> Wow.. I was pulling my hair out trying to figure out why I had the "broken battmgr in EL2"
> issue that absolutely no one else had on other laptops, turns out I did it to myself.
> ---

It's good you found it..

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


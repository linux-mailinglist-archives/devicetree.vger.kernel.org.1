Return-Path: <devicetree+bounces-261754-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMnZLxKCgGnE8wIAu9opvQ
	(envelope-from <devicetree+bounces-261754-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:53:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 62588CB3CB
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:53:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5861A300D757
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 10:52:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50FE035BDBB;
	Mon,  2 Feb 2026 10:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R6bZyZQF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LEb8lv5T"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA7D35CB92
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770029551; cv=none; b=TGd9VO6uX8X0wuaT2KCEZpLMVOhu7emrtOUnWKB2qSxD+rrMwkem0dNJTGgIYKGOhXUxRY4zmn21TcpTmzDlTELYAUCfLK4OBgLAr7Kr82B2pPUnP/SLAWdAarzm0BUZWBRUHQM7nCVru2c2O/EMkSax7+oW09QWr2kbbdKgwJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770029551; c=relaxed/simple;
	bh=fCziRhWKBZuvP9alCWifj7IzAQ/mTF7ymEZmrRCQEcU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=llu/xb378PXTuJHaKE2vS2ao8XpZVkRWQRBBxnDYK64ZI5lk1eHqquK3KZ3ln3e6rBy6AmojqkFk/bzoxFXfljI85Z0BpNC34IOLQvQvx9DddGqF4lOzA3Gan3+xsrzZE5C/mfifomSF5s5i/L7vGXW1s6avG5tc9j2IQgtlkjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R6bZyZQF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LEb8lv5T; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61287RUZ721506
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 10:52:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dYoS3ICtaO5tPHkLCxC/P5GpAbef4vBNI3cEG9qbghg=; b=R6bZyZQFl+kk+kCE
	DXu3SWi6AzUOe+ioLyyiqYYOQ8m9Sa3nuVE0MTLBw1dj1ASrM9+3h77AzbLnklLA
	4ZUY23N0Xz8ptDDPt/MHuA2VQzlKFl7VyoF8zy5vAafB6xyr8tyLkJQOOZW+7OL/
	bKHOFx33Q9wluuLiUoxzEDeuBHP3Ps8em2vpcb9GOxoGfaKkWE49Db4FORmiDps+
	pIJA5h1hp3lgC0i0xaWJdGlwEpAT+01YaJdNbbmkrHYpzxJHNS+A5n1Yo6BEJNI7
	c5fNPwWjCVGFyumGHDpON94sagASyeJeKqlsq17Ee/4wVN+ZsPm+rFnN8C76Y8bd
	NYL7Lw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1ared2uv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:52:28 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-89481f822aeso11190626d6.3
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 02:52:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770029548; x=1770634348; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dYoS3ICtaO5tPHkLCxC/P5GpAbef4vBNI3cEG9qbghg=;
        b=LEb8lv5TkR8iwDi4frZacA5OISdAWHUqAjCyC5uFvQsHIlBRHsxo7zU5QN1KJ2KP6g
         iXoIZYGMLicGhrmfNbYoHZXl0X/+A7QQJg/+5fnCAB98G50kl2+2393pVYyujZhxOx+I
         e427WAKr4hXe5SPFzOztCjLN92lfocJZB6yXSpQLrqmnnTnP8Vt0y5GhTmFAZnmX+Wf0
         h50X9OKjKyp46nObSQS52IbZcObhrnyLaRaC2k1bDS6KCSpYfcjDo7K/UBHxfYwtg0FA
         RvlFbAvz54Iqk3I2bci5Tpjgbljja5A6Bty7wMKLpOyfw6/U3dCsH6g4HT0h8wygCgao
         WjnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770029548; x=1770634348;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dYoS3ICtaO5tPHkLCxC/P5GpAbef4vBNI3cEG9qbghg=;
        b=k3KJFVRFbaxXmgAhNZWBfFN6tVY+xAzrd0B7iil7Dx+zjUIzoWR3ZS1UueIrn/lQUy
         X4sI69aHRkRQoTM3jvOJ60/Hwbku8uqM6/sDYdpDR5bwHzqpoRwg5OTd7jO6OoXvHnJM
         J+kGu94fKkyoJM3cazpSm+oDd1oLTPrG2mS/3W9ms2V4YuXMRruCGZ44N25hMe5eOSMC
         DZgiJCWR7GINNxAvuk8s16S5Pb2M8Vdfn5Fn/MtjDlB9gMVsaZUxRzcr1ZVQY3iP092p
         r7cZLi1JKNd1LYEkKCq62vWXGEtsv2pBg4Ev3H8GJk9l0F2OXYs6qnr3e52yOgrVwQWk
         cyDA==
X-Forwarded-Encrypted: i=1; AJvYcCUbD6+gqqNJtyFARnobKZ2m9KMnHFysYaZXOxwOXNscgpHxEKFNeHLXBv19k3yOyTtd/+KBPt6O6xUR@vger.kernel.org
X-Gm-Message-State: AOJu0YzjnFirX+JdMLxBm00NdT4GLqUpE0kBWHJfgTpHduzj+3UJg4hg
	HEzFAOIkaYBmYQqI1KyZSanthb8rbFR4EbSAxlNBJjhMYOg4h0aayLD2OQf3bjvmfAVPAkKpDMi
	84LEU/AaanpZIer2cb4GXbqPppVAbrQFojoSSCyOJPgW5r9qAbGkFULyqBcgx9dx/
X-Gm-Gg: AZuq6aKTUXYHbMJ72+pA5IU5nOEwmJa3QCh3hRtrROE5VSPsrIAYoTfjAcF4fOa8tec
	bMissv+ncFVPoXeDVZ8uvsaGgIPfVWo1ra1JOMKUFijSLtNWhJwUPw85WMIlgH7a0TUGepM8iuM
	Mytvi7WP+l6R9ilRq+b5Iak18YU1SGpmIw02elPKkGVQkqG0SqPsGAOLzHBo2xPRy+HzCkFxje5
	SM3NnuOpu/wfjsSAtUg+vbHudTsbOL8CB8WPIsfJNs8dgoV/QWKolVAap76O93PyjjzliRDEYrA
	TfsjYgAGJcYjZqaqyZd1dam3WHfLyESgFH3I/4ws/RRhfj4n4IKPxmw0hjQK+PKamtZwKODIObT
	xGwhsEEjjPpd12rrO5dwzUrnW3twKNP37AlJBB5SmmleIIvSwvZSOASMlfcBp1ikA1sU=
X-Received: by 2002:a05:6214:4f01:b0:894:979a:bf7d with SMTP id 6a1803df08f44-894ea0fbddamr104961786d6.6.1770029548192;
        Mon, 02 Feb 2026 02:52:28 -0800 (PST)
X-Received: by 2002:a05:6214:4f01:b0:894:979a:bf7d with SMTP id 6a1803df08f44-894ea0fbddamr104961486d6.6.1770029547618;
        Mon, 02 Feb 2026 02:52:27 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b4691e53sm7513201a12.21.2026.02.02.02.52.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 02:52:26 -0800 (PST)
Message-ID: <5bd363cd-366e-45e7-b6a0-281e4c6bef97@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 11:52:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/5] media: qcom: iris: increase H265D_MAX_SLICE to fix
 H.265 decoding on SC7280
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260131-venus-iris-flip-switch-v4-0-e10b886771e1@oss.qualcomm.com>
 <20260131-venus-iris-flip-switch-v4-4-e10b886771e1@oss.qualcomm.com>
 <70517c7f-92c2-4b2d-ada9-9cf0fe9371a4@oss.qualcomm.com>
 <9c334393-211b-4b3e-b9b3-57700641933d@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <9c334393-211b-4b3e-b9b3-57700641933d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=NNfYOk6g c=1 sm=1 tr=0 ts=698081ec cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=XeJViENlyl3U9Cg1nawA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: AT9gDymDCwS_fsxT0wm3XfpmE-E_rMXg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA4NyBTYWx0ZWRfX8pJN1LEK6i6Q
 pSKGYDdbav4zov1iagsN88Jg1Ve2EbqeH3ev+WktxjB756BMXIaXFXJZ1C3R1rsEdNrHO7BriYe
 5QRtl/uC63/GGpcqO65rf38CuUBf28zM6iNZvtkzK2VJX+mXDprPeNNBcT/uFJT9zjqW/8ShcVz
 kWDXmnP4hwdRokkemB4pio1wdoH7/XPDC9ptX1NQI7rCRgQGwvLM4PPCbnTeG5ss2iUPpey2G6G
 0k5atJPFNuE0Pkpb5vJogMQq9GhCF1pZyfTcE8TRzMQvfWT8VgwycZkOeYXnqLAEfatEdQFRDlj
 R2LkthXtZtYxkL/qyzM8aCZb+DtduuW7FjWHYelz7acQ216E6Cvcgxu1HY2Lmd4f/fZOrO9Nw9c
 PUW0eDtkzx1Jz+B7cvzfnvXqrzCQMgRPbHNEKpfwGyE+DWl8aEtydO25I1/wBl0jGD1tMK2nJJl
 eX1WkKjt0IwKOMy1qDw==
X-Proofpoint-ORIG-GUID: AT9gDymDCwS_fsxT0wm3XfpmE-E_rMXg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 spamscore=0 phishscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020087
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261754-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 62588CB3CB
X-Rspamd-Action: no action

On 2/2/26 11:36 AM, Vikash Garodia wrote:
> 
> On 2/2/2026 3:53 PM, Konrad Dybcio wrote:
>> On 1/31/26 2:58 PM, Dmitry Baryshkov wrote:
>>> Follow the commit bfe1326573ff ("venus: Fix for H265 decoding failure.")
>>> and increase H265D_MAX_SLICE following firmware requirements on that
>>> platform. Otherwise decoding of the H.265 streams fails withthe
>>> "insufficient scratch_1 buffer size" from the firmware.
>>>
>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>> ---
>>
>> Since it's matching venus:
>>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> As a side question, is there anything wrong if we allocate a buffer that's
>> bigger (or say, vastly bigger) than what the fw expects?
>>
>> Like, if we allocated 10 GiB for $reasons, would the fw just happily
>> take it?
> 
> Yes they would, as long as its bigger, they are happy. We are already struggling to get the usecase (concurrent ones) within 4 GiB, and with vastly bigger internal buffers, we would even worsen the available iova.

I see, thanks

Konrad


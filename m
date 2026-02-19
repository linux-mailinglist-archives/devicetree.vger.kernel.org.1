Return-Path: <devicetree+bounces-266603-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJPAHdfVlmmVowIAu9opvQ
	(envelope-from <devicetree+bounces-266603-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:20:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D99E115D4CB
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:20:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EC14030276AD
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 09:19:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B47D3346A7;
	Thu, 19 Feb 2026 09:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jMFW8Jee";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SNLPFLUd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C112FB965
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:19:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771492777; cv=none; b=XRwAWU/MoLGibe8DbN2QTOtupS4c116Wm6WUXFzTx0UfhWMTXXazmzwtUBM3GGelXAt3VssYa/oba2wrKU9YzA2Q2tYV1HYPZESRSsqMCABnohlqIslHha/VyU/D9jHUVpEwbrB+yT6jnpBcQvPiu5XKxZHTFxeWQeJz4mEAl4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771492777; c=relaxed/simple;
	bh=kisVfgvpDR5taz707UhZIUsAYFSg3p8Ww2QDn94jDMw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BCPTlDtsSMhynDmX8VhRz/TohxgikyWFCZhG2xBzF/VEo3c6UJWhtp48QqmgbGVpapxN2mlgmuPflo+87rH7s96omI/De4O2yvBEiEy/M2ytr8oc+B/qVZP95JVt7tPpyRJ1Ek4Wql640HJgi7VdzQdNWFJntZ8E+oyYts5Jy6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jMFW8Jee; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SNLPFLUd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61IMk8DM1167965
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:19:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HUa3BE0u4BFm+LYlkvToA5YziCF+XeAij7ya4biirpo=; b=jMFW8JeewWdvnNUs
	/3IQLKhEmK3rN9bFq5sHoq2+hiOoH3bhUmKUZk0FESRo8v5IlxWkfsHdkdc/7+JP
	Y8AEhN0p32CZYkQuFmyRaPQV/Qa3QLDcxqDQaDvmx/Gu1Ky+PoZvhv27RjlYngml
	kMBgTGgYlHL7L9CG+0jRqsz4TQoZo6wwxNvZvY8+FU1eITwG85MqA4utX16QwE7P
	/G5nEHkTHPmh0ycdBXuMcch8vNSly9I9cteZRNmfvkP1vVkMADdKCVZBXGWQ+xnF
	knTTafXbRtvXp1DBYosKk7kdgBxr48AuY5lVHWzuPyD8pp6xJ3OGbW3/oOBExO7G
	kNnpRQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cd3ahcd2h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:19:35 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb38346fdbso68352685a.0
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 01:19:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771492775; x=1772097575; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HUa3BE0u4BFm+LYlkvToA5YziCF+XeAij7ya4biirpo=;
        b=SNLPFLUd15/sSIhi05d28Xfwq3YVJR9SMiKtsYD7VAHdqAknb9InMXjDNomKpKQgK0
         l+uIoRQG2ggdb/AOXRtNsHWlvVFNb6Yn4jqFkPL3pcd9bp9lWaMzK/gbL6u3fpUvXyNj
         tPWsR7KZ00lq7t2L2u0rOwNbJH4/G1EMyYFbU1nwopjmeCCNJynhV29N5NGZKIVyqeP5
         D0nkkG9rlI8zk0Le2BeG4vkdMAMRQHonJDdrIa4WPb8HqKvleR601vvLb1poiZkv3dDk
         /LYGru9t5zfnqiN9vhvL4fuWbKjt39FWvU03nn9Cu531nPICcnmeleR8oS0M+mLPt0n1
         yR7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771492775; x=1772097575;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HUa3BE0u4BFm+LYlkvToA5YziCF+XeAij7ya4biirpo=;
        b=n3afu+4eRFHqpLbC5cTbVwQ3FyMohxhyNb0+8rpU1q8QfjX+/+iC0XAnJ1e4Qz7fuT
         0FWH3/NDgT/A+m/z2NrFfKTcaiOJA01VwXDVeFRb9iKB4tRVMqulIViVP2TWhS0y+GHc
         JLG5596fZ/aVbOOu2GDnUdO8hZLG0r9DbeDckArra7zjM40sLHwrWC3Ih9OoXgkWIspM
         hu/czb7XQfPMDZ/mYX6leDSPFqepfYbnrlw+qsc2UkXlUJyQpT72NJ8GiYCiD36REju3
         HmzHwZlJlfmlyPl758BwgVgTjQ0VZ4cejo8Rt5xD/nmuezdQRki0/okiTfBpLXpyXyb2
         8bnA==
X-Forwarded-Encrypted: i=1; AJvYcCWUkHn8jKz57kTwNcUu5C3D/TEaR4CQMe+CfqrsOnTYG6BJIsUzPBknzdCcoueQPcvIVyBfj58Wenck@vger.kernel.org
X-Gm-Message-State: AOJu0YzGWbJHCucSmZU4cKYiwb9/JwQZfIUEi3COy2JSRLatfUKt/g4b
	9VZilbUmoNuuz39pCNUeIq9e5/xHZpk96UR1/LIhCJ7yjYIGLUzbol1XgGfLw0SKQuqQpAgnmI7
	rxaZHo0Fcv/k7fK6UUNDzy8eEMepjgVgRTIyKvcScPFM04F1Eszak30PC8i4f1wmF
X-Gm-Gg: AZuq6aJ3qfMToaY+m2IOTUEWwAV13YxL7gIdF+RGUQF4AvqDuf6AwyasXSQxRYpFjoH
	31xMlSgvK84edn4jVTeaaCNH07kqsyQ8OZ91F1m4Io/oqf54FMZXCVgcrfXhaKaW3V7Q/KKKYeP
	OawlJ4NYn5JIn1amzn0i9oWrTejEKFjTjVSzbpI4n1YdcIHKgICcP2+YKk/RXlYYwT7hQjn3T3i
	zzh4ukdULQXtAxUuSvhTJUnDq8N4zeOIWnD33Okm3jerwL+dVCaR0fTITF+pN+xy0jLq6uX8F7t
	Tu7VCety7BawfRh9mIYgDNnOa/Tm/zTFV3aKrxam7eKUfLCgBr3zBJEqIrFcdIP6Onhm8KZV59E
	z4aRlvq1VORGxnLOogbWta8kjHcTpxanidK5vYnwEKCZNlRyqSXY5LCeXnvPe+zCT/XBM4fuCsJ
	SCoPE=
X-Received: by 2002:a05:620a:708e:b0:8c6:ab77:f95e with SMTP id af79cd13be357-8cb4091adb2mr1898499485a.11.1771492774696;
        Thu, 19 Feb 2026 01:19:34 -0800 (PST)
X-Received: by 2002:a05:620a:708e:b0:8c6:ab77:f95e with SMTP id af79cd13be357-8cb4091adb2mr1898497985a.11.1771492774235;
        Thu, 19 Feb 2026 01:19:34 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad19bf20sm3877565a12.5.2026.02.19.01.19.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 01:19:32 -0800 (PST)
Message-ID: <872d5559-5a8a-4943-a8fd-07fc934d29d8@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 10:19:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] arm64: dts: qcom: sdm845-axolotl: Drop redundant
 VSYNC pin state
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260218-qcom-dts-redundant-pins-v1-0-2799b8a4184e@oss.qualcomm.com>
 <20260218-qcom-dts-redundant-pins-v1-3-2799b8a4184e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260218-qcom-dts-redundant-pins-v1-3-2799b8a4184e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Zo3g6t7G c=1 sm=1 tr=0 ts=6996d5a7 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=NMe5sQuIffPLTvoV0ecA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDA4NCBTYWx0ZWRfX+/UUSqQ6W0E+
 NaUDlIC2lHelHgbjwyDl9jBUIupaC7vLd3PImUGrtfIcT4U1p90oBcUh29pPNQSEF4JU55P9ICL
 NwR9IgqlPUEvFu+00WCDP3l/OZ9+9gLdQHmd0ZqGd2lAgq48Td4Sfhn6dIDVFOgynwf4ozDsqeT
 sw4xd+t0O1qvyUJ33I9fy154U8SiQpQycBZS2b/HropgdqTTXZ23fMFzABSfAbsRyBg92QSIMnw
 25WbzWWg9zKhWlWVxax/MpXUk8Qf+VGfJD9r3RMHsn9Z45kRnJg8sMk/F7dCpuzcNgkNL1NBck4
 4frfw1xCihjq84vpZvF6JwoqfZqqtWkaDxkrZzBOp4iYCoPsZp+3zKN0aQ0XlBfQJNpTgeyn3xt
 mWVf++jE8jcmWMHg2sMa32IUTkbmZk5FIldiFwYbXIFU+65zrte7gTEgGbHQNfFDat40vYXAS0K
 to1h5iwmeBO2IUH5qdg==
X-Proofpoint-ORIG-GUID: qSF6d9WBGA2uqScVhmMF0UuFp4W23NyE
X-Proofpoint-GUID: qSF6d9WBGA2uqScVhmMF0UuFp4W23NyE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_02,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 suspectscore=0 phishscore=0 clxscore=1015
 adultscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190084
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266603-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D99E115D4CB
X-Rspamd-Action: no action

On 2/18/26 6:24 PM, Krzysztof Kozlowski wrote:
> The active and suspend pin state of VSYNC is exactly the same, so just
> use one node for both states.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


Return-Path: <devicetree+bounces-266132-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNOUFRhnlGkpDgIAu9opvQ
	(envelope-from <devicetree+bounces-266132-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:03:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C25F914C4D2
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:03:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7916B3061CF9
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:00:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E1233570D4;
	Tue, 17 Feb 2026 13:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DTzlayDl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Y6qUiBVg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC78356A23
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771333228; cv=none; b=hJZYAM9YtwRFRBkllUtCQzSMPwFs+lEP82Q4b8K/XM3nbhdvpTutanp/GqfXudaYmWyU2+rDqcqymZTlzQvE0p9MA4RN6rOw02S7/MT0K6PD5s7PDuQf9Q9eNxmRoiU1p9wAF3FsSSMIq839RJspUm44ztdQBlKeqDsBkyRv3tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771333228; c=relaxed/simple;
	bh=38zneP+037Vy7Mbk+7KlLjFuG+3hjob8r72QOd9MDa0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=cxC8b/CPg1i+h0kjJojMpngg6ZbuQeXrvpDi5j1Y4AubmMnLKKzRqyyfzzwKhjrbNMawZ149gpmzqA9jMsnlCXA46ozj2u0cZ9IMay+jJtmMHWNMgmE7ss5G6Xwl7nO4GQg5laz7HswHegUzJQS2eS07m7r3VngH0SkeKb1a6s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DTzlayDl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Y6qUiBVg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H71aWM3392808
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:00:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	n30d7bzwJAIRQwkxdoxxpoTkiSLbasbG65uhCKcM8aM=; b=DTzlayDlGdYju8fa
	yAFmDByAinRgzVfM6SWSMPjFxaivGX6MaC62mi/4vJNmg9s6XeqTrmXRUUbv7mtr
	9dB3bd0Octj5btmEE/Ad8cpF1BRoB1IPLak7Xop6n14+mguArVSQdTPOMC+mqNBo
	eQYg7tRT3tUredzttD2SZQ3wViNImzbS2o6Xzwb78imntNPA+AgfzcWdELY0rZn0
	57Zm2zmby4uBtrtWNcdTI+E64fjXD/ibKGwZ369VOgipC3uNsm1GET1CZaZx+3NE
	yFQQT6tiOW0nFY1+C3XJhHjfTzNqgrRUKIFvzyj5eTUdbVFDAISE0doaGJGQ8VyP
	VXhxgQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc5khakkd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:00:26 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-895375da74bso29111376d6.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:00:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771333226; x=1771938026; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=n30d7bzwJAIRQwkxdoxxpoTkiSLbasbG65uhCKcM8aM=;
        b=Y6qUiBVgdcuj26a65LfLbcbp5Hqqx+SqG+0ik6IIDMTYMBKmBeBDcl+zB3BKGkfdep
         cA/qJSRkQXJweuHmtrVFLp/J8+ItTXRo2HqDnMN1jl+biga8wx9Ay5mQ3O+VsLvQELGJ
         rmTnK7aBaE96Lpcfe4bDYeHi4cO1682lBxxfYhTd9drJP3R3g4tAA2tz1Q2+nJgNrvaY
         XjDGfSgDxMhGs6w/doDHC173FaBeaX1ptxl3TxHOFlirZaITBt1sJ0wQaghxP0/eRSkJ
         msjUw1o0TgkugMELGqszFsELWo2a3LV1IMphyhnYmdxZjtBnWVhuevt0hvP9euBLjkqL
         +Hpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771333226; x=1771938026;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n30d7bzwJAIRQwkxdoxxpoTkiSLbasbG65uhCKcM8aM=;
        b=TlxJKsan3RNO/k3tSRZC1ooLVaJhEKdtZptjVKQlVybvXe85FJBx3Oz9rgEx/eAJtG
         Yyffw1OnHMOb/NZenjziOSjkZ42cNprXVvpY8yYC79yxFQa8tdEaIpmLOL8YXWrvm4yn
         rDEjOpEc04+i0pk/DdF6U+eYOu320OcChoQH48qy3cNhdndBnahTFT7xmllsne0G5Fu4
         jSIUYhXkeuUk4wO+F1b7CTqlbDXJkctQKOq6OwnNDvqpwtnSusm7ZeESRtfC0M85ke0i
         9VLZ8h/MQUEj80zOBSWxA345GzvGFu2X8BtJkTRJFPa3SI10uyH/KGbKabfFpZu5Hvzz
         9/tA==
X-Forwarded-Encrypted: i=1; AJvYcCUtlclVsa9dV5Hd3Am/TU/GaEzHk79Okh9/QbaiuJWVrthaY1u7/T48jBUANnTrhX1ENxWUqANMwuuP@vger.kernel.org
X-Gm-Message-State: AOJu0YzrlKw0d7uYCFKFV0ljRuSuLV97NiS2wWI1OHnlIoHZ84GUw5fU
	NWm4Hxfc0i+FQ7Ot+YyJM9m/wrnoRN2t6jPtOEf0tZKyHvX8Io7TB78o/WaSSEmRvvY4Gd3P+/N
	rtNMBEzcUdxKMyH1uqqxyO4++ypw85UW18jCOAdZb04QjwpHzRihPNvXePXj6Uv52
X-Gm-Gg: AZuq6aLOw2HxpwfmddwgoXFxfdRPf89EA0jb7nrxlo4snKXMXW+1Bj/fJqdaxp7uH8f
	7Pl67GcQ5pJLMqWAuK7VE+PyoI7KY21YcSJeWUq9tN2JkPSCwykiNw/po/KGEAIKR1etSNK+Vio
	5XA8f0WsvkoiclB61PKSrxhBiTMCvmxVlvvX1g1Pe90AWTFdZpVoC1awVrqCFZ2Gj7g60gkFyKJ
	wbm5qxR0VGZ1KFQCJBN/2IkCWFFmfuyIxFQhuvjgHEdOG7LHS4nJIvyKD9LgWSpwY9Ai47nB4uY
	lnIoMzQjPoXSHAA5WtlsgcR1cBWUnsCnilshknoSyDwEsfvqVj85g9sA09OjmIrnLCpYNvWe4zm
	M/kTU1mVlDdEadYgBRNRA8BDOmHrsD+OF8Pifb4stXpD1gN/fwGpdeErfZmLsnIxWcq1IrZI5o0
	3H2CI=
X-Received: by 2002:a0c:e002:0:b0:895:3b2c:7708 with SMTP id 6a1803df08f44-897346241b8mr142991976d6.0.1771333224398;
        Tue, 17 Feb 2026 05:00:24 -0800 (PST)
X-Received: by 2002:a0c:e002:0:b0:895:3b2c:7708 with SMTP id 6a1803df08f44-897346241b8mr142991386d6.0.1771333223961;
        Tue, 17 Feb 2026 05:00:23 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc73f7b8asm346310366b.27.2026.02.17.05.00.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 05:00:23 -0800 (PST)
Message-ID: <fd9a728e-51d7-4c8f-a54a-a45b2ef0038d@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 14:00:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] clk: qcom: De-acronymize Glymur SoC name
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org
References: <20260217125819.281209-3-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260217125819.281209-3-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Coyys34D c=1 sm=1 tr=0 ts=6994666a cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=Rh8BIR2qzSpX2dRZ-WwA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: wzdqY3ezFsbpwQldaAwHCNOssziW1Snm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDEwNiBTYWx0ZWRfX/W16o0wepZ9y
 9dN/DsnnzNaenysSodd08misa1nzifJIDKOB967PbV6M00TBbH/Galxt0sJcmIGrBWyfuuNuvba
 wbHz/YTljp4Uy3q9mAwJX80bzpA0qTkbN0GHDxr5NKXNGfrKKeBYIm7I6e2X4SrOyiSPPDfURrD
 CA5UMSgQYnWzVSbtZITbcCpyZ44gECi/KcQVDgzYDpLQlC2/Q0ee2xVpH1xHmWwvYL9QJfkZZC0
 ESPKnemtnVK+o/erHZCXwgQsLT8Driq0WO/vN0oFa8ZyBcrYYBcqhcaN0yndfBf9R1cb5VSsjww
 v5BR4HFfgW06COrWSTZ/xiCkD5rejp5xVLwOXdRLnlJ67r/NQF4sd/+suQHu5nkMbDIUbaBt87x
 hr4tJxUKmacP1A5YvMlxMIVOvpC2qbnx/VwJW6EFECrVzwNwWQ4GGmcqUodoVIQQ2yy9HTm39l5
 ZNC5Iff44qRtmFnpApA==
X-Proofpoint-ORIG-GUID: wzdqY3ezFsbpwQldaAwHCNOssziW1Snm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 impostorscore=0
 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170106
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266132-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C25F914C4D2
X-Rspamd-Action: no action

On 2/17/26 1:58 PM, Krzysztof Kozlowski wrote:
> Glymur is a codename of Qualcomm SoC, not an acronym.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


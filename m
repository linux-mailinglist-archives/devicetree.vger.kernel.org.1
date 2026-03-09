Return-Path: <devicetree+bounces-272919-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NYgKd6/rmlEIgIAu9opvQ
	(envelope-from <devicetree+bounces-272919-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:41:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF24238FE4
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:41:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 41088302C31B
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 12:40:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C22F03B3C18;
	Mon,  9 Mar 2026 12:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lensM7Pn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Dp/7OgRE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87CA6211290
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 12:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773060049; cv=none; b=iJ3fdVMBlwLhwc/VfrHBoNfK+N31tukthtxTSDt5RpeezX/h/nhtatZ08ZQoID15TulByLG+v2hnJ+gnn9QMSrwbUEXPl8Dme3E3992dpZkKX0FPLsZOICU9BY9bLxHxxnEjf70UcixxYp9gAkveGvSUAI7SaUyJvDqJdEpKvOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773060049; c=relaxed/simple;
	bh=MYJg87+h1GypK3BFuf9x5P0wTJERCZZyAIVq14TIiBE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E3gvFilOOnXm9+YOXsyG5H0iozY+NbN20RZ7bd2miApQdR4UZQI0dhzaq8lDRqkqUmU1asMyvgB1pMP+wgb3c2i3VrPRvB0f/uDo9fTd418B1QHfwCaaxRWfCeooiDxx9wiAox2LAg6zRMTXimm2LnkkcUIAXEu/BfayI8rNDCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lensM7Pn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Dp/7OgRE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6298IuJg3464415
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 12:40:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D64kSqY6cAa9Cj/SSY1ECRkxZJurklGeb+Zz6SzKqzA=; b=lensM7Pnn7cKVFzq
	3NtWCxGYBrWnlSlIBZtsvOGTFNjvhllsZSxOyelBjUzfKOXy9GT+QwBOMu1FYedm
	TSs2obVrgK8eUQGFeskjo1ndsLJNT+n7c/JEHDYi8gvdZk2ZrryaLpBaWWnLTh8H
	Pf9vm+PBuGJkxgfN2gtr+sR2uYJ7u4xNFskOLmmuymbNWIvBMqUwTn5VQ8OUPU1W
	GmqqSiBxfqWMno9Qa33g1Jr3jhmb4Gdf616nYpQNRh7YQNL03oYxuS3VoBdsMmeq
	gdvls8pl/alTNVqBCJFukbKFQZDloc51erptDluLCNyGl0cg2HZUQE11Ks67ulVp
	PRHSTg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crcd8dbaf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 12:40:47 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd7604c6a8so145315785a.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 05:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773060046; x=1773664846; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D64kSqY6cAa9Cj/SSY1ECRkxZJurklGeb+Zz6SzKqzA=;
        b=Dp/7OgRE7cqo3Xb4UPpLlugCTBSaDteq+7rjeDjEhH5q7thVMLNLgJC/XFTIRe18da
         LnH+vFc63MrnR9VUXMTY2Ku5oA34bY4KHpYHlaYleElnwvCksrWEQyeI6uhYwqa3uW2F
         iPsrlc4cFh+mcVANycijVjr2z787Lt/fO9b+ZW4eErJW6gSyZRguWNZQbKpO87zEOeAq
         EIJmnbkhSVnC+GszgtQSUkVOV7CRkkcFeIXKDclgPxSQ2AYAfj7WqzmAJT+DcfOEVVS0
         A6GtWrDkVXvCWf8qFyRCkJ2RrODVi45vzFPzoRUq9QvVSt0bwKBHY4bxewJxUsgYyXSV
         tb8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773060046; x=1773664846;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D64kSqY6cAa9Cj/SSY1ECRkxZJurklGeb+Zz6SzKqzA=;
        b=O0PPnSQQGRGu+7BLu0Cg1IGbT0Dx+uieq8EXFq0fdGU6RrxwrQI41TSCZIT1AIpT7t
         04iCKVU60puOHNsd5mb3bC7/wZYYFZOfKA+A0w/ZDrf8TaWHPmudteO/wHwr0hZqNwnw
         xI2xUv9Vlt7bEnwtk+NvLVxDoy7AYHJK9/MjniKWzpMm2Mzyh1kWQ7b7KlBFiVUhgA/d
         srrbUTL3i4V1z4OXxKCc/urSz11Fh9UkuNB6gfnMI5PpwReq/L6IPW3+l/mrri6TRvEF
         TV/Om102KzxfXfIJokQa8YujgLRvhW8W0B7FhmNHarEXq4hvxOEySD+1wSJH+zvp0r30
         Ch2A==
X-Forwarded-Encrypted: i=1; AJvYcCUJO6T2jGqr32RyJznSo8F5bAU8Ne15jJeUlxkDaHLqiZ+FDfFKYtb5wsSNMQnAijXakJjtqZN8nW84@vger.kernel.org
X-Gm-Message-State: AOJu0YzqXseB1SP5YFq7WLSRXazu0D2RPUL7PjYKmKuB4lVD1w9hJ+PQ
	HNrfXqD18x0tIuJE53y5hLAt9M4FrRPCoA/nAZ3qMbe7vqn0DQbPp7YWP0TUJHgpJwPbU5Ao2FG
	xE2nFs/tdkUVnT5hCqOJpqsVdACaOLExDtuTCWOEfJLwjfhS09t9lD7eOvMtBmAa7CbB+bZrN
X-Gm-Gg: ATEYQzzBjWOcT4AmH8oCVQHmlU0eR0iw7iMksxDiGyftqQDEURr0w4AuKpwUNo/SKxa
	4uvmCdvEWGmuDwOXheKrzy+PFzXq8FEiBgnLECKX7pviuOIIYNYimPgm0z5cz/0Z/WoTZOXL1N3
	RtnQB/wrxDaP2eJQ1A8c6bAqtipU/oPcbMHUoV39sa8YMUSQ7C6u8JW/Gw0V9gCxtYtJ9VYZZTr
	KnDhIRpNCB94YSxLmf103n0DKoLfHSD1Gun6wIV7PvRT70umFRMBdyObUDBhlHaQYvmGer8N3Hl
	UO5XdzGP7Ce6Whf/yTUpvLKCpIl0JpPl1QuaqADyBpH1WynWZYnRHnWtOoksEoViyPfT0oFV3nc
	Chyfl0gIMrpcEpuLPVaF8HX8jbNvC2Je/WSq9Ks5zRV7jWgRoexXSn+RX4DMDE/E25JfPSW/TN7
	EvIzg=
X-Received: by 2002:a05:620a:370d:b0:8c7:1aea:53b7 with SMTP id af79cd13be357-8cd6d49009amr1126466485a.9.1773060046392;
        Mon, 09 Mar 2026 05:40:46 -0700 (PDT)
X-Received: by 2002:a05:620a:370d:b0:8c7:1aea:53b7 with SMTP id af79cd13be357-8cd6d49009amr1126462785a.9.1773060045845;
        Mon, 09 Mar 2026 05:40:45 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942ef42ac6sm367631266b.11.2026.03.09.05.40.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 05:40:44 -0700 (PDT)
Message-ID: <c9acea8b-1559-4fe7-ba78-f3cc61a05d72@oss.qualcomm.com>
Date: Mon, 9 Mar 2026 13:40:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm8250: Add label for
 reserved-memory node
To: Alexander Koskovich <akoskovich@pm.me>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli"
 <gpiccoli@igalia.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260308-sm8250-asus-obiwan-v1-0-3c72941eb796@pm.me>
 <20260308-sm8250-asus-obiwan-v1-2-3c72941eb796@pm.me>
 <20260309-orange-coot-of-speed-b3fa28@quoll>
 <7641f6c4-6d80-4d62-b963-734371b14750@kernel.org>
 <NyBYVOuujgzbrN9E_Y1pYyOJMgys_1tE2jUI80-mtjgzxXUCQLaw1ZxuGVPpBANTMTQPsH7OhUlxkSRt7b_hiekBLuzEgPswCGy3_MqT5tY=@pm.me>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <NyBYVOuujgzbrN9E_Y1pYyOJMgys_1tE2jUI80-mtjgzxXUCQLaw1ZxuGVPpBANTMTQPsH7OhUlxkSRt7b_hiekBLuzEgPswCGy3_MqT5tY=@pm.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: SMgeAL-i3zb4MvAQ7MQNC1pzvMgi-Wu7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDExNiBTYWx0ZWRfX72pyinAPTEX1
 KCL9U+ndcMLifWityOBdV7xZQNgcx4Or7YVU4C6DsS9+RVjqG0Plaffzl7GmaXZcmTpaT/YxGPM
 zq5pp9B9sgMAR7nzgvCwYe8xE7in4tqHlcVNx3T8+03eZiYP4O0bYAqWoOQzfSiSdrYauDuCX6n
 yYJNo6/h2IecE2nqpq0FWIQHtgCPUjQBXtyhJ1FKL4oduRpl7hS2cGs06CHuoyyM2Han44pR+uM
 Gwbnpbl64U7NpNdwpdpShXf9gagFPXgGf+U5yMLwVpuXldCRfwvm0HP2funbUMu/5J2y3fVTNqw
 UHtPuX3tqzWtvzOWMwGfa/qx/Yt2FnIzmfozgO7RA5+sp42jXMVImP+XoQdYcXI0giPXfcnewfn
 M5iuC23ZYTpiXWA+/eo5Dq4EWOi5tm9D2rBEeXTjaBbpOBlZsy2NBiW7s6lgn+UcBNGoyXdB0G8
 TbM/BPbIES6yWjzah4A==
X-Authority-Analysis: v=2.4 cv=O/w0fR9W c=1 sm=1 tr=0 ts=69aebfcf cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=9qU7lu9XUZqo8ZEGW5YA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: SMgeAL-i3zb4MvAQ7MQNC1pzvMgi-Wu7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 adultscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090116
X-Rspamd-Queue-Id: 5CF24238FE4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272919-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,pm.me:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.977];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/9/26 9:08 AM, Alexander Koskovich wrote:
> 
> On Monday, March 9th, 2026 at 4:00 AM, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> 
>> On 09/03/2026 09:00, Krzysztof Kozlowski wrote:
>>> On Sun, Mar 08, 2026 at 08:40:38PM +0000, Alexander Koskovich wrote:
>>>> For some devices it makes more sense to just redefine reserved-memory,
>>>> for example on the ASUS ROG Phone 3 it is completely different with the
>>>> exception of hyp_mem, xbl_aop_mem, cmd_db and smem_mem.
>>>>
>>>> Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
>>>> ---
>>>>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 +-
>>>
>>> Same comment as before. This makes no sense as its own patch.
>>
>> And this is v2, not v1!
> 
> Are you saying it should be fully included in the ROG 3 patch instead of being a separate change? Can just include into v2 of the ROG 3 series when I resubmit later if that's the case.

Yes

> Oops on the version, should I increment version of a patch if the contents themselves haven't changed? Or is it just for any resend of a patch, version should be incremented?

All patches in a series should have the same version tag, i.e. it's the
'series version'

Konrad


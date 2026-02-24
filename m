Return-Path: <devicetree+bounces-267714-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKWsIwU9nWkGNwQAu9opvQ
	(envelope-from <devicetree+bounces-267714-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 06:54:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBFE182383
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 06:54:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1EBC230293F2
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 05:54:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FF2D2D0614;
	Tue, 24 Feb 2026 05:54:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mZKP55mC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Xp/bKiA+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B3B2C3757
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 05:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771912450; cv=none; b=TTb4OU7FFf3mJYsdRT8bHod+Z+yNPwk+CbTCzACp0lzkkCH0l1Vm29MazBc1OXzYDzdkQ2bWMEQf5QEPLKYw1EugCnarZDdUKwG1p/25797SD3cS1sQXVb/KbKMfrPtHYqsZJ9lINFLV1bIrk3jEFIRgtn4CGL7OAANCb+WVLAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771912450; c=relaxed/simple;
	bh=Hz/eoSqvEAlFesws+qniwk1kpd6/W96nDauEJtPDivo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MoEcw+vy9RWya1SmQH7d3LiupX47id47wYJV/Yo1Vx/b5YMFL0TykGvJ60nfLvPCwG9bmy90IbIg3kpHsHyKsDa8JWjNn4y5joAJ173HnQaHhgrj105eLUQvMkm8nW/sm3oVi8niS12zJZGYpT8NS+uHgAfCHy3TTM47CdqstQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mZKP55mC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Xp/bKiA+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O4NmVp2016917
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 05:54:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WMavZ0sxm8QIKKToV78mwg8OO4gSQCi6g+RBk50huFE=; b=mZKP55mCJpfBCPU0
	aOsnJomEqa8hyRW9nun7l9Mi3xBWZwK0jjMPGAfH0yvyd+Q5DONZlwZEUvNzZJoA
	jetj4An5XYhUx24roebi6cO5PLaTJUQIFg/0K7sGUdui5F3PXSQ3ZfWwxngn514i
	kPiumspoZshO+KVyrvA2jSI/+ybVfl4NPyoEj3dfkeAuBgZG6dv0T2NQkZiX3QjQ
	xfMFzvifoCJfIQKcmePerd6Wf0k0HvRPycX28mki2/gUdCNRUu+Gs7GbggEVuMCr
	VfKqa0DR2Tw6bXv0EyIi0xcNQ3Gu2SGO+X3L7Eq35LE9iNpe5t7hD3whjgoZmpK1
	sW4BVQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgr69jgkt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 05:54:08 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-35301003062so38630532a91.2
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 21:54:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771912448; x=1772517248; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WMavZ0sxm8QIKKToV78mwg8OO4gSQCi6g+RBk50huFE=;
        b=Xp/bKiA+G6f7xEEZwlSgZX0pau27TeBREYedT1SnH51p/Z9fSEwogNMd76h+uOme3H
         lNT7ncGlRbywtIJfgLBEASH3XrMd0uBCu6CfARNMm9nG+95scW3Tp/iNyhY5O/lqZhQP
         ZmuaBiAmlwm608I2Lszgl8n0wCOLEmvIkLXDTVi1kKWH4mpu74slxBQcPaUR9hiFmq2i
         YHB3W1jfLqOg/CJNS8RDtvT5gf3zM0HluUziYD4qMkfKihNtOzDTWD4+JZomEIIdncME
         MEQId4bW3Srimc+CrbUPhvEgrJQXqrlGG3k9Zul//qFJnJlFLuyP5SMtCd/jR+f9ss6I
         jTUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771912448; x=1772517248;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WMavZ0sxm8QIKKToV78mwg8OO4gSQCi6g+RBk50huFE=;
        b=FB75ZN9AZj2sejPLW05JL0RqTb2TLgOPu5iZot+88Y7u636qw6/VFs4w4CPbJCNVqE
         /24W5SOQ8mDGq1WXXEpC+F9vYebre5JOT1iJsFc7MJ4w6haGKqxdq+plZhY2vVkXDou2
         d/X2P9r4SAfLzLDGvGzHWxq+/LjxZFz/RaxCqfPI9fI3/IsDzo8h1pn9znHFbGmolaCE
         kWLD1TNMYja6ekMhX9yEST2h+eLQ8IX4KY5eegxLIdQfSjf9k892ehSFu+/KW+nVpVln
         SvJHBx9FND5V4W4oxxRbMTlnhI6/7pnmoWLTJ41QrsqDdRGOo7FLfucOGT8Rw0wqQt2h
         af4g==
X-Forwarded-Encrypted: i=1; AJvYcCXxlYOe8A8o1IxjRg/EpfpQ3MciIRBzClIXNZLVu/f5yDh0JhMyE6i8oyXGQ1chGMvIKOGRIC9rVKpM@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8YEnsbGXO7A54n0iZC8Q+RergZJO5a3iNYaYqTFWYSvfKqOFA
	UVPrYaw/qbApa5l7P3PARAMbSLGHJIhRmZRwfKFyI+RFVh58ydxjnNm5v4bFGP3nbIYJWhPuX1i
	ybKwEF9GTyIysd5KlCExTSc8hte2UVeoNdWEG7XLwBWx/9ZW51b0oWmhJuHgqrMAq
X-Gm-Gg: AZuq6aJ26AzpXYeugoJAxK7QNdg4Pcz7sQlLuK5bopKN2HjLnjh7CxXcLH3kL4lCSRr
	ba7eON4yUn0WjZbuTL6ELg1DaTuRk6H1NonR7Bg+7Yc6MyCCnX8rjFa8x92C1sS56q9fs7E2sR+
	exw4SiZiBMfaIEsIdrJRb7XIWT7RUJeHmmCR/D6zhLDgBekdfRsPwrXVCGxsYIZmTyvY/0bj2Al
	bpeiMaNcklbX38bo/gJ8uXjRJ50qR4j2SBnLSLrY4QPA0SLSjIcmDIcbSrMhRPWouMflPO0iVp4
	vK5ZUpkzK3ufUCVazwxvp5Mu0PJmJzQnYcip2hNga6dwPOgA4EEVToFdGNV5bjMniExZoa8REge
	h9cSM9uupf+nWEOb1lx7ExHpxAi2dPZ9iZ5qYPYMjsrY9Q+57kw8awc4qjDHvrg4mrotoTBTcHJ
	L160LqGzsyTdTFqRWSq0jzFnr319IwCyfT/xMvkQ8=
X-Received: by 2002:a05:6a21:31c8:b0:395:1b4d:c683 with SMTP id adf61e73a8af0-39545ba8c40mr9319051637.0.1771912447685;
        Mon, 23 Feb 2026 21:54:07 -0800 (PST)
X-Received: by 2002:a05:6a21:31c8:b0:395:1b4d:c683 with SMTP id adf61e73a8af0-39545ba8c40mr9319032637.0.1771912447224;
        Mon, 23 Feb 2026 21:54:07 -0800 (PST)
Received: from [10.190.200.237] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7500e1e1sm97509475ad.55.2026.02.23.21.54.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Feb 2026 21:54:06 -0800 (PST)
Message-ID: <598f8927-01f5-4889-9f8a-ef9c9ca7a616@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 11:24:02 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 3/5] dt-bindings: misc: qcom,fastrpc: Add compatible
 for Glymur
To: Bjorn Andersson <andersson@kernel.org>
Cc: robh@kernel.org, srini@kernel.org, amahesh@qti.qualcomm.com,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org
References: <20260129001358.770053-1-sibi.sankar@oss.qualcomm.com>
 <20260129001358.770053-4-sibi.sankar@oss.qualcomm.com>
 <siuuvqcxcfw2be72hh2pu6csmw6qxy26ixnxppbfy7gtpzxxzd@vuucoicoj4h2>
Content-Language: en-US
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
In-Reply-To: <siuuvqcxcfw2be72hh2pu6csmw6qxy26ixnxppbfy7gtpzxxzd@vuucoicoj4h2>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=O6A0fR9W c=1 sm=1 tr=0 ts=699d3d00 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=bH6bprHrhxwb1ATC2rQA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: _aJR40qrK4g7eV2i-hZlwKPmWJHlKrZR
X-Proofpoint-GUID: _aJR40qrK4g7eV2i-hZlwKPmWJHlKrZR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDA0OCBTYWx0ZWRfX5mkVqSTVljpN
 z2sz9ExWBNl0+KEsTC7dtjtnNsxykJPYq/TYMQlLCHuvqB644Qt2ypyAy9DqiA+sxbW35A81LT/
 mIG30OAaBQuh1JvizzZ3q19P4OcetzfQfnvodSeYtnZT2dFAXzZTVdBZMmq50ulkua911pt5FI4
 yjaLJUSJXLTdR0OyebwKyah16imX90W+kzEQM7RK4lch7vDQmHsPTo4VkiPpDcHJZb5fUYMAH12
 sA8gsE8TCSUTLdzHhzHPaSM0EDG1VotVMzckjQ4cJRVeWfe2eJko2RX7xa+XdVv0c6bC7K+Sm4N
 KSWa0mhwfX339iPrpIaD23qbMC9sN/uhHvB13YJy9FVKWrsmEkno758sU97QCY9TArQuAAHozTU
 JvMR5X06hRTb+3V6KITgOs3FOWaO0c5/8sap3+lcGZbSC1aKi7KW5uOdUh6ITxH2HSuAFBRq8HV
 U7Uh6jLxF9vZVKtEIzg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_06,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 phishscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240048
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267714-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CEBFE182383
X-Rspamd-Action: no action


On 2/23/2026 10:01 PM, Bjorn Andersson wrote:
> On Thu, Jan 29, 2026 at 05:43:56AM +0530, Sibi Sankar wrote:
>> Document compatible for Qualcomm Glymur fastrpc which is fully compatible
>> with Qualcomm Kaanapali fastrpc.
>>
> I assume this means that you have successfully called at least one
> FastRPC function on Glymur - with the WP firmware?

Hey Bjorn,

Yes, we did verify fastrpc on both ADSP/CDSP on the firmware that
was upstreamed to linux-firmware on WP Glymur CRDs.

-Sibi

> Regards,
> Bjorn
>
>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>> ---
>>   .../devicetree/bindings/misc/qcom,fastrpc.yaml        | 11 ++++++++---
>>   1 file changed, 8 insertions(+), 3 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
>> index d8e47db677cc..ca830dd06de2 100644
>> --- a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
>> +++ b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
>> @@ -18,9 +18,14 @@ description: |
>>   
>>   properties:
>>     compatible:
>> -    enum:
>> -      - qcom,kaanapali-fastrpc
>> -      - qcom,fastrpc
>> +    oneOf:
>> +      - enum:
>> +          - qcom,kaanapali-fastrpc
>> +          - qcom,fastrpc
>> +      - items:
>> +          - enum:
>> +              - qcom,glymur-fastrpc
>> +          - const: qcom,kaanapali-fastrpc
>>   
>>     label:
>>       enum:
>> -- 
>> 2.34.1
>>


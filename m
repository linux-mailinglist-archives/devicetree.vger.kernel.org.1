Return-Path: <devicetree+bounces-276038-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDE2LP3Nt2mDVgEAu9opvQ
	(envelope-from <devicetree+bounces-276038-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:31:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 48660297094
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:31:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B528E3014C04
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:30:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D86B637B409;
	Mon, 16 Mar 2026 09:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="koW/HKn7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VHOBtDJ2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2F42F2914
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773653438; cv=none; b=PzBmiwUdWzqybm+TQzLmdWCWQ3QB2WfNwuM3GUK9eDoq2701uD7b68sNotwPdwnDuKkfJj5bKicjioAzDumFCUpb1YQJz3RNeOsoLziqpzJS4p1MQ1djajG0u7NHHa/0qznCSNOBPOHkbOV6LRyhvRwXyDq9RcQKaO5hUR3EB/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773653438; c=relaxed/simple;
	bh=rOmD/tTSLtI4sGePVuziYUR2ACOxJnPfU42NIVxWQFI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J6IILbrWKnuM8bhCnH7cwB2YfMpy9Z6urAeoexonnqpmSxkIdk5DHKEHM+4Lco+GrYInh88W+KWGC5p+p1l3j7O8z8smqYulOthkNPC1iNeJHTFP5C2q2y6V2iGyCiz7SgIL2iIrwtj/TbjlqJRKED/Q6O1MQGStyD7LWo1Iwqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=koW/HKn7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VHOBtDJ2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64aaQ3777541
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:30:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bCVKI/eKLtlamMd2/D4n7rtJjm8TbWgtnqjVuvE5Ek0=; b=koW/HKn7jRlpg8rG
	CHgAzn+oKT3A0UScRhwWUQyFgmBxKjPwNMag3iOzB7gALOQ93035Fgw8COl07E+I
	Htm0JWaRNvI4NpZsFFNxeOWKM81bYYuLcOe03228k1jdCrOUJjZsyjoDlnUogV+3
	Vguf5XuJZN8jpcep5R7jTOA2lY2wDO+8h8fXCOyYtuAqTJ3Ia8x86e24gz1x4Tsg
	48kHBxsWIbone4i4xIY880tvuermVtXUqtfCztjFx+B0UYsLkoAiuHrXPSQ9Eba9
	54Ken8JoeBoFusq+pKr4ttJDUoywTpiT6sCkJ6LpUPKn4XsbbRSR4yfTHL1Bww1C
	yQOP9Q==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw0y7vwyw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:30:33 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-89a5b38affdso33110476d6.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 02:30:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773653433; x=1774258233; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bCVKI/eKLtlamMd2/D4n7rtJjm8TbWgtnqjVuvE5Ek0=;
        b=VHOBtDJ2rXvlqoP9oL9dNbxjRCa55zooraO9zFCXrDSFpZmDgu9Yb/pcxXjUvqTmEX
         nl2MUg4CU1oHF7cZGX3coySJk4tEBACFJn86Pbqe1QuOo4msx5aBXNGaJEjfrutt5TTb
         TLkU3mI588b8nMRYeXkfOWUj4/EHVmwUIA1cmsPkYeMnR7PdEnooNsNeFK/OZAywodOk
         YMbw5BOgOYtnuv/oTuS5trgWc5SGGv8ek2uJ2SNhCIEz84U8taJp07h64WpoqyP/1sva
         bnrisZo/lvOYeY60M+Ebb7gElGGdUNNRAISPn9rizjb2cefQBKn6P333RmEGBPmLMKbp
         YPlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773653433; x=1774258233;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bCVKI/eKLtlamMd2/D4n7rtJjm8TbWgtnqjVuvE5Ek0=;
        b=TQUjCLZqOekpqHMBY6WNAaiDGslmey2cknuBcFH7FUuDA9AOqjediPo7pfNS2GKmVo
         m6IPrWdyspJcSa+tPUXA9vXCsLZPCZBpfGrw/1Uh7DaelNpX211019N+3GdUJD64kRGs
         wruPHZhnDniDWaHZpiZVurvwjObt+N3tt+qUJgwxscMATKbaeI5uRx0oGs3q6LJoon0B
         Xid12OHSWGxPo8c6ygjMrFvbRhAbOEpLJjGvQ0wSl680cjUC0N7jFESXun4at4yXS9cl
         DweKD2ejb+rr/WplA7u72+6SvcmjgxP2raqJSigIkO0hyDZbIM70aO7aJu6A391558+j
         Ciiw==
X-Forwarded-Encrypted: i=1; AJvYcCWPsPdoxYcAhjV8dT6imODC7tQdsLnQA052w/o5+YC5Kc+JamtmPYvh29bKocW5gO9/5GSZTPfmqtJc@vger.kernel.org
X-Gm-Message-State: AOJu0Ywfq6+hRbh0JH+oofpIJG7fs1wRedgCtJDV3N1xDkyIY4YW8CEg
	SdG7zs/G9mx9My+CNQdLg844I17JCDiAvuNePxxG3H1EZZiPIVDGwU/WNfD3pGoqV8O9XDKwt03
	giPzsMM45MhHkK3Cty8x4wkxSE83pS0PsHwBo8odJcCm6wj3t92FGndYA7cFMfgZD
X-Gm-Gg: ATEYQzzzruAf1qotw8TWt3QEqQ75UMMZZMTWqsAN29dB+Ue7EdMiisepf0wk3a+aSzY
	u0zlYLF86sAN6O0dFW0blXbi5hrIRSd4G/z7TfUcm+y6+ZfEkQ2qM+ic8vHCo1p7CwgKIFHFWQq
	H6ccCQhw60VKpCvaSeFaqCI0+ss4HkQow6GqpG6qc03ETC7ySYfbIFOUtGzo5asunPrQURkHkZH
	K5DdCYf0FIFxByIZj9/uxHj5gmxyPvEAQP2URDRFUUvP4uNoHQYATUvw09ak7+mZIvjOlkComWU
	ABS7GN6VWWtdDKvkb0Kz1tXKanPExElkVaj99HidakdO/X5eUN/VrvrZhIOmiOd0HcSxm1TTPVr
	e05Qsn7kN4rrTyWlNEAOZtdivha61ehB3Rj3PTvTrxBg31HV/jl4z5eQFll1/rjVdQy2Qco29sc
	m/LX0=
X-Received: by 2002:a05:6214:809c:b0:89a:4c1b:4f6d with SMTP id 6a1803df08f44-89a81fb81e7mr122910066d6.6.1773653432936;
        Mon, 16 Mar 2026 02:30:32 -0700 (PDT)
X-Received: by 2002:a05:6214:809c:b0:89a:4c1b:4f6d with SMTP id 6a1803df08f44-89a81fb81e7mr122909756d6.6.1773653432457;
        Mon, 16 Mar 2026 02:30:32 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97afca45c3sm231447766b.13.2026.03.16.02.30.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 02:30:31 -0700 (PDT)
Message-ID: <e242dc13-9818-4445-b835-86a87965090e@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 10:30:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sdm845-xiaomi-beryllium-tianma:
 Disable MDSS
To: David Heidelberg <david@ixit.cz>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org, Petr Hodina <petr.hodina@protonmail.com>
References: <20260311-beryllium-fb-v1-0-408a580d125e@ixit.cz>
 <20260311-beryllium-fb-v1-2-408a580d125e@ixit.cz>
 <t4uhjpxdvjxda4dxkoxktv6xlxg3xvzyslgerluu3t2dzxv33v@k46gvwv4uf22>
 <137c19a3-136a-4e0e-b4ea-8cc474172d81@ixit.cz>
 <e65ebd79-9edb-4001-a5c1-c4b6a67d5234@oss.qualcomm.com>
 <e93d3d7d-1df3-45e1-bf9b-d2ccb937aced@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e93d3d7d-1df3-45e1-bf9b-d2ccb937aced@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: KatlqK9vvXzg-HxcSktol8m152dkRabZ
X-Proofpoint-ORIG-GUID: KatlqK9vvXzg-HxcSktol8m152dkRabZ
X-Authority-Analysis: v=2.4 cv=D9xK6/Rj c=1 sm=1 tr=0 ts=69b7cdb9 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=sfOm8-O8AAAA:8 a=xNKo-it-qOgi_xrJINUA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA3MyBTYWx0ZWRfX+XYTx7dUSo1Y
 LelyMz71+zher4lNeUclEugUPXgxyw7zsT1ulJn5JSWihN4Rs6Py9eDjBKVWF3JHcTj7B3CInZm
 bQu56JocWlSgH4FqOP5BHzsx8yoLiTMfK59jVnCPzQDImdwdt+B0lO1gBYCelRQHuA5QUAEJQDm
 G5aI094sod4xOzfOm7gBIsaC5Gbq3QFwD3VnutTfFCVxxQUIX1Tpefz1zPIFiecq+LKPVFsk/CZ
 FneJQiaAV5SJQS917Koldwi93PQKCHG/VN/eNpOqfD/BduRWKddTUznpVrQ8NXXvSe5apAoSpRq
 CPG14FFbfRuh0jMBanzXOkIVkCrsrpTz8LOoQ5PJYRrqevkvlsQPNEZ1dpAzCrhZ7r8nWqBsXle
 Y7CE0z176LLuhuEf0Z+uJeVPJU+zPXDAC0xgB0/G7Wi0Jwqfpz9t+GMU2qJDQ8j0LuhpVZdDxXd
 i2w6L3Op2xscbH01vYw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_03,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 lowpriorityscore=0 spamscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160073
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,protonmail.com];
	TAGGED_FROM(0.00)[bounces-276038-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 48660297094
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/13/26 2:09 PM, David Heidelberg wrote:
> On 13/03/2026 13:38, Konrad Dybcio wrote:
>> On 3/12/26 12:25 PM, David Heidelberg wrote:
>>> On 12/03/2026 03:46, Dmitry Baryshkov wrote:
>>>> On Wed, Mar 11, 2026 at 07:44:30PM +0100, David Heidelberg via B4 Relay wrote:
>>>>> From: Petr Hodina <petr.hodina@protonmail.com>
>>>>>
>>>>> Currently the panel driver for tianma is broken.
>>>>
>>>> How broken? Can it be fixed instead?
>>>
>>> No output to the panel. Definitely can be fixed, but current situation is that we don't have anyone who has available time or device to tackle the problem.
>>>
>>> I know it's not optimal, but on a way to achieve working mainline phones, my thinking is better to mark it as broken in mainline until someone fixes (assuming Fixes tag and backport) then just going black display (when we have at least framebuffer now).
>>
>> If you have a person with limited time, would simply copying this:
>>
>> 2b973ca48ff3 ("drm/panel: sony-td4353-jdi: Enable prepare_prev_first")
> 
> Sorry, I don't follow. You meant introducing prepare_prev_first?

Yes, just setting that single flag

> I asked if it's possible to test, but looking at the rest of the driver, it'll need refactor anyway.

Well I'dve assumed it worked at least at some point in time given it's
in mainline?

Konrad


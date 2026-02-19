Return-Path: <devicetree+bounces-266593-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4J9mGVHFlmkGmwIAu9opvQ
	(envelope-from <devicetree+bounces-266593-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 09:09:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D75B515CECB
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 09:09:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9B6B43012BCB
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 08:09:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71EA1334C34;
	Thu, 19 Feb 2026 08:09:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i3fW7Y8s";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="U5PR1Now"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579BA332EC4
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 08:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771488589; cv=none; b=M4+J7kWsuYY8K35WZHghiPfFLaC8xi+JQG/alV5+lXx5FIZHeupCFtMFrpLSVcqLQoHGSBabtU2i/PIZrWa3me/rlVsv+L4Huu+VF2CGuJoENGfZX5Rx+pMLUP0srziXHz/onqkiqoNIzjpovj0hk0iSScmqwz9f/qC5TOrQaTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771488589; c=relaxed/simple;
	bh=4NehR4sTHOxsA4wUCf6MLaafUjVEdqAqvefjROThzz8=;
	h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=aaXG0vFvyR9qU7WVSVYLWGFH8E5eqKJFBqOsVPHftBshARieuwIzPluJaV0KgemcnI9ydlm7TsWJ979n1gyjyLZ4bDAIgRfRVtfzLMGCA0iUxEfMm5oxwdPCFGwyfM32g3UcgmDQjXGRBOpzLcq9np7SPLwAhBWeFiCB5W8pNoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i3fW7Y8s; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=U5PR1Now; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61J53hD2421978
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 08:09:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	He9TCtmdJ/Jyli0G3m7/iAi1wToVq9O81jgA5Yqu3aM=; b=i3fW7Y8sEmFuTtK/
	t47W8Nbh2HwHQidDlVHrzm5GCoXQqeEIK7URzpYCkPUqxRkpIKduNmRxndGcqHSc
	+sMiEdnkH4e+dWKdvO3NVcNEihPssC0QuIl8mk2kgHU2o6a7hb5XDQUSSKpDEpq6
	nBR+3rhVpcSX3NCGOrk536nnN1ZYDqR5mY9rtH6ROgmOhhp/osHY9OOUU1UWyEsH
	OjP4kBWzr894+8yEO2FCmj5lk3l8ItefW+b9c9qvws7gvPwjhVW9oGBmcFIKx8/3
	NWdJIRujOQp1Jz49BQuZmmmecikfCj+Ctj3GhuYf80ZjPX1tWYYkmVqcGxsZFecM
	VLiDJA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cd76e3rd7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 08:09:47 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a7701b6353so8450315ad.3
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 00:09:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771488587; x=1772093387; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
         :subject:date:message-id:reply-to;
        bh=He9TCtmdJ/Jyli0G3m7/iAi1wToVq9O81jgA5Yqu3aM=;
        b=U5PR1NowaQHMBaQE6RCWYNcJzI4NXvkAjQcic5oGSK/shkVQ92WOT59YndUSpng9gJ
         Ug8bMFTDoHnhD/Rel2GSkS0FLfxwNwblNmxmMX/hurS5XNO8HVHrMo0qjixg6GdVuDL8
         SEE1Ehp1u4eUDsVNZFsgXSF4lxLIpiMJ8OetCcCis5QcNMxDsNqrismVS5TQ+e7jYJwo
         uc3XK58amaOL2Qf6wD9P1FUb43kzIkU954ecyzoAlMCsmcfDwh4eo5wMUOcdqafvdyh2
         0LGeLfH/BHCOoXAxXMoca7gBheVirqugA2+oQAo6Rh+2QK4tvFsgalVvuPxfuzgul+Lf
         ScrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771488587; x=1772093387;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=He9TCtmdJ/Jyli0G3m7/iAi1wToVq9O81jgA5Yqu3aM=;
        b=FsWSYkQWbcWvQSX1FVV5R0nTHsvB7lA8XMD3D2VsJ04qnz0neQvL2hmQb/tEyyWyOm
         F//9y9Ztv9gLj1VwHlIY0eVAVlmlHjGHzV836+pzkc3b+ZBRTjbuvR30SLo70iBpGmx8
         b8hoENX6ZbdNvWFZFaTcH8tEhrLY0mu8bOxh3fjyY1/1Whi5nJaMbxQXoKDuR1+UxZ34
         IpktE2R540W8shkgTmosoODQxCa9EC+j8QRbW33hX24bo+034HhJRHVgUu8WdPzqOvNJ
         19gV9T/t3ogA9JM/eYYeSmufh+ON4ptcP9ZjgXkUiJQAhFyNxPypZFIF2U2WFVM/Xp8Q
         I7Ww==
X-Forwarded-Encrypted: i=1; AJvYcCXG8AVXWoYBqULvPyMg/nMnc2L1p9+3U+6HJ+k4+teIfuuEG1pA14TQV4lwsVgdWsbMU/Ekds7m0FyR@vger.kernel.org
X-Gm-Message-State: AOJu0YwljFLsVqwyQ69/WcIKBcucVa5tRdfLnloVE2Met+59EL0zHaKZ
	r49nQOYIywaNfgYU+09E36+czKuy+yCVemq/GWis+WeOKlTQdsCmDG4EfKFqUElPkurLFjoggE3
	w+Kmi2/v+WfQr6/MfIpZMRy6O3KtfBJvSzGv3y3GWDjW7q9oiHfFFKuULkjuxgEqd
X-Gm-Gg: AZuq6aJu04qThvragC2VsHp63ntnM8cvxgcXep3FczQgSQ35y4SQxDlg1t0rgoAvYAB
	7YWrPkrNwq4GN/oanOFQaAjEReD2jNByOzx9XWV6hGvnxrHGnOhRflAh63kRchHG/kaeBhzViF2
	gAPS7ZUc7lGyWyZpVaGVhtwde4TEqgtvJnnL9Vpm8I6SJLf5rpd9yTrDK9rghe8g6Ij16uUf+oH
	zW6Or/nuUrNagOyOJ+A/54W7PQMIWUJvAt3XAWGdL/ZehJWGzQKUbmLNnCat+f0hDo+Ycs6hAvJ
	FL9aPF/Ru3jiGMOrFpiQCileOfobcX3IDmum/QP4geRLQf69ic9aN7bghxzcldNXAGuLc9i2vZE
	ZMbM6v2o5SLNkDemt0vMdP+7PD/ncF0b/LtM6UXc+45ZBweshkw==
X-Received: by 2002:a17:903:38cd:b0:2a0:c1e4:e25 with SMTP id d9443c01a7336-2ad1759ac22mr202678965ad.54.1771488586937;
        Thu, 19 Feb 2026 00:09:46 -0800 (PST)
X-Received: by 2002:a17:903:38cd:b0:2a0:c1e4:e25 with SMTP id d9443c01a7336-2ad1759ac22mr202678775ad.54.1771488586452;
        Thu, 19 Feb 2026 00:09:46 -0800 (PST)
Received: from [10.217.222.63] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1aadd140sm161116145ad.72.2026.02.19.00.09.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 00:09:46 -0800 (PST)
Subject: Re: [PATCH v4 1/3] dt-bindings: mmc: sdhci-msm: Add ICE phandle
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
References: <20260217052526.2335759-1-neeraj.soni@oss.qualcomm.com>
 <20260217052526.2335759-2-neeraj.soni@oss.qualcomm.com>
 <20260217-berserk-puma-of-focus-bcbe82@quoll>
 <e3ac0681-605d-c1df-e4f0-78a2c142fa66@oss.qualcomm.com>
 <51d75568-5110-4993-b262-71af0a0d4600@kernel.org>
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
Message-ID: <28a9d23b-69ae-c624-4b2a-1ff719281cd3@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 13:39:41 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <51d75568-5110-4993-b262-71af0a0d4600@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OKsqHCaB c=1 sm=1 tr=0 ts=6996c54b cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=lvwnJXwceCFjUmCDSakA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDA3MyBTYWx0ZWRfX/lBN2BfzMWLF
 2NqwWHZ+Jw/4kBEsPhQACF+VNhP3394BdoCDwawHhoSawb79QprpMBc/SDTJp4W94fuJsSt/WwP
 h05K4LJcaggkC1E1QHucAeDerxZvNjo596Torn51Grli7ka3tj5S4AAI2cABsR6IVRrmyhKFiIA
 hZ3olub/XF7wpY4DMX567glEizCmRwoxQaJDI1+xvFaCGsWxd3XkQK8YDCn2jH0d2hj2hIZ4Eg8
 s/VfV7ZEaOf7I8FyXAWc6HuVN3kleoX8DHj2FJohX6zDZoHU5gOrtPDSYvKH6yPvn36pRCOv0W1
 MlAP82H8we96uxXXLnSz1MC8fEB7Rla7sbRrMazZizk/5fqFYHvIWJMnJhX6+K0uPfOnACZqBmF
 i2gZnGCqtIEwo1GxqahnxXVbEELueh2y1iMRBH1+hwvFqHX21gYfOnKQcNpRKfFAddwGyES3aPK
 2XkjEovQe7acQBkEtew==
X-Proofpoint-GUID: psZ0zfT2A9AoawFzlDFUE-dgcjEX7RYV
X-Proofpoint-ORIG-GUID: psZ0zfT2A9AoawFzlDFUE-dgcjEX7RYV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_02,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 suspectscore=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190073
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-266593-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	RCPT_COUNT_TWELVE(0.00)[12];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neeraj.soni@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D75B515CECB
X-Rspamd-Action: no action



On 2/19/2026 12:50 PM, Krzysztof Kozlowski wrote:
> On 19/02/2026 06:38, Neeraj Soni wrote:
>>>> +  qcom,ice:
>>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>>> +    description:
>>>> +      phandle to the Inline Crypto Engine (ICE) hardware block for this controller.
>>>
>>>
>>> Srsly, I asked once and not much improved. What is explicitly written in
>>> coding style which I asked you twice to read?
>>>
>> I have attempted to modifiy it as per the comment you gave in v3 here:
>> https://lore.kernel.org/all/b6e510da-b369-4c43-b9a1-455478af4948@kernel.org/
>>
>> I will rephrase it to explain the usage better in next patch.
>>
>>> And how long is this line? Why such trivialities cannot be fixed and I
>>> need to remind this every time?
>>>
>> It is 83 character long but i understand now you expect it to be wrapped 
>> at 75 as per kernel coding style. I missed it and stuck to the limit
> 
> 75?
> 
Apologies for typo. Wanted to right 80:
https://www.kernel.org/doc/html/v4.10/process/coding-style.html

> 
> 
> Best regards,
> Krzysztof
> 


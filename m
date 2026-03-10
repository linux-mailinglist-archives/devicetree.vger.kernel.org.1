Return-Path: <devicetree+bounces-273302-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6K9NH1jGr2nWcAIAu9opvQ
	(envelope-from <devicetree+bounces-273302-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 08:20:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C58246365
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 08:20:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EBE11307E09C
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 07:20:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 674E33E7174;
	Tue, 10 Mar 2026 07:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XEmQLQs4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="M8Bv8cW9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D473242CF
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 07:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773127249; cv=none; b=JWIuxAi4bzfp8jt4rGsM74Iy4hRdwPRG1i0KXVRIeFLvZa0Sl4pS6mHiIbBGWonjYd+JJV9HxEgKaWe2jGBlScd/n61SgvXrgj5bqIMrbiGFhy8udNOUfQ4MxZZIwB6TJW+Um6B/Gqu8mtm636nuaws0Wis+GgSiiv8KO0G+M2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773127249; c=relaxed/simple;
	bh=Yq9pRqs0SKXz49iX0wRGXCiOTIPpsFEH3j3355yxmBE=;
	h=Message-ID:Date:MIME-Version:Cc:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=DKCUWTqLVlwCONghqVhgqYJ+bn87XF/lq0taiR3iUYmp/2HZq6O3Tv1VsKp/q32vO6pXYvc+AnCfoRBHr9rYqFeREQaraI237hvVnU3xqkO1TJyi2a62Ud2k41pR8CuCDjbLX67xobunHtQqQsMuLPE4am3Q7LflPlMASuhyybM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XEmQLQs4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=M8Bv8cW9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A2EPTU2817524
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 07:20:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7P7F/HNtTh5rotNK5g8EuEQLl8j7gsPYrlbZtR4w+SQ=; b=XEmQLQs4rvl1DICB
	oQHKBWTjTMMJ47qwDZbSiPK0OgM30JkI1hKOzPX8qpyKR8XabMhlU2OyxoHTbzWf
	rtfd16eCQ6yxAB6IUn2OugOZ7LgBbvukNlwitoCzjt0JP5svQPwnuktrd6qNFdbO
	Pz68rJz9cC4xcdxNn92/7HSFYtuZhECPYl59NlXp5ML8dSpRsu3FRmJzYmLJ9DLA
	17OyZ+oKg+p5Yvy/Z4fxNL20DUNzZ4v4VcYE7LinNopU5c6CaWfISTdvUg6TAPCx
	CpP/9vHyB6sqXr22UAhqTcZhXRiUrL42s9ALeqWX7b2CbOpYVN8ckxh/eOGTemvb
	JOB9Hw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csyr4306y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 07:20:47 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-35984b91ffeso8125785a91.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 00:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773127246; x=1773732046; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:cc:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7P7F/HNtTh5rotNK5g8EuEQLl8j7gsPYrlbZtR4w+SQ=;
        b=M8Bv8cW9p0WU6qBhMilyDTHUh4i0CMrNLnbgceHbKtsYUJ62VdQ5oi/fb91TZwhg3i
         qhfNsxjFvm99QDwctdGAVnhrH/jSlfV1DB1jNxVSoGtqTggdWgIxZjlc6ab4Jkc//Bfq
         PyhzufvjPyCwwrOaWbnYKdJr3AahQSXt5LHM11lqPxysXMrHMMEP4WNgCeOqtOMJEobL
         vd44dDK/eAaaTlul5DseSmomZOtNlYdtqC5ZgAwNCxJYSDq5bJQo3UTDC7bkwNCQcvt4
         NWfHlk5vf2eJd/bX7VMw0fHRi/I4loRjj2+xihVff/cw9scZmQdY9yvb8cMFB5d+WrdO
         orew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773127246; x=1773732046;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:cc:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7P7F/HNtTh5rotNK5g8EuEQLl8j7gsPYrlbZtR4w+SQ=;
        b=UeMnXBIsLNhGW0db1lOu2a5qktwuyrPEvacWseA5xOHnZgBSbqHI5KGEc/cSmbh19O
         ZtPdLMjOFnVM7WqRaFNC+qF0+ZCghSdUwWAv+ixtl0tXwJId8R7zUiASb2jCGCGAWEJB
         HsAi5ZpRgBo9IR5oak2zxDGr6zwqIAo03FNf4fy74k8JwKJsebku1j8muW75ZE0Xoh6b
         YiDw6mmqT2PTisDa4SONFvmsEGVZhVQkdsjwyUMs9z7mJavmAreSwyLxObZ+ThmteGyE
         rXlAH7SgVldAczh1Ty9gf0LtVqqVSiq4V3ijz1EwadXr1A2IS1nwdUAooWfbv8f9FC9R
         +sxQ==
X-Forwarded-Encrypted: i=1; AJvYcCU8CaF89lGnNcnO/SdTaCTCcDl2Bsz8jy8IL2poP1b3JGmS0rZMdq9IL7pp88olR31zw54xWr4A4OdC@vger.kernel.org
X-Gm-Message-State: AOJu0YzG3c5ksIZi5v6haX8U5czD+nxfzR4dqAk07Ygn01KX4ijt4iyw
	zYOacEO47aVH14t+FTSh0jYz/khUR2Am5H8/yN8RJP5/aDft4rXQ8gVeVLhCSEtxlZVr9wuvkHp
	M/aP59fOWmJFnaXCe5PfeEDVU1om5muEiWpbl5EhHViTsO836uroO5+usV/U/hAGz
X-Gm-Gg: ATEYQzzDMMZ4nZ7f5NqeuxnlTSLgB8pSWZMdlFNlJgWVjQYjMlgBMJXaZ6cWBaeyTFi
	EbdPc4/+gAzRE+IOEuM1HrtYzIatYy4fuzvInVdHFX6lvPyspObNnrOkBwdmTRvXQo3BiVdpEvN
	+7RQGShYA30TKax9xm5qnhFH64ggQ61rT/ChuUMlksXWuJ/0sJ5BoUEfQBrAoQxzBQPxg3MIZQG
	JY9YLSUrYTh+Oic2/pjuWwLX8iTUJDzjBBqQ8kbcK23LXQ1hyu57DvAiqJrOM5xe1ig4A+n58Hx
	71RHHckTAjAYhrLc6PIRmJh77DsaI+Eyj+MvPC4vxCzZpQZR265rDQZp7R//ChxVaZeZfhQ4Eej
	2DjcDxRO5pkLNfTPTKfQwVpIpPtQAxqD6CxuhUvTf/CpGfJtowGp0haWxwbCSx22Vm8khJfZS8F
	RpGiYLza1UVUqCbmk=
X-Received: by 2002:a17:90b:248e:b0:359:8a78:5696 with SMTP id 98e67ed59e1d1-359f0105642mr1422943a91.1.1773127246114;
        Tue, 10 Mar 2026 00:20:46 -0700 (PDT)
X-Received: by 2002:a17:90b:248e:b0:359:8a78:5696 with SMTP id 98e67ed59e1d1-359f0105642mr1422934a91.1.1773127245638;
        Tue, 10 Mar 2026 00:20:45 -0700 (PDT)
Received: from [10.249.19.96] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359bc990a9csm6666565a91.3.2026.03.10.00.20.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 00:20:45 -0700 (PDT)
Message-ID: <9b046f29-61ac-4bd3-a89f-a8d438ccaa2f@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 15:20:40 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: wangao.wang@oss.qualcomm.com, Bryan O'Donoghue <bod@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 0/5] media: iris: add support for purwa platform
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20260306-enable_iris_on_purwa-v2-0-75fa80a0a9e3@oss.qualcomm.com>
 <20260307-talented-civet-of-strength-356cb5@quoll>
Content-Language: en-US
From: Wangao Wang <wangao.wang@oss.qualcomm.com>
In-Reply-To: <20260307-talented-civet-of-strength-356cb5@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA2MCBTYWx0ZWRfX10G3xZSY7gvT
 g+6RCJUVwg8uGiUeMqg52mhGz2h2Xn+2RBUezawOrZljrJW4MJoyhut6BJEIKPo2P8JbYZ7pUvd
 CwpkmJgu7CQdLIUNONCv3vSjng09nBWVbTdXDp57m/I8N+r1ziuyMaXx28XupV0Mh/9+nNeEcsU
 2tudgixskHTCm8QyoN8vgn18C3wc37wfapBDEP1P+CiGvBUR6FUKioX1abjVyrtIejZLLC5wAGn
 zqxB7YOEP9ALMdEfBpXfDcKXrkjWoXiVVo4iw+s+YABtVvvMCCNdKiuTpb3zVtoX2rfcdIGI2JF
 pH/ALrkFAP7x4f1PO62Okyrenc6nbA62DaGcaOZxPM9z4En++cnkQ/hMOZWj0wixeMNNmeyETE/
 /zO3rm0lt4bDQS9XnZL5RtN2bD62ulIwOy0HMBtZiRjg3mSHKHEcbvXfdmqTMopvzIXXgC1zxt5
 DTuInh5dE021QOpCBGg==
X-Proofpoint-GUID: EgcpZx9D8h5uqeDQri1QmbGlbz4XgTga
X-Proofpoint-ORIG-GUID: EgcpZx9D8h5uqeDQri1QmbGlbz4XgTga
X-Authority-Analysis: v=2.4 cv=KNRXzVFo c=1 sm=1 tr=0 ts=69afc64f cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=-ypmXvZywuuxKUOAp5MA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100060
X-Rspamd-Queue-Id: D3C58246365
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-273302-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wangao.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 2026/3/7 21:12, Krzysztof Kozlowski wrote:
> On Fri, Mar 06, 2026 at 04:44:28PM +0800, Wangao Wang wrote:
>> This series enables the Iris video codec on purwa, allowing purwa to
>> use hardware‑accelerated video encoding and decoding.
>>
>> The Iris codec on purwa is nearly identical to the one on hamoa(X1E),
>> except that it requires one additional clock and uses a different OPP
>> table.
>>
>> Therefore, purwa can reuse the Iris node from hamoa, but the clocks
>> and OPP table need to be redefined.
>>
>> Dependencies:
>> https://lore.kernel.org/all/20260202-purwa-v5-0-1f5a93578802@oss.qualcomm.com/
>> https://lore.kernel.org/all/20260304-purwa-videocc-camcc-v2-0-dbbd2d258bd6@oss.qualcomm.com/
> 
> I don't understand why you coupled them and added these as dependencies.
> This only makes it difficult to test and technically your media patches
> cannot be applied.
> 
> And I don't even see what is needed from these patchsets for the media
> bits.
> 
> Best regards,
> Krzysztof
> 

Thanks for the feedback.

You are right — coupling these patchsets as dependencies was not 
necessary and indeed makes the series harder to test and apply. The 
media/iris changes should be self-contained and not depend on the Purwa 
base DT/videocc series.

The dependency note was added mainly for bring-up convenience. However, 
that should not be expressed as a hard dependency for the media patches.

Should I send the DT patches separately from the driver patches?

-- 
Best Regards,
Wangao



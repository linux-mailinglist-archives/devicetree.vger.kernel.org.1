Return-Path: <devicetree+bounces-264388-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aNsvKCofi2lBQQAAu9opvQ
	(envelope-from <devicetree+bounces-264388-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:06:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF2B11A89E
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:06:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 96D873012876
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:06:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB6E932862B;
	Tue, 10 Feb 2026 12:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Grs3dDPe";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Wl2BH/88"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A29ED328255
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770725154; cv=none; b=P6D5TlMxWYXTsGKI5INpDvOB8mT4S3yXp8yhWzLMcGmPWJAocNXeQelZKso6Iwc9RGA4wvwvdGep5FDWC7AIoQuC8oTUZzVN24XhvYltR3xvMWFSod9u15M6brGUTT01yjK1X2szkUVkbxfH4rSGX8XFqZDGNyiY0Q9+DewYB3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770725154; c=relaxed/simple;
	bh=j8XtPUbxPDbIL3fYnxVnD/GJzwMyqA+fxQzBOFiPxds=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JhWbSa8BWRh7J81tZSpd34DFLm9LbYtLQbYuQS6E8ZkF+hVfquB+9LxU9lekgs324pBF1ZpzMHuBN3ykzaY9nNL4xoflUsBhNCT1fer6MZUbKAJzVIznurz3W9DPJSoLJlf5SDAxBFWif3oUGYNdMyx6iE3cesfqSDDq8Gp8m5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Grs3dDPe; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Wl2BH/88; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A7eTTT1421846
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:05:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+NG8xNWloMlyuAlY2QzsKXbGKfasHTw3/zbGiFWKykU=; b=Grs3dDPeCwKZDXwu
	amxZ4zp0RTZ3vqpgdrIisa1LZ+NvPdS6Cdn5ND1jesQsXWwJtGnG6/8+YE89FWjz
	JJMuWkgDNKYlXEHiJ23Uh3y8PcevJJwp7kkDtalodASeasJ9vEg08YJJsv+NcK5o
	gVgDz4F3dzWUYIlCuSrOtxVVe5ErQyfxmKSFRbswMAkRSMzubP+uImjp1i5l9fWN
	j7v75PXedY4Se+jjejAAJBWSRIQylar3mwpWOMjW+oflwJKZKMHSXzb4S+phqlmw
	MUCk30juYzsq4uHK7OgbZc63YCmQdsYQBTWFkYz24krn518fbH5H99hmeaa7Jm8s
	en7Oig==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7rpvtb4m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:05:52 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2b7ef896edcso18499604eec.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 04:05:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770725151; x=1771329951; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+NG8xNWloMlyuAlY2QzsKXbGKfasHTw3/zbGiFWKykU=;
        b=Wl2BH/88UczimIP60LPlFahVM/ld9UVSFISoC0LwJtlDrHyYEx2mM4c/xbRw8XWF1h
         BGIVsrqUNokD74MhCQBsteUZi25Bldx1sKjhKUpibenDftWmh0J1jYNCuhWUY8dcHahS
         RfLeo0GFc5XVl24N464GPDpLbnXFE/OBGCBRBkjkiZn3PwjOtDIxiexaUwiHPM0fZ9Vg
         yzMu0QNZzVFqRbYianXq1N9f48nBngr0zD7A/DUKiG8BMbxeU98m3tQGCD0Mz95v4spL
         /auZxFWg3dzz71C7l7Z2lNRsivFyuaeLlONFRo9MKxIPiLKExewj7wruG6hqL8FVXKct
         1hng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770725151; x=1771329951;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+NG8xNWloMlyuAlY2QzsKXbGKfasHTw3/zbGiFWKykU=;
        b=v3RFaNE7hIqnHj+XiHuIKWnJl/QwS6d/54pqAgsKIzIbM7AzTjzyJCS+N3lVhAek4m
         7hnZ8Y+kDICjbMI29XRz8hIZY8UdFN/2Ecqv0LemcgQhYwBQQPhFMqk0cBXcJHA/mRHg
         GNfJNLpL59O/bh1hzoCR3O64VEJ9JBCWWJNKtY2627fMU2A8BjXOHfaD1dDKQdOc0kJE
         qWn0fVGhl8MFRiCC3JYOYHKiF1vP0ITBy1Yx47HQ3mLmCEJRY1yOZKsYRpEBf8JL3krN
         m5M+vkjTNdr8NnVAtMER6XIDiCB9NWXHzs6bLKnpG4G3nhTGn+34Mbv8JakNQI+B5kUZ
         NOig==
X-Forwarded-Encrypted: i=1; AJvYcCU18d1OSjEJrPoGnoYT/PHTWwyK8sj2rzfzRg3fKotq6ehol3QIpikOkrvOX4PZ4R1uwX87EAi87qMi@vger.kernel.org
X-Gm-Message-State: AOJu0YwSmji9EN5GBC6S9eFwIENDPoZD+ZptRoTJHhyhVzchEULH64kR
	Dh+woxqYP/wzf2FathYa0mnMznHWui45ZltQPLJ+EGJH5KZRMm8vN+kA2onl5SvzcHpX3fDrK9z
	8Oia0YF2iDk8AmGHyTF6dLcPC9/GD4NF2MGxov6SJmeXymUvXpnrTjxaHR3VdO8a/
X-Gm-Gg: AZuq6aKECALUE8fiietWMasP/Nw0PYI9E40sIiFVRjnvac40g/VU3OKGD0tddxlLiXl
	N4A0/EMrj/WVMbJe6AFGniY1likWTjV5MCzdFS+3JD0iHLn66Qe/zLEDu44AbiWWFARVHUaqplZ
	wv69YTmytuujOgBb2j9/CJgPV4JJhBODLk765aOUy7y9CBkNm961oCNtotGCHtEyIZr96TvjXFS
	OjA2fXqGiNT4+PEunsV1pys+5h+4Ulxq6XuJ+aX3n5QOi4G0FZUM22BoRAXp49t1EDfPKuhln2s
	jpEMQelxKgAHKWKv9HESCj5Tc5Iwgmr41cnLJiW+4fXqrtUDW9UW5rNujCJEjCZO31Es6Epm0v0
	51762eREtbmKew6qmU2IHewtZjYKhaEn3znMTdBUQ5POAfAsX
X-Received: by 2002:a05:7301:2b87:b0:2b7:1320:f280 with SMTP id 5a478bee46e88-2b8564037d7mr6638257eec.15.1770725151378;
        Tue, 10 Feb 2026 04:05:51 -0800 (PST)
X-Received: by 2002:a05:7301:2b87:b0:2b7:1320:f280 with SMTP id 5a478bee46e88-2b8564037d7mr6638231eec.15.1770725150752;
        Tue, 10 Feb 2026 04:05:50 -0800 (PST)
Received: from [10.218.16.122] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ba93de9c9dsm136554eec.11.2026.02.10.04.05.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 04:05:50 -0800 (PST)
Message-ID: <4b049560-94b8-4a7a-a60e-c2e0c1e58683@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 17:35:43 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: net: bluetooth: qualcomm: add
 bindings for QCC2072
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>
Cc: quic_mohamull@quicinc.com, quic_hbandi@quicinc.com,
        linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20260209080613.217578-1-vivek.sahu@oss.qualcomm.com>
 <20260209080613.217578-2-vivek.sahu@oss.qualcomm.com>
 <7cb9a945-651c-426d-8cc7-1ec1174ac68b@kernel.org>
 <8fab20ba-9924-48a6-b417-5ebd28b77cd9@oss.qualcomm.com>
 <6def8756-f4c0-4b4d-a20a-205d548acf88@kernel.org>
Content-Language: en-US
From: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
In-Reply-To: <6def8756-f4c0-4b4d-a20a-205d548acf88@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDEwMSBTYWx0ZWRfX79wPuXdG7FcK
 3XFFy+6SO0Lt2kA4FdvpakGsN1k10tOOhxOP3w+NZlpX3MRlb/UHENjMRUucDH4EKWnY9PhUwKr
 6FrMjUROUyO8mzPStSvi46I1zZMDID5THV7mVtu2SocrKA6ZJNM7h3taqIDZr1SADXiQtb/nnUP
 Za7jDj4XHbrDcbn9ap5LRs9gZaxXkMsnF1s1b1jIItpyYpGRNgESoYO1TPq5ClMRF0mYRBqdmkN
 RlkUvsPaa+lgExWwVthxEUXeEXtnZpQGn2/DIx44LpGdHrtVr3kx37qeFuucJIdbSH3XfXjwXki
 Z2DbiV4ANw66E9D4JYEJK2SqFMGvICZtS4lQ2klJMfg2NyaBF0ZuYwVHs2wnmuGvme/bi2zgvbw
 tIcEP6Y36BYQ2p4xfFcgdPryhrg7dkd1z9VKKYfUcskjrXpAWJdK48FkpGDMFg1Xh+OeTqcwgEJ
 GLEjsicsr68SPtfx1ng==
X-Authority-Analysis: v=2.4 cv=KKZXzVFo c=1 sm=1 tr=0 ts=698b1f20 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=4EzAYdkXr_pH7v8aMFwA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-ORIG-GUID: Ls2LmatqX_t-qWZC32vXA12S22ubeE0W
X-Proofpoint-GUID: Ls2LmatqX_t-qWZC32vXA12S22ubeE0W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_01,2026-02-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 suspectscore=0 impostorscore=0 spamscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100101
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264388-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[kernel.org,holtmann.org,gmail.com,quicinc.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vivek.sahu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2FF2B11A89E
X-Rspamd-Action: no action


On 2/9/2026 9:38 PM, Krzysztof Kozlowski wrote:
> On 09/02/2026 16:43, Vivek Sahu wrote:
>> On 2/9/2026 1:37 PM, Krzysztof Kozlowski wrote:
>>> On 09/02/2026 09:06, Vivek Sahu wrote:
>>>> QCC2072 is a WiFi/BT connectivity chip.
>>>> It requires different firmware, so document it as a new compat string.
>>>>
>>>> Correct the sorting of other chipsets for better readability.
>>>>
>>>> Signed-off-by: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
>>>> ---
>>>>    .../devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml  | 3 ++-
>>> There is no such file.
>>>
>>> Best regards,
>>> Krzysztof
>> The patch is updated on
>> "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git" repo
> This is not correct base. Why would you base on something old, without
> any in-flight accepted patches?
>
> You are supposed to work on maintainer's tree.
>
> Best regards,
> Krzysztof
Yes, I'm now raising patch on linux-next branch. Please ignore this commit.


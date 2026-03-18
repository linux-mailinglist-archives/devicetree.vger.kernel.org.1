Return-Path: <devicetree+bounces-276909-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMQWBJ4kumk3SAIAu9opvQ
	(envelope-from <devicetree+bounces-276909-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 05:05:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 142D52B5A6C
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 05:05:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 38572301CEEC
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 04:05:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C9DD33D509;
	Wed, 18 Mar 2026 04:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="paLwn93Q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Wivhz/8U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7E0423ABBF
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 04:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773806740; cv=none; b=k76lE2Hjhuql1NUVNifz//JFM4hbFXIpxsyP6bRExL0vXMlwyO+wYiLkS5SlZJhJSot7KZzGa4Ah33W9rV+iC1gSEBc4C6IIdAQ+X7CO9jkYYZMMHIDUoeXHOHJnqpTLow1y4we4ZoTmAIhTSaNFgwbpLjrViQ9fPLDeKp8RIH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773806740; c=relaxed/simple;
	bh=zcoHfvFyrYvSLr2kOf8XVi0qZBsPT566O6cVYgZlUTU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o2fdMGEle5H5S4Ucra7FqUhLxIKjzDbgIjHB336x1EaF7GdAfD5ge30WWrYm5qji1sZOy/NPL2OoXq8pHmBmKXhtMY5hErqjCsfBmfXBYiv5vyVeLffusR1v8EP/AtF9qvLzhDsULSGbFf4ndnDSqMyUpGoLEBGEUkDZDprNHno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=paLwn93Q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Wivhz/8U; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I3MSoP1371010
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 04:05:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3SrK9mYgwI7NSVaaqY/fNysgz1UJQZeGTR0XtUZbr+4=; b=paLwn93Q9wUIJo9A
	uMy54svfYhUIYKfb3g/sXTTrC2Xwt0Nm6yt6XCxfVN8yxFPA3ODllqZ5NijpDEO8
	+sAKEb+LUN5PUn3L6WBiWihJXF2oweNePPa9Hq2aWZs2ffTUrtoTEZH6vtxelED+
	fYTUyCHX/U8wEbHChH9RK6sNwRPj6ZcdfF73N1cEzVal18bYDjiVE/17ZLZ1WSvQ
	yUp/CknpE248w8M88YA6q8E4/d7L5XJC5QsJvkQZlgjEOguJ5Lk8IyslfD3H2df8
	h0SP7nxQ4P4aZ7ADBwHJCE9lToZtX9q6yWtOOPjTjnrMPGs82Of1OkQyBSJ78URA
	fyHkXA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy7he35cs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 04:05:36 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2aad5fec175so311360275ad.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 21:05:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773806736; x=1774411536; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3SrK9mYgwI7NSVaaqY/fNysgz1UJQZeGTR0XtUZbr+4=;
        b=Wivhz/8UN13TqXnjvuSPVmQ/FeTBH2ACppM1F9OeNKvTVWkVXAO6cP95mHjvvLxEh0
         iFNfAUPNkvxXweMtOWfxG9jSOJIy6iZUVGxVLB2i6BPfdWqkP6ad1V2MxXzAr14yG0QP
         bntlECSoqfGLyC1/2U2eUtnn7pMsPACWN+rV6GYeMqlNhl3mwiHH4tx1NMA94NvC037z
         IweFnYjMgYJ8ktc6A5U1MYyWIfZCkWacQd2DM52J4T3vlkmGUdVa1hF8rxuqROhQEdqa
         t+tzWv2Mk0B+YnhuzCjQNINHmEjcsctRjnDlqd/96VwKBKJXpKGUs9cqmixjsHNfVZwA
         jqJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773806736; x=1774411536;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3SrK9mYgwI7NSVaaqY/fNysgz1UJQZeGTR0XtUZbr+4=;
        b=oP+XyQZC8brsCL2RBm8Xu/A+4MA5P5w0LX0Tv4JiThrdRDHhMZvK9YfrE8ju8Q42df
         gG5OBK5JGP9hKVcDO3hzXFPSh3c/ppCK/aCb1MDhlGIj8O5YVoc/b53r5kTDgnCQH7os
         U/8VEV3IPDV9DgzRaJRCd8N6mxnKNDixWRN8rOmz7yiW/KvxrJfSjfjPR264h9jNDAEM
         Rz2+V3RUz6tzLbCdQdk1hznx+IL3DBUfQXYPCAEayxnGV/QSW/IDb1nGAZ5z3Q7r2PS/
         d7W+EwNpgIKL+Ggq+a4Yk8oPQZFkbuTl8U19MG6rMBeAP2Dzo1G2BaBoh6PHXBzBWQ6t
         k1Qw==
X-Forwarded-Encrypted: i=1; AJvYcCWcqKpAKfNuf9SIPAW8GcpDREKpvEAUgqnLilaSAPO/HMcw4IM5xGE8om4jXhM/HrZqnxmBlA4L+8fq@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+Ea9M7w/2MnZRewqZqNV0ZU/YLJoGC4GXWIPpl6YDWLEaL1h3
	Ayq6FFqn3LE4I4cr6AJqerZnbTJMSjvW6GM9SCBqmW/Dz9EXSdx+f4DmzZnN0oj+wBKzlDjLEYU
	Kb0EnloEyzqfz/4LbbFXfUgD9YgMLJ6z0x7NeRBi3YPeHZvlBRCe0UKk5h1K3tPAF
X-Gm-Gg: ATEYQzxEx130tnmZ2OI7NT711fNBnjO33D/slvvqSHVsUHxVDLjxGOq2+XD7MqfOx28
	ditp2/ZhQ0QdayZCeFbQEkLaqC8qZ3BR5jprYfZQ2jiSeB8w9EkVniOPYCO8seU0j6kaSsGx6PH
	u9PUvctEzVd/Rd8i4cdhUwgwA0yxxTB/aK0YNwk98PKTkeGZ78e4XpoqucA70kqOCl5YG8Y54vP
	7TgXpNW8EiWQ7bcFqHF0jbK7hORWQaD6HraPRixsvasB2CJpbOJLUk84GGi8dObx9nHnlydS/7P
	cU1PRAUBIcr9xdz8xAe0dSg7tDQZh2IuaeUWqWip0G8eG6X84IbAk3BCxAogiSXmuGwOjHSGIv6
	yj6y+D4HOIOZS4tN4nFm8nebsNKIqYOaA5Lx6iLBOoP3aD9jCFQ==
X-Received: by 2002:a17:902:cf4c:b0:2ae:ac0c:5a29 with SMTP id d9443c01a7336-2b06e323431mr19012185ad.10.1773806735690;
        Tue, 17 Mar 2026 21:05:35 -0700 (PDT)
X-Received: by 2002:a17:902:cf4c:b0:2ae:ac0c:5a29 with SMTP id d9443c01a7336-2b06e323431mr19011755ad.10.1773806735209;
        Tue, 17 Mar 2026 21:05:35 -0700 (PDT)
Received: from [10.217.217.233] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e62fd3asm10424855ad.78.2026.03.17.21.05.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 21:05:34 -0700 (PDT)
Message-ID: <797d1615-860c-4829-a8f3-ee33ebeefad6@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 09:35:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/7] Add support for Video, Camera, Graphics clock
 controllers on Eliza
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20260317-eliza_mm_clock_controllers_v1-v1-0-4696eeda8cfb@oss.qualcomm.com>
 <253ee25d-3096-407d-8d2e-3c9d1072b2ae@kernel.org>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <253ee25d-3096-407d-8d2e-3c9d1072b2ae@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: hJYW0zqJkTTvDR137c7KTWyrzfOMLG8V
X-Proofpoint-ORIG-GUID: hJYW0zqJkTTvDR137c7KTWyrzfOMLG8V
X-Authority-Analysis: v=2.4 cv=QsVTHFyd c=1 sm=1 tr=0 ts=69ba2490 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=k92yKOBYwQCJlanLp_wA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDAzMiBTYWx0ZWRfX1fojg+0s7Yzm
 apdT5ryE9eqdYxizsM0kSvUfzRlaBllM4wiMvMdh/c7Ti3GCMEWM5iyYYt4mmgvtsYqV7CpH1OS
 hQTaL5y3taB/aTD242IOtetGJuCjdNeLWGYF3zTzi//CdINrMOJssYhF19VfokUXSQm2HnsQ7Pu
 1hkALauRfae/Tfzhc9AUyq7Z/faZM0QTObo1lCJhPhbnodXrwXXs4xJxzv+LUR6/m/ezUKipUC8
 cN1gRo1Ig+jW2CgTMFB5zAJSEXgMcFecCYGszlGdqH2or0yATuOH0MYUE/hxuQwj8nzqacYybiM
 GrsxpGpqrO8eFoK1m9fSEm4+CfZfHL1ssJxCSaLOWovO0SSdj7UyYmUVNVQQkLGRXxk+FjQoB9O
 s4tan6Cw15VtLILbdv8pDCgr9GdXNiQe+uXFypUGjLYm62l+eQSIarts/4beXz23aoVVWJHtu2w
 UCxYq0uifSR+N90zP/A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_05,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 spamscore=0 adultscore=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180032
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276909-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 142D52B5A6C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/17/2026 10:53 PM, Krzysztof Kozlowski wrote:
> On 17/03/2026 18:14, Taniya Das wrote:
>> Add driver for Eliza SoC camera, graphics and Video clock controllers.
>> The camera clock controller supports the cambist clock controller and
>> the regular camera clock controller.
>>
>> Dependency:
>> https://lore.kernel.org/lkml/20260305-gpucc_sm8750_v2-v5-0-78292b40b053@oss.qualcomm.com/
>>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> ---
>> Taniya Das (7):
>>       dt-bindings: clock: qcom: Add video clock controller on Eliza SoC
>>       dt-bindings: clock: qcom: document the Eliza GPU Clock Controller
>>       dt-bindings: clock: qcom: Add support for CAMCC for Eliza
>>       clk: qcom: videocc: Add video clock controller driver for Eliza
>>       clk: qcom: gpucc: Add GPU Clock Controller driver for Eliza
>>       clk: qcom: camcc: Add support for camera clock controller for Eliza
>>       arm64: defconfig: Enable clock controllers on Qualcomm Eliza SoC
> 
> On which device did you test it? Considering that you told me you did
> not hear about integration branch with patches before, I have doubts you
> could ever actually test it without our changes.
> 

This is SoC which is already tested with our internal mobile platforms.
The SoC w.r.t clocks remains same and has been verified and work well.

> But regardless - on which hardware exactly?

These are our mobile Eliza MTP platform.

> 
> Best regards,
> Krzysztof

-- 
Thanks,
Taniya Das



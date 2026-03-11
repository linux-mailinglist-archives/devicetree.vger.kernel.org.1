Return-Path: <devicetree+bounces-274008-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMauDiVHsWlCtAIAu9opvQ
	(envelope-from <devicetree+bounces-274008-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:42:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 354662626C5
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:42:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C3245307F619
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:32:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A425B3CEBB4;
	Wed, 11 Mar 2026 10:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EIu8A5kQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Em4Fc196"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E2453CEBAF
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 10:32:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773225136; cv=none; b=asz606u+hwhjE9OLkC92ye32fiaX2YYnkYde7ZqHy3arfoWcsk+dBk7XP14J+xkgBojtPuQIIwHIOYWN23UJf3ebz83CjntSH7zE38aydejYVUeh+h05sqLyjaSfWwQYitFZH+8gSfFEC5pEZXn1PpUlIrpnoYPYpu7HXyMmYXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773225136; c=relaxed/simple;
	bh=htNUvpO7kaFE8Z3ZWACOyCCFUW705q3AWvzmdw8CkX4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mQc48+zxDwUKOhRbvWFSUIHjBe6cNGvD4sgYgtrFVYhJg+POgd7txYWyiYnvDBNUx0v8sKPPoTvrYYLotXGof8VXpHaLdcWm4KCTfzc+NlCBSF7WbYaf5Umh0/urIlbqe6RabUM8E/mLJIzbBgD1GeBJJolp+0/nc7ByvVGDquw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EIu8A5kQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Em4Fc196; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B6tMGK2140298
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 10:32:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	htNUvpO7kaFE8Z3ZWACOyCCFUW705q3AWvzmdw8CkX4=; b=EIu8A5kQwE27LIwM
	Ngyfv3rDJmQZ8fDxKLhIBKxHNUHzgmX3t8whpvuEESyfOkuWIujp5pWH2hFugje7
	+TncqvFfmsQtNK3wFO9I15aS71byfB0B/WhShwfBnjvHKj1F5fz4HOI6tA0HzZd5
	0TYqALTNSKwkZRCMmZr3ndOb7hFOUw2YBBvEcfqL/H01vjyi2eCMLuktCWzW+mdx
	4QKtUMEcpsP071O/sD9b6RWDMuc6yfirt9tBE2Mfw/hlgO+2/EumnoXIo51gTISR
	/DBlsjHJOPxNf6tSWneyi0UlnfMVjLOXeuiVqM3CMc6d5MNHnkfjLgDhssD/QLzi
	0rQx7g==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctqgkb672-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 10:32:10 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2ae5031c6b1so91452185ad.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 03:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773225130; x=1773829930; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=htNUvpO7kaFE8Z3ZWACOyCCFUW705q3AWvzmdw8CkX4=;
        b=Em4Fc196xDg7IBpBHwfFQoo1VP7SAWQ5f+Cn80R5OgCGgwLQ/CEE3pXCjWlgDJBed/
         HCux9so+QFEq6k5hDBwsN43qbeDXs4CQntxFi3wj5LoB03dxvEmGvwvmspkuInk/CUIW
         +GKPwtpNdX9wjy1in2bpwi23f/RBsLzSUcxDL+ckm0mKpg+YJEa1OGKAQjT0wo/chs2P
         zWfqlUHnbOaDF/RXVD5x3OucdG2mLLAtVcks/YWyae3DlyeNybHrSO5sRVnsYp9fjWFZ
         Hj4u4eUZbSZ7KF211jd5uqkr2pk/3hiy/UrnPQGNTYThZXKoBBc29jXEmY1+2kkSnHhR
         LTLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773225130; x=1773829930;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=htNUvpO7kaFE8Z3ZWACOyCCFUW705q3AWvzmdw8CkX4=;
        b=Ifr1LTzlpo+wLOQag4jU56mvCKuTM5sntHNdlOazkbX/UTte5gZtBlL4pDFaTHbb1O
         1e+uhHwEiYLxXPYx7nO8FP+xGdlAymPs/tCKjYpwxpZp/yO+hreJuSVbmAj/zEH+LT72
         0WqH7JeUQ4+Ls+HXOymwlutnT7mpDu1nQKpoonBTjO9pgC+qdwmtvrIL06WiDrRJsCqs
         EraksEipRuksVTUYdPSKBfCo+N818PWzim55E/b8XB9uWUq/rTYYO/RqOSGhzTBVFx01
         XWyYjK498hg1+c5tebKNCeATn4choMEry17XAM/JwDP+NUJDsjg9Oj9n7ob8eObeyIJd
         XiPw==
X-Forwarded-Encrypted: i=1; AJvYcCX7icJVLriVsjGgIfbuh1vmqb9pLvPmpcppuB9G7C2LzJiF3h95u1Um/u0kTrysxDqzdiH00nby2Esa@vger.kernel.org
X-Gm-Message-State: AOJu0YxQULhI9UGRiRSKVSJ+D8bB5Y2jH3QCp6ARn9vv/IGcrJGwUA6c
	lE3li2q09Boq2tBFXcXNyO1zFwARVtUPWBWQA1xp6Pb6WDHS5VyvInrolPk+FxBb55gPW2xJddo
	zN0KFRNSId2ytX+SmDPUfGMR/aDy6jKY9/X8lcHxB2XZto5EmEVa6PzXih04w05Cz
X-Gm-Gg: ATEYQzzPVPbRiTt+CrHNsU1L5X+g7TLghJgaxgO1OuwdAworsYpO0jUoX8A0F2ocQzX
	RlbghH8oW74c4PKIGAhymvniHIrlGs8Qe/dAGxBD2w0g5SH70lupb+l3qyb8Z0GdxFNvwcsLi6F
	LZunBTOiTaw/Q+32EMXboY2CWMZhLzApDV698QxxEkL2JwCN4j33J8dmS3EbGUTUB9xfJhb6JRc
	7/7JpLJ8QSDa79Xqxn5KKBK77J3oRUtohWQlpGa87QHMI4axnXWJ/8w4y7lTHOmt+ks5TVK5Y3M
	pwWFtijKagKPQcSCiXzS4hZjNYmUYy6XaDNQcfh3+DoNpy2r+1QTTroOJB2QU6FuPd4OvpsTRlf
	9zOmKjm3swemy3+3Pz5lxvX2+TysXi21yUcvefW/hsvbQOr740FX//K2BJ4TG1V/DXAOz4jUnoU
	Vj8O4Pxx4jfbgnjqdO9cO79vDd1mgLd3W9ZML05xA=
X-Received: by 2002:a17:902:ef43:b0:2ad:da28:98d with SMTP id d9443c01a7336-2aeae8ba653mr22132065ad.37.1773225129607;
        Wed, 11 Mar 2026 03:32:09 -0700 (PDT)
X-Received: by 2002:a17:902:ef43:b0:2ad:da28:98d with SMTP id d9443c01a7336-2aeae8ba653mr22131785ad.37.1773225129053;
        Wed, 11 Mar 2026 03:32:09 -0700 (PDT)
Received: from [10.190.200.237] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aeae24aab9sm20200685ad.30.2026.03.11.03.32.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 03:32:08 -0700 (PDT)
Message-ID: <de803488-4545-4910-bb49-69dd928116af@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 16:02:01 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: kaanapali: Fix deprecated cpu
 compatibles
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, sudeep.holla@kernel.org,
        angelogioacchino.delregno@collabora.com, viresh.kumar@linaro.org,
        neil.armstrong@linaro.org, festevam@gmail.com, Frank.Li@nxp.com,
        danila@jiaxyga.com, lpieralisi@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, tengfei.fan@oss.qualcomm.com,
        jingyi.wang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260310040751.3132523-1-sibi.sankar@oss.qualcomm.com>
 <20260310040751.3132523-4-sibi.sankar@oss.qualcomm.com>
 <20260311-observant-cyber-griffin-ace587@quoll>
 <0469c476-cf42-46ed-a9e5-b6f10cb61770@kernel.org>
Content-Language: en-US
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
In-Reply-To: <0469c476-cf42-46ed-a9e5-b6f10cb61770@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: TW1P72W4am0l3AbxWG3xS87A-4F_CPBz
X-Proofpoint-ORIG-GUID: TW1P72W4am0l3AbxWG3xS87A-4F_CPBz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDA4OCBTYWx0ZWRfX1MaIGXH96l5i
 chLd4n1DBW90BDrTeg9+ymKqsjUBsWQhyJI+ne7rwqrq4VtRhGzX8kTq9SOXR8ZuHxqL14jmpqB
 htv8BsrQ636oZmn4wh9F743/ywn0Y8r5FvG1JLvkdoH+9ct3bvQGcilWf9zJ1qA6qNK2wUT7E4T
 ByJxy7Lq5DfrUQfYaZEYWJleIi4GU458U7xfdjBtrPVvzpuNzkw1/T7z3bcMEp9oChD9t92mq24
 Ixo2PDqQS6uRhccMzqgAcacivOiUg6t3KqOa8vL9b16vKYCmGYYxQB5pXFsk38nKtwOwQjlYMEC
 GckJBNUrZZkV9m3v22xKrjQSXz/C0cqV9Mpp+YDt8BlSaMyGxWRnXC+PZE3BO4/9rgoQs/noy7O
 8hZxl6YxNqNxrGnseq6WxnDyziR042ggwovfvfhDTz53OLRKxcOB17p0s6AsKQNXcZK3ID6Jn+D
 a8SMmF4NPJOR+KHcXlQ==
X-Authority-Analysis: v=2.4 cv=M4JA6iws c=1 sm=1 tr=0 ts=69b144aa cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=Mvq4l-MZUZxtGvwV3SwA:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 spamscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110088
X-Rspamd-Queue-Id: 354662626C5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,linaro.org,gmail.com,nxp.com,jiaxyga.com,oss.qualcomm.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-274008-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action


On 3/11/2026 3:51 PM, Krzysztof Kozlowski wrote:
> On 11/03/2026 11:04, Krzysztof Kozlowski wrote:
>> On Tue, Mar 10, 2026 at 09:37:51AM +0530, Sibi Sankar wrote:
>>> The generic Qualcomm Oryon CPU compatible used by the Kaanapali
>>> SoC is deprecated and incorrect since it uses a single compatible
>>> to describe two different core variants. It is now replaced with
>>> two different core-specific compatibles based on MIDR part and
>>> variant number.
>>>
>>> CPUS 0-5:
>>> MIDR_EL1[PART_NUM] - 0x2
>>> MIDR_EL1[VARIANT] - 0x2
>>>
>>> CPUS 6-7:
>>> MIDR_EL1[PART_NUM] - 0x2
>>> MIDR_EL1[VARIANT] - 0x3
>>>
>>> Fixes: 2eeb5767d53f ("arm64: dts: qcom: Introduce Kaanapali SoC")
>>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> I explained you in off-list communication what you have to do - this
>> MUST go via fixes and you MUST annotate that.
>>
>> Where did you describe that? Nothing in cover letter, nothing here.


IIRC, you said this can't go in and later remembered that
it's still only in a rc and said it can go in. You then asked me
to make sure the commit message described the fix. Anyway
it looks like I missed your comment on funneling it through
the current rc.


> Although then binding should go via fixes but it depends on patch in
> next branch, so it cannot be done. Sorry, this waited way tooooo long,

By depends on linux-next, are you referring to the glymur device tree
change part of the series? I can always drop that in the next re-spin
though.

> so you cannot make this change anymore.
>
> Please drop it and you are stuck with the compatible you sent earlier,
> which reviewers requested multiple times to change.
>
> Best regards,
> Krzysztof


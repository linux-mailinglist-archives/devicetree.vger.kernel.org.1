Return-Path: <devicetree+bounces-262758-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sOHAOUSGg2niowMAu9opvQ
	(envelope-from <devicetree+bounces-262758-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:47:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A7CEB22E
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:47:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8E720300104D
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 17:46:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36CBF34D4CC;
	Wed,  4 Feb 2026 17:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="poF2tdhv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="T59Qg3a6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03B23348457
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 17:46:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770227204; cv=none; b=u1hdGlw6ucGewnOPAc1QvtfsWO69hIG5opv0TDnmhdt12yc/C/qTsVetscmsBapUGaAjMoTHBI8AnLNjsJNv/Nqd27wd1H0qjx4IiCZViz4CXFDouJ2zG5oK7Zv6aimCN6Fc8O3/tt94Ow7n457dbyc+zv/RkqgNOGNC+f3EbLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770227204; c=relaxed/simple;
	bh=8XU3LRgtIn/4xl/haqItjUSBjJXoc4lR43X4p0kWuGM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sTEPQ59HSIzuKxX2RpHSmYRFjZeoxEWcfLQHawJKjwI2EVsS9g6mXXZxu0+6xvjK/ygBG/tJlIx7VA3GlQuv9pIzm6YCoMnBXEZV68OvpqUnd+sLSDEe5hhuhWNN8evZ93a0zv+ZPwNk4kUqh7tyRg4uHvV9eAMWc8iapxxSpFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=poF2tdhv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=T59Qg3a6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 614CIW32792900
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 17:46:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Xk5etMzqwxQ6Iz1TvIYD65fLeP8TqLW+iR2z41xp4qQ=; b=poF2tdhvrJ18E4Go
	Ib5K8cAQrIT9bRPzY/WoTnYZSsSoKe9tgR0iI8+qaSvA0gYq/anlNjojb50JQEnd
	BXh+LwNOB8oGrexd++E41oVDQDE/OUDsxReSLbKmaX3ud1oBVT6kGjUclhzQaSbm
	1AKGbjMNHnKsOK54GX7G0vd//JxuFTcPTpMldKL/dmcmLQ1tLdDpTrnL7AFx2kH+
	w7CLxhBE+2ZH9kQkrr72z5R/BGtIF+HQoBqQqs1a2QEv2wjx/qeyStNTUYnRkI8Y
	BE6jHCJ9sKbe+/UHFVlMBi7UfxXLRE2RxdxWRne8CaTLE1bNc/V4g7KR5ToMXUE+
	8R8xWA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c43uxhgvq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 17:46:43 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-81c68fef4d4so174577b3a.2
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 09:46:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770227203; x=1770832003; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Xk5etMzqwxQ6Iz1TvIYD65fLeP8TqLW+iR2z41xp4qQ=;
        b=T59Qg3a6Su1QYQgi822QTHXi8FzdjxcxHCA0IBl/biobY/KrjHNBjSKM49o6LzaZ1g
         HKOKMh1NzI/vxOBfAKA8OXJv4zWcwsuqQ97LU8mhw/cMouFSe3ox0aduA5vvxAydpd5v
         SVi+ELUFPlWVstZVbxXcKzQaDq/EISMp65JMEVsWxnrs/pLGd7OZmXE/pE97NXO6SBD2
         1e/UUQ3yXbpH0A5BSxsn3u5E142NAV333dar3XM+CHzymnlcCQoZ/lbI2UOQn20191Bk
         ycUHa28DPoQ0H9ZBhig+p8HN+VgncUunmXVzDZJd43vCNcQI1t7/BR/hV/Unl/FZRfPC
         qkTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770227203; x=1770832003;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xk5etMzqwxQ6Iz1TvIYD65fLeP8TqLW+iR2z41xp4qQ=;
        b=hENE7RSEICJDA2lk5d5KEppzQWOqWLg8t+Thbx18//OVQBNYqVx6knUdxS328B//IN
         GBWI/wLb1XEiT3W7tR4ZAuETSYlJSoOWCYaJK+Se0Fm3+rpwhVrWb7LAPKwoVCUGPRTN
         TrNynliIBUydCgUomq9Nenfle/XGxv6TYZYL9yFnrj5wJVPb7qiE6XiDPI3MqHnzxVt5
         /ruZW/WkDyFQHmrqJFiKi/oyrm0jU0qVrJpTDiB20R5WjlhBKNc5I/tVjtjOkD+C5wST
         okShjos4uAxOPWOgj8K8FRA+9PjGVn6DOC4b1z8vwsBOljeQwf3MS9YLtZXGUGRd3WtV
         gCrQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkKGNtgmEPlP6UM3AKmc7YkL8dT54jD8mYQYR57z9Fno8EgaJ3PX7dry2+N3CVuYe/EGtuVDEbwfWN@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/bvvsPEmXeTR1+QIPIXHnPnVLl6QFu7o4yekLh+TvKxV6nI+Z
	e2nf5DhWPKym+A06RFgqbhADmNaob8+4kpOIQdeS8eEfxZk5PlhmdcYFe+ClLTiwZlCSWoR3P0Z
	AWdhC1pOjTNzyFF9ugDxVDSw+FRDh6NalAVPRwhke3pCWIE/JOG9CMtRXRdYuvYCB
X-Gm-Gg: AZuq6aIx5+/65c94yFMgYF3R8ZBsdEgPilnZ+ol1CGCwAFn+hjryo+kmk0cEVRZAQg9
	Vao0SojSmhQfHruneKBTdfh5RbMVxFtI2+JmX5q7WOmyDy/7Ck+VFI7lRlyjf8Dr/wwhWEM9kjh
	3x995c6L9BqwQe2Dz5QR3sS+wuxU3y21JwTFbCWY0AlQED7QdinpyTpMr7GrLdUfrzJBsM1ww9r
	sM/g0BT4YbvRWOtzOcGZDIerZ1YAcjLcYaWoqqIsLL4mGRVAyK0/yMoCkl9Wk/FkfZ4ZYH0esxp
	SqLvXV1hFAfTqPOFixzrABe7qX9jlsHBjZMuVUpb6jkwI414QQhVGuYukxOKmXzHtvWoAHAwuTh
	G1AniNn8+8wmPOFKhSojxMVHtKVZD7emkq5YMZyDcxe/s
X-Received: by 2002:a05:6a00:22d5:b0:81f:43f7:183c with SMTP id d2e1a72fcca58-8241c4ebf69mr3793481b3a.45.1770227202725;
        Wed, 04 Feb 2026 09:46:42 -0800 (PST)
X-Received: by 2002:a05:6a00:22d5:b0:81f:43f7:183c with SMTP id d2e1a72fcca58-8241c4ebf69mr3793446b3a.45.1770227202292;
        Wed, 04 Feb 2026 09:46:42 -0800 (PST)
Received: from [192.168.0.103] ([124.123.178.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8241d16401esm3254706b3a.4.2026.02.04.09.46.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 09:46:41 -0800 (PST)
Message-ID: <97535aa1-6eb2-44b2-b04b-e7608d630fcc@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 23:16:34 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] clk: qcom: videocc-x1p42100: Add support for video
 clock controller
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
 <20260128-purwa-videocc-camcc-v1-3-b23de57df5ba@oss.qualcomm.com>
 <aki2cw65fdl2toctcquprkzpltz4tejsyf2sudlfqy5hsluvx3@ayi7wqaa2csq>
Content-Language: en-US
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
In-Reply-To: <aki2cw65fdl2toctcquprkzpltz4tejsyf2sudlfqy5hsluvx3@ayi7wqaa2csq>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=StqdKfO0 c=1 sm=1 tr=0 ts=69838603 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=2H5/5ZkxJs/wMzWGxXwROQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=f8uzmviW7ZrpKRLwxXwA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: erZZ9ZmW1DjHTIlxFUWTYmlEbMsCVo8J
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDEzNSBTYWx0ZWRfX0TCV+DSdfr/k
 E+B12qgcP3kEiA2Kp3GiA+HnsMkIhW/7V/KkoNrhfksk64WbxaVOB1snH+l6UvwtSyNk1gG7r9H
 GVm7UHuAOYLIE53jZxZorZtStPx7BxIvVhIhAH/Sww/VE7MoDcEhSppPUUKl3QqKvlqKnM+hgTE
 gtvwUX8EPyRDeD05D3fUj6xxX0m0c+g+HY0klOzxScBpMUK7UdcdkrTwjRgEUwy4aWhgJ7YIoXJ
 01frsMj8xiQrVFJ7DTXtnnX3/Yhg1YTMoqzLS43AnMB0n70gydK4OGUddC6NMVLXyKpxe5wOFVb
 pUe49RSYbYiAt9SxlC2VbNyhTPc/crbIxo6aEmORvBgGWggAF+5vdbLG3X/TUDzogfpK5krSLcY
 G30LtTtvS212LahJ2c2xuJREwp8sL6ogjRgYuJcTh9MBZ5ijhded2YrCOEGUXWA4SVeRUzTVKTj
 lxOiAZ8Q4PBqqo+mb4Q==
X-Proofpoint-ORIG-GUID: erZZ9ZmW1DjHTIlxFUWTYmlEbMsCVo8J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-04_06,2026-02-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 malwarescore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040135
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262758-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jagadeesh.kona@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 05A7CEB22E
X-Rspamd-Action: no action



On 1/29/2026 6:07 AM, Dmitry Baryshkov wrote:
> On Wed, Jan 28, 2026 at 12:56:34AM +0530, Jagadeesh Kona wrote:
>> Add support for the video clock controller for video clients to be
>> able to request for videocc clocks on X1P42100 platform.
>>
>> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
>> ---
>>  drivers/clk/qcom/Kconfig            |  10 +
>>  drivers/clk/qcom/Makefile           |   1 +
>>  drivers/clk/qcom/videocc-x1p42100.c | 585 ++++++++++++++++++++++++++++++++++++
>>  3 files changed, 596 insertions(+)
> 
> The videocc driver looks almost like videocc-sm8550.c. Would it be
> easier to merge them into a single file?
> 

There is significant delta, the BSE clocks are newly added and few cdiv clocks
are removed. Along with that the frequency tables of most RCG's are also changed,
accordingly initial PLL configurations also need to be updated, hence added this
as a separate driver.

Thanks,
Jagadeesh
 



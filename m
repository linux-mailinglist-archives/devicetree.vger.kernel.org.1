Return-Path: <devicetree+bounces-315218-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HeVaORbHO2rTcwgAu9opvQ
	(envelope-from <devicetree+bounces-315218-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 14:01:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7905D6BDEB8
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 14:01:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=J3WcXHXO;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=PsSTdYHa;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315218-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-315218-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A6B1130EF958
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 11:58:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D3F037F8BC;
	Wed, 24 Jun 2026 11:58:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD9F9388E57
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 11:58:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782302309; cv=none; b=NYkk6G50GkH9Wk1Vc74PnRoioHCoDTWfkmzfW1lSt/iB0P/LQPS+qcMLv3sZZ65mxN4Uov9W+ZufGxKd5hSzKvhr7slfzSoRKwoich2svk0IjtqQZI1rTz+qsTllbdXRIll0/4RAqGe+5y+FfAiET6v+HEWuDw1xLR15as8XBEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782302309; c=relaxed/simple;
	bh=mA8NYXNmNT65NoFvz1Yt6/Y5cBfpdGF7srQLyE78jxY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kcj4M4N+DQOUdrGIL1C1r3fKyKp6XAEJFocJHOKjy3zlHMWYK1jXUJDhmLcMe4MDh9Cw0Xn/w4UPG4ljm+d0S01ukaVaA6AA9S+bXcAmz7OttNTDDAe96+X8jf4n02z6dC38Zcg/mKzSWX3FzcK/bL34VvOz+HyZWyCFYm7MVB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J3WcXHXO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PsSTdYHa; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65OANmgu4180623
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 11:58:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VwRxnTIAjjcGvzfUW7BRfXBVqGJq9ry1GrZMDmwtZ38=; b=J3WcXHXO23BtMYeL
	9G0zYtUYSdla4Id2ZJi0quQJjgRmUJwCPaXoXxFtCLA6zwGCQ/nUkjvcTJ94dNpV
	sFgOcGxQX9bOZTFm8ePmu0pSYUE0EmPr7te//SV835HVHSi6cRCttzZB7p6a/A87
	pv06kSzZZ7p5TpmUN3DTOuzWIM5CiP7xGDN/G1AHlLFAc+gbGG/kveHio99LIa7P
	ZYb3YeCfRlDiUqydQib5JusjsuwzLgmUV4iu2TLBol05hKt6lgTGw4dgNbdpVelK
	lUOYQQ10l3aBCrZQiNrBRnvNR+SXtcGfwxd/4HcWPlsqu552L86/bO3+MV/e2A5e
	4GnZ5g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f0aqp92k4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 11:58:27 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8dc4536d42cso3068846d6.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 04:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782302306; x=1782907106; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VwRxnTIAjjcGvzfUW7BRfXBVqGJq9ry1GrZMDmwtZ38=;
        b=PsSTdYHa7/9YT2JICj5uCGb3ODuPzjpMmr2dwJPO9Bkyf0/cow9sKvuCFM1mzPRqv5
         0+vGRc+QF7VNB1t0kNCXcoVs0Aclxzk7ImYBg1+vUdo86fKzTjSJNZsRORWLBWOrDKBl
         s6ULWEktkdpB+3ugow/CKoVCHwHOlGT1MTtKnPpZB9JmV3SVUfdvT/XtbAYuaZCtxxr7
         vn8HQ7yfJ8grdSYId7z8j4MRxNnGGOIJ+dwRst/L5cnnHNMc/ir2wojrtHd6+L5kjHK/
         q5aKJwze6l2xX8QB4j/HgsK6sCWzweSO8yQHW/4wz9cQAw+mOn90M6HWwI3BN3Rgtf10
         4DGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782302306; x=1782907106;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VwRxnTIAjjcGvzfUW7BRfXBVqGJq9ry1GrZMDmwtZ38=;
        b=VAIMHJZl+0Or3jHfbkFW9LYzxDP8GiiIzpiXV6la7gN9FpJt5FXpXq25tfUUoia5fG
         LVRxmi9uR98JrrWBR8nEXhWNHfu/BAXd1P9zBKPP5oe1x4i1iHTAT16CEk3pDsvH7+2I
         0DhUK2LflAB67ujvAqNBraJmFtlWiclkfkRqUfSePbiPbBrphq6+Y+qKGEDJ9z8Ag6gF
         swR6+197no0QXqFlEmVW/7tgTY/CPLiPhb6jbbosz2tzAiYTUVq5Ee71Y8iUcDOwDzVb
         mBoo+AReMT1xcPwZBo7FWytOdE/tYxt0zI9fm2Ws4Irr4TTYX/WqSjYSjo2mdzx2oMgf
         7XCQ==
X-Forwarded-Encrypted: i=1; AFNElJ+gz/nt6DlTfGrdfZA7+3tjDvm7pO7gDZ4V6WqpkzNrWkKTrpqMh+2IYUc1SwKDSCfKK9k1zMkveUtL@vger.kernel.org
X-Gm-Message-State: AOJu0YwPQWQtEQiDp42f/mZX6mrwD0tfJ5mbz37a5EGv4ltfbez7mTKw
	JyKaTOMSeaYQZ4qMS9pfHwHgqFiIay3Nfc7pK0Fw+IxPFiHj/2TeQrrGdihTZb0mnxHhSDVPSto
	zh3783V+NxENOuLyECLjJkUC5kZJdW95M7du49NDuemvuesx4HAAnCoEB68Rz18f7
X-Gm-Gg: AfdE7cnZj2/sLNv+hwzkD0NTZWr7As1xrXJyNboiY3Kw05Xtw75A0l3lt3LYOHTxL8T
	Qo17u0Vyppbz94t/nnbkX1r0yxbu2kH9H3erWgAUyoV9l10HrIsc2I/DkLs91lNQ+gbmVBV+fa7
	ReoYxbLTaMKHzkcASvG4iD9ix36cxjy+tU3sfc35ZoCWifLfm42bKB+gHAYQn0BBfFn/711gLNi
	cgR9dADYhhSR8sSsCYpDOz7rcX2Gjz8Cg2yav+ahgN5DqzuY0QTRDvFFxEd3KQKxXyjG15McWEn
	lmm4QFras4jNe0YmH3JGS7JqYFC9AIh0Ez9vHlGHzi4liiIjWiiOQxuBze1CyMQvjW4D4W6iJ/I
	ueb5bUouBUQeOFGxiaul4pwGoRty8gMIcj24=
X-Received: by 2002:a05:622a:1345:b0:50d:9138:3322 with SMTP id d75a77b69052e-519fef470e1mr198272351cf.7.1782302306088;
        Wed, 24 Jun 2026 04:58:26 -0700 (PDT)
X-Received: by 2002:a05:622a:1345:b0:50d:9138:3322 with SMTP id d75a77b69052e-519fef470e1mr198272191cf.7.1782302305635;
        Wed, 24 Jun 2026 04:58:25 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c0c5e49a9fbsm648675966b.12.2026.06.24.04.58.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2026 04:58:24 -0700 (PDT)
Message-ID: <9322fa29-553f-418c-8291-2ef2dc93fb70@oss.qualcomm.com>
Date: Wed, 24 Jun 2026 13:58:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: arm: qcom,ids: Add SoC ID for Snapdragon SDA
 850
To: Krzysztof Kozlowski <krzk@kernel.org>, David Heidelberg <david@ixit.cz>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260623-sda850-v1-1-ddd8e62c85d8@ixit.cz>
 <6ddd0652-d18e-4e23-a230-5f5c8a9756f8@kernel.org>
 <16d91c51-9f1b-48ff-90db-7dd7ef056bc2@ixit.cz>
 <80049d2e-ddc9-44e9-b231-876adcd79823@kernel.org>
 <12bc9f3d-bfea-4ff8-8eb6-d2203bb46b89@oss.qualcomm.com>
 <b3799f48-85bf-48d3-b2bd-daba59f6dd0b@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <b3799f48-85bf-48d3-b2bd-daba59f6dd0b@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: UaC-eaWf564emA7EL5fC8PE4oTDA6GBe
X-Proofpoint-GUID: UaC-eaWf564emA7EL5fC8PE4oTDA6GBe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI0MDA5OCBTYWx0ZWRfXzniGcX5dNl6c
 A+4QkeXplpQZH2vmAZ+49B5uk5b9R3oPqlw6TNvhwiR9oAefRj4OiIrBUjORydSV399J+6KTyY5
 R7D5yl7sLrNy2itkuivxg5e2S3q1+0D/RJWaj/2z9ou0R0//BTUfr2yv3z0aV7Jw5uvdCkCQoU2
 cFWBQhJ+5V9v3Qz7DWz8rByp29rFAMf2snVm5IMGJDThJoF14vDegWkDGuUvnCQnenTGGIXMLyM
 bLEWu/o9rmlmxD+ujW3i8R7FTkVTFAQWHd3oP3NLDE30LBQt6oTtZfLzpOlCHief4Wy0ORPahFK
 1+QQBq3mFn4fm5+im0R3sd7YzV/Fd+bqE5yZtOQarpSH79g6XAjKkm/oCKPVFw6K08q5NCBSi69
 UYDE6UlCla9ltcjAR9dMhvrfdGdnGLOH53NogOnoQLFlztiWLPUnzia3taQ9mU1ogN7A7tjAJvd
 Be3YcgYmF8MzTpK7EnA==
X-Authority-Analysis: v=2.4 cv=QLhYgALL c=1 sm=1 tr=0 ts=6a3bc663 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=NEAV23lmAAAA:8 a=k3qyuYxEmaSsnDAF35UA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI0MDA5OCBTYWx0ZWRfXwzcBl4s8vmEt
 6498gq72pTcXv25ewYqFu8XUP7vWsUGK1mOWnGjEDkHjTBG1sReGk6Oow0f+4uI3f+ivjuFnHkk
 gT38KFY5kjQ1M1ydZD1wrSYogkACOHs=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-24_03,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 priorityscore=1501 adultscore=0 suspectscore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606240098
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-315218-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:david@ixit.cz,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7905D6BDEB8

On 6/24/26 1:57 PM, Krzysztof Kozlowski wrote:
> On 24/06/2026 13:53, Konrad Dybcio wrote:
>> On 6/24/26 1:50 PM, Krzysztof Kozlowski wrote:
>>> On 24/06/2026 13:37, David Heidelberg wrote:
>>>> best I do is close-to-mainline tree,
>>>>
>>>> https://github.com/commaai/vamOS/tree/master/kernel/dts
>>>
>>>
>>> That's not upstream, so we do not need this patch upstream... Just keep
>>> it out of tree.
>>
>> As I mentioned, the proposed ID has upstream users e.g.
>> sdm850-lenovo-yoga-c630.dts
> 
> There is no use of this in that DTS, so my comment is valid: please post
> it with users.

aaaah, I get it.. David, please add the socinfo entry

Konrad


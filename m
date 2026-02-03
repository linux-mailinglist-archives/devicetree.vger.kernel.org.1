Return-Path: <devicetree+bounces-262232-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJgqHqbqgWkFMAMAu9opvQ
	(envelope-from <devicetree+bounces-262232-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:31:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD9ED90C7
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:31:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 30A2D306199C
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 12:25:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B700F340A63;
	Tue,  3 Feb 2026 12:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VGj0sV16";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q00qQlC/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4329A33FE0A
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 12:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770121536; cv=none; b=TmiJ6dmGMI/vD6CvFPHM5OGQ6FFa/E9cLh2ixpMO5FoujNUpk+Hv2XP8vzvAA8TNqnpk2Eq2ITbWH+nFo2gukyquR4BHh9RC/XLTQnvMGTgq3jQ9eiHalhS9VtrGJHbU/kyUWkaJj8osHo79xm18GsqLmHKUyj0KVS4QtqY0qEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770121536; c=relaxed/simple;
	bh=q0BC+UNwqgkm+AoQaAiSVdLDeuvHClDj7duIXglk7RU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dfZzHt79ecJ+FybnsA8JWUuqoZhB6JV1CeKSI97FSqyIe33g/VROIUAgifuhMjzzz/KIDrN2yea3fDKIg1WxKVPKeFkKbxy0iNizw1GbZj4/8eccEfSmk9MVocBF5asPadVLA1EnLcaMGw7MrZ58wd47E50gdjWfLQQd5f3phsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VGj0sV16; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q00qQlC/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6139m7eg3386846
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 12:25:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kr9VkLymfmxS+ULRZoGX6sAx4XQrg7pGqU67+DmAAfI=; b=VGj0sV16COHQZLLJ
	bTb4nKpwOXw3jgTPBBQws41x/U6s3Y4GHDkTWd4XCppUqUa7kEzcLhPlFUxIC3tG
	0ja51DKluhhIqSGzXkEVPX5huOXPMKcIMFtosy62cKcN5RFX7HWYJzNfd8iZn60t
	+wXJg5qTXs6Tnrr9ef0R1u+BXA+ZYWwuvLLDtYiQbwfbb8ZCEkrc1wh9lrSHXVo7
	/YBj8OJmGetGdV2Bv/rT4uPuf2uSIUD+bgp5Bag05yntFq2Ry7nzDYZuIr9WuNeJ
	yGU4FRLlh1eBqYyDtTvU9rIL0OyymN2VGXkmiRurFaxpvXEwJMvgdXWUz616/occ
	Y75BoQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2xvbuepk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 12:25:34 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c533f07450so143589885a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 04:25:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770121533; x=1770726333; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kr9VkLymfmxS+ULRZoGX6sAx4XQrg7pGqU67+DmAAfI=;
        b=Q00qQlC/6pzHN2a6IuqWeRInUzVhEz6/PE71B6LD1ndLLglFaTeA1RMiairbeWCsJs
         5CEYZm4WWLye1BTR7L1Zubo44zPB40Q26/Q3Gh6KLYex7U7tdODkncgjmndn01kEQCdL
         XBKDwA26zjZOi2xPmXXlSM03kWIGHGzYOSbA8U2natxY/mmkGBA1yNWaTYfOrpJ5al2i
         PyCXx/Na70S3RDuG1in3Vp83cMOKOoeZ8F8xm1WJmKardkSJx8w963ciFm0O7qU+h3X7
         gjSYQ82bz41ypvNrYiGha9pc74V4XBzB8pTdOc81ad4Ob55hi8EHCYoR5JZVPzodPq7w
         fpRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770121533; x=1770726333;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kr9VkLymfmxS+ULRZoGX6sAx4XQrg7pGqU67+DmAAfI=;
        b=U9E5VbQvGDay/1h4uqRnIDTledLf0xE+YcvfHKepFqxLYnAAQWu5Sjq7MWRozGiTfJ
         qLrrTnfEStPNcwRyZaRe9iOMzfVp1yZAmveCMTHLQJnJ0xB0wsect2TIiFVch0YBbVFT
         2z+LvmHrQumgbv2J4tCJdARR29r6hr0IhiIAVcS/ObweFZJE3y17qADBqpo5lbURapXp
         YoKjh2nBLlZt0HjdjUPO9S37ykn2h8siOYPB2mf1tJ1UlnTobD2h1bJzv3W5hi9L7CUi
         yOj/xMyHPu4vuQUWEXFpIfBFU9RryjqOYholQj7AISIt5RaPRoMaL9aLhW/+9ut8xA9h
         yN1w==
X-Forwarded-Encrypted: i=1; AJvYcCWjLpj9/qX5SZTWbOrxSELNASBUbb8s8qBZcnknjU3hqCfGHPuw64J/8nPy13UbbPbeUkXshvrA9ezR@vger.kernel.org
X-Gm-Message-State: AOJu0Yzsp7t3jylknsYWMsr4e3wW3j4vj2q5GNW4VbOt92EdgRtU7wsn
	YjoyhUyoCUPb6I359uh6uhcvcIBv2U73CtsCt6pORWtQ0cAyP3mEhJs7XveLbwxFKeVf8tM7YOg
	fLntKKeVW3MbnulsSTFrLnDez1QKv96VYPwOumfsmyzz198anMn0foI8BBzcGWhm3
X-Gm-Gg: AZuq6aJYml2na5GByO6IXu7bSL8ddm425fQeAx7dnfMQ/Rvj3MV8f6zi8IMLXb24B+3
	p8K7ZqWB4d56pKDSmSbZ9bcKKgpz2XV+Sp808pvxlMZbkpB6S/5jiNrlnJHgb8/ZT2cWbaCmr89
	y3qjCMhUQ3h540UHQnCSIIwOI+PVjLRKYKXD2CQvmtpS4QsszA35SHT9nep1/cFhbD3r7JA0bxN
	1rgrGl1dmW7UJMDczIndVxwxqAUJciYNq2ZGeh/1L0AgWbNz/w95tNg9fTym3XVLlz2Vwk434hJ
	aeBGvQraBwYkEV/mtD9LxGLQUHJOSpcgLyPFkbsV9xb6mEyqiaSm/hpDjKxmt5ak+x8/4ZXJXiW
	6NT531YinBbC9JVm17ZgqM/PCKeEbEyNxu9VxsxSw3GJqpDXQEtEp0jzi206tE5LVPKo=
X-Received: by 2002:a05:620a:454b:b0:8c6:ca3d:4e0a with SMTP id af79cd13be357-8c9eb285634mr1499522485a.3.1770121533573;
        Tue, 03 Feb 2026 04:25:33 -0800 (PST)
X-Received: by 2002:a05:620a:454b:b0:8c6:ca3d:4e0a with SMTP id af79cd13be357-8c9eb285634mr1499520585a.3.1770121533149;
        Tue, 03 Feb 2026 04:25:33 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbeffedd3sm1003274366b.29.2026.02.03.04.25.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 04:25:32 -0800 (PST)
Message-ID: <df7cbe46-153e-4959-911a-14600b3bea21@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 13:25:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 12/13] i2c: qcom-geni: Store of_device_id data in
 driver private struct
To: Praveen Talari <praveen.talari@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bjorn.andersson@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com
References: <20260202180922.1692428-1-praveen.talari@oss.qualcomm.com>
 <20260202180922.1692428-13-praveen.talari@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260202180922.1692428-13-praveen.talari@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ZxG7oeP704It5sz8BvG5TlBVK-d2l2-c
X-Proofpoint-ORIG-GUID: ZxG7oeP704It5sz8BvG5TlBVK-d2l2-c
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA5NyBTYWx0ZWRfX66xlNnnvzJII
 Nwd7OPpFTIS7QHmAvGd5J5zzKVlvVyKaYN79QTQbfymsLx0P4Uzli3JCCI8dPwqFpdgo9FqLDoH
 JtU9r1OiEEl8eaHibJ1YYnP0ajxa25H60wd9AFu5K2HGkRDbfBofZRyKH6mDtUOTuXdQDul4+3d
 fZCBZDL6Pgg+XOHF1HxNQexmZMl6jOo9ZA543TY2sKrG5r93uGG0ejqnPYsL5U7AAZBS3DerpNY
 xVCOE4Zj8wQC5vhwnS3eyiWUZRHAyNfPiMwXWJnhH8rfUYrDhpjMS9W32b1tJKp9CAGWfdrAZG3
 tskUrxfxTVycW2M0GspNSIvTuIGWCwIWaruivQYnkgbI95n1T/s71J807Q27uGVPVwZ8kSo3PNz
 q2+zQUoKedJQDLsbXks73WRn09UqYDDOA8Gvw5IYslca48LY6pEfA+XTYEa6rReYgHNHwHSgClk
 XQ82jgXVoSpiQEBuw/A==
X-Authority-Analysis: v=2.4 cv=AurjHe9P c=1 sm=1 tr=0 ts=6981e93e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=LkbPghAf8A_mGgTKem4A:9
 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10 a=zZCYzV9kfG8A:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_03,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 adultscore=0
 malwarescore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602030097
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-262232-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CDD9ED90C7
X-Rspamd-Action: no action

On 2/2/26 7:09 PM, Praveen Talari wrote:
> To avoid repeatedly fetching and checking platform data across various
> functions, store the struct of_device_id data directly in the i2c
> private structure. This change enhances code maintainability and reduces
> redundancy.
> 
> Acked-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---

[...]

>  
> -	desc = device_get_match_data(&pdev->dev);
> +	gi2c->dev_data = device_get_match_data(&pdev->dev);

Because you dereference it unconditionally later, this should be
null-checked

Konrad


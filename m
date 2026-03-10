Return-Path: <devicetree+bounces-273299-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MHKRHOjEr2nWcAIAu9opvQ
	(envelope-from <devicetree+bounces-273299-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 08:14:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 144892462B8
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 08:14:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B44DF305C8DC
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 07:14:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 029043D75C3;
	Tue, 10 Mar 2026 07:14:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SF7TJVL5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jbBRdrLf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E553D523F
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 07:14:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773126885; cv=none; b=XRRjaOnG6WZ/1P1HYKMZwFRMk6Lj7qYuZ1q4qT/mSGQEysAoWDvoVc3C1PPK5SLyUSkpRILoC6n151iZdv/vSxwvK+FsGz1mLck5W3jnSxPidNTa7vEoQItHqAW+k34X4b0VUw/6TfDjrXSPo5Ie6ZSgEShDZydv+Y9fE7MMif8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773126885; c=relaxed/simple;
	bh=eodG08hd7H2+4eEqRidkXn2k69I15r4MG0U60TKAyTg=;
	h=Message-ID:Date:MIME-Version:Cc:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=daD9fYnaQa4Rd6Q0cmQvgFmPFxR/O2zYJFQBF4iw13cU+LZqNe9tx6ZgZlKdVeVCcgz6BS96r0tUQKI2MShHEhdcELg1rqaQ13mOL6UC+mC06v1J841GUAXwsLDicArWGA8bYWQdsd6n8ZFlf2Vj/jvZqnvNdqhSdwAugspxPa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SF7TJVL5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jbBRdrLf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A2EgO33087351
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 07:14:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WUk9/yYDjpm7Lct9/O3j2FSRijHPmYsf/qPfBafPYuo=; b=SF7TJVL55NJvYKm7
	0LmwUKTDG54qxXVWyXbilLsMrggjcfzx0t/wvsyroAdGm328uW0PnybO5LsvN8to
	XZbLKhsZ3g6dIUW5FXY+0mURtHBTSo75+iJlN2YUhvH30JMgGpF5DKz7xHAerq7v
	hP5/4PdTGu511BHqzH1y+DnrjRSliDpuhUXmuPY8OPhysjI19Y01OW2ZdY2SYAbA
	ZNTzy1AFegGNKHphrK4msRiCL1e/DioMr1o0+iVQfVyBu3Fh0xJJh3fE0HVyu2ax
	nnLZ68yOUk4OnS2pB6PVnrAJ8IaKn2ZHJAGwX1HlHs+o2+H7msRzPTnfS2EPCGge
	knaQpw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csxy8389g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 07:14:44 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ae5031c6c5so446049685ad.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 00:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773126883; x=1773731683; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:cc:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WUk9/yYDjpm7Lct9/O3j2FSRijHPmYsf/qPfBafPYuo=;
        b=jbBRdrLfPNvwg0Oi3ANK0lTmS7pNItgb8osu07EJ7+OZKdeVyt0U960+neFaKEhLXE
         TcuI7S/pBSWZiDCJ7fOj1H1PQZc98ijp5z9q3ZX5oJIriNiv6OwGXdvGHPV+H6K5aq6e
         ZUEPAJYq847UOH2nKSqE3sJS+pyHc1NiDOzjG+PIaDQL3MipgCo3mmT0Hcy4MJXR7/Mj
         ttpNqUKSfleHjUL99w+e49DnhpaDBXViqumx6rq8duJ7he7I6t3Xso1seTJYk0cRP8aJ
         NIRRqGElO7pU4GRa2i/enX+Bi8gG945CQOlHAfpbmcdKbYnWKYTHqkyShO1zaRfAt2lX
         XYaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773126883; x=1773731683;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:cc:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WUk9/yYDjpm7Lct9/O3j2FSRijHPmYsf/qPfBafPYuo=;
        b=sVsSOKcgdkYawkbY9jdd5WcQ8Gb76sT9v/ivhmBbxXIRjwdNFHHdfn6Emn+P2ijtXb
         bldpgAt4VT5lHdolyhAKIGouOsNLoxo9WdWQwePFwCYhjUPPkQPkie+kidIWYkh4ZlxC
         VxdbYUFiiVBhLXNG7yAm1f/Ojqf89qq5LHTwMwoQXvJWWBmXtMHD6XEjxa0dYJIxc3GY
         BB90/njluYbhQRk+va5I1fd1jyQicNd6ggqcddYPuX5suvLG3PnXpnxJS02rKj5HoRcN
         ynaCmipzm8CUkgzFEDpDdXUepqPmVqYCxtg09Mizd2AQx9edytd6Nejj6dQ64IaLICBW
         gpYg==
X-Forwarded-Encrypted: i=1; AJvYcCVwpdB6H9c+Nr6RczPfWd1P6UpUZLCLl/dPhl61ZofEL9L0JN9s0380CqpV3Nz4mRJnQQbmzMKL/6lA@vger.kernel.org
X-Gm-Message-State: AOJu0Ywzq2Soarxdo1bRKAd0JuiT3rqBxBLXFEXCgEYxLadmb2a9O3Z0
	4jrpnrIUdGUz3MhzUU7bo/7p0AtqlctjqrQinpdkfVGC13F+x4tT3ygezebpaoQA0vomyqoK1/6
	mMwR/2r63eW/9U5DVsPk1rjz8vsIFf1ekRO+wBmkqCwH2BUHcfXY4G6daBPeZcpz2
X-Gm-Gg: ATEYQzwW6EetpU4IAvla3PEoCY64Q0/aQYctd+CsOIIQ5nlB5rYojyjPSdDGU4B9MiT
	pi4NwN/rdo8kk9phRZ/AgVXfpWGyZe99neCpn8BHPMDhE9HxhxttQMJsx0sjctIYTxEyPudioCB
	/5z9Ef5uwk+reSHnU6ZPKKcdQS6uUf/oqKAS5eAtWKocOnGu3izIveNjI3t7IA3gsYUUg9tASZY
	RfSbtQNXSfEMJvy8127Ar93ffRte/2HrlUor2t7zHu+iIF3ROZlihwJUHiIlwoH7rQiwAnl3pIM
	a7jTA7YQs4onwswdM5j3azUZMy3bVj6ML7gAnpwm+VHUDZJjkYHxL52qZ5JBwaW2Oo8zG1ipTff
	QF9uCtBzxSQMPy7LCEqJrPjJa42OuGxr3GJ0bJra2LR3twnMDV1+/pxTXLRBCoxRGcsv6qnVhlb
	K37PdvmkaVAJvuUcc=
X-Received: by 2002:a17:903:2288:b0:2ae:5104:571e with SMTP id d9443c01a7336-2ae82366c4bmr156151865ad.9.1773126883435;
        Tue, 10 Mar 2026 00:14:43 -0700 (PDT)
X-Received: by 2002:a17:903:2288:b0:2ae:5104:571e with SMTP id d9443c01a7336-2ae82366c4bmr156151655ad.9.1773126882992;
        Tue, 10 Mar 2026 00:14:42 -0700 (PDT)
Received: from [10.249.19.96] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83e5c167sm134165345ad.1.2026.03.10.00.14.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 00:14:42 -0700 (PDT)
Message-ID: <c023b313-ab57-4fcd-92ce-c3ef3be95256@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 15:14:37 +0800
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
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/5] media: iris: Add IRIS_BSE_HW_CLK handling in vpu3
 power on/off sequence
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260306-enable_iris_on_purwa-v2-0-75fa80a0a9e3@oss.qualcomm.com>
 <20260306-enable_iris_on_purwa-v2-3-75fa80a0a9e3@oss.qualcomm.com>
 <owwpmly6i6djvocnd2co42x67a3xd27kxem7x4hl462n6t6dv4@hpjljecmrlho>
Content-Language: en-US
From: Wangao Wang <wangao.wang@oss.qualcomm.com>
In-Reply-To: <owwpmly6i6djvocnd2co42x67a3xd27kxem7x4hl462n6t6dv4@hpjljecmrlho>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=SvmdKfO0 c=1 sm=1 tr=0 ts=69afc4e4 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=pVNGaCLpK0EqxE-sEXsA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: RIe3iYQUxaA0kD2epT2RAYE2CHU8Uxrd
X-Proofpoint-ORIG-GUID: RIe3iYQUxaA0kD2epT2RAYE2CHU8Uxrd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA1OSBTYWx0ZWRfXzPon2wkbNGMl
 Lzj/o3djrVRFFy+O20OcgY9GNuCRVz1ZbfhNJ5yV6NLksfWuPou8LZQZbQm5DyzmJmFkx9zPCRJ
 ReQTuYFKLeAH4eep9s3OtTt8Dd9xZub5//WFvaO9sdlP7eNVuhEIFpu95c94bxMWqno6n2fH3mE
 28lm3TNXDAfQ78pP/O0aLBbRCF0weifzCiA3B9AuF/uBQMvHPm6OIHc28lrUe+eDKf7U2nHVp03
 o/rjmhY8iRZey7m3CRuk+I2+DZwhA4NUimhzgBWP6tU7+NGrpZNRAZsqVRMkLmHd2tLishJf7NF
 /v3g8bcmF6gtV86pX2FBXwbA0voL3pkgrN5j4AhIyNizsbdTARiIoEnY9s0aw7pr9+uHPst1w8l
 m5YMEKcR0YM9qwPvJ2AmdPd+ye16Ou1f9CtLH5Yl84D4a5XAN06mZrcAy4QNvMWOIfr1u6XV3IW
 uKWS0Yr4PPQOivjXe/A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 adultscore=0 bulkscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100059
X-Rspamd-Queue-Id: 144892462B8
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
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-273299-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
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



On 2026/3/10 7:58, Dmitry Baryshkov wrote:
> On Fri, Mar 06, 2026 at 04:44:31PM +0800, Wangao Wang wrote:
>> On X1P42100 the Iris block has an extra BSE clock. Wire this clock into
>> the power on/off sequence.
>>
>> The BSE clock is used to drive the Bin Stream Engine, which is a sub-block
>> of the video codec hardware responsible for bitstream-level processing. It
>> is required to be enabled separately from the core clock to ensure proper
>> codec operation.
> 
> As far as I can see, Purwa is a one-off. Why are we forcing support for
> the platform (and for the BSE clock) into the generic code?
> 
>>

So should I add a dedicated power on/off API for Purwa, and name it 
something like iris_vpu31_power_on_hw() / iris_vpu31_power_off_hw()?

-- 
Best Regards,
Wangao



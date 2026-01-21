Return-Path: <devicetree+bounces-257929-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QA2pDjbKcGkNZwAAu9opvQ
	(envelope-from <devicetree+bounces-257929-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 13:44:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3F956FBF
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 13:44:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8DF965C3A52
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:39:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E16D48B367;
	Wed, 21 Jan 2026 12:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mtMvm23u";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jvGtBFLZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 757AA36AB5D
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 12:36:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768998988; cv=none; b=eSn7Q8GnS8t98oH6/1P3RaSAzq3CG43JD6Q3dKKWPoKP0vFmZYsWmTNlSnDEKO6L0qtMRt03xcnEtdewM5RNksWYXpQ8R3ikIVxL0thqRJRkiYaWNGqLmvCKJEBY9pMavVqf+LU2FkcHXvG7OC5K6F5dEymvBrjXFg0itonKE6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768998988; c=relaxed/simple;
	bh=Jt4RMdVjpfcsC7El8ZQKrqebDhubQbpxJrvUQU817yQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pE6nJ30dnlD5YsDfuBnqb/MEccZQBs2TFmpcfnfmVX+RTCEklAxWlHplLZJbPeWTN2ZpvnMc5688P+GholBgywTKSmfn7PyW00emS6iyz/b/HbCgqVFGScEM90YjJRvkZkuldPS6roVCm9XIGP6SqJvc2DiO0X4h+o1aIxPiZmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mtMvm23u; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jvGtBFLZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L9iW6X3481458
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 12:36:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kTKGtgh0dnnNBiHfuaMQZ3TasKWP1GSdLDtLVXCQl3M=; b=mtMvm23uYIifkkib
	8MulGqpZ0uPF7QNKYMxYaHzAcnmytgmHCKGS2H3leiqqLH61zm29VOgL3+OcC/kM
	qv6oHYZWQDW2Rrkskusyf7f8dZ5UWQe9GjxBDaiLD5UrRMACLAGb3UhBwMMuXH/4
	i+aJmz/y0NKfkjV0Pxo06SI4YslXk0V/teQAT/c4dwWB68UyZhXeHYykbQANT5Vu
	CFCoaqrow+yqEdPHWKe0y6HJ+XTaGlh18ml9Sqgzx7dHgh4+mIS39XT4iMVjCFdk
	YSpCat0/yR1iPNcgb3Q31B56yA8C0XyG1MyLpXKhgBr75CmVCFTL4ft75Q/l83wg
	q9xReA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btvef0kvr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 12:36:25 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c69fd0a87bso412297885a.3
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 04:36:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768998985; x=1769603785; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kTKGtgh0dnnNBiHfuaMQZ3TasKWP1GSdLDtLVXCQl3M=;
        b=jvGtBFLZi+ki4ktAhvxSIVcV8QSQGSa6h0gEPk9PdoBamfqk8VqyMNxiv7qGLl1yGl
         kSzda2MZ/163pjOY2H/suOmG2C7qPpjRJeu+w8OOBgf92eL62+737VlPDywXEpIVvtze
         JmnN6F8y/Y8aEC9BP1HwyFHqOFf44JgBY6VcO6Sc55GaaEtlR0aBjdv4X3ttfTW03klD
         f+gdm9KHQTMWRyRC2X8y14Kmy9dGW48zHiUCBt8sZdBAiJ1TuGKcQt8/4MQO/qzYn+wR
         YmQmg7ECH2TXnqQyqaJkBYJljjcyXxUC357t00wnoXIWXMQ6phVgKdDSMH55oA2LGh3h
         +MiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768998985; x=1769603785;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kTKGtgh0dnnNBiHfuaMQZ3TasKWP1GSdLDtLVXCQl3M=;
        b=fQ3TKQRJhQ69870XI9uXPh+icM80jiD2iEqBBVkem2WzFRhM0rs/nTIrfrYBtigBxf
         b+VAL0oFvWZFbyLN1jx0qnYmzJyFdBRRx/K7wsh3jpVzFYryf9wt10x2AidQil2MqiqQ
         ztUCYnKnKwxfVAqWcWwbMYbfH++l7QXEIrK3erVqrbeCNQVf0fBWEeP8B3QTSoG8VDbH
         szpr/MJa4rxaUguIBkn+Twb1OPxJ/Txa+ZhB8grs7eDHp5YPRrGUjcRm1YTcUGo/lkBk
         VML6W2kQ7+wjvYveLCXRTyCEpB0a6Q1n50hv50+WGm2VARGr+yysRb0T9tIsBQ9VQ/uE
         gzuw==
X-Forwarded-Encrypted: i=1; AJvYcCVVe6gmlwnUDsBNxANxHDsEBSE6wj7ADnbHl4mSL27OMKtNGkaZmjh/iKQjpfd7P5EeWvEf3J6O8Rzb@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3cFWdpHnE2h5A8844+5RWKn67Nu0T6Ie6AZeq6/dQJuvtlobs
	O2SCuZKtysPLV2AWmeIiSrZL/SKf5sVQDU9J6oG02SUhpXzOxA3TnwjJJl7fMEv7GD+TZrsyg8p
	gSiNwjGFjDbnlgY42bRqechvfOJgCx/la3D3RmUSZcl3Zg/CAGSQ+Y/WeNOcj/mGr
X-Gm-Gg: AZuq6aL2QSXlrpNGOPz6QA4yRyQ36XRHlEeNddsVcWvQ48RhZ3pzVYPnDe8abr6gSni
	yOiV+HWEptTU3HeNhVXZu7M0LMULBsLPvRfAL5kTzDHYlo93rlnTfxY58jNKCskM+/e1LQ+DNQl
	LQy85daF7aMjgb40QK1H717sK1pkkK/M18cBu8vz0iNLSAsI4Dn8Mx/SOGsvoElK333IwbhPzg2
	DR3cO3iiGr52T9345C2xhh1xwNQz1TRymRs9sfPX2y1a4Cq7tVvrNpqPu7vt/hgHtDf+x/MOIld
	I/5nF8T9LobrCywTkXb86xMxkLCRqpZ9vqrF/vLMhqtYKcngAOwTHcfWrITGrKnmc2vZxG3/iLX
	gnVUrAAgprNHY5kx5JvbNy6ddc/qU1h6NmeNgER4xPH0Ye9tD/lIxj11JBiAQDACko/o=
X-Received: by 2002:a05:620a:178a:b0:8b2:1f8d:f11d with SMTP id af79cd13be357-8c6a6703cdcmr1847245485a.2.1768998984727;
        Wed, 21 Jan 2026 04:36:24 -0800 (PST)
X-Received: by 2002:a05:620a:178a:b0:8b2:1f8d:f11d with SMTP id af79cd13be357-8c6a6703cdcmr1847243285a.2.1768998984187;
        Wed, 21 Jan 2026 04:36:24 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795a350dbsm1562952066b.69.2026.01.21.04.36.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 04:36:23 -0800 (PST)
Message-ID: <2db1bb2a-e79a-4628-95a1-74e72258e199@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 13:36:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] arm64: dts: qcom: sdm660-xiaomi-lavender: fix
 regulator and SD settings
To: Gianluca Boiano <morf3089@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc: andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, robh@kernel.org, david@ixit.cz
References: <20260120180052.1031231-1-morf3089@gmail.com>
 <20260120180052.1031231-4-morf3089@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260120180052.1031231-4-morf3089@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: gD5qNxOl5hT2f-XD4Z4eJHyPqb4zPRuD
X-Proofpoint-ORIG-GUID: gD5qNxOl5hT2f-XD4Z4eJHyPqb4zPRuD
X-Authority-Analysis: v=2.4 cv=CYgFJbrl c=1 sm=1 tr=0 ts=6970c849 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Tf3bsVWerE1f9GOM5nIA:9 a=QEXdDO2ut3YA:10
 a=zgiPjhLxNE0A:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDEwNiBTYWx0ZWRfX88IoKGU6ykln
 lIGCLEGSm2u3+5C+sS5t4RJ+8/611UTBWlFtxyV8MomU9WB76j3hSldGiiWNeGd0fi1zYGD7bGi
 Xur5c7zotXzoTiqcI10izSJ2L52JiYQVSlrml07QMCsW8K2WE35lOFwdSwdpxoFLXierml/1I0b
 5krkMDAFNkECWSb/muZ8Mo+6EgbUmGbzkbAhWDL+RoZr0vrcsUkWjYNW8O4UzYchJNcSsFhsi0J
 g3tIiH5FbDUtpKslDdxPt9+jcn21oGl9kwz1i5jEuOiGEdgbvKYAcsM4EPoSJR//NRAIuqwM1lP
 wRlzUFOWNfy+AyW5wkTuJnWNk9onHnbbyRSX/RTcCvy7YXvzESbMNv4ebE3iIzczdHQHROTEnAg
 DFftylL5OlRwkeGj5z9IDQi+46A93SyOL3L8SHME9Dg0F89EXyrcGO3TRCrRQKvU/eKA7YHJaDx
 pVrfVNT+SrhMUWhf7sQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 suspectscore=0
 impostorscore=0 adultscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210106
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-257929-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DA3F956FBF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/20/26 7:00 PM, Gianluca Boiano wrote:
> Fix regulator configurations to ensure stable operation:
> - vreg_l2b_2p95: Increase max voltage from 2696mV to 3100mV to support
>   proper SD card voltage signaling
> - vreg_l3b_3p3: Add regulator-always-on to keep the regulator enabled
>   during boot
> - vreg_l10a_1p8: Add regulator-system-load of 14000uA for proper USB PHY
>   PLL operation
> 
> Also enable the SD card controller (sdhc_2) which was left disabled.

I see the new -common.dtsi configures the cd-gpio and regulators, but
doesn't enable it globally. Should it be done there?

Konrad


Return-Path: <devicetree+bounces-273444-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mCokMgXwr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273444-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:18:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADB524940E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:18:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CBA1D30A905E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:18:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3005237A488;
	Tue, 10 Mar 2026 10:18:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iemtuUzu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="P4xxtbvg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0251D36F413
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773137917; cv=none; b=Bmt2LWKP4YoT3Jy2oUnaIFWAkAJFrpJh9ovVbdchZZ1ppAoWxcDldXt13A75tMBbH8aC1nSG7ChUq4IgWb/hSiHHhcjp8m5Iq6/1IuMzVq2VP+Bkl3OkKKcPKHA/tdKDdL492HgpO7+XdOxZh0cTg1onRC3BpQRXKqH1lfnOxoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773137917; c=relaxed/simple;
	bh=6/6KqpSz/HPJSSYX3xQ5DweaUSrzMkS14FO8kxhhbiY=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=LG+pL3FOnW++DWYJrHwGAuByQLsmv8SpqGK+F2DM/wfWLpqmrB8cKpROMcmEXzjBT9/H9Ozw8AgKux5r0wYprJLD47jlYAL7zrRXiQk5iXGbGLTPTpdYZkpR4UPhNEqA/qwof6r16kQECPnITzuG2HMMltYDt/NHPyDo1o5yDno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iemtuUzu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=P4xxtbvg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A8h5Fl2754148
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:18:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Oj0duUChrG3r/OIty/mgtnt0E7BOjdKdZWc+huinXSM=; b=iemtuUzu28+V4meN
	OagKFqMOwtcrQLCNT545TOWw6HT00wq1QzgYCT4+kCEehenA3i48hN9Ngb7N1rmH
	jecuTJCzdjsHHoxS0SmvCImdKgYcW6K7i0UQosEOao9/9PyUBF2h7mHvCMpgPmB6
	OHvJKepa8GTGPbL0yLU5peRGwVbafBNGqDGEvPJ1QL/OHt8Fak92QVYaw4KUfmT8
	FMIO3tmPtjc/COxrOXu0yi8BSYPgTuC2GnLBYF8AGmCUf/Iy/v4qGjbtCJ/jcKKZ
	1b1sEsecawZZLKQ/uMWZziuojzPF5YdEbV0HKmGv8osFBG8+OGn8FfapBPFe8DDD
	vpWe5A==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctg1mrc2y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:18:34 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89a08e6cd15so543147576d6.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773137914; x=1773742714; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Oj0duUChrG3r/OIty/mgtnt0E7BOjdKdZWc+huinXSM=;
        b=P4xxtbvgfaIp3WNXFsHkxuiq2462m18Lh25NxqPPdGMAXcqII4rGs82Rd9GikcCmTy
         ZSBI/L9iPImHe/sJYOBLft8AFWt7hQ12UBsIv5qYvBWyyhqzVVIha5IgL/1ITbQDL9jL
         8YWM4JgCfCQbKpmYKcpg9gd/TGs+HdTWn/u8xPJgntxKcNLWPnDbKe9JYHEKBzaHMzck
         jGXQItCtTx4g5NlbcefCEonDNB6Wn/j6HteQ69IbO/RvVfRlEN1nUZzvsB9ydmZ9dkQs
         s1MlO8T+n3Jb4iwnL8GC/2vHeZQdykKvbd8dlvtcC2r0kiNsM6kHBJmrgfvJE1JlZICu
         pfeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773137914; x=1773742714;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Oj0duUChrG3r/OIty/mgtnt0E7BOjdKdZWc+huinXSM=;
        b=PBvu6enIFtgYV5ZE47WNoQqaw963mBYfWI4OEL3jQBwURDJeZbKIEh/Yn9q1cRXHxv
         8UnHe2/autQGb5NSAPn4mifavbF0RKX+NjBNTUnzxg+jdJw2MyEY0H17CuGHaJss1NlO
         He8wnGTqjk74u8F+lFT/asHjDKSokGsCEZuLQ3jYB6uIUeyyarngoNjuamM8uQnb6Rze
         cHePfBRtF9TtBmM01H2myLLlLr9klCQ0bud8YF77MYoOVGwSr96k4LvI+ezITjcodAHy
         UEF/gadAhfT3PkvQeL25pUmQ6/07WpMoN+0M+P9jGj6t5cs/aPtZ6evNE1OTwLyt6ZaH
         AhAg==
X-Forwarded-Encrypted: i=1; AJvYcCVHSCyUnhGtAv0n4Ij6acq6wq1vFscn6tVNTPIzaukit5CcU5hCVty4xwuxzDn+TCGt8xBaTgTmko3X@vger.kernel.org
X-Gm-Message-State: AOJu0YzFLKIZ4yCqeAzY2Z4PBLu4yJ7v8qdiB7hdsHRlm0uY+ANyIu7W
	p2CK3jqLO0M94/UyNWpWUPdynd90VjqB1cGii6thkZ7n5wp5JhbuIUVgPIm9MQwOyQ3C+FQPewe
	W6Xbz7+hJjRjpwDVr670COdPaka/8RXU4dqirFeo4ZfAfxRIaae8FQgVSt9sJquH/
X-Gm-Gg: ATEYQzzavXHwQE9onEYbL80w7XF9KUSF9KGg2/A9kYXnVO47P0lmXLrLZxMftkz+B8W
	NFyo/uaMN06u/Jl4NapA0Wy2M8VrR/m/QZXrQtJfmwZM5p5kcovBx4JfREf3P916pcIDbrxiuou
	/ofrcKJsIaeRcrHhtUYRWm2HclxvBYJcLwdXUTvVDlhTS7Pa/7+0h2LshnGDHn+QA5gI3naYS8j
	9WPsjRN2wbDzsCOLv8k5eGcLba4csR8E73rXglVAd0LyJwyfjXiqqKiKvLIIFBO9lTv8fnjOzs8
	qhGSOrQ9/jy/F2VrJouLmRvnE9Bbnu88UgakTrwGUgln6v9RDwFmQSQcnj6eaKVC2Xmzv90DgcM
	x923c+nTTb/Mfc9fYVdJxkuOHE8MDGCCdzn53h2fD4q/wIi2rtDhwP2RhRr0o8b170kNtk5nMdP
	43zhsEIQRk
X-Received: by 2002:a05:620a:288e:b0:8c0:cec4:b6fa with SMTP id af79cd13be357-8cd6d47d005mr1813031785a.65.1773137914420;
        Tue, 10 Mar 2026 03:18:34 -0700 (PDT)
X-Received: by 2002:a05:620a:288e:b0:8c0:cec4:b6fa with SMTP id af79cd13be357-8cd6d47d005mr1813028585a.65.1773137913981;
        Tue, 10 Mar 2026 03:18:33 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:ae20:597c:99b8:d161? ([2a05:6e02:1041:c10:ae20:597c:99b8:d161])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541aba60esm66574275e9.5.2026.03.10.03.18.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 03:18:33 -0700 (PDT)
Message-ID: <fb4c5d65-52c6-4a25-8c97-6c2e1df1e3ec@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 11:18:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/3] SDM670 Basic SoC thermal zones
To: Richard Acayan <mailingradian@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org
References: <20260310002037.1863-1-mailingradian@gmail.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
In-Reply-To: <20260310002037.1863-1-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=YOeSCBGx c=1 sm=1 tr=0 ts=69afeffa cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=VwQbUJbxAAAA:8
 a=pGLkceISAAAA:8 a=ubao2W7AewvDnVcLIXgA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: P8msaXUc_vI52JTRLgPvNiXH2ONoPmB-
X-Proofpoint-GUID: P8msaXUc_vI52JTRLgPvNiXH2ONoPmB-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA4OCBTYWx0ZWRfX1Je/TqcZMH6r
 oIk5TEH3e/5KGvuSfU1OlwAvulShPBCpO3kjDAhm1v7JPSfiaGRUgh4XRjJBkbGhi8NZ7AOo2Iv
 5kU4dnayE3XMRzAVFrnYAFhNLuwEm3or/rwuUE20tpFJmOxKakKFjpbEr58yaMiTtU+t232P0oK
 Jnlu8WSuc6aDmhNJT1PjQPWmjhB7TLrS89tDUBW5M6NmbnYllXQiEJWDwqpTanLEjqJ5aNFMdaR
 EUTUYcVs+Hv3eaMggVpUzhGXgVCaNkPAvYgymkIpDaTWHmczIj9+Ivj1z9nOfzGHX6wq/KgV86P
 CBryke+uXWYJIMeXhboHHZj9izi+hZPDJCGqW86fi8y7m8MMi6k0UdinMcdMxttZgn4b99d8ppO
 KdTEhCFoXqXv5Mmj4kVXWDL/YF3w84VRYkwJ0YG1qXp/qlhYb1cqtkiSTWL2X0G1bTvUoPBx7Lp
 T9EXH9f7dke94hK2CHQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 spamscore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 phishscore=0 adultscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603100088
X-Rspamd-Queue-Id: 2ADB524940E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273444-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,intel.com,arm.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel.lezcano@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/10/26 01:20, Richard Acayan wrote:
> This adds support for the thermal sensor, for thermal-based CPU
> throttling via LMh, and for thermal zones.
> 
> Changes since v2 (https://lore.kernel.org/r/20260304014530.27775-1-mailingradian@gmail.com):
> - remove cooling from memory thermal zone (3/3)
> 
> Changes since v1 (https://lore.kernel.org/r/20260210021607.12576-1-mailingradian@gmail.com):
> - add review tag from Krzysztof (1/3)
> - replace CPU thermal zones with lmh (2/3, 3/3)
> 

Applied patches 1 and 2

Thanks !



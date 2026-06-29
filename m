Return-Path: <devicetree+bounces-316797-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nVJiHRQxQmov1gkAu9opvQ
	(envelope-from <devicetree+bounces-316797-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 10:47:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B84F6D7A6B
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 10:47:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b="S5v1Oid/";
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=dIRrnmqA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316797-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-316797-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1F419300CD9B
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 08:47:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C37B3F8222;
	Mon, 29 Jun 2026 08:47:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B8013F825E
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 08:47:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782722823; cv=none; b=iaeA063HTzo4rQy3KtdhpBY++k1KFE96SSVODqfEG9D1kByryOA/ckabj07i7BldVRypV1+K+VhlXeyyvhxCofAMB4+fAWzRlOS4jKHWcdOqesLA2b7cnuIso8eIwzRbE3b97rRYRU2vaUugpKEl7/MbeEHnBlbjmZ/N3RMw9gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782722823; c=relaxed/simple;
	bh=IZDSvvIWTvxeOc6vAT6CTmA1TxSwSVLPm0tS8B76Bdw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JegYeTIl1Sn7g7QAzORpSNpbfkdr/hMASdcAwHUMY42lKElP6GiCFJpWGW10m/LtR7m0S96I3cjilI9cmMiSrR5aA8c3X5GV/6XYCzwLUIAkgVewjvFeE6LVsNHjRMAckHVUx8ttHX6VnM9Iumc0OPSyS5QiBYtP1kyq0+ejf5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S5v1Oid/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dIRrnmqA; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65T6rV0P2134872
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 08:47:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dsuvkNF0CRvWMwPOO/jhGrruMUfqUKJkLRonqqcBpsg=; b=S5v1Oid/YK8zkt6J
	2ItjNKJhX4moBJ+xFFnUfRz7spo1b7QPzxRTMwHqM6TOXp7IZl9+etshzKHNQ2rz
	i8xUonlPASvKY+E0gX+DsEkgdmdjL8iV4rAzMh/hFyB88f+QRqDRE/LLHLRQlLi9
	IpQcxAeTgjRc+k5mu42tticXPsqjKzVTtE8BYoA6yky3gI5xFv+Cqj6pu1r+A+gk
	rAnUY3QSJEYk4vDJnN8Jarv0mR/jFbeb4re3zvxWlJQ7g2jMik0hamPAGO168iyi
	ypMG0IKeeleScoOwHOtgelvOflQSlXJE5WE+2ubIBIOFSEzNDKahIp5iVb9gTuvB
	maH2kA==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f270a5kjq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 08:47:00 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-969471b1265so22369241.2
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 01:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782722820; x=1783327620; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=dsuvkNF0CRvWMwPOO/jhGrruMUfqUKJkLRonqqcBpsg=;
        b=dIRrnmqAmZAFh/JTe8mwXeeraf6iUNNYiep1apu4nERLncuLYtm6/8nI6LoBdg9YSL
         BHoOhY2M76hVAp9w28vL28Sni7MSjqaQKDeskUjdmFaIi95ODwGhmicc0t5xz6aB3PCm
         BOvDBVv9e7qMtLhh9SJAnj+/nmn3sWZ/jhfQGP2F31fF3aDbeiU1I6JALObWmhU+h1Xm
         0mIlmBO4loP5u4wvkYGoyekhs1uV0mRJeXIFe29oMfU5x8zbJvGoeD6vPLwOcGv+Qz8t
         16mHwPzxh7L5cnZYftY6VrfOdYR1dlIkdbpWu9sP69bQEJQWQS2FbDp+8JecPc+Hv63S
         Zd+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782722820; x=1783327620;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=dsuvkNF0CRvWMwPOO/jhGrruMUfqUKJkLRonqqcBpsg=;
        b=aYwCoBQdp+rT/17X//Z0dtYMu+tLC9Hqkn5Egz6wZC2RE6qclHNmCa+gvN07tsa/vM
         69/UKDf033LL0ALhNk08IRKxE27Wu4bNrAhuykv2vwtIcBp04p0hYwGrorPlE8RLpoSg
         RFjqHp7U+6SVLHf5/L3siNghh23TdlxJMjF+NpAsNGBIlaPU30p9Zr0AOOUyssH18Wbm
         J/jnuILcr/NhNoseDzD4tMSdghr3gydLDnHB5WjATa9/wt8D5Bjo2Ok+4gsjkQCtcwJm
         Pwcrl3HFWjP92L6rvsf1CmkiZg0+fN7zj52fbD29+wz2DcWHSM81Appi2hkTn0GpsOo2
         89cw==
X-Forwarded-Encrypted: i=1; AHgh+RoVbBaz6bdOKlg8+jHv/ffcTTslrRMQnW2mG1tXXWe/27CbRMtv+a7ucME/YiUDWHBQdi4hw17h4kKK@vger.kernel.org
X-Gm-Message-State: AOJu0YxJI6ko4hGZ0yZldtgoWRvlAhmRRHrWo8ktShtk388If4q5BlOW
	8n4Z35xu0ReLe4SXIqW+OVFYvcreXhKcpjA3hnWYXcULBrs6kG27re1BeZrlZEFnp5S8vb4pLBA
	g8TtgLDDySjPx/J9Fmvsn4OOY7iBeKFf4QMKGQ9zlBLH2Jq2C94DFoAwX3NxH9BRP
X-Gm-Gg: AfdE7cnJZpsRt0mWBpJhKtHZqno26B4qeWuoMxbMVS4IZ1i4CLvCZfPUNsa2kiNwuM7
	IqQWwuV4WAcvDQxAd00P0oK46SzocoSOHI0vqcp+APOy3o3qtesJGhzVDh9H0QKbXSiqleo2bEz
	8HkDOG20euzdWy8AXjIqyfmS9ZrRQlzACg+Iv0nN8tZn7HqfFtRgHaLsQHiHeTyoAZB6TjmxWil
	A7SNyNVF4dhWcOq2ojOiWjhXBdCx5IeVrlo+ZjVtL8v8g0QkhivGE9wqAUTqtfOK5eufje4g7DX
	+b+TmVnRM7t+YyYmQF/+6IL/4qtp3VPZZs5iGP2Yy8HlTiMRdWNy2NRA13Lyw1j7MXNF/gHkB7s
	qvWMGPDobCzR+U1GCGNxK8u0UzFGUHV3bKik=
X-Received: by 2002:a05:6102:6c5:b0:738:4343:fba9 with SMTP id ada2fe7eead31-73843441853mr493669137.6.1782722819884;
        Mon, 29 Jun 2026 01:46:59 -0700 (PDT)
X-Received: by 2002:a05:6102:6c5:b0:738:4343:fba9 with SMTP id ada2fe7eead31-73843441853mr493642137.6.1782722819368;
        Mon, 29 Jun 2026 01:46:59 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-698481d0359sm3009277a12.30.2026.06.29.01.46.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2026 01:46:57 -0700 (PDT)
Message-ID: <3ac0279b-105c-403a-90e8-822c28a6dcfc@oss.qualcomm.com>
Date: Mon, 29 Jun 2026 10:46:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/8] arm64: dts: qcom: shikra: Add Adreno SMMU node
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        "Joerg Roedel (AMD)" <joro@8bytes.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Bibek Kumar Patro <bibek.patro@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev, Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>
References: <20260628-shikra-gpu-v3-0-9b28a3b167e1@oss.qualcomm.com>
 <20260628-shikra-gpu-v3-4-9b28a3b167e1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260628-shikra-gpu-v3-4-9b28a3b167e1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI5MDA2OSBTYWx0ZWRfX5Y+k67BIhI7j
 VZs2YAYgvbcM8/T0aK5dBEJUWM3pQC/j/BVDbV054f0Eeg8Ysl8H9ZkwqO9+wNRB2kouXzfxtHu
 bwtv+xA8syk/qhSnrQ78xciAeoS0u2m9ZyE0a5p6na73H3JE0iYqPrLwUa/7MZBpjmH1JI3QNhi
 m/TdWr6Fo+o0xXnKBh+jS1o85THk1Qeyfs1pt+4cN0mGvtBIy/lsHzT8K6qrbc8d1ZW7B7+9Nc0
 Op06rZ5F2kRDTFsUeZcgyXTq+LKRQIicSLpfgjSh2yGAfus1fLrZXmy49wbnvW+7w+G/6JLQoNj
 FHm7fp+nzjexhBWqv1nUXdVAeKztW7OTyAleI3MprCF89ApO4SyKJB2MXrVHnXGy9goUk/oUdbX
 6nVWjw81SA1LtiCN05P7OBvqfKLsk+C/2uzuXyG9VczSKycTKvXUu56DyTGr+EzNmiptA3wdQrk
 vK7ELleSUC3AcACOp9A==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI5MDA2OSBTYWx0ZWRfX0Kqw5I58pfHn
 Wz8C3m/b0oRnoduPDx/2vpXYpSaAWpeBClP6q3kRgYbvzz2sERcDJIp6Q5JuDc703uBQ/Pna4tK
 6x3uE7BPKyNKVRDWGMOYf/5oAQdXeF0=
X-Proofpoint-GUID: xoFiTrN7QmJc52VRGCxr45kCDguh7_0R
X-Proofpoint-ORIG-GUID: xoFiTrN7QmJc52VRGCxr45kCDguh7_0R
X-Authority-Analysis: v=2.4 cv=Fe4HAp+6 c=1 sm=1 tr=0 ts=6a423104 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=CtAqrJV6yErwifH23rQA:9 a=QEXdDO2ut3YA:10
 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-29_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 adultscore=0 lowpriorityscore=0 phishscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606290069
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-316797-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,poorly.run,kernel.org,linux.dev,gmail.com,somainline.org,ffwll.ch,linux.intel.com,suse.de,arm.com,8bytes.org];
	FORGED_RECIPIENTS(0.00)[m:akhilpo@oss.qualcomm.com,m:robin.clark@oss.qualcomm.com,m:sean@poorly.run,m:konradybcio@kernel.org,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:jesszhan0024@gmail.com,m:marijn.suijten@somainline.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:will@kernel.org,m:robin.murphy@arm.com,m:joro@8bytes.org,m:andersson@kernel.org,m:bibek.patro@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:freedreno@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:iommu@lists.linux.dev,m:imran.shaik@oss.qualcomm.com,m:komal.bajaj@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1B84F6D7A6B

On 6/28/26 8:23 PM, Akhil P Oommen wrote:
> From: Bibek Kumar Patro <bibek.patro@oss.qualcomm.com>
> 
> Add the Adreno GPU IOMMU (adreno_smmu) node for the Shikra SoC.
> 
> Signed-off-by: Bibek Kumar Patro <bibek.patro@oss.qualcomm.com>
> Signed-off-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>

Drop the sign-offs that don't apply (presumably applied as part
of shuffling around the handlers of the patch in the in-flight
tree OR missing c-d-b)

> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


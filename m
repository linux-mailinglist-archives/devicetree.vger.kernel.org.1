Return-Path: <devicetree+bounces-321010-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5g4iO8qGS2rLUgEAu9opvQ
	(envelope-from <devicetree+bounces-321010-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 12:43:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 634EB70F62F
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 12:43:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=WaFTSykR;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=ZGiU9jTA;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321010-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321010-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 11DD430A3DCE
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 09:52:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D544431484;
	Mon,  6 Jul 2026 09:35:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0D3431482
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 09:35:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783330519; cv=none; b=XuSzSTlzvNDTsscl30KwVXuBIMjpf/t1rfrrsEomc6drPHNmUi1HGYVjShU8+cWE50raQgaEYgSpDUxF3rpUGJx+4K15o23pT2Vckqql/NzeUoOMVHELXpqLT7h2HyF9hMOIGihYfiadmY3yZsZgFtmiSuSIEfdMQUtaKNchjAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783330519; c=relaxed/simple;
	bh=zbSdvGnPsrJuxoFmkT+ysJkcGRbJBde2G8FtEcwduhc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oVG1Qzdx47Jx2KS7ZvG2OUH5TJ9q3jQ6BmSHKiao97ppaoaUWTsK0Pstwh8PLptz1qRjyENV/K/GTtfMi2Dpf5CGAdNEuiAt5q50uSkOThjekKTIIAOANNx79Eib7zmqp09XZhYSj8JkWRc9Sl3HS1Pju6Mjepp6Km5Ubh7ESJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WaFTSykR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZGiU9jTA; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66693oop107349
	for <devicetree@vger.kernel.org>; Mon, 6 Jul 2026 09:35:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QTo6r7Q0G+3mUeTWof/QQHuOa8Dto24iGRfkDVleja4=; b=WaFTSykRMZ8moz5w
	cJT86o/XfgpM2XMCIH2HCskKeqkKUFiSrDoSQv8gl5Oblg3e0tgetbxsRxRf+tIQ
	aRSJYuXP8tXITqmGenuR3EsdSIOpMNoopfaUcHqmXgz+eggZvg3GF/tDsrDf1j97
	xW6uvKwGtO2168cb2js9VGiYbGR+hAxkoIZvD7XQnFoJMoUjkUhY8X+j7S7zak9s
	Tpdn6GoZx3OETA6Fur8WGB0Xzec5u1s3bO+V27hizCcfui4XV7f75lEn5EFyKooe
	c2awz5EHD/7scCyteBHvYA2MGoU7YjHb56uBbsi+KnyCUWUZAx3U07ZFcoJmCMl4
	qe8bDw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f891ur6vj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 09:35:12 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-92e69a569ffso9860685a.2
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 02:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783330511; x=1783935311; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QTo6r7Q0G+3mUeTWof/QQHuOa8Dto24iGRfkDVleja4=;
        b=ZGiU9jTA3/M7z7sJHiQ9iCM+kV2MuAPDW8dkKgaIGKkl2xCWOgvqhHYi3vqWDBA/uz
         jVqyXjwKzZNxGdNvWlcQO61BjhnS1uiRCQsX1baub5zWwukZKCljKsP+QZ09XzP2dyVT
         IAEhXuZV+5ZOuiPfgdZDjjQIFJWWUl33dzDHfZ7Iq/V/2/kHbMFmH7C89B4Ul/3Kd9xW
         860MQZ85tdf67RVCC3g2zklUE4sbz0uDmY+9uVk+Ih2HXGQZa1u6nleEl9/+p/OzYaCx
         canqNwxS6XS+QBaEnjikmmAzZocvNsHjpm6AMMu0nV8wcybzXrCySXAmpVvFppBX6iZh
         PB8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783330511; x=1783935311;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QTo6r7Q0G+3mUeTWof/QQHuOa8Dto24iGRfkDVleja4=;
        b=F3Fxm0fJ4WvDtcj86/ZH8Fa4RiAstp+LTc86eSKNKFGCR7SrruzuGCwlR9lA+y8x6A
         6pd6NAaoLHSgwi0g/mOFShpGmyoAB/XB6rpQdwz0BHRVhrQgR/J8FwvuZ+eK5oOHonz7
         enwcPQIWYPtQk2DZcmOusDhHJBMi4dHmoEFHPz+rj3bokFq4AMAU03IYZivPlW1Z1PNZ
         rO8Up7G9mIQ1hfJ6BAnPrSirMeBZdm71Ed6eQT8L93JyUriImrYQVXl0YZS4xHLp+r4I
         cZcckbqktHLpGHGPRpi4mYHKlKxzHSgqqX/RNaTqX10ZaFt1abGdQ2jnaT6zeTofYx5X
         uCSQ==
X-Forwarded-Encrypted: i=1; AHgh+RoItjP36f6GcvqhUMKx+BGRVTGpEpddLABahpkerbWryDbL9qXDztbnXFv33WPjp0q5PdWrThY1hpEf@vger.kernel.org
X-Gm-Message-State: AOJu0YxSv570BPTqotCCz9iG7dZpYlSMtuHZxjk6IHvo5LZp9Roqac7Y
	ApyDEYB5eOcrmzLLiwEwV2XBAbEOk2ATOcwzhexF9vwIU2XXWfJetuj/ju5toM5UWOZkvqi0DSU
	DcwrtzmwBZY5rZJwOGXTKA5ERZdBOIsfuAqxpe6nevkWRjwogj0/34gvbtnwSxoIa
X-Gm-Gg: AfdE7cme8Em2QjYOtbbEObVtrtrrHd7X2M8G9GpauZs0logq7eHl1HbhT/YidNTDWeP
	2yjcZMKXDCiY77xG4Qx+ipjfwVW+v2QvfPZXwlSDgJc8TF6mOfXppIQfRWLrKJ+0fcu4dQ4IE33
	svHLfeN0RFc9IjwDEHFnqFjKoT4d40U2bUqSNA0MtaFzKmwzRqGqGYHDpBQtbxp94N3UF3F5W1W
	uSEz8pi9RIGyR6vG1dw08kJxjDn6fDN/4LmSFRv8zhPyoGWT/U7VOr8MAJzEIp8MhPzstDZRMpa
	yOHEkxFmSFKqdvk2v7Jw9kMtepW0Fm2Op+Z/w3O4bfjuJd14yKk7Fiq53NKK+T64Fi+r86FFCpb
	DLCTpv/90vrihlydLu8AiiAXu+xrSs05svKA=
X-Received: by 2002:a05:620a:468d:b0:915:fad5:9096 with SMTP id af79cd13be357-92e9a0c23dcmr868736085a.7.1783330511361;
        Mon, 06 Jul 2026 02:35:11 -0700 (PDT)
X-Received: by 2002:a05:620a:468d:b0:915:fad5:9096 with SMTP id af79cd13be357-92e9a0c23dcmr868734085a.7.1783330510946;
        Mon, 06 Jul 2026 02:35:10 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c12b62c6f5fsm717445766b.51.2026.07.06.02.35.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 02:35:10 -0700 (PDT)
Message-ID: <706ff852-1b61-412b-8e25-9ecab968361b@oss.qualcomm.com>
Date: Mon, 6 Jul 2026 11:35:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/8] arm64: dts: qcom: kaanapali: Add QFPROM node
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
References: <20260705-kaana-gpu-dt-v2-0-6ac53de56314@oss.qualcomm.com>
 <20260705-kaana-gpu-dt-v2-4-6ac53de56314@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260705-kaana-gpu-dt-v2-4-6ac53de56314@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: qyX0Gjj2ObW6bOix1N2NvU2mLqZZ3a6O
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDA5NiBTYWx0ZWRfXwsQ2pKf3e0Ib
 3j0Ve1PnwD4fkNJVgrjlqeZeZsbvEkDwOSJpRTrVyMuiJwQMDB+L1SFFKF0t546DNnAZvL6pliy
 HZg0Fnn5rKF8JuAtQ1gEVJHekefAK64=
X-Authority-Analysis: v=2.4 cv=Mo1iLWae c=1 sm=1 tr=0 ts=6a4b76d0 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=Z4vjmEANuloM4Dk0XroA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDA5NiBTYWx0ZWRfX6afdAXSOWKTJ
 ouG/P3X47fG5+2rMcXszOoZqcMGk8nEIRAft9B/zDhoxHaG2jJGCIRvPtK5WqkdzqR/Qb9GMJpY
 yePhylTpZF06c78ZNJ4/xcu3D9wNVsNBu3N9Bxs06rn0gxbphejSjxZ1sG+fbPND2SVKsZsq7BP
 C2/bb9bK1QYK8WRj3njX8208cvw4CRT5bF9F8aA5BzTIZnsuEub1EORJVyIoRyaklcvFW1mqJ/R
 SlNfP1FtbA4y8mcBKhQg0Y8+vJLAV2wtPyZR3pmc+VC4zdISuGX6puDAOnF2NBL4IBQCAKnxYsR
 wXJSqC8xFltWvORXEMU4oJpu4XTd9gMdLUx95ZV61maM+eSo0x6ema6ktITWu7AL19BbbEB/ild
 OYrsVchjl5CrIASmCZQeGkTSUim+GqEojr+QAsbAhb+BjT35a04QYQAObM0D6dP3sChZMIB+xCG
 TUvnC5w6xcnGxotr09w==
X-Proofpoint-ORIG-GUID: qyX0Gjj2ObW6bOix1N2NvU2mLqZZ3a6O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-06_01,2026-07-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 suspectscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607060096
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-321010-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,arm.com,8bytes.org,linux.dev,gmail.com,somainline.org,linux.intel.com,suse.de,ffwll.ch];
	FORGED_RECIPIENTS(0.00)[m:akhilpo@oss.qualcomm.com,m:will@kernel.org,m:robin.murphy@arm.com,m:joro@8bytes.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robin.clark@oss.qualcomm.com,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:jesszhan0024@gmail.com,m:marijn.suijten@somainline.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sean@poorly.run,m:linux-arm-kernel@lists.infradead.org,m:iommu@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:freedreno@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:jingyi.wang@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
X-Rspamd-Queue-Id: 634EB70F62F

On 7/5/26 10:00 AM, Akhil P Oommen wrote:
> From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> 
> Add the QFPROM node and GPU related subnodes on Kaanapali SoC.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


Return-Path: <devicetree+bounces-268610-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLJMA/7kn2ntegQAu9opvQ
	(envelope-from <devicetree+bounces-268610-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:15:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB441A1444
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:15:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4FFA73050D56
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 06:14:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75EC338B7CC;
	Thu, 26 Feb 2026 06:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ms86ZEQt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YNjszvZ+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A86E36BCC9
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772086454; cv=none; b=RuPMhNnOpNAuvVF0dlmccMDSCfBxiXlH18gzna4ARxiCaIR6oL5Tf+R2g0ObJ0QTibjZen/E9n4pq6aFCmz3OcK4r4mGEnvYpmxFyO3Ddmh1ClQcD9G5V4abmDMufktfyG93sjJz+JqV2hCppPuiMv6A+d0gILdCv6lHeRU+1Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772086454; c=relaxed/simple;
	bh=m+AQKCxO/LycJ/O9uPJYO7qZo0j4nsAa3IseTsVVrv4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TVJAnrEWBOIl/A/BCrKAMU25o9YIRsgNOxIlAgOyNAqEV05lrUGqyNBTMR5bnIrU4lvqXx7YXoOH9K3LQOBYvEhoWAvb9JkGoBIRoqUlrAj5ot3fDxlPWF4tL6Nc60DTqCYHyc7ya8BJaDpMMDvFfY5FNlbBdx+49WBIl+/XnwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ms86ZEQt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YNjszvZ+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61Q4Uts03493243
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:14:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bhxKk2mKAOrKAUcO1cv8XTYS
	PnL0KRsykixJVQdAXmk=; b=ms86ZEQtx5mYD+GDtgkhR+/7q8PT+AwHsekfG00Y
	Gni4JgNzCXKdB+MkiLr4s1ymi5A6T1q7JrL0SNwCsYfpyjx640ZPE//Fmoz7RfH8
	IpBLb1ur0rZNymlpu43EjTzqp9ra8ov4ZsuPUmYAtWgwApzMkLyPL9Q7riBXQsJ4
	J3/Xiu5O6PkbSIy3HGWwyDirIUlsYU0Zo9JPnnNRRQeCCkWCDdYvkctxADQfXlEc
	Ct36PxQoWeiY+pr3p/A6OaqGhQgRdTLtqOu9JhtheEaO8tNcwRkRzxS/KhgfZTy7
	wEmi6Uzv2ktjfkEeSz9V6UcyNXONJEHBL9pYg5sT9dMMGw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cj8bd99g5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:14:11 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2adaa9c4b89so16940485ad.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 22:14:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772086450; x=1772691250; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bhxKk2mKAOrKAUcO1cv8XTYSPnL0KRsykixJVQdAXmk=;
        b=YNjszvZ+/QjbY8k2K7QQWgnUAwizypUnf+vz4QdjHSjGDqX5YedDcenjR3G/tAXF0y
         9jBftewn3/VRWw1GTUYN8QUoQQyZ7kw6J5vLAlaUlE2ctdYPSDsG50a6FbBIbTbhOlXx
         1xbiZNScr+haTy5k71mxq3R1m6fdYMRRJ/xG37Zj1t69S+Dz2a7UaZVpy2WtLyNN4Scy
         7CKJhx8O4dCKakRZ126VEYFMIkJTrzoO5vqTQYtFuYecpdcQOeXP6ETjVeF7ffmHeUqh
         7fT/+pA4/CfIM7OK3ylJZ5Q5185rkA5uvwV3ZCLrY7fUzI9KTL5cBiuGjtbVG39S0+7L
         tX3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772086450; x=1772691250;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bhxKk2mKAOrKAUcO1cv8XTYSPnL0KRsykixJVQdAXmk=;
        b=skZS7odLmQidJgqyehkuz6swxYEcqV7fKpD5yfTPhBs1O5lT3BHoKhPg+qXwCwQA5p
         thLHX3adilQUtLF5w9tAHZ3yDNbq3qATLYWAWIvZmfScsjh4ih+cjVlQ4V9QKd5ollQA
         Qi1NzKZgnjttuubkTrc8+KtIaAJwClR9BTOEVLLb1vsBLhk26QPcRYNjT1hYDrUhQJtT
         Td/auUC0YDZCJYOTXvYgfqiZuhey1H5ty5le00lrX9ELqzOwcIYuuyTiGq7LJxvn43Pj
         20FxYbgGW89Ry+4Z29gLnb6n9eA0EBQvn1WmsSxhZfUXjnKfwJWPPDcUrdD92DObxOdB
         liDQ==
X-Forwarded-Encrypted: i=1; AJvYcCU23RWcMYVFLJNA2oZ9LfdZ7pcFms5KqDWJxc9FEQUMxkZvlL9GQ/P0GN3C2IymrI9hxEn+G9yjTtKg@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs+U3nqs4ZFjSgLakrabfxo71hpKG72kEo7f70MPd695P75MKv
	D/Uq4iKI8PPOiqDCn8CGwNMhFz5hiyLSvnGR9sSX3VR7CsC2IQBPRu5/ydY+8nxzfWw7S/JPb0I
	it8cMHfohU8+07vkcSMkKvLx63stq4en5xSpJgLKDRz4F0jyDsjyQQ2Hj+p2SWVOj
X-Gm-Gg: ATEYQzzKV2pEl4YYvrmhEkWeeRqsRew+iQWp0ebtLPq5hWd4JSK4D/YPwDWODIk2Xyr
	q93bJE1JZURE7cysTZCUxYqJqW/0YncXIQqNcKBOOo4jTAzvqoCOAFWkXjTAmBWaCIE0GjHJslX
	YOiHl/JOJkXJXmOkkn9SVd8EQi6SMYMk6y6pX192dzsealTqAM2WXeOVINl9kUaTUOzOQvs6I95
	jMEmZvBSZqzUnl5B7P2iUw9iIthdQGXvuyMUfmjSI1tyNOp0RwccNISNagpk2jfeqoTmuArWi0B
	Jz+sX14AMhDFJzkNNIl/Gtr8HSJ0VRVo076yswIc01ZwfOvnK10lKJ4Ibp13a+qFGwHbiVLxPHq
	59BnEgafsEjFtmovZ/UScCjdMJ/J5FDA3dgubXqQ58kgmAD8Idgt7XG0fcVM=
X-Received: by 2002:a17:903:a8f:b0:2aa:e3d1:1430 with SMTP id d9443c01a7336-2adf7943a52mr17975845ad.23.1772086450456;
        Wed, 25 Feb 2026 22:14:10 -0800 (PST)
X-Received: by 2002:a17:903:a8f:b0:2aa:e3d1:1430 with SMTP id d9443c01a7336-2adf7943a52mr17975445ad.23.1772086449916;
        Wed, 25 Feb 2026 22:14:09 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb69fa43sm11406555ad.46.2026.02.25.22.14.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 22:14:09 -0800 (PST)
Date: Thu, 26 Feb 2026 11:44:02 +0530
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
Subject: Re: [PATCH v6 3/4] ufs: host: Add ICE clock scaling during UFS clock
 changes
Message-ID: <aZ/kqmGF5EJDE76W@hu-arakshit-hyd.qualcomm.com>
References: <20260219-enable-ufs-ice-clock-scaling-v6-0-0c5245117d45@oss.qualcomm.com>
 <20260219-enable-ufs-ice-clock-scaling-v6-3-0c5245117d45@oss.qualcomm.com>
 <f984c9a0-9ce2-49f9-927b-e69c26f69176@kernel.org>
 <aZ7x7gG0OZEQSKVy@hu-arakshit-hyd.qualcomm.com>
 <784d5711-3f3a-48af-ab1b-9a8834249445@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <784d5711-3f3a-48af-ab1b-9a8834249445@kernel.org>
X-Authority-Analysis: v=2.4 cv=FKQWBuos c=1 sm=1 tr=0 ts=699fe4b3 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=vLMaN86HkaFgGR5djpcA:9 a=CjuIK1q_8ugA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: 8o7ZPk4zBy3VOZeegcPGp-KsH94Z3hXL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDA1MyBTYWx0ZWRfX1I7xBhpWN5ee
 brHO0SffjTLrpUFFOkZfpcyUzLVBlGU7zBTPpCicnrRId4nscdlm0ewN6lN7SrlXam10Jh72AWO
 9T2O0EPjBV5dbrw6CB1KslwplMuLjGfkVPd7MeGID9VmQ98Efs90eUw38/G1zfDe92n9LvHu3eU
 Wy0eZvkoTHNTyqEyqx2c8RQ4PNSX/wIkbVyZMtWHthxCaapXDXrZhmFVhvL0VstakQBfgwiG4L7
 u59qBCh4whnQrjcD3XVq957aZqclHOlSATHP/0pLv0Me//+zXGAHVJxcTewEIvVSeoJV5U4Xesx
 NkjfbLcENT8o9t6mdgdrSqbWYoAmfGFIMxFMF98RBuB3qHUrnXcf5ZVGwSSPX2dRaGwF3WPJW9z
 Hqq7wGNQLhLxrhFhPv9VLssdHBY840PBiEisIIcTeRS7903stMaCyrTUCCx1Eg4ch1hIbLVP9Zw
 DcgHTYctn4vG72HDUsg==
X-Proofpoint-ORIG-GUID: 8o7ZPk4zBy3VOZeegcPGp-KsH94Z3hXL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-25_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 bulkscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602260053
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268610-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abhinaba.rakshit@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5EB441A1444
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 03:12:18PM +0100, Krzysztof Kozlowski wrote:
> On 25/02/2026 13:58, Abhinaba Rakshit wrote:
> > On Wed, Feb 25, 2026 at 10:00:12AM +0100, Krzysztof Kozlowski wrote:
> >> On 19/02/2026 10:39, Abhinaba Rakshit wrote:
> >>> Implement ICE (Inline Crypto Engine) clock scaling in sync with
> >>> UFS controller clock scaling. This ensures that the ICE operates at
> >>> an appropriate frequency when the UFS clocks are scaled up or down,
> >>> improving performance and maintaining stability for crypto operations.
> >>>
> >>> Incase of OPP scaling is not supported by ICE, ensure to not prevent
> >>> devfreq for UFS, as ICE OPP-table is optional.
> >>>
> >>> Acked-by: Manivannan Sadhasivam <mani@kernel.org>
> >>> Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
> >>> ---
> >>>  drivers/ufs/host/ufs-qcom.c | 21 ++++++++++++++++++++-
> >>
> >>
> >> SCSI/UFS is not respecting subsystem boundaries, thus you must not
> >> combine multiple subsystem when targeting UFS.
> >>
> >> Please split your patches.
> > 
> > Sorry, if I fail to understand the context here.
> > This patch-series is already split into 4 patches based on the subsystem.
> 
> s/patches/patchset/
> Please split the patchset to not combine independent patches targeting
> different subsystem into one patchset.

In this series, the UFS subsystem patch depends on the new ICE clock-scaling
API introduced in the crypto/ICE patch. Without that ICE change, the UFS
driver cannot call the scaling helper, so the UFS subsystem patch cannot
be applied *independently*.

Given this dependency, splitting the series into separate, standalone
patchsets would break bisectability and lead to build/runtime failures
if they are not merged together.

Please let me know what is the preferred approach in such instance.

Abhinaba Rakshit


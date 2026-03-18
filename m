Return-Path: <devicetree+bounces-277096-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMSvBIl3ummTWwIAu9opvQ
	(envelope-from <devicetree+bounces-277096-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:59:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8060E2B9903
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:59:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7D883308B024
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:57:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C96B53A9D9E;
	Wed, 18 Mar 2026 09:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B1owF/Nf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NWsZqHhT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373083B776A
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773827826; cv=none; b=UP7T2l2MyAtTEBJCx9m5R8+HpCbGcVNaKkRs9c8+RCI5n6FjQt3Q0uIcDztTEcM+tEDRIK5C2CkA3bb+3fbXGRpErzEzHP8E2kOOfZ2se7r0R+ilaaFDIK4LZMSYcG7D2ao8KSrofVu3JT2AHuoI085WGIINmyyOLpnbnCNFU9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773827826; c=relaxed/simple;
	bh=OL4oKchoFswnzx2QRr0fz2Z7AnQokBGnhRRCJefe/z8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Rkx3UUZ9EhtkLWedvwcMtD4ldkrANe4Pcrx3Xm9xT9KghhWma3Uj7s+PL6MW/uRcm+51JcMX9p1KjZrrayY4Le50Tx919e8DPLyUdZN/gP2rYtffiWBnZR1+GGOLTGEu1bPMEaGyBMYv96FK8RjpWuzWFVXSJ+eNCIIdSU63QhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B1owF/Nf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NWsZqHhT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I6ZI1f2878120
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:56:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8hNx37GX3aKHJ23EGUcbBUoJYjcGIqnf+W6oBgnb+mM=; b=B1owF/NfFrOQGcaU
	uBeAZAj7hNzTUfrRQs3b8tGn7rAU2+EzptVY/zvY1eXiQiEUkNf85T3cJqaysQBd
	cBWZLFOdvAkrMC1g1P+M4JI4Qs5nx+MlO4VAFaYyeUY4nWNTo3UutmGrxWuvrtxs
	m+LWYSDjq2g8V2XwHWdRhpuvXGCZ7GIMOqV97pYdiNt7rczNF5lsEILliyaVMmLC
	JbdKwehqbE011+0W3AKtMNyfQi36folBf98fuG5so0ZrtcD5kqhRIWzNeHiDzLj6
	uLwiHoX6GNHADxELEL67PlvXiC7POfCs8FpzYZo6ENMZSnupmjJ+LuuNnTStujoy
	FTtPTQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cypwr0x10-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:56:59 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-89a01982dc5so60919746d6.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 02:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773827818; x=1774432618; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8hNx37GX3aKHJ23EGUcbBUoJYjcGIqnf+W6oBgnb+mM=;
        b=NWsZqHhTz0n9p7zqRlIiSHyDtrREwmCRPtfWWKYYHsAFLyaapo4TDFzWSVOJ4jJYl8
         8nbHenHE5IkBadSruVuQgpI8i3FLans192aAGwyPxkJMmIgiEJZiXib5u88+nB+8hYmd
         GEkgAOdz9Zu55lF0ytEkVT+WUzAKVhzkO1SKYFLpFqC0iOCAdchhFoAgXh/3i4lCUxim
         Hoy1rhpwrenIOXRmoeH1Yk17o4orISATFCMD5zuvskwN7NWs19mlkkbgcGaA3t1RtXs9
         MLb7JrvvwRdorsICkGZOzQOO84dlGPi/hzfH7x3yaYf46D8/kvZJUTtbG411xUAzLohh
         YgHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773827818; x=1774432618;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8hNx37GX3aKHJ23EGUcbBUoJYjcGIqnf+W6oBgnb+mM=;
        b=kEG0igOXP2j/8TwNzslgfCtFuXK8/ky+a94ad0NEKwcaTAM6xC/oupWQccnK4Yuo9e
         nql5j8aH2O2SG70rsHWBdZM1Wexdsa+AXMxluWwfaPcagxBeTu5lG+UPgZeOS+NPjWH0
         R9zVUDIwuKdov3U5hybvwkKR9lb1oLcdwzPEU1oJOhhBBxCFbRqLPvVdh7Z3v07+6Sm3
         hwDq2jnTuiOTY1AgXzVWOunTOHr3wYNKh04PeQ1mMwuNqoUhC8L8PrOUrSGniuJ1mP+N
         6XCU1hk9UkixUZuQ4OXI2hoxk7yfpt6FHpS/lbLRJ/h2AU4Y92MwKxbwQ8tLFEzmw4jG
         5Zlg==
X-Forwarded-Encrypted: i=1; AJvYcCVze4zfCpNQdQE/+t/YnGdqoVi+dEZIzjgsgES+pY8l9KxG8s2D/5Wsd2W9QHfky41Io3u42gg1ykhn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5FptOtjt/kE0FxALS++NgVt/Gn5YV99mflYipo665bXQQVcRp
	0VLAxuXqveTjfP4SGygQ65B4x3qPB8QCsZWpxWzzTm24RHZl23JWCAgfMobcBuqV/dBdxSQR4iU
	LNjKnL9ypjbBNtr7D9mzyQcx80fWtNbhWff78GGO+maGpyP1Hwup2XGnNrRZLB3tu
X-Gm-Gg: ATEYQzxDpX3nnufPmYI8bdob26ExMiwbBiwH3VAJK6HCqUGpqFDP+XyxAxUJmYrJ3cT
	q05OKS84yB0fOkU9APs0Ysdz2Rhmzoqmb8SRQOg0cDqDczxbemZl/72Lwgbg6pQmXGgbRRieJ3t
	eCf+bkcKDvp4v16R4epIOEami7wFPG13qliKfR6ywDvyW0ebZnmkBHhedycoBRwfI6e4useh8NW
	Lb54qqHTLk8tThqd7zVGfNATZya1PGPRwLb3uSaVV2ATeuWOiJtRgtI6R1E0vdq57QSsjpXfD4Y
	isoMiB8ypllYBGJKflxuY+AiQKa9t2DRvfoQ1gxaHZ8tG74p/cYIn1tJ0ijuOoR8v1cDmroE/ad
	vzvcOZvsoU8SCFzJax5sofeDbSJ+e1cRgMHmlJiKMCEjtT8kVCtp0Gqok7UFSBkv9i6VtXf+Y5a
	bibyY=
X-Received: by 2002:a05:6214:411a:b0:89c:51d0:20df with SMTP id 6a1803df08f44-89c6b5bfd2cmr29596906d6.3.1773827818255;
        Wed, 18 Mar 2026 02:56:58 -0700 (PDT)
X-Received: by 2002:a05:6214:411a:b0:89c:51d0:20df with SMTP id 6a1803df08f44-89c6b5bfd2cmr29596726d6.3.1773827817763;
        Wed, 18 Mar 2026 02:56:57 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f16868b5sm172231766b.30.2026.03.18.02.56.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 02:56:57 -0700 (PDT)
Message-ID: <98230025-ed6e-4d89-b36c-316886179087@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 10:56:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: milos: add ADSP GPR
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260306-milos-fastrpc-gpr-v1-0-893eb98869ce@fairphone.com>
 <20260306-milos-fastrpc-gpr-v1-2-893eb98869ce@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260306-milos-fastrpc-gpr-v1-2-893eb98869ce@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=bIcb4f+Z c=1 sm=1 tr=0 ts=69ba76eb cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=CgmkN4CY_FeYCb7YkRkA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: 4r5jlAF6iRKesJLb3K5uUnTsl6_Ax4g0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA4NCBTYWx0ZWRfX9Es8Wp5Zlhjd
 ES4FjvG74NO4oRFkeFE7rDSFZGK6v9KFj3/ZnxT+qSntpHny5oDMch1qxiLvO4WOz1zxQxpuiO5
 I7s6Hgkb0V57Edh2r+PGhwgEUFC5hOXtMjc3bk9HumHnzV9pP8ogUzUUzokangj/3fKmhdoFKhp
 lHfqsCzVPQm1ib+TZTp3esjYqTQ+3+AknGzw1kDpwN/ViPePrysvrE/2Uqc8OBpLvqXp/m3EM6u
 1ptxozf1wwqPRYTNjTougsI9xdRWNA7z9xqe/ksZm7l8DVtV1pAcJftsMAudzkKVtCvNm3Qhels
 7ejeHE+3gGQ1EnxP7Z5xsF4NOdnts5RzHEl2iEavj1b51yXLOVLK69rghAM/FkyRR0YWdqSz+cU
 rxyMtPAifjsFXA+7g2FQiIl9u1+YgqWRPa5arEnjNUcuKhl6MS1tGKHnV/aPNLjhqTA7qMEjztS
 ZGe7tnbqApoySn/OlOQ==
X-Proofpoint-GUID: 4r5jlAF6iRKesJLb3K5uUnTsl6_Ax4g0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180084
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,fairphone.com:email,qualcomm.com:dkim,qualcomm.com:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277096-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8060E2B9903
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/6/26 3:01 PM, Luca Weiss wrote:
> Add the ADSP Generic Packet Router (GPR) device node as part of audio
> subsystem in Qualcomm Milos SoC.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

To the best of my ability:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


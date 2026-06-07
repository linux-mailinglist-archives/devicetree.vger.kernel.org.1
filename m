Return-Path: <devicetree+bounces-307895-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zzKCHvPnJWrLNQIAu9opvQ
	(envelope-from <devicetree+bounces-307895-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 23:51:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDCA651C08
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 23:51:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=IZqwIg8n;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=MJeCpa4j;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307895-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307895-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3FD0D300CC38
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 21:51:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCCF9338910;
	Sun,  7 Jun 2026 21:51:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A084B2D8DC2
	for <devicetree@vger.kernel.org>; Sun,  7 Jun 2026 21:51:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780869093; cv=none; b=o6ursoiBUS5ToZwm8KYGTHsUfVQN2sqY/qkdawg3wZQO8n+YbVkx9YxJ8oTVssoWJ/k2uWJJe04RPuJmnbEuk/G34QkfPu1daLVlV1gMEz3aQGO7xY5p2g/ci/UKTAVoVTfWHbhtcZtePeNe9PyU7Wc1e8l9I9y1e1zr0X8iV0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780869093; c=relaxed/simple;
	bh=edLZ8uhQuKqBdIAaOjfP7+qTUTBXc0nm+ittUNfLiTI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QmmpuAeaqQqopJWYnHzBO4nwRqUhoxk7vZZsQYCLvPFFoObb9JRR8WJIIROWG/fKcx5pr3D1e0V7ChXatx1zOFakOu+mzxanqpkPSMIwM51FXWPPnn0ZGjpYwv2/oYDDQ9Qcmg/1Jjtx22ptD7cK9u7/7MrjA3VYNDvSxqgAKDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IZqwIg8n; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MJeCpa4j; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 657KZj7h1139198
	for <devicetree@vger.kernel.org>; Sun, 7 Jun 2026 21:51:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kL4uGyBdMmTU3mHM0gxMbXkp
	tGR//tYoNlap+YM2MTs=; b=IZqwIg8npnVkf8v8GvUXbVRgBP3Gkfx9uD3hbDoJ
	Retmir+wGFu39VogcCtFp3tEMXIi1F/GUcszVMMpXOwvI0cI7HGAUdaQ4XtC55Oh
	y1Vjq0qkk2Yfgs9/JuxVWNqXBWpoRgtJkjnTb67rJRlT/1rcQ3sEFe4D9/CkeZVa
	lpNcVjKK95P0YvhSPbx78/UHNBeIODeXdFqInNlBHcNDZ9YZmOsBjW0oI0upCrL+
	oPU95ujpa7TXhZA1ImkT6Ro/VMAxtwQPtOyeEQ5C7XnaPGNfuAC8MKM4TVw7Tr/T
	Qjd+egllB6ba6jdL07GK+jYqsgFHU7H3wil+2LljqfTEow==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4em98cwbmj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 21:51:32 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-59ebb69acadso2281844e0c.1
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 14:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780869091; x=1781473891; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kL4uGyBdMmTU3mHM0gxMbXkptGR//tYoNlap+YM2MTs=;
        b=MJeCpa4jpGb6b4eBdMHj3/aam5uSaQ8vBCm29dZTk857wGW9NhQTufteUztWz4+l+u
         /z2lLwx+UspUIXRknAzE1onWti7BbsMpiyczgpI516E7Q32R3mJsCQ32v3w5zHAbW/oe
         DN2qbgXnGcpy57E4SwRxsMf5q+2b21F4+Vm4MWAM5iH5QqWwxabJgump7ZclVTRIndEO
         kDl2FaHM+0H15n+w0Ddp0lioSL3O7PEt4ciyktSqLMil/3VnhqD/tZToMD9gwg2gRgJK
         AeB7hKrjqWC/1yoGid1V7rl4sSGSxSnEKQdXbTq6+rL+bRwyp+adhuit+UoBLypWh8Lb
         caEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780869091; x=1781473891;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kL4uGyBdMmTU3mHM0gxMbXkptGR//tYoNlap+YM2MTs=;
        b=JhGdFN01mc6eUm+qwUMcGKivnyMgWhaK/kXLOxaNfkY+48lr+tXnP2r9GvC/Cflpt7
         jAY77lgujmqL9xe7I3zYAWxwAw9y3P42gx7XDRvwpSDYyPA8qSAA32WuTCcl67OedJjE
         rh4+APgqVjZ8P5CODkIqk1cDF0IMyXoPWxaDIjQpeec/jD5ypRUoz2pMdALO37MuM3vd
         qbiHotft0FODbYIkVjGcHePDtvyV7gLR1BVY2d0UnvKiv5WCxEJYGaqMIPnO0sV/mAdH
         toafCnbkpGPPZDB3InNPDN8Kp+w5Sm5jIqFUIm7xYBgq7UMvLeigl5sByTcmGEdOz2cn
         QauA==
X-Forwarded-Encrypted: i=1; AFNElJ+mbhXK6IS0R0Lr3ozw4nXsG1ppLm2JY0uT8ui7bX39vc5lZA82S2u0wdfFobcOovkwhbxyK3oqt0ut@vger.kernel.org
X-Gm-Message-State: AOJu0Yzuf47nRcJwasiH1fr6mAWVmhN0Vx8icupc2O6SnSNzp093drcY
	8E/ipZvDVpJRqNKRDcYwhwVMGS9cY6w3Q19iZeY+wn5t5dzrnyHT6QVImhNsQnrZL3xlJERqh1/
	AO+0mVOwTll+0IfaX8o5nc+xmR+CaAd9vUsZSzvHWQJHjEViSz/CIS1e9hqtK7amE
X-Gm-Gg: Acq92OG2S2y7NTGZAZuASiHOGa4zsZA3yJRB2zLGlk6MBTc7Xc5ICg8sPTdRLLBdFYs
	bDvEAz7iRn/4nD2tZ5q/DF1jorR131GNDnM9S+dkP2/QBn6zXjQEEf0QiLckXYPJH6xKa3OCJg8
	6wZZYM6YWHwdLJh8EUy8iY1Ottr2ojUYkpawRhhnKTxv3BpSna2A+JqVOSDkGS9mZ7+smK76c1+
	EExZb9iRiilMoJBN0feTOjArpKRYeyjO8OtKSCldpLApeMUSTwHTNnzpvMVU/zeC8o3n6IgCMBk
	NjvPdsvjLPCd6IPQjKwFYqT/P/MvCB0+jlXs84f3Km6UGoHk4QFkUlMUSqFwmCea3395DB9J7uB
	tcyeD+8UwuNa+1qyCK3ttKnva6kmuOZX8LWBmU3qQMSqHvNgowR9Nsu2kIILMDw/bGnMC5ip5B2
	kqD1RLNRY9aeQ2Fp2YpR6LfqBW1aN/QNt7qwNNmSSISK3YdA==
X-Received: by 2002:a05:6122:32c6:b0:575:3b9e:db3e with SMTP id 71dfb90a1353d-5ac4ee8f0c8mr5682697e0c.1.1780869090945;
        Sun, 07 Jun 2026 14:51:30 -0700 (PDT)
X-Received: by 2002:a05:6122:32c6:b0:575:3b9e:db3e with SMTP id 71dfb90a1353d-5ac4ee8f0c8mr5682683e0c.1.1780869090547;
        Sun, 07 Jun 2026 14:51:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b985ed4sm3272128e87.55.2026.06.07.14.51.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 14:51:28 -0700 (PDT)
Date: Mon, 8 Jun 2026 00:51:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
Cc: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        "Joerg Roedel (AMD)" <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        iommu@lists.linux.dev, devicetree@vger.kernel.org
Subject: Re: [PATCH v7 11/12] arm64: dts: qcom: glymur: Add iris video node
Message-ID: <wvja7ehdremygql3hdmvgoixi4p6j2ohb3rx4bwj42h2qpe47l@76yknh4en2q2>
References: <20260603-glymur-v7-0-afaa55d11fe0@oss.qualcomm.com>
 <20260603-glymur-v7-11-afaa55d11fe0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260603-glymur-v7-11-afaa55d11fe0@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA3MDIxOSBTYWx0ZWRfXzhxyfCJrLbvc
 BVI05lR+rzk16AEh6qDr1roSLRdhgm5QAk27BLzIyiuKfcU9UkLIzCRnzMpiWNDWdnKS8Qdn4yv
 FPaZr5Kb2PZAuiDtONNR+gzfJRLYNlfX01NQEe8SOEf1NSHAopBePumFZQwl5yHrCNu901rHIgf
 3+uoXjJc5DiXiAFqALxgLXcQBKrT55Kvqsdwt5KEQIHYYUGw70BADIJUocyUkv1Oji6oWX/J2aH
 4cMWpVfzj6rCOetB/U/PG4fKXbejJD7W9Y5Vq7gU1X+wnLVNICte5yuqgy5UOw4MzTJfUG7ae7S
 87BuLqq1RB7tQ6rOkSRUWMTsdtv5n+C8n80jCaX04nEJcFsIaFRzu2qQruReVbXGYzJAuo5uvkz
 A0ymt0X58FqDooeOw2qKxp4xG05P4MUVLpg6xFOgH/i5Ow901rbEtc/F/SKK6njkSL3NT78etex
 LQKiRB4rqcp/OplaSxQ==
X-Proofpoint-ORIG-GUID: 4Dplc3BR5qSTL1hWAOCfgkPlHEo4omtM
X-Proofpoint-GUID: 4Dplc3BR5qSTL1hWAOCfgkPlHEo4omtM
X-Authority-Analysis: v=2.4 cv=A/pc+aWG c=1 sm=1 tr=0 ts=6a25e7e4 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=xYufHl49NKEuV1FEiosA:9 a=CjuIK1q_8ugA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-07_04,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 spamscore=0 malwarescore=0
 adultscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606070219
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307895-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:busanna.reddy@oss.qualcomm.com,m:vikash.garodia@oss.qualcomm.com,m:dikshita.agarwal@oss.qualcomm.com,m:abhinav.kumar@linux.dev,m:bod@kernel.org,m:mchehab@kernel.org,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:stanimir.k.varbanov@gmail.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:iommu@lists.linux.dev,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:stanimirkvarbanov@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,linux.dev,kernel.org,8bytes.org,arm.com,gmail.com,vger.kernel.org,lists.linux.dev];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,vger.kernel.org:from_smtp,qualcomm.com:email,qualcomm.com:dkim,76yknh4en2q2:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BCDCA651C08

On Wed, Jun 03, 2026 at 07:48:49PM +0530, Vishnu Reddy wrote:
> Add iris video codec to glymur SoC, which comes with significantly
> different powering up sequence than previous platforms, thus different
> clocks and resets.
> 
> Reviewed-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur.dtsi | 118 +++++++++++++++++++++++++++++++++++
>  1 file changed, 118 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


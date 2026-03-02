Return-Path: <devicetree+bounces-270063-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ILf9ByajpWngCwAAu9opvQ
	(envelope-from <devicetree+bounces-270063-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 15:48:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 766621DB1FC
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 15:48:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 95B5E300A610
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 14:43:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD4733FD13E;
	Mon,  2 Mar 2026 14:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BUl+8L2K";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KIw7jB1z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8766F3E5581
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 14:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772462591; cv=none; b=szPTsKfXEFIPT7ei88w5GcEDi+MJs/fZPRr06rKbdnQhoISV9KQVbQ+vIjgQ275mMOAVS0X0K2ulQtKLmKy95tf+n+372+L2hJyIus7/6M845u4KRS7Ks2bFSf7TYHQc4MMQO4QVCQ3Zo84QsQpUTDH6yYyfWn/qJChYzLneRro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772462591; c=relaxed/simple;
	bh=AtbJOVc4K7KZsqfGieB7cmSKnZcEPp22dOb9+UXyb8k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZdbOgAAHGf1j/fQx2zNcxASZAekzXLT1XHvDiLxTb6lQxOfXMflMTKr/YJmojH35DTbfhVQAGU0kKMxVLXB2DQhzAFD2GJFaaj9IgnGcZMIaXirVqNSm7RmsANiN+ZEErkCt5pJWxxD5gvTiozT+GDX6eMfDJtavSjg8k/DpOVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BUl+8L2K; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KIw7jB1z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6229Eulu3630829
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 14:43:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=C71hJ2AmsLQvRaRUminhP+iF
	E75sW82abgD/Ujt3N2E=; b=BUl+8L2K3ctcGbZXlNt5BsxC+QO5lTIqK9QM+kyG
	d0CMsoMbbeCvGC/0aeEsJ91UxGBoY4l5J8hthhPKYkGMqvAVWog7dBtT6gs0AJYv
	qPm30yrOhqJCghLdDvUiZQyh4XovDYqLW8QYN5LjORUBvXC4+ZdiGue2YUMUy2N6
	eyOQqsGmCKR0FCEzxsjziSpSBX0D7Qs0ZCgjautF80eR8UGA56eUnofOSA6oZyYU
	CImCCgFkWv0Pm/PcKVr8ZZurC9EsKrgjJcAZVu5bSDNPhjO0xxQ2VTLenjBiJyeE
	0IlPSd9ErqrTDHkhsj8r/UElpJdxyZkRKDESqwezP0efMg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn7rhs1e4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 14:43:09 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ae59e057f1so6184085ad.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 06:43:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772462588; x=1773067388; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=C71hJ2AmsLQvRaRUminhP+iFE75sW82abgD/Ujt3N2E=;
        b=KIw7jB1znoza3kq3HPcrvaAUQWkpAbiIaPb96bv13PUzZdDovy0kWtQcuBw1U198bp
         SAgr2aZcXuwyeWqpWi7+nuSw9CQWne19RwLzjNzxnknnK3jDd4rYZai5+w4SzT8E9hTK
         gnHgr+iLpVxFYOp8dSM9sE6S4c2dOh+gAtsUSASLo7U2i7V187Czifh3ECyaU5NPASnU
         qPsymLEC8yv8iC62TGTwB314NTR/kgRKnJu2H++s6bglqO/ULJ0YGEKtd8ohKeCE3ksZ
         IlwdU45anhx61GUPILRXBJ1QGPAPlXWYT9ltFUnfBVDIF8xhJ1yat69uZtDVZee6Fg+2
         bZ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772462588; x=1773067388;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C71hJ2AmsLQvRaRUminhP+iFE75sW82abgD/Ujt3N2E=;
        b=dx9cilJ/wJzkRk6QXxDmn1Lodjxo5NW8Jyq5rEhofqf5QJipUSTadrqGCbuawHCejj
         MLVGLR853FZd+SOvGpHHCwN6zXLPugfEdGW41qK6zYv08jHrvMDyhpHj7xdML/Ezi4t3
         RGI14QTfzRCUVWyZek6WOvWVaH2LCD56/NYEfHP2fUhagWQ9JpbqpmbRZP0cVrtzDGPz
         mcSdAU1n3K/Bhl0W39bu5n1ocJzPTlIeseXli2phgthVve7r3KjG3lSGdX9c1JLD8vE9
         CuvHdBllCCDnp2dxBIyoib5BhkLTHZzzrgcR+9ZjskiltLzW76d7qpgOoKKZjWImAU3j
         878A==
X-Forwarded-Encrypted: i=1; AJvYcCXWDZKCUQ2L+i/OQb6OjEXRW8F6Xuyxx3DNqOYQ+9mkwk82bKvotEcTdlTyWJuaFQZEFVYoRhp7bHvQ@vger.kernel.org
X-Gm-Message-State: AOJu0YztaFrxAP3DvQxs5LW9+pks+bsBEKN0S0g3apJ90eAcD5IMdEdS
	L2ng2IAVd0fzqxg8/UL3O1RbaeisTPvCcy/ZyomKNsw4BrW1Y5aTuHGyFGBwV1FEbRCkGEncHkk
	6omVs/k1xsUxkV9I3Y7gSrVcRW7B5i75yiFDqNSd/dVr1R6NSv/wOrCtai00jxjsH
X-Gm-Gg: ATEYQzxtaJyUx448kDMUseinhFlAEJcO9BhBoXzROshXftvV/Sve0GXiSYOc2nwHFKc
	q+PMJjICU4+cC6riSPvWxmhiC6N0aovcZk4OobjYaunPqHgzf7A86ycYZg3MhMod659Of7a3661
	LMhYdsJ4OV/Xhk7ihy6UNLT3ckH/s1aTIw/k/FkIIwlhfBNzXNcqCiH/HnEAocgHAqrzdM/J1sR
	3L5PxfsPvOzJIVT7l1Po+T52iAUi8hX2ZshJnzjqlX+bDJCSVM/3Y7kdz0blat8XbKQXoDHVF+H
	zR3f6qXBvE0pOyCEejJrAwNRN9dfmBrybYpmQXVULJA38E8soGksU4fCYXe06Ge15BJgVzPKmOP
	Q/JxP2lxQVFBZQzzwT/eP+tUbNcq0/ZbHZrld8E6FreBagJmtCDu+u+Sp
X-Received: by 2002:a17:902:f542:b0:2ae:5a28:cb95 with SMTP id d9443c01a7336-2ae5a28d42emr12492175ad.7.1772462588409;
        Mon, 02 Mar 2026 06:43:08 -0800 (PST)
X-Received: by 2002:a17:902:f542:b0:2ae:5a28:cb95 with SMTP id d9443c01a7336-2ae5a28d42emr12491965ad.7.1772462587927;
        Mon, 02 Mar 2026 06:43:07 -0800 (PST)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae4d83c1a0sm41438925ad.1.2026.03.02.06.43.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 06:43:07 -0800 (PST)
Date: Mon, 2 Mar 2026 20:13:01 +0530
From: Monish Chunara <monish.chunara@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sarthak.garg@oss.qualcomm.com,
        pradeep.pragallapati@oss.qualcomm.com
Subject: Re: [PATCH V1 0/2] arm64: dts: qcom: lemans-evk: Update SDHC storage
 support via overlays
Message-ID: <aaWh9ThZJK49Ex4o@hu-mchunara-hyd.qualcomm.com>
References: <20260227102405.2339544-1-monish.chunara@oss.qualcomm.com>
 <fg4lxixp4fekhxbvisohgxoiaqya6gvuw5czflkk54kvr75xs4@nnze5nvbk2ix>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fg4lxixp4fekhxbvisohgxoiaqya6gvuw5czflkk54kvr75xs4@nnze5nvbk2ix>
X-Proofpoint-ORIG-GUID: 3n8KxqhXKp00kZLdq1o110TuHXttpPqZ
X-Proofpoint-GUID: 3n8KxqhXKp00kZLdq1o110TuHXttpPqZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDEyMyBTYWx0ZWRfX1dsLr/7KQvzX
 9eCY6lL0kBJ46h0ln9cs97TN+52+g4dMq+lZX6PLNKASXOhwRtjCjD8k/XabMlY0nc1F8TqzG/2
 pZFfNKQBy4JyX8NC8U9NAtyyviwxqDciFoMHyWUz2zQX7N7YuhgrLInAEFELw7WFbf3smVSqYuu
 MGN1yRcHnHopuaWK851CmjYsyH2F3HWDsdwuV/Bns7pICnsenlprcwHACC9Yv3ujZJC7N0TEs0K
 9fZzSxr2kqV0pB382ncTquDf347D2HAPeROgPElXBBR+Ux7SPkh+ktYQPXYxf+30Y2ohDhq1rBH
 BfYJkbOZIJiL4jGgBnhcFBMkc4/BAcPsUylWVikO5OcU0t+Q8WcPlR4RODA121+LEBmvrnTmgN5
 TC4TltO3OpY30sLrx8jt2DbNyXnDBqU68T2IdGlU+srlZEbV/YuE4ODcBUgQMpiADSnjPPDg6Sv
 ehJxy5prub8mYStYCXw==
X-Authority-Analysis: v=2.4 cv=cLntc1eN c=1 sm=1 tr=0 ts=69a5a1fd cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=jUIVJCPa4oveVBRgoBkA:9 a=CjuIK1q_8ugA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-03-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 impostorscore=0 phishscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020123
X-Rspamd-Queue-Id: 766621DB1FC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-270063-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,hu-mchunara-hyd.qualcomm.com:mid,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[monish.chunara@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 10:07:33PM +0200, Dmitry Baryshkov wrote:
> On Fri, Feb 27, 2026 at 03:54:03PM +0530, Monish Chunara wrote:
> > This series updates the device tree configuration for the LeMans EVK
> > board to support dynamic selection between SD card and eMMC storage.
> > 
> > The LeMans EVK hardware supports either an SD card or eMMC, but the
> > interfaces are mutually exclusive as they share the same controller and
> > resources. Previously, SD card support was hardcoded in the main device
> > tree, preventing easy switching to eMMC.
> > 
> > This series refactors the SDHC configuration by:
> > 
> > 1. Moving the existing SD card configuration into a dedicated overlay.
> > 2. Adding a new overlay to support eMMC.
> > 3. Updating the common SDHC node in the SoC dtsi to include necessary
> > resources (clocks, register ranges) required by the eMMC configuration.
> > 
> > This allows the bootloader to apply the appropriate overlay based on the
> > desired storage medium.
> 
> Is there a default mode of operation / extension? If there is one,
> please define it in the base DT and override it in a single overlay
> rather than having two mutually exclusive overlays.
> 

The LeMans EVK has SD card slot onboard and eMMC support via a mezzanine card.

However, if SD card is configured to be a default case in plaform DT, some of
the properties like 'no-mmc' would conflict for eMMC use case which cannot be
deleted in an overlay file, and vice versa. To avoid such issues, definied
separate overlays for both which gets selected based on the actual connection on
the board.

Regards,
Monish


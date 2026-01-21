Return-Path: <devicetree+bounces-257740-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MOZG7FrcGkVXwAAu9opvQ
	(envelope-from <devicetree+bounces-257740-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:01:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 129E751D37
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:01:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7C0BC48229F
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:01:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D40D346E70;
	Wed, 21 Jan 2026 06:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Nb0XnS/9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="h2JZ+dKP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0766D31D39A
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 06:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.180.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768975268; cv=pass; b=rmqrijVNpG/mCL12EOj3FKotJ4gaCLlxMQIjrvi0VmitktTvhlSWKkk7Yl2VpmDnmwE/KSCTc7mw6uTDUWIDI7gfjKKm+ljFT59ZmauPao7Zcz6NZM8102walAXvNcYV0uMxC/MrQHCImf5UnFIUnulNuTU7+QNnp4pNw3wRq2Q=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768975268; c=relaxed/simple;
	bh=PIEAM/MgNLzP76uOlF5SmUyBHUjJVEVQeinphZiXYuo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UIqjtqlwPc98e6ZdT4kZMz6Ww/Sf5U8DTZEw9bw4vRfjMxsnKz+eEsa03si0p2GDI7PSU090znlTJu1cIkaNkpAh+rfyTuAzvokGGWKYu/jACnju2QFtyM8QxYPVLqCSwKbHHC+MsFU3kf6wTAfTks09OP+LLiChzJjuUK18M5o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Nb0XnS/9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=h2JZ+dKP; arc=pass smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L26fbK3257508
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 06:01:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=gSvyHaRoK8a/eK7RNla/ksOG
	lCIDLS71LBI9aYDbSFE=; b=Nb0XnS/93FWODyFx/U+GpO+c2LRqoCzZP/xp0Oi7
	8x4IAaxaeezBHbVFuDuURoDKNgdqki0b1ozWwRoP99Xv6xuz1tcmX14oPjUtLhPc
	FH6QeELEHGZPszV4YvnTXCiZOREZ+aaoLCG0/rnjle43I6LYix8koXJmtS4W7sOW
	A76wvYO7ZzVjlIAzUaayq7NDrPG0OvU9sw0gX4FhR/Xb/KP5i3PTSgs+ElN+CWiq
	wNZSoEKgSzi+Ypf/wTwfPxr6pDn0LSBZ0nyoNpRSCk+Laeu052N8KQQUd+nsqVHu
	GIy4EfkFCeWClQXYERxPXni9U310uhNzWD64cQuKcBB6Cg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt6u7uv3c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 06:01:04 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a755a780caso3608305ad.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 22:01:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768975263; cv=none;
        d=google.com; s=arc-20240605;
        b=aMLd/dE7/9gmhL+NmrD/7uTQPka8iQpIR9aA65EyF1YYS4e3dibjaSH9N8f9QbyoT9
         WKvX7/zCkrO4yfhR6VAigaLOysswHupaNzoEH45bgZ56r/BaMxM0iktiC5lhiA5xd8vv
         60zp02GRhXewfIsnCZYW6WrOVrZMtSYEF5q4BB9IRWqhEr6/M15qEuxz+RaNUd+WZUXv
         KDeMXrG431H538I/bt57QyUryMNFyai2ZIOVRd97BKAmsAer5pXLxqfFjz/Zb10YMPrb
         xKs2NBvvJhUElEnEXV/PpSBg5HRZpEGLrifdR64lUz+ndE/CtX93gu+tQvYABYd+2gsA
         8idg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gSvyHaRoK8a/eK7RNla/ksOGlCIDLS71LBI9aYDbSFE=;
        fh=V/0s6PSYJFQ2t5AOZbBXpPXprF2xT1SxwZSmW1hfGJA=;
        b=apOpIUhHLViE4ZPJTaWw/e531XEhAkkzgRQXGji1TCFIz6rJSS7/Zfry001Gh5sQOE
         k7hlcmkdevd6bQh72GbqQTsPgvXEr6h+YZ4ZRAA7AM6LumwavVfd5QjRL6NuPbj1jKLu
         EUu6SKeqWxWXYvaGUS8CeSUzpFTMvRfpiUNiPbdqd3vO4/7xPS22My3MrBDXh3/TlJ/c
         gv8eGw8dPL1NK++0bSv4JpXU2NgoRhWLNb6AUdJgsixgGuflhBC7kE5jje5kCd914P2f
         X7i7iZLiqRz7PZl6oCrLMv2E9EyATk/7QmcwlOaHbC4JhWxkSxYiJ9lFNiZgbesHwGQR
         y/yw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768975263; x=1769580063; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gSvyHaRoK8a/eK7RNla/ksOGlCIDLS71LBI9aYDbSFE=;
        b=h2JZ+dKPT1pTJeqgFCrybm53Rtw640gumKkzmGHfnjWEA9THJ/1u21a1Bq71VFUgki
         SsCroofYAVOk43FwZxAWw4a4bmuQcx1VMiLqgfB06w9Q6Lkf107+hDOZZIZNefbnan3I
         yLKDRN2eRt1AumFUdaxfo10vS/LyOEiC+xOO0dN+U5TSLWuF9kUB4dp1fWbq0Fgko6+U
         uyznCsFiQ9R12GpEW+1iBG3F83S2+RfzBF4tOG9uCCEeTkE/y6nEzuFGok1AAK7m5dsx
         /kNUb8bax3UnZJNN5rD4vjbR8O33IiuHF0qo+1Jmdn5Xes1lnHA3i3/vGDndcRBrudbX
         kxrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768975263; x=1769580063;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gSvyHaRoK8a/eK7RNla/ksOGlCIDLS71LBI9aYDbSFE=;
        b=CTo1TW4iC/jmCAqln+14y58pvr2Sw2WssC4+bNhQx2yyT/X4HHyhe7uD5Hbazypbyb
         kdTV85VJCo/4mpNpqQzBwMtKDbAqtRYa60oqF7U/k6FTMyVSXvqoEARriRpCX7fKzZA9
         4g/DhLYdRm5T0BrBoaDOLdt4U8tFMbFM5kOck/UH0v5Zz+CwrG51UoTSjKhJvQTPETB3
         GcnYa37NYtVZ8c3snTdxNaBUw9t1Nak2JploGvwY2M55xgAnXHhFYLQB1fwaQ7ZYBxIb
         emogMOPn5i4VZABdoGOAgfCeqMcC5ByOdNwReqFDWYQ2zaoxVjkJveZRm8DsL67u1Gq8
         aFuA==
X-Forwarded-Encrypted: i=1; AJvYcCULQ/b1Q9AERymRjQQDK0XMD3fdb2UQKFVymkEmcao74c0W44/72XrJRgOfNYIFHXjQXfK8KVzvWUwB@vger.kernel.org
X-Gm-Message-State: AOJu0YyxnG7wLUSJhQe6X/YbzoIiolmQRVVQLf4iIiceJKCed0KJtiuX
	CP8OZJ+/O7sALI9fZPbG/z9mAUfWEAMRBSbpBmMzrFx85jXL2szi6GaOVCy/q4+btj892gSEqWi
	qvHuuI06oDTxUHHwkZf/p6eWK9gkiGz8uSW3DydMNzmzKVxdoVgmNd1ptpeUPTXLLM5q96KoCp6
	a9rl407lxqEkbaJ3cETgxuU4UgwiUnniOWmWv6PM1yrlnPQu0=
X-Gm-Gg: AZuq6aLHtVCkJ3TcDgkmJ6L9U0ru00o5S3Jsje5RYnFUa0HZBLNm2oQfoHAs2Ytqgli
	4r7u5y0iXiN3hlpoxmWukXF61f7EWiHSFMtY2kXSi3Pi3k/Ihd3yTlxqW5oYjbrHhXEupupmtT2
	WfnfS929gtKOKN1MfceNBcJ8IK1RXECTxE6Z0RU0ro25I3aaNjjp/+f7MzjDxI4v1S0KS84wc95
	SU2ZIj7oi4DLan99az0zQ5fUII=
X-Received: by 2002:a17:902:f545:b0:294:8c99:f318 with SMTP id d9443c01a7336-2a717546704mr161191465ad.3.1768975263285;
        Tue, 20 Jan 2026 22:01:03 -0800 (PST)
X-Received: by 2002:a17:902:f545:b0:294:8c99:f318 with SMTP id
 d9443c01a7336-2a717546704mr161191075ad.3.1768975262696; Tue, 20 Jan 2026
 22:01:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260121055400.937856-1-vijayanand.jitta@oss.qualcomm.com> <20260121055400.937856-3-vijayanand.jitta@oss.qualcomm.com>
In-Reply-To: <20260121055400.937856-3-vijayanand.jitta@oss.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 08:00:51 +0200
X-Gm-Features: AZwV_Qg6Ul_V3ogOQp1zbvETUAk5jiMEg3E2MGIICiSY2GjISUBiJcgDF0zh7zc
Message-ID: <CAO9ioeXLJK6fvriRA9RZs8cWcBdv4fgw8VG1_LqLDfc-5hFQZQ@mail.gmail.com>
Subject: Re: [PATCH v6 2/3] of: factor arguments passed to of_map_id() into a struct
To: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Cc: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        konrad.dybcio@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com,
        bod@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
        prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com,
        iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
X-Authority-Analysis: v=2.4 cv=P/w3RyAu c=1 sm=1 tr=0 ts=69706ba0 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=3_r-Vw7G6DVWPkSdAkoA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDA0OCBTYWx0ZWRfX+eO3R5CQuAmQ
 qn6Lh27zY7jpqHHMjtcfPq5GjtpIzA5mQuF1d29QKQbMV9k28JHilvi1Z81aRllH+RoxZahUeVh
 1V1uaDBCttPp2U2dOyV7qGiWqGPIYBKPi5Lq3aM1R7TRUgk6+kdG9253icfJcShw0tf88F1VGXo
 Sf+gh1znd2UyyWZ5yPU2dqInn0g67Ct1bxwLycu2KM3b6MLzzZ2sooV4c0fd/LzqSoTtK3MRN22
 XoqaqiIe4d5Kb7xHbPijhPalbcDB6LF10qrkPZEA4pmUDPgxD7r7/8v1UqAubGllxWIZszmpllq
 FnkTqvMHHmDyerusRO0zI2m83oDMGFmLrpB9W7MHffmMSC3eyRmq6WxInUDQitU3m4GnnrKVmXv
 pkQftmTPTTI6GuSQhthatc+OdGiqVQge0h8dWbfsk3GXSwdYxS02SnEkrQ99MhvmtQwv167gH42
 7ssHJE6q4XFVbHhTGyQ==
X-Proofpoint-ORIG-GUID: W1QRHv2Ft_FOtVoFQZKCLwRD8Y4s2XTn
X-Proofpoint-GUID: W1QRHv2Ft_FOtVoFQZKCLwRD8Y4s2XTn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 spamscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210048
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257740-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,mail.gmail.com:mid,qualcomm.com:email,qualcomm.com:dkim]
X-Rspamd-Queue-Id: 129E751D37
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 21 Jan 2026 at 07:54, Vijayanand Jitta
<vijayanand.jitta@oss.qualcomm.com> wrote:
>
> From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
>
> Introduce a new struct type where the optional arguments passed to
> of_map_id() are Currently embedded as of_phandle_args struct.
> Subsequent patches add additional arguments to the struct that the
> caller expects to be filled of_map_id().

Which additional arguments? I don't see anything being added in 3/3 of
this series.

Can we use of_phandle_args and switch to of_map_id_args when it's
actually required.

>
> Suggested-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
> Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
> ---
>  drivers/cdx/cdx_msi.c                 |  2 +-
>  drivers/iommu/of_iommu.c              | 12 ++++++---
>  drivers/of/base.c                     | 37 +++++++++++++--------------
>  drivers/pci/controller/dwc/pci-imx6.c | 10 ++++++--
>  drivers/pci/controller/pcie-apple.c   |  4 ++-
>  drivers/xen/grant-dma-ops.c           | 20 +++++++++------
>  include/linux/of.h                    | 32 ++++++++++++++++++-----
>  7 files changed, 75 insertions(+), 42 deletions(-)
>


-- 
With best wishes
Dmitry


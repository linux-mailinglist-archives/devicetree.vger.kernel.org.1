Return-Path: <devicetree+bounces-269413-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDzLMp/5oWlkyAQAu9opvQ
	(envelope-from <devicetree+bounces-269413-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 21:07:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B9F1BD37D
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 21:07:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1297D308BCEA
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 20:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7278B46AEFA;
	Fri, 27 Feb 2026 20:07:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="clctQl9T";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Hzesj0Xh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C1F7436353
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:07:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772222860; cv=none; b=Cxac7AI8vS6YLNYO3KshMKv5Q0kSgMyfiNbxY7mO4ta3UlE93MAsIpSle/bVvZvuKbbSLdRgb+DZrv6m4TrzEKJLYX5hd9xds1DZEL9dQGVwC7kULGPPYex6+vG/9tIfKjXbK6qF0hkBs8a1tQaCRyVsz6du1nblmYuok8qF6ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772222860; c=relaxed/simple;
	bh=txZgcVst+V0JsJDhnBFFCtLGMricTLlMWXC+mOAUYbQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OuXFPIgv646adAtO8D1OeDhMNIhi7xiH4AOX4nIetHz+U1BPK93ADZBiQohMwjASUeRS7k+oC6bEfmx+Czn7OlmWN26cLYMWWWS+PLdgsaQyrC6JjkjReEROOhgAL0kv4oaLmnkn9JY3T4uCIhHYAI4Jovj1xv7rM+YiBiSNNJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=clctQl9T; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Hzesj0Xh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61RIevfN373651
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:07:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=PKCkZOk7ucOWcT0UjrNRzRST
	kJjJvgL61ainDgN9SCc=; b=clctQl9TbsvQXzLlHxmG1LzgjTx011DiSbbW8O0r
	qmbaiV2kUvoAxIbSZ1CE2q8xbsEuWeksXOGmqic5BNuuSUe91azuOBnB9riaKzWk
	PMncGqqhkq9308V3EK9z3wbpxIhAR81sJbutXajioiJfl5G0XqMbqrZQ88LKdc3j
	ZyAo7kGVGhdN2NIo6FceFTPxU6n6TplMSvO65SHOF1o+kRoPLswXoIZyYmTJKM1k
	V2+rgPv6N1OVsU4cjay15g2HRt88t8VbgNdM5xsJHcNYsDID7YRelF2qCiXvjNNH
	MhjYE56m+DRfquSUKZA5kNwuNCeXuKattZAQEOEuc8yrJQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ckgrtr8mn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:07:37 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb37db8b79so350451785a.3
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 12:07:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772222857; x=1772827657; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PKCkZOk7ucOWcT0UjrNRzRSTkJjJvgL61ainDgN9SCc=;
        b=Hzesj0Xhg8IwKSkPBITUBGJZf6XP8ucWrYLxoAGxxliY0n20+F11FtEz7fCjpsJJkI
         O25qGurW9DDpDbNiHZdMbG+Vs0z0mjnMQojLi+5kKsO/50cTCZ7BIE2O70niqkAKCLfn
         QAbVpklhHdHmkS03femcAIHD0bl/hgHc0cfInJBvnwqUdax8+pryp8xhNVS5zInMLKx/
         AL83IPMmvDamiWu8QqN9ga22d+m1kV4ZDcmQvvBzYshBbqLKreWF3PjgChPTiEyT/h51
         1USOIwgYOosEszp0jRtU5HTL67juUv0E6kt5dbGkglXWOXMaVxghwu6VgLHF/nzosbFW
         JjRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772222857; x=1772827657;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PKCkZOk7ucOWcT0UjrNRzRSTkJjJvgL61ainDgN9SCc=;
        b=vf/xOPTosZFqR+9X8eP+3qQzFUJMUIi/9JpQOYt+gpjY+lzxkKnUNVKIWRRaV4oexW
         KFq9Wz30359EoSS05iXXwIOEAMxrVFk1630fsIDcFM1a1hzfA+9cKLXTw9awdVm117rs
         P57kAWX8sEHTJrV5/ZOZXtb5dhWKQ5yFhedYmCQAlZRuCWED3P2LXqGgwuH9unTcj4Vc
         ub614t2f6zX6qlxzTeGGdsEbG9P/JJC4bZhmqhbxGaXp8Q7a+BYTfxfysS6pWFN8bSgg
         qE7ELT4Czy+WL29Scjyp0GKjNAH9Pp2WwJ2DHQ0EFyBHkRA+FLNYgcuqnSCGTPrvE5WK
         t8Vw==
X-Forwarded-Encrypted: i=1; AJvYcCWhiEfYnLG/Onkp7zq4z6esOleBCtfVkmmAGymhtAMvEmovw9sItItU6qqq0aZ9hdlzgs6egfC7kDpr@vger.kernel.org
X-Gm-Message-State: AOJu0YzizotcspZKOqBRAu42zdM6dce5imRbtihDjhXC+j14d8gov0+t
	4vQo3OFKkynPdugoa5fGdklQy/n2u+wrttMx6QbbgG0niG6MQ4mAWhg6QVuzz9BljdhsEd2+n0h
	HZnPJmdRhHhjNHIHY+bsVn8fNYV6USbVO09O2vNtqKZNDTZ36rzU22Rema4YrMtjk
X-Gm-Gg: ATEYQzyym6ilHCHQ5TkCHucPjDFeiyBh89Ia4APZJt7u59n7Tn1lYWaBujBmsaSO4YC
	sD2Eg1m8GPDdh95+xrXQ8ZNifcAVLbI5HiOZCuKMpmB3jZHhjHl6Ys+FG9AwPIJQm7uKqfsaWyF
	8Vk9g56GqzdkcCF+Lr9rbjJTzwi+wCL9WSppDlWYFZAm6UsgK6b6SNRfO78wyIF8UAkNg+hsUSO
	ePOUB2197lCMsL4TVlYP4qiZWjy3WOJM1BZfM4S+xz1LusSQFLxlFFakiiXxeaeiiYQMZ+740j8
	ChT8IvJgfnXn9k2EvWUpWyWVs1QPl0oeHYXKPpFpZPFoXV8daMI/shrxtFCVOqIxpih5bDLITvO
	OKW+8OYHIrGq841fViaNKWj5uz5MzadxNVOq1j+mlGYxHwf1w6B0IhZpiwlQvY9qxX5IvO1lYCZ
	2tuyjBYX+qMG8UT1zXYqb9D+OXVuDbzEZM0pQ=
X-Received: by 2002:a05:620a:4454:b0:8c7:3ff0:d484 with SMTP id af79cd13be357-8cbc8e2641cmr595421885a.75.1772222856742;
        Fri, 27 Feb 2026 12:07:36 -0800 (PST)
X-Received: by 2002:a05:620a:4454:b0:8c7:3ff0:d484 with SMTP id af79cd13be357-8cbc8e2641cmr595415285a.75.1772222856178;
        Fri, 27 Feb 2026 12:07:36 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a11721cbc1sm6844e87.84.2026.02.27.12.07.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 12:07:35 -0800 (PST)
Date: Fri, 27 Feb 2026 22:07:33 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Monish Chunara <monish.chunara@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sarthak.garg@oss.qualcomm.com,
        pradeep.pragallapati@oss.qualcomm.com, nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH V1 0/2] arm64: dts: qcom: lemans-evk: Update SDHC storage
 support via overlays
Message-ID: <fg4lxixp4fekhxbvisohgxoiaqya6gvuw5czflkk54kvr75xs4@nnze5nvbk2ix>
References: <20260227102405.2339544-1-monish.chunara@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260227102405.2339544-1-monish.chunara@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=C8jkCAP+ c=1 sm=1 tr=0 ts=69a1f989 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=Xq9aKHyif9_oXKuhy5kA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: 8wSB9rrnOIzNMojwtA5b0GlWRUgSbY_C
X-Proofpoint-ORIG-GUID: 8wSB9rrnOIzNMojwtA5b0GlWRUgSbY_C
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDE3NSBTYWx0ZWRfX4NJW+BS0ZZmz
 AW2CX80/eyRr186A84xqSpzp9G0/TQinmQTjpLWYTmsQwubK50J9d+4M6mr0sZLiEFN1bV4j49K
 VPOPF1pZKjuiwbaubpksD8ddRYUKaRykBu1PBfGa+8XSd4pWxw88bV7LjwLRvRHKPIW6FsecK+7
 re128J7aEeUHkoXJwPiCIWXFkHQTfFGjyF/jER7dbRbUyCIPS+9FbpBn1OO9wy9VI9WsxCUTCbb
 SzDTKe/i4pv60nV0OdROhe+u2VLtSsGkhYzbdkUr6yKH0N3F5PY2KHrFVGWGOLucEniYe0l9A1g
 05vwyLp3Qf+LCcCp8yG8pU0/0WYbg9xyQCB9OlRnh726aa9l44FWoKbmH0V7gupoCQrTCLhncQq
 XaF+kklj0ttEvvxH+XpsAt0zMCSkYA4n1z2gKnhpoJ8t7uFypK6M90MzxhtKkfEX/C5e3WG34Kf
 R8Cgt2SZ47d9bMCBccQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 spamscore=0 phishscore=0
 malwarescore=0 clxscore=1015 bulkscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270175
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269413-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 47B9F1BD37D
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 03:54:03PM +0530, Monish Chunara wrote:
> This series updates the device tree configuration for the LeMans EVK
> board to support dynamic selection between SD card and eMMC storage.
> 
> The LeMans EVK hardware supports either an SD card or eMMC, but the
> interfaces are mutually exclusive as they share the same controller and
> resources. Previously, SD card support was hardcoded in the main device
> tree, preventing easy switching to eMMC.
> 
> This series refactors the SDHC configuration by:
> 
> 1. Moving the existing SD card configuration into a dedicated overlay.
> 2. Adding a new overlay to support eMMC.
> 3. Updating the common SDHC node in the SoC dtsi to include necessary
> resources (clocks, register ranges) required by the eMMC configuration.
> 
> This allows the bootloader to apply the appropriate overlay based on the
> desired storage medium.

Is there a default mode of operation / extension? If there is one,
please define it in the base DT and override it in a single overlay
rather than having two mutually exclusive overlays.

> 
> Monish Chunara (2):
>   arm64: dts: qcom: lemans-evk: Move SD card support to overlay
>   arm64: dts: qcom: lemans-evk: Add SDHCI support for eMMC via overlay
> 
>  arch/arm64/boot/dts/qcom/Makefile             |  6 ++
>  arch/arm64/boot/dts/qcom/lemans-evk-emmc.dtso | 64 +++++++++++++++++++
>  .../boot/dts/qcom/lemans-evk-sd-card.dtso     | 25 ++++++++
>  arch/arm64/boot/dts/qcom/lemans-evk.dts       | 16 -----
>  arch/arm64/boot/dts/qcom/lemans.dtsi          | 10 ++-
>  5 files changed, 102 insertions(+), 19 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/qcom/lemans-evk-emmc.dtso
>  create mode 100644 arch/arm64/boot/dts/qcom/lemans-evk-sd-card.dtso
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-275415-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qE9hGto2tGnTiwAAu9opvQ
	(envelope-from <devicetree+bounces-275415-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:10:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0D9286B8B
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:10:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F190D328439A
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:04:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB5B93BA22E;
	Fri, 13 Mar 2026 16:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d8Rj6Deq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="h54S3c1N"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1D43AEF4C
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773417853; cv=none; b=RLj4XpPsVjWqSeGOcY2tNx9pyR8AfS93Pqj7hes/2U0HpB7kd3E8k2/WnfQUEe93Jcmo/RveFMqmvKPmJDL8cwNVpUB30y9mjlPNvmlU+U6G8qOE3do5Os1R6G+9NvoahUMVpcNyKx7Fhaqf76LN+2x7Nphfp6ozKe9ITrFKj0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773417853; c=relaxed/simple;
	bh=rK8S3XcdOkJtTPmU3AL4lHebx836znNSJPDRkIryyNQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MKeGLPNrqcamWgaUECldsfldh8Xf8eQcCTWeyLm0xPtO7yReUanYquTuPxdv1g8tTIzFLtftYYGxzmlj38Hu1PsQzb8oKnbcRTVuN5cVEB9R6dAJ18RGkaIGqtC7tnpvODnGj3XG+dOryz2Ox1USzmRabp1XqJ9lLrAbT/n3a/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d8Rj6Deq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=h54S3c1N; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D9BJxG3906612
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:04:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qoIt/c0c3o7wTtS+reA6lWhErdA4xTAVSkX0IZxKwL8=; b=d8Rj6Deqx87RQvwk
	Hb7YnElw+GX2/F6B8gyXuwmugHHhtBXDclq/DOQy2K2yllf3pybfkIV4BzWlpNum
	y8G+IxE+QG0j75U+7eUX6h8cOp1jy1f995i3W6+GBclKZ51XqGniPkmS9LFL4AFm
	Lz3aESXM7GcmeLai5LVhbdU8VcVBoRrRr4E26QadDZtZJpKVAd9wbhLHrOlUsp+E
	Hmz/9T+SxmugnXCJak0c0vDo1a+4oM1tq5fBVGc3ttiwmKgz1G/70IBqjMJNCBp/
	FpxWLmOF9AvKfLDUYGG4EmK0l1B+fTja+CE2XVR0UaC/OuiExP3oTfeenkekjsGJ
	G7QxIg==
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvfqs9cf9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:04:11 +0000 (GMT)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-67bb5810407so34302022eaf.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773417851; x=1774022651; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qoIt/c0c3o7wTtS+reA6lWhErdA4xTAVSkX0IZxKwL8=;
        b=h54S3c1NG05mLoBcf7N5P3CKbU77Gmk0tgCRyH7H+vmkjdcU+3Ue0xt3OdO7risKEL
         hHZGIC2MCyNb9OKyJZiT2oxhkN1z3PtOBS2+cWJguHbGWfTgZREKSsCUXLUZURMNem//
         /x3GDqv5TbFLsqseCT1uXP8sYcqN/VcIOPZltCLyUU6Og0L09HeRbtgssIsaRa0yTEEl
         tDaZYK9lbvZRyN393RmQ35/AdhDragkQU4SF6aDmkngIFFf5UvSO5tuMI080MUodpxD3
         3ygLM5ueWgjHtWGaPrgPlD9XnqMLnuD7Wa5vue1iMZerMiGacfW4/TRshLyek9qfPdqE
         NN7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773417851; x=1774022651;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qoIt/c0c3o7wTtS+reA6lWhErdA4xTAVSkX0IZxKwL8=;
        b=OtTR0N1FugFpOBEtvvn9MD5fbhaJh0smQF0+DDl9SUZo1hRiXymd5PD0sxctRaizEu
         DXyJPVqxKJDfN9MouFogKoMlSO27rahb0qSyjo85O3n2DdpJfMfGWVXreaCfS42iy0Ub
         oCvCtjuBBhIpt0oN8n7vwaZ45qkJ21zAD4hnkOO0PCVgBDldaqj/aEpQqHRGk6FllBBS
         uYFAizPKcbQPspLLw0WSLsMydDjaflep3eCgr8+WPLCnb7aWVl2rpssJt5omy43na5ME
         1a9xQb7ywh5NWTdWpcZgPwCavd/HOwtDOoUdRMYQ6LOJraxkx9Fwgx2DnW4rro6azvuU
         cSXg==
X-Forwarded-Encrypted: i=1; AJvYcCXfEONKLG+u7UR9VJ2lubhdU4y4o4QGEH8ldiJny+ZvkkQGDLmnVZ2EIUB1hAIQoG6xRfcprQ+R6+Ve@vger.kernel.org
X-Gm-Message-State: AOJu0YyDihID2MJSyB2BYuRmODcDWGxD7x2bPJ5/CYjodRYIax2gMKRG
	58gVQITFefrZwFUY3Bbc8CEJJuflm3YtsiCsHYiH+tqxu1emG52G16eut8JBAFiy6wUiH5lmdMd
	ZjLhpvItPaTo8nSOz9jyjyse2UMupgXDV6zhEXNE+AIBMH4OBmkOli1LcfvWbQZMO2v0GR5nU
X-Gm-Gg: ATEYQzwECzYf3L79wZxS32Nx5PGr2YyU9ug10tgyM/oGU6KXfpwQKsWgliowhvshtvw
	vVAW65JVNmA3sI3rtLyGmBXtmGEdRhmAeoEd0ayi0/eF9lTIY2jx93nfALtY1zBYOCWrEI87D96
	0Pp3rLbP3MG/e5ZGahgx9NcVCYsU57qXQURGzOOMJ3K+taqnZ3ki2M5bJ8wRpufQxuVrqy98yhx
	JKMYRE4ftQAhyf3sri39GS3mUwrkMRvA2/DuGByVWtKU1FP4Nc6Vi9x6dkBhh4J0kz2Xi4Ytt9Z
	mZB4QQBJ095dPN55AKmtpaD+MSrpHTCZJ6se+I/ByT9wmjCK7tAeu2e6wfAvoi5S2MRvkxmB5IZ
	dhaXXHXT2+363UKVhbTlvWIHgHvNOJ9sdEhLZqlzvWvUJkW4S0cJcKHk8+ddI9SlFxiIV9QNPYi
	fqStMjJXOBZizr2hcLqDJHfOy8VrduWVpp2vE=
X-Received: by 2002:a05:6820:448b:b0:67b:d301:862f with SMTP id 006d021491bc7-67bdaa5ceaemr1871690eaf.50.1773417850674;
        Fri, 13 Mar 2026 09:04:10 -0700 (PDT)
X-Received: by 2002:a05:6820:448b:b0:67b:d301:862f with SMTP id 006d021491bc7-67bdaa5ceaemr1871667eaf.50.1773417850160;
        Fri, 13 Mar 2026 09:04:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a96565ecbsm1475181fa.41.2026.03.13.09.04.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 09:04:08 -0700 (PDT)
Date: Fri, 13 Mar 2026 18:04:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Shuai Zhang <shuai.zhang@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, cheng.jiang@oss.qualcomm.com,
        quic_chezhou@quicinc.com, wei.deng@oss.qualcomm.com,
        jinwang.li@oss.qualcomm.com, mengshi.wu@oss.qualcomm.com
Subject: Re: [PATCH v1] arm64: dts: qcom: hamoa-iot-evk: support Bluetooth
 over both USB and UART
Message-ID: <liap5tu5lpmwprmvzcjutp5kyulq7lyddrhfyorokzomdwfzdu@zscyzbg5enzj>
References: <20260311090921.1892191-1-shuai.zhang@oss.qualcomm.com>
 <cffdb8ab-a293-4535-860c-378a4b8a3d33@oss.qualcomm.com>
 <97a3f3f2-e9e2-44ac-a682-0e0f0c100a45@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <97a3f3f2-e9e2-44ac-a682-0e0f0c100a45@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: FVWqt6-pUOAYegWRWsPvBKGtvbHVTxL-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEyOCBTYWx0ZWRfX/ujp7AxdJcZa
 1KwQQ1Z8rNqUulXfmXekqJyriULVgPWFm2vBAn9G2+XzigUgv3cYZo7H4XUp8wPjQOKjd3wKNGd
 3KAyJUtnhDuJKKYXDqRVnrTEPF8eIE8IJ3E+B/4qOr/QG4UJYPrsOuylIwk1XmFbT9zNAKSY97u
 6CcgZghzVWAUo1VEWTXTHtr4xeLlNxMOV8aIz16xg3yqUsJ5Fk09M3OfwFG9cEvBeo8Uz9Au9on
 zr/XL9A+TXS3dQtln6ZH33zgzu03N6sLyydc4QfV9N9uyAVwevT8rMBtlIth90HknYmWEaUvLXE
 Ss1MVRadfivh7iFnxRsS4orpn7PpKpEVT5u4PBiNTu7NK38x/v9yYpJI5OfdXEk/rHuFfCyoVst
 joe5YzSfyxdLucWSVRo2d/tBZF7EDSK3o+eg3e+szUETVNjMc9KlOieXZiiXxfqaHr1YXYWGD9f
 6tFplv2exOFb1//ARnw==
X-Proofpoint-GUID: FVWqt6-pUOAYegWRWsPvBKGtvbHVTxL-
X-Authority-Analysis: v=2.4 cv=GoNPO01C c=1 sm=1 tr=0 ts=69b4357b cx=c_pps
 a=lVi5GcDxkcJcfCmEjVJoaw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=1xRLyjFezCpYc6mQBXgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=rBiNkAWo9uy_4UTK5NWh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 phishscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130128
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275415-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
X-Rspamd-Queue-Id: BE0D9286B8B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 02:37:39PM +0800, Shuai Zhang wrote:
> Hi Konrad
> 
> On 3/11/2026 9:07 PM, Konrad Dybcio wrote:
> > On 3/11/26 10:09 AM, Shuai Zhang wrote:
> > > When Bluetooth supports both USB and UART, the BT UART driver is
> > > always loaded, while USB is hot-pluggable. As a result, when Bluetooth
> > > is used over USB, the UART driver still be probed and drive BT_EN low,
> > > which causes the Bluetooth device on USB to be disconnected.
> > Is bluetooth connected over UART *and* USB simultaneously?
> BT uses either UART or USB, never both at the same time.
> 
> On platforms supporting both, the UART driver is always probed, while USB is
> hot‑pluggable.
> 
> As a result, when BT runs over USB, the UART driver still probes and pulls
> BT_EN low,
> 
> unintentionally powering off the USB BT device.

Could you please confirm if [1] would solve the problem?


[1] https://lore.kernel.org/r/20260224-pci-m2-e-v5-9-dd9b9501d33c@oss.qualcomm.com

> 
> > 
> > > Configure BT_EN as a GPIO hog so that it is controlled by the platform
> > What's "the platform"?
> 
> hamoa-evk
> 
> 

-- 
With best wishes
Dmitry


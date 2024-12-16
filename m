Return-Path: <devicetree+bounces-131489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B96E9F36C5
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 17:57:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 44B48188B27E
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 16:56:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E732207DF4;
	Mon, 16 Dec 2024 16:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kcWYU8iJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D67F207A35
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 16:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734367865; cv=none; b=Vg0EvcU/hsVXWQ+SsyklEYEwZqWdF409AtwvQa81f90dCGnsYmIgai3H1YMaJ2F5oG3BtrrpkTT9GRUHS7slWElQJI72i8ggJCBdJybE+RhYkb3KSRab6QassjdtpYTbsR02er9vyFDlQOUK03MsgsEKZdgNdLDlbI5oZGMCvUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734367865; c=relaxed/simple;
	bh=2ucF+AEQvcgtC2INo8ga1WiOc1sBgnMjFIYO0/5Sg9Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=E8Hasj6wzXpV6glc8KfbPLqZwV+MBIutrg72+uJ2JxAkfgc7Zb2E/k0Xc+hxwL6oCMSbFNjnhYm5XFle4i1BKt6ixjGz7YoOJyhsWC41KAl0uYrUWlDsl8rG+b9yLsQQXCQHNx33QB+A+4NYuU/8xO/lcoUUvlGf0V5b4pDptk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kcWYU8iJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BGBKpVO024593
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 16:51:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mpXHKXHw98BsiTXyomIpWXczQz8SYOfxnAMHA1bryRU=; b=kcWYU8iJMfU56ScF
	3R0RCmLZMntWj2tPiUBWzy1+/cRZSDA4g1+Ytl7BJnQQxMQnp4njA71LbwyVVqtU
	XJ2upeHPChBbO2LLpbjJlB/Arb32mKOVCvO6q3eAmKlUigy8M239HNoJwtaHTltr
	LGHJRSJvATcAU5c6NdVZvSWKdXgutawjVaT/9ainqlHoRnIFH6yQWKEQmCe837cb
	sPtlqKoRAYlf3XmbjwrsQk6GoQJKWFY8fUE4dU3qlKWJxdQnpP2JbqOdieIl8OTq
	HomKjaNb6cCtrjLOZpFoFRTrza4wT24/So5YdVBjZb/4l/jl5Ad+jVDrelV7AB1r
	CDMoTg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43jk8grvv9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 16:51:01 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-725cf06e7bcso3424960b3a.3
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 08:51:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734367860; x=1734972660;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mpXHKXHw98BsiTXyomIpWXczQz8SYOfxnAMHA1bryRU=;
        b=GQIwuUxWXauEQbDIixTwp56rhZ9B5eOjZBkG0pyhiZV3C3N1/xBVhxaDXfWcGHUSA+
         pGW/oEE5sLG2iGmg+GGVZ9joyfw2c5nO3j1mbTVaR7uturyJR9rFTbLOuiCaWOPzdC7c
         LFahF3pizBOIqMHm1WiGnBtwf93zBp9sqF2WA5V2Ita5QJrttQWTQir+DAUGNOKV7iUJ
         Hk5ECnhIaODR1qwKl3wmOZUcqtGWId4pJPjiRU9GJ+i7T7hP7zvUPSnOMEchEXc032+l
         IX7M6ZCMOaQJ+9B6/GFFB9xPt0JAF0EHBQIrQA6EglPy0tualxFlHHTf+VvP4LouaUTl
         8xhg==
X-Forwarded-Encrypted: i=1; AJvYcCVVOXbld6+GHLZbWGAoXxjjfdG+FEdE9lrNS/kWZcRElBFIZHqnIVjKt3bEFjb8zsUFk0qnOtAhgaVC@vger.kernel.org
X-Gm-Message-State: AOJu0YwpV9r/5QmMnRlI+8TJ57ro6nsmnVpY+7mMSRPZzDF0ICjdAUV+
	RoS7k+ypqN+PKHM0Yg6JYVd68l6wW/pkxleByntTnaZXThi7hWq3Viqs67mbowIauInvs1NzEA9
	23IfEkpWKDCrDkp2mzBBmMzJ5jApsQJ6g5eC+TTZguOjZTF+5/BBL/a4OpgPR
X-Gm-Gg: ASbGncs0vgXMP3J2eeOcR2kzPZ6/yD+fgovHT9uUanFuTubJxDF+c0+fsEyE02gEeuQ
	Zwt0cSWUSB0uSkAWmzpey1p196KCtBVv7ON6eVcYEzGHDN3DKeONUwbSsvf7czPF/6aRZDf1I92
	QoAMXgj5eD+mutUXVNz7ckbGw6GwDzvZbBIzjm5qvmKulM7h3ROy0a6PmNZ0e0hurRV3blHeOQX
	+S7v2nxxVLZYl/QUWwQHVfsR8J2McfaKhZn/wq3klkPsQxX5u/dlbrLrdaIgMzP5O0xb0A9KpYy
	6wlR/46a88VwcqQ3+Q==
X-Received: by 2002:a05:6a20:a11a:b0:1dc:bdbd:9017 with SMTP id adf61e73a8af0-1e1dfe43afbmr23646934637.40.1734367859979;
        Mon, 16 Dec 2024 08:50:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEV8A6FtU8/weso+KmitSxASicvji+fw+OyGjA3CopQT8obo7DLsthuhpEbsRgydCESlYvdPg==
X-Received: by 2002:a05:6a20:a11a:b0:1dc:bdbd:9017 with SMTP id adf61e73a8af0-1e1dfe43afbmr23646896637.40.1734367859552;
        Mon, 16 Dec 2024 08:50:59 -0800 (PST)
Received: from [169.254.0.1] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72918bcde43sm4937486b3a.194.2024.12.16.08.50.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 08:50:59 -0800 (PST)
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
To: ath12k@lists.infradead.org, Kalle Valo <kvalo@kernel.org>
Cc: linux-wireless@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20241211153432.775335-1-kvalo@kernel.org>
References: <20241211153432.775335-1-kvalo@kernel.org>
Subject: Re: [PATCH v3 0/8] wifi: ath12k: MLO support part 7
Message-Id: <173436785894.3413746.14923997859754791913.b4-ty@oss.qualcomm.com>
Date: Mon, 16 Dec 2024 08:50:58 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.0
X-Proofpoint-GUID: u-u_owdHWd74_7HQPvmHVJqwRhZYPsQD
X-Proofpoint-ORIG-GUID: u-u_owdHWd74_7HQPvmHVJqwRhZYPsQD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=939 adultscore=0
 spamscore=0 priorityscore=1501 mlxscore=0 phishscore=0 malwarescore=0
 lowpriorityscore=0 suspectscore=0 impostorscore=0 bulkscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412160140


On Wed, 11 Dec 2024 17:34:24 +0200, Kalle Valo wrote:
> Implementing Multi-Link Operation (MLO) continues. Bindings document is added
> to get WSI information from DT (patch 1) with the code parsing the information
> (patch 2). Rest of the patches are about configuring MLO in firmware.
> 
> Device Tree bindings were reviewed as RFC earlier:
> 
> [RFC PATCH v3 1/5] dt-bindings: net: wireless: Describe ath12k PCI module with WSI
> 
> [...]

Applied, thanks!

[1/8] dt-bindings: net: wireless: Describe ath12k PCI module with WSI
      commit: 30e36fa89d8266d9221ee992d4f43553a59a3431
[2/8] wifi: ath12k: parse multiple device information from Device Tree
      commit: de61173d59082575d985c89a58db0e4055605b48
[3/8] wifi: ath12k: send partner device details in QMI MLO capability
      commit: 59d789c212eb9c11b02f2fd06c06cabb314913d2
[4/8] wifi: ath12k: refactor ath12k_qmi_alloc_target_mem_chunk()
      commit: c445894b9a0504727fabac0ddf3aab27d48b9fcc
[5/8] wifi: ath12k: add support to allocate MLO global memory region
      commit: 157fb81feda5c646b77d8135de6e29214fcd74af
[6/8] wifi: ath12k: Add MLO WMI setup and teardown functions
      commit: a085667ab1751a3b821ff926a08934d42dcb99d1
[7/8] wifi: ath12k: enable MLO setup and teardown from core
      commit: b6529891f04659c5279f4b58db230fdb589dc2ac
[8/8] wifi: ath12k: avoid redundant code in DP Rx error process
      commit: bdbb676320a22eddacf3188726b359e179b9bc07

Best regards,
-- 
Jeff Johnson <jeff.johnson@oss.qualcomm.com>



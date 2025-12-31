Return-Path: <devicetree+bounces-250714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6153CCEB423
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 05:58:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 090133026A89
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 04:56:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94A1130FC00;
	Wed, 31 Dec 2025 04:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kLe6889n";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Fmmsngzl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C250224B12
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767156995; cv=none; b=u0tATQpJEYj9bUl+1egJ47Gg9ID90WdWh3bTevSkuULd8dEEkdQ+xHMGH3QMfarhxR7H8ce1ZRpXFl3pX3feyxTrkNHP6KQp8OVY8HuYL4hZ8V9ZPr+P1ZTkELbFmGK4jeMLuPKk6htWmZP2nQwd0O6WP/RqdhNtRSVQbvMBoWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767156995; c=relaxed/simple;
	bh=XWp7COkoR50DXLNvgSau8lqHHHIoHPVakl6H9Mli0uU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LYYXwtHKVpMpDMMgBeH5s+GimwH3yfg8e5R0ADDlnJ8HucKYwbZTAB2zwxwqp6wmtTlD2NwjQ9c9a6OxGCTXp0ZHcggcqXDbaaf07uOXde6qo+S2rRXA2gvT3QfEaYBiy7BxLzVwrJVlrvK08vtAYXh5O03iACJLXLg3NUwTD6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kLe6889n; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Fmmsngzl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUFErCd900113
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:56:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=hik6Yv4/FlA
	PL1T4IYbHNIfPpAtv/lW1BzmwFMKCUek=; b=kLe6889nRDFpBx0NiBBSouL43yL
	U/CkLbQ+F8EaoECTBlWcedwmQxazL7CJ6hQAWjWRxgoyiVsGnQp09s/DCGWRYkJm
	N+2WWV9uUa/ZIxtBVpkOhgsIktd6qI+rmzTbCSaeXNez+LnrQfO6KUxVeuwHM9nD
	sveFkbHoQXyaBptMqvCb14GMdPyu33AxMTBUuH3mFKYzNxV+vUcLUVO8VHCqnag5
	6z/hm+Ev/vPo6NcK9ndUrgLM04n86kPljKTjz1/VUQFTBSEsY+PUrCq6T8VX3PE1
	N+7EbF8HCMAG2jtXzzMEurWo6cEMSV8AKgHDHClD23qdcqx0lvWZzHqI5Uw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc8ky2pt2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:56:33 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34c6cda4a92so22571808a91.3
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 20:56:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767156990; x=1767761790; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hik6Yv4/FlAPL1T4IYbHNIfPpAtv/lW1BzmwFMKCUek=;
        b=FmmsngzlDv4oJcXkdRv7itLj8SrL+qIhxpc16dxOjGCRgEG6BVaiX6Ucu+8HfaQm/t
         mcv0/RxIXq6SrPeX1kiL+vo+xEe6naNf14m1x1MiUhEjZZureEvwN8+pp7vEelfyEVQN
         a+LqLvOoQfCoO3ryTNRto2v0n6zck6H4WmTiSIFetZU2D7EwDq6KgAJlzJug6U1cuy6u
         9bv6qEPgTXTewmOWs587rhbsAp0xnVkO/CRhCB8D7lw6Q4SZr/MFeZFXHBZnW5ROR3jk
         nn2fLRrFCScVo6OuTw/3L9BLdRgZtZYPY5EeZ2XrkueMj1zFzwl4S83Ypu42orsZFB9S
         LtXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767156990; x=1767761790;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hik6Yv4/FlAPL1T4IYbHNIfPpAtv/lW1BzmwFMKCUek=;
        b=C2SCeTWNYZJkLtqCgvuTxAjiYCInJpdExcxtYRPiMmZsY6yG5e3PnMZJgWgpjGUUmw
         NVftJw+K9tkOB7nvQaT73KoazUj336gDXG8WN5iDMb1EnKR3B5cXtogzPsw7rzKDnVaW
         KAQl4X5qgzPJpHjLkj/8ZYAZPYAaSpSDnoKwZ8WEzRWldXW1t6NKNilbNzPefO04ECgn
         bqEUZx05C8shv4rYirkqt2InxIuJqNB0tupiQf8qSaEkv3CFNF4O++EqBLAo96cdo/SN
         kgQrPkjoPzNpPubcr2WVkIBbBkABpr/610tcEOkQmRYp/FKovUThG4gpxDk0566ReOYz
         Z39Q==
X-Forwarded-Encrypted: i=1; AJvYcCWvDL+P9Bso+r+m99IwuBnSPYcDe3s5Fqn9GYpVSPQR+o2oiD1M8MGoUUi6tERg0MTJBS7suFG2RIaP@vger.kernel.org
X-Gm-Message-State: AOJu0YwL0aTnFMVLXNIjMHH0EKEFuPhAMUFtlzc/ky6npA7s3lcboCae
	LP77Jra211hMWgQ09yeZ28GfiN4nVbu1x1//Q1aTC5NnoowClpm0Y6S85aGHs55+2AdE1W9HeYg
	LdGMq13YABXxVpc8FwwhKSc0jyZ4DJVgQHjjOUQFZtP88HXHsTGRLO0VFqDhNusDG
X-Gm-Gg: AY/fxX76TzpDEwpU+oYdJyI7H3M8J+p/J/yC7fA2Y0JQvYVbLPVG1N+qD9sR61c+UWx
	R+0oKr6KHMsb7FYFfqX+wyACtYsot47mFABORHc3TxsbyYGF64fgSzH4p5FnI8Imd7sn8vpuO77
	6s7Hzv1f9ocL8HHrWor0SwkBallTgfSx665/kU7OXd6xN+BEmBD+1ogjxHuQt1AuGMkUufelEqj
	LQ9ViWWue8j6SLthWE51Q9MDGxwpxY+cI/P4d1fRxvjTBg46796+gWceHBIExskAKEWuY/j3e4E
	Sc9/2y9l8uNBeL/JzX7CRUY7fphO3p26PnuWsIDjqgGl8bJVwwM59D0CkfwXjYXT3GSjrunEXQI
	a9HCi9FVaCdtSnV4NdVeOvUNSATdaGKowkppuiFaz
X-Received: by 2002:a17:90b:4d90:b0:34a:e9b:26b1 with SMTP id 98e67ed59e1d1-34e921d0a61mr30320784a91.26.1767156990346;
        Tue, 30 Dec 2025 20:56:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEAmbtw/5/ayDFahPPH4jioa1oTKC6l4u/GuyMepxqzmSJeoizBhSiIQJ9Q9qSSuJuq9LX3zA==
X-Received: by 2002:a17:90b:4d90:b0:34a:e9b:26b1 with SMTP id 98e67ed59e1d1-34e921d0a61mr30320764a91.26.1767156989895;
        Tue, 30 Dec 2025 20:56:29 -0800 (PST)
Received: from hu-rdwivedi-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70d4f7d3sm34547697a91.4.2025.12.30.20.56.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 20:56:29 -0800 (PST)
From: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
To: mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, James.Bottomley@HansenPartnership.com,
        martin.petersen@oracle.com, ram.dwivedi@oss.qualcomm.com,
        anjana.hari@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH V3 3/4] scsi: ufs: core Enforce minimum pm level for sysfs configuration
Date: Wed, 31 Dec 2025 10:25:52 +0530
Message-Id: <20251231045553.622611-4-ram.dwivedi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251231045553.622611-1-ram.dwivedi@oss.qualcomm.com>
References: <20251231045553.622611-1-ram.dwivedi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDAzOSBTYWx0ZWRfX6P/6JFIiSYQi
 XZEuoKjtd8LkR4XUXzNBeqCNyHb3xv8AeIJZ0V8qPf/ksV2p+eefcqba9LaOgxY2UjcaZH5J5bQ
 M5i/1Z35AR12vviXGBel6FbJnmxElKCk3QojfZbwKYefvsfMHu++MynaL8yyMAkPWyGMa3cxKB4
 4nJKmbAyntU7ZMIXc2fRwIkuMfP2AuRS1pJOjAC9IscI5GCqwNGbO4D2HO++WhljRBs6F+setkG
 ZW5Io6NfGtBsmJt+sNde7bm52YFjYn3ctUbkyDMVfOuIey3HomKmil9dnCxxxPPdB45g/x1U1qx
 It+jNvyPu+gr6Wrst4xFZyhE7XEuc5OQ134e3ArFXJfJX3I3BDzoKwgrs5fO/wK2QMdgq5YmyQM
 xMEBLe13JjFO5+7Ux2lD4zw8B7LsrdzMyWut2/Csr9IaEY8V/1jTN/OhmDfP6hEqFiAOd+ghmrb
 KLZoJX7HGZQCxKex4XQ==
X-Proofpoint-ORIG-GUID: ExsKXU13bjc5SQW3ZEgY0v8_zFMoCwLS
X-Authority-Analysis: v=2.4 cv=BuuQAIX5 c=1 sm=1 tr=0 ts=6954ad01 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=_fLkURk_aflrY1IPiHIA:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: ExsKXU13bjc5SQW3ZEgY0v8_zFMoCwLS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512310039

Some UFS platforms only support a limited subset of power levels.
Currently, the sysfs interface allows users to set any pm level
without validating the minimum supported value. If an unsupported
level is selected, suspend may fail.

Introduce an pm_lvl_min field in the ufs_hba structure and use it
to clamp the pm level requested via sysfs so that only supported
levels are accepted. Platforms that require a minimum pm level
can set this field during probe.

Signed-off-by: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
---
 drivers/ufs/core/ufs-sysfs.c | 2 +-
 include/ufs/ufshcd.h         | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/ufs/core/ufs-sysfs.c b/drivers/ufs/core/ufs-sysfs.c
index b33f8656edb5..02e5468ad49d 100644
--- a/drivers/ufs/core/ufs-sysfs.c
+++ b/drivers/ufs/core/ufs-sysfs.c
@@ -141,7 +141,7 @@ static inline ssize_t ufs_sysfs_pm_lvl_store(struct device *dev,
 	if (kstrtoul(buf, 0, &value))
 		return -EINVAL;
 
-	if (value >= UFS_PM_LVL_MAX)
+	if (value >= UFS_PM_LVL_MAX || value < hba->pm_lvl_min)
 		return -EINVAL;
 
 	if (ufs_pm_lvl_states[value].dev_state == UFS_DEEPSLEEP_PWR_MODE &&
diff --git a/include/ufs/ufshcd.h b/include/ufs/ufshcd.h
index 19154228780b..ac8697a7355b 100644
--- a/include/ufs/ufshcd.h
+++ b/include/ufs/ufshcd.h
@@ -972,6 +972,7 @@ struct ufs_hba {
 	enum ufs_pm_level rpm_lvl;
 	/* Desired UFS power management level during system PM */
 	enum ufs_pm_level spm_lvl;
+	enum ufs_pm_level pm_lvl_min;
 	int pm_op_in_progress;
 
 	/* Auto-Hibernate Idle Timer register value */
-- 
2.34.1



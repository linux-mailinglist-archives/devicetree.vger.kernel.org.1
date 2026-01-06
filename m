Return-Path: <devicetree+bounces-251945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 782D9CF893E
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 14:47:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 639E23018C88
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 13:47:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5A7033AD9A;
	Tue,  6 Jan 2026 13:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TYFsNJUz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="e2n3R8KH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3087933859C
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 13:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767706840; cv=none; b=L+Z+Lpc/lAf5NwfjPE1RWr0VI+Z8yHXs7RVijvHxbg220gjqAuA8JOhBgueNQOAlf8Ezzx4aGt8lwZwluCrk1R69kVUJ8KaqHUX8HkSkgK3baG2GeH97H7bRqqXWlj3dQ6mLAVPHRUpTw30J0HK3qpV+bwBta7U13OfCOAiahrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767706840; c=relaxed/simple;
	bh=XWp7COkoR50DXLNvgSau8lqHHHIoHPVakl6H9Mli0uU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=sk09EB1DJE61giZzM1ymYtf+NmawtBYMu6fQrL0vWEAuiKCmVJtKox5g6eckokM2jfOFru4/TxHQfX0mPrKlUFGXBumYvmBIY4g2u2YFtXjsSE8qE+U1Gbw6ULiYFCC3xJ5740E1WMIOE2sFKkTtHmEEY0vOzx0nsYjRolcpJd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TYFsNJUz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=e2n3R8KH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6069W7DW4090703
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 13:40:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=hik6Yv4/FlA
	PL1T4IYbHNIfPpAtv/lW1BzmwFMKCUek=; b=TYFsNJUzgt7+Gp1KgJ2K60BG/a+
	g+4g5J5qMs7P88EoYzi1uR47oKPKSG78b5TROGjv/MGNYXwuJHq7yd2xY2dLDqSF
	xD6oFoWu0AqjUMmnEKNZLPySyqM1jcIzbPLDAQQT4swWSnYPzoFuXhGzNTBCWyQ3
	hKFP4FgvO0Ds3YyhH+Ipcyqbw3savvHrsDxJaSI2d48hipa8OlNZNo1O9/2QzF6v
	B+oy9lhxiAmngUgFWTeW59RoGeAr7s/DcxJyVx9aQPYSlEp55zndAN64kah7a5jG
	YOvInn+qLKw7wsQCG24jceFolrESqWzQ7Sn1ptv4zHjBIZ5Lo/Gsm+lOTCA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgyun8mp8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 13:40:35 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0e9e0fd49so30462585ad.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 05:40:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767706834; x=1768311634; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hik6Yv4/FlAPL1T4IYbHNIfPpAtv/lW1BzmwFMKCUek=;
        b=e2n3R8KHT4kFQP4UPjFDu6EtY4+vEqpEV/jkwtL+ocU9NgIwdCGZuHjIaAy89AK6uM
         GYyJ58unPkSNnG8CJIwd7HFqIOs05+OthM3bCGp+Or4t3nA57zUFWzu+5OtaLvNTf15y
         lv2daZerYkEBqBxI2UChcvQ5hUXVQrKdnNlkaon1hFTJTPKwEdSM8Z3ad+y2/zAO8Vai
         WLg63t/ZasqH5Eez7J+xsV0t9u5bn6ZJUlLb55Id0yPLY/gnVH0vgTrOSJQJiYn0v73E
         N7jTSxUGwjHvHgu0oWF90dgzwrHW30lzn8sTSBvLKiUWdDDqkyeEdtKEXW0MjCJ3RnxX
         4eDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767706834; x=1768311634;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hik6Yv4/FlAPL1T4IYbHNIfPpAtv/lW1BzmwFMKCUek=;
        b=Mk93wsuGxCaDBOZx0qBbwHyMnpXAKnw4XG6btM5d28F4mjEKBe/8L+WL5z8YLRqlu6
         jVbyOUD4NNAY8g9bw0dofEolKPEJugXOZkMsZ/lEPiHIbqrTTsVFsVD6lhYq5dvUlK0V
         ZwJQTKLCuQ5AJb6pqnnmhOfxklWVurIoPv1rPI1AndRH4OclB7O4tuet48/iwrxhhc4s
         TyihSki6lHT6siPkrNdsYTOVsaOKII/CBAtJ5oCYSQKx0KekNzI92AVWAhDSVu06gFAp
         SYCvSG9mnpFCKu9K1flUIUBqGeAXO9xW/1DQ93fukBLDb4a+FVSCCMyvxvP4UgK/qxUO
         DSRg==
X-Forwarded-Encrypted: i=1; AJvYcCVxoncCmnGalNaCGjLbEDwykuW/2kyDzTDylYqR8pGc2DKE3v81+7IBw6+POHPoZIpAEDPjknz5IDHh@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9pP0PQEnbE9Ajnqklq2wFzu836Y7+LV1mN9JN/VifCQCbKfdj
	JQTSReKPt6mzOoMGi1NLp1xbog82qUNhKXtKc29QXFldGHxgcmWV4IadUas0LO+GOG9Ho5JOfTJ
	XZWRYvxZ5iDLzCoVlO+XXIh13hUubikskvaw5Ie1XNM+rRKEH86gb/08BUgiOxQKh
X-Gm-Gg: AY/fxX76LenFUkrPZOz/+V7YoxRVkYL7KKm3rNl6zL4FHN7Zeu3KCTsIz9pPhv2idLk
	NfIOi/kKVIWg5xSC+6hyf+3XMb5iyeQqmK9S0kwIZwdSONlzFCaJDIwjqDSk8ay3yGfjHNHmubv
	+6iPGv08v6NUCE+SdbtB2oB9e7y2t6x3GnSQFmT99EqwAoJ2rqsU8Y5iUJ0hkWBIwL2Kq2SU3VX
	cJYuTOMhBY+kdNkVAJeFFxpK2uvd4WUjo9iVdZzfl7RjCO8nn8OklmmfgigZK/JyvcvWSxtV0nk
	8Js8xg8K8vNBXvPmirCfD21GLLnKAmPu4Wyx+2WYesJhMTXe/fvAFGsZcs5GO869RhQuJr+9lAY
	x0NlVUw8sATa1xLt4ONgJhyujRTy/YovtM8st8+FX
X-Received: by 2002:a17:902:c94c:b0:2a2:b620:12d9 with SMTP id d9443c01a7336-2a3e398e82emr28538605ad.5.1767706834217;
        Tue, 06 Jan 2026 05:40:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHPXXNLeunS2BjceJQzS81yF1SGalnzfMf0xuwsb9X9HO5mpbz/Mj589G/FmMugANxNfE+/9w==
X-Received: by 2002:a17:902:c94c:b0:2a2:b620:12d9 with SMTP id d9443c01a7336-2a3e398e82emr28538275ad.5.1767706833732;
        Tue, 06 Jan 2026 05:40:33 -0800 (PST)
Received: from hu-rdwivedi-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc7856sm24112515ad.68.2026.01.06.05.40.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 05:40:33 -0800 (PST)
From: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
To: mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, James.Bottomley@HansenPartnership.com,
        martin.petersen@oracle.com, ram.dwivedi@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH V4 3/4] scsi: ufs: core Enforce minimum pm level for sysfs configuration
Date: Tue,  6 Jan 2026 19:10:07 +0530
Message-Id: <20260106134008.1969090-4-ram.dwivedi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260106134008.1969090-1-ram.dwivedi@oss.qualcomm.com>
References: <20260106134008.1969090-1-ram.dwivedi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDExOSBTYWx0ZWRfX1yH5syGQVLkl
 aGGynqN9yS83vwxcGNC1O2k9Ahl7o0eOGRAWmpHGNgvseEx3YVh7nAUrXxFHoAnMpPRCejS7IBR
 GAhyulEtYVa9dzoRV5bi8PLU4RCCRmLeJX9mU3nyBByudNuREbAQFQ27eGOBz9y2zaaZo8rjnsy
 BjucOoxEFNdGrvoctEt9oL+F5lHy89ZWACNcVWRapifLPiZn75ZcR9Qs3ZQBFIvEbOcmThfO7yv
 uyTRnS0kQpTI4m7H+/5llq5rsJ929+KP8Fv9fCDV1OquLJaVRrkkxJRMwTVp8BET4jBpEmNKr+M
 6lwnSfGnPayOm1aam58xN5zA9sQ1EvO5v2gbbCWjRuuBxkmpUvXeHQ54pB9UNYIjxRbeiPfk8aV
 mBz/QS6TUn0ESjY/TZ8y/v08nFaqlAKFhGdTc6YBvA2ckC/y24CLQ2VfGfoM2LA+uGvUlJM55xp
 9UwYtZvmZYApGRUVaVw==
X-Authority-Analysis: v=2.4 cv=YqIChoYX c=1 sm=1 tr=0 ts=695d10d3 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=_fLkURk_aflrY1IPiHIA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: xiBl7Sm6g2EdIXhA2DbtPIIi8aXeytSV
X-Proofpoint-ORIG-GUID: xiBl7Sm6g2EdIXhA2DbtPIIi8aXeytSV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 phishscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060119

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



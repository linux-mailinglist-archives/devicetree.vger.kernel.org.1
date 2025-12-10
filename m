Return-Path: <devicetree+bounces-245628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A2FCB35FB
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 16:52:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DCEF03029F6B
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 15:51:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 557CE26738D;
	Wed, 10 Dec 2025 15:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e9TAY6cG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bCHIZ1Ud"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2E5B2773C3
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765381869; cv=none; b=o3U7qixPLobtWA41f0sh6XAKsKKL85GNURFZaKlV93Gl25YQXu02l2I37NzuCedD42p8e82Q1f5n+jbGcyGatGe3pKYsm5Er2asZB/8saYU/n8StNiUFfYaVqpgFoT04zqPyqP1Iprn4dsco+EPVOravZG+5IRRTZc7iG4v5fug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765381869; c=relaxed/simple;
	bh=Jd3Nhj9ItX2p1r8lI3wTnRgId5QrM+MGNq87pPsF/fE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eIYXFreNtW2VJkMvYnzsUsV57nLwicd7GZh/gyMIxe1wPhbCCMSo+kuQDv0NExDv4L7x4xBo/USDV/NL8cR6Rp5ABoboA4ZZg+LPKK1P6NHElXf6bLgp0MN+DIhDEtHoMr/B1Df3yZ+C5i6v5RQcyklALdwPkk23p/8oAeiwr1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e9TAY6cG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bCHIZ1Ud; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA8eFkj2669599
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:51:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=FAIqHMe9ZdA
	PZu6xd0/b5SEeFCI509+pRF1JbNu+emQ=; b=e9TAY6cG44MT6cnNid3/Koe5gty
	PrxjlWw+H0uminFi3DGRaN+yc0zoiaWu2Uv0MT4HqCQJoWETF06lZKpAm2JJZrzK
	Qn+w8X8NdsYn+pjuEbFNMA4BQm7V5R4ubG3gAabTR0XsfvDBj8XVMR4cOaE1u1HL
	imMttSkFtKRWCA84ablex7mXyORC7NEnUvHXpCY+klwXc7YpriwULgrsAuPuUEzC
	c8jnlPMO4bgIvTqvcjh5iLwjIuTus8Yx3h889kiSPSV66OvG2sknAQNxq18/fqwT
	eWMAwah3DBk0QG2ZTTnvtzvqMyZKneao8IjdZF8w9HsqOqed2mfcyjWQgUQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay4ykhcfk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:51:01 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29809acd049so155366085ad.3
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 07:51:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765381860; x=1765986660; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FAIqHMe9ZdAPZu6xd0/b5SEeFCI509+pRF1JbNu+emQ=;
        b=bCHIZ1UdyfzY9Ky5JbjN2WloHx326HfJr6hke6M0Swt3SXv7w8yzMkeBcul5/WwCGx
         VeoIl6A1OvOB18Efj+nDFwYGfvYoaR149z+ykXDo1vvVJLyqmfsmWePGb/ONego7Yqls
         fXk7Y03S0GdyJeVyLyZ+gCPB9yEkKjIMnpbZt8ik1f1BM0B6ZCP1yvlEm1ZI96sp/3sj
         /OBolCp3BsZc3K4kwVH9uc0d7teYEkC+yf85oO6DYI51a7H/PlPhadiHaFzb/NSfxgY/
         /BT3RobteoDw2Jn6RUdiy34ofuN6mMulqoTWpZiAn2+PQuA6lm1XmRplaQze6e21gnUK
         tk2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765381860; x=1765986660;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FAIqHMe9ZdAPZu6xd0/b5SEeFCI509+pRF1JbNu+emQ=;
        b=aDc1vXcfIQrR2IB+0Z/bXsz+bG7zVxNwQUzdYnrkKRGc6jwj2UWcUot5hLIMFg3HRv
         Vjo8Y8LB+ZT5xChF/sleejdiMq9Z4M5kI4yXnVhAmrRBo2QK5sm2k/Pm3vouvgentKKM
         VrwVPJlyE+GHgMNzpPUhqCKl2y0xsVSdtJrsCMZqwSgJVXB2bvMtPK+cB3A9NqVxw4PF
         nizEcVe4Gg2z1/TBK0LATYIqd5f3gLvtJ61cCQpoWkP9fSrH+CMNYRmURpSztkopa24u
         qtmUxHq924TPpx2yruhU1yR/ITWRA95qj957G0hEAZ8PQLMPu+Fl7m9+Qmk6KlC+OhzW
         DOqA==
X-Forwarded-Encrypted: i=1; AJvYcCUqM5YiUvDbc4RxOmAjDd86twGgtTUCh1p1g4wyy9+Y/neLunUDfIkbhLpKdgU2d/sMtCI2oUqQw77r@vger.kernel.org
X-Gm-Message-State: AOJu0YzjLr2vPGYh6bwmoIswYYEBcL3lfTu4I0IWL0KV9NKAgHp1KUXG
	j3jcMzXZ3OdtbYMdQVteT8GfIhTUCffDezwcfjs+kSzI8UUQ+wwnWvY0yPg9pU0LJn9m2hTDixa
	EzyShbOcRhkWoOFRiq9rdnPL7+o70Zngstjpjui8IeEBb91cyZRGOcXqknX4BUkPaTPz3kXvX
X-Gm-Gg: AY/fxX4kzv8snT/hscJdMg4ccmD3IF1ABN7Q35NILiSr8rOb2EN+ze1PJ0PxHM5UBt3
	qL0OVq+Sos4di6NjhCx0I54zDD4qjilLDiWpyhcauKlcizUHjfIx0g2HXUBgqQvFoiR21E1UNj4
	iX1m6pSJsOq8AOKIAcJ+37B+R5VDxywaIUD6x65Ijhrpo/W7759+jIx8w1tdyn9c/F0CDe9+KjI
	qtnPro/QTVIynvDxPFB+dWGV+zcqSTKs5OerQWIFF1Ui5IX/N9Hjp+0W8Nlhd3hZ7aU59xtNg7U
	Zb9CLSkJmk+HNf5LoBjaxp7wvO3su0vgr5FOZW2GZUE60H7j8t+bQZ31Kat+XeRx3rfPzLhea2J
	Lr+WVccTS0Q0KSP2A1gFOHosBITpdg9oSr2/8rxsI
X-Received: by 2002:a17:903:32c3:b0:298:2af7:8d26 with SMTP id d9443c01a7336-29ec27c7f48mr37388625ad.54.1765381860042;
        Wed, 10 Dec 2025 07:51:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGwUd05HH+O7KP1AqyqpShLwCPzv6YMVs2PhGCDiJZv5JcHvZgZE3AoRJwG768xGmCbxAnPQw==
X-Received: by 2002:a17:903:32c3:b0:298:2af7:8d26 with SMTP id d9443c01a7336-29ec27c7f48mr37388165ad.54.1765381859337;
        Wed, 10 Dec 2025 07:50:59 -0800 (PST)
Received: from hu-rdwivedi-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29ed93e470fsm7780175ad.41.2025.12.10.07.50.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 07:50:58 -0800 (PST)
From: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
To: mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, James.Bottomley@HansenPartnership.com,
        martin.petersen@oracle.com, ram.dwivedi@oss.qualcomm.com,
        anjana.hari@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shazad Hussain <shazad.hussain@oss.qualcomm.com>
Subject: [PATCH V2 3/3] ufs: ufs-qcom: Add support for firmware-managed resource abstraction
Date: Wed, 10 Dec 2025 21:20:33 +0530
Message-Id: <20251210155033.229051-4-ram.dwivedi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251210155033.229051-1-ram.dwivedi@oss.qualcomm.com>
References: <20251210155033.229051-1-ram.dwivedi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: GujQ39WGl9DaHdjtpjZsv9LHMtq94iLj
X-Authority-Analysis: v=2.4 cv=Mfthep/f c=1 sm=1 tr=0 ts=693996e5 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=TgZdhWxOq2hPTxl1y-EA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: GujQ39WGl9DaHdjtpjZsv9LHMtq94iLj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDEyOSBTYWx0ZWRfX1P8MDPPPVs/E
 g75f01zrASTwMTihjB/W/bAs85oEdAQYEZYBW1bNhVUw3IaviZkgFM8P6f/fmBk6nczav6N4s+V
 TafgywVwM7YJS3n/Jzsv63j2FLp/pr9Snx21LBs6HnXWJOb3cUXpCgu80Ani9UiKBwXIMNv/nbx
 sSOyJdQirboBuoRdZAyJVLbBtFm3Y+wibcfYIwC96zR02YVGSNGnm1p5eIgJw1RXNX+EuAvrR2f
 WVxuiDenuErzaYXNJkt2NHYlIScmkvbz5waRRN0EuPtDdH9cu1aSiF216JiDiUfECHelYNxN7OQ
 O8H64Ba1Pj0FMRdbo8/6N4ftBI/pTCWYj0TgOApo3ie/x/9/mIa+YZSmMM2Ly4fKbYKvTCdyt0b
 ubI6sjajyHQxsgxVnvJbrQVnQIqjOQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_01,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 adultscore=0 spamscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100129

Add a compatible string for SA8255p platforms where resources such as
PHY, clocks, regulators, and resets are managed by firmware through an
SCMI server. Use the SCMI power protocol to abstract these resources and
invoke power operations via runtime PM APIs (pm_runtime_get/put_sync).

Introduce vendor operations (vops) for SA8255p targets to enable SCMI-
based resource control. In this model, capabilities like clock scaling
and gating are not yet supported; these will be added incrementally.

Co-developed-by: Anjana Hari <anjana.hari@oss.qualcomm.com>
Signed-off-by: Anjana Hari <anjana.hari@oss.qualcomm.com>
Co-developed-by: Shazad Hussain <shazad.hussain@oss.qualcomm.com>
Signed-off-by: Shazad Hussain <shazad.hussain@oss.qualcomm.com>
Signed-off-by: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
---
 drivers/ufs/host/ufs-qcom.c | 161 +++++++++++++++++++++++++++++++++++-
 drivers/ufs/host/ufs-qcom.h |   1 +
 2 files changed, 161 insertions(+), 1 deletion(-)

diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
index 8d119b3223cb..13ccf1fb2ebf 100644
--- a/drivers/ufs/host/ufs-qcom.c
+++ b/drivers/ufs/host/ufs-qcom.c
@@ -14,6 +14,7 @@
 #include <linux/of.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
+#include <linux/pm_domain.h>
 #include <linux/reset-controller.h>
 #include <linux/time.h>
 #include <linux/unaligned.h>
@@ -619,6 +620,27 @@ static int ufs_qcom_hce_enable_notify(struct ufs_hba *hba,
 	return err;
 }
 
+static int ufs_qcom_fw_managed_hce_enable_notify(struct ufs_hba *hba,
+						 enum ufs_notify_change_status status)
+{
+	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
+
+	switch (status) {
+	case PRE_CHANGE:
+		ufs_qcom_select_unipro_mode(host);
+		break;
+	case POST_CHANGE:
+		ufs_qcom_enable_hw_clk_gating(hba);
+		ufs_qcom_ice_enable(host);
+		break;
+	default:
+		dev_err(hba->dev, "Invalid status %d\n", status);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 /**
  * ufs_qcom_cfg_timers - Configure ufs qcom cfg timers
  *
@@ -789,6 +811,38 @@ static int ufs_qcom_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 	return ufs_qcom_ice_resume(host);
 }
 
+static int ufs_qcom_fw_managed_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op,
+				       enum ufs_notify_change_status status)
+{
+	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
+
+	if (status == PRE_CHANGE)
+		return 0;
+
+	if (hba->spm_lvl != UFS_PM_LVL_5) {
+		dev_err(hba->dev, "Unsupported spm level %d\n", hba->spm_lvl);
+		return -EINVAL;
+	}
+
+	pm_runtime_put_sync(hba->dev);
+
+	return ufs_qcom_ice_suspend(host);
+}
+
+static int ufs_qcom_fw_managed_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
+{
+	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
+	int err;
+
+	err = pm_runtime_resume_and_get(hba->dev);
+	if (err) {
+		dev_err(hba->dev, "PM runtime resume failed: %d\n", err);
+		return err;
+	}
+
+	return ufs_qcom_ice_resume(host);
+}
+
 static void ufs_qcom_dev_ref_clk_ctrl(struct ufs_qcom_host *host, bool enable)
 {
 	if (host->dev_ref_clk_ctrl_mmio &&
@@ -1421,6 +1475,52 @@ static void ufs_qcom_exit(struct ufs_hba *hba)
 	phy_exit(host->generic_phy);
 }
 
+static int ufs_qcom_fw_managed_init(struct ufs_hba *hba)
+{
+	struct device *dev = hba->dev;
+	struct ufs_qcom_host *host;
+	int err;
+
+	host = devm_kzalloc(dev, sizeof(*host), GFP_KERNEL);
+	if (!host)
+		return -ENOMEM;
+
+	host->hba = hba;
+	ufshcd_set_variant(hba, host);
+
+	ufs_qcom_get_controller_revision(hba, &host->hw_ver.major,
+					 &host->hw_ver.minor, &host->hw_ver.step);
+
+	err = ufs_qcom_ice_init(host);
+	if (err)
+		goto out_variant_clear;
+
+	ufs_qcom_get_default_testbus_cfg(host);
+	err = ufs_qcom_testbus_config(host);
+	if (err)
+		/* Failure is non-fatal */
+		dev_warn(dev, "Failed to configure the testbus %d\n", err);
+
+	hba->caps |= UFSHCD_CAP_WB_EN;
+
+	ufs_qcom_advertise_quirks(hba);
+	host->hba->quirks &= ~UFSHCD_QUIRK_REINIT_AFTER_MAX_GEAR_SWITCH;
+
+	ufs_qcom_set_host_params(hba);
+	ufs_qcom_parse_gear_limits(hba);
+
+	return 0;
+
+out_variant_clear:
+	ufshcd_set_variant(hba, NULL);
+	return err;
+}
+
+static void ufs_qcom_fw_managed_exit(struct ufs_hba *hba)
+{
+	pm_runtime_put_sync(hba->dev);
+}
+
 /**
  * ufs_qcom_set_clk_40ns_cycles - Configure 40ns clk cycles
  *
@@ -1952,6 +2052,39 @@ static int ufs_qcom_device_reset(struct ufs_hba *hba)
 	return 0;
 }
 
+/**
+ * ufs_qcom_fw_managed_device_reset - Reset UFS device under FW-managed design
+ * @hba: pointer to UFS host bus adapter
+ *
+ * In the firmware-managed reset model, cold boot power-on is handled
+ * automatically by the PM domain framework during SCMI protocol init,
+ * before ufshcd_device_reset() is reached. For subsequent resets
+ * (such as suspend/resume or recovery), the UFS driver must explicitly
+ * invoke PM runtime operations to reset the subsystem.
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+static int ufs_qcom_fw_managed_device_reset(struct ufs_hba *hba)
+{
+	static bool is_boot = true;
+	int err;
+
+	/* Skip reset on cold boot; perform it on subsequent calls */
+	if (is_boot) {
+		is_boot = false;
+		return 0;
+	}
+
+	pm_runtime_put_sync(hba->dev);
+	err = pm_runtime_resume_and_get(hba->dev);
+	if (err < 0) {
+		dev_err(hba->dev, "PM runtime resume failed: %d\n", err);
+		return err;
+	}
+
+	return 0;
+}
+
 static void ufs_qcom_config_scaling_param(struct ufs_hba *hba,
 					struct devfreq_dev_profile *p,
 					struct devfreq_simple_ondemand_data *d)
@@ -2231,6 +2364,20 @@ static const struct ufs_hba_variant_ops ufs_hba_qcom_vops = {
 	.freq_to_gear_speed	= ufs_qcom_freq_to_gear_speed,
 };
 
+static const struct ufs_hba_variant_ops ufs_hba_qcom_sa8255p_vops = {
+	.name                   = "qcom-sa8255p",
+	.init                   = ufs_qcom_fw_managed_init,
+	.exit                   = ufs_qcom_fw_managed_exit,
+	.hce_enable_notify      = ufs_qcom_fw_managed_hce_enable_notify,
+	.pwr_change_notify      = ufs_qcom_pwr_change_notify,
+	.apply_dev_quirks       = ufs_qcom_apply_dev_quirks,
+	.fixup_dev_quirks       = ufs_qcom_fixup_dev_quirks,
+	.suspend                = ufs_qcom_fw_managed_suspend,
+	.resume                 = ufs_qcom_fw_managed_resume,
+	.dbg_register_dump      = ufs_qcom_dump_dbg_regs,
+	.device_reset           = ufs_qcom_fw_managed_device_reset,
+};
+
 /**
  * ufs_qcom_probe - probe routine of the driver
  * @pdev: pointer to Platform device handle
@@ -2241,9 +2388,16 @@ static int ufs_qcom_probe(struct platform_device *pdev)
 {
 	int err;
 	struct device *dev = &pdev->dev;
+	const struct ufs_hba_variant_ops *vops;
+	const struct ufs_qcom_drvdata *drvdata = device_get_match_data(dev);
+
+	if (drvdata && drvdata->vops)
+		vops = drvdata->vops;
+	else
+		vops = &ufs_hba_qcom_vops;
 
 	/* Perform generic probe */
-	err = ufshcd_pltfrm_init(pdev, &ufs_hba_qcom_vops);
+	err = ufshcd_pltfrm_init(pdev, vops);
 	if (err)
 		return dev_err_probe(dev, err, "ufshcd_pltfrm_init() failed\n");
 
@@ -2271,10 +2425,15 @@ static const struct ufs_qcom_drvdata ufs_qcom_sm8550_drvdata = {
 	.no_phy_retention = true,
 };
 
+static const struct ufs_qcom_drvdata ufs_qcom_sa8255p_drvdata = {
+	.vops = &ufs_hba_qcom_sa8255p_vops
+};
+
 static const struct of_device_id ufs_qcom_of_match[] __maybe_unused = {
 	{ .compatible = "qcom,ufshc" },
 	{ .compatible = "qcom,sm8550-ufshc", .data = &ufs_qcom_sm8550_drvdata },
 	{ .compatible = "qcom,sm8650-ufshc", .data = &ufs_qcom_sm8550_drvdata },
+	{ .compatible = "qcom,sa8255p-ufshc", .data = &ufs_qcom_sa8255p_drvdata },
 	{},
 };
 MODULE_DEVICE_TABLE(of, ufs_qcom_of_match);
diff --git a/drivers/ufs/host/ufs-qcom.h b/drivers/ufs/host/ufs-qcom.h
index 380d02333d38..1111ab34da01 100644
--- a/drivers/ufs/host/ufs-qcom.h
+++ b/drivers/ufs/host/ufs-qcom.h
@@ -313,6 +313,7 @@ struct ufs_qcom_host {
 struct ufs_qcom_drvdata {
 	enum ufshcd_quirks quirks;
 	bool no_phy_retention;
+	const struct ufs_hba_variant_ops *vops;
 };
 
 static inline u32
-- 
2.34.1



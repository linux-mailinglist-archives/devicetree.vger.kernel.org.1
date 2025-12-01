Return-Path: <devicetree+bounces-243233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 22883C95CBD
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 07:26:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DF3024E109B
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 06:26:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19A2227AC41;
	Mon,  1 Dec 2025 06:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZrPKBz1Z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZK9QTbOJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447C6279DC9
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 06:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764570383; cv=none; b=OVrMPd6NBwROxfHuHYnVQZ5NSuxHLagnHJCqKuUlpBlT0h9gftKCs32v8dgA5lPinLpoHCvyW0RUt4nG7Q3yZbxBVMICY7a/J+T5hnNnlrFUH9SfNPy4vUnbMgkd7RFd7HkbdsdsOUJvMp+WFWz7+xe1PcJgMkeOtS3uvEkAPHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764570383; c=relaxed/simple;
	bh=xwACydKQvgDKuB0v3VRVNVKaf/7fL95Co83H8L4/8V8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=H1eVnN18iG5YFCq7RXBHe5GpEPeEynFUBrpWcJXEw2ZJGn7eK0hrlIQm0uduApV+RqyPDjbwyfUAlDeBmGg4JLuHWanqjZrZJHAnSikIhBX3IQ1LNfE/+7dPNrBiz9pPMe7FYTrtlcuT08aRbxuenv5OBJUy0o9I55QG5b4eXGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZrPKBz1Z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZK9QTbOJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AUMj1r02987949
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 06:26:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Tbyvd4eRGssa6Ha0ecVbsY
	tSBYVsX1t2xVyxXt94ET0=; b=ZrPKBz1ZqFfUvfy8wsD9OepT0ejCr49l8CJIDB
	RI037dW52yyhZoF9ddXxh2wvgdU32v/ubnmfN65lPV21f9MhatZFpZRLeSI6gGnj
	K3+wY1z4Mje8b7ejbBc5lciO4qJAKBMc7PP9if3JBiN5FR9956iYr+V4R8xausS7
	Bynbq5o+OKiStwLplwydWGMUEGAnARqr7iFDlgSV7dlawMuP3vxQnSOmgRUwV5+r
	cUmxqsdeF1fK1jiKT01PInpCzJwr7JexXsdPg195/wjVF6E4FW6nH3y2LuMpyBtt
	gUX4ebdQg5oUmxMoV+U52HM07mFibAAUx7MC0EsD85pCl1gg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aqrwsun64-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 06:26:20 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b9b9e8b0812so5479760a12.0
        for <devicetree@vger.kernel.org>; Sun, 30 Nov 2025 22:26:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764570379; x=1765175179; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Tbyvd4eRGssa6Ha0ecVbsYtSBYVsX1t2xVyxXt94ET0=;
        b=ZK9QTbOJtrNzjh4EqDX+jTrFO1LjwsfcRek5/Mzc+ZSLhXQIHnW/3NAxqKnc9oIm7D
         twwQmzQkqXGuXZ2rti1qXMzsJu9VWn+OdsWfujlM5p6O9X/x4sssdGjb0DZOLPvvXyeX
         vurm15OOdUGLTVLmhZ1/2kXNVC5nHKpIjtQ73nLusBTTUHoTcbt0+DEhr/yQ+lzpAyyN
         N5+7l4qQO1KSa4p+JJtaHHHzrTTPb+73X6Pu+K6ro55248CAf+80DngjxjZTzg6NznOx
         0SwKf4JxrWv1DVqnMU5nQvnQTUNaUEj9K/NgFGCudOkkCDl1qCoTKLTTK/3JUfF8Q1Ih
         +j3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764570379; x=1765175179;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tbyvd4eRGssa6Ha0ecVbsYtSBYVsX1t2xVyxXt94ET0=;
        b=RxBz3Y9c57Fqup0w6B9uEsE0I44rxoU/9hu/2C1e+y2WYrl4oQdEh6/CXVmFIHDn0d
         EeVAyEmyz5e9zj/T5s4jLVjMHeHUuie5xxQmjlVOZgEz2e4PORK+M6sACCJ2scCcXEQh
         q2rhRaTmOvEmFk4Zbe5U0H/Wxdkyh+/BXLDsA98N+8z3DDZFd3gu4vOPUECmZGQdWejE
         cblO/KveQdb61+MaZGNeyscxXBDDvghcrubVWlYaiz79ofE4oWlYDWSM4/G9Q6gl85cK
         0KcYy3OeLB+VEjTFzS9u0RXTlpqmr2l6aN7pUEZk0wuaDfajKrxO4JEJn3YpmZiD0uYY
         qszw==
X-Forwarded-Encrypted: i=1; AJvYcCXuwXN81KjGFttuEs49dflkpwuNNkkHxcCoskp/lQnNeg5zHlBfcSG4NTg49oVHerYxcwEEBeo+G8MN@vger.kernel.org
X-Gm-Message-State: AOJu0Yxdok/f9RFi+QbAvPzYYBI6bmZhMszLloCwlMx3QxdeSFGJ5HAJ
	75jonCKRDy85NCsQST0QUY0vNL6N3UAwlPcHklL8o04MYf0cglMnLT7Nh53pDnKL0g357Y9r1f/
	hH9VY3RjPIirq4rO5t/8TUDx5fhZLsQxBuTEkHimXnUPY+iGxNH4dDzdLNRhviDsf
X-Gm-Gg: ASbGncuK+zm5TWYjQxsZudHppfEfTHyUIFY40bM9wWVP+mMVIH+44EFPbQbkHVs34Ri
	sAly8K4RkgfNleriOWJovI0Mxuy0cp8rRUe7BnI/HkG7MIjv/Mbd1/U4rjMXO9q2PN+QiO1U0wE
	PCqSQK/lbahnCAHl2oSogFx6schteIhmw1/1hDFh6tqTp6gUR69NuESwo9kYrvTHzRwd3wZuDal
	8e4fJS6AO13bS9f08/zDuoTlfXg8SVI++arftXj6YM0OvryZ6rV3dXvT6euvPAdf+VrX8aB9X4z
	BcAei6gKv8WBwsauxcehHZNEM6+fobN2nEDJkmaBlGtly/hZrwUJ6HEzuX6Y41GksXCMpJZsHRw
	+i9uhrbb2a3XadWtjV/28nP9d3WkDsyWs54k04WKBOgsY8ZtobdRB+1acSSGWT55s
X-Received: by 2002:a05:7022:4581:b0:11b:8185:abff with SMTP id a92af1059eb24-11c9d84a4e4mr21503828c88.30.1764570378985;
        Sun, 30 Nov 2025 22:26:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEGiUkQhPHRaozyfqb9PynFx9lYVvOC8kg1YIBrk3c4ptAh69WLgR70tMbUh+zHTWI84tQ9HQ==
X-Received: by 2002:a05:7022:4581:b0:11b:8185:abff with SMTP id a92af1059eb24-11c9d84a4e4mr21503815c88.30.1764570378459;
        Sun, 30 Nov 2025 22:26:18 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11dcb057cb0sm67109081c88.9.2025.11.30.22.26.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Nov 2025 22:26:18 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sun, 30 Nov 2025 22:25:36 -0800
Subject: [PATCH RESEND] media: camss: csiphy: Make CSIPHY status macro
 cross-platform
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251130-make-csiphy-status-macro-cross-platform-v1-1-334664c6cf70@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDA1MCBTYWx0ZWRfX9s+wPuDyGqfs
 XWzq8yxdtUnt/pgdfIfS0Nk9jf+8+77EkoPf7lRCmkgJVXmQUEX4ujC5PUryfH1sGL+gZkIS4qD
 KSxH9+0+6qY4J2OKPlklEQSJ8MEymA9fXoUbR4hMDfOeQeNEteZ00LsQpS6kHnPrtM8cGm+AGiY
 je2J6jFhEK1WeQht1EQISZo7x71k5LoAmdxg+mf/BLZaAUelqZcFEslQdNSWCLfRQ4AUFKU9G/s
 BJwUSXhGBe6H30dnvUWmRMgp4HyteYiMhL0AhCKP6nAAikaYXrIGkOuqdbyvTZQfUexiGGJZtW0
 6b6ifJ1M9vGS+VRQp48bU6YUEKIHBB+hAz3MTol6FFtM1Qoz5WTobrY3YPmYZKhiyhs1S4bHn0/
 X5TvSoujMj3lKnXE5ai8ZCV+VCc3hw==
X-Proofpoint-ORIG-GUID: f_HkrqwjE4fSMeuRVNQo0Inv3cpU5IkY
X-Authority-Analysis: v=2.4 cv=WONyn3sR c=1 sm=1 tr=0 ts=692d350c cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=edmtyYkapI0WV9tsjtgA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: f_HkrqwjE4fSMeuRVNQo0Inv3cpU5IkY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512010050

The current value of '0xb0' that represents the offset to the status
registers within the common registers of the CSIPHY has been changed on
the newer SOCs and it requires generalizing the macro using a new
variable 'common_status_offset'. This variable is initialized in the
csiphy_init() function.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
This change introduces common_status_offset to replace the hardcoded
offset in CSIPHY_3PH_CMN_CSI_COMMON_STATUSn.
---
 .../media/platform/qcom/camss/camss-csiphy-3ph-1-0.c  | 19 +++++++++++++------
 drivers/media/platform/qcom/camss/camss-csiphy.h      |  1 +
 2 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
index a229ba04b158..9b6a0535cdf8 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
+++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
@@ -46,7 +46,8 @@
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL5_CLK_ENABLE	BIT(7)
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_COMMON_PWRDN_B	BIT(0)
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_SHOW_REV_ID	BIT(1)
-#define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(offset, n)	((offset) + 0xb0 + 0x4 * (n))
+#define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(offset, common_status_offset, n) \
+	((offset) + (common_status_offset) + 0x4 * (n))
 
 #define CSIPHY_DEFAULT_PARAMS		0
 #define CSIPHY_LANE_ENABLE		1
@@ -714,13 +715,17 @@ static void csiphy_hw_version_read(struct csiphy_device *csiphy,
 	       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->offset, 6));
 
 	hw_version = readl_relaxed(csiphy->base +
-				   CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, 12));
+		CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset,
+						  regs->common_status_offset, 12));
 	hw_version |= readl_relaxed(csiphy->base +
-				   CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, 13)) << 8;
+		CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset,
+						  regs->common_status_offset, 13)) << 8;
 	hw_version |= readl_relaxed(csiphy->base +
-				   CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, 14)) << 16;
+		CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset,
+						  regs->common_status_offset, 14)) << 16;
 	hw_version |= readl_relaxed(csiphy->base +
-				   CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, 15)) << 24;
+		CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset,
+						  regs->common_status_offset, 15)) << 24;
 
 	dev_dbg(dev, "CSIPHY 3PH HW Version = 0x%08x\n", hw_version);
 }
@@ -749,7 +754,8 @@ static irqreturn_t csiphy_isr(int irq, void *dev)
 	for (i = 0; i < 11; i++) {
 		int c = i + 22;
 		u8 val = readl_relaxed(csiphy->base +
-				       CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, i));
+			CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset,
+							  regs->common_status_offset, i));
 
 		writel_relaxed(val, csiphy->base +
 			       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->offset, c));
@@ -989,6 +995,7 @@ static int csiphy_init(struct csiphy_device *csiphy)
 
 	csiphy->regs = regs;
 	regs->offset = 0x800;
+	regs->common_status_offset = 0xb0;
 
 	switch (csiphy->camss->res->version) {
 	case CAMSS_845:
diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.h b/drivers/media/platform/qcom/camss/camss-csiphy.h
index 895f80003c44..2d5054819df7 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy.h
+++ b/drivers/media/platform/qcom/camss/camss-csiphy.h
@@ -90,6 +90,7 @@ struct csiphy_device_regs {
 	const struct csiphy_lane_regs *lane_regs;
 	int lane_array_size;
 	u32 offset;
+	u32 common_status_offset;
 };
 
 struct csiphy_device {

---
base-commit: 076fb8624c282c10aa8add9a4ae2d9354d2594cb
change-id: 20251021-make-csiphy-status-macro-cross-platform-5390dc128aee

Best regards,
-- 
Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>



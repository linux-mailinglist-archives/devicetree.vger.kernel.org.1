Return-Path: <devicetree+bounces-254420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E96D180C4
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:32:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2B08130245A0
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E64EF38BF82;
	Tue, 13 Jan 2026 10:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CTiCQOIa";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ff20RlVg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCF938BDB7
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768300118; cv=none; b=HFX3ZoRoqvCIqQJ/JlvUsDIVXZne+wdt5vwLMjAsAXwXAZ6Yw1e8W7nQUXKUk0xwPRWXCSTcWXMD8cdJCIACXZ6EH0aSfDbMU7MB/POZ7N7OSb+owqk+owqzod8vCmp18rUe/n+uG+kv0Eq+Tffi3xUywufA/1v7uYaQL5cd6fQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768300118; c=relaxed/simple;
	bh=LIsn9wAsUR9DXAPysQrnc2VIUa2E1adY86k+iToDgWY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UYru0cDxtlZHHtVMjSZrnKy6VQxFcL8n3Hdgy8KJmerRSdGCYC5ca/4HADOr0lOk9TsUasrwaGNzWEBqbO2zEp9ughfrWqzUSoO3vQcjd+M/FWNtHjTuJE9NrBSmMsfalSCONCl317+227aR+ubLsYWz5TOXhTNmw0AsDRulEsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CTiCQOIa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ff20RlVg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D5nMkf3734990
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:28:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nOhwxkO7Vf7CPnCeNuoW1TJzRu1a5VwgL0q/UpJoSrk=; b=CTiCQOIa2VAwnyTS
	i7gkqhCjfL0PoZgByKVQj9jucyxzVLRuxfxNLcHQmUb1/kI+kYSGgME4oKA+oXfd
	CIBLiLIUE1RAc0wF4LvRPt7qJfxMqtf+UeKXVsfHZfHkKd61RpENeQPs/ncYiPYM
	ks34/MAWu0NvXO+ucYTjPHL/mhR5RPZ99mXSeYv9agHnNLIzjFzV2YmShW8HZiu4
	g18ZjzJUBN6XJaLmbL/ie7JZwGWc+79dlWtmYTlWENayGR0Pa5Gt9nnVXF8ijGtq
	XL474Ju6amkMxix/Dbqm/Jf8eY2U51/3IuttoZqF2qwgX7vgCQfCO+aknIFtOBwA
	bjS1qw==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bng878ujx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:28:34 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-123308e5e6aso264219c88.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:28:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768300114; x=1768904914; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nOhwxkO7Vf7CPnCeNuoW1TJzRu1a5VwgL0q/UpJoSrk=;
        b=Ff20RlVg7WXjyWdMq8El2sZX/BKXGm2Tr4NYUhrI9GWFziVu73u7Q54H4/VSlLZHY0
         XOj/Q5/NfDNFRSoHXK88F/uxyXBcCfIxSc2pQCaDkcmNb2cQ4h0FlHQdG8D2+Ac6ArP/
         E+Saz7fJokQbiV5cAVndOjGZHLdMtyZNXNqdrsE4vrKYwOMIMeptdwrXs0viUeAtLxqb
         0ZfIASfyz01/ttdgMO6g0rccCExBwVvfT55DHx2SVO7RY+dcPiqshznV+uR/X73FeL1O
         ZxvVV6NkYnfxNMD9OgjHagFsHcoWjgEhrQWv6/wdA6bhj2vqsmvdVIj/RETaNGQCKLdZ
         ASxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768300114; x=1768904914;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nOhwxkO7Vf7CPnCeNuoW1TJzRu1a5VwgL0q/UpJoSrk=;
        b=H9p79UyZbiiVyF9cu/vK4ryn7yn5R4qcXsYatXcEyzjYuit7pQfA1SiqOD0pxW4gxb
         jC+iyt675aOEsOQpCwNy3rDPXksVvEHAoxM/7juxfVm7qrM/OWiM9q3oQj0cqhEpRpi2
         4lLrNis0AhN5KB2i5rHnGWoUzO/VcuMEmY8iGwSSe/+D8bjmxcX26YM+mVLtqKnkBxlG
         alwUC1ELHRRXgm8z6V4IGIAGepHvGLwUPm/a6LC2pzVKFHmgWQxszF+nptgREpQDqOxn
         c0j34GyudI/irBYsE3OdH1NHx3dXIjU9hv1ylDHbOhdTiCkuFqpY+KFtpHLFktdGdUWl
         TLRw==
X-Forwarded-Encrypted: i=1; AJvYcCXldCrHf2bhg/ZeCJy7eUko6vJouGuw3IBdL2u/prBV7vclVGni06VkX5IC/FhDFE/7Uf9Wb2uOkOBx@vger.kernel.org
X-Gm-Message-State: AOJu0YwF71ird81tYuGJfu1vMR6Vj1ZXqsmAoG8BdyFqadm9XchFRxda
	tqqdy8fhtFtbq1xgxtUEbUo2V9xyQbzA+KmtrOCH+B7cTt4IZqtLyLh6HOvGtM/JbE3rkgt3VU1
	i1X7YikZhcJmVfSYqJLxCVD/wykh5O1/YL+9OysGVRjzleIVSk4OCLtHnol7QMrEf
X-Gm-Gg: AY/fxX5hCN8HvtqPVIYfYo8QRjv6qFmJOAT439AVY8qOTDy2t+FRurpimXqmSnreiwY
	TRJ4goR3pyuFNNe5uJl5855MQeNKwmBLQBqZtmJCMRrN6H/uhTZ8ABJnjTFv/XtiQh9F7+BkpKR
	9ngFFlFusa0VwszFgBbChZVRZkuYjLAEPlsojRnz6JPZ1ZTjaVrBH8vpUKZk4A8Cyohdgb5wM3E
	wUj/di1wNpNYH+C1ERzKusEmLVnVvtwO+eRJSwn7CRtZF7KrWnBViaxiDgLAeE8lExtbWyT6G1s
	0I+gwS/sTrPUcZ8PAwx497cglgWTkn+VT3oihAfLX1Q28ofyrnniDNshPloWIvLXIp/2o/i9o+M
	JZaDNgS03jZrL4eFEMz5lyHtIi6ajI5t2Yvxsz59lEPOWRMoiqBYaJM5fUDjgCRir
X-Received: by 2002:a05:7022:786:b0:119:e56b:989b with SMTP id a92af1059eb24-121f8af8169mr20021481c88.2.1768300113863;
        Tue, 13 Jan 2026 02:28:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHEShs0zhCLm/kgqMsw9xCUfX3GmYXqVOEA5jmVr85gGlImSdXSl0GindBcyX4iMCxB6olINw==
X-Received: by 2002:a05:7022:786:b0:119:e56b:989b with SMTP id a92af1059eb24-121f8af8169mr20021446c88.2.1768300113321;
        Tue, 13 Jan 2026 02:28:33 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121f23b798asm21162429c88.0.2026.01.13.02.28.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 02:28:32 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 02:28:29 -0800
Subject: [PATCH v2 3/5] media: qcom: camss: csiphy: Add support for v2.3.0
 two-phase CSIPHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260113-sm8750-camss-v2-3-e5487b98eada@oss.qualcomm.com>
References: <20260113-sm8750-camss-v2-0-e5487b98eada@oss.qualcomm.com>
In-Reply-To: <20260113-sm8750-camss-v2-0-e5487b98eada@oss.qualcomm.com>
To: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA4OCBTYWx0ZWRfX06Zss9Ett4j7
 SKSobe1WOuk4hWrKmX/EBRpuWAjxBCzb11NCE+9KbEXaMzOwWEPLwDFu/+v62mdOEN1QBjAdG8e
 PIQ8oySrcyIMn/zH4w7xpxZ5y3Eiesslh9MAYOSGQavjRZyRZ8mpIpm75m+RnWGU4mPquqEM5Tc
 vjDJkH2tpZDBJKwmkFBrM8KAua80bxrmMt7ZnNqdXN0OACb0tfZLmU41D+o0Eu44ZFPiVK13c4y
 MdPamfruLnofJHwhpswalYNuxDY2iCwdE9Ch4uYLoWikv2B76nAnmPPN/BY8YfO6uEKNZ0YXkYN
 xo/9jhPV9qGL1kuWeYzJR6EqOsx0xNy5cxaZ3TayT18c6MM5NrdT+ibU3T3jXS+ueN6/VPD7gi5
 zCXZcngoaxwJA044NpQDd4swIiBKmIkY+q99DBnb3SauJ+5mM15kb4CleETEg8T3uzvQbaHgj5s
 2K2QGTzmPuPv2Gy/EVQ==
X-Proofpoint-ORIG-GUID: ZFx9K8TlnoBer1NCfb27qFO2WXd9k0AZ
X-Authority-Analysis: v=2.4 cv=IOEPywvG c=1 sm=1 tr=0 ts=69661e52 cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=UiSUrLz6K6kVaq6zp58A:9
 a=QEXdDO2ut3YA:10 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-GUID: ZFx9K8TlnoBer1NCfb27qFO2WXd9k0AZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 clxscore=1015 impostorscore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130088

Add more detailed resource information for CSIPHY devices in the camss
driver along with the support for v2.3.0 in the 2 phase CSIPHY driver
that is responsible for the PHY lane register configuration, module
reset and interrupt handling.

Additionally, generalize the struct name for the lane configuration that
had been added for Kaanapali and use it for SM8750 as well as they share
the settings.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 .../platform/qcom/camss/camss-csiphy-3ph-1-0.c     |   5 +-
 drivers/media/platform/qcom/camss/camss.c          | 125 +++++++++++++++++++++
 2 files changed, 129 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
index bea8c927a2e3..1c95102a72da 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
+++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
@@ -684,7 +684,7 @@ csiphy_lane_regs lane_regs_sm8650[] = {
 	{0x0c10, 0x52, 0x00, CSIPHY_DEFAULT_PARAMS},
 };
 
-/* 3nm 2PH v 2.4.0 2p5Gbps 4 lane DPHY mode */
+/* 3nm 2PH v 2.3.0/2.4.0 2p5Gbps 4 lane DPHY mode */
 static const struct
 csiphy_lane_regs lane_regs_2_4_0[] = {
 	/* LN 0 */
@@ -1134,6 +1134,7 @@ static bool csiphy_is_gen2(u32 version)
 	case CAMSS_845:
 	case CAMSS_8550:
 	case CAMSS_8650:
+	case CAMSS_8750:
 	case CAMSS_8775P:
 	case CAMSS_KAANAPALI:
 	case CAMSS_X1E80100:
@@ -1250,7 +1251,9 @@ static int csiphy_init(struct csiphy_device *csiphy)
 		regs->lane_regs = &lane_regs_sa8775p[0];
 		regs->lane_array_size = ARRAY_SIZE(lane_regs_sa8775p);
 		break;
+	case CAMSS_8750:
 	case CAMSS_KAANAPALI:
+		/* CSPHY v2.4.0 is backward compatible with v2.3.0 settings */
 		regs->lane_regs = &lane_regs_2_4_0[0];
 		regs->lane_array_size = ARRAY_SIZE(lane_regs_2_4_0);
 		regs->offset = 0x1000;
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 56f20daeca3e..1f9a91178002 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -4066,6 +4066,129 @@ static const struct resources_icc icc_res_sa8775p[] = {
 	},
 };
 
+static const struct camss_subdev_resources csiphy_res_8750[] = {
+	/* CSIPHY0 */
+	{
+		.regulators = {
+			{ .supply = "vdd-csiphy0-0p9", .init_load_uA = 148000 },
+			{ .supply = "vdd-csiphy0-1p2", .init_load_uA = 14660 }
+		},
+		.clock = { "csiphy0", "csiphy0_timer",
+			   "cpas_ahb", "cpas_fast_ahb" },
+		.clock_rate = { { 400000000, 480000000 },
+				{ 400000000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "csiphy0" },
+		.interrupt = { "csiphy0" },
+		.csiphy = {
+			.id = 0,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		}
+	},
+	/* CSIPHY1 */
+	{
+		.regulators = {
+			{ .supply = "vdd-csiphy1-0p9", .init_load_uA = 148000 },
+			{ .supply = "vdd-csiphy1-1p2", .init_load_uA = 14660 }
+		},
+		.clock = { "csiphy1", "csiphy1_timer",
+			   "cpas_ahb", "cpas_fast_ahb" },
+		.clock_rate = { { 400000000, 480000000 },
+				{ 400000000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "csiphy1" },
+		.interrupt = { "csiphy1" },
+		.csiphy = {
+			.id = 1,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		}
+	},
+	/* CSIPHY2 */
+	{
+		.regulators = {
+			{ .supply = "vdd-csiphy2-0p9", .init_load_uA = 148000 },
+			{ .supply = "vdd-csiphy2-1p2", .init_load_uA = 14660 }
+		},
+		.clock = { "csiphy2", "csiphy2_timer",
+			   "cpas_ahb", "cpas_fast_ahb" },
+		.clock_rate = { { 400000000, 480000000 },
+				{ 400000000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "csiphy2" },
+		.interrupt = { "csiphy2" },
+		.csiphy = {
+			.id = 2,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		}
+	},
+	/* CSIPHY3 */
+	{
+		.regulators = {
+			{ .supply = "vdd-csiphy3-0p9", .init_load_uA = 148000 },
+			{ .supply = "vdd-csiphy3-1p2", .init_load_uA = 14660 }
+		},
+		.clock = { "csiphy3", "csiphy3_timer",
+			   "cpas_ahb", "cpas_fast_ahb" },
+		.clock_rate = { { 400000000, 480000000 },
+				{ 400000000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "csiphy3" },
+		.interrupt = { "csiphy3" },
+		.csiphy = {
+			.id = 3,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		}
+	},
+	/* CSIPHY4 */
+	{
+		.regulators = {
+			{ .supply = "vdd-csiphy4-0p9", .init_load_uA = 148000 },
+			{ .supply = "vdd-csiphy4-1p2", .init_load_uA = 14660 }
+		},
+		.clock = { "csiphy4", "csiphy4_timer",
+			   "cpas_ahb", "cpas_fast_ahb" },
+		.clock_rate = { { 400000000, 480000000 },
+				{ 400000000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "csiphy4" },
+		.interrupt = { "csiphy4" },
+		.csiphy = {
+			.id = 4,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		}
+	},
+	/* CSIPHY5 */
+	{
+		.regulators = {
+			{ .supply = "vdd-csiphy5-0p9", .init_load_uA = 148000 },
+			{ .supply = "vdd-csiphy5-1p2", .init_load_uA = 14660 }
+		},
+		.clock = { "csiphy5", "csiphy5_timer",
+			   "cpas_ahb", "cpas_fast_ahb" },
+		.clock_rate = { { 400000000, 480000000 },
+				{ 400000000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "csiphy5" },
+		.interrupt = { "csiphy5" },
+		.csiphy = {
+			.id = 5,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		}
+	},
+};
+
 static const struct resources_icc icc_res_sm8750[] = {
 	{
 		.name = "cam_ahb",
@@ -5504,7 +5627,9 @@ static const struct camss_resources sm8650_resources = {
 static const struct camss_resources sm8750_resources = {
 	.version = CAMSS_8750,
 	.pd_name = "top",
+	.csiphy_res = csiphy_res_8750,
 	.icc_res = icc_res_sm8750,
+	.csiphy_num = ARRAY_SIZE(csiphy_res_8750),
 	.icc_path_num = ARRAY_SIZE(icc_res_sm8750),
 };
 

-- 
2.34.1



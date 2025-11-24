Return-Path: <devicetree+bounces-241624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 13311C8024C
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:13:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D2C994E5369
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:13:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE0972FD69F;
	Mon, 24 Nov 2025 11:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GHstaX41";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IR+OxEW4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1632FD67B
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763982776; cv=none; b=XMrxfk8PxEYE0W/VQFbEYb8y0mvrT9ifqB32l6LIcPFapQl8yj7oBya/Pl/e7bjZD7dONX1ZmZpuazhws9NEczg82ldXHSqSQA1r17QmS9gb2WzP7m9m8fYs3AqRGVyCZray2ypT3+GdHF9eHerr41YlayPTqiP5zHfrXXyCp80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763982776; c=relaxed/simple;
	bh=m8QF8XtXdOChb3k0Ad2Im0bC50t5/m7Y4bs/tCpVwCs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r9W2EkfEgiYs6Hkm+E0nmdTlCjZrYoGaxZpmGx2xxFRWGO+VRTdFgsz2aa+aQTnLM2FQLhNGm0vp5sxhEBF4CM30za9eLYGz9PYG5q4YA1iJ9Mqw9Ccujxq9+04ZWeg8LLoFA65ZNkmOagiKLzJ6qa85/LYK5fFBBUOkk1scCZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GHstaX41; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IR+OxEW4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO89o8O1912255
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:12:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	r4pwjsLb94viwOUeZY5LWZFqC+Yh636LcNeJkFUYm5w=; b=GHstaX410BgvFWMH
	6TevAEtS9HDF7Zv2Lwjb4+hQWKEX8IGRvirHS1usIiK2yszf/7oyNf+Kr6PAeISN
	VcJ57CUQg6dIRAE/mr+4FBVaH/ufzaV0ZKdWxn3yq8wVqoAh+c1oHQ4Xn+OtTpIF
	DbpqrmxpC6o/MBiK3Mr9cBN9xCLSQqGoOYPFuveQ9Itu/aDl9P/ePwBCKLEs0yhb
	j2j9XTNeMFglTFgBZuybl2FGfvZ8y3XUFroMJEjhQq9AnnAp2YNVWPAMnReYMr8r
	r6xbeu1pWVA0OQenC9+B/lWjB0kOTcAy1TG0UYI5kaR1KUGxiL2Qh6oaBIXqHLjb
	Y+6vXw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ama099rvw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:12:54 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-295952a4dd6so53868955ad.1
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 03:12:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763982774; x=1764587574; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r4pwjsLb94viwOUeZY5LWZFqC+Yh636LcNeJkFUYm5w=;
        b=IR+OxEW4jGa2Ah6dVsQZs7SEdd/0hr14IQYaF5niiEOLADsbZ2ukxiOnTRWoycLn1T
         ZWa1qC/Q91X+B7WaZPnVAKeCa6i4iu88ljHP08uHmK9sY0yIan7Gs0PkbKtnG8m29qlQ
         ui/FDxQl415g2rO3ceTX7W3o7NnYHfXyLpomShDNt67S4Mk7S5yEBM4a8Qvt1RkG+UlP
         0Hf/fnn4Lw6XMkAh/p+uxxPDQTR/MlYJiZgYqgdqPy4Kucat7D5n2jNbRDiz+O/0a44M
         j+5x4IQ/1C1Bqt+pqJyhIYYPMXx2BLIgVBJFDxV7qM2Btx/kLV5L+Edi5HUXx5uUdmCB
         XLrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763982774; x=1764587574;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=r4pwjsLb94viwOUeZY5LWZFqC+Yh636LcNeJkFUYm5w=;
        b=E0VUq86ZnFR2v4XFGtkTS96FPbU+TLnJA2xC8MtrQOR3UiATFQQFBcx/dYFUEIIseO
         QYGA4RjrwJh1CnI/xpN8dbwpenogNyb1JoNtfKIkT5S7buhVngX4pZ6+fzPDmeFjw0VS
         iKo3NQ/Ve3bKTF453BYvpLw/AcCpW77E5H4gqHym2HiISBAeMOtj4pKHTja4GZdZe6ka
         zmiVseqSKpp9DCLcSMlzemQsOSk9vvOAkg067RdZh5/dgsX4sxfHFI9VY2I8QOYU17uc
         59M8d2Z0hyF+BiYPqv8CLUB9MJevSEwSq/xfb0anZGlim3HAr9Q/uNHZ9bVOWrKTJvF4
         8FjA==
X-Forwarded-Encrypted: i=1; AJvYcCWt8bSU4/r0WFHg5nXB7Om5O9a4uRguOcCTtyd+w53TslErtUmjTX6ZtPQRMtkDJFY6uugM6MlNjuRH@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg4GIXsrcv7q6GjDBtgnuz3TcsBih9ElvO+xgBCE7NMq7yeG23
	CWBw/QEzzR0vhaTe3i2iXl3rOHLY+RpElK8ZacLzWzxS7qEG2AsnG02itk2+4yGVpigKyq0V0y/
	PV94SmaWXGUNPR2lJr1wo2U+mr8CQ1tgaWURSiuqP077BKTtdcvKJHsy05WBXYQ8=
X-Gm-Gg: ASbGnctrXHqUmVJwqmbuLi1spLcFHLKXqtRzaFncrq+54q7x0zjbEin3TJJE+BYnzm8
	aotlmVW/k+WqxCNrAEOCmK3hNN4SxW4W+53kX4BKDrWCxAPZ/dC13L13SkbWyaeygUZq+M8CUuv
	1bdNLOK3m6dN6QWQf+8QFOixnROSj6vQ0Ioz7Op7Kkbjqk/+EIJ5h9S4/v5duBA344FUd1HrvQc
	WJ5AjyEvEL/5OdlBOWz5SbHX61FjhWL9YfOyv0mPw1QMM7ThsfEHubP/Qku/72wN+5o/EuXS3Wi
	RijPM3beKCaSpjnK6Lds41C8o0vswn8TG5uw5e7Qk09p+0MN96hqHO0nkC10zQGrwQoixukQ+KK
	1rmF7VxvUBCOgPaeUCGcgpY92UsmVvwMr7HCUoZI=
X-Received: by 2002:a17:903:1aa4:b0:298:360:1662 with SMTP id d9443c01a7336-29b5e2cdc55mr157602135ad.1.1763982773759;
        Mon, 24 Nov 2025 03:12:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFcsgaJnzllrON380lwt2jBn1aT2PsCW8Yu8M7kwZm6QG6xkze5SNxZadWxYwrHIjEJtwn3MQ==
X-Received: by 2002:a17:903:1aa4:b0:298:360:1662 with SMTP id d9443c01a7336-29b5e2cdc55mr157601725ad.1.1763982773218;
        Mon, 24 Nov 2025 03:12:53 -0800 (PST)
Received: from hu-kotarake-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bd7604de68bsm13133780a12.21.2025.11.24.03.12.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 03:12:52 -0800 (PST)
From: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 16:42:41 +0530
Subject: [PATCH 2/2] power: supply: core: Add SiLION battery technology
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251124-add_silion_battery-v1-2-3c86b70d2543@oss.qualcomm.com>
References: <20251124-add_silion_battery-v1-0-3c86b70d2543@oss.qualcomm.com>
In-Reply-To: <20251124-add_silion_battery-v1-0-3c86b70d2543@oss.qualcomm.com>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kamal.wadhwa@oss.qualcomm.com,
        fenglin.wu@oss.qualcomm.com,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763982763; l=4004;
 i=rakesh.kota@oss.qualcomm.com; s=20250919; h=from:subject:message-id;
 bh=m8QF8XtXdOChb3k0Ad2Im0bC50t5/m7Y4bs/tCpVwCs=;
 b=9MEOf2sttFyw8Td39vE7GDKqWpKZjFLA5b/6dCyf70tvT5pdnc90hBQb/LiBRePP4q+aEu578
 mt7s37ycMJUBWFYQvqhGoVnCNaNeBaYi6jgDQ2xo2ogCOWRFI9Dm68a
X-Developer-Key: i=rakesh.kota@oss.qualcomm.com; a=ed25519;
 pk=dFhv9yPC8egZglsSLDMls08cOvZKZkG6QQn1a/ofwNU=
X-Proofpoint-ORIG-GUID: -70mg4sL9OYMdwQSlJlbd1ger9HOjwOK
X-Authority-Analysis: v=2.4 cv=PdHyRyhd c=1 sm=1 tr=0 ts=69243db6 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=YWgE9MSi0NtjCATTJAsA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA5OCBTYWx0ZWRfX1TT2sMA9PsRw
 FUX/P3TzYqOJSFzQJfceaLuTB7v8D12nYfgoE6GSlKWSMzqNjUXs13oS6QF4sop9CkBtu8DEaaR
 ndsEyN1BVdmkQPPBJfI839fhvb+uT+5ALPNJ6D2YBKQTnTtgWbnZ4l6rD15NutI6j2HnA9g05wF
 484q6Mjdr8TNPjRYmKPyOPRQ4Svlfde8ZZRve23WcYl4h6i1GyMAYdwDoIIq7FyWIs4iWtE6Ywe
 GSH2j/GN2Gifjd8aWkZ/JnQRZwxHIbglZmDjqfn7M2nXP54I1grsKJQ5snIgqAZwHDzpWbJ3mfY
 onuS5Vm/YAomdr8L80rzc1N3NNvhz4g282gWFhy/JHoUNIK7UHdR8SeS1Nyj/e6MO0b9XQij1RK
 ngozk5GcAGtD+uEquUEVJa10ZEm/TQ==
X-Proofpoint-GUID: -70mg4sL9OYMdwQSlJlbd1ger9HOjwOK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 spamscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 priorityscore=1501 phishscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240098

Add support for lithium-ion-silicon-anode (SiLION) battery technology
to enable proper identification of devices using this newer battery
chemistry. Without this change, such batteries would report as
unknown technology.

Introduce POWER_SUPPLY_TECHNOLOGY_SiLION and update technology
mappings across core, sysfs, and test interfaces.

Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
---
 Documentation/ABI/testing/sysfs-class-power | 2 +-
 drivers/power/supply/power_supply_core.c    | 2 ++
 drivers/power/supply/power_supply_sysfs.c   | 1 +
 drivers/power/supply/test_power.c           | 3 ++-
 include/linux/power_supply.h                | 1 +
 5 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/ABI/testing/sysfs-class-power b/Documentation/ABI/testing/sysfs-class-power
index 4b21d5d2325136be65126d4d1d6e64608280fe44..1f42e6f138ea8ae0fe8c232c38d0ff6fb20180e7 100644
--- a/Documentation/ABI/testing/sysfs-class-power
+++ b/Documentation/ABI/testing/sysfs-class-power
@@ -525,7 +525,7 @@ Description:
 
 		Valid values:
 			      "Unknown", "NiMH", "Li-ion", "Li-poly", "LiFe",
-			      "NiCd", "LiMn"
+			      "NiCd", "LiMn", "Si-Li-ion"
 
 
 What:		/sys/class/power_supply/<supply_name>/voltage_avg,
diff --git a/drivers/power/supply/power_supply_core.c b/drivers/power/supply/power_supply_core.c
index 9a28381e2607d650fa9b719b683af375bb118fad..385ab8aa7e69f3f804e7ac0ee3782446f18e2c3f 100644
--- a/drivers/power/supply/power_supply_core.c
+++ b/drivers/power/supply/power_supply_core.c
@@ -677,6 +677,8 @@ int power_supply_get_battery_info(struct power_supply *psy,
 			info->technology = POWER_SUPPLY_TECHNOLOGY_LiFe;
 		else if (!strcmp("lithium-ion-manganese-oxide", value))
 			info->technology = POWER_SUPPLY_TECHNOLOGY_LiMn;
+		else if (!strcmp("lithium-ion-silicon-anode", value))
+			info->technology = POWER_SUPPLY_TECHNOLOGY_SiLION;
 		else
 			dev_warn(&psy->dev, "%s unknown battery type\n", value);
 	}
diff --git a/drivers/power/supply/power_supply_sysfs.c b/drivers/power/supply/power_supply_sysfs.c
index 198405f7126f96a57a549cd1ecb9b71089b9c3d0..f2a5ec519b2ef60fb5ede101ca461d899218e186 100644
--- a/drivers/power/supply/power_supply_sysfs.c
+++ b/drivers/power/supply/power_supply_sysfs.c
@@ -122,6 +122,7 @@ static const char * const POWER_SUPPLY_TECHNOLOGY_TEXT[] = {
 	[POWER_SUPPLY_TECHNOLOGY_LiFe]		= "LiFe",
 	[POWER_SUPPLY_TECHNOLOGY_NiCd]		= "NiCd",
 	[POWER_SUPPLY_TECHNOLOGY_LiMn]		= "LiMn",
+	[POWER_SUPPLY_TECHNOLOGY_SiLION]	= "Si-Li-ion",
 };
 
 static const char * const POWER_SUPPLY_CAPACITY_LEVEL_TEXT[] = {
diff --git a/drivers/power/supply/test_power.c b/drivers/power/supply/test_power.c
index 2c0e9ad820c0db23165758303a16bddac1a1634b..64bd4a1147ca06566a909513a80760ad707a8605 100644
--- a/drivers/power/supply/test_power.c
+++ b/drivers/power/supply/test_power.c
@@ -437,6 +437,7 @@ static struct battery_property_map map_technology[] = {
 	{ POWER_SUPPLY_TECHNOLOGY_LiFe, "LiFe" },
 	{ POWER_SUPPLY_TECHNOLOGY_NiCd, "NiCd" },
 	{ POWER_SUPPLY_TECHNOLOGY_LiMn, "LiMn" },
+	{ POWER_SUPPLY_TECHNOLOGY_SiLION, "SiLION" },
 	{ -1,				NULL   },
 };
 
@@ -733,7 +734,7 @@ MODULE_PARM_DESC(battery_present,
 
 module_param(battery_technology, battery_technology, 0644);
 MODULE_PARM_DESC(battery_technology,
-	"battery technology <NiMH|LION|LIPO|LiFe|NiCd|LiMn>");
+	"battery technology <NiMH|LION|LIPO|LiFe|NiCd|LiMn|SiLION>");
 
 module_param(battery_health, battery_health, 0644);
 MODULE_PARM_DESC(battery_health,
diff --git a/include/linux/power_supply.h b/include/linux/power_supply.h
index 360ffdf272dab86241f1aac4650d1a91a088a84b..04996037219d5a22d2b2a7f136e5d3565a4507ca 100644
--- a/include/linux/power_supply.h
+++ b/include/linux/power_supply.h
@@ -83,6 +83,7 @@ enum {
 	POWER_SUPPLY_TECHNOLOGY_LiFe,
 	POWER_SUPPLY_TECHNOLOGY_NiCd,
 	POWER_SUPPLY_TECHNOLOGY_LiMn,
+	POWER_SUPPLY_TECHNOLOGY_SiLION,
 };
 
 enum {

-- 
2.34.1



Return-Path: <devicetree+bounces-178347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 96219ABB7A7
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 10:45:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AC1F0188957B
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 08:42:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12222279781;
	Mon, 19 May 2025 08:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nSnDfaHo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61582278E7F
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747643682; cv=none; b=hdHwyEqBJyhE19X/Tkn7EG0h7HCM/I39su25/Q0VL7h/KPREP5dANlYwRJpfdORheXLvO2wJbNhDyi9kt61kCu3IrsnWNJhTvCDTNDs5Xe68qqAjFFbMHAMp1Q0bP4U+lzbWVW7L74HHVbsdb9c7+Qe9P1N9wTWg+HZO+Key0FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747643682; c=relaxed/simple;
	bh=mUzO2xSu3EpTivKyV8Um9rHqn8YSH3zDDY76ndIIIq4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rbDsTo11XzkWuKgVErBS5ZJSL16APwTLw1SnLdFDgaJD02MezM6jPtoXq1wyvu9ZBqEmaSE3i0B2euUxczqaT7FU3K095KlJhgZW4bHWMPE67UtV8CJ/IQRvzHutGHBu6p98TIyWN0gpDGOD+/TShnv994wZHdz2TBXSapirmLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nSnDfaHo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54J4EtW6014120
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:34:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GcUkx+YKqco1Xw2nHjFM9i9LbYE7u4pXF1Mr2WP4S/E=; b=nSnDfaHoEEJJoj9y
	eX5buC4t4K8XZU9FB51bZ6YeH8zvXFqAS/9Eo75nlz70Z1qT8Ih87F7Zo7UD9Pyi
	o9dn/OgCqtl7k2dvXqqcg3N7ibQGBV1t53tmiaKxSJYCXR4eErfRdNhWLF98EquN
	aDYB9Wesvoh2OaWmDk78BdEKV6sa6oTi6Ew52Y8XvLN2XccnZkEd1eoxjWnOg+Fd
	Bp4notia+ZT82kUJ6lN2VRXP28f8Fm8zb6QULBKUm1KsuhINo5hFHaYPt/voW1BT
	jJKgKnvHwqPbNtMcIRYKOZQoAigoynYIIEduE+EL7J3XAFTYf/NR3Rzb8vl7R4wd
	vDSVAQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46qwengqvn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:34:38 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-742c9c92bb1so799133b3a.3
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 01:34:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747643677; x=1748248477;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GcUkx+YKqco1Xw2nHjFM9i9LbYE7u4pXF1Mr2WP4S/E=;
        b=F6MVnuiBB9GEtljgwLvPBHEHkef1aY7kNoO/VmoTTcnRgBgDYiDbFOTI6YAHg/4ziP
         Ot0WkbMwuFdYoIjyxZnL64PgFMzy0p7TeI3AK2N7Lt2Wi8oCsD3ci4SqSBUUYEdlce+4
         nIhVNoJETzK+jUkCODLjUtT5bU9syZ7JvwmUQbL7eMXzabAIsvqrOa9djd+2eIWLL6rK
         z1ipnNTTvlj4MDuO1Z8I9MOdnbgBRQF/YAPtHZhyFq+H0SVaGyPYE0gU/NjreV0QoBx2
         g6XiPjgRm49tWYT/e0e1ZxRDHDeD0b3dyEmMDNO5WuF6tu78hAEATQPYEfzGyZhQaubG
         rv8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXDnKSwRfTedL3d3NzOJaacJNSh5KOKSV7dFVfhc7c3f/iCONF4mv4z3oKTCD2xEBhqnJc32KUC3o30@vger.kernel.org
X-Gm-Message-State: AOJu0YyQmsAY3vB2rGZISw+0XZ0r6AumUumMdSmjIMn99IAY/MHNiCAq
	o13EU1jK0KsJYNYv4N/QlELSKNxX5T6PoglV+A27L9EVEU6RbTusWWgGKJeHtLPIIglFcEnjFCf
	46KTP+nmG9NAJvxpbbDm4vrJ//A7RFT/UM1LLUNYNmKu/rYzdzPemToEEkwmi7Ttr
X-Gm-Gg: ASbGncu6Go6lkz7i1qU6zAqgBDWGaD/u2mWjnU0zwmnhyWMEnxt2ljqZZD/8C7SL0Y6
	8+9KPBayCRry24mWkbyxpoIGp227BRspVzMR74e5psWs5nZvKmBLPMVWQbYWy4ednjHYagcJyBS
	2dCqJxqetR5E+CHfWtmKvhsZ61gXH1H1d6mT1v/lYutuzbpjrxTp4AMWaMp/rQmO6/NynC+xO/z
	2fzjjhapwQ2vAVvUKQiiYfHTeJ8fgexDXHQ+LxIkYZG4jAmyW3UYc6IjPGDuLeX/R8lJJHLFtZW
	ul8YN8nbXYoBHJ1Fd0bdY/WxTNj4+bUq5GHvgVFUYmWGx7lY4/cIk+rIRlkZq578ZzyGXEdjIvv
	IkjOiUXGLqQ7ZHWnDfo90gW6dkEMzolftJUDKBw47mmUaGIA=
X-Received: by 2002:a05:6300:8048:b0:218:bbb:c13c with SMTP id adf61e73a8af0-2180bbbc173mr11755965637.38.1747643677233;
        Mon, 19 May 2025 01:34:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEzHKwpnMF/G5uWJCqmSSyVJ0NW+L3DiuThw+GwYy/efs9lHJFclcF5sQQK+SpSmsBwFyK7ng==
X-Received: by 2002:a05:6300:8048:b0:218:bbb:c13c with SMTP id adf61e73a8af0-2180bbbc173mr11755929637.38.1747643676777;
        Mon, 19 May 2025 01:34:36 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b26eaf5a2cesm5705475a12.9.2025.05.19.01.34.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 01:34:36 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Mon, 19 May 2025 14:04:04 +0530
Subject: [PATCH v4 4/5] watchdog: qcom: add support to get the bootstatus
 from IMEM
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250519-wdt_reset_reason-v4-4-d59d21275c75@oss.qualcomm.com>
References: <20250519-wdt_reset_reason-v4-0-d59d21275c75@oss.qualcomm.com>
In-Reply-To: <20250519-wdt_reset_reason-v4-0-d59d21275c75@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747643657; l=3709;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=mUzO2xSu3EpTivKyV8Um9rHqn8YSH3zDDY76ndIIIq4=;
 b=5pCTnDbSHpRWKO3dMBFMNUuE6wudIY44pGPTy7BMHe+3G8NojMyGvtxWq1HQzXqvsUuWc2Hq5
 Gdcw4d+XD4+DrY1KFpmFyThwJUJBrT+OV1QPSuAimTJSQeXYf1mcTbX
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-GUID: HjfVrsKImNygAStW8rNGOg926g1fQClY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDA4MSBTYWx0ZWRfX/m4yvuZWX+Xj
 SLop4RiCDOtSbN6a9tzSfAeeIWt5PFHlmQgpffC+H/ywnsouObDCCEKrZcN7Prcks7Wne9Awop5
 K5RisryqZfmZTseZ5G4ROie0sg8eFqOnPFF/IDyQr42tZwCdrZlG+Q+EdYbCFldvqQpQKkZn90L
 38bhg8AvQb/k3Xy1woBIzUXQ+auj3yHdTLxXZPBKL0VpQ+kGl4EMvqicGNhe0rRNGUSzigDuuSJ
 OxhXjVBzGPWsC2Ns1rRyVCheTP7TJgGvXm8tzVPdP4ffj1EXsjBmJn92ACYD11dhZhPjqjHJjgr
 oEZ0yUooY+RkBnjgdGdYtMxWzwjrRpIl0LVzcDbF+KDyvAm0jLptTKFJdgO0FLxFdwS6OquOq81
 bNxDKW5nU3blw+lcInxscdRjPGkPKpBsehFtkyWzXhLD8gGTq5zGamrGvvZSPxjr57L34xh9
X-Authority-Analysis: v=2.4 cv=Wd8Ma1hX c=1 sm=1 tr=0 ts=682aed1e cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=1bKD8B96pFte2-3mT60A:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: HjfVrsKImNygAStW8rNGOg926g1fQClY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_03,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxscore=0 priorityscore=1501 suspectscore=0 spamscore=0
 clxscore=1015 mlxlogscore=999 impostorscore=0 lowpriorityscore=0
 malwarescore=0 bulkscore=0 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505190081

When the system boots up after a watchdog reset, the EXPIRED_STATUS bit
in the WDT_STS register is cleared. To identify if the system was
restarted due to WDT expiry, XBL update the information in the IMEM region.
Update the driver to read the restart reason from IMEM and populate the
bootstatus accordingly.

With the CONFIG_WATCHDOG_SYSFS enabled, user can extract the information
as below:

cat /sys/devices/platform/soc@0/f410000.watchdog/watchdog/watchdog0/bootstatus
32

For backward compatibility, keep the EXPIRED_STATUS bit check. Add a new
function qcom_wdt_get_bootstatus() to read the restart reason from
IMEM.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v4:
	- Kept only WDIOF_CARDRESET and dropped other codes
	- Renamed qcom_wdt_get_reason_reason() to qcom_wdt_get_bootstatus()
	- Moved the existing check inside qcom_wdt_get_bootstatus()
	- Dropped the device data and put all the details in the DT node
Changes in v3:
	- Split the introduction of device data into separate patch
	- s/bootloaders/XBL - for clarity of which bootloader is
	  involved
	- Mention the sysfs path on to extract this information
	- s/compatible/imem_compatible in the device data structure to
	  avoid the confusion / better naming
Changes in v2:
	- Use the syscon API to access the IMEM region
	- Handle the error cases returned by qcom_wdt_get_restart_reason
	- Define device specific data to retrieve the IMEM compatible,
	  offset and the value for non secure WDT, which allows to
	  extend the support for other SoCs
---
 drivers/watchdog/qcom-wdt.c | 42 ++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 40 insertions(+), 2 deletions(-)

diff --git a/drivers/watchdog/qcom-wdt.c b/drivers/watchdog/qcom-wdt.c
index 006f9c61aa64fd2b4ee9db493aeb54c8fafac818..adbf21ae2ef15ae2faec57c6ec01c38924bc4955 100644
--- a/drivers/watchdog/qcom-wdt.c
+++ b/drivers/watchdog/qcom-wdt.c
@@ -7,9 +7,11 @@
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/kernel.h>
+#include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
+#include <linux/regmap.h>
 #include <linux/watchdog.h>
 
 enum wdt_reg {
@@ -187,6 +189,41 @@ static const struct qcom_wdt_match_data match_data_kpss = {
 	.max_tick_count = 0xFFFFFU,
 };
 
+static int qcom_wdt_get_bootstatus(struct device *dev, struct qcom_wdt *wdt)
+{
+	unsigned int args[2];
+	struct regmap *imem;
+	unsigned int val;
+	int ret;
+
+	imem = syscon_regmap_lookup_by_phandle_args(dev->of_node, "qcom,imem",
+						    ARRAY_SIZE(args), args);
+	if (IS_ERR(imem)) {
+		ret = PTR_ERR(imem);
+		if (ret != -ENOENT) {
+			dev_err(dev, "failed to lookup syscon: %d\n", ret);
+			return ret;
+		}
+
+		/* Fallback to the existing check */
+		if (readl(wdt_addr(wdt, WDT_STS)) & 1)
+			wdt->wdd.bootstatus = WDIOF_CARDRESET;
+
+		return 0;
+	}
+
+	ret = regmap_read(imem, args[0], &val);
+	if (ret) {
+		dev_err(dev, "failed to read the restart reason info\n");
+		return ret;
+	}
+
+	if (val == args[1])
+		wdt->wdd.bootstatus = WDIOF_CARDRESET;
+
+	return 0;
+}
+
 static int qcom_wdt_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -267,8 +304,9 @@ static int qcom_wdt_probe(struct platform_device *pdev)
 	wdt->wdd.parent = dev;
 	wdt->layout = data->offset;
 
-	if (readl(wdt_addr(wdt, WDT_STS)) & 1)
-		wdt->wdd.bootstatus = WDIOF_CARDRESET;
+	ret = qcom_wdt_get_bootstatus(dev, wdt);
+	if (ret)
+		return ret;
 
 	/*
 	 * If 'timeout-sec' unspecified in devicetree, assume a 30 second

-- 
2.34.1



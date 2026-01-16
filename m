Return-Path: <devicetree+bounces-256297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C2BDAD389D9
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 00:24:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4E81F3133185
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 23:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 848A633DEDD;
	Fri, 16 Jan 2026 23:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LESjgGBP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="efx8bcmg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D830F315D26
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 23:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768605681; cv=none; b=JITCAmKtIUQDC7THraavjYm5GrpkM4LGXm3Y8TpDqpJmmWFwklu8lGepms7/ZpOAHM/DkUoNu836BNitKrkKeDl/grL0rJGzd8AsSZoTgtKGR0ULUujDDanl1M9uNq/E2lor8PqBD4cdtTEU8IGzyuYSt+QbNJj8MiiSLUMoS0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768605681; c=relaxed/simple;
	bh=8QuxfXdYRJcE3fyNR6NyT4XaseLCItGHgJZH0P+Yloc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eeHH0xXoEL1wBA+DG21WCSMJe4sN+KDdq7VyfJ9Kt+gSuEgxaqxWw2/oNa7rX25+lawptwaaKK/kwEgzHNJE3H/8jXYdsyO5ktEJl9XrG54xXJ1hZNGbWdf6674vBV8fZ8D30PgdXZo+GL9j6XhyWn+1Al7pjLvIHciWyq4adQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LESjgGBP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=efx8bcmg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60GNE7pZ1713607
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 23:21:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=VKaYciJerw3
	mJBDnc7jGWgSPFPx7Co7DTR1b7g2zoXc=; b=LESjgGBP0pE9vVf52fp90RjyhCW
	O6kYko17U4C/ld6zZfgoF8vrFbt6EQE00tglK7nQeMDuzc5xfgROjcQEjS0CJRwY
	0FrVBVvJ0Zmr/keyabSVifr2YNaakqwbnZMqa2JAZYL5HRDq/Eb2FoniearXERcx
	DrJuf93gel1dBDWnlxSgfr3aFsFomj/m29yFUZKja88arriPa/vE3b/Dgvdj4jdE
	07qiReXSajxmwJ0bAgf5xdnTNAhjJtnlH1uerZOI3+/oPEcYYG1AlYNmul6P/zSe
	AK6F1vY0Gck6GdVdHX+tt96zml+sPG/NO481dEG3m5AVH3ORd6TxdRaN21g==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bqvh08awn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 23:21:12 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-123840bf029so4797796c88.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 15:21:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768605671; x=1769210471; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VKaYciJerw3mJBDnc7jGWgSPFPx7Co7DTR1b7g2zoXc=;
        b=efx8bcmglPgVIQ7+yCUOk36fdpSZD9zeGEvbolxXxbI7fXJGw/d28eWvZuQQpDHKpu
         QcDcjPLKofFl4GkRy7m6/r0WpzSFl+C4tCHMJtZ62frGvhvYqqAdWOadhVaLlqNo3/un
         iQQJyAL3YlLByK1ryHSw+0zwI3Fx/Lx4D88TX4k3DWrdJXnuzCQ0fLJJmb4y748F3w/O
         VPaWDvQPHpGC2D3LAvrk3V2Zn7+gPWLMWff24HSImWqRR2l+H72XGCr8+8q+c2Wugc/q
         HcSkHcPyw8SCKqP9IbfOjSvdnJvtP5+rJCJODjrSM3Gy44RmeUP3SuyMD52qRyaTzfGI
         r8Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768605671; x=1769210471;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VKaYciJerw3mJBDnc7jGWgSPFPx7Co7DTR1b7g2zoXc=;
        b=UOd5au2D3q4gJt50R8Pu/TF/pBtd/1DOS20nBgR3vCamRouZtyaKYfPOdRKNWH/W2E
         Oh4uBp9wGjbYXyDpetYjAvaUB0OBTvZ/M8Kmco3UvsNj0FPJFvJmjZc1rdmSHHimnZiW
         9XOvVijNw6FM6c6fBDlkM0LOX9VLKkeyGyy19fnVfuBhRM7DFwEPhuR0sIZhsVGdh0y2
         vvgZgG9M5JFycS9GNSnKyrAPTpwkkZfGMXdffhljRrRmMnMnE19KdPdj5g8U6d6vACIj
         AKo5fFRVG0HlCcgfmaxvzAhg6LsQO+munrGV64tRS4OEswUlKhYx3XWRccBn8s5OL606
         D2yw==
X-Forwarded-Encrypted: i=1; AJvYcCU9oQuS22om7FEpqdBN9gOv8olWhGxyI66JDEyM39bu5n1iQTORhhub29l8hdIRyHmLq7BucD9k0rfF@vger.kernel.org
X-Gm-Message-State: AOJu0YxLz+7igEC/7YWorIDZkL5RGsrUDU+CbUUUwTs+KQ6HKsiNh8Lv
	u3kRxsaWeETtSPPq3B/pFOX0FwuSuVJN/XtgiPC2pEfyymkDFTkMGKnZF/npBX9KUHPHpJf3xkD
	EdvujRK4a8kbfF2XssKWQcqXQgvUGgjT6r37qwzD8LlixeqhZNoVbsRi8Lsezdmsh
X-Gm-Gg: AY/fxX7LskxATOCSREfalESFV/kFtjn1SmwgKnCmtZ0PXPa1mBxLecYUAw86I61s2St
	c6agxPTTydHt0s8avsww78viYt8dBQtDtyDY4aoAGQ+uCw90HbbMD2VwBgV7WUHrZJn9VjIc8F7
	hjuBRE805rubX58JCTRvzPi4ecbtcLao4LpHP+sVEiGSsbJoWuwTTYVqv8G7d6bnNlqEiJajaQb
	bCKe+o97qjXc66B2j1TFcvDxjvx3Q+jIFjKH7ulJTjcOnB0ICp2Nxrbw4RhzjCpl0sCSBjV0npN
	yUYHJAOd/tXhwerp1RxB9RfRRyYFVG/kYsMo+AgNLGxZLXcnoYeIfNIt6B982uFzt7gl+T1NMjg
	43orrnusfL0cJ8EXXH2Q+GEF0qzp4p5RVua/Nf56vlJlHNiyTfigDUCLWPt9w704=
X-Received: by 2002:a05:7022:2397:b0:119:e569:fba9 with SMTP id a92af1059eb24-1244a75ea44mr3688686c88.24.1768605671322;
        Fri, 16 Jan 2026 15:21:11 -0800 (PST)
X-Received: by 2002:a05:7022:2397:b0:119:e569:fba9 with SMTP id a92af1059eb24-1244a75ea44mr3688672c88.24.1768605670731;
        Fri, 16 Jan 2026 15:21:10 -0800 (PST)
Received: from hu-eserrao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244af10e21sm4611267c88.16.2026.01.16.15.21.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 15:21:10 -0800 (PST)
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/9] usb: misc: qcom_eud: add per-path role switch support
Date: Fri, 16 Jan 2026 15:21:01 -0800
Message-Id: <20260116232106.2234978-5-elson.serrao@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260116232106.2234978-1-elson.serrao@oss.qualcomm.com>
References: <20260116232106.2234978-1-elson.serrao@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: yHXA0RwddOjdrk2Rl9dY650EpiPwDVuv
X-Authority-Analysis: v=2.4 cv=ZZsQ98VA c=1 sm=1 tr=0 ts=696ac7e8 cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=_OGk7KolV25BrENr9Q4A:9 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDE3NSBTYWx0ZWRfXyEfmMECKImJ3
 cbIWFFvP3b6U73nDltoWuMUCyINOEOZxwzeq7at9B+TZrq6wD3Bn1FDihNKwgs+SCKbymsqR/x3
 G25o5hrYZalCTBw9XCdU0VLISVKj4gvaM/89E+pgE7XSVkqOqV/pcRlEGFirPUQhyf/EKg/v7uG
 utR1L3RYZ3FUgwHY9yELAsbS4EC+oH4eSx7VYWfVO/hOEs3QfbmTO/OaDCenth45wZW/non5hnH
 2WpyrH9vkaRWe5PXIIjj7v3qLmxccj3PHL/trRY4tvPqMJuc5UHr9lEIifydxS3MawfV+vVIHX9
 e7oY76IH+aNRAB7Nt8J7b961C2PKw1DP+dsYrZDkDmy4K8PG3mgf2vK23hgS74WQPecjvrGu18v
 enaj6IkVNsHfizPth7rHXbK3cd62l4mNJmoTuHBekbxPz07z2PhidwVoGshsbQjqwdwqHG48IRf
 /ARHACwSq8/qpUZzY7g==
X-Proofpoint-GUID: yHXA0RwddOjdrk2Rl9dY650EpiPwDVuv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_08,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 bulkscore=0 adultscore=0 spamscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601160175

The EUD hardware can support multiple High-Speed USB paths, each connected
to different USB controllers. The current implementation uses a single
chip-level role switch, which cannot properly handle multi-path
configurations where each path needs independent role management. Since
EUD is physically present between the USB connector and the controller,
it should also relay the role change requests from the connector.

Restructure the driver to support per-path role switches and remove the
chip-level role switch. Additionally, as EUD need not modify the USB
role upon enabling, remove the unnecessary role switch call from
enable_eud().

Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
---
 drivers/usb/misc/qcom_eud.c | 80 ++++++++++++++++++++++++++++++++-----
 1 file changed, 70 insertions(+), 10 deletions(-)

diff --git a/drivers/usb/misc/qcom_eud.c b/drivers/usb/misc/qcom_eud.c
index 5cebb64f4a67..a58022f50484 100644
--- a/drivers/usb/misc/qcom_eud.c
+++ b/drivers/usb/misc/qcom_eud.c
@@ -38,12 +38,15 @@
 struct eud_path {
 	struct eud_chip		*chip;
 	struct phy		*phy;
+	struct usb_role_switch	*controller_sw;
+	struct usb_role_switch	*eud_sw;
+	enum usb_role		curr_role;
+	char			name[16];
 	u8			num;
 };
 
 struct eud_chip {
 	struct device			*dev;
-	struct usb_role_switch		*role_sw;
 	void __iomem			*base;
 	struct eud_path			*paths[EUD_MAX_PORTS];
 	phys_addr_t			mode_mgr;
@@ -129,7 +132,7 @@ static int enable_eud(struct eud_chip *priv)
 	writel(EUD_INT_VBUS | EUD_INT_SAFE_MODE,
 			priv->base + EUD_REG_INT1_EN_MASK);
 
-	return usb_role_switch_set_role(priv->role_sw, USB_ROLE_DEVICE);
+	return 0;
 }
 
 static int disable_eud(struct eud_chip *priv)
@@ -287,15 +290,21 @@ static irqreturn_t handle_eud_irq(int irq, void *data)
 static irqreturn_t handle_eud_irq_thread(int irq, void *data)
 {
 	struct eud_chip *chip = data;
+	struct eud_path *path;
 	int ret;
 
+	path = chip->paths[chip->port_idx];
+	if (!path || !path->controller_sw)
+		goto clear_irq;
+
 	if (chip->usb_attached)
-		ret = usb_role_switch_set_role(chip->role_sw, USB_ROLE_DEVICE);
+		ret = usb_role_switch_set_role(path->controller_sw, USB_ROLE_DEVICE);
 	else
-		ret = usb_role_switch_set_role(chip->role_sw, USB_ROLE_HOST);
+		ret = usb_role_switch_set_role(path->controller_sw, USB_ROLE_HOST);
 	if (ret)
 		dev_err(chip->dev, "failed to set role switch\n");
 
+clear_irq:
 	/* set and clear vbus_int_clr[0] to clear interrupt */
 	writel(BIT(0), chip->base + EUD_REG_VBUS_INT_CLR);
 	writel(0, chip->base + EUD_REG_VBUS_INT_CLR);
@@ -303,15 +312,45 @@ static irqreturn_t handle_eud_irq_thread(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
+static int eud_role_switch_set(struct usb_role_switch *sw, enum usb_role role)
+{
+	struct eud_path *path = usb_role_switch_get_drvdata(sw);
+	int ret;
+
+	/* Forward the role request to the USB controller */
+	ret = usb_role_switch_set_role(path->controller_sw, role);
+	if (ret) {
+		dev_err(path->chip->dev, "Failed to set role %s for port %u: %d\n",
+			usb_role_string(role), path->num, ret);
+		return ret;
+	}
+
+	path->curr_role = role;
+
+	return 0;
+}
+
 static void eud_role_switch_release(void *data)
 {
 	struct eud_chip *chip = data;
+	int i;
 
-	usb_role_switch_put(chip->role_sw);
+	for (i = 0; i < EUD_MAX_PORTS; i++) {
+		struct eud_path *path = chip->paths[i];
+
+		if (!path)
+			continue;
+
+		if (path->eud_sw)
+			usb_role_switch_unregister(path->eud_sw);
+		if (path->controller_sw)
+			usb_role_switch_put(path->controller_sw);
+	}
 }
 
 static int eud_init_path(struct eud_chip *chip, struct device_node *np)
 {
+	struct usb_role_switch_desc role_sw_desc = {};
 	struct eud_path *path;
 	u32 path_num;
 	int ret;
@@ -342,6 +381,32 @@ static int eud_init_path(struct eud_chip *chip, struct device_node *np)
 
 	chip->paths[path_num] = path;
 
+	path->curr_role = USB_ROLE_NONE;
+
+	if (!of_property_read_bool(np, "usb-role-switch"))
+		return 0;
+
+	/* Fetch the USB controller's role switch */
+	path->controller_sw = fwnode_usb_role_switch_get(of_fwnode_handle(np));
+	if (IS_ERR(path->controller_sw))
+		return dev_err_probe(chip->dev, PTR_ERR(path->controller_sw),
+				     "Failed to get controller role switch for path %d\n",
+				     path_num);
+
+	/* Create a role switch */
+	role_sw_desc.fwnode = of_fwnode_handle(np);
+	role_sw_desc.set = eud_role_switch_set;
+	role_sw_desc.driver_data = path;
+	snprintf(path->name, sizeof(path->name), "eud-path%u", path_num);
+	role_sw_desc.name = path->name;
+
+	path->eud_sw = usb_role_switch_register(chip->dev, &role_sw_desc);
+	if (IS_ERR(path->eud_sw)) {
+		dev_err(chip->dev, "Failed to register EUD role switch for path %d: %ld\n",
+			path_num, PTR_ERR(path->eud_sw));
+		return PTR_ERR(path->eud_sw);
+	}
+
 	return 0;
 }
 
@@ -359,11 +424,6 @@ static int eud_probe(struct platform_device *pdev)
 
 	chip->dev = &pdev->dev;
 
-	chip->role_sw = usb_role_switch_get(&pdev->dev);
-	if (IS_ERR(chip->role_sw))
-		return dev_err_probe(chip->dev, PTR_ERR(chip->role_sw),
-					"failed to get role switch\n");
-
 	ret = devm_add_action_or_reset(chip->dev, eud_role_switch_release, chip);
 	if (ret)
 		return ret;
-- 
2.34.1



Return-Path: <devicetree+bounces-231041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DA003C0904E
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 14:30:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 77A961891639
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 12:30:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E82C2FBE15;
	Sat, 25 Oct 2025 12:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eg8zh72s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BF792FBE02
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 12:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761395360; cv=none; b=jrF6kQXRduAgCjxL6xSoRPOxyP+XHl9sX3cjnA7odYseYUoMF4CeugT3VunVZ0B37fdqDqY3q6Nuqi9p/CDlg1cuAZaipF3FXdTl5lfcSKEfX7YSU0rftMGG4LES3gz7pR/gXht/j70PAMHcAQFGzpqxIxFRRHdcJ+qkLmo6iOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761395360; c=relaxed/simple;
	bh=3oKD9asDeu7dq9BdQ/6zM3oxTs7BSpgeYTy2Ty1s0fo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tLZnt4dw/xVXWe+vYKCwuDR6kUO4r7fHeeW6Wh7RNTDjBO8KCKjANkmugMrpwqLa2k8Bpc7qwhLF8oxbeqApwzAFRTAcAfD1OEGZ64p+7lmO6B+TgsqeWnWBfgYEjizuSpPC6tB4rZuSWs+3+wBb4tKy9spe/+0iXpUUY490+dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eg8zh72s; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59P4Bvdj263454
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 12:29:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=a/p/A1eGBzF
	kzx4/F5s4V+NhINxV6WPbC6T+eR2JzaU=; b=eg8zh72sXGTQKFBfQtHW9UHHAqj
	mfvDhxPG7sHAMEnI2ovhywB9HcCj3bc9B1ycUm9ETbY6+DAuiu2H7I+cti/H44W0
	W6N6lEjmuUaS4AvQ1FFzYsLfff7Jx5aHDkoMJM31wj9GMZGflN/eK+MD/NLfVCkw
	zgxrz0v+PT0vcfXYqYzNb5OxpTHmE4IK3rDlHldHCYT85O3vJoYi3BoXRb4DAMss
	BQiEBTy5G7tD1a2yHOp7RCrUPQXTx0ty7RmGrhZUlp4caaJP9s+wtBNlU7Ze+4Nx
	3ISt3O+h/hWHdGguVQUAKPhJfWNjWAmeTihptN9phjGxUbYqy2f8BnBM4gw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a0qad8gvr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 12:29:17 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2697410e7f9so73269865ad.2
        for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 05:29:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761395357; x=1762000157;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a/p/A1eGBzFkzx4/F5s4V+NhINxV6WPbC6T+eR2JzaU=;
        b=b25BFpLNaKLV4sDxybPwXnP4ebEocm0GWnVnUVX2gdjlXdrTlbcGvZla7hJUR53KTu
         FIvZSV4wA7FIeL6AdLIoRTX4jmPSnkJz/MjnSyhoYzutLy1/s5BHm+rIGz1fGk2QJokx
         HydSbBzQv4ckTbmMZKGJ/ji0CzwelVVtbCjvX/QsXTpcDlHnlTqCTLsXkrW4nrXBxZCN
         fbpRMcOlwXkYP4kdTCfVMsDNjq0R+tv8tJs7KjENbbIOiBNFPB1hRUAlRp2MiQNfSNP/
         okAilecoc4X1gjhC7I8mMSixQVnariHnNJtFU6D2LgwQUMPfHzc2gCJ26fmE0JXp74hs
         1MHw==
X-Forwarded-Encrypted: i=1; AJvYcCWY6l/V1hZA7KIXOEGuFf6N0nJ5acKOPDPemq6N1nD+rupni2tmZT0i9d1b00XiZfytYHEZQsB7171N@vger.kernel.org
X-Gm-Message-State: AOJu0YztwO73TV+tio4TNm+9RuXizWOZmMACYg9iSls/YOBRNPIFZXlA
	Hw81Kn3lboOfmENgssACl6m8EmsMw4Jt3SMMP22M8XekOlxUT1CM9eeipe4Of9JCJbHtz/wTt/b
	0Y5YLdGqnYTDH0UcL/d9SqsNzAkXzXAsg7zW5wxC+PZvjzxUcHn9xSDvTJG0lFg2y
X-Gm-Gg: ASbGnctmz3mMdKD173WfdCRHf9jW3CsaWtsd27M9WckW2ZQ0LmIdFSCw/21bPwCapLZ
	AArMZJtg1W6ZkBPxjR6KBfOpbcPW5irCHHtg+gyt+VoVPaDBBWgBMmgbtqJ9t+ZxSjc6ZUwnDXJ
	qRNszZ5NiSNYLSeL+hgVrt5dmKvyz3sGpJ8zM82KhjEJ3tlDUtw8a1EjF8NXhIvVm5wcfUchdUr
	aegA+tqN0p+Q+dHqGc3tgothRqiYpaSAFNm/PekwdrwhhHD8YIBqN5yUBfhTAraTYH9UB4pEbUM
	USpq1MHmkSVYfGxCJzu1MHd1BAwFs1kS3HKc7IWY1v57OGQZ+i7sJM41sFjSWRXZVUN6ODsFVlx
	dcHEkGArhXM70xOUQW3SlQ2DMmaFwJf7mO7rP
X-Received: by 2002:a17:903:1a4c:b0:24c:c8e7:60b5 with SMTP id d9443c01a7336-290c9cb6243mr167542045ad.16.1761395357407;
        Sat, 25 Oct 2025 05:29:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH4owedQc9Nh9sSLnEvDQXTX/A45HjRThim/34DYcbRkjJsoKGERXS0kQwcEv6sbfD8wRTZuw==
X-Received: by 2002:a17:903:1a4c:b0:24c:c8e7:60b5 with SMTP id d9443c01a7336-290c9cb6243mr167541705ad.16.1761395356936;
        Sat, 25 Oct 2025 05:29:16 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d2317csm22381325ad.48.2025.10.25.05.29.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Oct 2025 05:29:16 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Biju Das <biju.das.jz@bp.renesas.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v4 2/2] usb: typec: hd3ss3220: Enable VBUS based on ID pin state
Date: Sat, 25 Oct 2025 17:58:54 +0530
Message-Id: <20251025122854.1163275-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251025122854.1163275-1-krishna.kurapati@oss.qualcomm.com>
References: <20251025122854.1163275-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: J6X7P-Wi9OeDbNNqFzV59DamKEWNNhD0
X-Authority-Analysis: v=2.4 cv=TcObdBQh c=1 sm=1 tr=0 ts=68fcc29e cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=3eHL1KmHa9FwJ4YL2wMA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: J6X7P-Wi9OeDbNNqFzV59DamKEWNNhD0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI1MDExMyBTYWx0ZWRfX2rNQV5/Ts7Wj
 VuvuXDKSc1ZDYWPj5SZ1ug9NCVgtWg1s5KwhBrkTMokxfV1lIKhc/bMudhs5N9jYtnwa2ZSaTK2
 5KzC2Q/L6bFM65E4QLKbH9AMBycRNVg9MgfFkk0YYSIVvo3LlvvagE4fd6ljtVVbmg+/UiJjpIU
 20WvgnfTIXt8rGz+oI7O4RL5j21XSN/RYYVvsFVFbuKAaaSqH1Fj3eKingTYjW6ovyJofxy3Nml
 IVWJ9Nq+rLZxV7g9+FxcYzVIZ2e2JddwpiHNwVX+9q4D1Gd2FX6CN14lC8DRAzYNrVC0rXawy/H
 zShDYmdOeO5EyBDZTm1IwO9fj1qq7gGCrUV8eoUHzJ7XWPWH6LqVQ3jlc8Tjpy+1JATwmpcnTdc
 zY88x7o8fjHx5NYR2EltcKJq2qF2mg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-25_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 bulkscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510250113

There is a ID pin present on HD3SS3220 controller that can be routed
to SoC. As per the datasheet:

"Upon detecting a UFP device, HD3SS3220 will keep ID pin high if VBUS is
not at VSafe0V. Once VBUS is at VSafe0V, the HD3SS3220 will assert ID pin
low. This is done to enforce Type-C requirement that VBUS must be at
VSafe0V before re-enabling VBUS"

Add support to read the ID pin state and enable VBUS accordingly.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 drivers/usb/typec/hd3ss3220.c | 79 +++++++++++++++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/drivers/usb/typec/hd3ss3220.c b/drivers/usb/typec/hd3ss3220.c
index 3ecc688dda82..970c0ca8f8d4 100644
--- a/drivers/usb/typec/hd3ss3220.c
+++ b/drivers/usb/typec/hd3ss3220.c
@@ -15,6 +15,9 @@
 #include <linux/usb/typec.h>
 #include <linux/delay.h>
 #include <linux/workqueue.h>
+#include <linux/gpio/consumer.h>
+#include <linux/regulator/consumer.h>
+#include <linux/of_graph.h>
 
 #define HD3SS3220_REG_CN_STAT		0x08
 #define HD3SS3220_REG_CN_STAT_CTRL	0x09
@@ -54,6 +57,11 @@ struct hd3ss3220 {
 	struct delayed_work output_poll_work;
 	enum usb_role role_state;
 	bool poll;
+
+	struct gpio_desc *id_gpiod;
+	int id_irq;
+
+	struct regulator *vbus;
 };
 
 static int hd3ss3220_set_power_opmode(struct hd3ss3220 *hd3ss3220, int power_opmode)
@@ -319,6 +327,49 @@ static const struct regmap_config config = {
 	.max_register = 0x0A,
 };
 
+static irqreturn_t hd3ss3220_id_isr(int irq, void *dev_id)
+{
+	struct hd3ss3220 *hd3ss3220 = dev_id;
+	int ret;
+	int id;
+
+	if (IS_ERR_OR_NULL(hd3ss3220->vbus))
+		return IRQ_HANDLED;
+
+	id = hd3ss3220->id_gpiod ? gpiod_get_value_cansleep(hd3ss3220->id_gpiod) : 1;
+
+	if (!id) {
+		ret = regulator_enable(hd3ss3220->vbus);
+		if (ret)
+			dev_err(hd3ss3220->dev, "enable vbus regulator failed\n");
+	} else {
+		regulator_disable(hd3ss3220->vbus);
+	}
+
+	return IRQ_HANDLED;
+}
+
+static int hd3ss3220_get_vbus_supply(struct hd3ss3220 *hd3ss3220)
+{
+	struct device_node *hd3ss3220_node = hd3ss3220->dev->of_node;
+	struct device_node *np;
+	int ret = 0;
+
+	np = of_graph_get_remote_node(hd3ss3220_node, 0, 0);
+	if (!np) {
+		dev_err(hd3ss3220->dev, "failed to get device node");
+		return -ENODEV;
+	}
+
+	hd3ss3220->vbus = of_regulator_get_optional(hd3ss3220->dev, np, "vbus");
+	if (IS_ERR(hd3ss3220->vbus))
+		hd3ss3220->vbus = NULL;
+
+	of_node_put(np);
+
+	return ret;
+}
+
 static int hd3ss3220_probe(struct i2c_client *client)
 {
 	struct typec_capability typec_cap = { };
@@ -354,6 +405,34 @@ static int hd3ss3220_probe(struct i2c_client *client)
 		hd3ss3220->role_sw = usb_role_switch_get(hd3ss3220->dev);
 	}
 
+	hd3ss3220->id_gpiod = devm_gpiod_get_optional(hd3ss3220->dev, "id", GPIOD_IN);
+	if (IS_ERR(hd3ss3220->id_gpiod))
+		return PTR_ERR(hd3ss3220->id_gpiod);
+
+	if (hd3ss3220->id_gpiod) {
+		hd3ss3220->id_irq = gpiod_to_irq(hd3ss3220->id_gpiod);
+		if (hd3ss3220->id_irq < 0) {
+			dev_err(hd3ss3220->dev, "failed to get ID IRQ\n");
+			return hd3ss3220->id_irq;
+		}
+
+		ret = devm_request_threaded_irq(hd3ss3220->dev,
+						hd3ss3220->id_irq, NULL,
+						hd3ss3220_id_isr,
+						IRQF_TRIGGER_RISING |
+						IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
+						dev_name(hd3ss3220->dev), hd3ss3220);
+		if (ret < 0) {
+			dev_err(hd3ss3220->dev, "failed to get id irq\n");
+			return ret;
+		}
+	}
+
+	ret = hd3ss3220_get_vbus_supply(hd3ss3220);
+	if (ret)
+		return dev_err_probe(hd3ss3220->dev,
+				     PTR_ERR(hd3ss3220->vbus), "failed to get vbus\n");
+
 	if (IS_ERR(hd3ss3220->role_sw)) {
 		ret = PTR_ERR(hd3ss3220->role_sw);
 		goto err_put_fwnode;
-- 
2.34.1



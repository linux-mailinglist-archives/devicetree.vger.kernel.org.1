Return-Path: <devicetree+bounces-5064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B6C7B501A
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 12:20:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 3D065281C3F
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 10:20:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 225E5EACB;
	Mon,  2 Oct 2023 10:20:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E34C4EACE
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 10:20:36 +0000 (UTC)
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 443A0F1
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 03:20:34 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3248ac76acbso3588791f8f.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 03:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696242032; x=1696846832; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fvPQtc3n+AQ43mIboHGUgEC6liC/yfr/8rGlBJbQd4M=;
        b=i8cVf5/Sgrtwqj9B4+mwRdMn3KaA7Da8yK4N8w9jP9oLYeS2vz2Z/TDn+zezi6kTT3
         r2osTCRZ0J9Q1w3IznBpxq8gTQ5A27n9ZjaYTeAsJaORuEHI7BScaeKr3kzBEC5Ln4x0
         boke+BNufRNNCiSNLamzgob2eajTSOHQT/yEJMWXwNnhkvaBuxSyG7Xj34gv44e2+AsZ
         kYTqHcibwUGdszNdcu5UG4SOXU8UMfWo+XSATW9ifXiIXDSk29roT8QmWtSTfaMBqVNS
         OhGzb/YCycwr2oBKnSzDQTwbiEMLB99b8kZZNetHJ8Tx2xbUi6BEbdspHzslDFhs3VYs
         8iPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696242032; x=1696846832;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fvPQtc3n+AQ43mIboHGUgEC6liC/yfr/8rGlBJbQd4M=;
        b=GirlMn5xcPWUNIG1R7F43BjqaM1i+zduczipWspkFcMVPstFU4SvyGNkp7TXUuhnM3
         fGlQ9Nf9FiwA7gcs06FJGJH8dfrW14stzqzmGAysDyLpM89XI2/Q/DI67O383QTM4+hO
         cgh858dSA6HRLU7hngdc8pi8YwzwjVuSbFj/3QWJvgItwQBLa3zw/j1zTcKjo2n0zR+P
         LBiwmLJPYyBfDtEAuC70mUUf5LnS1bz89e182oT6IWnMXw7Yqs9ODgDGsPy6EnFYmbiS
         oQpuVVPi1hHd/LEeUWJI/is4btiVVcrIH6UKtWolZfzmGF6CEbw7ixYh+RKI8EUCLhyA
         X8YQ==
X-Gm-Message-State: AOJu0Yyn9s+8Gds2ONkRbwTdhgKqxZfPosK7SbCSlS6hK6i8OtnbFtTt
	fO6FRx69Vp0RR9Zn9Yg03w2rpA==
X-Google-Smtp-Source: AGHT+IECdLWreIbmHwEsopXALpa+60ZA82MQQlaUknSlKDWOENDphq45rofB8R530GJjKBCe1dToJw==
X-Received: by 2002:a5d:5944:0:b0:313:e971:53af with SMTP id e4-20020a5d5944000000b00313e97153afmr9057173wri.32.1696242032607;
        Mon, 02 Oct 2023 03:20:32 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id g18-20020a5d5552000000b003196b1bb528sm27822901wrw.64.2023.10.02.03.20.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 03:20:32 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 02 Oct 2023 12:20:22 +0200
Subject: [PATCH v2 2/4] usb: ucsi: glink: use the connector orientation
 GPIO to provide switch events
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231002-topic-sm8550-upstream-type-c-orientation-v2-2-125410d3ff95@linaro.org>
References: <20231002-topic-sm8550-upstream-type-c-orientation-v2-0-125410d3ff95@linaro.org>
In-Reply-To: <20231002-topic-sm8550-upstream-type-c-orientation-v2-0-125410d3ff95@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3618;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=2Yx8kmPz9CwCyctqse+y5FCFBBh71PuYcaSNl/C5414=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlGplsF7+Dg78ioO42z+RuUb9rBfP5QAdO7swu1U+v
 EZHsKOaJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZRqZbAAKCRB33NvayMhJ0aDdD/
 sHvCQ54Ei75dbWMtkUnD2MA9Hd4JvdfmCEBHJGZoMKSPHM6IcIxOLSXVgZViCk7+XT4p1oxnRHg6Gx
 YlGdsQ9TkgbvxXJ9BHlIh0++1GgO7wwHT07Fm7nxly3kKCgcEM+wszHLBPlp/8xCyNGHRYjN1d59MI
 p6mzWy9ssA2/bBq9ZF8JA8RyKQPAzOjQ0RiGBWOnUdPg5Aqr1vDbm0XwR5hEdeO+6driVpx761Lykv
 JZtwsNZNCqWgpWvrRRBhjaN6P4n4ei0higGOeva7YIl6UFomKOZiGgUk5Mi5Q3jacS/t4dia5H/sf0
 25bhM/QFfHbqCu/T0xmE2xOBF+vTvPBFN8uX98FMPk+fUQHSEy24ajC3XLf1ZbUauuF9ob3o3uRuvv
 6Pu8M5OyZ2IwoDqLrUuRPMFYEgX/ly6Aqmx+x717asxvIssUa+NmsI9WpyxGMyAMeF/VxkTb/wpdfV
 bYoD9OZpRfJ9Eae9pUdGzNd6E6vlyaAf2Nh5XLBWgKplvy9/K/xLhZ6Val2kh8KsWZgKtuiyAOipvB
 rFFAU0ab9UrXBuunBnH/3ZezOavkzblQ6eKkBNqJiTEPMGrR81gSKsKwtef9Mqi2jkLB0vjPFy7XkC
 b84pfO+COAb8Vr1cXoVOaeXuq2SzVrhQlA6K0arHujksBAD0TtYC2EkFK+tA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On SM8550, the non-altmode orientation is not given anymore within
altmode events, even with USB SVIDs events.

On the other side, the Type-C connector orientation is correctly
reported by a signal from the PMIC.

Take this gpio signal when we detect some Type-C port activity
to notify any Type-C switches tied to the Type-C port connectors.

Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/usb/typec/ucsi/ucsi_glink.c | 54 ++++++++++++++++++++++++++++++++++++-
 1 file changed, 53 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/typec/ucsi/ucsi_glink.c b/drivers/usb/typec/ucsi/ucsi_glink.c
index bb1854b3311d..db6e248f8208 100644
--- a/drivers/usb/typec/ucsi/ucsi_glink.c
+++ b/drivers/usb/typec/ucsi/ucsi_glink.c
@@ -8,9 +8,13 @@
 #include <linux/mutex.h>
 #include <linux/property.h>
 #include <linux/soc/qcom/pdr.h>
+#include <linux/usb/typec_mux.h>
+#include <linux/gpio/consumer.h>
 #include <linux/soc/qcom/pmic_glink.h>
 #include "ucsi.h"
 
+#define PMIC_GLINK_MAX_PORTS	2
+
 #define UCSI_BUF_SIZE                   48
 
 #define MSG_TYPE_REQ_RESP               1
@@ -52,6 +56,9 @@ struct ucsi_notify_ind_msg {
 struct pmic_glink_ucsi {
 	struct device *dev;
 
+	struct gpio_desc *port_orientation[PMIC_GLINK_MAX_PORTS];
+	struct typec_switch *port_switch[PMIC_GLINK_MAX_PORTS];
+
 	struct pmic_glink_client *client;
 
 	struct ucsi *ucsi;
@@ -220,8 +227,20 @@ static void pmic_glink_ucsi_notify(struct work_struct *work)
 	}
 
 	con_num = UCSI_CCI_CONNECTOR(cci);
-	if (con_num)
+	if (con_num) {
+		if (con_num < PMIC_GLINK_MAX_PORTS &&
+		    ucsi->port_orientation[con_num - 1]) {
+			int orientation = gpiod_get_value(ucsi->port_orientation[con_num - 1]);
+
+			if (orientation >= 0) {
+				typec_switch_set(ucsi->port_switch[con_num - 1],
+						 orientation ? TYPEC_ORIENTATION_REVERSE
+							     : TYPEC_ORIENTATION_NORMAL);
+			}
+		}
+
 		ucsi_connector_change(ucsi->ucsi, con_num);
+	}
 
 	if (ucsi->sync_pending && cci & UCSI_CCI_BUSY) {
 		ucsi->sync_val = -EBUSY;
@@ -282,6 +301,7 @@ static int pmic_glink_ucsi_probe(struct auxiliary_device *adev,
 {
 	struct pmic_glink_ucsi *ucsi;
 	struct device *dev = &adev->dev;
+	struct fwnode_handle *fwnode;
 	int ret;
 
 	ucsi = devm_kzalloc(dev, sizeof(*ucsi), GFP_KERNEL);
@@ -309,6 +329,38 @@ static int pmic_glink_ucsi_probe(struct auxiliary_device *adev,
 
 	ucsi_set_drvdata(ucsi->ucsi, ucsi);
 
+	device_for_each_child_node(dev, fwnode) {
+		struct gpio_desc *desc;
+		u32 port;
+
+		ret = fwnode_property_read_u32(fwnode, "reg", &port);
+		if (ret < 0) {
+			dev_err(dev, "missing reg property of %pOFn\n", fwnode);
+			return ret;
+		}
+
+		if (port >= PMIC_GLINK_MAX_PORTS) {
+			dev_warn(dev, "invalid connector number, ignoring\n");
+			continue;
+		}
+
+		desc = devm_gpiod_get_index_optional(&adev->dev, "orientation", port, GPIOD_IN);
+
+		/* If GPIO isn't found, continue */
+		if (!desc)
+			continue;
+
+		if (IS_ERR(desc))
+			return dev_err_probe(dev, PTR_ERR(desc),
+					     "unable to acquire orientation gpio\n");
+		ucsi->port_orientation[port] = desc;
+
+		ucsi->port_switch[port] = fwnode_typec_switch_get(fwnode);
+		if (IS_ERR(ucsi->port_switch[port]))
+			return dev_err_probe(dev, PTR_ERR(ucsi->port_switch[port]),
+					"failed to acquire orientation-switch\n");
+	}
+
 	ucsi->client = devm_pmic_glink_register_client(dev,
 						       PMIC_GLINK_OWNER_USBC,
 						       pmic_glink_ucsi_callback,

-- 
2.34.1



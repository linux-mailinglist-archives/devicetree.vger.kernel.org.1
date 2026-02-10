Return-Path: <devicetree+bounces-264523-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGsWGimIi2lWVgAAu9opvQ
	(envelope-from <devicetree+bounces-264523-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 20:34:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0849811EAB4
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 20:34:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D300B3052B84
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 19:33:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80A892F6184;
	Tue, 10 Feb 2026 19:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fUFdOAlV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2DD2303C97
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 19:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770752015; cv=none; b=YrxDyv6lmHntuKNxQmWKw0J0btFRNZ5T6d2lEbV4hpbUKKGr9CCTmIwumtkvSIJd8FaMnO1O7Fu9fvRl0YkcjmKslpQZAsn4ACTDqiAr8r+kVbrMUlFs7d+/5I9r4N1BR2lKrDT5MCv9VoyL0zre43AAlwg7aH0bz3Q6dFuz1oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770752015; c=relaxed/simple;
	bh=KI9zNXMWd2Tk8DQZeAdSk3D1yD3w2ogVdwD3LJhdYNo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jYt3XWFFyNYd3lzPD6+C0MhULUnWWoiE9ZNiHmIdSF96XSVNcjuzLhzYmNb8E5kHmvZYLMylj6fjg8ZcYqnijGJWUQSrGvYnvlBbM/Q9FFdiQRBtTWOSUhqhcHwQbHoGhItId4wkdxhlxafPZR1XnZ53KrE9uJqNp2v+kiu8lKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fUFdOAlV; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4806dffc64cso52461305e9.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 11:33:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770752012; x=1771356812; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qIMZFFlxNoDMAobvvtg+Lzsbavm4DstY/euvQFPaAC4=;
        b=fUFdOAlVPELCTK4IHKp2WJzA4Ly5JAAa6uKcflcSZN5DYulyW3VOO33BwV+EhPI7mq
         IcLDRso2X+szDP6zBlgUI6S/kvQHd35MAFjKxC53k/fUIp7DTQI4cy/tpoH9O+i5rZIG
         Fjmpq7fkQsTv4VBfKtdTIGfgCA5Xj/QfKdMBPDAOz5VWsRzXL5cNa16AMF1R1UMh1TUv
         AGdSFTo9d6hw5sycD8YCHdA4MR0+jhVyQwZR1egHZi6ZmnZL3QnqwZLQM++JSp7QGY4s
         Q5eD3afWnuUcvIiSuRa91yP58/2bG3Zp43radhsjzYVHy7NDR66BQX5ZW+UIOR6dv+yE
         vcJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770752012; x=1771356812;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qIMZFFlxNoDMAobvvtg+Lzsbavm4DstY/euvQFPaAC4=;
        b=whyuN7yqJ8uUtAzGT+dsy/2Sg9HhwZlynJLLJihRv/LE86JTK04j2bc51DEyMpYiJK
         khBDbXCwm6+2gXgoZ03LLMZRDaOXR2kImdtpPtwygqEjLTGUw330k0iQWIDlo4xF/Ehv
         Yp0LxyJF67K1H2oyLFRCA+sNqSZkLMGyq0bJ1RWy3OKvETbxlePqThYmNuGeQeWjyyPw
         vEWz166FvNcdAVOq5/rW8hcCSTK2uh3asb+3vH7Rh9s8CNdVlik98Tinx7T+9MGAevQz
         kSDTYEK8/xkLZGv63JsX6es5r7/l4UlcIs3rksY+IgvOREaLkP5+Gp9OpKZuEHkvqEKO
         PWfQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5+P2jXX7WXRbkkAkSxKnVVZ8qv9/UbyN86PzpDO2sPKJW4URVyzUE2cKOTi3KrOm0s+f87sETGygD@vger.kernel.org
X-Gm-Message-State: AOJu0YzgSVQgzxn4RQGQdJE5Vb601BILXBomp+7OJsVRbAoD7EOmgUAV
	rBfwU5vjpVLJ6IOvxyLoNmAyH76aDEbQdNJGrTBxFTlr7c/KFdeUDd1U
X-Gm-Gg: AZuq6aK43s5NmxYK/lky9xuxcyo4wSghHHO/aELTkKi04Qud1hnxHXWPuN3YbnSIEti
	AII0c6zh8yCwePqNpjq35hM4Hqi7mSwgy1M6XMhGfXXzBhTsFy0Rng3Lguqo4nAVelBQXJXMItu
	US91kX3GxlAdRVSzjfJUdAyyc6QE63M8ktW5Obo2nI2WSWoU1OJt3lRUxfJJjnXil9NAyIxzX9A
	pQxX1OOsItALy0qQvObZyrAMYM6inzPSHE/YCvj96TmEivk2DqVo5101Z1tX9CO+Aznq6MIBQmk
	kzQogp+oQ9Nfnq/JkbNGIhUXsClGUvRaBCbOc6gsJzQFj3NgIjYwyKOB/bjMXnyABeKuB4Vt44V
	UzEVTrG4pv935i0kr27aDb0W4IW8Z6CHT3F2kwLgNM+EpRG0TXRtDpHDZCuf9NaB3J5RowIC4Tu
	VDWEjnhW5oVRlUGG5eRddXI5N/vgjzKBgQPruDudk+RR5ix0Zbz2ZgCKU2R90=
X-Received: by 2002:a05:600c:1548:b0:480:1e9e:f9c with SMTP id 5b1f17b1804b1-48320933613mr219892995e9.10.1770752012271;
        Tue, 10 Feb 2026 11:33:32 -0800 (PST)
Received: from localhost (39.31.66.37.rev.sfr.net. [37.66.31.39])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d7d55c9sm75779815e9.8.2026.02.10.11.33.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 11:33:31 -0800 (PST)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Tue, 10 Feb 2026 20:32:53 +0100
Subject: [PATCH v9 2/3] clk: stm32mp25: add firewall grant_access ops
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260210-b4-rcc-upstream-v9-2-17ca1db7613f@gmail.com>
References: <20260210-b4-rcc-upstream-v9-0-17ca1db7613f@gmail.com>
In-Reply-To: <20260210-b4-rcc-upstream-v9-0-17ca1db7613f@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Gabriel Fernandez <gabriel.fernandez@foss.st.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
X-Mailer: b4 0.15-dev-47773
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264523-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[baylibre.com,kernel.org,gmail.com,foss.st.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[legofficclement@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org,gmail.com,foss.st.com];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,st.com:email]
X-Rspamd-Queue-Id: 0849811EAB4
X-Rspamd-Action: no action

From: Clément Le Goffic <clement.legoffic@foss.st.com>

On STM32MP25, the RCC peripheral manages the secure level of resources
that are used by other devices such as clocks.
Declare this peripheral as a firewall controller.

Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
Reviewed-by: Gabriel Fernandez <gabriel.fernandez@foss.st.com>
Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
 drivers/clk/stm32/clk-stm32mp25.c | 40 ++++++++++++++++++++++++++++++++++++++-
 1 file changed, 39 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/stm32/clk-stm32mp25.c b/drivers/clk/stm32/clk-stm32mp25.c
index 52f0e8a12926..af4bc06d703a 100644
--- a/drivers/clk/stm32/clk-stm32mp25.c
+++ b/drivers/clk/stm32/clk-stm32mp25.c
@@ -4,8 +4,10 @@
  * Author: Gabriel Fernandez <gabriel.fernandez@foss.st.com> for STMicroelectronics.
  */
 
+#include <linux/bus/stm32_firewall.h>
 #include <linux/bus/stm32_firewall_device.h>
 #include <linux/clk-provider.h>
+#include <linux/device.h>
 #include <linux/io.h>
 #include <linux/platform_device.h>
 
@@ -1602,6 +1604,11 @@ static int stm32_rcc_get_access(void __iomem *base, u32 index)
 	return 0;
 }
 
+static int stm32mp25_rcc_grant_access(struct stm32_firewall_controller *ctrl, u32 firewall_id)
+{
+	return stm32_rcc_get_access(ctrl->mmio, firewall_id);
+}
+
 static int stm32mp25_check_security(struct device_node *np, void __iomem *base,
 				    const struct clock_config *cfg)
 {
@@ -1970,6 +1977,7 @@ MODULE_DEVICE_TABLE(of, stm32mp25_match_data);
 
 static int stm32mp25_rcc_clocks_probe(struct platform_device *pdev)
 {
+	struct stm32_firewall_controller *rcc_controller;
 	struct device *dev = &pdev->dev;
 	void __iomem *base;
 	int ret;
@@ -1982,7 +1990,36 @@ static int stm32mp25_rcc_clocks_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	return stm32_rcc_init(dev, stm32mp25_match_data, base);
+	ret = stm32_rcc_init(dev, stm32mp25_match_data, base);
+	if (ret)
+		return ret;
+
+	rcc_controller = devm_kzalloc(&pdev->dev, sizeof(*rcc_controller), GFP_KERNEL);
+	if (!rcc_controller)
+		return -ENOMEM;
+
+	rcc_controller->dev = dev;
+	rcc_controller->mmio = base;
+	rcc_controller->name = dev_driver_string(dev);
+	rcc_controller->type = STM32_PERIPHERAL_FIREWALL;
+	rcc_controller->grant_access = stm32mp25_rcc_grant_access;
+
+	platform_set_drvdata(pdev, rcc_controller);
+
+	ret = stm32_firewall_controller_register(rcc_controller);
+	if (ret) {
+		dev_err(dev, "Couldn't register as a firewall controller: %d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void stm32mp25_rcc_clocks_remove(struct platform_device *pdev)
+{
+	struct stm32_firewall_controller *rcc_controller = platform_get_drvdata(pdev);
+
+	stm32_firewall_controller_unregister(rcc_controller);
 }
 
 static struct platform_driver stm32mp25_rcc_clocks_driver = {
@@ -1991,6 +2028,7 @@ static struct platform_driver stm32mp25_rcc_clocks_driver = {
 		.of_match_table = stm32mp25_match_data,
 	},
 	.probe = stm32mp25_rcc_clocks_probe,
+	.remove = stm32mp25_rcc_clocks_remove,
 };
 
 static int __init stm32mp25_clocks_init(void)

-- 
2.53.0



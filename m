Return-Path: <devicetree+bounces-322638-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SvZwKPkSTmpeCgIAu9opvQ
	(envelope-from <devicetree+bounces-322638-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 11:06:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 44EBD723718
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 11:06:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Hgi71Dzj;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322638-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-322638-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D00B9300E003
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 09:05:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E54D9386C15;
	Wed,  8 Jul 2026 09:05:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A7F4071FE
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 09:05:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783501543; cv=none; b=SuXINtXZhdziYfvmWUkbGxd37R27zromZ6K70XCFk88j0u5YXHESH23NQ7YtZ2uGCyNGRL7hiHdukjTTsaQwq7QipD4urmHnoSdgJXRZQXPAwsUEauhtmRgbnWx+4TJ4WDFejo1BxNs7he9PXPT4joiQLrN4+pXH8OobLeQMqyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783501543; c=relaxed/simple;
	bh=UhYLkoXdYToLt11QxRM3I3a9Ezx+7AJ+xJHA7M6++Wk=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pRM5q9QlYx9hQLF/RJyBE/iZfyz2V5Xtc0vsPdJ4NROM7jp/a2SWOTHcoa8dh3kcfwHp0tU0PV4CJ1x7zctwowKJ7DG5Ul4X7q4LKHiixWsrTdwwD+ZghGYuRp1oEBQuBs4OHyo8O0WOmtqREYzLu0rqw+j9Knj4jCF1d5TIh6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Hgi71Dzj; arc=none smtp.client-ip=209.85.221.44
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-47df343a346so134724f8f.2
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 02:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783501540; x=1784106340; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=2euWSsPEF/v1H3boU+OtaRrXIWKLVevLYYthNauJxnw=;
        b=Hgi71DzjsvoB0ChK9uZGpBz40cJoCSBvJxE1v/8gOS6gShyBbHmQ7lKqeFWrNpdP7D
         W+c0oWnQ92KTF9G3V7tfJS15UWSn9j6/Mcrd3ZT/bTrcusWKOmZ5GAdygBlsv9sZHfoC
         UA8YN+O6RNf/EfaJqCYfzcScbbDyeEuerO4MasEkRXuKQZzMpXiiAwl7i0eWMQ/D59ec
         nsqoIHA8x3VnrYBA2ZtYbiompdpR/WWb6QhgRC3dyx8EZvLZbnLMXhIjeQA8k3+1d6ia
         Dv0klNFjdxCQjZGzC1E2z2BczxRhZ7creU2xPGVkMO7nECKC77t3GIk6bVfiOg9x+/rA
         YFlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783501540; x=1784106340;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=2euWSsPEF/v1H3boU+OtaRrXIWKLVevLYYthNauJxnw=;
        b=r8AQpvB+eZbWaJxYXal5YyH4xrhAIbmeZeB0K3Zt40lX3f17bo55Dy4DH3WyeR32Z6
         4W8CJtEVSfKhBT6/d4nP3x157fG2KLK7fqZRLXLgMReNDCydm+kLJ7msaJIBxkyrZNIH
         WHvu4E8vLhOc8cffdSSminuRDBABcHg8qqdJfmyCfdXVGHr5TJX7dBdnrXh+HqIH0YV0
         nw/QBtwajHZCy1SSONPPwKv8RzbsEeMf4dXps9prXZBlbok7IXukFRC4WxYPDbSzBeDL
         1q0//qWNtYVGxD48k956EE/Uz8mQtg3Lfh2KyKldkUDAsnNy9O0hWfBSQIVrnl7TGUE7
         g7Wg==
X-Forwarded-Encrypted: i=1; AHgh+RrmDXGg4WdAqJgRJx0wwvCjmz63ZGUbNU9Nr/NCGFnsBRF/+35yWMe0yd3Rfv66GgOkgi9PeVLQQjCN@vger.kernel.org
X-Gm-Message-State: AOJu0Yxs+UixjG4wbT46O9/PGqE4I4fOFUJ4MAlMxffCBjsvpP7ydNe7
	knLAhGXNnCBjC8yO2ZDf3zP4T5tJAKGk30V6NL2+s9rJznR5JXXcXOSB
X-Gm-Gg: AfdE7cnlEAshdUVpzz5MDbE0tgGRNOnlcXbDgI8r3j4X4rTG1DPsBe1VMHaaNbNQCHz
	UMkZMMpsszYrIXFshR7fz6PnVzqoLWSpPDv7FHHrV/tcfnuUoLdNj6AtSQZrQ4KVPbnUzRzVymv
	wK33vKaR6U1g2s7qV1BPWxhb+axVBsyp6/IxV7F17Nqz+tw6gFrHXw/TwyIab/8Gx8rmf15dnuz
	6ZwlWtAhpGK26OaUHUQshmouBYBPsQCJh9+fWJGSwd3KfmQYaGtcnbiQKW5hRshkLZd1jOpWlB+
	hPFv6jwaS6WdbxPivg5h2rB6PA1BhpYnzDY1TwKwIO79RxfmizxUSzvGzbCGsLSxuV4NU5SboiH
	S8RCZfDVljulK8oI++oi4KWhh4ZXlFRk8N9BuDewN7JLZFSyCOGyKTqu41h7U5yN+GemG2XYPUM
	gOINQow48ElIg3IMlerudmCrqlacdR/yISBsJB/m9SdKmNpkvz5R4g7i7uYYJ7nZ/3HMsYVHI5U
	d5lo7n3
X-Received: by 2002:a05:6000:382:b0:478:65a8:262d with SMTP id ffacd0b85a97d-47df07157f1mr1587607f8f.9.1783501540094;
        Wed, 08 Jul 2026 02:05:40 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-95-248-227-210.retail.telecomitalia.it. [95.248.227.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-47a9de1e785sm40674208f8f.8.2026.07.08.02.05.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 02:05:39 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Ryder Lee <ryder.lee@mediatek.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] PCI: mediatek: handle optional reset for perstout for AN7583
Date: Wed,  8 Jul 2026 11:05:29 +0200
Message-ID: <20260708090533.19734-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260708090533.19734-1-ansuelsmth@gmail.com>
References: <20260708090533.19734-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-322638-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:ryder.lee@mediatek.com,m:bhelgaas@google.com,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:ansuelsmth@gmail.com,m:linux-pci@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[mediatek.com,google.com,kernel.org,pengutronix.de,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 44EBD723718

The Airoha AN7583 provide the perstout via a dedicated reset line as using
the PCIe register is not possible as it will cause glitch.

Add support for it via the additional reset name pcie-perstout[slot] and
assert/deassert on an7583 specific startup.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 drivers/pci/controller/pcie-mediatek.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/pci/controller/pcie-mediatek.c b/drivers/pci/controller/pcie-mediatek.c
index 8b57c3d75b94..3d4de9d69407 100644
--- a/drivers/pci/controller/pcie-mediatek.c
+++ b/drivers/pci/controller/pcie-mediatek.c
@@ -175,6 +175,7 @@ struct mtk_pcie_soc {
  * @phys_base: Physical address of the I/O register base region
  * @list: port list
  * @pcie: pointer to PCIe host info
+ * @perstout_reset: pointer to port perstout reset control
  * @reset: pointer to port reset control
  * @sys_ck: pointer to transaction/data link layer clock
  * @ahb_ck: pointer to AHB slave interface operating clock for CSR access
@@ -198,6 +199,7 @@ struct mtk_pcie_port {
 	struct list_head list;
 	struct mtk_pcie *pcie;
 	struct reset_control *reset;
+	struct reset_control *perstout_reset;
 	struct clk *sys_ck;
 	struct clk *ahb_ck;
 	struct clk *axi_ck;
@@ -865,6 +867,9 @@ static int mtk_pcie_startup_port_an7583(struct mtk_pcie_port *port)
 	size = lower_32_bits(resource_size(entry->res));
 	regmap_write(pbus_regmap, args[1], GENMASK(31, __fls(size)));
 
+	reset_control_assert(port->perstout_reset);
+	reset_control_deassert(port->perstout_reset);
+
 	return mtk_pcie_startup_port_v2(port);
 }
 
@@ -1020,6 +1025,11 @@ static int mtk_pcie_parse_port(struct mtk_pcie *pcie,
 	if (PTR_ERR(port->reset) == -EPROBE_DEFER)
 		return PTR_ERR(port->reset);
 
+	snprintf(name, sizeof(name), "pcie-perstout%d", slot);
+	port->perstout_reset = devm_reset_control_get_optional_exclusive(dev, name);
+	if (PTR_ERR(port->perstout_reset) == -EPROBE_DEFER)
+		return PTR_ERR(port->perstout_reset);
+
 	/* some platforms may use default PHY setting */
 	snprintf(name, sizeof(name), "pcie-phy%d", slot);
 	port->phy = devm_phy_optional_get(dev, name);
-- 
2.53.0



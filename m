Return-Path: <devicetree+bounces-277205-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJlXBSufumkkZwIAu9opvQ
	(envelope-from <devicetree+bounces-277205-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:48:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EE22BBCE6
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:48:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 796BB302E76A
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:45:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D0A33D7D79;
	Wed, 18 Mar 2026 12:45:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="angjU91P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B929B3D669C
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773837919; cv=none; b=GTnPEJq9q88RrbbIjm9r708jQxkfUUlHgz4KZY3uERaoOPBs52E8/8JJVnQqqVD6EOOQ+vq/4Y4Rz2+eq8Fle70Fg/uC57B80HQlrkWQDwOzW7GTGzjqGFgNEpYfeLW8Z/D2YNZgpHYFIjNz2AGJGDR3G5kzhsS3gs4udQJ175Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773837919; c=relaxed/simple;
	bh=P6rovmF21O0HxvN3YC5rjtbQloF/pDPLKdTiJ8CCtSY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FKkyyvmvSxZFjHsIEAm+IfQZPni1olQAQVmHP08rkzp2SaJe4osw/bwGi2en14tXrBZpkEzgZC2P8I+aURJPKeztFXPI5Ejwv+iZ8T2qmTbNDDyfHzlgJHhO55AqXJew9sSnLk/XGnm1UHqLoGZc8P5d6g8QIBrVtsRAAWiGEzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=angjU91P; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-439c9bdc1eeso6849903f8f.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 05:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773837912; x=1774442712; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vIfxYsZxRlkkxMpcjHfUtwo6SOeCbLjlKgGjjFzsSYI=;
        b=angjU91Pu0UCSTdbeGGizbvRXHsegj4vkmn60RZrwZb8KQ7G3VE1lq7bedKclZtDMM
         +4qeXdY/t/xrSVoAc08JfN8Z8mh2oPvWdG0YgwSUGTBLFDWe7g4alTJmsuKEcL5lf2tb
         luEQsYBPT4RDpQA2ez82g6odNdHp3ccks1yVyJQ21+HFwLoFnjvyhH/WeIXi5toJesVC
         dO3PJZWTfdZ7I+ywU6x7Jp1i2S3GUx0tn9mjjxeraw2BKPaGliehChaoYMOFuo8sFVQB
         dSDvJSotHWecqxvYVIj9xGEBTHd4BW5JobbMMdMvI25KspHUFRcXmTINlex+RRe7uZOS
         vM3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773837912; x=1774442712;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vIfxYsZxRlkkxMpcjHfUtwo6SOeCbLjlKgGjjFzsSYI=;
        b=Y3NWNRw4hkkOeSH93qJUCZlh/xTHzsx1Dc9ZGDD8lW/ZzZWZrrdq3ysbwBk672uhOC
         dDJilk8hePmidwPTiwQeqLblmXngx2Z6xQYuYUECRHACeaqmlVQKvjMa84p90NJdb5zg
         9phUjwnIy5+N+7gil89ZkzXbnnZ1c2gjltwDOJNf/Crp7buQjrRwuLl/49Ssy2pbANul
         DDRcoVwj4kulq/71/gjTc6lvp0Osq7OJypVjcNu3WpBZv3jPsdRIdm3qi90zNZydjyTF
         VqtAngIPEq3msuQbmXeS0bxaerOWxwvpi6xse1sFyuzMGWTESSvJVtQ4ArKlTrPQeh/K
         sf+A==
X-Forwarded-Encrypted: i=1; AJvYcCU6eFCTHNHqCK5TtOdAu082WPzAqjZWzhMU8HLHh17hvXo5UB46Iqp9McT/Z8VQgSaPw/uChHqD3dWQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ6N+rYdvW5adaGmDbQfVhpfeazLWQxbH9eGezOM4ahH0yhUVI
	ZrRirPqxAYAFwepGMLawI4k7sXV/1C0KMU7N5l3e1q4wxwtHp8l6TowG
X-Gm-Gg: ATEYQzz5cLuRdtErtBheJEgrUUqlsmEoGJrsLi0CNl8EF1vvacSWxcwenfuViwIR2k2
	NtwWdBMScjQ2FaTwfT9MV1f4g2ugMYj3m4ovOZwV/5c9clVrmsqVSdPenRME8/bGdXVcuZwj7GI
	0jnHk5A/CHYxQVbvDSG17Zn82K3YISQmR0qZnJFpjYbMrjqVx0E3WsV+hc/dFpmj+FI421OJyBl
	GsiB7NgwysIMc0RA9go57ZCh5PCOQn0WxVS8vJ1M/ipKxmR9RrYp1ke3ufq8g37PAMfHq/VhkFr
	Y+7+/GbUR+F9rF+Iuf98TK0jNlYxGRD/CwsJ5h6cjp00EZtjGflSzp9bctdgGkV/5IPDCEJMmNc
	dKPuOgmQwDBnRLVPUFkYoa/lwgN+7MmGisCHllBeCSrvBZV8/5nLZd5UJsxxadN0DSx+ZVKwcp8
	zusuTjECBZixfuGXB5zi+SueB3DaJCs5NvmEcLKwt3KBe1lU11HmDUbd4IpI66FPSRle4AceyHo
	1Uy1pSbf5q/AdtLpbh2uQPshvQTsY88xrl5BJOrb43r/ws=
X-Received: by 2002:a05:6000:4284:b0:43b:498f:dceb with SMTP id ffacd0b85a97d-43b527a089amr5086490f8f.9.1773837911629;
        Wed, 18 Mar 2026 05:45:11 -0700 (PDT)
Received: from iku.example.org ([2a06:5906:61b:2d00:5f14:a98b:b4be:efbd])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b518985f6sm7888162f8f.25.2026.03.18.05.45.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 05:45:11 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: John Madieu <john.madieu.xa@bp.renesas.com>,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 4/5] PCI: rzg3s-host: Prepare System Controller handling for multiple PCIe channels
Date: Wed, 18 Mar 2026 12:44:49 +0000
Message-ID: <20260318124450.163471-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260318124450.163471-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260318124450.163471-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_MATCH_TO(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277205-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[bp.renesas.com,google.com,kernel.org,pengutronix.de,glider.be,gmail.com,sang-engineering.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com,renesas.com];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,bp.renesas.com:mid]
X-Rspamd-Queue-Id: 19EE22BBCE6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Prepare the driver to handle multiple PCIe channels with distinct System
Controller register sets, as required by RZ/V2H(P). The current design
stores a single sysc_info structure per SoC, which is insufficient for
multi-channel configurations.

Introduce channel identifiers and extend struct rzg3s_pcie_soc_data to
hold a sysc_info array indexed per PCIe channel. Add a channel field to
struct rzg3s_pcie_host and select the appropriate System Controller
information during probe based on the channel.

Keep existing single-channel SoCs functionally unchanged while
preparing the driver for RZ/V2H(P) multi-channel support.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/pci/controller/pcie-rzg3s-host.c | 48 ++++++++++++++++--------
 1 file changed, 33 insertions(+), 15 deletions(-)

diff --git a/drivers/pci/controller/pcie-rzg3s-host.c b/drivers/pci/controller/pcie-rzg3s-host.c
index c61e011f8302..a629e861bbd0 100644
--- a/drivers/pci/controller/pcie-rzg3s-host.c
+++ b/drivers/pci/controller/pcie-rzg3s-host.c
@@ -241,6 +241,18 @@ struct rzg3s_pcie_msi {
 	int irq;
 };
 
+/**
+ * enum rzg3s_pcie_channel_id - RZ/G3S PCIe channel IDs
+ * @RZG3S_PCIE_CHANNEL_ID_0: PCIe channel 0
+ * @RZG3S_PCIE_CHANNEL_ID_1: PCIe channel 1
+ * @RZG3S_PCIE_CHANNEL_ID_MAX: Max PCIe channels
+ */
+enum rzg3s_pcie_channel_id {
+	RZG3S_PCIE_CHANNEL_ID_0,
+	RZG3S_PCIE_CHANNEL_ID_1,
+	RZG3S_PCIE_CHANNEL_ID_MAX,
+};
+
 struct rzg3s_pcie_host;
 
 /**
@@ -253,7 +265,7 @@ struct rzg3s_pcie_host;
  *                power-on
  * @cfg_resets: array with the resets that need to be de-asserted after
  *              configuration
- * @sysc_info: SYSC info
+ * @sysc_info: System Controller info for each PCIe channel
  * @num_power_resets: number of power resets
  * @num_cfg_resets: number of configuration resets
  */
@@ -264,7 +276,7 @@ struct rzg3s_pcie_soc_data {
 	int (*config_deinit)(struct rzg3s_pcie_host *host);
 	const char * const *power_resets;
 	const char * const *cfg_resets;
-	struct rzg3s_sysc_info sysc_info;
+	struct rzg3s_sysc_info sysc_info[RZG3S_PCIE_CHANNEL_ID_MAX];
 	u8 num_power_resets;
 	u8 num_cfg_resets;
 };
@@ -296,6 +308,7 @@ struct rzg3s_pcie_port {
  * @hw_lock: lock for access to the HW resources
  * @intx_irqs: INTx interrupts
  * @max_link_speed: maximum supported link speed
+ * @channel_id: PCIe channel identifier, used for System Controller access
  */
 struct rzg3s_pcie_host {
 	void __iomem *axi;
@@ -311,6 +324,7 @@ struct rzg3s_pcie_host {
 	raw_spinlock_t hw_lock;
 	int intx_irqs[PCI_NUM_INTX];
 	int max_link_speed;
+	enum rzg3s_pcie_channel_id channel_id;
 };
 
 #define rzg3s_msi_to_host(_msi)	container_of(_msi, struct rzg3s_pcie_host, msi)
@@ -1698,7 +1712,7 @@ static int rzg3s_pcie_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	sysc = host->sysc;
-	sysc->info = &host->data->sysc_info;
+	sysc->info = &host->data->sysc_info[host->channel_id];
 
 	host->axi = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(host->axi))
@@ -1891,10 +1905,12 @@ static const struct rzg3s_pcie_soc_data rzg3s_soc_data = {
 	.config_deinit = rzg3s_pcie_config_deinit,
 	.init_phy = rzg3s_soc_pcie_init_phy,
 	.sysc_info = {
-		.functions = {
-			[RZG3S_SYSC_FUNC_ID_RST_RSM_B] = {
-				.offset = 0xd74,
-				.mask = BIT(0),
+		[RZG3S_PCIE_CHANNEL_ID_0] = {
+			.functions = {
+				[RZG3S_SYSC_FUNC_ID_RST_RSM_B] = {
+					.offset = 0xd74,
+					.mask = BIT(0),
+				},
 			},
 		},
 	},
@@ -1909,14 +1925,16 @@ static const struct rzg3s_pcie_soc_data rzg3e_soc_data = {
 	.config_post_init = rzg3e_pcie_config_post_init,
 	.config_deinit = rzg3e_pcie_config_deinit,
 	.sysc_info = {
-		.functions = {
-			[RZG3S_SYSC_FUNC_ID_L1_ALLOW] = {
-				.offset = 0x1020,
-				.mask = BIT(0),
-			},
-			[RZG3S_SYSC_FUNC_ID_MODE] = {
-				.offset = 0x1024,
-				.mask = BIT(0),
+		[RZG3S_PCIE_CHANNEL_ID_0] = {
+			.functions = {
+				[RZG3S_SYSC_FUNC_ID_L1_ALLOW] = {
+					.offset = 0x1020,
+					.mask = BIT(0),
+				},
+				[RZG3S_SYSC_FUNC_ID_MODE] = {
+					.offset = 0x1024,
+					.mask = BIT(0),
+				},
 			},
 		},
 	},
-- 
2.53.0



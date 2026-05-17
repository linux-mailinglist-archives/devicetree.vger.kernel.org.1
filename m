Return-Path: <devicetree+bounces-298812-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJwMI8AeCWoDKAQAu9opvQ
	(envelope-from <devicetree+bounces-298812-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 03:49:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8E655EF30
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 03:49:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 81649301E3E1
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 01:49:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9535230F924;
	Sun, 17 May 2026 01:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YsGyteRZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4208230C37B
	for <devicetree@vger.kernel.org>; Sun, 17 May 2026 01:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778982559; cv=none; b=B831W6KEVQXckIbhA/qe42bZwJLKhjQheNjuhJ8Y0iwqhK4IV23xn2RX5H2ebx41pbzCPLkLtclUdpHPdgPVeNoFbGzlIHUBiLSU+B3KcxeCcy+6tjxv8v5wsC3OGkmHK0s+pMGdtpl2ulgQmC5Nm9mwu8nb0FS/QUppuaFG9+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778982559; c=relaxed/simple;
	bh=WBdA7jneFwFvik3c3/9FHniN5rPBo5pwL0bBpzNvnnE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=N6gNFe0lWIhIHfqxxikoOv8NpeRmzStSRl5SOIRQFGfvVVZkSqrkOdBGI/pcaZpS4uQbtN6prcMJ1t8uBEmczRwUqEFuNd/psV80o/PwTgsVH7p9JEuineDykdbWvB1jEF9o7E6MTD3gGWVzWw+fGrwsKe9v7f9tUKnwzQ7d+iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YsGyteRZ; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2ba21d32776so7565785ad.2
        for <devicetree@vger.kernel.org>; Sat, 16 May 2026 18:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778982557; x=1779587357; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=holLKJOKlFbzdQi8DERchaO2LakweIJGKpZqbMi14i4=;
        b=YsGyteRZIwdGnMk0G/Wprl6PrcXFgRUR/yfVmhOLZ6jtFBH/rEdbJs5pKaxBS6qQSc
         h6gg6RddNqyBrPRjzew8rVHarVjha8axpoxexW+B0V3/CzW5w7CZi9Ho7SK/paXV7LC9
         ROZ7cdw53sCFhxUlHU0vuHf3qVsVoReX7V9eQupo1FYcGwVpuqxHZvy6vD5v0z2QrJpH
         9dTSa92jg8WiSeLzgWPzqWpiHtKljJo4g0eSEUh4QZx1GOH5+CFWXK1hSqN+O0k0Cpew
         M6uXGAZd6uXMvq6rmH12wVFkysWLydrbItH4CQCpWBUS910VBB8FqU1cmpnSAISnBfNO
         Dvng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778982557; x=1779587357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=holLKJOKlFbzdQi8DERchaO2LakweIJGKpZqbMi14i4=;
        b=q47H/6Js4fFnbJRVHzWpyWDcOXeXdJY1QPDAvk5cN0Y3asv2teSs7g4HayIHxZUxPI
         iEm8wy/HOnTXIQvEmiVet2uAadWLa+mj9rvamSMqsrpcyDn20p5sp3PJUo4gEjxPSXH/
         loWzgCAoG4nc9uM79aS1s2jILHFpamdo5WmArr3v+YR6kLO2C7YCfLbSmeYWZPo25HGt
         EbnmgFboLbKPfCZPz8IaWTUw1azQ7PrsPBrTT2G1nmIdHxmFm7I07gSiVwUWVoqwAjY7
         +e10TrAGuMQ9hXu0Tz3ehyOdKD/m6LHO1A96B943yrrE/Uv9xqX2ID7lLmcYOfu0smwC
         GmEA==
X-Forwarded-Encrypted: i=1; AFNElJ8wKEe4843HtKhsMkIOSQizG7M4p9gK28FmYfQs/yyzutYQGQQF4jVRSX98fxFsnCoDWlTcLxfbb8/2@vger.kernel.org
X-Gm-Message-State: AOJu0YwFpgJ7LKItTXOruPiMor7cmR/ezVkU0iU3zBrgtiBkZpDes5Rt
	fJNqQk9ldD10faunq8DUm6Y+mKoj3fjTksSMuilPe0bsCvJ1mgEBs29H
X-Gm-Gg: Acq92OFuMlMqWQUC6WHfSXjooAr2meBJtpBIQdUympSICVnZUutIS0nYPKgBd/Epk55
	ksoV8TLwG9hFUdc4x5cOUR9RmuTsRgU3ZIi8NhapdnjJHOg17wBZFKthKkfn5Sxu8UnnyL4ifqY
	FKs/JFDHZ9DR8vRDCyuPZZu6jhk0pStkyGoEWZDL/p+QeADx9NipYCg4pKAmvDrck0rsoL2V/we
	BbLUSVRrL4DvJgdHLVeRTvQP/MwtCSLO4/8hUziXX9PuaJnRbLPHG0Igq0zOAsgOMOWZwCnyjt/
	rVA7NaIjkDuC0UMU+jSG4F1i90XYHX3QUB+ZnXhhIagzF7CpZJ98bvlRvOBax/PqkKv7ZGsiXRz
	X7LUXz9czCLuIwzy1BcRH8RJRRCRe+7RpIEhzvPsvCchJOF8tK7K38RRDdVSFYI6MD86aQfdecS
	NNTyQt6Hl8H+U6yFvMs9BgiTg=
X-Received: by 2002:a17:902:d702:b0:2b9:ef36:434b with SMTP id d9443c01a7336-2bd7e7de8f2mr75213045ad.12.1778982557515;
        Sat, 16 May 2026 18:49:17 -0700 (PDT)
Received: from localhost ([2001:19f0:8001:1b2d:5400:5ff:fefa:a95d])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bd5cfe8baesm107831685ad.47.2026.05.16.18.49.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 May 2026 18:49:17 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Inochi Amaoto <inochiama@gmail.com>,
	Christian Bruel <christian.bruel@foss.st.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Senchuan Zhang <zhangsenchuan@eswincomputing.com>,
	Alex Elder <elder@riscstar.com>,
	Nam Cao <namcao@linutronix.de>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Randolph Lin <randolph@andestech.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Vidya Sagar <vidyas@nvidia.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Cc: linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH v2 1/5] PCI: spacemit-k1: Add device data support
Date: Sun, 17 May 2026 09:48:36 +0800
Message-ID: <20260517014841.254085-2-inochiama@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260517014841.254085-1-inochiama@gmail.com>
References: <20260517014841.254085-1-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: ED8E655EF30
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298812-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,google.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,foss.st.com,linaro.org,eswincomputing.com,riscstar.com,linutronix.de,ti.com,andestech.com,linux.intel.com,nvidia.com,synopsys.com];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,gentoo.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

To reuse the K1 PCIe driver logic for K3 PCIe controller, add device
data to handle the K1 specific logic and make room for the incoming
logic for K3.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 drivers/pci/controller/dwc/pcie-spacemit-k1.c | 25 ++++++++++++++++---
 1 file changed, 21 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-spacemit-k1.c b/drivers/pci/controller/dwc/pcie-spacemit-k1.c
index be20a520255b..1b519d49dcc0 100644
--- a/drivers/pci/controller/dwc/pcie-spacemit-k1.c
+++ b/drivers/pci/controller/dwc/pcie-spacemit-k1.c
@@ -57,6 +57,12 @@ struct k1_pcie {
 	u32 pmu_off;
 };
 
+struct k1_pcie_device_data {
+	const struct dw_pcie_host_ops *host_ops;
+	const struct dw_pcie_ops *ops;
+	int (*parse_port)(struct k1_pcie *k1);
+};
+
 #define to_k1_pcie(dw_pcie) \
 		platform_get_drvdata(to_platform_device((dw_pcie)->dev))
 
@@ -278,10 +284,15 @@ static int k1_pcie_parse_port(struct k1_pcie *k1)
 
 static int k1_pcie_probe(struct platform_device *pdev)
 {
+	const struct k1_pcie_device_data *data;
 	struct device *dev = &pdev->dev;
 	struct k1_pcie *k1;
 	int ret;
 
+	data = device_get_match_data(dev);
+	if (!data)
+		return -ENODEV;
+
 	k1 = devm_kzalloc(dev, sizeof(*k1), GFP_KERNEL);
 	if (!k1)
 		return -ENOMEM;
@@ -299,11 +310,11 @@ static int k1_pcie_probe(struct platform_device *pdev)
 				     "failed to map \"link\" registers\n");
 
 	k1->pci.dev = dev;
-	k1->pci.ops = &k1_pcie_ops;
+	k1->pci.ops = data->ops;
 	k1->pci.pp.num_vectors = MAX_MSI_IRQS;
 	dw_pcie_cap_set(&k1->pci, REQ_RES);
 
-	k1->pci.pp.ops = &k1_pcie_host_ops;
+	k1->pci.pp.ops = data->host_ops;
 
 	/* Hold the PHY in reset until we start the link */
 	regmap_set_bits(k1->pmu, k1->pmu_off + PCIE_CLK_RESET_CONTROL,
@@ -320,7 +331,7 @@ static int k1_pcie_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, k1);
 
-	ret = k1_pcie_parse_port(k1);
+	ret = data->parse_port(k1);
 	if (ret)
 		return dev_err_probe(dev, ret, "failed to parse root port\n");
 
@@ -338,8 +349,14 @@ static void k1_pcie_remove(struct platform_device *pdev)
 	dw_pcie_host_deinit(&k1->pci.pp);
 }
 
+static const struct k1_pcie_device_data k1_pcie_device_data = {
+	.host_ops	= &k1_pcie_host_ops,
+	.ops		= &k1_pcie_ops,
+	.parse_port	= k1_pcie_parse_port,
+};
+
 static const struct of_device_id k1_pcie_of_match_table[] = {
-	{ .compatible = "spacemit,k1-pcie", },
+	{ .compatible = "spacemit,k1-pcie", .data = &k1_pcie_device_data},
 	{ }
 };
 
-- 
2.54.0



Return-Path: <devicetree+bounces-268172-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ADGzB96mnmmrWgQAu9opvQ
	(envelope-from <devicetree+bounces-268172-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:38:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A0887193909
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:38:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1C5F631EF8E0
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:24:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA0003128DF;
	Wed, 25 Feb 2026 07:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="P2pdFdQ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8A3D312806
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:23:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772004182; cv=none; b=WswaUBtR2iEdKtBgdaUz8X78oOPc+k7sHRbkl05OKgftgDWO28TkDXHJ968YKqcNCN4iDVkjkkNO2H1LR7RDqmIPeQm1pkPu2zpYxzJ1Y51lVfOU4dm1MzeVL9moUwKCjttqbn9TEviyyq/WUB3PuFM4fIFG6YwcMcWGZVnWcUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772004182; c=relaxed/simple;
	bh=iT9Zr+5DeZWIkCiMU0IPjG5BWuOWLnJEMbNetUiq6Pk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=T+d0ALghsijb/jVny7ZYe17XRzvh6PWx5ZTwJyEf8m8GpcfylSYOlKyRmLzbta8CZxxrMez+tbfi/oOSKaFF0cum10Oc5xC1C6U1LGVGhMOYx5/+TtxbKU2d4UqSwpWvJM39iBoN4f+9owAQ1DyHvOCQjZ5AIbGnFynuawjvxco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=P2pdFdQ1; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-c6e3e4e7388so2144569a12.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 23:23:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1772004181; x=1772608981; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EHFAXAM+Xml9R5RaHZQMemPytApXKVc7eKJLfBSsIDw=;
        b=P2pdFdQ1B6ip73YvAECvcXWEbGyC177E/+TuY1zJR5r42jo3gH6DMEDOuQHui9GZDk
         vbweL0p1EbY2VYj3pHiPHAoMbA8F12BoOW6a1MmgVVjSrmAYAIAKta3WwWyUgYpxAuv3
         3OorHPxshx8SOSZhELkkPXAuohT3NyBrHMYIA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772004181; x=1772608981;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EHFAXAM+Xml9R5RaHZQMemPytApXKVc7eKJLfBSsIDw=;
        b=aBYQI8FhJcr3Et3VW/zenyvDZi+1qpWVO2lxK/aeWpjoF9dnCTyHVCGoA/fyY9EYVP
         g2xGnJxmqyME2t25jgE6L6mnykcw3MMvQnkmA3qlD+ZNSSpPsaoQbznhYsrjMMgQkj79
         Dcc4PygIvVM6N16c9n9vPcKtHW+HqrCCwD33rx18FXOaepXCHavHh/JCYxCIyXHLz9Rb
         A3F5nyrS1xmcbNZobTo9tHTUfUfiye7bI84WGqA/f2804AUH4co0RSg21vjEKSKOs1Qt
         dv/F5HyraeVD5fRtpBEUIWuxhxuBM00f/P/iXoJJI6mFxjHO3Q6QiiBMznMCNQS/SR2m
         CGFw==
X-Gm-Message-State: AOJu0YwmTCJukXQWC2NU3odN501jQUtW5EDDQWsyPseWsf52jhXAuEiP
	bXeJ3vh41wSiAoqWXko7JOuvCP+y6lVU6IQQ5pj1RH0VL3O3C2Chsyjv61mN5wY+cQ==
X-Gm-Gg: ATEYQzySKQq3K4jhm/e0C4vN0R53WhDhUmFw9MkpgjZlqwlJYwOSq32III4lXOYCqny
	aHu9q/fYh9X77fviDQ2p6MP9BhThfC9J7g7m2Uj0ZV4bdhqrFMA1+7ApEY7FMhpcB8jRcJdReOD
	UNec+SsB8V6V6VVrRgRfAoV9LfnnNkp5ydLl3XsTXb9w5ixyXca4jEQQ/0pab3CnS9hPq2jX/wm
	YrrIdPxmakffn/iiWkhUvF4s+1a0yxhoRLmJ3Ik1K5NlzVDC872wn6C72oAVPYV+Aa6j0UDqyek
	qlQX0N3zTSiglIAUJN+uarY1LlQupk4wUU2v0lMl5M9XyGmETb5zZEEzMooAAUfLUVtK7lllwZy
	nzKLc59PRLJ2dPnUqmNlG34izBfSymlb6KaePhDPbcSjTEBx6JULtr7j+IGDX1t9CLeUGFEGh4e
	+rLLfSWFceNc+kKq46GJl34VxCr06zE2WLjemhWMxeWqDmhh8kmC+ucGH4TuGuFuPE25uRvpQG3
	Bkmlg==
X-Received: by 2002:a17:903:3510:b0:2a0:fb1c:144c with SMTP id d9443c01a7336-2ad743fe17amr132040615ad.5.1772004181108;
        Tue, 24 Feb 2026 23:23:01 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9d6:2e6a:941b:690])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7503fdc9sm130814435ad.80.2026.02.24.23.22.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 23:23:00 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/7] PCI: mediatek-gen3: Disable device if further setup fails
Date: Wed, 25 Feb 2026 15:22:21 +0800
Message-ID: <20260225072225.3345307-5-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.414.gf7e9f6c205-goog
In-Reply-To: <20260225072225.3345307-1-wenst@chromium.org>
References: <20260225072225.3345307-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-268172-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,mediatek.com,kernel.org,google.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[chromium.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: A0887193909
X-Rspamd-Action: no action

If further setup fails after the device is powered on and link training
succeeds, we want to place the device back in a quiescence state to
avoid unintended activity and save power. This also helps with power
state tracking and balancing once pwrctrl API is integrated.

Power down the device in the error paths of mtk_pcie_startup_port() and
mtk_pcie_setup().

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/pci/controller/pcie-mediatek-gen3.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/controller/pcie-mediatek-gen3.c b/drivers/pci/controller/pcie-mediatek-gen3.c
index 870d3b3db11d..7459e1c1899d 100644
--- a/drivers/pci/controller/pcie-mediatek-gen3.c
+++ b/drivers/pci/controller/pcie-mediatek-gen3.c
@@ -531,7 +531,7 @@ static int mtk_pcie_startup_port(struct mtk_gen3_pcie *pcie)
 		dev_err(pcie->dev,
 			"PCIe link down, current LTSSM state: %s (%#x)\n",
 			ltssm_state, val);
-		return err;
+		goto err_power_down_device;
 	}
 
 	mtk_pcie_enable_msi(pcie);
@@ -556,10 +556,14 @@ static int mtk_pcie_startup_port(struct mtk_gen3_pcie *pcie)
 		err = mtk_pcie_set_trans_table(pcie, cpu_addr, pci_addr, size,
 					       type, &table_index);
 		if (err)
-			return err;
+			goto err_power_down_device;
 	}
 
 	return 0;
+
+err_power_down_device:
+	mtk_pcie_device_power_down(pcie);
+	return err;
 }
 
 #define MTK_MSI_FLAGS_REQUIRED (MSI_FLAG_USE_DEF_DOM_OPS	| \
@@ -1174,15 +1178,17 @@ static int mtk_pcie_setup(struct mtk_gen3_pcie *pcie)
 	/* Try link up */
 	err = mtk_pcie_startup_port(pcie);
 	if (err)
-		goto err_setup;
+		goto err_power_down;
 
 	err = mtk_pcie_setup_irq(pcie);
 	if (err)
-		goto err_setup;
+		goto err_device_power_off;
 
 	return 0;
 
-err_setup:
+err_device_power_off:
+	mtk_pcie_device_power_down(pcie);
+err_power_down:
 	mtk_pcie_power_down(pcie);
 
 	return err;
-- 
2.53.0.414.gf7e9f6c205-goog



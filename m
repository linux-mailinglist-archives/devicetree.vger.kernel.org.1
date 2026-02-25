Return-Path: <devicetree+bounces-268169-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKNYOJ+lnmmrWgQAu9opvQ
	(envelope-from <devicetree+bounces-268169-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:32:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8B81937C2
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:32:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3D92730EFAD3
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:23:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C44E030E839;
	Wed, 25 Feb 2026 07:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="EEeG8dL6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A48930AD0C
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772004173; cv=none; b=ZBu7nSZFAMCR6Yrgv2Yq916quWyibGvHIRvZa66sIuZymyXQ4hCWB7I1sxqPfDlliWlmsr2VhyuVTMARfKDT8kc+r1CHr4SIuvD5wR2VnK3f17NWwpV+9rjVMiodoNF40JLupeNcLMj3lI7FYZhi1MoMZ5neDxzCT1cxljXYnsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772004173; c=relaxed/simple;
	bh=I/aqxnLb1nJ9rqUlefIoU8YT/3SRATDnRRlupKphAuY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=D2MFLNs6TBzo2zKQtDTwRskJnpfS+EeHSLLd/gLdWu/wMcO0QUNr+G0oEQOVrb1mpyqvqZuJmUlTvhwrFPyFAuMCxJHAPukXKjaV49vul3ue3pXIFioBbAtFI5tHryZ856/VpLt1x0sFaMQYTEu5rfd7Y9e3jz8KOhKeGx6/igM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=EEeG8dL6; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2aadc18f230so39348385ad.3
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 23:22:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1772004172; x=1772608972; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QS0Ykx5d3ml8rzk8tsHJLTUHxdInYPjDBS3HSjaXmrs=;
        b=EEeG8dL6u8HLPdf14LnOMBRJ4Z9uQF7mCJ+7o5hySfoAmXhCjhw5Ra/bIRlPaO+xyO
         X/n7o3hCkJ0yaVl+w11veJgs0u7UJ8OQNmaJlD6rVJrw1whZ7+y0n74m7ZNZiPdUB+bF
         2LYiefwLMr6P03ASdIGP0dvflTLn1SjstrZXs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772004172; x=1772608972;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QS0Ykx5d3ml8rzk8tsHJLTUHxdInYPjDBS3HSjaXmrs=;
        b=w+1nkIX6cNP6E1c9nFs2ONSDAKCNTS9a+8eqlSbq1HefuqaK6t35P5ARzi92PYhRJC
         6AO/sTVZroNJ6ptzJXDZKIaDwPN5tyuuYQRkB642cL82ZPO94DmeHoCbXpPW0s8fh82t
         VufnsJd/sTsfv35hKQ+ujA5Sx98/BzLDHVj5bh8mGS05iG8q70Bnow+neyAcc5llZFFH
         UIcb1T4Z231U42X5q/qzGWvD59im3Zg/ROXm0JRHYk511U9ltcXXwLwY3PI75wYgJJlB
         scuH6JUD4JjgBQP6t+9sZr6Iuca0/nYzna1I/mS3q3w1CU+uSfSs2+2mbLe1UTVncZIz
         G13A==
X-Gm-Message-State: AOJu0YwVw11kxcL1/m5FhErsMYWalXbtU53DIBw9nHJLlb9nfJCRJlHH
	Nu6/VuXdBfQ28bPzrvKa7Su4OR1Yle+lophQ7BCZXcNEE7lFJiMhDlkLMFxK1MDIdA==
X-Gm-Gg: ATEYQzy4YMHnhCQ7qc5oWW3IVK1OCOzFGMoYXi5VKNX/csjMEvj7dEVgwsnYpDHZZ0t
	hYYkGIRxzGlJ0LSiBlvtLj4pKwcJYiFI6e/7TN1qfnGD0puAw3o6GpB1uRVpVA8O/ewh3okxSwG
	WJ0nQuT0KZC1A+Hv5IBAPDv/35c1f1yGEwmSzoxSxS8olGm1KFU7QXbu4AE2IOI00Jp9ioZQ/ba
	d+1H6TDM+9YAmoYcVlb9+uRwwTGBvCzY8wAUZKlRKoHrNhOZyE/A1hRAmqWoghpkab6bODvdVPW
	sZIDNIb+q04HtJKrZ245U/BEOh2cNMDD1w1RHK+sIea/SUrapMRf9lZKfohDb01mWC2AdKEvayx
	8KtPpPXLv9YDaQoeb2ujh+40sJwvMCwr0yMuRnj41A9Mfgq1qgMesLFtMKateyuKwP481SG93U9
	c13nzBfYJ4BAEE9aoYlONqzoOt6oztvm9ZwTKk0yXAYJcAc4NuNpWfP555LNANqVEanPaX7ukH9
	xoKwb/2mDap//lp
X-Received: by 2002:a17:902:d4c6:b0:2aa:d7fe:8611 with SMTP id d9443c01a7336-2add13fda8cmr13861915ad.27.1772004171868;
        Tue, 24 Feb 2026 23:22:51 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9d6:2e6a:941b:690])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7503fdc9sm130814435ad.80.2026.02.24.23.22.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 23:22:51 -0800 (PST)
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
Subject: [PATCH 1/7] PCI: mediatek-gen3: Clean up mtk_pcie_parse_port() with dev_err_probe()
Date: Wed, 25 Feb 2026 15:22:18 +0800
Message-ID: <20260225072225.3345307-2-wenst@chromium.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-268169-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 5C8B81937C2
X-Rspamd-Action: no action

mtk_pcie_parse_port() in the pcie-mediatek-gen driver has a bunch of

    if (err) {
    	dev_err(dev, "error message\n");
	return err; # or goto
    }

patterns.

Simplify these with dev_err_probe(). The system also gains proper
deferred probe messages that can be seen in

    /sys/kernel/debug/devices_deferred

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/pci/controller/pcie-mediatek-gen3.c | 36 ++++++---------------
 1 file changed, 10 insertions(+), 26 deletions(-)

diff --git a/drivers/pci/controller/pcie-mediatek-gen3.c b/drivers/pci/controller/pcie-mediatek-gen3.c
index 75ddb8bee168..1939cac995b5 100644
--- a/drivers/pci/controller/pcie-mediatek-gen3.c
+++ b/drivers/pci/controller/pcie-mediatek-gen3.c
@@ -876,10 +876,8 @@ static int mtk_pcie_parse_port(struct mtk_gen3_pcie *pcie)
 	if (!regs)
 		return -EINVAL;
 	pcie->base = devm_ioremap_resource(dev, regs);
-	if (IS_ERR(pcie->base)) {
-		dev_err(dev, "failed to map register base\n");
-		return PTR_ERR(pcie->base);
-	}
+	if (IS_ERR(pcie->base))
+		return dev_err_probe(dev, PTR_ERR(pcie->base), "failed to map register base\n");
 
 	pcie->reg_base = regs->start;
 
@@ -888,34 +886,20 @@ static int mtk_pcie_parse_port(struct mtk_gen3_pcie *pcie)
 
 	ret = devm_reset_control_bulk_get_optional_shared(dev, num_resets,
 							  pcie->phy_resets);
-	if (ret) {
-		dev_err(dev, "failed to get PHY bulk reset\n");
-		return ret;
-	}
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to get PHY bulk reset\n");
 
 	pcie->mac_reset = devm_reset_control_get_optional_exclusive(dev, "mac");
-	if (IS_ERR(pcie->mac_reset)) {
-		ret = PTR_ERR(pcie->mac_reset);
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "failed to get MAC reset\n");
-
-		return ret;
-	}
+	if (IS_ERR(pcie->mac_reset))
+		return dev_err_probe(dev, PTR_ERR(pcie->mac_reset), "failed to get MAC reset\n");
 
 	pcie->phy = devm_phy_optional_get(dev, "pcie-phy");
-	if (IS_ERR(pcie->phy)) {
-		ret = PTR_ERR(pcie->phy);
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "failed to get PHY\n");
-
-		return ret;
-	}
+	if (IS_ERR(pcie->phy))
+		return dev_err_probe(dev, PTR_ERR(pcie->phy), "failed to get PHY\n");
 
 	pcie->num_clks = devm_clk_bulk_get_all(dev, &pcie->clks);
-	if (pcie->num_clks < 0) {
-		dev_err(dev, "failed to get clocks\n");
-		return pcie->num_clks;
-	}
+	if (pcie->num_clks < 0)
+		return dev_err_probe(dev, pcie->num_clks, "failed to get clocks\n");
 
 	ret = of_property_read_u32(dev->of_node, "num-lanes", &num_lanes);
 	if (ret == 0) {
-- 
2.53.0.414.gf7e9f6c205-goog



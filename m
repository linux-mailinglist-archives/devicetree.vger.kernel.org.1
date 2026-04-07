Return-Path: <devicetree+bounces-285498-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KN7nOdlz1WlC6gcAu9opvQ
	(envelope-from <devicetree+bounces-285498-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 23:15:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCF83B4EA1
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 23:15:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2E4913026582
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 21:11:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5855A37BE6D;
	Tue,  7 Apr 2026 21:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="IVekDP7p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6FB37C0E3;
	Tue,  7 Apr 2026 21:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775596308; cv=none; b=kTLF8mX4h/Aqjcf8O95wgvY3oXJ1aEZaVTTMMzLn6jzLU6JKw9XyiF64L/3u/7Z9VMEjWvVZdtAX6qxuYPNvxXmQKiLD2HQE3f3xe3Xlce1627nGz85w4rjJ1EfCmUZGBWEirOroVS/pyA17+Q46cl1j9j97zb+2mJuCsL2962Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775596308; c=relaxed/simple;
	bh=QVpaac3DVoJhjfoQbqDPaxM3nQuqfc3LqxBaBZ7pT8k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=omBnw929S/kBC4INboLDrXnCoWs3ciPnN5uzHFMQgLp+o5+yXzKus1E0QDQoQ3me2xZfPY7V+IJOKdCx3QTK40MCxZpM3KkuHyzOZMMOUEmHdk+ActAml6tyroNwJyGUFmnPM9HCjylPI3O3Rxcsni2iPd5XEbaFd7zFepyRXFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=IVekDP7p; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id F31181133A1;
	Tue,  7 Apr 2026 23:11:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1775596293; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=Y5NvascYK9n2410VdmQFcewHyBiOdCq1U/aB+ZGXfeg=;
	b=IVekDP7peEyyXAfkcpc8WMFUlwcjbYCItJLq8QcOCYEtVHMYGezZsxxOvJGv5zRva3Z5gL
	TS4aNmyzsiIR4lGSx67FJDIv1Ig8HC9Ee6KhiX7zU1+qreyzZNVa3T/5GKSbLGCiKm9RxC
	9LDt42USGgYmLatqSTEK0Dq/pwHzVw/088+Tvz/ksaJwabhYHheP5DeOcR2piS5uOMKWqa
	wpc/XZtil1Gb9UT1pXg6JyGLnVl0ThiSkObGYo2gOL1iGA7wJh1Rt0Rwd33/4lITIDzBaA
	JQQ7BvtDlWb8FvRM1dfwtOByixGzofsjI09uvMa8Stx94OkZJiiROHGLtlECIA==
From: Marek Vasut <marex@nabladev.com>
To: linux-clk@vger.kernel.org
Cc: Marek Vasut <marex@nabladev.com>,
	Michael Walle <mwalle@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Michael Walle <michael@walle.cc>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 6/6] clk: fsl-sai: Add MCLK generation support
Date: Tue,  7 Apr 2026 23:10:03 +0200
Message-ID: <20260407211123.77602-6-marex@nabladev.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260407211123.77602-1-marex@nabladev.com>
References: <20260407211123.77602-1-marex@nabladev.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[nabladev.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[nabladev.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285498-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marex@nabladev.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nabladev.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[walle.cc:email,baylibre.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nabladev.com:dkim,nabladev.com:email,nabladev.com:mid]
X-Rspamd-Queue-Id: 4DCF83B4EA1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The driver currently supports generating BCLK. There are systems which
require generation of MCLK instead. Register new MCLK clock and handle
clock-cells = <1> to differentiate between BCLK and MCLK. In case of a
legacy system with clock-cells = <0>, the driver behaves as before, i.e.
always returns BCLK.

Note that it is not possible re-use the current SAI audio driver to
generate MCLK and correctly enable and disable the MCLK.

If SAI (audio driver) is used to control the MCLK enablement, then MCLK
clock is not always enabled, and it is not necessarily enabled when the
codec may need the clock to be enabled. There is also no way for the
codec node to specify phandle to clock provider in DT, because the SAI
(audio driver) is not clock provider.

If SAI (clock driver) is used to control the MCLK enablement, then MCLK
clock is enabled when the codec needs the clock enabled, because the
codec is the clock consumer and the SAI (clock driver) is the clock
provider, and the codec driver can request the clock to be enabled when
needed. There is also the usual phandle to clock provider in DT, because
the SAI (clock driver) is clock provider.

Acked-by: Michael Walle <mwalle@kernel.org>
Signed-off-by: Marek Vasut <marex@nabladev.com>
---
Cc: Brian Masney <bmasney@redhat.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Michael Walle <michael@walle.cc>
Cc: Rob Herring <robh@kernel.org>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-clk@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
---
V2: No change
V3: - Rebase on current next, update mail address
    - Update commit message according to clarify the difference between
      SAI audio and SAI clock driver
    - Pick ancient AB from Michael, although this may be outdated
      https://patchwork.kernel.org/project/alsa-devel/patch/20241226162234.40141-4-marex@denx.de/
V4: Use the fsl_sai_clk_register() helper.
V5: - Move include clk.h into 3/6
    - Validate clock cells in fsl_sai_of_clk_get()
---
 drivers/clk/clk-fsl-sai.c | 34 +++++++++++++++++++++++++++++++++-
 1 file changed, 33 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/clk-fsl-sai.c b/drivers/clk/clk-fsl-sai.c
index 01c5e26f55517..97db34358f62b 100644
--- a/drivers/clk/clk-fsl-sai.c
+++ b/drivers/clk/clk-fsl-sai.c
@@ -16,19 +16,27 @@
 
 #define I2S_CSR		0x00
 #define I2S_CR2		0x08
+#define I2S_MCR		0x100
 #define CSR_BCE_BIT	28
+#define CSR_TE_BIT	31
 #define CR2_BCD		BIT(24)
 #define CR2_DIV_SHIFT	0
 #define CR2_DIV_WIDTH	8
+#define MCR_MOE		BIT(30)
 
 struct fsl_sai_data {
 	unsigned int	offset;	/* Register offset */
+	bool		have_mclk; /* Have MCLK control */
 };
 
 struct fsl_sai_clk {
+	const struct fsl_sai_data *data;
 	struct clk_divider bclk_div;
+	struct clk_divider mclk_div;
 	struct clk_gate bclk_gate;
+	struct clk_gate mclk_gate;
 	struct clk_hw *bclk_hw;
+	struct clk_hw *mclk_hw;
 	spinlock_t lock;
 };
 
@@ -37,7 +45,17 @@ fsl_sai_of_clk_get(struct of_phandle_args *clkspec, void *data)
 {
 	struct fsl_sai_clk *sai_clk = data;
 
-	return sai_clk->bclk_hw;
+	if (clkspec->args_count == 0)
+		return sai_clk->bclk_hw;
+
+	if (clkspec->args_count == 1) {
+		if (clkspec->args[0] == 0)
+			return sai_clk->bclk_hw;
+		if (sai_clk->data->have_mclk && clkspec->args[0] == 1)
+			return sai_clk->mclk_hw;
+	}
+
+	return ERR_PTR(-EINVAL);
 }
 
 static int fsl_sai_clk_register(struct device *dev, void __iomem *base,
@@ -104,6 +122,7 @@ static int fsl_sai_clk_probe(struct platform_device *pdev)
 	if (IS_ERR(clk_bus))
 		return PTR_ERR(clk_bus);
 
+	sai_clk->data = data;
 	spin_lock_init(&sai_clk->lock);
 
 	ret = fsl_sai_clk_register(dev, base, &sai_clk->lock,
@@ -113,15 +132,28 @@ static int fsl_sai_clk_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	if (data->have_mclk) {
+		ret = fsl_sai_clk_register(dev, base, &sai_clk->lock,
+					   &sai_clk->mclk_div,
+					   &sai_clk->mclk_gate,
+					   &sai_clk->mclk_hw,
+					   CSR_TE_BIT, MCR_MOE, I2S_MCR,
+					   "MCLK");
+		if (ret)
+			return ret;
+	}
+
 	return devm_of_clk_add_hw_provider(dev, fsl_sai_of_clk_get, sai_clk);
 }
 
 static const struct fsl_sai_data fsl_sai_vf610_data = {
 	.offset	= 0,
+	.have_mclk = false,
 };
 
 static const struct fsl_sai_data fsl_sai_imx8mq_data = {
 	.offset	= 8,
+	.have_mclk = true,
 };
 
 static const struct of_device_id of_fsl_sai_clk_ids[] = {
-- 
2.53.0



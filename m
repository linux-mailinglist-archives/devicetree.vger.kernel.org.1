Return-Path: <devicetree+bounces-272869-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wI4RIsixrmkSHwIAu9opvQ
	(envelope-from <devicetree+bounces-272869-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:40:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 319C9238087
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:40:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C0A1F301EF3D
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 11:40:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CAC83A784A;
	Mon,  9 Mar 2026 11:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YbOxcgVe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4DF93A641C
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773056436; cv=none; b=kVH8G1zdp9lL+JXZbQNXpTPA8YN/HeITSWzalNPJUp36oulGWc8MCkffekQQOxAX8ONO4bw9YalAgVyY03lG9EprmZP9MuWbo9ZRCxasiyV3U/WExS8tC5p2pGMCSD4lxKhKFeSShRc+gFjH8uCSvuq2A34Oda3bXJyFmdj0tqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773056436; c=relaxed/simple;
	bh=zh+ggJ1R5qBO3E8+3w58NjmsHpAAdOtGm81LBUggVYg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OVn/NWWV3fOc3vP318M8jU1LjxAR2ma4JU7wKrbI6/BYt30cf2yJtlrrvuMd3cBDGlc4F4dfK7mPuU9O6mPbCCkGQM2Gv+Q++RjPJsQ19JKK4sDh8lXE6mdMjnfPtqQnrJmwmjR86EDfAzudITrqAbVPe8KdbNwlTS3d/3YFp2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YbOxcgVe; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-439c5b40f60so4566177f8f.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 04:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773056433; x=1773661233; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0YpjhzcIYcSxtAdjQVzNzPM/tyjIJ5Q1jULtAL2eLJs=;
        b=YbOxcgVeSdqmBtTnmfzA1Er0rtb81Hq1MfmkM043cXL7+VlrsAYETbSRb4lOvMtGKO
         5c8Ct6CgijeT0qDpn9alCgz/wq+esAO0W0vNFV+MRwHyIcmDxT4SB3Z1861/WMHbkz7I
         PlZ2AnM/u48FVaWV3x8OjDtwbrqgb+dv9VUsHBPeVuLI7e/Bo7c5wz7XJGtsqfPtqnGF
         sEzWMfiWsxgm2oo0J5nl/lNIKaCsr8/FaTN5BGIG+hd0NmBHsE/GZ9guNM12nkY0T2x9
         U496Bw9iMHhl7YBc4WSa9pPRUgS6ZjvOar9oayFDadCm0fFMQWqrySsBla9sI57RrsNY
         TZIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773056433; x=1773661233;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0YpjhzcIYcSxtAdjQVzNzPM/tyjIJ5Q1jULtAL2eLJs=;
        b=IRcvhzUPZQK/jeeleDkauq9FtzMxWHEXp7yVjY0PV7eRF003C4H5ZWKc2cmeCxwfI2
         LUHzcadybkQLb2jcAOjvqhHFcXIIB/7Rtw3Dy86l9Bg+lqQXsCihplKMJ8oV1JNftRaY
         BlzkD0c/OdPreotlL9vi0tvEPUFcEqxWwXPlJ9ZPYLxPbTRe2varYRVREBCW8iIlf1lo
         kPmRGajXhbun/FAhBso3yyJqcL3IMc2W9Em1lLD/3034yuyKnd2uudpVaRoKuoCAdACk
         kVb6MwV3VbzAYihqeHNvovNcXmlXzWowNl+8U6WNzK0bCWbt5RckxGF3zYPTRBwwtK+h
         7ZNw==
X-Forwarded-Encrypted: i=1; AJvYcCUIsUqz+Umyfu6XHUarea6cURAOMTgD0hhGJmc7KVS5Un1OS8FsBxtD8FG9ZO6MN0cOadw/xzntVefv@vger.kernel.org
X-Gm-Message-State: AOJu0YwVrZRNdlAA5Ai7PxtwLYLZt3D0ZkyQ61OiieJIEwBMFKSm5yKm
	+tGrKr0pItdfLDNfkDOvTaUiOAODX7XJeJTKUAoryyeDInvo7PmfVIf7
X-Gm-Gg: ATEYQzyiAcSgku5O18uI8073yGfWHJVfHRQbQvVifT+K/W8sal9eIKGhmePmcNjNwDM
	dvqScXzEzp39nb6Zzs1VfbS3LPPxSQ39ur79IYEyPUMbp6EIvSUtL9p7HH7rlYqX/VWTnsX1JcT
	JH1MIRM1GsBndp/TrHjGf/0PKyUf1Ipe5m1Ra0CJFfzNHqZ5WLvto9lKMKGqRkTL8j0UZ8voH6M
	gqKOYxeGtEnwMRyY2oNUyzrVGe9lf8hO+RAWs6bkn+JpTm7VsuShrdwh5MtxmcF6XYs+MXhkQBa
	vXBYeLtQYoejH1I5/4Ir5VzzNVs6MNwpGebjZjgoWH9uUr0RzIjKXV2EjupDyZdE5ndWkwVS716
	SXFNqd6U+8QqjUnt6vVLzVtBu79SYWwESdPp0wJrvNXLNKf28xIGl+jv/XOYcSRpMFAXzAo9sPu
	ETqa70Cc/XC3LPNUs4iaiz7vI7zjqVA5IK5jCShvZ5OrL2B3jI5EmqR59Mg68m9dez
X-Received: by 2002:a05:6000:3112:b0:439:d242:e8fe with SMTP id ffacd0b85a97d-439da348327mr18838818f8f.11.1773056433101;
        Mon, 09 Mar 2026 04:40:33 -0700 (PDT)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.236.52])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad8ec97sm28471699f8f.5.2026.03.09.04.40.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 04:40:32 -0700 (PDT)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 09 Mar 2026 12:40:13 +0100
Subject: [PATCH v2 3/7] mmc: sdhci-of-k1: add SDR tuning infrastructure
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-orangepi-sd-card-uhs-v2-3-5bb2b574df5d@gmail.com>
References: <20260309-orangepi-sd-card-uhs-v2-0-5bb2b574df5d@gmail.com>
In-Reply-To: <20260309-orangepi-sd-card-uhs-v2-0-5bb2b574df5d@gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 Yixun Lan <dlan@kernel.org>, Yixun Lan <dlan@kernel.org>
Cc: Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
 Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Iker Pedrosa <ikerpedrosam@gmail.com>
X-Mailer: b4 0.14.2
X-Rspamd-Queue-Id: 319C9238087
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272869-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.973];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add register definitions and delay line control functions to prepare for
SDR50/SDR104 tuning support:

- Add tuning register definitions (RX_CFG, DLINE_CTRL, DLINE_CFG)
- Add delay line control helper functions
- Add tuning preparation function

This infrastructure prepares for implementing the SDR tuning algorithm
while maintaining all existing functionality.

Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 drivers/mmc/host/sdhci-of-k1.c | 61 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/drivers/mmc/host/sdhci-of-k1.c b/drivers/mmc/host/sdhci-of-k1.c
index 8af117a8e271c04a80d8dc7bb5ce12075652dd7a..79cb7c8d0b6d9c4206bf01721651c8efe8a173c9 100644
--- a/drivers/mmc/host/sdhci-of-k1.c
+++ b/drivers/mmc/host/sdhci-of-k1.c
@@ -68,6 +68,23 @@
 #define  SDHC_PHY_DRIVE_SEL		GENMASK(2, 0)
 #define  SDHC_RX_BIAS_CTRL		BIT(5)
 
+#define SPACEMIT_SDHC_RX_CFG_REG        0x118
+#define  SDHC_RX_SDCLK_SEL0_MASK        GENMASK(1, 0)
+#define  SDHC_RX_SDCLK_SEL1_MASK        GENMASK(3, 2)
+#define  SDHC_RX_SDCLK_SEL1             FIELD_PREP(SDHC_RX_SDCLK_SEL1_MASK, 1)
+
+#define SPACEMIT_SDHC_DLINE_CTRL_REG    0x130
+#define  SDHC_DLINE_PU                  BIT(0)
+#define  SDHC_RX_DLINE_CODE_MASK        GENMASK(23, 16)
+#define  SDHC_TX_DLINE_CODE_MASK        GENMASK(31, 24)
+
+#define SPACEMIT_SDHC_DLINE_CFG_REG     0x134
+#define  SDHC_RX_DLINE_REG_MASK         GENMASK(7, 0)
+#define  SDHC_RX_DLINE_GAIN             BIT(8)
+#define  SDHC_TX_DLINE_REG_MASK         GENMASK(23, 16)
+
+#define SPACEMIT_RX_DLINE_REG		9
+
 struct spacemit_sdhci_host {
 	struct clk *clk_core;
 	struct clk *clk_io;
@@ -95,6 +112,50 @@ static inline void spacemit_sdhci_clrsetbits(struct sdhci_host *host, u32 clr, u
 	sdhci_writel(host, val, reg);
 }
 
+static void spacemit_sdhci_set_rx_delay(struct sdhci_host *host, u8 delay)
+{
+	spacemit_sdhci_clrsetbits(host, SDHC_RX_DLINE_CODE_MASK,
+				  FIELD_PREP(SDHC_RX_DLINE_CODE_MASK, delay),
+				  SPACEMIT_SDHC_DLINE_CTRL_REG);
+}
+
+static void spacemit_sdhci_set_tx_delay(struct sdhci_host *host, u8 delay)
+{
+	spacemit_sdhci_clrsetbits(host, SDHC_TX_DLINE_CODE_MASK,
+				  FIELD_PREP(SDHC_TX_DLINE_CODE_MASK, delay),
+				  SPACEMIT_SDHC_DLINE_CTRL_REG);
+}
+
+static void spacemit_sdhci_set_tx_dline_reg(struct sdhci_host *host, u8 dline_reg)
+{
+	spacemit_sdhci_clrsetbits(host, SDHC_TX_DLINE_REG_MASK,
+				  FIELD_PREP(SDHC_TX_DLINE_REG_MASK, dline_reg),
+				  SPACEMIT_SDHC_DLINE_CFG_REG);
+}
+
+static void spacemit_sdhci_tx_tuning_prepare(struct sdhci_host *host)
+{
+	spacemit_sdhci_setbits(host, SDHC_TX_MUX_SEL, SPACEMIT_SDHC_TX_CFG_REG);
+	spacemit_sdhci_setbits(host, SDHC_DLINE_PU, SPACEMIT_SDHC_DLINE_CTRL_REG);
+	udelay(5);
+}
+
+static void spacemit_sdhci_prepare_tuning(struct sdhci_host *host)
+{
+	spacemit_sdhci_clrsetbits(host, SDHC_RX_DLINE_REG_MASK,
+				  FIELD_PREP(SDHC_RX_DLINE_REG_MASK, SPACEMIT_RX_DLINE_REG),
+				  SPACEMIT_SDHC_DLINE_CFG_REG);
+
+	spacemit_sdhci_setbits(host, SDHC_DLINE_PU, SPACEMIT_SDHC_DLINE_CTRL_REG);
+	udelay(5);
+
+	spacemit_sdhci_clrsetbits(host, SDHC_RX_SDCLK_SEL1_MASK, SDHC_RX_SDCLK_SEL1,
+				  SPACEMIT_SDHC_RX_CFG_REG);
+
+	if (host->mmc->ios.timing == MMC_TIMING_MMC_HS200)
+		spacemit_sdhci_setbits(host, SDHC_HS200_USE_RFIFO, SPACEMIT_SDHC_PHY_FUNC_REG);
+}
+
 static void spacemit_sdhci_reset(struct sdhci_host *host, u8 mask)
 {
 	sdhci_reset(host, mask);

-- 
2.53.0



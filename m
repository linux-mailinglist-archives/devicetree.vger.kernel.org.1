Return-Path: <devicetree+bounces-272870-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJR9JdSxrmkSHwIAu9opvQ
	(envelope-from <devicetree+bounces-272870-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:41:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 419E92380A3
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:41:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E26A6301F3AB
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 11:40:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52F843A7F66;
	Mon,  9 Mar 2026 11:40:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KrgWMTOn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDB53A7850
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 11:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773056439; cv=none; b=C/4Kh30KOHbzEma1vaXZYOfl8aiYnuDumSHfB3rhwC72wSNCcDA6xhryNhDK5h2arD+d8M3w90Bvja+h5Dz7j2VaLTT/srnn8jc84+K7SyDNCzXWykyAY18hrLEKk0k4AJALobHvpuj+Kh1ROVc0XfDb60tB3c7rakbqjZbixtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773056439; c=relaxed/simple;
	bh=iawZxXCHV/teSW9TbByTZ0aCl2jCak1q3AZVPQS3+5c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ovIotZUM2S2gbueogjVZ0CHk6oGcrKI+Hgjk0Nu9Z/5bITfjJO5iQaWk2pwemeO8okHoTFhG3Xh4dN9qLe0ZzTWu3cR1cD3eTgrwCWBCY+NpF8zY2Ckl11/pDeKHNKCedzXm7c9M13rH1lRrvG5wtHs6TdZoCKrbZrM5CZPILOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KrgWMTOn; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-4327790c4e9so8911792f8f.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 04:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773056435; x=1773661235; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SQ9F92hXIJmt/OqV8+0Y8qWB6C+g5fuewMC6KiuhW88=;
        b=KrgWMTOnsO8lwwizqhdDWJnLDXQpcAOenotW3cn2jOgnEozvbH9RJXGfwfAqWa3QTb
         pn5rxFO8y9KZwweEVkn9gdpfImgL2j01bwpsiggntdHMHXSs+RRorjigdz5N4XB/pZSz
         kjfWD4Zy1W6ovBcUW0eviSDjUO5xTIM+09HYdZtcTuN+OtHXXc+s+nJVNTXFymrekFhh
         6RnRTQowA4YFgkb1nGtyD4iFukeYZysYlAwR24OIkSt4i2NTeCutHnfTW/UvEM1StOwg
         fC1XAUG40qTDWdaVt5DqzqvVlVD98jQ9bu46SeMIXBsygfInwkm1EiKApe0LdCtHs+Y/
         tILw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773056435; x=1773661235;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SQ9F92hXIJmt/OqV8+0Y8qWB6C+g5fuewMC6KiuhW88=;
        b=Ingx+nGQH0Euk0WbxzLn/15+OduM5pglVq8dZUk3JYwtTg8D/a5IIpKruRAHOtBVB7
         J5+OTPCqOlzxQAV7b0kmJD16vM4F0tCUPD2mCzPliTbdYOJ9KMnRuqeWBYROW5hV73e0
         uoTw/BenfADRr8lB1ET/wF8nR0KP3LZwnHJW7Jv+ChURzPryR7k6S+QAzspMkcXnDROZ
         pb+8j2omi3ZYt+PgW0Nxn4QrlQ3h/c746xxcj22zSkmNZTcdbpRF+mwD4SKYNOUwUCei
         2mSN5HdwF4om2PoVnUGkkVZjftR4Rp4lg+zjylr1xkr4jRKyjmE0JN8mTGLHksVJYcM3
         JrIw==
X-Forwarded-Encrypted: i=1; AJvYcCUUGYOJiPMXaFrua5WLcZQId06Kz+jXJcex0iPWRWC7aaT18i50yYOJwBwN8VpaCzctphc+JNul/A6o@vger.kernel.org
X-Gm-Message-State: AOJu0YxKoDE8mWBYdUMG+QwWQby7VPnw6mZjw8fg7puIypXca/AKebJ6
	tDlCRWYyYsl7IuPEqHO3lXMgzUwn6DzYtfWnX6mLYbLW0pOPxh9rNP9l
X-Gm-Gg: ATEYQzzXisNiaBxheaH2VyLuyCUzpwimLBQs6W2g2pGHdZY38HG+O9/Q4E+RDRYviil
	Fb2gbc5B2DX1BGTklCFE3fjfx9mWzBQfMkoQ0SmGESPKFh0F9oqdnq12UzlQeZ+4QZHnJx3ljQJ
	ZWE6LJeJ0jF/lqENSbnrXK2M1KCfuwUd3kHD84rAwAOFg4HHZ/GWA6qv8VCaANr32d8c1jHXt38
	Zavep5U7rbPJtASI4+/tKNNImxWehpsP4XumMBK7Em84Icxnwt7iLD0St+7SpEdkRHIMOCVx7Rx
	Jja3S4DIcKF1VmuhCtVO621hChgKdibRHnLXB0IjFNaudy6h466ezLrX/W4izdccYRAs25dIXmR
	YRFaiZkxmVeGw8qRw7wmnCvDXDqUTu6WH+y6hJwyqIkaGIJSLl1PmjkFVSIw6dOwR5n///N3eQJ
	GWv68ECIQGUjh7gAZg0O2jlaL69OgDLHMGB4lOMoZGThg70QeR29gDtc4OmAeDEjPW
X-Received: by 2002:a05:6000:1886:b0:439:b541:a091 with SMTP id ffacd0b85a97d-439da8a2cd8mr18675754f8f.56.1773056435052;
        Mon, 09 Mar 2026 04:40:35 -0700 (PDT)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.236.52])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad8ec97sm28471699f8f.5.2026.03.09.04.40.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 04:40:34 -0700 (PDT)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 09 Mar 2026 12:40:14 +0100
Subject: [PATCH v2 4/7] mmc: sdhci-of-k1: add comprehensive SDR tuning
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260309-orangepi-sd-card-uhs-v2-4-5bb2b574df5d@gmail.com>
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
X-Rspamd-Queue-Id: 419E92380A3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272870-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.969];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

Implement software tuning algorithm to enable UHS-I SDR modes for SD
card operation. This adds both TX and RX delay line tuning based on the
SpacemiT K1 controller capabilities.

Key features:
- Conditional tuning: only tune when SD card is present and for
  high-speed modes (≥100MHz)
- TX tuning: configure transmit delay line with default values
  (dline_reg=0, delaycode=127) to ensure optimal signal output timing
- RX tuning: test full delay range (0-255) with window detection
  algorithm to find optimal receive timing
- Retry mechanism: multiple fallback delays within optimal window for
  improved reliability
- Complete register support: add delay line control and configuration
  register definitions for fine-grained timing control

Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 drivers/mmc/host/sdhci-of-k1.c | 119 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 119 insertions(+)

diff --git a/drivers/mmc/host/sdhci-of-k1.c b/drivers/mmc/host/sdhci-of-k1.c
index 79cb7c8d0b6d9c4206bf01721651c8efe8a173c9..d903851b9be0e1d21a2b30636f5e63a52cad0dc2 100644
--- a/drivers/mmc/host/sdhci-of-k1.c
+++ b/drivers/mmc/host/sdhci-of-k1.c
@@ -84,6 +84,12 @@
 #define  SDHC_TX_DLINE_REG_MASK         GENMASK(23, 16)
 
 #define SPACEMIT_RX_DLINE_REG		9
+#define SPACEMIT_RX_TUNE_DELAY_MIN	0x0
+#define SPACEMIT_RX_TUNE_DELAY_MAX	0xFF
+#define SPACEMIT_RX_TUNE_DELAY_STEP	0x1
+
+#define SPACEMIT_TX_TUNING_DLINE_REG	0x00
+#define SPACEMIT_TX_TUNING_DELAYCODE	127
 
 struct spacemit_sdhci_host {
 	struct clk *clk_core;
@@ -251,6 +257,118 @@ static unsigned int spacemit_sdhci_clk_get_max_clock(struct sdhci_host *host)
 	return clk_get_rate(pltfm_host->clk);
 }
 
+static int spacemit_sdhci_execute_tuning(struct sdhci_host *host, u32 opcode)
+{
+	int ret = 0;
+	int i;
+	bool pass_window[SPACEMIT_RX_TUNE_DELAY_MAX + 1] = {false};
+	int pass_len = 0, pass_start = 0, max_pass_len = 0, max_pass_start = 0;
+	u8 final_delay;
+	struct mmc_host *mmc = host->mmc;
+	struct mmc_ios ios = mmc->ios;
+
+	/*
+	 * Tuning is required for SDR50/SDR104, HS200/HS400 cards and
+	 * if clock frequency is greater than 100MHz in these modes.
+	 */
+	if (host->clock < 100 * 1000 * 1000 ||
+	    !(ios.timing == MMC_TIMING_MMC_HS200 ||
+	      ios.timing == MMC_TIMING_UHS_SDR50 ||
+	      ios.timing == MMC_TIMING_UHS_SDR104))
+		return 0;
+
+	if (!(mmc->caps2 & MMC_CAP2_NO_SD) && !mmc->ops->get_cd(mmc))
+		return 0;
+
+	if (mmc->caps2 & MMC_CAP2_NO_MMC) {
+		spacemit_sdhci_set_tx_dline_reg(host, SPACEMIT_TX_TUNING_DLINE_REG);
+		spacemit_sdhci_set_tx_delay(host, SPACEMIT_TX_TUNING_DELAYCODE);
+		spacemit_sdhci_tx_tuning_prepare(host);
+
+		dev_dbg(mmc_dev(host->mmc), "TX tuning: dline_reg=%d, delaycode=%d\n",
+			SPACEMIT_TX_TUNING_DLINE_REG, SPACEMIT_TX_TUNING_DELAYCODE);
+	}
+
+	spacemit_sdhci_prepare_tuning(host);
+
+	for (i = SPACEMIT_RX_TUNE_DELAY_MIN; i <= SPACEMIT_RX_TUNE_DELAY_MAX;
+	     i += SPACEMIT_RX_TUNE_DELAY_STEP) {
+		spacemit_sdhci_set_rx_delay(host, i);
+
+		ret = mmc_send_tuning(host->mmc, opcode, NULL);
+		pass_window[i] = (ret == 0);
+
+		dev_dbg(mmc_dev(host->mmc), "RX delay %d: %s\n",
+			i, pass_window[i] ? "pass" : "fail");
+	}
+
+	for (i = SPACEMIT_RX_TUNE_DELAY_MIN; i <= SPACEMIT_RX_TUNE_DELAY_MAX;
+	     i += SPACEMIT_RX_TUNE_DELAY_STEP) {
+		if (pass_window[i]) {
+			if (pass_len == 0)
+				pass_start = i;
+			pass_len++;
+		} else {
+			if (pass_len > max_pass_len) {
+				max_pass_len = pass_len;
+				max_pass_start = pass_start;
+			}
+			pass_len = 0;
+		}
+	}
+
+	if (pass_len > max_pass_len) {
+		max_pass_len = pass_len;
+		max_pass_start = pass_start;
+	}
+
+	if (max_pass_len < 3) {
+		dev_err(mmc_dev(host->mmc), "Tuning failed: no stable window found\n");
+		return -EIO;
+	}
+
+	final_delay = max_pass_start + max_pass_len / 2;
+	spacemit_sdhci_set_rx_delay(host, final_delay);
+	ret = mmc_send_tuning(host->mmc, opcode, NULL);
+	if (ret) {
+		u8 retry_delays[] = {
+			max_pass_start + max_pass_len / 4,
+			max_pass_start + (3 * max_pass_len) / 4,
+			max_pass_start,
+			max_pass_start + max_pass_len - 1
+		};
+		int retry_count = ARRAY_SIZE(retry_delays);
+
+		dev_warn(mmc_dev(mmc), "Primary delay %d failed, trying alternatives\n",
+			 final_delay);
+
+		for (i = 0; i < retry_count; i++) {
+			if (retry_delays[i] >= SPACEMIT_RX_TUNE_DELAY_MIN &&
+			    retry_delays[i] <= SPACEMIT_RX_TUNE_DELAY_MAX) {
+				spacemit_sdhci_set_rx_delay(host, retry_delays[i]);
+				ret = mmc_send_tuning(host->mmc, opcode, NULL);
+				if (!ret) {
+					final_delay = retry_delays[i];
+					dev_info(mmc_dev(mmc), "Retry successful with delay %d\n",
+						 final_delay);
+					break;
+				}
+			}
+		}
+
+		if (ret) {
+			dev_err(mmc_dev(mmc), "All retry attempts failed\n");
+			return -EIO;
+		}
+	}
+
+	dev_dbg(mmc_dev(host->mmc),
+		"Tuning successful: window %d-%d, using delay %d\n",
+		max_pass_start, max_pass_start + max_pass_len - 1, final_delay);
+
+	return 0;
+}
+
 static int spacemit_sdhci_pre_select_hs400(struct mmc_host *mmc)
 {
 	struct sdhci_host *host = mmc_priv(mmc);
@@ -344,6 +462,7 @@ static const struct sdhci_ops spacemit_sdhci_ops = {
 	.set_clock		= spacemit_sdhci_set_clock,
 	.set_uhs_signaling	= spacemit_sdhci_set_uhs_signaling,
 	.voltage_switch         = spacemit_sdhci_voltage_switch,
+	.platform_execute_tuning = spacemit_sdhci_execute_tuning,
 };
 
 static const struct sdhci_pltfm_data spacemit_sdhci_k1_pdata = {

-- 
2.53.0



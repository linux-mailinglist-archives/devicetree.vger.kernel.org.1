Return-Path: <devicetree+bounces-270092-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GPP1NRmrpWmpDgAAu9opvQ
	(envelope-from <devicetree+bounces-270092-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:22:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 511F21DBB90
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:22:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 395E13106C43
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 15:15:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F146E407575;
	Mon,  2 Mar 2026 15:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RsiwEpRY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E894141325B
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 15:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772464447; cv=none; b=eNXMpObvoQqu2IhwnhjxEHvgwAbMrudWKuUd12MBx0ScfFEj2GBFqqTIlgrHpUJwi4wXx4GkkegMup4eDfDjJIlRSoxi4VFzXv3GNuWoSqKtwy5ls6HfZHbtTezwTYMo7Q8OUiUhKI4K5F/bOG0C7hUKbWhwxkonlgpx+94peeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772464447; c=relaxed/simple;
	bh=YGXsqqioq9kkrCwc3vs62N/3x0ZWHVLmrt+qJu2Nu9E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GJNydPHJPbm/YFdJUORBq5PMBBT4Y2HkcJZ8PCwTBwoN29Uaan91jcqi+eqgkWMQHpAAEgZcF0FuPGaHrvx4Gj3IpTyt6D88uI/8904lQJfkgKr5pc2InIxfA9Z58L27YjOnyyrrvwiBEZaG3c5r6Yyos7QZ3ziz8V/H+PesObw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RsiwEpRY; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4834826e5a0so52685235e9.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 07:14:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772464441; x=1773069241; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AeFtmpd0OzFDMpfzIzFKTIa4npbmPiXE0EW+dCwlXrY=;
        b=RsiwEpRYuSuZwwAXyeYKliD2lDwFSc9NQ23+R1G73w8qLEDGb/6falpRDJvY9Kd6jC
         2xteP1Hjt0GB6zkfRKHAkI4I4lUYIy9P3nLJKqcuGGF7dVlWP0U+lBlAUoufGd0tr8uj
         4ImNc976Sw9LL/XwPom4W09q5Eo65ug1cDWdB6w62D5g6joeI6bOsGmD76zq0XjvZVGT
         qXb/9YcNfU9v9p5wMBw5idtneS9astO4sK+s028C/PE8i8xZrHYK4agEkLc0Ct+EIjQX
         McDZw96Z4JHoHp0/oOoKXq1ywbl1/Mn3Ib3insCD9X8Qf539BLVbPujUGCnXCD3f7LpE
         CjYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772464441; x=1773069241;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AeFtmpd0OzFDMpfzIzFKTIa4npbmPiXE0EW+dCwlXrY=;
        b=kcd6As77H33DXWbAZeCVm0W7c/0S5qDdcI6kBzPILWcsbGTLzXxIqbgDeciPn9Wm5Z
         rpzp8htgWVpRSOAy40dCgzV9tsLNBjjSQCKoB0tEtiH1tl9du6Ew3O8mrHyI0bFP9+/B
         A2T6hSvcytpvPilxlvb4l+3QIl7jigL5eNxOGhRRYkriBUj58rvvfOHjoxQB6YMUcX52
         tsjjJisk2BjYOCiNXlP4LDIqsZ/ZHaXh1XhXkLYxd+9nZfkCYyuc8PMUGLe32iLlEw2Q
         IuAO9EaRKmx/g9qghI/tf61g282vdJommnL19YiXhZw4pWHmpDAFSj2HiaM+kvCHhuVp
         zSDA==
X-Forwarded-Encrypted: i=1; AJvYcCW8eYPbNbO9wheR3EW7hzvLL4nbXlEhKJbc1CjvTcyga0n7RDvFoX/x4kHS78HPpcQph0jyqdWmosqf@vger.kernel.org
X-Gm-Message-State: AOJu0YxlVpjWjHR7X7apO+MhON/lIVqMx1OHZug77hzQCk9k7nh8x6Fv
	reJvrmxP/eQTmlJq0gANxRompusS9A50fXYdV39H7Mn5ghtUVJ/U3GBh
X-Gm-Gg: ATEYQzxHV3tghPthAKZtXMKiYqD4kOkkVWiFHvbE69smMqcmDKx12LThwHyhbDKsXRB
	fmrTX+CCrCrwbVD7ONSI84VLqWZJpLj96c04/sO2BmsOKK3QJNVcH0AkV/ksPym2xn4gxBrhW/E
	phA+OTFSU64fQZVcjnXXmG5LLIRw3Qgp2zMHFAxHyHa93AJKfTntjaXTAyY+4m1qsqoouZ90Kwt
	kmKupwR4C8l0a3SUyPSTRHX3h57pw4QWipY5EXx7DPwVbp46N56d8tWRHcGM9yvNncFbMadcZ/p
	/l3a6yV3XF8CnDuybrtfqIiLPCGdoZt0ZIERfIPFYT++V8t0fwHuVcfTIaNs9EjPztgzlTjcos4
	PpPyVUHExi8l10q1AXHY48i0kVNOKC5H14cI+yfUETiTpBChnqNB1NYW9NuB0oRjdQ128TQ3k9W
	V3rIWEpjywzaz0apirCYtJfvTnv7hQXSom5qOv+PxIaIAdarYW4+vBe+CqRuU9/g26Lw==
X-Received: by 2002:a05:600c:3550:b0:482:eec4:76d with SMTP id 5b1f17b1804b1-483c9bedad1mr235668315e9.17.1772464441044;
        Mon, 02 Mar 2026 07:14:01 -0800 (PST)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.235.131])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd70e692sm437240265e9.7.2026.03.02.07.13.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 07:14:00 -0800 (PST)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 02 Mar 2026 16:13:28 +0100
Subject: [PATCH 07/10] mmc: sdhci-of-k1: add comprehensive SDR tuning
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260302-orangepi-sd-card-uhs-v1-7-89c219973c0c@gmail.com>
References: <20260302-orangepi-sd-card-uhs-v1-0-89c219973c0c@gmail.com>
In-Reply-To: <20260302-orangepi-sd-card-uhs-v1-0-89c219973c0c@gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Adrian Hunter <adrian.hunter@intel.com>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
 Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Iker Pedrosa <ikerpedrosam@gmail.com>
X-Mailer: b4 0.14.2
X-Rspamd-Queue-Id: 511F21DBB90
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270092-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
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
 drivers/mmc/host/sdhci-of-k1.c | 118 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 118 insertions(+)

diff --git a/drivers/mmc/host/sdhci-of-k1.c b/drivers/mmc/host/sdhci-of-k1.c
index 34a1b9c359193be7dd5f07d1f3d6565b5f40e7ff..95b016bfb5598acea4166257d12af54d945a0c13 100644
--- a/drivers/mmc/host/sdhci-of-k1.c
+++ b/drivers/mmc/host/sdhci-of-k1.c
@@ -88,6 +88,12 @@
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
@@ -256,6 +262,118 @@ static unsigned int spacemit_sdhci_clk_get_max_clock(struct sdhci_host *host)
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

-- 
2.53.0



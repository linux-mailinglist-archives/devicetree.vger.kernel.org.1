Return-Path: <devicetree+bounces-257572-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kA94H6Deb2n8RwAAu9opvQ
	(envelope-from <devicetree+bounces-257572-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:59:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C644AE8A
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:59:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9F2AE86B49B
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:07:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBB13477E26;
	Tue, 20 Jan 2026 19:06:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QqO5GRUr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD3A74779A0
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 19:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768935987; cv=none; b=lcq5EEI/OQZsG+x2QDs+YaSik3v5plBOKhtIdw4Bp1K26Gm2Xz8FvQlZjqA+txqaTqaho5syzhbOezcKbZxpF5dGI5I0bqq+QNpo09kfXVGIQ1mZEzDrqGxVk/5QxKmXqG08S2G1A+UHNAibRTd7R/+Nmu0+cT6KBix2e4c7AG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768935987; c=relaxed/simple;
	bh=FhxRnJeE+n492blGdhTMJDOvXT2t5M+yRqAueV+wnBE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WirF+yJHJQDFqmLGigC4ixXzdf607pNPVQZdPdVxVlLr5jSBQr8daxciR8Nc94MMn86mnI5TD9dUnsfG6YgLT+QEvFoCxrVBqKcXlywvbpDd8bFRpB9a9+xdCACa4aoofYmMtFDDd0UfeHgXyYYPbY5AgGBeqjDr/Z6znDJ6XGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QqO5GRUr; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47ee3a63300so54326065e9.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:06:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768935983; x=1769540783; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=67n3hQj7YZy5SOWtPvVJYLwDNXmEE9p7Iv/fRjacYhE=;
        b=QqO5GRUr9KoYJUIWhIxT3F7BT8KwJz8rU+Z/m+2ytoApM6uobQkVGcS56E2rC55S0I
         XpcLNeEJzHrNwX4ftkkW1V1rDmXgTMwXJt/1FnFtDuQTAyCj7yybwolCdAT0TaRlForK
         16WLbEOUXZHCz5k0KJgFBV/0/4P+yHiQAzjXLl3tFElS/2CgaF4zg1inXqD5HjksPO18
         EFuLUCuA7sdrEuvZBuEdL69hmYbSwpwwDS/0kMs/f7AqhrDl/P3MUkbdteCXgZisl2bd
         djKfJhrqjnEROizfOe+HeuEiE05C/BgQMXk7U7Z8Pz8XhdQ1ul8W7SJbK1iJ+APOcYTJ
         Q8bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768935983; x=1769540783;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=67n3hQj7YZy5SOWtPvVJYLwDNXmEE9p7Iv/fRjacYhE=;
        b=k8GZ1m2Jd1C7KWYHFt2FTKUTX3DVkfG+OwYTkdy80qHPrBaU9saWGqYygsVITpBS/k
         ZpQtJHBMnMRqOFi4APiDutp1UecW0bMIPcj2cyUEVxBFIK0scD30ZkJmGvfP5s+KHkWs
         yHwdNpdK7z+/rI5wI0pfBzawqCJoKi1AVPILgpW864F5AuiL4IhFSJ1ltSPlnz1z7ZI3
         SQJ83yx/9n4a9SOB9LusOahfCHENWUhP7eH3N5vwSqjt81UgAuP15II/3aAG0jrAG8Eq
         DjTqP81lCqyQ6+WvFSQhBJ0lbBQ6BCi9LFSopqQKWdWhNZ6e3YtQyZEEiQnQaUd1hLPM
         g/iQ==
X-Forwarded-Encrypted: i=1; AJvYcCUl1xN1UVQd8P8pyCjc0i8QWNgCMGc3t1nJgRquvXk/1snRA/bO1tWi0RwXP3dd3+tfX5IcC2zoi+0X@vger.kernel.org
X-Gm-Message-State: AOJu0Yxyf3/KWkusL8Grin+UoBNpU9gNeFrNKtJwlfCrEU/yLdJwgMFA
	4hE9a9yXDdITIIG11JmlkWoLHMpoDNDUPDrKe4rKo9b01wsBGWPHtnwt
X-Gm-Gg: AY/fxX45veF67mMj2RdPHLFevFp4NbNOHt/TRt4+bWGdBlGwrzlzTspKvmzYVGnJxYm
	MhbWyR+BjNnDm3o+C2YzkqtVwWduQbGbxy9/ILB6Gn5FOVDEqPZC2b0UHJSqLjBjTODRmKW8obr
	WMrELxeakwtbVebsgH0ASpB+FHxaGk5cY6ZDIreU6J0x6iOWIKmOtoqlxhfL7ceF9eILNLLtMAw
	vSE5l3VESyWMY6WfwxX5OcNgiNmq65Hhf1AigZ4UG62reftykKGxUzn4HWKiYEBB0nYG8OFka5v
	RNxTCxBgrOnrvmslq4Y1844rXlAMnPn5rGnVst2u7f5RiN4qcEuiaI6sBjRSoKvbG21dBc8adCi
	jRcUoEHbUm8qOyqDYUS9PctQRZtdzD0gl3wSlplZV8UwYaRRtrHE6oXAKWTZ+YrcfS/gua/QMXw
	ToD34tUILwTQWIyCx7tFHNcDlGaw+0LZoUBd3keWWJG5sv
X-Received: by 2002:a05:600c:8108:b0:477:7975:30ea with SMTP id 5b1f17b1804b1-4803e7f0d8emr36592245e9.29.1768935982665;
        Tue, 20 Jan 2026 11:06:22 -0800 (PST)
Received: from [127.0.1.1] (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804244c6cesm2005735e9.0.2026.01.20.11.06.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 11:06:22 -0800 (PST)
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
Date: Tue, 20 Jan 2026 23:06:06 +0400
Subject: [PATCH v4 4/6] ASoC: sophgo: add CV1800B internal ADC codec driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260120-cv1800b-i2s-driver-v4-4-6ef787dc6426@gmail.com>
References: <20260120-cv1800b-i2s-driver-v4-0-6ef787dc6426@gmail.com>
In-Reply-To: <20260120-cv1800b-i2s-driver-v4-0-6ef787dc6426@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
 Inochi Amaoto <inochiama@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org, 
 "Anton D. Stavinskii" <stavinsky@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768935966; l=11247;
 i=stavinsky@gmail.com; s=20260115; h=from:subject:message-id;
 bh=FhxRnJeE+n492blGdhTMJDOvXT2t5M+yRqAueV+wnBE=;
 b=IYTjtpETuFRBIdeOCi9W8IJWi8QAr9QuoiHSjwJm/GTcnOXHgzVVe9i9lkOOOLLRsQ0EnG0N6
 Jde6tGJ3cpoBg4m+h5C4VNYCN6MgkpnrfwERSFZ2cL0nZOu8PBEodhE
X-Developer-Key: i=stavinsky@gmail.com; a=ed25519;
 pk=2WxGZ1zd1vQwSPFCSks6zrADqUDBUdtq39lElk4ZE7Q=
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257572-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,outlook.com,perex.cz,suse.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stavinsky@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 68C644AE8A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Codec DAI endpoint for RXADC + basic controls.
THe codec have basic volume control. Which is
imlemented by lookup table for simplicity.
The codec expects set_sysclk callback to
adjust internal mclk divider.

Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
---
 sound/soc/sophgo/Kconfig             |  12 ++
 sound/soc/sophgo/Makefile            |   1 +
 sound/soc/sophgo/cv1800b-sound-adc.c | 322 +++++++++++++++++++++++++++++++++++
 3 files changed, 335 insertions(+)

diff --git a/sound/soc/sophgo/Kconfig b/sound/soc/sophgo/Kconfig
index 9495ab49f042..12d1a57ea308 100644
--- a/sound/soc/sophgo/Kconfig
+++ b/sound/soc/sophgo/Kconfig
@@ -22,4 +22,16 @@ config SND_SOC_CV1800B_TDM
 	  To compile the driver as a module, choose M here: the module will
 	  be called cv1800b_tdm.
 
+config SND_SOC_CV1800B_ADC_CODEC
+	tristate "Sophgo CV1800B/SG2002 internal ADC codec"
+	depends on SND_SOC
+	help
+	  This driver provides an ASoC codec DAI for capture and basic
+	  control of the RXADC registers.
+
+	  Say Y or M to build support for the Sophgo CV1800B
+	  internal analog ADC codec block (RXADC).
+	  The module will be called cv1800b-sound-adc
+
+
 endmenu
diff --git a/sound/soc/sophgo/Makefile b/sound/soc/sophgo/Makefile
index 3f9f1d07227a..c654d6059cbd 100644
--- a/sound/soc/sophgo/Makefile
+++ b/sound/soc/sophgo/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 # Sophgo Platform Support
 obj-$(CONFIG_SND_SOC_CV1800B_TDM) += cv1800b-tdm.o
+obj-$(CONFIG_SND_SOC_CV1800B_ADC_CODEC) += cv1800b-sound-adc.o
diff --git a/sound/soc/sophgo/cv1800b-sound-adc.c b/sound/soc/sophgo/cv1800b-sound-adc.c
new file mode 100644
index 000000000000..794030b713e9
--- /dev/null
+++ b/sound/soc/sophgo/cv1800b-sound-adc.c
@@ -0,0 +1,322 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Internal adc codec for cv1800b compatible SoC
+ *
+ */
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <sound/soc.h>
+#include <linux/bitfield.h>
+#include <linux/bits.h>
+#include <sound/tlv.h>
+#include <sound/soc-component.h>
+#include <sound/control.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/bitops.h>
+
+#define CV1800B_RXADC_WORD_LEN 16
+#define CV1800B_RXADC_CHANNELS 2
+
+#define CV1800B_RXADC_CTRL0    0x00
+#define CV1800B_RXADCC_CTRL1   0x04
+#define CV1800B_RXADC_STATUS   0x08
+#define CV1800B_RXADC_CLK      0x0c
+#define CV1800B_RXADC_ANA0     0x10
+#define CV1800B_RXADC_ANA1     0x14
+#define CV1800B_RXADC_ANA2     0x18
+#define CV1800B_RXADC_ANA3     0x1c
+#define CV1800B_RXADC_ANA4     0x20
+
+/* CV1800B_RXADC_CTRL0 */
+#define REG_RXADC_EN                   GENMASK(0, 0)
+#define REG_I2S_TX_EN                  GENMASK(1, 1)
+
+/* CV1800B_RXADCC_CTRL1 */
+#define REG_RXADC_CIC_OPT              GENMASK(1, 0)
+#define REG_RXADC_IGR_INIT             GENMASK(8, 8)
+
+/* CV1800B_RXADC_ANA0 */
+#define REG_GSTEPL_RXPGA               GENMASK(12, 0)
+#define REG_G6DBL_RXPGA                GENMASK(13, 13)
+#define REG_GAINL_RXADC                GENMASK(15, 14)
+#define REG_GSTEPR_RXPGA               GENMASK(28, 16)
+#define REG_G6DBR_RXPGA                GENMASK(29, 29)
+#define REG_GAINR_RXADC                GENMASK(31, 30)
+#define REG_COMB_LEFT_VOLUME           GENMASK(15, 0)
+#define REG_COMB_RIGHT_VOLUME          GENMASK(31, 16)
+
+/* CV1800B_RXADC_ANA2 */
+#define REG_MUTEL_RXPGA                GENMASK(0, 0)
+#define REG_MUTER_RXPGA                GENMASK(1, 1)
+
+/* CV1800B_RXADC_CLK */
+#define REG_RXADC_CLK_INV              GENMASK(0, 0)
+#define REG_RXADC_SCK_DIV              GENMASK(15, 8)
+#define REG_RXADC_DLYEN                GENMASK(23, 16)
+
+enum decimation_values {
+	DECIMATION_64 = 0,
+	DECIMATION_128,
+	DECIMATION_256,
+	DECIMATION_512,
+};
+
+static const u32 cv1800b_gains[] = {
+	0x0001, /* 0dB */
+	0x0002, /* 2dB */
+	0x0004, /* 4dB */
+	0x0008, /* 6dB */
+	0x0010, /* 8dB */
+	0x0020, /* 10dB */
+	0x0040, /* 12dB */
+	0x0080, /* 14dB */
+	0x0100, /* 16dB */
+	0x0200, /* 18dB */
+	0x0400, /* 20dB */
+	0x0800, /* 22dB */
+	0x1000, /* 24dB */
+	0x2400, /* 26dB */
+	0x2800, /* 28dB */
+	0x3000, /* 30dB */
+	0x6400, /* 32dB */
+	0x6800, /* 34dB */
+	0x7000, /* 36dB */
+	0xA400, /* 38dB */
+	0xA800, /* 40dB */
+	0xB000, /* 42dB */
+	0xE400, /* 44dB */
+	0xE800, /* 46dB */
+	0xF000, /* 48dB */
+};
+
+struct cv1800b_priv {
+	void __iomem *regs;
+	struct device *dev;
+	unsigned int mclk_rate;
+};
+
+static int cv1800b_adc_setbclk_div(struct cv1800b_priv *priv, unsigned int rate)
+{
+	u32 val;
+	u32 bclk_div;
+	u64 tmp;
+
+	if (!priv->mclk_rate || !rate)
+		return -EINVAL;
+
+	tmp = priv->mclk_rate;
+	tmp /= CV1800B_RXADC_WORD_LEN;
+	tmp /= CV1800B_RXADC_CHANNELS;
+	tmp /= rate;
+	tmp /= 2;
+
+	if (!tmp) {
+		dev_err(priv->dev, "computed BCLK divider is zero\n");
+		return -EINVAL;
+	}
+
+	if (tmp > 256) {
+		dev_err(priv->dev, "BCLK divider %llu out of range\n", tmp);
+		return -EINVAL;
+	}
+
+	bclk_div = tmp - 1;
+	val = readl(priv->regs + CV1800B_RXADC_CLK);
+	val = u32_replace_bits(val, bclk_div, REG_RXADC_SCK_DIV);
+	/* Vendor value for 48kHz, tested on SG2000/SG2002 */
+	val = u32_replace_bits(val, 0x19, REG_RXADC_DLYEN);
+	writel(val, priv->regs + CV1800B_RXADC_CLK);
+
+	return 0;
+}
+
+static void cv1800b_adc_enable(struct cv1800b_priv *priv, bool enable)
+{
+	u32 val;
+
+	val = readl(priv->regs + CV1800B_RXADC_CTRL0);
+	val = u32_replace_bits(val, enable, REG_RXADC_EN);
+	val = u32_replace_bits(val, enable, REG_I2S_TX_EN);
+	writel(val, priv->regs + CV1800B_RXADC_CTRL0);
+}
+
+static unsigned int cv1800b_adc_calc_db(u32 ana0, bool right)
+{
+	u32 step_mask = right ? FIELD_GET(REG_GSTEPR_RXPGA, ana0) :
+				FIELD_GET(REG_GSTEPL_RXPGA, ana0);
+	u32 coarse = right ? FIELD_GET(REG_GAINR_RXADC, ana0) :
+			     FIELD_GET(REG_GAINL_RXADC, ana0);
+	bool g6db = right ? FIELD_GET(REG_G6DBR_RXPGA, ana0) :
+			    FIELD_GET(REG_G6DBL_RXPGA, ana0);
+
+	u32 step = step_mask ? __ffs(step_mask) : 0;
+
+	step = min(step, 12U);
+	coarse = min(coarse, 3U);
+
+	return 2 * step + 6 * coarse + (g6db ? 6 : 0);
+}
+
+static int cv1800b_adc_hw_params(struct snd_pcm_substream *substream,
+				 struct snd_pcm_hw_params *params,
+				 struct snd_soc_dai *dai)
+{
+	struct cv1800b_priv *priv = snd_soc_dai_get_drvdata(dai);
+	unsigned int rate = params_rate(params);
+	u32 val;
+	int ret;
+
+	ret = cv1800b_adc_setbclk_div(priv, rate);
+	if (ret) {
+		dev_err(priv->dev,
+			"could not set rate, check DT node for fixed clock\n");
+		return ret;
+	}
+
+	/* init adc */
+	val = readl(priv->regs + CV1800B_RXADCC_CTRL1);
+	val = u32_replace_bits(val, 1, REG_RXADC_IGR_INIT);
+	val = u32_replace_bits(val, DECIMATION_64, REG_RXADC_CIC_OPT);
+	writel(val, priv->regs + CV1800B_RXADCC_CTRL1);
+	return 0;
+}
+
+static int cv1800b_adc_dai_trigger(struct snd_pcm_substream *substream, int cmd,
+				   struct snd_soc_dai *dai)
+{
+	struct cv1800b_priv *priv = snd_soc_dai_get_drvdata(dai);
+
+	switch (cmd) {
+	case SNDRV_PCM_TRIGGER_START:
+	case SNDRV_PCM_TRIGGER_RESUME:
+	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
+		cv1800b_adc_enable(priv, true);
+		break;
+	case SNDRV_PCM_TRIGGER_STOP:
+	case SNDRV_PCM_TRIGGER_SUSPEND:
+	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
+		cv1800b_adc_enable(priv, false);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int cv1800b_adc_dai_set_sysclk(struct snd_soc_dai *dai, int clk_id,
+				      unsigned int freq, int dir)
+{
+	struct cv1800b_priv *priv = snd_soc_dai_get_drvdata(dai);
+
+	priv->mclk_rate = freq;
+	dev_dbg(priv->dev, "mclk is set to %u\n", freq);
+	return 0;
+}
+
+static const struct snd_soc_dai_ops cv1800b_adc_dai_ops = {
+	.hw_params = cv1800b_adc_hw_params,
+	.set_sysclk = cv1800b_adc_dai_set_sysclk,
+	.trigger = cv1800b_adc_dai_trigger,
+};
+
+static struct snd_soc_dai_driver cv1800b_adc_dai = {
+	.name = "adc-hifi",
+	.capture = { .stream_name = "ADC Capture",
+		     .channels_min = 1,
+		     .channels_max = 2,
+		     .rates = SNDRV_PCM_RATE_48000,
+		     .formats = SNDRV_PCM_FMTBIT_S16_LE },
+	.ops = &cv1800b_adc_dai_ops,
+};
+
+static int cv1800b_adc_volume_get(struct snd_kcontrol *kcontrol,
+				  struct snd_ctl_elem_value *ucontrol)
+{
+	struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
+	struct cv1800b_priv *priv = snd_soc_component_get_drvdata(component);
+	u32 ana0 = readl(priv->regs + CV1800B_RXADC_ANA0);
+
+	unsigned int left = cv1800b_adc_calc_db(ana0, false);
+	unsigned int right = cv1800b_adc_calc_db(ana0, true);
+
+	ucontrol->value.integer.value[0] = min(left / 2, 24U);
+	ucontrol->value.integer.value[1] = min(right / 2, 24U);
+	return 0;
+}
+
+static int cv1800b_adc_volume_set(struct snd_kcontrol *kcontrol,
+				  struct snd_ctl_elem_value *ucontrol)
+{
+	struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
+	struct cv1800b_priv *priv = snd_soc_component_get_drvdata(component);
+
+	u32 v_left = clamp_t(u32, ucontrol->value.integer.value[0], 0, 24);
+	u32 v_right = clamp_t(u32, ucontrol->value.integer.value[1], 0, 24);
+	u32 val;
+
+	val = readl(priv->regs + CV1800B_RXADC_ANA0);
+	val = u32_replace_bits(val, cv1800b_gains[v_left],
+			       REG_COMB_LEFT_VOLUME);
+	val = u32_replace_bits(val, cv1800b_gains[v_right],
+			       REG_COMB_RIGHT_VOLUME);
+	writel(val, priv->regs + CV1800B_RXADC_ANA0);
+
+	return 0;
+}
+
+static DECLARE_TLV_DB_SCALE(cv1800b_volume_tlv, 0, 200, 0);
+
+static const struct snd_kcontrol_new cv1800b_adc_controls[] = {
+	SOC_DOUBLE_EXT_TLV("Internal I2S Capture Volume", SND_SOC_NOPM, 0, 16, 24, false,
+			   cv1800b_adc_volume_get, cv1800b_adc_volume_set,
+			   cv1800b_volume_tlv),
+};
+
+static const struct snd_soc_component_driver cv1800b_adc_component = {
+	.name = "cv1800b-adc-codec",
+	.controls = cv1800b_adc_controls,
+	.num_controls = ARRAY_SIZE(cv1800b_adc_controls),
+};
+
+static int cv1800b_adc_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct cv1800b_priv *priv;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->dev = dev;
+	priv->regs = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(priv->regs))
+		return PTR_ERR(priv->regs);
+
+	platform_set_drvdata(pdev, priv);
+	return devm_snd_soc_register_component(&pdev->dev,
+					       &cv1800b_adc_component,
+					       &cv1800b_adc_dai, 1);
+}
+
+static const struct of_device_id cv1800b_adc_of_match[] = {
+	{ .compatible = "sophgo,cv1800b-sound-adc" },
+	{ /* sentinel */ }
+};
+
+MODULE_DEVICE_TABLE(of, cv1800b_adc_of_match);
+
+static struct platform_driver cv1800b_adc_driver = {
+	.probe = cv1800b_adc_probe,
+	.driver = {
+		.name = "cv1800b-sound-adc",
+		.of_match_table = cv1800b_adc_of_match,
+	},
+};
+
+module_platform_driver(cv1800b_adc_driver);
+
+MODULE_DESCRIPTION("ADC codec for CV1800B");
+MODULE_AUTHOR("Anton D. Stavinskii <stavinsky@gmail.com>");
+MODULE_LICENSE("GPL");

-- 
2.43.0



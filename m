Return-Path: <devicetree+bounces-261097-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2AivLgpafGkYMAIAu9opvQ
	(envelope-from <devicetree+bounces-261097-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:13:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B481B7CF1
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:13:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 552273019047
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 07:13:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5877C346E6A;
	Fri, 30 Jan 2026 07:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QBGItkWb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B7D308F39
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 07:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769757183; cv=none; b=iQtzHw0J9wu5zGvFe2kEdi0ZUjHkH+x3+TnMQNf4a4g0+zm3DaCUFcKDOcGTn1VJDUy1RediT0tGp6vzOkUPAc2HvLGGMcx7lqTFt9iYUViLIqmG3M4p8OLV4DK9vcHmkkre5/GkIkWNEV3uV7FgNphTet7spmbGO5EiL7oZZJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769757183; c=relaxed/simple;
	bh=vVxHFH6Yc8NWRiRG32Mnm8241KHahA48nTKLUwCZR9w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JtSKr+zyrs1bT25Sn562pY81Gv7FPGO0PEUqlA7QHT5HCvjTk70ctKu7YPhzA7sy5df2Yy8AtrASonI/pcx5Oy92mbYuS1SquoIRNmURgpOlSgP06rJRsJNWieLVv/Pwk6xUh48alrFM+GU0A/SHVQY6SsIhD/i8QlQ6bUSBCEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QBGItkWb; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-4327555464cso1388598f8f.1
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 23:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769757179; x=1770361979; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qOWxZQdmNaToaPwUEH1k3Iwm/h1XYwVGWPJU1KGWwqo=;
        b=QBGItkWbI6HDwaFF8McF008WgMtJIQZJzk41LQxqenxSxlP4cy0MCRaIcy+/vq4PtX
         nbf7A66rOPLN4PD0j9fUG/iF5Nn/B8Fs2PEwYesh7CHeGKDIB2M4dA9LHBuhURNDGcCb
         5evE63VGZWDCc5hEQeTYCkuQjhd/e7+5MXW8rHdCjr8jltq3HXECgnCCngQd44RoPIjW
         XvRPZYl9Q4naSEFHUVRKLmMoL//lwSXbHLo6wmQrVzabmfn/GwnWf4U0qgRAkUVjtk5/
         RQMZ6Makap6YdiTN0O49cTuOwLD1pTFx9w3j9ICgwVLYk2rNKdX2Gw9FSbddh4zqutmz
         PbIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769757179; x=1770361979;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qOWxZQdmNaToaPwUEH1k3Iwm/h1XYwVGWPJU1KGWwqo=;
        b=isFcZvPOF7jlGLg5Z+CEitxfuqJvpf5gLJqOtAwCcHZJVsZ6x2XV4+t7Pxq4guq6EZ
         xQUldngUBhMX8YbzoIBoQ5VNF1XRh7z9vUOd5kvh1RLyhtnLQS08JzuX8KgOj8K3tzb1
         5lgJT95HgNrQ+didPiFCptA+LBL2KBvaOGxIx7ed0yqV5oe+C3Ff/CFEuuJFFCiO/fiY
         oQ9eaEoJO64Q2YizGA0RhDAO9Os+PnQJz9dxQeX0bFiCXwRAVegUcBQBJshUVV2c4Por
         Xmm2dN9qbVdPRVleFPYUNcOmputPwZeCIkACd/I/O8JU+jQ1u5iNhqFT6kkU7nLGkQ5t
         A+5Q==
X-Forwarded-Encrypted: i=1; AJvYcCXQ8LLshfFk2S0awoVVqZfv9RXSRJNU4737OVuuNXe5P070vbx96EriTxU5XhGct8io0dz9r7tBOTPZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2f8VQaQcnxAlCBXAET+afkfGEelUgpo1NasyTegCaEFJbekHT
	okGpzpUFw5HZcC0K+tj2M1NYUeWRC/Vb4CdNAbagMT7fDlZRzgnFmoo3OyYhN8zz
X-Gm-Gg: AZuq6aJAHWz8UENzEUL7vDTPatEJVZ1EmwTIxclWUgoWwM+667aVBxNqpqosANL6f8m
	/+ucJIRQ2krUnGVFQ9pl1eIzR+93RpDOhq3+to+PFuD+0EAzEy9JTHwFXgkT4H3bPqr/7rZDN0E
	SEW9XgZWQIml0HxjPaOEUxm1LnWqH5Sjz4kigdPW3+hBya5f0B8XbI1YVtVuiSjPiFdrDQAnCjq
	foJrltjWtqGMF68S1e2LklT7aeEmZApmnok3vYc6YWbWLJUfFQQmhsVuFJw6kdT1YssLfIYdNXA
	ebHlEr+kCLdi1cg9FySZ8ryckOfFUQzMtDSUrQqyNwTZNXs9GepWUvRYDxVjxQ9f3tIe3J42KRI
	cDiLRxDOJpB9rBcPlMZCfg+psrxdOcV0j/dn+pFCwBCLjJ3KG1v/6OJdVHXEU7bighdjVHFx9Cj
	oWiTFQt2hyNqs8w5LZBMvZVrk4xqhcp7GOHZqKBT/lSVNLCT/cLstYbl3BFkXgkneYyH9J/GnS
X-Received: by 2002:a05:6000:430e:b0:435:a48a:1239 with SMTP id ffacd0b85a97d-435f3a79d86mr2893572f8f.14.1769757179322;
        Thu, 29 Jan 2026 23:12:59 -0800 (PST)
Received: from emanuele-nb.int.toradex.com (93-34-120-147.ip49.fastwebnet.it. [93.34.120.147])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e132368csm18261389f8f.31.2026.01.29.23.12.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 23:12:58 -0800 (PST)
From: Emanuele Ghidoli <ghidoliemanuele@gmail.com>
To: Francesco Dolcini <francesco@dolcini.it>,
	Sebastian Reichel <sre@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH v1] power: reset: tdx-ec-poweroff: fix restart
Date: Fri, 30 Jan 2026 08:11:35 +0100
Message-ID: <20260130071208.1184239-1-ghidoliemanuele@gmail.com>
X-Mailer: git-send-email 2.43.0
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261097-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ghidoliemanuele@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,toradex.com:email]
X-Rspamd-Queue-Id: 5B481B7CF1
X-Rspamd-Action: no action

From: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>

During testing, restart occasionally failed on Toradex modules.

The issue was traced to an interaction between the EC-based reset/poweroff
handler and the PSCI restart handler. While the embedded controller is
resetting or powering off the module, the PSCI code may still be invoked,
triggering an I2C transaction to the PMIC. This can leave the PMIC I2C
in a frozen state.

Add a delay after issuing the EC reset or power-off command to give the
controller time to complete the operation and avoid falling back to another
restart/poweroff provider.

Also print an error message if sending the command to the embedded controller
fails.

Fixes: 18672fe12367 ("power: reset: add Toradex Embedded Controller")
Cc: stable@vger.kernel.org
Signed-off-by: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
---
 drivers/power/reset/tdx-ec-poweroff.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/power/reset/tdx-ec-poweroff.c b/drivers/power/reset/tdx-ec-poweroff.c
index 3302a127fce5..8040aa03d74d 100644
--- a/drivers/power/reset/tdx-ec-poweroff.c
+++ b/drivers/power/reset/tdx-ec-poweroff.c
@@ -8,7 +8,10 @@
  */
 
 #include <linux/array_size.h>
+#include <linux/bug.h>
+#include <linux/delay.h>
 #include <linux/device.h>
+#include <linux/dev_printk.h>
 #include <linux/err.h>
 #include <linux/i2c.h>
 #include <linux/mod_devicetable.h>
@@ -31,6 +34,8 @@
 
 #define EC_REG_MAX                      0xD0
 
+#define EC_CMD_TIMEOUT_MS             	1000
+
 static const struct regmap_range volatile_ranges[] = {
 	regmap_reg_range(EC_CMD_REG, EC_CMD_REG),
 };
@@ -75,6 +80,13 @@ static int tdx_ec_power_off(struct sys_off_data *data)
 
 	err = tdx_ec_cmd(regmap, EC_CMD_POWEROFF);
 
+	if (err) {
+		dev_err(data->dev, "Failed to send power off command\n");
+	} else {
+		mdelay(EC_CMD_TIMEOUT_MS);
+		WARN_ONCE(1, "Unable to power off system\n");
+	}
+
 	return err ? NOTIFY_BAD : NOTIFY_DONE;
 }
 
@@ -85,6 +97,13 @@ static int tdx_ec_restart(struct sys_off_data *data)
 
 	err = tdx_ec_cmd(regmap, EC_CMD_RESET);
 
+	if (err) {
+		dev_err(data->dev, "Failed to send restart command\n");
+	} else {
+		mdelay(EC_CMD_TIMEOUT_MS);
+		WARN_ONCE(1, "Unable to restart system\n");
+	}
+
 	return err ? NOTIFY_BAD : NOTIFY_DONE;
 }
 
-- 
2.43.0



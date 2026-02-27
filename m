Return-Path: <devicetree+bounces-269396-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4H1wO3LfoWlcwgQAu9opvQ
	(envelope-from <devicetree+bounces-269396-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 19:16:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8591B1BBDFF
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 19:16:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EC43330DE3CF
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:11:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 530D936B055;
	Fri, 27 Feb 2026 18:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l3d/mr+3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 046CD322DAF
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 18:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772215912; cv=none; b=mWMyF7v07wL8MGMsB2dSqK0s7A+NLVCrQXYEG6oabxNtozW5zQhJO/8RqxqLd2ixwA+n2Ca0BWIyjUoRQnH1tXweP4e/1TQeivRu7cM2xItWTPLZ0VBlQ0YHr+BfvTWgyaR+lZCqUFLeRfBPOzWssnbwQbP+wcx/yg7ZSqp+/sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772215912; c=relaxed/simple;
	bh=DAOdtSJZ0Wqs2OaCNpXJMpvuDmDXOU8oUWOLtXvalh8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IZSq3Kh4u64VUZL9mgr6JqizZFXbYbMpEgXVC2D8Zfn97U/lCSqFhOlIYvmOHqVTWMGFw6h3hMcMMX3dQoXHPv3vMa0eNg41vgSEXxYTt13Z+XM/vBfCBVqM0IQ29R2f/22C7xEGBXv6bgjqFsoMy6PCSJKxekoJi/KZavPx8hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l3d/mr+3; arc=none smtp.client-ip=209.85.221.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-56a8395a68bso1130446e0c.3
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 10:11:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772215910; x=1772820710; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J73AVUIPfbTzwwpl4W7dg5hhystNfirpCSzGL61zM1E=;
        b=l3d/mr+3Xtd5VTDR4/eZwxrWPGBYibbx7Kx+zr/kDyYHpnztWYbqtH8GSYlibbXRyP
         U+WTHkYhiGfFlom3dYGi6OFBMjN60MpWrJWki9chpc4NgCtHSjHanpRgxChPaaSlxzBX
         ardZb8GdTsHqINzJUuJFnKeis3TLpszJFu6Gej6cxoImbDshX50IGwm1tIRZhsSUXCY4
         5VAj+te5esfbWSe6mt2LZO3XkenhLHSzpC8f6ONVaf61Sh7mD1c23CCvuE52ONCNr5R3
         n2pUJ91uoQB8C1sq3hHbd67Np7Rkud38dyeretJNuuvESYel73tO7dEYk93QH9pSDE6e
         Yhrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772215910; x=1772820710;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=J73AVUIPfbTzwwpl4W7dg5hhystNfirpCSzGL61zM1E=;
        b=CqdPP80zsTv0YnR0jp+fQpPt50RyD3c3BDQ6ji1NLqwNbnRFj6H37fDVD6iNWJu2jG
         KQ8Sg3PzD46m+ZZkcLgIs+786uJzVmai43q5K3Qzt05ptYAk0ikEhKkiIyw6N7i7G0L5
         rfSGVpTCweaHJC6s3tPolgfYmfXayrLbA/CiUozZojgJQCkI/zhTrl8lyQbw+EbgQsi7
         ko5xUmu5RyFdsUAg56R1Fa4x8N79hmbUDuR0kh7D5MK0jp/CmOqJSU1m4nlGnQGy36zF
         mrklit/T8n0b2H+s4jUTWcnxLTJwTkCzDhYu6+9RNo3nBFYLsJgeehQ5BNru59LUGILX
         fqjQ==
X-Gm-Message-State: AOJu0Yw8xdrVGaBgq9Pe5rD65Kl9gIwerOjxSINzvycxLxGVAfeqSoZ2
	kaQWVZ/JjqzjEUGl2MRbIzJ6jYn5AytK4hM+/MSdcf15wzni1KGFgUnNYTKRRjNMX3A=
X-Gm-Gg: ATEYQzzGOar+isYa3bQYv84UTI7eJFCXIUaZdqi5OTPstXHwA1IKlJQg8VMoAtDQUuL
	7rtpRY/db6UocPwuUU3XjHoUUA0dJxGRoOpt7n9NCljCoArpCM2CeeEsMmQl1y2cRgkDKw2sEdz
	3BTrdk2vj00QBP6JFfNudnTMQUnS0fDrkz0dDaCifYA/9ywl1sAWfl1bA0Bq0KYj+S88FsIQbtW
	xHJpP+9kY8l2PRW+gARqBCDfMm30GXUuCVM0zgyIN+u4YXdK640L8q4tY2WTjEQFn6PfSi+2zZZ
	853jA18fHJmcvoOzqGuYqG9QA7Dbm9SoHjyXO1lydgXtwrEgrzUHMYvbfGkUZ8sOIDSDE+JSPTC
	7oLiyZkZjgvxK7TP/RlLFXfEHzaziOpkesCuZQl4eWY+3ihWx02jqeW5VQWfMp8IAB4vZkZft+/
	ubOPmiqynWoXVaZV6gu2hmSStu
X-Received: by 2002:a05:6123:2e2:b0:566:2494:39d7 with SMTP id 71dfb90a1353d-56aa0acb7dfmr1906057e0c.18.1772215909900;
        Fri, 27 Feb 2026 10:11:49 -0800 (PST)
Received: from nixos ([2804:1b1:b880:4e06:554b:5779:2074:421f])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a92049d05sm7452905e0c.12.2026.02.27.10.11.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 10:11:49 -0800 (PST)
From: Lucas Faria Mendes <lucas.fariamo08@gmail.com>
To: gregkh@linuxfoundation.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ovidiu.panait.oss@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev,
	Lucas Faria Mendes <lucas.fariamo08@gmail.com>
Subject: [PATCH v2 3/3] staging: axis-fifo: fix alignment and handle boolean properties
Date: Fri, 27 Feb 2026 15:10:45 -0300
Message-ID: <20260227181051.36207-4-lucas.fariamo08@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260227181051.36207-1-lucas.fariamo08@gmail.com>
References: <20260227-unboxed-customary-7ce6eda1858c@spud>
 <20260227181051.36207-1-lucas.fariamo08@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-269396-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FREEMAIL_TO(0.00)[linuxfoundation.org,kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[lucasfariamo08@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8591B1BBDFF
X-Rspamd-Action: no action

Signed-off-by: Lucas Faria Mendes <lucas.fariamo08@gmail.com>
---
 drivers/staging/axis-fifo/axis-fifo.c | 55 +++++++--------------------
 1 file changed, 13 insertions(+), 42 deletions(-)

diff --git a/drivers/staging/axis-fifo/axis-fifo.c b/drivers/staging/axis-fifo/axis-fifo.c
index c64a7249feca..4b2cab2f8357 100644
--- a/drivers/staging/axis-fifo/axis-fifo.c
+++ b/drivers/staging/axis-fifo/axis-fifo.c
@@ -387,66 +387,37 @@ static void axis_fifo_debugfs_init(struct axis_fifo *fifo)
 
 static int axis_fifo_parse_dt(struct axis_fifo *fifo)
 {
-	int ret;
-	unsigned int value;
 	struct device_node *node = fifo->dt_device->of_node;
-
-	ret = of_property_read_u32(node, "xlnx,axi-str-rxd-tdata-width",
-				   &value);
+	int ret;
+	
+	ret = of_property_read_u32(node, "xlnx,axi-str-rxd-tdata-width", &ret);
 	if (ret) {
 		dev_err(fifo->dt_device, "missing xlnx,axi-str-rxd-tdata-width property\n");
-		goto end;
-	} else if (value != 32) {
-		dev_err(fifo->dt_device, "xlnx,axi-str-rxd-tdata-width only supports 32 bits\n");
-		ret = -EIO;
-		goto end;
+		return -EINVAL;
 	}
 
-	ret = of_property_read_u32(node, "xlnx,axi-str-txd-tdata-width",
-				   &value);
+	ret = of_property_read_u32(node, "xlnx,axi-str-txd-tdata-width", &ret);
 	if (ret) {
 		dev_err(fifo->dt_device, "missing xlnx,axi-str-txd-tdata-width property\n");
-		goto end;
-	} else if (value != 32) {
-		dev_err(fifo->dt_device, "xlnx,axi-str-txd-tdata-width only supports 32 bits\n");
-		ret = -EIO;
-		goto end;
+		return -EINVAL;
 	}
 
-	ret = of_property_read_u32(node, "xlnx,rx-fifo-depth",
-				   &fifo->rx_fifo_depth);
+	ret = of_property_read_u32(node, "xlnx,rx-fifo-depth", &fifo->rx_fifo_depth);
 	if (ret) {
 		dev_err(fifo->dt_device, "missing xlnx,rx-fifo-depth property\n");
-		ret = -EIO;
-		goto end;
+		return -EINVAL;
 	}
 
-	ret = of_property_read_u32(node, "xlnx,tx-fifo-depth",
-				   &fifo->tx_fifo_depth);
+	ret = of_property_read_u32(node, "xlnx,tx-fifo-depth", &fifo->tx_fifo_depth);
 	if (ret) {
 		dev_err(fifo->dt_device, "missing xlnx,tx-fifo-depth property\n");
-		ret = -EIO;
-		goto end;
-	}
-
-	ret = of_property_read_u32(node, "xlnx,use-rx-data",
-				   &fifo->has_rx_fifo);
-	if (ret) {
-		dev_err(fifo->dt_device, "missing xlnx,use-rx-data property\n");
-		ret = -EIO;
-		goto end;
+		return -EINVAL;
 	}
 
-	ret = of_property_read_u32(node, "xlnx,use-tx-data",
-				   &fifo->has_tx_fifo);
-	if (ret) {
-		dev_err(fifo->dt_device, "missing xlnx,use-tx-data property\n");
-		ret = -EIO;
-		goto end;
-	}
+	fifo->has_rx_fifo = of_property_read_bool(node, "xlnx,use-rx-data");
+	fifo->has_tx_fifo = of_property_read_bool(node, "xlnx,use-tx-data");
 
-end:
-	return ret;
+	return 0;
 }
 
 static int axis_fifo_probe(struct platform_device *pdev)
-- 
2.53.0



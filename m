Return-Path: <devicetree+bounces-269417-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2NklGQz7oWl4yAQAu9opvQ
	(envelope-from <devicetree+bounces-269417-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 21:14:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D618D1BD63C
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 21:14:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8930131B5934
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 20:09:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51B2D47798C;
	Fri, 27 Feb 2026 20:09:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DMxmykvl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C956046AEDD
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772222966; cv=none; b=dAFikHMgdLOibDVWIZ1oFBvtAcnT6sCKTYFva1Vilt+fDJxaTPGxL9t+JBmuKiZcwu36FdCzTcAGLGDAQcPkngV+iFcyxDuC389A9XHFKZsex3hfi8nxJABqSwS4f/0G/sWKkjL/xoBPgiWXvTRMWdHHaYe5mWpCqlc0ekROOSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772222966; c=relaxed/simple;
	bh=9LGQuAqrN49QAmVPvN5/tCzgSfV0JjbPlhmc81CPhYE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=m2vrZETOJZS8EuVWyWv45ZK+DlYdIr2kirrDYZqNIKhvoj0qSN1BhNdoaghbfGhP4+oT6IPLaJzUuHNxfEatwKnnyOMxbTCqDDjXk6KJ8gmVFMpvIJzovPC/cd18pX05/t/6HA7zhQkt5iMLlBpqWtqBo07oWGZFhBMW3Yd890w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DMxmykvl; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-56a9402b52fso2057577e0c.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 12:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772222961; x=1772827761; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kz5e7QGVCBWSZEXYwi9uQzxLh5tMGX0778EbyzcSRSo=;
        b=DMxmykvlPHWmCzlJEmw4cyLXBvRLGcWTMuhLN43OT7dTKXlItrgm0KLP9uRiuGRv7a
         CLWiM0HUMmQy9mwbYPYl+8UzS4L9pK4sfBVxvYT3DzLaKsfEBOn7etLS0KlzGTvhpzTF
         IyawdFBxKNseR3N3BPYDdH1audlz1IuRhJH0X3aPYxkPbuQlppCq8cPHI/37DHF6121m
         8JBucCD6oWN6p67UQ1gUuQ7H4rRAf076KuC41qeEF43sRY9CqIvLfTzrHZgjYnRAekim
         +2ftnKsPnYylZedIurfePiRPiegDC69S7OHV54rf4IaKoU90dYIOgY4RezD96bhsDhw6
         Robw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772222961; x=1772827761;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kz5e7QGVCBWSZEXYwi9uQzxLh5tMGX0778EbyzcSRSo=;
        b=g8KgdVNBFGOdv0MZCqlDzpz4052GQ6ULe6mApb1MzXALL1HpLwjSkheqG4U/zHH/se
         WdyuFjCxImnYu+tHgaVAOO3YVHs7Nvhbo3z730KdOMPQA/xMn4779bC5N7I0jymXvRem
         Mhr+bdRG3wFbcJ8wn0CcaDknyFAn3cl/oM61bMAnYD0tekx5aKj6E2E0ZDIjryc/1KEY
         xTgT0QbKLirrn/l2rDbnlqWk8teYJLePm9yJ/MpyBV0XodIUEwVJEnzyL5uDdNSm1n4z
         rnJF6OgOnybNTiSSF7tmffGr/wnzstk8bM/qSmutdCDn/QXvS5tFB11gVWWEHfHm6BN6
         19pg==
X-Gm-Message-State: AOJu0Yw9IQ0foe0bOsCoalJSz7/OaNSavLfc1jjziYXZZ+P9+2EQ1GEd
	jDjBk3yu/pdwTHxRtdh0rwNwsfnY0/1J3Eym2Twq1kYFQylJHXKLCSW1
X-Gm-Gg: ATEYQzzgw0FB8G/L1QOunGsbV3chozeW61h0kS/VSPIP12lJ2n20BNwMAZn6utcXY8w
	lAQBS9STlBSgmlDdTl1xuPndkt8IDRg3oBxsKh4W0Z5e9KAJYFL9CJSqsSLjwL6rVWHLnscJee2
	B2Fa9buMIPNoxzYcZIKb2TD2RQ13jV/7DM2fPIXP2V7wWnQL1lLEwrItmhsybuj3QRumG6IOvJt
	AHISHNBoY1bEdURuaiL/SBbOldCKrsglS1MVpAPgl1hHe16EkYAVv2skeuGKtTcaw9jbgV8SvFs
	Al+Wl5DZQd6du5dHopPJrmfh3J/A0EnxlTwd4Y4uYfPkN+bctWht3z1bsXa85MIv5W9nZG3pG7+
	kfybJ9+j5TcfiWuE3Jdu+HZU78OkMT8p9OlJoORMgqySRATprky46O48bX8F+Zv6m8RbC0YSxfm
	qwRLfZnRd1EAtwtZjiwMwfcjJ7
X-Received: by 2002:a05:6102:c86:b0:5ed:d33:a65d with SMTP id ada2fe7eead31-5ff32564152mr2980668137.34.1772222960781;
        Fri, 27 Feb 2026 12:09:20 -0800 (PST)
Received: from nixos ([2804:1b1:b880:4e06:554b:5779:2074:421f])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ff1ea6f7fesm6479027137.13.2026.02.27.12.09.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 12:09:20 -0800 (PST)
From: Lucas Faria Mendes <lucas.fariamo08@gmail.com>
To: gregkh@linuxfoundation.org,
	ovidiu.panait.oss@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev,
	Lucas Faria Mendes <lucas.fariamo08@gmail.com>
Subject: [PATCH v3 2/2] staging: axis-fifo: update driver to handle boolean DT properties
Date: Fri, 27 Feb 2026 17:08:44 -0300
Message-ID: <20260227200857.50880-3-lucas.fariamo08@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260227200857.50880-1-lucas.fariamo08@gmail.com>
References: <20260227200857.50880-1-lucas.fariamo08@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-269417-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FREEMAIL_TO(0.00)[linuxfoundation.org,gmail.com,kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D618D1BD63C
X-Rspamd-Action: no action

The Device Tree bindings for the AXI-Stream FIFO were converted to
json-schema, where 'xlnx,use-rx-data' and 'xlnx,use-tx-data' are now
defined as boolean properties.

Update the driver to use of_property_read_bool() instead of
of_property_read_u32() for these flags. Also, removed the fixed
32-bit data width check during DT parsing, as the driver should not
enforce hardware constraints that are better handled by the schema
validation or device initialization.

Signed-off-by: Lucas Faria Mendes <lucas.fariamo08@gmail.com>
---
 drivers/staging/axis-fifo/axis-fifo.c | 56 +++++++--------------------
 1 file changed, 14 insertions(+), 42 deletions(-)

diff --git a/drivers/staging/axis-fifo/axis-fifo.c b/drivers/staging/axis-fifo/axis-fifo.c
index aa90b27197cf..cdeb944fd354 100644
--- a/drivers/staging/axis-fifo/axis-fifo.c
+++ b/drivers/staging/axis-fifo/axis-fifo.c
@@ -246,7 +246,8 @@ static ssize_t axis_fifo_write(struct file *f, const char __user *buf,
 		mutex_lock(&fifo->write_lock);
 
 		ret = wait_event_interruptible(fifo->write_queue,
-			ioread32(fifo->base_addr + XLLF_TDFV_OFFSET) >= words_to_write);
+					       ioread32(fifo->base_addr + XLLF_TDFV_OFFSET)
+					       >= words_to_write);
 		if (ret)
 			goto end_unlock;
 	}
@@ -386,66 +387,37 @@ static void axis_fifo_debugfs_init(struct axis_fifo *fifo)
 
 static int axis_fifo_parse_dt(struct axis_fifo *fifo)
 {
-	int ret;
-	unsigned int value;
 	struct device_node *node = fifo->dt_device->of_node;
+	int ret;
 
-	ret = of_property_read_u32(node, "xlnx,axi-str-rxd-tdata-width",
-				   &value);
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



Return-Path: <devicetree+bounces-267257-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4OvWIFD3m2lI+QMAu9opvQ
	(envelope-from <devicetree+bounces-267257-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:44:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F99C17248C
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:44:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EDF4A3034E34
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:44:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC78E349AF5;
	Mon, 23 Feb 2026 06:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ibne/XYK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D93D346FA9
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829038; cv=none; b=A1B1l8n2xNYJt903P6ZsqyTnMuT5zSDsWii+UdAK8BHE8MbudP6nMTZ49icv8oUCof/O8n/ylJZ3TvmdkXvokyYS6EYW8jN0pO9E86PVAj7uyP9IWdsoUz6Qbk/TA1eLIz8gwotF27tg8JUjgJTRcWC5HkvIAQKbE3DUYG0SC2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829038; c=relaxed/simple;
	bh=OCqMqTV3Fk0GHlGjVJ0UFzNI1DHV1XFUgzJgSRR9AZA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=md7CTlU4cPL4jzj2VLN7Ir6pp0nr5q6WqF+t0SSSBRFg/h/5nb+Jk2bbvJzLDKd5XzHJbHH48msWMwdICKHGZopV1YLtENQqdGUQWyrztLD/O0FnpYjwtE8sjNLpWGZnvjGowTBOunF2TXpN5GyaYysvVGiKjy7DjeRNyNLwK04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ibne/XYK; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-59dd4bec4ecso4046657e87.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:43:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771829035; x=1772433835; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+87770G0UGJrf+jBGNAZwy7BjuGZ53X0m5gpUF71N68=;
        b=ibne/XYKUYUTWuDiS7ANQLisCJtzd0wstNRGKhRQ70aR12RVZFFxkPazdFdlftzH/Z
         bC+XrFR4uiG2kg9RbAPr9xuQwFyvYoj8Itfgb9z8i/n/NCZB+4Qzk5YcmhTxRR438X+c
         XXGmzg5ewF4XQ8SJnj/fjeetBF8KkkYN62KQbemyhrJcwBJA+E39PkpNf5PqiXttLZfL
         XkKBha5enMHc7kER4Oy7c2Mk8njFfnF0zxm+zA4che26sS2SzkEplEOt1y0NDSM+27Pu
         1cWt1l/QZMtr5X+1R4pYp5IIfNMKufztferiHXSxB99DaVhoRbXbhQEw5HWJXS8aSzMu
         A8+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771829035; x=1772433835;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+87770G0UGJrf+jBGNAZwy7BjuGZ53X0m5gpUF71N68=;
        b=aIRSeDMVr48jgmsQAA2Os4S69tOK1/K74bm/gN7wCpnQi1DMj7ncK7PRUZwfW+4TXF
         tRTh3jW+UNcYWsleC1k4eamxOa6xRcSSsLHbjPQDkW0jcSQuu5yaqcgkeZCxjrXc2U6G
         VB4wU+Hk0Sj06PDhsbEjjgwWagRLqYzcHrsE3OPKximWxxih4AVH42tTGsHxXjpfaVfW
         sNbPn+cAK+lSBNqcZ2KeSQFXZ1YCvG9NjRY4aKX7nVx9PiEWByPLWldRsmOePuYXNMGW
         Mcbszz9KkpYBBc5yDoS6PDYt0+vRkzpQ0H+oyRJ4+7PMzlXmROuug4C8To+tv21fDjAB
         YH5A==
X-Forwarded-Encrypted: i=1; AJvYcCVTXEtPfjuUcohag7TMHxx3G+SBJOJ0baBDFyOgf1vdomhYB2BU85OExjywxAUXQ9++hIReybwhxkrO@vger.kernel.org
X-Gm-Message-State: AOJu0YzkuRurzKsYXdUSDYnHjynCwB0QLmiQlErI/CEGJN9f90zoOhaK
	q2VgTkm4KjTDYrfXjXpJCVuIGuxRA1zAfu9jvEx7aW0gszsNg3iyxzM7
X-Gm-Gg: AZuq6aIVaYMO3K/GhyiNrujzmdwxsUl4dBPkRtXUgyq+UV38UgCNM82Ts9+h9l6ajlp
	Z49HQz/VGEOCD8dxIzyfQKyasXN2aU1nDLzSyE7cCRrbwpgwRL50R+gHhq61k6EH9O7XKH47Npz
	j4MpTLA6xGHQclgGMPr6oX7O+WTUqstArAiJLR/wzTxM6Wvz93unfH5/k9QwCRj79NhpIdo44VP
	QWM103PdDiuxINxQxkhbv9GVg5dLYOFajCOapiUMIM9TIhuRIiIM63Z3IyXlAwVmDfXMyafdkU2
	wGbls6vja+6IvaspnS0JJJhsoarC5JVrLpRzWAsVy4W8a2Ex7j3etNmWOvbjkmQDzL6/jgtLK9+
	sALEaQHjUSD46Livxp7/itd/X5+pjhCEPmZgz9ye/BSk7mUeXvEWYDG/s+qNfpGnbaf7/QLzX1+
	UVHyCw7EmvI92B
X-Received: by 2002:a05:6512:1597:b0:59f:710c:5203 with SMTP id 2adb3069b0e04-5a0ed9ba448mr2052492e87.42.1771829035338;
        Sun, 22 Feb 2026 22:43:55 -0800 (PST)
Received: from xeon ([188.163.112.76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb3eb6dsm1363274e87.50.2026.02.22.22.43.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:43:55 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Chanwoo Choi <cw00.choi@samsung.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH v2 2/2] rtc: max77686: convert to i2c_new_ancillary_device
Date: Mon, 23 Feb 2026 08:43:43 +0200
Message-ID: <20260223064343.12516-3-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260223064343.12516-1-clamor95@gmail.com>
References: <20260223064343.12516-1-clamor95@gmail.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[samsung.com,kernel.org,bootlin.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267257-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2F99C17248C
X-Rspamd-Action: no action

Convert RTC I2C device creation from devm_i2c_new_dummy_device() to
i2c_new_ancillary_device() to enable the use of a device tree-specified
RTC address instead of a hardcoded value. If the device tree does not
provide an address, use hardcoded values as a fallback.

This addresses an issue with the MAX77663 PMIC, which can have the RTC at
different I2C positions (either 0x48, like the MAX77714, or 0x68, like
the MAX77620). The MAX77620 value is used as the default. The I2C position
of the MAX77663 is factory-set and cannot be detected from the chip
itself.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/rtc/rtc-max77686.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/rtc/rtc-max77686.c b/drivers/rtc/rtc-max77686.c
index 69ea3ce75b5a..3cdfd78a07cc 100644
--- a/drivers/rtc/rtc-max77686.c
+++ b/drivers/rtc/rtc-max77686.c
@@ -686,6 +686,11 @@ static int max77686_rtc_init_reg(struct max77686_rtc_info *info)
 	return ret;
 }
 
+static void max77686_rtc_release_dev(void *client)
+{
+	i2c_unregister_device(client);
+}
+
 static int max77686_init_rtc_regmap(struct max77686_rtc_info *info)
 {
 	struct device *parent = info->dev->parent;
@@ -713,12 +718,17 @@ static int max77686_init_rtc_regmap(struct max77686_rtc_info *info)
 		goto add_rtc_irq;
 	}
 
-	client = devm_i2c_new_dummy_device(info->dev, parent_i2c->adapter,
-					   info->drv_data->rtc_i2c_addr);
+	client = i2c_new_ancillary_device(parent_i2c, "rtc",
+					  info->drv_data->rtc_i2c_addr);
 	if (IS_ERR(client))
 		return dev_err_probe(info->dev, PTR_ERR(client),
 				     "Failed to allocate I2C device for RTC\n");
 
+	ret = devm_add_action_or_reset(info->dev, max77686_rtc_release_dev,
+				       client);
+	if (ret)
+		return ret;
+
 	info->rtc_regmap = devm_regmap_init_i2c(client,
 						info->drv_data->regmap_config);
 	if (IS_ERR(info->rtc_regmap))
-- 
2.51.0



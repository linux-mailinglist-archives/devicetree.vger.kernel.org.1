Return-Path: <devicetree+bounces-267181-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMEgOQk3m2mVvwMAu9opvQ
	(envelope-from <devicetree+bounces-267181-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 18:04:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E36A816FD1C
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 18:04:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4D483300D777
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 17:03:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E824A3590CD;
	Sun, 22 Feb 2026 17:03:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PWBMGoLV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com [209.85.216.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA85034FF4D
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 17:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771779829; cv=none; b=PrnaqMyImP+G5KKtpbzsHjz59REfpFaixI8iIvhMDUua+gXSBDhYXjYvgo0Tep18kaQUHh+gduqiz4crdQDzgCGFbP9Nx8ptYLlKV7LhfXUfVi8WL1AsIwxhjD6h8tC/uAn15mJnLv0cXbbK9e3Xk/oi4RMbF9fiXxNgN1Op8+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771779829; c=relaxed/simple;
	bh=/B2AURpLRResgweOZQy1ZCUoeez3siSOBLhC5OwWTEQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EvxIjzOeSJOrpzyYTQiseJ8D4mKb4HAzOlf7o73zVQzb9kHyMfFf2IwoZdHBFQaiiyNU/vFEGsMCZ8Fr3xIzVFUmAbArvJLxnsom7UEJacmMKYUK2Hgp4ldAZBNxUlsue5zg01a5umortjP7CRTY38syHiMtKuCBHSc/Ra+dklA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PWBMGoLV; arc=none smtp.client-ip=209.85.216.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f67.google.com with SMTP id 98e67ed59e1d1-352dda4a34eso1503413a91.1
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 09:03:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771779828; x=1772384628; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fnQd6JEtLIjrWrJ2e4Q/WkIQthpBWZKwpASED8F5QdA=;
        b=PWBMGoLVkHL8YRv2XSMhnQdAHymp7j75pv9aqWFvcXM62k4yfSgjTF4uy2bleYZJed
         eW+CglBFnEGHi3jSKnk4T05bwPUnbficQKGPb54FZN7akV0ti6GS7liFPyvYdNPFfSsc
         PuwJLvyjb1Ycz2kmfiVZaemqYOwDqcrRbjay7tqKweZ2uhOYSKxhhtTVJJr94nUYuOsB
         o0Mrxp5/gALkAlczFDPY65N87I4cYoj2TW/rBR+eC1ZatxWlDQNoj63jSNnYBsFSti2T
         62lFl7JeFq6T1atThNUVk2W9EjPNjzav5C9ZBMSkoGghVjBhJauRu/F+w70Vg+nzfvbc
         j8og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771779828; x=1772384628;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fnQd6JEtLIjrWrJ2e4Q/WkIQthpBWZKwpASED8F5QdA=;
        b=ozn/xPSZzNLgvLKrumhYPsUiLd5EAkZAw5V/xPAqqzj4NDL01huOv4pFGWPGV5AQIJ
         7qTCv8K7jCiD2M4uUZn18gJ6ROnYRXknSB4f+R/SSAL2CvQkjLxVPD12HFWEJxSS2aMO
         tbwo/xvBZBJqFU6ffNq2qGL+ZyO8EuHZC4lDgb6ncvg/umvSGoCAaDuXFz2ZqqIQDepx
         tvcfFUZdzAsWH4zpQOgiEeU7EoyAYiXBxd6AaH/qpSdErhcxXWpf0MYe5utjD2PoQ802
         ZukCubIz0GI//PkkJ6hn+FAiwGh6upWB3bGq4DCnytK7WuE8+t5NNP5dZSDtc4GvJuhJ
         8Zxw==
X-Forwarded-Encrypted: i=1; AJvYcCWOEM/9Ti9d8Ro2XCpQ+T+dYvI/75Gj5Gs81a9oaN5obLOHa/ws46KDacbgBlu3B4NU6aaoZ8jVxhMq@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8NTv9mCXu8FA8yaM/n1yRkmW/drFtYli20o8ZdDDWTA5qLn4z
	qB1IqM1Ey+6OLbwaq7PMETxeXR68oiR7nDmkG8NhNvgrY8DQWoCc3XuX
X-Gm-Gg: AZuq6aKgu/awl9Le+KMwxzRbGU3QewA/ymXR//cb06VBarWivIwo1mWdFuSwe8Xmik0
	XNt4FIBKEr7APTm++dFMZunAUG/28lABmRXH+RNmlgOR461KAspa9IdO3TpGo5YNJS4efPMmIos
	OrVdjpYkiaqSBuM1HegBzJZiJhXpPqqSOepMtKFwzFxyZ389nYdHxMFNdggi4W8H0RH7RfJlQnl
	kkLtR6S1ppVrLeeIZhaTcbJ3bM3t3D5BJ7RLPJBIRvkSCDifH+xmZrSBhtbLHWVGkItiTDPboWc
	NmEH8g5aO+ogCWQ+yllipCCnukNp8I9fbbZrzZWC00Mgwdoh0DTbWZhmB93XOuqarcPyLsTU50p
	idGvxNZYnnfVJ3yVkhiFPMQPIKfVRwZ+vISJhZ37k+S7+F6E5cn/PIyQDi80+rHwIYeBQaMf78y
	U5wSvxqvtVpN5EaI3v
X-Received: by 2002:a17:90b:3c43:b0:356:282e:7eb5 with SMTP id 98e67ed59e1d1-358ae8c05aamr5557435a91.24.1771779827931;
        Sun, 22 Feb 2026 09:03:47 -0800 (PST)
Received: from yu.. ([120.242.225.43])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-358bf39ba25sm1555688a91.2.2026.02.22.09.03.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 09:03:47 -0800 (PST)
From: Hao Yu <haoyufine@gmail.com>
To: linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: jcdra1@gmail.com,
	akhilesh@ee.iitb.ac.in,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Hao Yu <haoyufine@gmail.com>
Subject: [PATCH v2 3/3] hwmon: (aht10) Add Device Tree support
Date: Mon, 23 Feb 2026 01:03:32 +0800
Message-Id: <20260222170332.1616-4-haoyufine@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260222170332.1616-1-haoyufine@gmail.com>
References: <20260222170332.1616-1-haoyufine@gmail.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,ee.iitb.ac.in,vger.kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267181-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[haoyufine@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: E36A816FD1C
X-Rspamd-Action: no action

Add support for Device Tree probing by adding an of_match_table. This
allows the driver to be used with aosong,aht10, aosong,aht20, and
aosong,dht20 compatible strings in device tree files.

Signed-off-by: Hao Yu <haoyufine@gmail.com>
---
 drivers/hwmon/aht10.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/hwmon/aht10.c b/drivers/hwmon/aht10.c
index 4ce019d2cc80..66955395d058 100644
--- a/drivers/hwmon/aht10.c
+++ b/drivers/hwmon/aht10.c
@@ -62,6 +62,15 @@ static const struct i2c_device_id aht10_id[] = {
 };
 MODULE_DEVICE_TABLE(i2c, aht10_id);
 
+static const struct of_device_id aht10_of_match[] = {
+	{ .compatible = "aosong,aht10", .data = (void *)aht10 },
+	{ .compatible = "aosong,aht20", .data = (void *)aht20 },
+	{ .compatible = "aosong,dht20", .data = (void *)dht20 },
+	{}
+};
+
+MODULE_DEVICE_TABLE(of, aht10_of_match);
+
 /**
  *   struct aht10_data - All the data required to operate an AHT10/AHT20 chip
  *   @client: the i2c client associated with the AHT10/AHT20
@@ -377,6 +386,7 @@ static int aht10_probe(struct i2c_client *client)
 static struct i2c_driver aht10_driver = {
 	.driver = {
 		.name = "aht10",
+		.of_match_table = aht10_of_match,
 	},
 	.probe      = aht10_probe,
 	.id_table   = aht10_id,
-- 
2.34.1



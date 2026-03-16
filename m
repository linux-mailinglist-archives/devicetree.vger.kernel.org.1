Return-Path: <devicetree+bounces-276010-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMO5G0PDt2n5UwEAu9opvQ
	(envelope-from <devicetree+bounces-276010-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:45:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEB829669E
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:45:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DC457307E0B7
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:40:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A32F383C8E;
	Mon, 16 Mar 2026 08:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FTcYbblg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175163822A0
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 08:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773650412; cv=none; b=m7WkuikPLNPGPQbLRRADCrEnkWuRKKW0f0XrKuo77sIXfGFalfxSohIvDRKUhIeq1/5m9ncrdlext2PNbFdIZn8YHdLNwg/Kx7coMnxFYcPP+K4SxZKVf8QKD0DRvSaSjOnd/s/Igvo56ZVNWXnxnoXnkqGAxU+z2V5L83N/APA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773650412; c=relaxed/simple;
	bh=9FSuapwL6VYJkBDXuygJF37yB4ZM2TQecc51n0jy4uk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LHSzCymBo7ooWPUw5ck8riazPEGbfji2gc7tcKE8truyz/vQrG71jE6Vw9AMsO12df6enlysS55rrYKPjfxqOozu/AhSy9LZkrLJ41y/m/huPezrlYi4LmPM8RhwXaSRt0J1SGvdUNHt7fPaHuySxoItNDn4PRh4Xm485l9IPzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FTcYbblg; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2ae3a2f6007so33249655ad.2
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773650410; x=1774255210; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OUrKY347+cvTpzMzeKy/hfhwRp97bHtF1nhnnAOOMMo=;
        b=FTcYbblggEWkAtHJZD0mJ415sC4SxzLXZlV483cMyiEcqj1yqogsTXfoy2LYwACX+J
         N4KOumKjH71qMOxjfUnwvUiDA6qZMTvqyafnCPRlqswIcjPeOlh2R90ENIu3zukYvvZN
         Z0qp37Z4o3p2qz0vCHP/6csC/J+jZNc31oJshkbBKNuV63IMRu7kvbiziH4fN/0Ubv3m
         MyMNoEhxprIX6Yxl3pgzhS8TUAiPP0p/uHe9gl9fBtSoCMae9z5MEKF9/1kmvYY6Z9Bs
         YG+2QovSFYAqwSY9XPI2ujLdJW14BliFU+ivqxjqfiNfG7ke4tQ5X2o0TbK2JMoskf1S
         V0Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773650410; x=1774255210;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OUrKY347+cvTpzMzeKy/hfhwRp97bHtF1nhnnAOOMMo=;
        b=A4xVGIfhudPDJIWS5t1tVsudBFe5htFkm/eCtzObJJiYRa/m7KrhO79+MD2stkhMY+
         QQ3In1HKPw9UVucyFYL+NcBXCFxuJ3aCXIR2vlck2FscI09T+oJqS4eHsthJPgyGOoGf
         ebVTKhUm8qKRPW1JsPWjHohqEGY3xK6DiQ3AfXm1zm0Rj8CyebavkgbSgkPXmCi52xq1
         rrud1chKkvXMuTvuhFbJAsfKMIcXCDoNGRERTvMKKDi7gxzGJXTq1ukxzvqPIKzaxDNo
         MtI1u0xCEvrfYiIlgeWixFSKqaORGgK1O8CEjtk6J2BEQiH8zc3be6o26ULloUqMZsoJ
         qjAA==
X-Forwarded-Encrypted: i=1; AJvYcCXMYkaLsTsV5c0hr0+7r3jsbFuVNaW0gIZmSlIt+PFzEIHPDg/HHpYTDpyTgYAfA/qDcsDtoEhK4KWU@vger.kernel.org
X-Gm-Message-State: AOJu0YzHk7dmIOV1Sy1aNtp5ayrA+KkmGCbVggVSxkoM7bow+NTkqhzr
	+cpHZh+CQMtjv1BeDzrrUhgI2VWpkrqfNniCNmQZ4JKlMst5sXW6H6Kn
X-Gm-Gg: ATEYQzw4yyMtn53VxM29oe+V+r1ocS1kptaEmS3xDxEjNzmqWCE7uP3wshrYtLQTXGm
	R4G7dq4lNkOCHdMo4wJdk50isZI8rtybjBi7lUHIcvqRzrqMRpRxOB+ze0jod1mmC2ka3L6MJUF
	psnQL4Jgg5Ui8jFamwss9Um+8nZDXRCa0jxC782qJXMHQ9yh3Nlg+qnaPUDycSKmU6U8sJk4z3D
	vuFCOiqGyl0bshxFeeXGribtX7Wsij2gRVjuGzuEGRoL7DMTKqZEE5/c4ErJeqTet90RnZ0jP8F
	10bUqflLdJtLszi5CkZ5RGasRempC2nPjMHFSIvl5TMOhgxrca/rjeh74AVhYI7DcKVq4awhWBh
	voz/nZi8pdoxevJhjkSmF47kRgifrDF6UsERl6tDhSheUDCU2kjyeiLzmqaCIsCjHMbp8cFMpdF
	G53yrAzFY2+lCEwQrN2Gc=
X-Received: by 2002:a17:903:3905:b0:2ae:a70a:2af2 with SMTP id d9443c01a7336-2aecab1ed76mr139356135ad.29.1773650410229;
        Mon, 16 Mar 2026 01:40:10 -0700 (PDT)
Received: from [127.0.1.1] ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b0537b663csm45946865ad.51.2026.03.16.01.40.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 01:40:09 -0700 (PDT)
From: Colin Huang <u8813345@gmail.com>
Date: Mon, 16 Mar 2026 16:39:34 +0800
Subject: [PATCH v2 2/2] hwmon: (pmbus) Add Delta Q54SN120A1 Q54SW120A7 chip
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-add-q54sn120a1-q54q54sw120a7-v2-2-60e6182cc4a7@gmail.com>
References: <20260316-add-q54sn120a1-q54q54sw120a7-v2-0-60e6182cc4a7@gmail.com>
In-Reply-To: <20260316-add-q54sn120a1-q54q54sw120a7-v2-0-60e6182cc4a7@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org, Colin.Huang2@amd.com, 
 Carl.Lee@amd.com, Peter.Shen@amd.com, Colin Huang <u8813345@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773650402; l=2286;
 i=u8813345@gmail.com; s=20260202; h=from:subject:message-id;
 bh=9FSuapwL6VYJkBDXuygJF37yB4ZM2TQecc51n0jy4uk=;
 b=Huug8Dk3UF2dSWSD4aGaQRdhri2+VHtZ6act3ArJCqCRfIcwBTnyjtymCejwNJNQrSn2wBDD5
 3xfUpJ6e+pVCqG2uUY8GjrI3FoLxOpq66Rq/C+6WHcynyd9a0AeAFpX
X-Developer-Key: i=u8813345@gmail.com; a=ed25519;
 pk=Zlg0WqpCw4qbswOqamTBTXIchwR/3SnYZpy7rjaGMdQ=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276010-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u8813345@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CCEB829669E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the DELTA chips Q54SN120A1, Q54SW120A7 in q54sj108a2,
1/4 Brick DC/DC Regulated Power Module with PMBus support

Signed-off-by: Colin Huang <u8813345@gmail.com>
---
 drivers/hwmon/pmbus/q54sj108a2.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/hwmon/pmbus/q54sj108a2.c b/drivers/hwmon/pmbus/q54sj108a2.c
index 4d7086d83aa3..06f9db4912d7 100644
--- a/drivers/hwmon/pmbus/q54sj108a2.c
+++ b/drivers/hwmon/pmbus/q54sj108a2.c
@@ -269,6 +269,8 @@ static const struct file_operations q54sj108a2_fops = {
 
 static const struct i2c_device_id q54sj108a2_id[] = {
 	{ "q54sj108a2", q54sj108a2 },
+	{ "q54sn120a1", q54sj108a2 },
+	{ "q54sw120a7", q54sj108a2 },
 	{ },
 };
 
@@ -278,6 +280,7 @@ static int q54sj108a2_probe(struct i2c_client *client)
 {
 	struct device *dev = &client->dev;
 	u8 buf[I2C_SMBUS_BLOCK_MAX + 1];
+	const struct i2c_device_id *mid;
 	enum chips chip_id;
 	int ret, i;
 	struct dentry *debugfs;
@@ -314,8 +317,12 @@ static int q54sj108a2_probe(struct i2c_client *client)
 		dev_err(dev, "Failed to read Manufacturer Model\n");
 		return ret;
 	}
-	if (ret != 14 || strncmp(buf, "Q54SJ108A2", 10)) {
-		buf[ret] = '\0';
+	buf[ret] = '\0';
+	for (mid = q54sj108a2_id; mid->name[0]; mid++) {
+		if (!strncasecmp(mid->name, buf, strlen(mid->name)))
+			break;
+	}
+	if (!mid->name[0]) {
 		dev_err(dev, "Unsupported Manufacturer Model '%s'\n", buf);
 		return -ENODEV;
 	}
@@ -325,7 +332,10 @@ static int q54sj108a2_probe(struct i2c_client *client)
 		dev_err(dev, "Failed to read Manufacturer Revision\n");
 		return ret;
 	}
-	if (ret != 4 || buf[0] != 'S') {
+	/*
+	 * accept manufacturer revision with optional NUL byte
+	 */
+	if (!(ret == 4 || ret == 5) || buf[0] != 'S') {
 		buf[ret] = '\0';
 		dev_err(dev, "Unsupported Manufacturer Revision '%s'\n", buf);
 		return -ENODEV;
@@ -402,6 +412,8 @@ static int q54sj108a2_probe(struct i2c_client *client)
 
 static const struct of_device_id q54sj108a2_of_match[] = {
 	{ .compatible = "delta,q54sj108a2", .data = (void *)q54sj108a2 },
+	{ .compatible = "delta,q54sn120a1", .data = (void *)q54sj108a2 },
+	{ .compatible = "delta,q54sw120a7", .data = (void *)q54sj108a2 },
 	{ },
 };
 

-- 
2.34.1



Return-Path: <devicetree+bounces-243200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 21602C951A6
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 16:38:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8DF7B342D78
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 15:38:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24D9528314B;
	Sun, 30 Nov 2025 15:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="R6EqpFZH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com [209.85.216.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AAD1283121
	for <devicetree@vger.kernel.org>; Sun, 30 Nov 2025 15:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764517070; cv=none; b=rWvjwgGZRf/37TrYSv+Pp7bpTwskhvz+veTtqiZqoTH9yan8zwsOvLr0FQgAYZnfHGhiSOfJTAe9R2NdhsE034QmLTAFNHAtb71oAP2lUthKBvXXY6AghefkAYGDG1F5Fenb87qt6pFC1iX35+SJ48WXVAgzlaqb5rMcOXH1QLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764517070; c=relaxed/simple;
	bh=AX1CU1q+bUAGz1ETtyCefywPLZYHzcKUg8LhXgYui1s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Nwawk7arKlrhkr6+IVSR1dsijXbU+Nke+P3FGCxRZOBDoplaL7+M9TrLIMOVV4QkJ69RcwMvPtGvYYn1Jv/THeLs70SLU3qr0ERgluNwtr58JD6sVS1JELWlreGbWeKpRxpeJm5Bii96I/9G3rCnpKtPKjZ90ZA23Rdfdu08C3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R6EqpFZH; arc=none smtp.client-ip=209.85.216.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f65.google.com with SMTP id 98e67ed59e1d1-3436d6bdce8so3078868a91.3
        for <devicetree@vger.kernel.org>; Sun, 30 Nov 2025 07:37:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764517068; x=1765121868; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j1Yi/l4JWa+A3tuznHjjnHeDVucB9XhUBFEkwMdmi14=;
        b=R6EqpFZHTv/EXyYbIVKvrmyFyPBqWz6gF0w9m5W087HuA+L7AsxK7AKRyyVqEE/O3c
         9BTApSBarQ75/WNdGmNrORNdggN5XtcpASwDXnHdFj6tw2Y7eUA8p3tBdOuxIWbDcrbL
         0340QEOY/IaGM5iVZcyPwEL2HKBTpF5S22eoYc7Q6HBjcGqEDPx00j5FIpJWDBx14mOt
         T4I0b4+z5k2EUNBEpjegLUJay8WIG1MIBCpDIHky7YRmfdk9lEYWjDsY5W3sROllAeCt
         1uerw/56QePngOcRWQvbJS0XwgcP34qmtP6wsG51elh4Oi6JJJyFjNlLGkHbxGACHvgo
         M5fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764517068; x=1765121868;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j1Yi/l4JWa+A3tuznHjjnHeDVucB9XhUBFEkwMdmi14=;
        b=Ivap7sHvbRDeBdYAmL52Y2gRB/Ph05/Ogaf6Aq9QuxJ6SRqc0mIByLoul+zgrYByQA
         RScjWKPdNTiwp3F1cLB9D/HGjtySedS6DYijSwbpSXEvAurScMuEmuELhqQl4FVH+DUA
         LvTYf0JDXQIMfgdnsOx8xpS6DbHZI8tbp8bFucVMderQvhBKZrxo2FmXYrB/ARCTU22o
         Q6biRDwhyG/x0CSDJ5TYQNOAPxGJm7mLrFDag3bZoESrn3GHEDTSaWOa3dRankb9L83A
         PawH5L+O8ypuIR2khYQAYylDR1UCf7g1F/z161FYA01vMa1oF4q2RX1y8gTdgkc3TTQt
         7r7Q==
X-Forwarded-Encrypted: i=1; AJvYcCW9VB3e8cB8dw937kWgq7jfSNviupUpwWhi6ZEsP0HtkqD9ONzq9ndRNEB+Os5sy83Ic+lMHk3S8Ocg@vger.kernel.org
X-Gm-Message-State: AOJu0YzzNmP2xpPjTElfpfzw4UG0Lb8X9eS86Gzn1lWAR/WS7Gzg6UAj
	NVtCVJwx28+Fes5bw7fOYqovwwaN9Bz3J+AoWvPrMtlSNpYygiKaOiwL
X-Gm-Gg: ASbGncvU8FbNqmxgotVulp2POMusWwUwucWByURVF0bk4JRQO8zUoCXESs/9+UP1ECl
	/4/vmrS6TiGv7f46d3djSXAAx8Mg8U0VIBhDE2ctgoUJwbKqtWRmmPdUCW2afVeRKGbROc2YxQG
	oDRP/vzJygOjWptQ6nJD6qPIHDH5vfo7+q6lWMC4cEOgKj+GHmVGIya532dUgA1YIgkf/MsOarP
	iAihuwMJtOXb6X/bK1ISEaeus5GyhS7pc3fBkg1mQsJ7EPAMpcgjB4gmF/oFA5TEDicB0Kdm46X
	lJMmlSBeiJgOpB/A9gj2WhPv+JGh0YXmw1BkvPzMG7oXnQoYkeSRKhwgW+V3PQrw5hGEXVNLTpt
	r6eIm2hgb+vM+Zjp3QxSgy+tS/dPQGoIL9LOkGG+WsaAuwPa/fkr2/Y21K8AYtCKdjQRizD7S8W
	Fq6X/7qoDwfCWUTQ==
X-Google-Smtp-Source: AGHT+IGI2aWKgKbrFOAmCrFAEqHIE/QQlzwFebvNvp3ijs1nc2xFa49i272QNSLnWhDDmYJZdeEQsg==
X-Received: by 2002:a17:90b:3c48:b0:340:48f2:5e2d with SMTP id 98e67ed59e1d1-34733e7194bmr34028299a91.9.1764517067912;
        Sun, 30 Nov 2025 07:37:47 -0800 (PST)
Received: from Ubuntu24.. ([103.187.64.30])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3475e952efbsm6903483a91.1.2025.11.30.07.37.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Nov 2025 07:37:47 -0800 (PST)
From: Shrikant Raskar <raskar.shree97@gmail.com>
To: jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	heiko@sntech.de,
	neil.armstrong@linaro.org,
	skhan@linuxfoundation.org,
	david.hunter.linux@gmail.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Shrikant Raskar <raskar.shree97@gmail.com>
Subject: [PATCH v2 2/4] iio: proximity: rfd77402: Add Device Tree support
Date: Sun, 30 Nov 2025 21:07:10 +0530
Message-ID: <20251130153712.6792-3-raskar.shree97@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251130153712.6792-1-raskar.shree97@gmail.com>
References: <20251130153712.6792-1-raskar.shree97@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch enables seamless integration of the RFD77402 ToF sensor
on platforms that use Device Tree for hardware description.

Signed-off-by: Shrikant Raskar <raskar.shree97@gmail.com>
---
Changelog:
Changes since v1:
- Add period at the end of commit message.

Link to v1:https://lore.kernel.org/all/20251126031440.30065-3-raskar.shree97@gmail.com/
---
 drivers/iio/proximity/rfd77402.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/iio/proximity/rfd77402.c b/drivers/iio/proximity/rfd77402.c
index aff60a3c1a6f..3262af6f6882 100644
--- a/drivers/iio/proximity/rfd77402.c
+++ b/drivers/iio/proximity/rfd77402.c
@@ -313,10 +313,17 @@ static const struct i2c_device_id rfd77402_id[] = {
 };
 MODULE_DEVICE_TABLE(i2c, rfd77402_id);
 
+static const struct of_device_id rfd77402_of_match[] = {
+	{ .compatible = "rfdigital,rfd77402" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, rfd77402_of_match);
+
 static struct i2c_driver rfd77402_driver = {
 	.driver = {
 		.name   = RFD77402_DRV_NAME,
 		.pm     = pm_sleep_ptr(&rfd77402_pm_ops),
+		.of_match_table = rfd77402_of_match,
 	},
 	.probe = rfd77402_probe,
 	.id_table = rfd77402_id,
-- 
2.43.0



Return-Path: <devicetree+bounces-211251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5022EB3E197
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 13:31:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CBF571A81E0F
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 11:31:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1662630F542;
	Mon,  1 Sep 2025 11:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="HtyNGc34"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D6B326CE1E
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 11:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756726248; cv=none; b=ElDoP4wwl7uTexCDUPKJ5mdVHLujeXPRjKPlDqUYFk9kzZUOFNv08DpJSh/YHv/mjivZ/c/gUOz4uAhtuAqyjySyCjJkeqVBEcLt+OaNIhNdmiRJTfLjrrNCjAikjjMvAT02IlisWfBlidmLGcSJHLuQPydP8C+oqzjg6OD0uA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756726248; c=relaxed/simple;
	bh=yf12NUbJlr5zt2ZgNH1/MSY3Qsy4n7BrLp67JFo7aRw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PSmFriaWcmFKsFqgpd7dAPi87G97Y2OGyP2JnAOK/dnXlhOfCT6sYn5eGBBTEoI3aDN/jWHfgdKEZ4nnO3pOx5EpOrMS6FSoUT0bNMe3EJWRdc6VtjutJsu5WBeqGEyLHjz+F3CHj4Z0e/S7fxYJ8KYRdlJTV+nsvH7Fn54A2l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=HtyNGc34; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-7724cacc32bso923046b3a.0
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 04:30:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1756726246; x=1757331046; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PM7ZOBxbXaYL3polB/sK+4dHFDAVqr3gYjlAgyAuBEQ=;
        b=HtyNGc34lfRkRr/tORTmeMuXXHDRBPeFaRcqPaJFjhmGRLYBehIVFIXq3stI2a3ntu
         KtEnvWO5S5smqz3q3wuP7O61fnd3Cx6DHYGw2qj+P8RVZqja7o6VNivwpUehXH4cpoRW
         zaP1hABovQyGLGRZ4P3F2b0Qzs3yrLChGSyCF4dkn3PucZWo0kpakt3GSUlYplAlpJC6
         9S1X4LXQKvAm3sI2mdwvNJb8adZzMfG49wrBy+FRyckVIztnBR8WNKmzEU5UMsWhzAll
         z+8Ca0toymNW1cI6XkGe0H0XKji/gsoRsXPNL3ZusagOqDD7ooGk6Ps9SA5plh0UeyQn
         4Ocw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756726246; x=1757331046;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PM7ZOBxbXaYL3polB/sK+4dHFDAVqr3gYjlAgyAuBEQ=;
        b=P0myM1ZkRvVuPW/ubFdAFdvnx+GVB/NMYak39K8Gtp5zgFDhVrse2aKg8mF4kuDJW4
         2mcwEq5ptNoCV3HtmKhQ28s1t/YZfdJej4dCfcXL5Nei8mK+Xargqn+jzJU2C98O3hE3
         zTj8wMhs7u1lYSvTAogRQoQyR3YpS3RA89a9JAeWrpU+5Gh3EnXSsVvNmsNNIAuwLOGl
         SGCqgx4910Jp0SWDJr2XgR4H/HPYhdAf0C0cq7wuUTymHaoeTa2omoaVjVStoXqi/ADd
         xWjWH+e4q4sR7DVxOqD9NrTBA1sC1FtF+TO84AwPr6wgcoyset0OSkri1qAmZsXMK6+O
         tYfg==
X-Gm-Message-State: AOJu0Ywjw88nKcquwkJNPcdGB/JLYk2/7rQb/F2q3GWqC+xpeBwIy6Ol
	Szplr7UdvptRHjMK2jk4xaxjV/r3mRyns1pGhRBhgzp1Sq9odAy5jFCp4iodxwoH7E8=
X-Gm-Gg: ASbGncss1JgE4bhleRsLw+ufmNRF+EC68LhiLwFrew6+Ux+m1FcVTH3fdAO3LU+mz1z
	RpHwdqKQlBHn/U9thKeAB2sDj6GMYMXrqSfNlNySjleQ/Lf+Zll6RQDk+S5MnNpE1WX8L0p5l9v
	OBLu7/JJS5j8PFpvh0JWTiF7tbwcEKauYGRxyqjvT6Blbm8TpMa6t0tcCxkCh7eyyWPCoYBfjeZ
	I3MUg0qt6tofBZj0UJsX7xe6ebIb7AnQYoYDeO3V4anDhCV19KDfOUEz9+kd7q04gQVRI7ZHg4n
	gT58uD+I8AzRUu45VJ3da152374fIW4S6dxTgdlfDHdzQqsVlWyBvNTki7kAktVSh/UdxMnN21B
	1I7mrVTWBnHOL6w9ckWJHuW45ZenVzJwTvFgSwETcqYcjfTslF/0NbxIgR+iRArkVw3GAcCaD6A
	QdaNzixkrMcZ5RF4NG6usAs1cC+72e+8dBRPEoulS5tQYismf+rHQrHUp5KoEcCqSx
X-Google-Smtp-Source: AGHT+IHvewUVfv5QStAVuopdslXVnLmKdfTffBO/yLK1Zcu3D+UIlnEHf0YO2HWkB4oXA6WwHzKOog==
X-Received: by 2002:a05:6a21:3396:b0:243:c217:512e with SMTP id adf61e73a8af0-243d6dd1431mr10269229637.7.1756726245635;
        Mon, 01 Sep 2025 04:30:45 -0700 (PDT)
Received: from J9GPGXL7NT.bytedance.net ([61.213.176.55])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7725ad1e9afsm2911441b3a.11.2025.09.01.04.30.40
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 01 Sep 2025 04:30:45 -0700 (PDT)
From: Xu Lu <luxu.kernel@bytedance.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	ajones@ventanamicro.com,
	brs@rivosinc.com
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	apw@canonical.com,
	joe@perches.com,
	Xu Lu <luxu.kernel@bytedance.com>
Subject: [PATCH 2/4] dt-bindings: riscv: Add Zalasr ISA extension description
Date: Mon,  1 Sep 2025 19:30:20 +0800
Message-Id: <20250901113022.3812-3-luxu.kernel@bytedance.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250901113022.3812-1-luxu.kernel@bytedance.com>
References: <20250901113022.3812-1-luxu.kernel@bytedance.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add description for the Zalasr ISA extension

Signed-off-by: Xu Lu <luxu.kernel@bytedance.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index ede6a58ccf534..6b8c21807a2da 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -248,6 +248,11 @@ properties:
             ratified at commit e87412e621f1 ("integrate Zaamo and Zalrsc text
             (#1304)") of the unprivileged ISA specification.
 
+        - const: zalasr
+          description: |
+            The standard Zalasr extension for load-acquire/store-release as frozen
+            at commit 194f0094 ("Version 0.9 for freeze") of riscv-zalasr.
+
         - const: zawrs
           description: |
             The Zawrs extension for entering a low-power state or for trapping
-- 
2.20.1



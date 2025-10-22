Return-Path: <devicetree+bounces-229984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FA4BFE754
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 00:55:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6400B3A7293
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 22:55:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C586305E20;
	Wed, 22 Oct 2025 22:55:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BBS2Gpsq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5148A305E09
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 22:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761173737; cv=none; b=u3LojRYbrIfHHah5eh4bn9mtQmWwXC2bGOkKY/9z6JiDN07wT/2eljiy6tO6iM/0ACKYJ6S46dxa5vxL8Ku7PP7IvwybIWEB7ylEGjP0tLylS90HE6arUWvAei9BW3jIHUgH90HEzU0OIsoKaLM3jMNJ/ayrqzD3onGf/KkHXzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761173737; c=relaxed/simple;
	bh=jXpe3FWCpQUX/yPmnJVd1DXf8MBuRUFgjgrR0h+DnJQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=h/xr1KtZPxyeAS4xZlR6GW5xlA8QXwQmUMP1qtG5SFbIKtS3wQg+uTY4Etwud4P4Fqm6VoeSY/ckN3JC8+j/jMMmGeXNlkrbqUkHHLS0vTStUVnqSWvDLl2ESRcgms0BnIPT9Erv9jlC4ylB8wQ62X7dpZeXPgZYoaI7H8N91lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BBS2Gpsq; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-63c3d7e2217so195113a12.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 15:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761173734; x=1761778534; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h6jfzJ65e63ENjO8fdUhho5J1IrbkDS/V7pwquMxujQ=;
        b=BBS2GpsqJ4ZBt3X5NibW8tzKdg+9ZOvdyDbaaFaxmK1lGNwgis3p/hfcv5Q2Ry75A6
         XX7u+VDXncunzFeudN2rU6WYn6fcm03Mvsk+a/da2W3vKEkjSwQharlaqknc7dd9b9B1
         giE1Hy8uQNvxAxQpxH5BuWMWDyCoTBtyCIiD4/7q1Ptrrr6Jc70NzAfxG5EYprxwEsOn
         Y7E3yK4YXuiPG6yf7Dg1kgScCQ8i2ab+2x/kjKzo1r1hJapHzaz1K2HF3VfhiS8M2t0T
         MRNgHtwjdqnHMpn4LaBIZoE34UnyTXSba5+T+djizQY1Gog/tjxb/WW8BjlOGc2Mgw97
         kbpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761173734; x=1761778534;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h6jfzJ65e63ENjO8fdUhho5J1IrbkDS/V7pwquMxujQ=;
        b=jlw3RZO32LqLafnXrrbSgeAF+eKhseaBxlHYOey36Ma83VnupyOiswFLboEAaXa/d7
         tBcZa+FQuxkQRbCcnvYdyrj0qDhuJAPBhmst9izgzmyc9dP9b0BylE55liniYcTiDYc7
         Nx8ksTF9oq+7/otE1JxM3v31u8Nqn0kk/B84jixhbQJ+3CCjUENnU8GGPPoPypxouVSA
         t291UCa5DSKr0yDN/1svZo0u8MGxgndqD/S7VuIV6xoAxfe/Kfjsd0KUgcyR6Ws1GGdS
         yaYekA6oIfBar1kEmFVNFRAWbGR9ZnkGFE6so810TEJvV+o2tOA7oJqLuWcpF2yeFjMf
         OWAQ==
X-Forwarded-Encrypted: i=1; AJvYcCXeqWBuQsNRKUraNMgS5OjR/uAhWPlzT5/i9dVnLePrxWzbII8WkN8rGhgVo/DWums9VYorDHk50Mga@vger.kernel.org
X-Gm-Message-State: AOJu0Yxo9QZVT4KAT32LaPhlL7M51ESUgdJfZH+F+1sWTBilU8RtIkzY
	AcCWqNEhad6sxxgzCwHEel7BEgF+G2gfQynHCTzNK4aj/Ewccxe30x4zJi8uBsfN
X-Gm-Gg: ASbGncvYH8SXScqYICaiUt8/5labQ75h+7SPk/t6n1ba+Y2gl7B8itCYNlfP1+xMC9n
	QKO57TuoIQH7Tt51Y8I6dmnwCJGfwIXvcJEGyzk1qEWz3kI7HdCZCRmlhPvrLwZJnwOXXEvci/o
	nMgG3D7m62aUtkYruFzK0EQAoBNRmxxogxKt08AWVlGPyguf0ZEIK335Lc9HbJJxNF/bwLdeYih
	5JXIbmVe/uFLE0TEcVNnVqhwVg12FtToJYEs0mnxQqeUWjQNs+Ts5DWrpYp9pwO6oIAYGE/rRml
	XSs+f9AjqTcj+n3RCaNmIfvyK+K+7geHG1yYFwIooIm591Xw8ib1qsScj4N5MlrAonoHA9PvOAm
	xI7jcp7UkrAN963w0tJzJnzYVQk9Ub0nSdTLPRticnfnNP3r9b8GCquHoZzj3W8o0OBrBB/LYDF
	RRWYvRVEzDlcYqExbS94PA58T7/fSKv1IfMtrM6rM/kudxnw==
X-Google-Smtp-Source: AGHT+IFkISWylZTmXXKWNfi6f/Bk/rTCvGgQ01lwVN+2xfhUjSVC9e3mnZIfqUNAmHDc9CA4YwGE7w==
X-Received: by 2002:a05:6402:3514:b0:63e:19ec:c8e4 with SMTP id 4fb4d7f45d1cf-63e19ece4d3mr4907540a12.28.1761173733370;
        Wed, 22 Oct 2025 15:55:33 -0700 (PDT)
Received: from localhost.localdomain ([176.221.203.198])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e3ebb3848sm156665a12.1.2025.10.22.15.55.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 15:55:32 -0700 (PDT)
From: Jascha Sundaresan <flizarthanon@gmail.com>
To: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Cc: Srinivas Kandagatla <srini@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jascha Sundaresan <flizarthanon@gmail.com>
Subject: [PATCH] nvmem: layouts: u-boot-env: add optional "env-size" property
Date: Thu, 23 Oct 2025 02:53:24 +0400
Message-Id: <20251022225323.189114-1-flizarthanon@gmail.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some devices reserve a larger NVMEM region for the U-Boot environment
than the actual environment data length used by U-Boot itself. The CRC32
in the U-Boot header is calculated over the smaller data length, causing
CRC validation to fail when Linux reads the full partition.

Allow an optional device tree property "env-size" to specify the
environment data size to use for CRC computation.

Signed-off-by: Jascha Sundaresan <flizarthanon@gmail.com>
---
 .../devicetree/bindings/nvmem/layouts/u-boot,env.yaml     | 8 ++++++++
 drivers/nvmem/layouts/u-boot-env.c                        | 4 +++-
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/nvmem/layouts/u-boot,env.yaml b/Documentation/devicetree/bindings/nvmem/layouts/u-boot,env.yaml
index 56a8f55d4a09..5d526d960103 100644
--- a/Documentation/devicetree/bindings/nvmem/layouts/u-boot,env.yaml
+++ b/Documentation/devicetree/bindings/nvmem/layouts/u-boot,env.yaml
@@ -46,6 +46,13 @@ properties:
     type: object
     description: Command to use for automatic booting
 
+  env-size:
+    description:
+      Size in bytes of the environment data used by U-Boot for CRC
+      calculation. If omitted, the full NVMEM region size is used.
+    type: integer
+    maxItems: 1
+
   ethaddr:
     type: object
     description: Ethernet interfaces base MAC address.
@@ -104,6 +111,7 @@ examples:
 
             partition-u-boot-env {
                 compatible = "brcm,env";
+                env-size = <0x20000>;
 
                 ethaddr {
                 };
diff --git a/drivers/nvmem/layouts/u-boot-env.c b/drivers/nvmem/layouts/u-boot-env.c
index a27eeb08146f..ab32bf1291af 100644
--- a/drivers/nvmem/layouts/u-boot-env.c
+++ b/drivers/nvmem/layouts/u-boot-env.c
@@ -99,10 +99,12 @@ int u_boot_env_parse(struct device *dev, struct nvmem_device *nvmem,
 	uint32_t crc32;
 	uint32_t calc;
 	uint8_t *buf;
+	u32 env_size;
 	int bytes;
 	int err;
 
-	dev_size = nvmem_dev_size(nvmem);
+	dev_size = device_property_read_u32(dev, "env-size", &env_size) ?
+		nvmem_dev_size(nvmem) : (size_t)env_size;
 
 	buf = kzalloc(dev_size, GFP_KERNEL);
 	if (!buf) {
-- 
2.39.5



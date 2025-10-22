Return-Path: <devicetree+bounces-229989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4376BBFE7B9
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 01:08:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED2963A7F84
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 23:08:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F373275861;
	Wed, 22 Oct 2025 23:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GOCV73mb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC92272E7C
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 23:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761174500; cv=none; b=iJVU7wDs9JwIMEGF0k9grrmWbz+ybeoGPYxS+DSSjVcl8mMIaI365WwzuFNPZZUnQTiJIJQSyeu8Ei4ILEV3mzWvR/qiO9j/LrtVlxfpQJmCmcOiSZtJh5/kXeguTSB7oyhTKNZ2m99U6Dg1U9/YcfXXuFjG4mfgkBBVfP+QlSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761174500; c=relaxed/simple;
	bh=Hpg9oavLDK9CaR0w0ICnxjji5Ii6HVafKTFUu4pTxfA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=bY4TYzeQ+ir8/y9j6E8giCPsM2dx4ocj14snbTy8q3cTyOMlZI7r8r+4xHTBCKipRykW8ToQCTVyfyOelBXzduzkFVIv8OJwBRYqZQH+PWTb+ylsWusjdetLcvYMrwtrcs8VWzIIG7Lxfhz7LLYs6TSqkfvg516UIZi03UjPCU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GOCV73mb; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-63c556b4e0cso259300a12.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 16:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761174497; x=1761779297; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+2dbSSzLduPkgIjWkWfWCo+tCoh5qp9pgf3FaPfLHfQ=;
        b=GOCV73mbOVqMsmH/H7ghzWchnhJz1A1WZC0zvqki7xtsOiEBHl8ZE1ZFgKXN7PqWw6
         yUDGgrk/RfCK+/ha5+h/kGbHvSKJby3QpYA7dutDsPZ59Imwp2Dt8I6yQL+VyzwVwVyn
         RASF3ZYE4v+hCWgEyV1XlgIbEsCvCOxYfGI4MpmqnpscQ/8DPiHxGSOSqc5wCIH+hoYL
         1HaRNQubO4PTfFVIrj8hJRquuHSwMGnmpgX20oL+cz59rDra3X1f4T63t4Zd4rHbVLEe
         qoIr/nXptWEi1vh6Jo1yaOOrZaWDWuf10g2KC34RxphODURtGEWrFVe7uXYlbjVBujsc
         Vy1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761174497; x=1761779297;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+2dbSSzLduPkgIjWkWfWCo+tCoh5qp9pgf3FaPfLHfQ=;
        b=edz8MEXoN00hm6pxi6Ljoo5+2BaNzkudHUYsJDl3nQaNfbV/THJMs2KPY0RmKoEYHo
         0qBIciRofVH1sBzyTWXtccrQN6ekA3ILUUQVfDsGxkN7YFlfkWJz/QGR4mzAyS+kk3vW
         NoKmmh5m8iAHxqhxZAIt8JWdZWRporUDTpAATyymmU36SNzKTHbzMWQ7iEEZxp6kIB/A
         MdQBBnan2TFYx8lj1HR4x1GCJxBGJdyHQplHL5kFFQdF4z1wSpkTtCwlAWUF1rPaLoGd
         VNt7XQ5iu0JcTxsEFr0Aim0XFsA+ObMWWQ57g1O2cspzCTZUjFnxDyeLed0TC17o/jlI
         izQQ==
X-Forwarded-Encrypted: i=1; AJvYcCUexSAYY83kbkUeWzmMjIo/M17TEF/0KoYev55lIo3t4LR4tC5eYCrz9UPZVDzGoaYAjmERCnZv/sUA@vger.kernel.org
X-Gm-Message-State: AOJu0YwouCdc74zJGKzhSSRp6JsxMxgM4epcpHAdAFddWqkYNKWdHP91
	ggAdsX+diwIuaDwpWLi+Y9Lh1aqSqgJI5GBrrxAYpC5GubJOed5Poq/i
X-Gm-Gg: ASbGncsUZrb5BGhOU3x/wc9ZQft81W/Qo8jbtjhWzZj/+/Cwg1ueEOlX0ftZ2LwQ7U0
	YTb8Te44Om2FK5Rrl3Yq4p94/OWpYFEycy0zxet8p1vYOMOQz0qbwCVGYJG8WPs63fWglMlthGI
	gQ1Gu2PwkqgMoFjDUVubf12fQX02KWASvZXpk5leH6BJOWhcbhgFM9nqxAY0nLBQwgN+uZ+eXCw
	Gbq8urxZLNWWEM1auAcp/emwYXx+5Ld84c1oaKROga+lgLMQ3NEyWnO+wun0l/dRCJB+VuTnqhO
	v9WEdgLMmhpBlYBOe61ZLTnoQpJQru7I6PHACPBu/0vkcud2rduh5GjJTRk3Vtzw2m+r0WpQ9pk
	0+jGHQw5rPMhe9soiYaUdCcReZ8GqH4QmFUMlqHddcZTsUcbX4dDbe6VKV/t5PomiHiAR8Aw4PJ
	DA6/IJlC2xWE6nKq42cui9zwIjl8CdsUS/zOLrLY64BFT5SVbKxEb+hXZX
X-Google-Smtp-Source: AGHT+IHESd2k5p0kabMuJWdRF+/2DcOpNu/22+m8ICbOoCijclPfjiTSr9xxcsBFb8gmCENVEfPlWA==
X-Received: by 2002:a17:907:6d25:b0:b45:cd43:8a93 with SMTP id a640c23a62f3a-b6474833449mr2780404466b.62.1761174496591;
        Wed, 22 Oct 2025 16:08:16 -0700 (PDT)
Received: from localhost.localdomain ([176.221.203.198])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e3f316d93sm165096a12.26.2025.10.22.16.08.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 16:08:16 -0700 (PDT)
From: Jascha Sundaresan <flizarthanon@gmail.com>
To: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Cc: Srinivas Kandagatla <srini@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jascha Sundaresan <flizarthanon@gmail.com>
Subject: [PATCH v2] nvmem: layouts: u-boot-env: add optional "env-size" property
Date: Thu, 23 Oct 2025 03:07:41 +0400
Message-Id: <20251022230740.200742-1-flizarthanon@gmail.com>
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

v2: add missing $ref line to DT binding

Signed-off-by: Jascha Sundaresan <flizarthanon@gmail.com>
---
Changes in v2:
 - Added missing "$ref" line to schema for env-size
 - Confirmed dt_binding_check passes

 .../devicetree/bindings/nvmem/layouts/u-boot,env.yaml      | 7 +++++++
 drivers/nvmem/layouts/u-boot-env.c                         | 4 +++-
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/nvmem/layouts/u-boot,env.yaml b/Documentation/devicetree/bindings/nvmem/layouts/u-boot,env.yaml
index 56a8f55d4a09..e9e75c38bd11 100644
--- a/Documentation/devicetree/bindings/nvmem/layouts/u-boot,env.yaml
+++ b/Documentation/devicetree/bindings/nvmem/layouts/u-boot,env.yaml
@@ -46,6 +46,12 @@ properties:
     type: object
     description: Command to use for automatic booting
 
+  env-size:
+    description:
+      Size in bytes of the environment data used by U-Boot for CRC
+      calculation. If omitted, the full NVMEM region size is used.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
   ethaddr:
     type: object
     description: Ethernet interfaces base MAC address.
@@ -104,6 +110,7 @@ examples:
 
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



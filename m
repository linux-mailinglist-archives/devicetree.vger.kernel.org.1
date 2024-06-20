Return-Path: <devicetree+bounces-77815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AA83B9100C0
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 11:48:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD3511C21DBC
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 09:48:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3814A1A8C3E;
	Thu, 20 Jun 2024 09:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="R07gqTv3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84061A8C2F
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 09:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718876880; cv=none; b=DtJIxnkgl9udejl/rvZqXmiKvKVaeAwUGeBQUSWb9gPPEd/cvLFhshbqjWqyJ9cosf/Fuzq6DCtwpZLu411sblPkz7QLafqH9rVU3aHC5Hqhul3GxTix+DBW62NUNAQFNdsYwqdfs3a5s03uFxrzlRyXXJt4pwxXBlgaebSzJWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718876880; c=relaxed/simple;
	bh=QY/fE1vMgobk6BJWDBwWQ56ykc1bAz6OcQGPar4E5Io=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VnvaQOceliUmbKfGDDin2kns5UFeHv+Z6zrZuoyOCDlwYtq38K7Ml2eHyBgZO/UJ36hKPiV262BnPv8YeNarVLsPYIHY0r/fSF9BIQjIzyIJVUWhFYuNJ3qEnNbaNOrVQgjU+5Rl5Yc+EmxqKpeNWXpTQx8drfK7aDRFs6Sc2GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=R07gqTv3; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-705fff50de2so498734b3a.1
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 02:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718876878; x=1719481678; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m1iA/zvEiFStBDAQUtTcnVMjUIjY5Wwj1aHdUMEw364=;
        b=R07gqTv3FbypFtcsjAm9ut7TeY1JRtKNHqhF1dF5W60HJhVWtEaL2qw1eLsW9CXDuK
         LGVyPdmXTxuAvd+nf4RGNuQEyTo7kIftZ3OrXqmtHrkJBdv10JGFK584MR5q+OvAL5AI
         QCaO6QjJnAacNx/bgoSgCyo9R3TihtenSD61o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718876878; x=1719481678;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m1iA/zvEiFStBDAQUtTcnVMjUIjY5Wwj1aHdUMEw364=;
        b=APhHNzxN7aLRjqngWoeLSJfAs9POqjL5Npt9kBi+yqDGt25jLgkwX9TApd2tfQ/4sr
         7XP/GUz91aK3Lv1BSCuyFFmCSlYdZh86ArXPJc9iV0HuPJx4Q1Aeuk8KWzUuNb34rQv1
         atpxhuoFVirNQtmhsakD8csJ6zNi1nRlrwcOponUhHImJuyXhiVd670rEewZlZ5JlPTA
         z5wT9AhLlp5eHpd9wnOqdx9BZtGJn2Ow56m470ZaCFCz6fF7TXRicVjch/ZGlZb/qN08
         tUeusEMt13Rf334YkyNwjXfvXao56dn2dZh6Ck+e/j220YFgJ9tIM+5XNhCV8gm6wOVH
         +0Hw==
X-Forwarded-Encrypted: i=1; AJvYcCWbx5olDsW5xu+sDSQbMUwcuqE3Dt8YAZuhbTwPcz7JtiYinZ29FX+VbMtJPOlUW5bDtTCcsZ9kt57uAYH2osYbtoA+CTmrqI8sFQ==
X-Gm-Message-State: AOJu0YzcM5nCyoSc7eKt84L2d7+cwzl+zdIx0OgdPc4mgut71M1t69iB
	eyPWnuLSWsW/0p7Pxl7ik754icCMTE/rZyDjlVNxMZLkxA7vq0kI/Xe/uxsHww==
X-Google-Smtp-Source: AGHT+IEbLm6UkzausNcxJ9iowsJM7AcH7c4cGUtul3KvHm8nPFGfqXBgRBs6sehTiRsxZ7Zo1TrDRQ==
X-Received: by 2002:aa7:9ddc:0:b0:704:229e:54bd with SMTP id d2e1a72fcca58-70628fa93eamr6460287b3a.8.1718876878161;
        Thu, 20 Jun 2024 02:47:58 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:c53a:5326:7f72:759f])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-70dbae52920sm4164469a12.42.2024.06.20.02.47.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 02:47:57 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: arm: mediatek: Add MT8186 Voltorb Chromebooks
Date: Thu, 20 Jun 2024 17:47:37 +0800
Message-ID: <20240620094746.2404753-3-wenst@chromium.org>
X-Mailer: git-send-email 2.45.2.741.gdbec12cfda-goog
In-Reply-To: <20240620094746.2404753-1-wenst@chromium.org>
References: <20240620094746.2404753-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an entry for the MT8186 based Voltorb Chromebooks, also known as the
Acer Chromebook 311 (C723/C723T). The device is a clamshell style laptop
with an optional touchscreen.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index b1b09db0bd65..e7746afeb0b3 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -301,6 +301,13 @@ properties:
           - const: google,tentacruel-sku327683
           - const: google,tentacruel
           - const: mediatek,mt8186
+      - description: Google Voltorb (Acer Chromebook 311 C723/C732T)
+        items:
+          - enum:
+              - google,voltorb-sku589824
+              - google,voltorb-sku589825
+          - const: google,voltorb
+          - const: mediatek,mt8186
       - items:
           - enum:
               - mediatek,mt8186-evb
-- 
2.45.2.741.gdbec12cfda-goog



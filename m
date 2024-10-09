Return-Path: <devicetree+bounces-109517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B339969EB
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 14:24:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 77B681C214EE
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 12:24:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68A96193404;
	Wed,  9 Oct 2024 12:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nigIrqIn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D72193071
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 12:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728476684; cv=none; b=AXPXfWhBwZBxMzJXVTH6vRGHucMNLcoOdNPNArvmF6QMwG1QdFspMWPq6j90e8DPN4JCHLknwrNDftKGg3BnWUjpME9lun8ZzgJQ7Vi3cQNMkymOitDEhVgbJ1DbX7ztKzDa36221td1F/3Jq7ujW2EbJLSNBBw35TXoRbdmHok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728476684; c=relaxed/simple;
	bh=yZhWSBJtmUTNXjyY2f7F7cFoIFKcQcQq1EsrXrxhduY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Bo0lhsFbi8YMszL+uI4XmBo4OMEZkd42y4w7jyX1kfm8+2H064QkTYJYE4b/3930sgNEWB3B07xDL2fbItsnq0Pa653CrarUt5PO1IH15dE/kFVrN95/E5QN4Pnzc9OKJCrtSUMgr9ED+MIUGSCFJTqqn7oZHs4W+v4NMXnLxEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=nigIrqIn; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2e221a7e7baso2653065a91.0
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 05:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728476681; x=1729081481; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pRO3w4YRlqmMfGpXpUyDIJ6SqFok++X3OxqH0iM6VD0=;
        b=nigIrqInokmMe7REnilGUwEdNeoJ7/1/nTioPqpzwAK09x4TccMEd52ahxJlko3Vvd
         d1ceusJmmgGA5wUrnPp+geBG2i+14ZeKAI+YPq8VW/fHo7NoopU9cxWxZj50RmucT4bK
         heZru+29KMMRt0JKYZAqyaJzbME+ve5a52ZRg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728476681; x=1729081481;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pRO3w4YRlqmMfGpXpUyDIJ6SqFok++X3OxqH0iM6VD0=;
        b=fyIbaL33U7+QyrlUIfO0q4JG4e3YTKoa14XAzyyjHHrToGpbSZw1poXWsMyEOaaL4Y
         Fz78gbShssAaQFeUdj+IEJtr2QkSipPDSYR12/feXHKosGWi2fW/A0gly8mge415GOXf
         XEIUoMNx3sij9UcZs7UOCrKZ/7jfhbBYBynbWZzLLLkoJL8pux4oZYyMGteqhZG+4NVp
         T+KWGjPd0I1gAOYJ8y72XezVOrvPvVxTw8wwqK0KzOu8DvpTPmTbBRbDo7FFLjd9iWAh
         BWTyXkZcWA34+k+RdFsGYLdgyPHZ7wmQ3ed0h8syUGRPH/XbEybkrwVTQBJSCSK8QoeV
         gZbQ==
X-Gm-Message-State: AOJu0YwJJGhGuoAl6guZaCznBn8zO9hvE7ffqON1ILR4deD854BtPZvA
	qI2I5pReaDIEfl5OY0W0zi9Kkz/eSUvs6kMSQ0FWA3EOZFyBNauhXWs3KEbgUg==
X-Google-Smtp-Source: AGHT+IFR4YCq8o1WMj3ffJCtaQfwQjZYacyrIHuI3arITE/z1DIhbz2Woh4iMhd4PpzwQxl9pH5Aog==
X-Received: by 2002:a17:90a:b10a:b0:2e2:bb32:73e0 with SMTP id 98e67ed59e1d1-2e2bb327553mr757104a91.12.1728476681282;
        Wed, 09 Oct 2024 05:24:41 -0700 (PDT)
Received: from yuanhsinte-p620-1.tpe.corp.google.com ([2401:fa00:1:10:bfd7:eb4:8571:b3f4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e2a584ea82sm1515960a91.33.2024.10.09.05.24.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 05:24:40 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Wed, 09 Oct 2024 20:24:37 +0800
Subject: [PATCH v3] arm64: dts: mt8183: set DMIC one-wire mode on Damu
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241009-damu-v3-1-1294c8e16829@chromium.org>
X-B4-Tracking: v=1; b=H4sIAAR2BmcC/z3MQQ6CMBCF4auQWTtmaGsEV9zDuCh0SmcBNYOgC
 eHuNi5cfsn73w4Lq/ACt2oH5U0WyXOBPVUwJD+PjBKKwZBxNVGLwU8rehtNtO7aOGqhTJ/KUT6
 /m/ujOGqe8JWU/T+mtibMM+NblHEzWKPpe0fh4u0Qm25IpZF1Omcd4Ti+yc870pkAAAA=
X-Change-ID: 20241009-damu-a3f2f3478409
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Hsin-Yi Wang <hsinyi@chromium.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.15-dev-2a633

From: Hsin-Yi Wang <hsinyi@chromium.org>

Sets DMIC one-wire mode on Damu.

Fixes: cabc71b08eb5 ("arm64: dts: mt8183: Add kukui-jacuzzi-damu board")
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
Changes in v3:
- Add missing Sign-off-by tag
- Link to v2: https://lore.kernel.org/r/20240910-one-wire-v2-1-2bb40d5a3cf8@chromium.org

Changes in v2:
- Add fixes tag 
- Link to v1: https://lore.kernel.org/r/20240910-one-wire-v1-1-d25486a6ba6d@chromium.org
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
index 0b45aee2e29953b6117b462034a00dff2596b9ff..06a689feff52945d141d196d439cba034f25fdf6 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
@@ -26,6 +26,10 @@ &touchscreen {
 	hid-descr-addr = <0x0001>;
 };
 
+&mt6358codec {
+	mediatek,dmic-mode = <1>; /* one-wire */
+};
+
 &qca_wifi {
 	qcom,ath10k-calibration-variant = "GO_DAMU";
 };

---
base-commit: 75b607fab38d149f232f01eae5e6392b394dd659
change-id: 20241009-damu-a3f2f3478409

Best regards,
-- 
Hsin-Te Yuan <yuanhsinte@chromium.org>



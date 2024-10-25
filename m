Return-Path: <devicetree+bounces-115473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 200669AFB76
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 09:48:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D8A9528435B
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 07:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 217A41BE871;
	Fri, 25 Oct 2024 07:48:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="WwYk1HBL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F93B18C928
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 07:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729842534; cv=none; b=MLRR/wmu4YmTi+UNlffpQ3xUfiDjtWeizedVMm56bpnfAiq0REtQKu9WDAlO8an9U7oyoYpLv+8XkLNZKWtnkAJFlcoVG3zGCB6ZGe0Krl2oVRfCuulVYKpCN9AlnGrJ4FPNVmDtppT9Wcw8t+heJLRhNaqvR0k9eDjstUu9KlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729842534; c=relaxed/simple;
	bh=AcKtayDA1l3B02uNLoEC1MG1LG4klFVt49WT24NvHCY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=e6k3HgMXJHqBS55CfRq2WkkPQfewXilUXerIMtEJAj7ZvtczEt0o8GBAaA3UzYNucO/dxPNlqCOHY3qaZK00PPrRicYxsOOW4byyBLPonp76mMZNuLWCL/eo+6YosG0kbhxzR/55WImlp8VFkpY8lt1RFUsG1j8cPBcpJaOVmV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=WwYk1HBL; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-7183a3f3beaso1043472a34.1
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 00:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729842530; x=1730447330; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=L/uGdh4k87UdLsVlqrkIfn4gIIwnutqsKO4ayJkibeU=;
        b=WwYk1HBLeEN4hAMyOoNLvJeqPSD+JEEKToBcuhbQLAvoeRKvY6W3DXFDVaq1P0skO2
         0uZ5jutFaH1T+O8ADF+Gb3tWJ1dAc9TMmhvIAhJywwHNV6aqeZpn2LKAv9teia0CZXQl
         5iYw6aEZFpoQ5LqKhUk8RRDjJu/bujDzYaV6U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729842530; x=1730447330;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L/uGdh4k87UdLsVlqrkIfn4gIIwnutqsKO4ayJkibeU=;
        b=fD4J68ovYy0GSUfiotu0BthoqdULbxyIIC0hRVnKPiECJkJMnRP7tuwizFglmQICq2
         M8uuBK8K4UndxobWmkKzRlO+1jfGh9lZGpV62GTFsPqSYsfEDDdB4EpFuA7Ra9qRyrjh
         zSdyI9sjd6yLEUmasov1yvxbGAt10ZfZ9qi5TgYhRWHP7ixYetidGUpMTD9f1nROD0zU
         DJwZuqjEYgxmQf+ccOe9654RZOx+VFGVqopBIhk8apIVMBP+Dl868Yda2RaZTtbcepHT
         SX/FpN2gvDiys+FepFvwC4sI4maWzLeqx5hTz8m66ZL9QCKLa+i/9CvpdrMKPncz/6C6
         tJGg==
X-Gm-Message-State: AOJu0YyfSxEb+clHSXF7H6b21+HZNCa+NdZj9CbWDHGUTmw7MR0ktVHF
	HaqeMGY4mx8u0BVDpFfBJRU27cbUtgzqlwUUBpIYlZzlliPwNM+S8eEKp/g6prUyicW8sZxP+Oc
	=
X-Google-Smtp-Source: AGHT+IGSIU/bFTwcE96kf/0wGJ0BJfJiuO8y8CrN5NyTUQ2vHijmdL2HboIEe85P5cA+/Hj/rUfY3A==
X-Received: by 2002:a05:6830:25c2:b0:718:1606:c2df with SMTP id 46e09a7af769-7185940f8e5mr3286435a34.3.1729842530333;
        Fri, 25 Oct 2024 00:48:50 -0700 (PDT)
Received: from yuanhsinte-p620-1.tpe.corp.google.com ([2401:fa00:1:10:5a9f:16cc:8d5a:55e5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7205793189esm535527b3a.58.2024.10.25.00.48.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 00:48:49 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Fri, 25 Oct 2024 15:48:44 +0800
Subject: [PATCH RESEND v4] arm64: dts: mt8183: set DMIC one-wire mode on
 Damu
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-damu-v4-1-241bd9366c20@chromium.org>
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
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
Changes in v4:
- Add Reviewed-by tag back, which is dropped in v3
- Link to v3: https://lore.kernel.org/r/20241009-damu-v3-1-1294c8e16829@chromium.org

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



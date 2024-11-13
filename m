Return-Path: <devicetree+bounces-121405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E13949C6A74
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 09:17:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A54AD28199B
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 08:17:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E067B187553;
	Wed, 13 Nov 2024 08:16:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Z8dRLdDi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC9217837A
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 08:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731485818; cv=none; b=IXJPD7jjfP6uPgxAi+dHIdYKf01+taUw87/sj3hXwMZOHgTGWxXZXnAw+w2jhDjxDBHTYsfv3jV/xmx+2/gIz4yuQ42gjNibgz1R4MHIAZmf2Vi52en7CXL20vXgXz2Gxar8mrZRlXVvEzggjHxKvQgaWwWRCGFC/9Hv1TFhpXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731485818; c=relaxed/simple;
	bh=D+a0/HfZ9qQqRQETejI0cSOgKGfAeKoNtsNvnoEUGRo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=eMMBh7m5XB9MGlrARRfkrSfsGu3cnE+Jodxv+flvyD7IQ0wT5wpWMc0GrVFcRqcX/XeQ3QtPxoOHReWeN7tl58nsLdd0tTtcGgaIB4+UGUdTHdvnxUuRgNG+qYcoVcHAi759ToSUPP5uXDYUW64GTI2vjNs6CXXzeXUXxKFiqoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Z8dRLdDi; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-20e6981ca77so76380715ad.2
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 00:16:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1731485817; x=1732090617; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=L/uGdh4k87UdLsVlqrkIfn4gIIwnutqsKO4ayJkibeU=;
        b=Z8dRLdDiAilloVItpD+tki66Ju1Sb38pmkcZw+FO3eQ9AkMOzd0X71LmLZyogKUGSN
         LhmomUv29H7F+DG3COPUnaKReozos+q9HRVf8u1ZDaIkZDziOY8dSaSlYfntL+IkAt3x
         lwRNcZNzgaaRcFRc6DnciEJHLLkOp3SvZdhx0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731485817; x=1732090617;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L/uGdh4k87UdLsVlqrkIfn4gIIwnutqsKO4ayJkibeU=;
        b=Duc/BY/e/rxrDYiWvj5gBTVlRxfTBzCCNVDlE1p4wHGxOpRBEUv+bHTOuhr4wJKlPk
         rIv7MJKz1/D5ElE/+d0e2eg7OCc4ZK6ep/UJ3rIo/u+xNWG/OuHhVCv6no1H3O027he6
         YH4xEQf6MO4HVc+XLIpkoOwzSGC5T+HLV6wE9LVTTmMavknOVOaq4YkXNPhGkpv6KjiK
         582Tedm3LN8GxIrNkXjh2xpbtZblvGUnYpJHJNsVfwcuEi4QhOVlHSjmhuAmYb1qFU3T
         XY58yrbXb6Z75a9g+UZKRGKBloaVVqo9OYAC4fpiPPl0LSqINm3p36wx3ff8+lNxdfYa
         Rpjg==
X-Gm-Message-State: AOJu0YyCSrmsaEsb+YPoUNl/V0N1qVusnLqdHOeqD4RrBV/kKjR2ZjXP
	L1mQUNvB+SJSku50cbYGpW0qVtw+DFABuUzeKl4YDIi2fA5lW0fGfZyLBTTSjA==
X-Google-Smtp-Source: AGHT+IHPhYwkzPsxjo/RCUL5hnCpKp45auPZIIYVaYgX0w4KzvUg5iggyNngj3Fzi9Z6NWyiw/1UDw==
X-Received: by 2002:a17:903:1ca:b0:20c:ce1f:13bd with SMTP id d9443c01a7336-211b5c3f07cmr20960895ad.18.1731485816613;
        Wed, 13 Nov 2024 00:16:56 -0800 (PST)
Received: from yuanhsinte-p620-1.tpe.corp.google.com ([2401:fa00:1:10:a280:b47c:f4f6:1c31])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21177e69029sm105462645ad.230.2024.11.13.00.16.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 00:16:56 -0800 (PST)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Wed, 13 Nov 2024 16:16:53 +0800
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
Message-Id: <20241113-damu-v4-1-6911b69610dd@chromium.org>
X-B4-Tracking: v=1; b=H4sIAHRgNGcC/7WOuw7CMBAEfwW55pBfSWwqCmgpoEQUTnImLhIjB
 wwI5d8xKZAQNBSUe7qdnTvpMTjsyXxyJwGj653vUpDTCaka0x0QXJ0y4ZRLRqmG2rRnMMJyK2S
 hJNUkvR4DWncdMTuyWW1X6yXZp7sNvoVTE9C8IFQzCr5DuLiAEDkw4GUpaZ0ZUVm1qJrUced25
 sPhiW5cf/LhNgpGMQ68u0SREIxrWSlkueL6HfHUiPJbT6ZeoXRZsLLOM55/TP/1f/TKfvfaD8P
 wAFpDMEK2AQAA
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



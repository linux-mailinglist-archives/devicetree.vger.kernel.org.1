Return-Path: <devicetree+bounces-101376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 054E1971680
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 13:21:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B92D0283042
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 11:21:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96E9D1BA860;
	Mon,  9 Sep 2024 11:18:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="CpwaLP0o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFF11BA294
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 11:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725880701; cv=none; b=AaUaDfnGghykkrORvyxBOdRozgKY/eVnA1giuVwirk4Dm5WiOD8RI5QxRzDOJp/5cwHIUwmreNITplXfbgVVTdLrhfG59VxIJaGCpxLTEj8FAIprd+4kwSCYuvLEXSV33jsmcDyAZuNsZcflXyUdHyAaYY3iV6pac/tyRsGmg/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725880701; c=relaxed/simple;
	bh=tnPAjpAP68B43nSK7d1JAzkQ9UY2sOZ4iQKTCuZogNs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b4zocx27pdL4GRCAgGZaV6cNRQpBvK+/er8rb3o2yZIF+n6SXg1qEy2tyMmyLbemRgUQfJR7mgbZuUplBKr9zSV8NZDdITbitAtdVDD1aT9Ip0gd0yZS8F2oEjkunq1gjVw6PvtOCJiuptilSTF9avFzunapVLY241EdsAkQCZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=CpwaLP0o; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2068bee21d8so40833975ad.2
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 04:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725880699; x=1726485499; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/PJpXROupFzpexVoTGiiVagAL/RrrwaZ7jH85Py7k9E=;
        b=CpwaLP0oG3iWOEnrsHS8CAGlTxl5St1RYy+OUjY7oKiU5IAGZPfdv/VfUY4PDjL8xq
         Ncw/bxA9tbVLR2L8X/DFtnG42pyfrAmDvdd42UMFUra/bfND2eBSdDvJHahXTlckTpIV
         f7izsCxdNdVmlx3zvpE/wgZGdC9n8PX71ZH/M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725880699; x=1726485499;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/PJpXROupFzpexVoTGiiVagAL/RrrwaZ7jH85Py7k9E=;
        b=hN/Kb0VDMBKRpng0M2DrGuvF1d0QHAWSnW6UCoLrDv6LknDF7TjoawqorjUJKB6DYY
         OT19Czy8r2yTq3tfopdo4X3u86G6nvwhNMSfLmJPAZbWoUqfkRScwC5n4mHstDKCi02P
         EZVmvc/gCptBKRu5AJ+FqkyhRQotvSjv/IC6btPpZbXRQ+fFlnYqxg3mHOW+hPIKaJEM
         ZKjkm0PjfkoRTP8IYpDUF4yf4/xbeDfC1hUoUsjfU7v2h5Tzn7tFV8JtHeFAnbIavRTV
         8dCtLfeiV2YLegZW4CRXHxTdDVgrjhHJT6fqCvoFC+9yOXA1fx5bTpILQPB5RtT2wy7d
         FnBg==
X-Forwarded-Encrypted: i=1; AJvYcCU1dDjmQddM9vROi5Wa0Ca8YSTCySeXjWh3DAoFng9PyOdMXtXLYBinp72NL1Uj2U8t7XrstcVHTq5a@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb3JA2YPH51sG+yFBUMTOkROaMwcZvvdXCC9Lc3Y+U8ob3VxKU
	IRKiPBuM0JLo2kxNSaVOfqvn2kymM5SVOMZHZzHgpQrHqrMEvH9LMlgJdLUu3A==
X-Google-Smtp-Source: AGHT+IFb5WZHwqHsufJH6qAL0gHUxmqndWyboWWJlOq6FZ3jgewZxyJSYDmEy6wDlOwb6HBwJFmDYA==
X-Received: by 2002:a17:902:c949:b0:206:ae0b:bfb6 with SMTP id d9443c01a7336-2070c1967d2mr79655945ad.40.1725880699360;
        Mon, 09 Sep 2024 04:18:19 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:6647:6d5f:dd48:8f5c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20710f1dc55sm32039745ad.186.2024.09.09.04.18.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 04:18:18 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	Allen-KH Cheng <Allen-KH.Cheng@mediatek.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 12/13] dt-bindings: mailbox: mtk,adsp-mbox: Add compatible for MT8188
Date: Mon,  9 Sep 2024 19:14:25 +0800
Message-ID: <20240909111535.528624-13-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.469.g59c65b2a67-goog
In-Reply-To: <20240909111535.528624-1-fshao@chromium.org>
References: <20240909111535.528624-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatible string for ADSP mailbox on MT8188 SoC, which is
compatible with the one used on MT8186.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

 .../devicetree/bindings/mailbox/mtk,adsp-mbox.yaml   | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/mailbox/mtk,adsp-mbox.yaml b/Documentation/devicetree/bindings/mailbox/mtk,adsp-mbox.yaml
index 72c1d9e82c89..8a1369df4ecb 100644
--- a/Documentation/devicetree/bindings/mailbox/mtk,adsp-mbox.yaml
+++ b/Documentation/devicetree/bindings/mailbox/mtk,adsp-mbox.yaml
@@ -17,9 +17,15 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - mediatek,mt8195-adsp-mbox
-      - mediatek,mt8186-adsp-mbox
+    oneOf:
+      - enum:
+          - mediatek,mt8186-adsp-mbox
+          - mediatek,mt8195-adsp-mbox
+      - items:
+          - enum:
+              - mediatek,mt8188-adsp-mbox
+          - const: mediatek,mt8186-adsp-mbox
+
 
   "#mbox-cells":
     const: 0
-- 
2.46.0.469.g59c65b2a67-goog



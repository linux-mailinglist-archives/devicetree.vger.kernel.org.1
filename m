Return-Path: <devicetree+bounces-243308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D4558C969FD
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 11:23:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B59693429E0
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 10:23:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36162303A2E;
	Mon,  1 Dec 2025 10:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZDgYS17B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A410303A00
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 10:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764584617; cv=none; b=fpceq7mg8MnD0fCI9zl92hzZBAO2oblkXq3BwQqyJt+fX9IZVdy+OKZYQdtnWyffwdA5NGK+YdoMoIbxV8oQ3uGrE5urL8X87RzFiIMhQbWGp+HItzyNoAIwahA6WQpwSFpVS9EgsCZ6Zpi2iZE8Cd9y9ivX8pkX5lXCSXGVgfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764584617; c=relaxed/simple;
	bh=sBILIkJb6G+DOCCDeAbWnW+wLLUhfq8ymrsck8EV9Jo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NptYu9U3mxegoMWZUrgOki/m70W6VW6TdZ/UG/qRDFeRqVNC8KuWtp+Kyc+jeinjl87vHg81cNxE7s5LXU9UKk9nYSp+tADsYxhXrd8sOvXJtuBRZvxzmlG049j7d2nXgJpchFC4rkjUGVhqNYy0YQ9I2kvL7kMl0LmxbsV7Tq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZDgYS17B; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-42e2b78d45bso712183f8f.0
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 02:23:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764584614; x=1765189414; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o4a79qbAhHSz0GVRGOuPPFX29zZ9ssNqofDb2WClFfw=;
        b=ZDgYS17BNpOgOwczRpPfywKMhgC602AH6ogbyOpd+KNTAxTSLkI94OfXa+ZgMMQMBo
         2TTL0EL5uuAmHUDtZ9gDjrONk1lhyDRrtuUfgdtuiGxxrtEJ0eXPvJYPLmdqV36d0PRL
         pdLAUBgOULvFvogxMayIYT70dpagjoGTIQ5eRhfoHvtS3MDjtldJBM3QkQVRd21Mdw05
         BhgZQ/8hPyPvyoRMjHAo4eG02grZkpEt66TqEfY+8xeFUm7F4QK/dT8CHkl8MlUIyth6
         ilqDjIdqVBM096pzMQnBSBF1Y3e4lWVaMVRoVghQ0yuc27+O8LaBVqHh3LpA78zZZVc7
         9mRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764584614; x=1765189414;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=o4a79qbAhHSz0GVRGOuPPFX29zZ9ssNqofDb2WClFfw=;
        b=lLVJFv9VwQueOqaqHq146suCGSeJmWOI7hrCVKBLo/gx0vl77snxPyDgpgTwv0VnDC
         Skv2KfOIaKwvofbuYKRQa5g64rrL7SIaHeZqrLWDHzVMz0NmvFKQ8r9P/WNVjqIXxoBI
         0irZVjTPp9zTZ7foN2geW0sSpXtoKmG8rMBeC9tGzqDeT/Gwyjl7p13BNkYDU9SeSeIO
         kQtODWm9VM9PdfWWw/BSMVGmpTCnZ5QsQRZEmz1T++1+ogpa30P9Wj025xjs8LtlkwE2
         ULJcZ0xJgK1guzxkLGIm7PVQ3jhK8kIppee8OfWKseBsSkKfo5UczlIrTK7jPt6xXT6Q
         1Q/w==
X-Gm-Message-State: AOJu0YzPi1+1Dp6aWMOW2I3vV2srxfgoxeI1PHP/hYsjUCYIsMCq84em
	NtwUv7angasYymEaK8GbAL5K4sttUMtEfJ3PolSwnB9+B1DxlUdFfTZQ
X-Gm-Gg: ASbGncs12HEAJzBk/GgSMBGzFJHnIzhApcj+WJmwnghP40WKTCcP72RYsWcRrBwW5RT
	k1y6NKCBSjI2Qm/DWWwge0EHhpt7XuHstVgpB7bJmYiWP1gBM1eGlMQwiJh4cFIHYyQ8g7TBcK6
	9Vs2Y6kyGgvlsBGHmIlvrOdw7W6pyYUopFrdqSfrlS2Z9lkQPmYTAWXk8nl+0XkuyyKMnPNxfIx
	92VFTlPaPfj2RdSg+No3Qe1maoXm7J/d8QZydrpQeYmbtUEU1efDcmhPD/f6RRpTqupMRUg9HGE
	EhTGEgg/Yj4L2BujeYl89emBZE8C7Ylv5t4msGxABqJqo3DxF2oEO/ZdCFSxhyzJppz6A4P5IRQ
	Epjmvhp2KPeg3Dclz205AdQVGXV+E8wy3t62eRxBw7L1P5euILY+dWKAVCsax3/UjpS+egM9+Vj
	3TCa/9BcZeNpL1CvZ+0CbGBqQpqw==
X-Google-Smtp-Source: AGHT+IEvoJmHWGBhQjM5psKaj7CFsvFQ9IZtp2KXdt++ZNs4WoTdza7+ouoOPLPDIL9YaHNygYGdtA==
X-Received: by 2002:a5d:64e6:0:b0:42b:3131:5437 with SMTP id ffacd0b85a97d-42cc1d2e213mr40229023f8f.34.1764584613796;
        Mon, 01 Dec 2025 02:23:33 -0800 (PST)
Received: from [127.0.1.1] ([2001:861:3201:3d10:4ab6:6efe:9b65:a6af])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5c3c8csm29466439f8f.2.2025.12.01.02.23.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 02:23:33 -0800 (PST)
From: Gary Bisson <bisson.gary@gmail.com>
Date: Mon, 01 Dec 2025 11:23:15 +0100
Subject: [PATCH v2 1/4] dt-bindings: vendor-prefixes: Add Ezurio LLC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251201-review-v2-1-dc2df44eec7e@gmail.com>
References: <20251201-review-v2-0-dc2df44eec7e@gmail.com>
In-Reply-To: <20251201-review-v2-0-dc2df44eec7e@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Gary Bisson <bisson.gary@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764584612; l=810;
 i=bisson.gary@gmail.com; s=20251201; h=from:subject:message-id;
 bh=sBILIkJb6G+DOCCDeAbWnW+wLLUhfq8ymrsck8EV9Jo=;
 b=N/TCEjh7vDWCZR+tSZvOuJvefgjFJU8DubFOCGtYvMnX0LIupKiqkZKFQFM2O6F2iHf8ZY85J
 fheYbSvw0rfClXGV/sNSTTcBPpI5Jl0CH2cQE49gVhdvAQ1wIdsgNni
X-Developer-Key: i=bisson.gary@gmail.com; a=ed25519;
 pk=eaOrLwovHUZBMoLbrx+L1ppj+AH+TfgxkVhIEyrhkeE=

Ezurio is the new name of Laird Connectivity after it acquired Boundary
Devices.

Signed-off-by: Gary Bisson <bisson.gary@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f1d1882009ba..e76e6c5be726 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -547,6 +547,8 @@ patternProperties:
     description: Exegin Technologies Limited
   "^ezchip,.*":
     description: EZchip Semiconductor
+  "^ezurio,.*":
+    description: Ezurio LLC
   "^facebook,.*":
     description: Facebook
   "^fairchild,.*":

-- 
2.43.0



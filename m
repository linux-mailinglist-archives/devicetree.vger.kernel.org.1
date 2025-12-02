Return-Path: <devicetree+bounces-243809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5A1C9D274
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 23:09:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BFD603A79FB
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 22:09:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D2BE2FB0AA;
	Tue,  2 Dec 2025 22:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h8GtS1+7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B4BE2F8BD2
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 22:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764713355; cv=none; b=kxG2oKHWItAloc7JRO52sLB56bl191CwOz9gn+ePx17+iN8mmXhTx5/tLZc9tkuBhCgd4EoHOt+9zJ0+cqBI2XmY8EbHdpA5Jdb+nivRcXo+KvLIEIy+A2jEmz5YqrLfTUdjD7A721lYoRY2T2NKnSyB8tczRl4wNpiCW1y4lwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764713355; c=relaxed/simple;
	bh=frdAO3Hz729tIcyTYD7GFdGupWOs08m0/yUdMpYeKN4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MxJhLmVxbV8UZRRZdGQTryUPLDgJbZRSLDWYoPoMIAFR5jtS+YKLDLx1zmBDimAS0jb9HfN6s25I5/S0RSTNx1PSF4fMEt+SDpBaJFKMecPayzvMvydVEG2Xlb+LUKe2SytB3uTxYoWKaT4o/qCmoIvnkCEJacvbTdEy8Pmi3/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h8GtS1+7; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4779adb38d3so45617715e9.2
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 14:09:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764713352; x=1765318152; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XmNNRl59vgMP8cPlJ3VMqrg0LGlaSXqBEQGyB8dPFTQ=;
        b=h8GtS1+7Recm0OtMM0r+WNb15rybG8k8BfsdGwt/U1lDOnzQE3KP0aPijJhLIdgbZ1
         bYj9z0wT2Ea803W2OvcDkgNqBHAx1DFtfwaVGkGAJ02FVUWW7mGs2voyA8HLU2X2MLdu
         2n8zJIpXBXXytDz6yUaLNbu9GAZcpdbSO3HvX//wI5LV+1U0dQ/IW88aziZTEeYFQKZw
         2nV2+SRZkWDKiebPlgOrrJR574wU/IsFwWaEmzYZ9irAOaVGum9540ca4ABwiEEzXZJw
         kxkZclTm9OFYdnO7hK9iFRKseFlFGtdTaV0VRTEeJDBN5dq9izxLAov5jIz4YJcw27fs
         H92g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764713352; x=1765318152;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XmNNRl59vgMP8cPlJ3VMqrg0LGlaSXqBEQGyB8dPFTQ=;
        b=sEJ8cmoxB1q4gNSGet2wOVOQW8oWMDlvWHJmP1P6+SK1bPBx8jpzSs3CWTX7t7HHNo
         fIa/ir5T4q52XuDhm3Apk+fn4iF/uJI2lxZ37lVoKNjxK+f5ECsb+2UbDNjU0h7x1r4u
         6+O68z05e4LRi1gn6ZWeNYGYi8TVUd31ss74Qs2s3vsiQgJ1pWHjQT6hEbKaw0DBY5TH
         KyaG9b+Y42Wkq+u0zdQIMw/MIyWTZCz/tYaw9pgku2LpAa+JTk4V/91UerPn1NSzvpJ7
         AEjpjq6tsdOTznCP3sVrcmKma8X3fduiH1bq1X4flMYbtfLMOZ5aKuGuA7C62dNRXcTH
         bOFA==
X-Gm-Message-State: AOJu0YxekZ1V9q0KLmxiBgvq2KBPBiaeHk6HLtKxQo1kSTpEOR+348aE
	KB+lKwELuL/5ILtoosAB9o72cSIwmzfV31O07S9DaoPeFLVS6+JbPlo0
X-Gm-Gg: ASbGncvhvtLvncA6ZdlRxNH9Ic64YzPfYEKz+zQ7t72IYTWmOY4KrMyz/Bed22RCAYT
	QHCVcVQm5r8jYL6WloggPt3Un9xW396GUFB2xaSE4jg6lXexEQw91sG8Ny2c3u9+XZacboLdRQP
	GAVn2UQmmWHMf5U9BURAdT28zU2EaVL7Z2d2RV04Cj6s2OqRueZdLRuw9cn5nwug1I2KYNZlgk2
	Poc96xikmsAD2q/LZe8CrDYFQIgQHpWaMvz3M52N+RgkdJR8QahELysWjC0Y4530qbjprUHTkSU
	4d/n7NcQoOAAxWlQlgKh0nBQDIWDnv2jjGy9UzoGlRNr7gL0uFlLmsxEpJGnm1f0V2Aq6M1nHPM
	gKGtlTw8ZMXaU7bqi9EkKIyyyJtNuov46TVbT9E/JuJ0hwiHMTKxXVtWFad0DxsB9TVXhRw7kax
	jX3b8puv64mS/JtkRc9m+b/DsADw==
X-Google-Smtp-Source: AGHT+IGcYut1avBJ0RhbMsqBzps8Zu+UKnCF1K3gVzlO2l/t9Cn0eEwJtq7isEezD+hqY4z1vphezA==
X-Received: by 2002:a05:600c:4448:b0:46e:53cb:9e7f with SMTP id 5b1f17b1804b1-4792af327d1mr1552995e9.18.1764713351773;
        Tue, 02 Dec 2025 14:09:11 -0800 (PST)
Received: from [127.0.1.1] ([2001:861:3201:3d10:d253:f5eb:2f9c:dde7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4792a79760esm11534795e9.3.2025.12.02.14.09.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 14:09:11 -0800 (PST)
From: Gary Bisson <bisson.gary@gmail.com>
Date: Tue, 02 Dec 2025 23:08:46 +0100
Subject: [PATCH v4 1/4] dt-bindings: vendor-prefixes: Add Ezurio LLC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251202-review-v4-1-93f5cd2a0d4a@gmail.com>
References: <20251202-review-v4-0-93f5cd2a0d4a@gmail.com>
In-Reply-To: <20251202-review-v4-0-93f5cd2a0d4a@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Gary Bisson <bisson.gary@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764713347; l=992;
 i=bisson.gary@gmail.com; s=20251201; h=from:subject:message-id;
 bh=frdAO3Hz729tIcyTYD7GFdGupWOs08m0/yUdMpYeKN4=;
 b=bWwx0WQbvPFn66LUG5ddmc7Hwf45SFYXRstCUIQZC9ScvBFH0x52snjIbVMGVjU64S8Gb/bg6
 bN2AIKBcVPfD2MyQzbytFb6AwnsG583uqQYdSOrRwSaJV7lodfJHo0/
X-Developer-Key: i=bisson.gary@gmail.com; a=ed25519;
 pk=eaOrLwovHUZBMoLbrx+L1ppj+AH+TfgxkVhIEyrhkeE=

Ezurio is the new name of Laird Connectivity after it acquired Boundary
Devices.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Gary Bisson <bisson.gary@gmail.com>

---
Changes in v2:
- None
Changes in v3:
- Added missing Acked-by from Krzysztof
Changes in v4:
- None
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



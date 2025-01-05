Return-Path: <devicetree+bounces-135618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD31A018F3
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 11:01:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CEFEE3A3412
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 10:01:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74AF61482E8;
	Sun,  5 Jan 2025 10:01:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LfrPcun7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EA9A1448E3;
	Sun,  5 Jan 2025 10:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736071298; cv=none; b=tem1MPtppjfwLUa+HDt9BpF9LrYXkR4vOsF28MHj2AqRtnW4Od//XUKKzzqz0RRCWNV0Dzz99PUE+YV48p5Ttia/K5Wl+Bh57BSSEk62vAa4ZFlINCIhq8rejyaVg4b5KiLJDzpt5xBKpwHDIf2yyymn78iFfZkLEdiiSV6yx2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736071298; c=relaxed/simple;
	bh=p5DkTJDu5QlNVWl35gjaVUthknkZBv6iZeP84hntyqE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HnnHhA8F0MGgLg9GziC798W6Vl5RsJyFV98+vV8YXfMqQTBRlhxpLDTOrKeHnEsZh6s1e9lEcDpXpzcgekohrVrSWckkiRa0HML7mBWrgluFXlLI5tNJCGjZ1jUdgPmBlh1ofwGdgQkKeBwweFAjKopDvCRTZCVsY2HGArN5qG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LfrPcun7; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-53f757134cdso14417932e87.2;
        Sun, 05 Jan 2025 02:01:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736071295; x=1736676095; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CcUs5V3NaAvho7+pyHks8hnj2f07Xk/qrLoafEl76mI=;
        b=LfrPcun79ayhs2Qa3i6MmkcfbkfQouHikM6iIPY0EiqxyPCoUvMxkgGhQd3sXyoPND
         F1JWTBc3V+KY/mQ95ZXLlYke3DRrnvDwhP/mSk3YBP9Pin2X7FZL0wN/3ZNG1d60USeb
         nwI3iRNHcPBuBd3lgwvd1GCBUyXHBhcNkMS6ExkUVkEWazkUfaINHMZpkgcME17s47EY
         Ovg6rB9OgC859ryQBEFv6eKUsGr+vLun5Ur/qM+UwESkUztAzoFsr3B7ilmBbkoNvHwm
         6RdvKIISYOfiCUWBWedKwsmvXBb50wxG1EnRU6MM7N06qLGNttFtBV92+glzRj7xHCN9
         fmPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736071295; x=1736676095;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CcUs5V3NaAvho7+pyHks8hnj2f07Xk/qrLoafEl76mI=;
        b=lqOn9AQXK7uISE/wGEtzUp9/dccZBzTGydhReIFrMGFees24CkTzsf6g1zPQI5QzEs
         d4iV1tEZBC8KYUZoimh+aU73qxjCfirsgekJD+yES/lSu+UKsS17t5kqnaSKafrMXAYJ
         kznRvFPvbZLfYzdKugt3SyGSWV0SNUBNLI2YuXIjNXA4EjWCdh/7f5cn7kZftzzIJ1e8
         IRAoakN9uzelAvkwEf/r1v0dtSmtbQt+XE5LHu35bPaQWfGJuid77CSPFkWtQn761iTh
         4Y50YEn7DlK0PV5G+K1IIFzDLp8XsZmKOph9zbnIgvcnmoqjoF3SDA2cbSFJCPAMHaVm
         baHg==
X-Forwarded-Encrypted: i=1; AJvYcCX5eQqLKikBXlIpmiagXH3uu9gI1Keik34qb4zbdKJEFqf8EBXXcE1Oc8oSjnmsgiE3CZ7VO0hvuYjJZt4=@vger.kernel.org
X-Gm-Message-State: AOJu0YyJkI0ElpKarzydjGnBSDaWbE9rRJu9U3zz4bs08Pl2KGnR55W7
	4MWKC3rOGlb62/5gh1DJQCFB4s5mjHe4Dz03o1c3XB/1zkUb38U=
X-Gm-Gg: ASbGncvq81DMIOipxc0mWIS+c2PVq62AqAPRyq52Pv/i0ygOBcQMfcthiB/Buki7M4+
	Bgo5LdlW+DmF8HlkPwLFqdBKOdK/bgeTwdqLMIxWJzzLcFkJAkm6p5RL4qtQMm8lui4ycJudAFE
	NLRCBfBe59XlN4gUa/zl0PaJoIqSGvSU+vvMgi0oRh+phr0Y2Kjw8EOKYxwF7oGW0ftW1SJJpih
	WIxlsID1vJzk9I04zkxh+UWIpUqAc/OepN4063SY1Pt7EqETRJcRYpk2aU=
X-Google-Smtp-Source: AGHT+IFcnNvf44eZ0+9ujLatEO7qgcKAmJzYq4XwToWXna9MMrgtLSQTxpEmZMuy9qZ2buHQgJmctQ==
X-Received: by 2002:a05:6512:b22:b0:53d:e3a6:ae8b with SMTP id 2adb3069b0e04-5422953fdf0mr14556118e87.26.1736071294373;
        Sun, 05 Jan 2025 02:01:34 -0800 (PST)
Received: from JetTurbine.homenetwork ([2a0e:e6c0:20d3:2100::1d])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223813806sm4580828e87.114.2025.01.05.02.01.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 02:01:34 -0800 (PST)
From: Ivan Sergeev <ivan8215145640@gmail.com>
Date: Sun, 05 Jan 2025 13:01:28 +0300
Subject: [PATCH v5 1/2] dt-bindings: arm: rockchip: Add BigTreeTech CB2 and
 Pi2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250105-bigtreetech-cb2-v5-1-923f911b10c0@gmail.com>
References: <20250105-bigtreetech-cb2-v5-0-923f911b10c0@gmail.com>
In-Reply-To: <20250105-bigtreetech-cb2-v5-0-923f911b10c0@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ivan Sergeev <ivan8215145640@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1174;
 i=ivan8215145640@gmail.com; h=from:subject:message-id;
 bh=p5DkTJDu5QlNVWl35gjaVUthknkZBv6iZeP84hntyqE=;
 b=owEBbQKS/ZANAwAIAbzfXRlQM5b9AcsmYgBnelh8wbKwjV0jSnORnKj5gri6tWjV1nKWx9W3i
 G5KSaDFdBiJAjMEAAEIAB0WIQROCZtApKFz1fvvsOS8310ZUDOW/QUCZ3pYfAAKCRC8310ZUDOW
 /VAFEADFqODzeMLOEs3mBaz1dwUu5ZF5X1/KDWLNtr77NscD0wHI0qzttXH04B59w11+Iz0vDHT
 9QOB2jXHT6we52Vwlic38wD6K8e7vRYjuyY/XVjMAwG/vBVhAE//TNRlngowg2Qv1F7s9KFlIBI
 BMTLSugnG+t0MDgxOBbmMqLoBU64p8kVCFeav+7KSgilDEJGmjoo4e5DY7lypHbJIK3/5DY89A1
 Dy60cV0GQT9lvj89AcXi6Pg4qUaWJPQscREDN5qzA8RmSUXy06y0SItzB7g4sSq6nBS+JJGIJ2E
 OCEvKGSchJenHCT73iEWKSQQ3N7sS3woilffxgHkb3JeUg5q+un4Ci2IL36KypjDo/TIrR2MYmp
 q50GR+NM4aMOIgOIX9IEAfhVqHD9pNHK1W5m09Gt1rDlO+oEN7+wBR4fdKTVJYnedZQNhsEyNYR
 5H8A4YHGrprOQLWsTTs6XAWVuQNFg5W8lJ/tAV4Mr3xOS3zhfiNOB0oIGmTbk1tM06JYNwfaC7H
 SbVdssc7BJftFz5hgqHxc7wvtDEgDVA6FuWnSKJLZXeLFe15KhFAjp5WOebWFjBm1Voyd744YAn
 NDTk1KBnvEUp5QHrHgxwKIef5I+UmBAc3KvavlzhCm1Dtx7hWqBji8zANxDqk+As192n18zhD6H
 IMDVC2E08q6+W+w==
X-Developer-Key: i=ivan8215145640@gmail.com; a=openpgp;
 fpr=4E099B40A4A173D5FBEFB0E4BCDF5D19503396FD

BigTreeTech CB2 and Pi2 are Rockchip RK3566 based boards

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Ivan Sergeev <ivan8215145640@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923fadaa48c407a8e55e7854db7203e..349453b1676bfac45abf5cd49d6bd9f847281213 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -81,6 +81,17 @@ properties:
           - const: azw,beelink-a1
           - const: rockchip,rk3328
 
+      - description: BigTreeTech CB2 Manta M4/8P
+        items:
+          - const: bigtreetech,cb2-manta
+          - const: bigtreetech,cb2
+          - const: rockchip,rk3566
+
+      - description: BigTreeTech Pi 2
+        items:
+          - const: bigtreetech,pi2
+          - const: rockchip,rk3566
+
       - description: bq Curie 2 tablet
         items:
           - const: mundoreader,bq-curie2

-- 
2.45.2



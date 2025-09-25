Return-Path: <devicetree+bounces-221528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C58BA0AA2
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 18:41:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EDCB21C24188
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 16:41:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D584309F0D;
	Thu, 25 Sep 2025 16:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k2CgI8rh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3CFA307AF4
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 16:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758818452; cv=none; b=dbFg5ROdOaHiK0YLniEB8twUEoJcB+cNPkHvlAMl9upfWPKz1b83wC5hLsrPlc/f/tHhx5FG6J3OSJl6uz0xIfps4alVDNpnmSsCo/OPts2+hNjbvUw7HQ51mbanGIrJ0+RV7RdRrGkoq1EsJJ1lb3ojK369r1woxdcsOHuuZZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758818452; c=relaxed/simple;
	bh=5uSR4NDN/aBsd24THGZvPsdUrUX4xTeH0oi/5l1dY5Y=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=r9cB6XJohh+EOz/TWNE9Y6HTcLpra+79MJDF9P1kHU81mo/glFRezLHK6MK5ME8C266/cGwhp4c+N7tBfROCxnlxJNB2mYKywwNrfy3QRHAvEEGTAHtkjykaxnq23twiO9UCUuiAGkt/DqBV87aLRnn+ceX+Lao/dA5q9DT5Jr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k2CgI8rh; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3f3a47b639aso743804f8f.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758818449; x=1759423249; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k4zaJq9JJc/9ryK6cY2Xn8ASZ9hmcyfG8y41VjWW8NY=;
        b=k2CgI8rhkCMTu/2Fr1Dh8tcv82JbH4ZgDFX1Q4Ee7Pg0oxEvu6D6wbQv37XQ3ypxsP
         jNaIGdXt0YKXBUA7cPguKcXb4J9AvGehE6wXA0YBZXs8sjDtyuEjrexGdjFWdLPGKkfq
         BSSOF6DgnNWnnaoN39p7WYPook+azDZVSNugF9/i/kV3FK8vNOSqA61xBbRaJ+qcfTyZ
         IyPEGsY732RpYBONwgC/e5LKZTcNrqzzpQriI7/T8go0IexjQe5/Le3J0neFnuhEm057
         HXZDb4Y+utK3U0kI6xVvYpv/lsR3/j8SV6X/424ae+jKQU48uL50UusYy0RI9WNUbSq2
         mKqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758818449; x=1759423249;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k4zaJq9JJc/9ryK6cY2Xn8ASZ9hmcyfG8y41VjWW8NY=;
        b=rOdKgFSOutnfgXiScg2o7W4PAjSZ2fEPlfF4h6Cgs3+ieS8b4agU0n+yod6sxFTiT2
         7FYwfVkgalGU/NsDD/nUWGDTaqbH14CDKiNoEIgpSTith5/dbKb04uo4818xoOVbbBlk
         k55olbYxB4K03z4zt3W7NrOcQPC+QVGtcvmVNLs44nDpJdC/bOplBYBYaVz2wcwTu2EM
         LQwvAWvmUCMntGKjso4lwQhl/J9qawNqutAjvumOZSU57Ha5XCvnEKIKv2YeJNjuflKQ
         I9xiAtC/vzwFrLr2ykPpBX4NlMMV3PFlnQ0ZsAOit0ek7M/8+7SPQyA2rErfOGNsJlk/
         hw1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXYEeBBtLe4xiJe2xf5okIS7AJcgeaInbTfKo7WTFUGxwquDGDvQ13HL1ZcX2aekNEA6yKOL7y7z5Aa@vger.kernel.org
X-Gm-Message-State: AOJu0Yy45OUGMVBAUXQEwDbq5xSqZvZSVb8OuKjURvIqoB9+GHk/+O6C
	wIMu2rq/WZlBH8+Z+A86M2BA3tPD8pbBOPUmkRSDwqDM96Y/0Vj1YQSS
X-Gm-Gg: ASbGncs454LaAJ9uWHoYYxuF7XIeMrPK4TzRwT0nkh7hszLjdUDxFOzWm/wdzKAtDUW
	GLvqFTxU4kbLhWt4pi+bkxTbckCkltSzzDjIZhZZ8/s3K/y0HwqPrJs9HF4QUzmfr1pbcRbXy4t
	InjybqTls1fCBv0XZMMDPTt6mdiiB2nfMemN4kMT8nklDl/uQc1A8NBLhoN7F2eKLbe735Mrtet
	g1OeX1locECtvvvbChHhlVa0NquarX8wYbM2ST2Z16Ezf4I/vLjdV7gfSYdOQ8oAIj7RDs+71vW
	c5eTw9kCSdrl9Zs6E8BFfE5y0EvQPQTCwochqBGokYnad6Y1tso/ucBWhbQHVx08/2K/eL3yU3D
	j8AVtBYac+oW/hJ5U8cQJuVBg7kRD/Z40NM/a+ecPgCeXmrecjx4NmUEBk7ymru/vxGUFMYM=
X-Google-Smtp-Source: AGHT+IETYpPO9LAGX7zUAqFXRCr1IR36jr+nRkmsy96nynVShQ03CfruIEzXhdMASLXdFRjMR/RaLw==
X-Received: by 2002:a5d:5f52:0:b0:3cd:7200:e025 with SMTP id ffacd0b85a97d-40e429c98f2mr4337564f8f.5.1758818448972;
        Thu, 25 Sep 2025 09:40:48 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-40fc6921f4esm3591904f8f.44.2025.09.25.09.40.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 09:40:48 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Felix Fietkau <nbd@nbd.name>,
	John Crispin <john@phrozen.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v3 1/4] dt-bindings: crypto: Add support for Airoha AN7583 SoC
Date: Thu, 25 Sep 2025 18:40:34 +0200
Message-ID: <20250925164038.13987-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250925164038.13987-1-ansuelsmth@gmail.com>
References: <20250925164038.13987-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatible for Airoha AN7583 SoC. The implementation is exactly the
same of Airoha EN7581 hence we add the compatible in addition to EN7581
ones.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../bindings/crypto/inside-secure,safexcel-eip93.yaml         | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml b/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml
index 997bf9717f9e..2269d78a4a80 100644
--- a/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml
+++ b/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml
@@ -30,6 +30,10 @@ description: |
 properties:
   compatible:
     oneOf:
+      - items:
+          - const: airoha,an7583-eip93
+          - const: airoha,en7581-eip93
+          - const: inside-secure,safexcel-eip93ies
       - items:
           - const: airoha,en7581-eip93
           - const: inside-secure,safexcel-eip93ies
-- 
2.51.0



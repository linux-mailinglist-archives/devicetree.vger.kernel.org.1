Return-Path: <devicetree+bounces-216949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 709FCB5692C
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 15:16:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B64D1189BC18
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 13:17:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69D8F2550CA;
	Sun, 14 Sep 2025 13:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fnLDNEpb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D47B246778
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 13:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757855791; cv=none; b=u24M6Qkx5SDJBCVqNnOg4Bctmr1ywqP/6yeTOuh9kGd3n3qnLzivLMWyCdsuBaVXimWRdrJd6nLa9hb6rp0GQsWmrheDqNN7TjV0IyAT+YokvxaeVU1zwH48N6+DShCgAdIgT9AcxFutP4NbkARwN8HKf8AYE44v2XuwtjiZO58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757855791; c=relaxed/simple;
	bh=HQfw+08pmHc2Pan7DP4bs8Xiq8bd38U1jE7h+zbEfAc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JAMmcY6qx3AsU+jyHpXovNuAxT+/DJqI+B8+HfkOqHz+yVJef7365PwXJ9WLM/Ltf/UXI/tJQs983XfAa2Rxu8d+eNlEXdp+ZdXG0pl9G2+o9Nr5TfSVTE0aTlHLyBJq24jPb5O9N6XFvXVhM84+4qa2r4fa9uYbgST7YqRlZqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fnLDNEpb; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-45f2a69d876so3066865e9.0
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 06:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757855788; x=1758460588; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=G1Q1wojRT+pPDpvbjQ6/3VZuSR/nnFa4c+/btLbdc58=;
        b=fnLDNEpb87wvqjUXHborj2OQdwukX/Td9Kk7zrswws1PcvgbFM/4M16PV/CLTOK0th
         5QVA5mOOeb7uhhGWU3HV6WnQ1orfYx5HbIwjHJKiPMveqkAXnPyoHm5EEVEcd20V+7WO
         RNdhB0gV1RrIjaoZjwPKGU3SHw6QcHzdMVJXb1Dd5H9hosix/9oh/wf6sjo7SMHPNCS5
         U42iRpU4hZkE0ZiHNqYbs92Z7STa4kwaH9e0Fsgw0BTb1cw3GKxnfk2SQ+JXsaq/fw5+
         N8O299NKFGKZvjOGaOp5bk+l+nQofNoMcVeXjwaoL/imlj6dNHsq75+/BMlntiqgwcuE
         8JTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757855788; x=1758460588;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G1Q1wojRT+pPDpvbjQ6/3VZuSR/nnFa4c+/btLbdc58=;
        b=f4oTwYlvYMB90cAfNfiCgEnPyn3RCUYBD2oQ+Kpkyrc6+oO2eRYeWr81c5AkZynRVw
         tgC18dRW6jc8pTeUdDjTrWKuS4uNTLjlk6NYiVlW0kZstOICzyQ7RwtOFbLf3AVQizs0
         8A5brZlBoduvNUVF/NaltOtyRGgyNmJjAXL+IvbCByL8JLEaHVO5fCXG58A3+e078uxG
         OSC/8ao6sU3WV2t5n1zPswe8TGHkd6BgQniIv0iiIYj39z5IaOS5JdIonq7OtwjkCqse
         /CMdNIN6zqRlG08WkOkmsA0JhDHW478KlburbQ5+8t+K5h7ERoqWIeLCnowGFFS0MqH1
         HGIA==
X-Forwarded-Encrypted: i=1; AJvYcCV/1WRO2owNKP9DsxzH0nIcnCZi8URYPFoebHwUrT0w3sWuL1gthE3himS7kpDyl06ZRZAQn4Xvarl+@vger.kernel.org
X-Gm-Message-State: AOJu0YyFZ0HXqc4hmV9KhInagBM8i8Y94iKpIyQaTgS40PqI0WSVGsP4
	0YW7unq72+/0hwgxlq/jPeg3EG16T0ZpxulYgvfwswmZfd9zzji8iUV5
X-Gm-Gg: ASbGncsZ/P1du6cuBV3fzDcf0MohNTDWlgQZywlCutmxuTRdtmuPCaW5Ow83pN+28cK
	hZbSEiuvDh2JOWrOie1S7UbO7sHAZEXGfo2uizN8MZjy6Dwf6eB5NNVlpT8YZCoOIbMSILEGhm8
	IlHuGabuxHPv8CV5p75Hj8eobS89mXb7xnMZ9TFm/eQaW58N0Esdggv94SO2W1yiwrQ0RlCNfvq
	pBR42pnHjAm07i0Is2QT1q2KjbmrxSfWRjfYFsA3ZxrFzl9xj85OVQaQlNmXGEtjzyoe5ajBy6/
	g+LUrYreQuBjbKaMxJmquHhKVkXTUiakZuyeTkJkvh2DpoghsEudL2tsYbSHjQO05+UrcS+YyRE
	/HBGZCIVIx+g/YagAQsaXcRepxBYD7ZqegcCFfxb0D5hi7/ihT1n2HMp09KoPGJz3psrVwiV2hY
	S9q+X/MNbs
X-Google-Smtp-Source: AGHT+IHIQ6hL02vX6IP4GwQbuLCOZOqv85KBgOtJmDEVCj4YcKxCCJes3RvY9fUtp3IRzwzcuDbaqw==
X-Received: by 2002:a05:6000:2908:b0:3e3:5951:95ff with SMTP id ffacd0b85a97d-3e765a18d9emr7675234f8f.62.1757855787801;
        Sun, 14 Sep 2025 06:16:27 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd0a7sm13602468f8f.39.2025.09.14.06.16.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 06:16:27 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] dt-bindings: i2c: exynos5: add samsung,exynos8890-hsi2c compatible
Date: Sun, 14 Sep 2025 16:16:20 +0300
Message-ID: <20250914131620.2622667-1-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add samsung,exynos8890-hsi2c compatible, reusing the 8895 support
since it's compatible with exynos8890's i2c controllers.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 Documentation/devicetree/bindings/i2c/i2c-exynos5.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-exynos5.yaml b/Documentation/devicetree/bindings/i2c/i2c-exynos5.yaml
index 7ae8c7b1d..ead1818c7 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-exynos5.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-exynos5.yaml
@@ -33,6 +33,10 @@ properties:
               - samsung,exynos7870-hsi2c
               - tesla,fsd-hsi2c
           - const: samsung,exynos7-hsi2c
+      - items:
+          - enum:
+              - samsung,exynos8890-hsi2c
+          - const: samsung,exynos8895-hsi2c
       - items:
           - enum:
               - google,gs101-hsi2c
-- 
2.43.0



Return-Path: <devicetree+bounces-160147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 341F2A6DA52
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:52:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 977477A4062
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 12:50:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E01B425EFB4;
	Mon, 24 Mar 2025 12:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UvYKnx3m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2543A25EFAD
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 12:51:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742820690; cv=none; b=EphqMeGMXJQHyJkeSb1z2HXEikUsIraQE7CFnLzKxQzwtuTIh01cYl2Tq+0+GtAppBq5TqIwfNkinmFFeEkgGn4MgTsXhv1PT8/nYBPEelyfCUuOFSSeeVEM9pgbafWYe1C0JOwLDPQCYtHOUxgm2wIeISympCxeJIkxGQSUe7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742820690; c=relaxed/simple;
	bh=gJaq8RPqUAN+et8YhiVDjIFuSQejqYIg6fSq5dFj3qg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OEP6vMZSbzYYHdmitrCpXdig/C2iOGSCkoBUH0xstu8qJfTOXTeVqqHLc6EULRfQ9heDM1MtLlIZlv0aOczExKRdHpxHCf8UKeQazMnmzbvkLJjwu71yZsbGs83D5W/gpcU8G8UETrhJF/SZLC20mjt7aa/kllMP1zK42lU3Cfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UvYKnx3m; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3912b75c0f2so290741f8f.0
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 05:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742820687; x=1743425487; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k+BJ+7THLiliR29tVlkgB3kjwlhmbpdD7FSEPWqRuBI=;
        b=UvYKnx3m7S06dtS+k+vkwr+chxuDcBD+rmSjyyMEIUv+ZUpgqnEr4G5O9qcZUoAHW0
         FU7e6U1IOg24XZQtJ7N5wbrJw9baUvSCFTfXwrejr8oASlzcg6CMI2xeZMOSKqg5vPIl
         W9xgVxu7IVt7e+0tcZ6uf8FH0PU3Fv+v/+DxS7RWcRgKtTp797PTNXJUzv9uWbrZgQ1A
         N0sh4noSDxXzoPpaT5TD7cnXvfsEq6DvCvRQEyB5+51oM5TUJKrUwe8jQ7t/N+NsGcnz
         fm+KDnChpkpkksW+RAAx42kb0rMm9VoCIbTaBTOFgBUnd23bfptyEi8Yy+bdP/Y9mOcL
         xPkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742820687; x=1743425487;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k+BJ+7THLiliR29tVlkgB3kjwlhmbpdD7FSEPWqRuBI=;
        b=q2Z+D9oqyK5XyWDwZpeLXrABdvLCJ6yOYmfGPTxME/g3LKvHyXSwGqmh8pg5DLrjSV
         UQko8TeP6LK5VzCHWKgqOmG1Enajpmji4kjaSBHOSwHWcKXz26yTV+F7NIq4e3cQN6Vw
         7NGv+RvWAxQeXOeTb5HTIX9N9hayZlYMFs2WOHQcIcDpwYmVQfTyTfWaxoOdq42PPIu2
         jRdfZvsSzDizRAyfjUJoaSlttfczdHLe+ou7PNUYZn0tWqg9VACn73tCaAAkJBAtjzBl
         ACjnyrv68WP4HoPCK/WtlR8EamiDYT9mKXS8RmYgCnu5prvwlU40Hq98az55kKqkZLK2
         K3/g==
X-Forwarded-Encrypted: i=1; AJvYcCWODm0m7l0n6fPCmbTPds4PqNsDXEaqN9vE2UMh/XvMxv4WYivWzfDneycmRqakciV2cOIiDryaEy8j@vger.kernel.org
X-Gm-Message-State: AOJu0YzL0oFfinHnLSLCWO5u2S9JFtizAKUcPJK1BigiEu15gAgmAdKU
	VfxXPzpwsfrAtpJCCzTNbM+2m0EtaDJVBCKtXI+ZUpyVVzmNfhnqkowFseL4Bcg=
X-Gm-Gg: ASbGncsRxmip+LkwbIFwGN56BLjc5BUy7r4+rU0AEJv9skApszZdjsy2OfNQOJfu4BO
	yNx3TyqeH9UlQ6XbH29pYu8tks24LaSzpfmfgNlyWpwJqpjN2WhkshYYPcDHwvzJYyuEjVecZqd
	xq+ctkG6uZQObYZU+5aOKmAkpt/s7/mNMg12VcONKvh4xVHv8pAXtb6/QC+tDr0mOPO2cpKNQdP
	mB7/+47zqctsMbYbGp4Hb2sfd23HZKPTU1LF8lfLj9bvQ/tIK7T7qcD02ZFTl5f7l0lYVR9j5Nt
	GaNEcSRl9NHeRvVA7llCW4nPiMBPqChiv5HvIPMC0nkx42DD/Om+1RMDNpWmtkFS7VZp
X-Google-Smtp-Source: AGHT+IHtbpqb7/yrKBns7JX7jJ+To/S9FySobLcAWSc8zEQ+fAohSakLZvO59BmPMVdFT7bvOMCw6w==
X-Received: by 2002:a5d:5889:0:b0:385:de67:229e with SMTP id ffacd0b85a97d-3997f9487fdmr4124399f8f.11.1742820687355;
        Mon, 24 Mar 2025 05:51:27 -0700 (PDT)
Received: from krzk-bin.. ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9a3372sm10769917f8f.21.2025.03.24.05.51.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 05:51:26 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rodolfo Giometti <giometti@enneenne.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: pps: gpio: Correct indentation and style in DTS example
Date: Mon, 24 Mar 2025 13:51:22 +0100
Message-ID: <20250324125122.81810-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DTS example in the bindings should be indented with 2- or 4-spaces and
aligned with opening '- |', so correct any differences like 3-spaces or
mixtures 2- and 4-spaces in one binding.

No functional changes here, but saves some comments during reviews of
new patches built on existing code.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/pps/pps-gpio.yaml     | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/pps/pps-gpio.yaml b/Documentation/devicetree/bindings/pps/pps-gpio.yaml
index fd4adfa8d2d4..383a838744eb 100644
--- a/Documentation/devicetree/bindings/pps/pps-gpio.yaml
+++ b/Documentation/devicetree/bindings/pps/pps-gpio.yaml
@@ -36,14 +36,14 @@ additionalProperties: false
 
 examples:
   - |
-      #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/gpio/gpio.h>
 
-      pps {
-          compatible = "pps-gpio";
-          pinctrl-names = "default";
-          pinctrl-0 = <&pinctrl_pps>;
-          gpios = <&gpio1 26 GPIO_ACTIVE_HIGH>;
-          assert-falling-edge;
-          echo-gpios = <&gpio1 27 GPIO_ACTIVE_HIGH>;
-          echo-active-ms = <100>;
-      };
+    pps {
+        compatible = "pps-gpio";
+        pinctrl-names = "default";
+        pinctrl-0 = <&pinctrl_pps>;
+        gpios = <&gpio1 26 GPIO_ACTIVE_HIGH>;
+        assert-falling-edge;
+        echo-gpios = <&gpio1 27 GPIO_ACTIVE_HIGH>;
+        echo-active-ms = <100>;
+    };
-- 
2.43.0



Return-Path: <devicetree+bounces-249615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B6BCDD5DB
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 07:24:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 85D243010CCC
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 06:24:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E16B42D879E;
	Thu, 25 Dec 2025 06:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="GnrQHqHg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BAE13B7A3
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 06:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766643896; cv=none; b=IzybRJWX+XbM/WQmh6C5OVItMpZ2hwSl74sD5qTUiyriTcndUo7JBneKjiR6S4mwQCZjK+zoNE6Ryr53X3MaXW1tAvMr9g+Hm3B0SE6K6dSvGAQNzHELq5tBSRD7dT5Q9n3KGABwHBD9yVSL5F6I5U0zo60G0Qednbhl8R6g8PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766643896; c=relaxed/simple;
	bh=WQ42IZbiEmhWmDo2X3GoDhJcf/spdX4q9dIy9CIF5zY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=SEJi/Ysvzmn8t4nd2gz3gM8mrZhR0xDykHT/sg4DgI1iXJ9q0XjzZTwIABue/QdqX9rYoDfU/RqSLh3gNRLCUfYHtQ7ivVyw+WAPRdqAhASWqEOWQ4CYAt6XcRoI9a0s9Qspf0cHQGCD/h1o7HUSkPOyolpHgInbczMEKl+zffo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=GnrQHqHg; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-34ccbf37205so4740449a91.2
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 22:24:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766643894; x=1767248694; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4w9uwIbipKy4DZy4jYoGNs4+hV0eW+R/XR+IrE6gXTI=;
        b=GnrQHqHgKErF31SJtogQhRvh5RAu+3oDaSn53+3703e8rf6JGPzYInxdqq3KAPuKaC
         +tuEIyKkgGYUzbmSAtn+Es3yZsO7P3mO4cqNvXpnTXOvvcla6wV1HXYMaVtlIh9aGqlu
         vFoAEh2qArj/VAJWpmcqKtL0QElAsqA3nhZ+m1+e4d3O0Y3gUxGW2fhmaQRxPHAgY3RT
         oQ98W1dJC+boyuv4mjLjXP4nqMEpNPeABFfUpRqLM5fEmZ6UeE3iMAt4qQlswD3K8um7
         q9LIadxtcujbh/uR3cSvvzBw4IFprwQuCHinRUpn8X/7jQT+TRKjG945s4lndSuee8pP
         AFFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766643894; x=1767248694;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4w9uwIbipKy4DZy4jYoGNs4+hV0eW+R/XR+IrE6gXTI=;
        b=n8gEaKdBt0aN7Z/szhEibp7af6e7Uj7Hinc7bmUr7PjYpRFdkH6lN+LYBioeQrBTcY
         7uebBFWMpYtEWH/yPbNLUhJ6KRLXY3EgUsFktNcxM0TexvjRqWNShbr/wHfI/vwgwTJ7
         ny1hnPbQPjQzgqDglDP4x/rYMJRcmcbqpxSDQ+HJ6zxEsmwFN7G27p5Vr4xxdp2a42X4
         eao2hXVDeE2yh0Frguc+VKUtOf6aWL/NW8Z7F+ThrSV4jJa7OXpzklkKrwtrQGtFOMYZ
         G7MZsyQyAyvbxfMqgT0rKvwiNoSfw3huAIVSLh80Kejx1muCjQ1zXLDh4JYlRZNXqRKh
         5/pQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQXqOfgyL1HFHIjynSELfHdthgmPULyxacPUFWW5OLf9am3clLbdINMedZyPOyeKCVsEHOMA/Fd6EZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzhND1X8B/9XUkCeu2tyUjAgXr2xSHlCF/tnUUG8jnx1/Pw/ZHO
	rzEDw+xuq2VjRJciZLbnZ1SXromjj9njOfS45OiFuTMF9Fn890gwNWEhwTUTwLa7uPA=
X-Gm-Gg: AY/fxX45jKqcbtDvpfFibYqo8hA5cnJxvpRL+5YJ6WGBAhAU70KoJyZRdBdx0wgwz3j
	7gXFY2RoIqPYBpM6C9gvYRxh98GIbNNzVJlFiZK3ksblh3QOzxqDPa3IZxry/sDOc2WuT6Fi3XB
	S2SHV73lv37U06Mgj0Zjow+APvZ81pkn8XAQccV067RNKIsBe7ssMTNkq0sBVtfJJG99TP6pZQd
	wbUiJGaMML9Vqdco1StjNeMLRX5Japynv4GBfL/pQvYlAt0sHDdB412R6MbTWRcjSC/6HnboZX8
	/IzvKR0MLgfT+uCTvUzPoYQv+BHeCW6JaIeAErERGN8KVB+lYlZLRKXb8hwbPSLsfFfuUcftD/e
	JF7lsu7Dqc4oduWv6xG9tqcivi4FydVDSpDWxzJRlSGGC5mBmeLTNbY8btpqW/yg5KRftV2qCDr
	4CqKjYwg7VD2E4cixs/x0KHCpHkqCDtRU=
X-Google-Smtp-Source: AGHT+IFLWtU4qKEihShuhezxTO9lDSSxFj0Dko8j/Z6S3uN3KATVV89l1O19MjyHHzgp3Owj97LuvQ==
X-Received: by 2002:a17:90a:dfce:b0:343:a631:28a8 with SMTP id 98e67ed59e1d1-34e92206166mr17418529a91.37.1766643894304;
        Wed, 24 Dec 2025 22:24:54 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::4031])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e7723c1ecsm9967135a91.3.2025.12.24.22.24.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 22:24:53 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 25 Dec 2025 14:24:20 +0800
Subject: [PATCH v2] dt-bindings: riscv: update ratified version of h,
 svinval, svnapot, svpbmt
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251225-h-description-v2-1-b0c66080c704@riscstar.com>
X-B4-Tracking: v=1; b=H4sIAJPYTGkC/3WNPQ+CMBCG/wq52Rp6xIQ6aVgcHdwMQ1uucoNA7
 gjREP67Dbvj+/W8KygJk8K5WEFoYeVxyAIPBcTeDy8y3GUNWOLJIlamNx1pFJ7m3DQYnO9SwER
 1gryZhBJ/dt4T7tdHc4M22z3rPMp3f1nsHv4BLtZY4+pA3lWhdNZdhDXq7OUYxze027b9AFpCD
 ye0AAAA
X-Change-ID: 20251223-h-description-2b9adfb2fe8f
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org, 
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2

The descriptions for h, svinval, svnapot, and svpbmt extensions currently
reference the "20191213 version of the privileged ISA specification".
While an Unprivileged ISA document exists with that date, there is no
corresponding ratified Privileged ISA specification.

These extensions were ratified in the RISC-V Instruction Set Manual,
Volume II: Privileged Architecture, Version 20211203. Update the
descriptions to reference the correct specification version.

RISC-V International hosts a website [1] for ratified specifications.
Following the "Ratified ISA Specifications", historical versions of
Volume II Privileged ISA can be found.

Link: https://riscv.org/specifications/ratified/ [1]
Fixes: aeb71e42caae ("dt-bindings: riscv: deprecate riscv,isa")
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
Changes in v2:
 - Added Fixes tag.
 - Added Acked-by from Conor.
 - Link to v1: https://lore.kernel.org/r/20251223-h-description-v1-1-98bea93b0919@riscstar.com
---
 .../devicetree/bindings/riscv/extensions.yaml         | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 565cb2cbb49b552959392810a9b731b43346a594..6a4697b36b8d540ac14bcad6373ffcf3db13d3c0 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -117,8 +117,9 @@ properties:
 
         - const: h
           description:
-            The standard H extension for hypervisors as ratified in the 20191213
-            version of the privileged ISA specification.
+            The standard H extension for hypervisors as ratified in the RISC-V
+            Instruction Set Manual, Volume II Privileged Architecture,
+            Document Version 20211203.
 
         # multi-letter extensions, sorted alphanumerically
         - const: smaia
@@ -202,20 +203,22 @@ properties:
         - const: svinval
           description:
             The standard Svinval supervisor-level extension for fine-grained
-            address-translation cache invalidation as ratified in the 20191213
-            version of the privileged ISA specification.
+            address-translation cache invalidation as ratified in the RISC-V
+            Instruction Set Manual, Volume II Privileged Architecture,
+            Document Version 20211203.
 
         - const: svnapot
           description:
             The standard Svnapot supervisor-level extensions for napot
-            translation contiguity as ratified in the 20191213 version of the
-            privileged ISA specification.
+            translation contiguity as ratified in the RISC-V Instruction Set
+            Manual, Volume II Privileged Architecture, Document Version
+            20211203.
 
         - const: svpbmt
           description:
             The standard Svpbmt supervisor-level extensions for page-based
-            memory types as ratified in the 20191213 version of the privileged
-            ISA specification.
+            memory types as ratified in the RISC-V Instruction Set Manual,
+            Volume II Privileged Architecture, Document Version 20211203.
 
         - const: svrsw60t59b
           description:

---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20251223-h-description-2b9adfb2fe8f

Best regards,
-- 
Guodong Xu <guodong@riscstar.com>



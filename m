Return-Path: <devicetree+bounces-255398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CB21BD22AD8
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:58:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9891C30BDA4E
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 06:53:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C415C30F55F;
	Thu, 15 Jan 2026 06:53:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="BhqjN2Ns"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A77130E0FD
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 06:52:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768459980; cv=none; b=DROzidfX2ejqU6aSTpzX8cGfDtAbeI4YlnZztBTGTslbqUkvBOyPaKyJGtfCekbgNlt7hACDEsvix0Mdrhd1c2UtiY961qppYMKKIEo2U4LxtL/52Sz8cHYYPO0mTwibv/j3ox2jn4BUfxBNm6vKp1gjMYfNuAnCwF1AkYRq9bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768459980; c=relaxed/simple;
	bh=k4VYJTSgNG2EBcFca+PjRqHwafPCJ6Z9F1DCzhfpcUU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bMRPgO+dH2rS9HNb8EBwP/t3mtUM7E9CA1crugBXMzRqabXnM7OcfBWnl9EFV6vQhp/wWfCRiFuUZmmnaW+H5FBOSjrBp4N90Myq1wRTRmYsajDIj2C3tJsjW/sXDVO8kZHCuf7op97dPEHyvqgfQDgdLvQFeiaAbVyqhYHCUYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=BhqjN2Ns; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2a1388cdac3so3601185ad.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 22:52:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768459973; x=1769064773; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uSxOkq26KY5aFi9jIDHJotlQaCGxwZHXeVQL20enYRs=;
        b=BhqjN2NsOWZF4yghpc9GaG+3z+84O7VdZo05dkdCczI28tmBOf3XhpahFgpVB0Luj/
         gASxCkTDvg2Ce/DArtL/pxqJf6t5NiAwy4mE9N1d+tY84iUXSC/9s4/Of0RgaevIdxrJ
         CzDtcFqGWHXGbU8vq8zE06xaY7H5JERYK3LGSl2wjDLefXFCeYAzdQZzmskylB07F1QJ
         hyO0+P3O3RI0nd9VU100fLEtqoc4ETrfaZyXMQiW4Gi55KED1309CQXD1w1WVyBUvAG/
         3PxdRNUFbba+KSBOitxNGwnvi8DBRQPYoPDJiIFTI8TyI7xXE+WuKrJ93KPsdZG/bLNo
         lkVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768459973; x=1769064773;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uSxOkq26KY5aFi9jIDHJotlQaCGxwZHXeVQL20enYRs=;
        b=vUy1wEVsM6WeHXNNx4rcOTGqgczdOvsW5Uq6U5HUdctBPy6QMi7hi77ohxEIHlrdrR
         GQ+gyWuTUodYDQulmEOck2clt0hQpFJronAD9dYsq8HvSb54HyUpdPc0Cf6EJUJOtt8R
         vdX8V5chh/6+3yCYFE2KIGEINv6qzk/tCAvjNr2UKi86ENUvS4sDTde0aXiNd37yB4tq
         CzqulUDT3W54uTosFF+jzKqccKztsonu5IglhyEEXsmTfzfuNl0GCL31v/XsfUfat/Az
         kNzgHQf+KcyaPvRYHalhM4lnokI/BdaKpwBM31trS/LO9Pbbc/rNeLvjWSGU9qS7DuVo
         B/lg==
X-Forwarded-Encrypted: i=1; AJvYcCVpKb5q5rp3B/CwaEwvH33XQMypwesaMB40CYQYOFceHAXZNaiajA83EHJvLtrvCOtUe8yVgzzB9TQU@vger.kernel.org
X-Gm-Message-State: AOJu0YwXlMY1AkBB6MYwB/DjyBTyoczzAP1ttPjNkk72bx4OLf3pVQ7d
	RcV3UZufEN28BHPXEv1B1KFfacqnctqrRWsv317oFIN3gxVxRBF/tmblajuXhxmnM+Q=
X-Gm-Gg: AY/fxX4TXgxIFEu5C0Gt+F1KcOYIMYo3KbA2J/59NYtLyLmF2WhVqmL37kl/GBa5B+2
	yKaunws/3ZDZbQOn6jOBXXGMGnt8SgyNwn8GZT8GksyeAkupXPwNc9LsR97nTY6PRBuMh91lP4n
	IhkIjBLWjoZ6Cdm/+7tw1+jM0ipjlqJzLoDkrTVXnil6p7ScDRqnwltFq57tf3pf/twaMV75Q2B
	l8S5O4kPi6M3C45rWNHnaVt2jeL2qZ1DNUY/cr6cn8eRNWfzIM5NqzR44oxUOJZZy2rWu6Ljo45
	78679kaRtUbLw512CC79n8X056t8YKWej8BWJnzQCB7VUtfmK61yzHPP4Cismn/KznWfVVsflFq
	aFUZXLlmLvHTfEln++MeUbAPu/NtjfMmMzwyhpVd21ElYu3axag7ScfUFLA6ir+uMY4FXZDKoKc
	IkHa81oOOTl9nnsZOokigBq8LZGOVbHrjfQRNXqlfgGo+TVORQjyJwnA==
X-Received: by 2002:a17:902:f788:b0:2a0:e94f:f4e3 with SMTP id d9443c01a7336-2a59bb726afmr48755255ad.23.1768459973590;
        Wed, 14 Jan 2026 22:52:53 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e7a3c6fdsm235081015ad.15.2026.01.14.22.52.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 22:52:53 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 15 Jan 2026 14:51:44 +0800
Subject: [PATCH v5 5/7] dt-bindings: riscv: spacemit: add K3 and Pico-ITX
 board bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-k3-basic-dt-v5-5-6990ac9f4308@riscstar.com>
References: <20260115-k3-basic-dt-v5-0-6990ac9f4308@riscstar.com>
In-Reply-To: <20260115-k3-basic-dt-v5-0-6990ac9f4308@riscstar.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Anup Patel <anup@brainfault.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 Yangyu Chen <cyy@cyyself.name>, Thomas Gleixner <tglx@kernel.org>, 
 Thomas Gleixner <tglx@kernel.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>, 
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
 Anup Patel <anup@brainfault.org>, Andrew Jones <ajones@ventanamicro.com>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-serial@vger.kernel.org, Guodong Xu <guodong@riscstar.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3

Add DT binding documentation for the SpacemiT K3 SoC and the board Pico-ITX
which is a 2.5-inch single-board computer.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Yixun Lan <dlan@gentoo.org>
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v5: Add Reviewed-by from Yixun.
    Add Acked-by from Conor.
v4: Adjust maintainers list in alphabetic order.
    Declare spacemit,k3-pico-itx as an enum, which can save future
     code change when adding new boards.
v3: No change.
v2: Use one-blank-space between name and email address.
---
 Documentation/devicetree/bindings/riscv/spacemit.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/spacemit.yaml b/Documentation/devicetree/bindings/riscv/spacemit.yaml
index 9c49482002f7..b958b94a924d 100644
--- a/Documentation/devicetree/bindings/riscv/spacemit.yaml
+++ b/Documentation/devicetree/bindings/riscv/spacemit.yaml
@@ -7,6 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: SpacemiT SoC-based boards
 
 maintainers:
+  - Guodong Xu <guodong@riscstar.com>
   - Yangyu Chen <cyy@cyyself.name>
   - Yixun Lan <dlan@gentoo.org>
 
@@ -26,6 +27,10 @@ properties:
               - xunlong,orangepi-r2s
               - xunlong,orangepi-rv2
           - const: spacemit,k1
+      - items:
+          - enum:
+              - spacemit,k3-pico-itx
+          - const: spacemit,k3
 
 additionalProperties: true
 

-- 
2.43.0



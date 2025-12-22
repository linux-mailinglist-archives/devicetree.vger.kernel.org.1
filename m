Return-Path: <devicetree+bounces-248835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E3282CD6194
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:10:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A4FC0302EF54
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:07:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 211722D94A7;
	Mon, 22 Dec 2025 13:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="qZmJbBkw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 870FD2D8DA3
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 13:07:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766408851; cv=none; b=PWC91LkMz4/tofbG7Ue5E7s1hHI59wVXJqc6bqf8FlUI3XJW4K3Nxl14lE1ORiGbjV+b51w84eAhwk4RrpP3wzbLg3d0erZ1SVMrwLKgPVsYGgeno6x1kQKBGim8AjDbUcRaJhzq57wr2ru/YLAZqDGfKBk1epGGy2aFt9Lb5S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766408851; c=relaxed/simple;
	bh=8O+KmyR+Z+W71V2Q1jG+1NmAb+LSz0CgxIiQwpSEyZg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RS8kD0iW4fwk694OJ5oIVFoU/3lzyxBH88lC4kot2WBKXcZD1R+0f+2roF9LkwOHZbwDSuTsxo3BZKD5SN6Ijw/uYqufJlSn70cb6DEkKQwlUPQO9+O2FcNYT7bQH2keNpEAf6ZjeyeSWZq+jqYPTHV3slyJh24j68E6Rw4ADHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=qZmJbBkw; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-34c1d84781bso4460072a91.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:07:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766408849; x=1767013649; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M0hBCIJJ8EmxKyYJQRfDJ40fTqpg3Aav6dbr97Zk4ps=;
        b=qZmJbBkwc8qEmJjPPWdN4VRLicpGRBdXh8gLbse5pO8HQ6Qjpyz/RAB12kUMdP12hI
         YCsAXjIxI0gEicqpBpzXCoc0Yi9s/9p/U9oUnyKA3hF9w4QnsOZ8eA1wv/8B2ZAch25d
         i33nER4d/bqHrS7bxyENY77ROC//QhAlrYP7GeL389u+/dleNJOSuK+C3bnpKSq+ip7B
         1EC9LqO1epAOa0+cGZQw4kpERgafr+d5+cguKDNY0xLEGIwJYW+V+Ioava7PdgEsGJQE
         yzRNCc29DhDfmD3nhMhPxonPkTOAURV6awLVEGj/gPL2f2bZLoUs6ibQXa4bqg+aJjsQ
         smWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766408849; x=1767013649;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=M0hBCIJJ8EmxKyYJQRfDJ40fTqpg3Aav6dbr97Zk4ps=;
        b=vbuEsF+H0f2+2M2Mf98k8ohttECtEU8avV7XSiY8IIS/Cm7LA8cPeFwDMbHZdxuucy
         DBBXvn0MLASrL+Sn3HHgIUWI9+W/Huq5CNKIXbg/6p6B14Mo2NxsXsaCPf5Zl8xmPvYF
         PE1PoyrbEFYTgCppjsa4klXmH/JUgmFub/mBcqTc2viyAWa9EGC/nMEKuJtWU8ByYyRr
         iCQNYQg8she0zwH89r62lNn6cdRMjtRuaqfsuDzZ/4WtqlNDOibEhyijP2Pdd2Tt9SEa
         kndPKe6Hh3UBAL16sQJdr1038ri0a3S/0t4+D0fIgkGsCTSryGGdWOMKbH9l7tseSdga
         KMIA==
X-Forwarded-Encrypted: i=1; AJvYcCWtQ2TnF09dATC2CDWrbNkCGMPR/fGvm/GEtkXcqXdv0YyTugodxPshv/v5UQToiwFtRl6T/8uwSCEm@vger.kernel.org
X-Gm-Message-State: AOJu0Yz78DY6wJWwgCDIv7bTPXnuN+eOyoAKJZkirwf9uK6XBdmj8M7R
	AkHYKUMZ4qz4ZpxLl3/Vn4AlowZ/4w43Zj2gRnlL3qDia8w0uiBJNlGMcYwzjg49fUs=
X-Gm-Gg: AY/fxX5TCSVNn7QpGIv6j4FaRi2qTKb2mpxfZ9pQOufwjB1chq7Fh7Wj3VO6J0Gce/b
	W81n/WgJjVa5Np/TQtgwO7r3oxj8am5q1/hVDBB3MGd2331SgVEP9yfFRNMgyjFauOz6KVIReZf
	kdRlst0EAZEMHUhQf/ShSedywIg0tuiT2FTi8OETdCXtWS8zvVKE1qXtTcynmWXCUJ2BZmDBJgN
	3jg0Gu2rgqqQ/P/QlMznZpmYap4U9YWbN0HsMyfv/5BNQ6TP/jSykarKuuw5Ogb3ujsVtpyN374
	GbArx+XeKhfhWTardUpEgVGRC+NPm68su9C8s7fnTvWPopkK7hYCm6sx0JZF1RaUEss0++GhjZF
	kPo0tsU2OJq9NmEzsORaypjoQ9Rd+X2e0Xy0159cJSCJx9ar348WARx5jdWXK26ENm/cDiImpm+
	v4Y/5miN6V6bPNswhOQefpLxha9znHPCY=
X-Google-Smtp-Source: AGHT+IH/ef6qJxgLISPyQdVV9ykkGamL2Gr7XNJ9wshLQVPd+I8d+rSgyrotTljXgKb8jsc3m2BCnA==
X-Received: by 2002:a17:90b:3f90:b0:340:c261:f9f3 with SMTP id 98e67ed59e1d1-34e92130102mr9913256a91.14.1766408848875;
        Mon, 22 Dec 2025 05:07:28 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::402f])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70c932casm12970405a91.0.2025.12.22.05.07.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 05:07:28 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Mon, 22 Dec 2025 21:04:16 +0800
Subject: [PATCH v2 06/13] dt-bindings: riscv: spacemit: add K3 and Pico-ITX
 board bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251222-k3-basic-dt-v2-6-3af3f3cd0f8a@riscstar.com>
References: <20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com>
In-Reply-To: <20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Anup Patel <anup@brainfault.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 Yangyu Chen <cyy@cyyself.name>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>, 
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
 Anup Patel <anup@brainfault.org>, Andrew Jones <ajones@ventanamicro.com>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-serial@vger.kernel.org, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2

Add DT binding documentation for the SpacemiT K3 SoC and the board Pico-ITX
which is a 2.5-inch single-board computer.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v2: Use one-blank-space between name and email address.
---
 Documentation/devicetree/bindings/riscv/spacemit.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/spacemit.yaml b/Documentation/devicetree/bindings/riscv/spacemit.yaml
index 9c49482002f768cd0cc59be6db02659a43fa31ce..fe62971c9d1f4a7470eabc0e84e8a747f84baf0d 100644
--- a/Documentation/devicetree/bindings/riscv/spacemit.yaml
+++ b/Documentation/devicetree/bindings/riscv/spacemit.yaml
@@ -9,6 +9,7 @@ title: SpacemiT SoC-based boards
 maintainers:
   - Yangyu Chen <cyy@cyyself.name>
   - Yixun Lan <dlan@gentoo.org>
+  - Guodong Xu <guodong@riscstar.com>
 
 description:
   SpacemiT SoC-based boards
@@ -26,6 +27,9 @@ properties:
               - xunlong,orangepi-r2s
               - xunlong,orangepi-rv2
           - const: spacemit,k1
+      - items:
+          - const: spacemit,k3-pico-itx
+          - const: spacemit,k3
 
 additionalProperties: true
 

-- 
2.43.0



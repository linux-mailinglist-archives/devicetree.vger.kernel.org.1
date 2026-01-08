Return-Path: <devicetree+bounces-252799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8BED02B22
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 13:42:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AB0CA309FD3C
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 12:36:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0CF24A7E75;
	Thu,  8 Jan 2026 12:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="DJpPuTo1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com [209.85.210.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 798724A7E4E
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 12:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767875182; cv=none; b=kMcAjHQYAWHF8RcXELg7jWj5ieahlcsf7B5PcYS4rlom093H0h7DedigY3S+d1BDpdCCGOe4+WSqL6gj8zNdHHBFM8lVfEuqhFQV2Ffqjz6LM78H+U36XwjbPmCK7QT/HZIj4L0lYSc/2RsSL4f5r5u9AakRWq4AsXQf2VY5neE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767875182; c=relaxed/simple;
	bh=Rjhp1f76JvXEIyBs7u7fivItAYa/enSNMy6Yg4GeEMA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QB3XoDi1cyo/DDn8gF2CO93LKGAFd5iIEOJj7oY/YbneMZ/5CBr6kg3Wz3qWZ/h4CbzxYYJ5Szon/GVwUxvosNS392syjSykISErSWY9yHUv1hkls440R6oNRTaycMVdbGEfvAOQ4G+jgZOrU+lPBqIs8PBvdL/U1roYeyV6oxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=DJpPuTo1; arc=none smtp.client-ip=209.85.210.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f195.google.com with SMTP id d2e1a72fcca58-803474aaa8bso1048766b3a.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 04:26:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767875180; x=1768479980; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=svNJwjtcBjZE5yQaD7VkQ4pduXIBNtce76dJ2fZTxXE=;
        b=DJpPuTo1F7CaBbQcac8i4aPm/6uyt9a/Uzb4Q0fEXo1u3DL1WMMRlF/UH0gcqmk+yh
         3B15Z+KJ1kcE22nstnXmZS10h+QA8m+ujNDuGGfhrThEwMrHnxxFbuDdZFh04xA2yIM7
         bVAIprKEJ8zSUIBNj9oaoR9a9uiG6TMWb1mNFI1iu+mEWU6et8JyU59VySXSdnVdxxfV
         7SDmkXubd3yI1z8Zb3Ji1cneUZkRiCFqq/fjd4Kcz0e8ZA2KhEC1Vql+Nu24fVUt6O+G
         HHZ4G66kz4AFEfOhxhKxAAOsN4zJz6pX1nOb98fTiuVzyC+E1Wp7Xzzl8WKzYOGRydzJ
         ZaXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767875180; x=1768479980;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=svNJwjtcBjZE5yQaD7VkQ4pduXIBNtce76dJ2fZTxXE=;
        b=DEai/TSorj22OXONOXW5zRFfqxFLgS2URpxgpVCRnKwAvDGCHl2L11KeMDDke0vUgb
         6NaW/9lud0ddK4I1GXgnt+juBRGNrEbhrGY5DUnlWQg2BbG9mTUS32yCYJOH43m+WLy/
         +2DJ2vG5JKuuPwiuOE3ww2d83kKWkO5aQG6rrMSLCUrrIXah6Oq8BIAPp9wN2xHuAuhz
         w7mNHG8pwRb0zH5rVlpwv12audfw0bQS4GpGk5VQ0J64/bnL7PRf8COmxfTKZsnflSoz
         9loDKDCV+AWm7+n6wKUAFONkV4UIVsCX0PNKRQIvB+JzcTWpAyWKtaeI7ViI4m6RoL3U
         mLlg==
X-Forwarded-Encrypted: i=1; AJvYcCXgUIsLonfW8zNuPlPmy91tebWFx+sUOnIfeH+gDqpX8wbYjF1Ow7ji6j9J4dSI4Bb+Llexi38Ct7KG@vger.kernel.org
X-Gm-Message-State: AOJu0YykAFEUoSwDmtAqf5LOS2AN7M/M1BFLN7oBqLe/3DKIXAofBz3k
	rqH2sjAymZOg61uwCTT+OWGFIsIqNotWPILMma17PH+kyEcrKVhvL8UJNC49ZhVupq4=
X-Gm-Gg: AY/fxX5wp3z5K0zMXKQZ3oxzL5xteSbpRoEsO4GfJGO8AgjqZe905kOuPc4tcP0p0TX
	r7cNlpTKH8o6569cKTZ4yhgb5v358w5BWHJyn1v/tlbg6SgGiguVew9NRYDXijj6Fr+tA4Wfqfd
	2dwL+PTHRJZXuxIK6rr3MdzhYNQ8/xypRpQqLbhgiUE03aZPQtWKbnvMZccRHINFmqTR2Cc8J+S
	QZJlZ0pKXfZlIsqz1yd3PcAyxZ3ngNEcjoiRWVVxYGZo8SiLszXiC0oukMgf0rQVtiNgplSH3b9
	xN2r8JJeEXQhBSizkBLga3pj8z2Ran4SLXPI7pJpap9cKaqtR/pK270CJ1Gh3fTgr1BB+zmO07m
	3/i30ABIXuc3Dix7ukpoLLohpByldWkwh/zMJZGsmrA/Szn3snkzX4IUS9d18IKeFQ2vBjbJ1l4
	p/Y1X9mymPUUm+6nKrUfQ/bbIqxe1jTLU=
X-Google-Smtp-Source: AGHT+IH6LhWNpywmlluc7y2KgKs63mU5gzOfaFnUWoQt+hUetISX226tIHExkzPECXmhOq6IXMNhgg==
X-Received: by 2002:a05:6a00:8a8c:b0:7ab:242b:95c6 with SMTP id d2e1a72fcca58-819436047e6mr5869824b3a.6.1767875179859;
        Thu, 08 Jan 2026 04:26:19 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::40df])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe991dsm7656401b3a.16.2026.01.08.04.26.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 04:26:19 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 08 Jan 2026 20:25:52 +0800
Subject: [PATCH v3 01/11] dt-bindings: riscv: add SpacemiT X100 CPU
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-k3-basic-dt-v3-1-ed99eb4c3ad3@riscstar.com>
References: <20260108-k3-basic-dt-v3-0-ed99eb4c3ad3@riscstar.com>
In-Reply-To: <20260108-k3-basic-dt-v3-0-ed99eb4c3ad3@riscstar.com>
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
 linux-serial@vger.kernel.org, Guodong Xu <guodong@riscstar.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
X-Mailer: b4 0.14.2

Add compatible string for the SpacemiT X100 core. [1]

The X100 is a 64-bit RVA23-compliant RISC-V core from SpacemiT. X100
supports the RISC-V vector and hypervisor extensions and all mandatory
extersions as required by the RVA23U64 and RVA23S64 profiles, per the
definition in 'RVA23 Profile, Version 1.0'. [2]

From a microarchieture viewpoint, the X100 features a 4-issue
out-of-order pipeline.

X100 is used in SpacemiT K3 SoC.

Link: https://www.spacemit.com/en/spacemit-x100-core/ [1]
Link: https://docs.riscv.org/reference/profiles/rva23/_attachments/rva23-profile.pdf [2]
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Yixun Lan <dlan@gentoo.org>
Reviewed-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v3: Added Acked-by from Krzysztof.
v2: Fixed alphanumeric sorting of compatible strings, put x100 before x60,
     as per Krzysztof's feedback.
    Added reviewed-by from Yixun and Heinrich.
    Updated the commit message to provide more information about X100.
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index d733c0bd534fb63ed7c0eada97c42832431f1fc1..5feeb2203050ae1f1404100ab7ba93e224f72d97 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -61,6 +61,7 @@ properties:
               - sifive,u7
               - sifive,u74
               - sifive,u74-mc
+              - spacemit,x100
               - spacemit,x60
               - thead,c906
               - thead,c908

-- 
2.43.0



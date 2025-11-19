Return-Path: <devicetree+bounces-240191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC7EC6E592
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 12:57:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 548B34E19EE
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 11:56:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99F8E3559E6;
	Wed, 19 Nov 2025 11:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G1p3WRsC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32513350A0C
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 11:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763553414; cv=none; b=H6czU8DPSKyfTNF5XGktVLph6e4A5u+SK7R1RjTO/c+CNpVW2ejluEc+12s2bDqDPqLnAbpqtAl1GySweC0P/L++T5IE84TcLamLqo9RhGx736c87b9JN6EeG2r1VZ3O6K0l7/VwMZOME2hZpmen8FEjm0QijJVvPkf8wkn1AsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763553414; c=relaxed/simple;
	bh=7CjOcGFE5wwSmpZcmbYOnGQ6AQrPba6RbTKMsYumG8o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NiT7F7rEgrQ7Ln+7DCNgA7aViJLG0tOLu6kkIl3NT0JLG4J3OLlmB/FT3XApnpVO6kAiFJtjS4/WAyf+PsJP+/PPqW2PpAdi7Wsczzu3UvJ0M288J+DSlO5VdYfxJS0wuAf1k2MrkMAzCsAzMqUBfUa2LasUZGEdq8paPB9UtMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G1p3WRsC; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-340a5c58bf1so4720800a91.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 03:56:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763553412; x=1764158212; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qUwM6pAblxmgyjxDQA/gZ64zf5hkh6yLTKnpJtNXTew=;
        b=G1p3WRsCntiHDz0jyCs9n3tFBUq330wcadoJv4imdz9ZfVhy4ehFeHEnhdYArJMt4U
         rsn2yEO5srOV+PTsNQp3Amr+gvBtlm9aLlonhkdrq7Wr2f61xPrleq7Z6jHc6MX2IqCK
         jrn3efu/KjixB9oH6pG3J0LCLQILRNloMDw24bIUoUYaoa8h27TFI82bXup0DAxii+iA
         CVMlVFS3fEL7it/WMynwQ/Rxa12lRut4uD6Ika65ou2K5Ftkb7t0fC4I+oJ/Io3m7kzb
         b1TAr7Qt2VwZSaG5nY4DxZ/5d11ZQUw0M4JaD+0I29NXF9Kmsm2Lmjp2YlZQY4TxCcRV
         +1vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763553412; x=1764158212;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qUwM6pAblxmgyjxDQA/gZ64zf5hkh6yLTKnpJtNXTew=;
        b=alSldxy3zHcvQEE8NrpaL3Ez6Uu7lGFI+BkSi7FeNb2bqzU5W6iztd60fO7J81f8xv
         8q4SyEnsCpk4u3v6H9vTyd3ZaOBEIAJD3pO/8ujvQjNCgfRCRzbCgTUOkbpwsvzcXiN/
         2ZiSmwCNSKNbtY60cb7sFRnEw0OukqsSy2ahTTzYpgeryLu1CBIYSSJ+Ms5T+Z9pFvUV
         ugN2GNprmsUjGPoWht5LQXswnG6geuP8FpZgux+INAuW+MYOcMv+91MapUPYxLXJBPAT
         mQ31YHgpfaaLNhUdBvuCLMzzlKpV5hdJHIzodVejN2KsxZ5honzrL9h4xQGHjVJsS7vk
         6Usw==
X-Forwarded-Encrypted: i=1; AJvYcCWQIm1+xMYTNrRvRuhoiq+XIr5nAM+W3fpCTn9ZkglnhUrLKQu59RtCfM4FeTlEsHEQH9mMnutpkdSz@vger.kernel.org
X-Gm-Message-State: AOJu0Ywxpk2c85PvJly5nf4ocZGM/vxZdye4ZgFHCxlr6M2VmEMGAdKa
	Hv/xMwmSX3SSc/GuzVKrDQBkqfe1tV2zOeC1XCqnhIWrfMZbqsIOidak
X-Gm-Gg: ASbGnctUaSMsRVFL95NJhjPsKcpd/yOr/7Ki+fANBkBs9t5dEOrw9VIIyuRq1GSMhbf
	NOAbTzKxDwHL+0qFhlzsqU92i0aM9rtaMAVvEpkNuGuLV+kLafIvjouc6lcMGchxiRzaTdv5o9W
	VpNPUnKpTPk+2PfMsEHmAOH33ZlOKv9Q6hBi4S/yQaM51NXH41DWoVty2PikRwMkFz+r4bZiA7Q
	TdaIu8txAxIemYX0XpR+Relo5ZTNB0+H17dW68VicPph3yO5PfQSgh/7L9THGy3Ikx1BmjLOhLt
	7judEG9zwCu8VdibxTGDHSXjaxs8Ukcal0Et3f9DSDA1FzCmrYQW5EXIuu6LxzWmozpuBuaVaR+
	xT+UJm5Aq40x0mmRI2Qp42RNkhAnvGeWmyjbIwzoXmrrhQLbLQxbvHJN9szrUbZbi95vM8TGZuy
	FSVSqZIyj6zcnKws4=
X-Google-Smtp-Source: AGHT+IG5RC8qD54mIbAsxTIhZU1rpL+W33p8wn8L6JMVABPH4iQVEpKolLFmkisefx+eP01irVmjqA==
X-Received: by 2002:a17:90a:ac05:b0:341:194:5e7d with SMTP id 98e67ed59e1d1-343fa527f4amr17253242a91.24.1763553412091;
        Wed, 19 Nov 2025 03:56:52 -0800 (PST)
Received: from localhost ([211.94.252.171])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-345bc25fffasm2556880a91.14.2025.11.19.03.56.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 03:56:51 -0800 (PST)
From: Encrow Thorne <jyc0019@gmail.com>
Date: Wed, 19 Nov 2025 19:46:45 +0800
Subject: [PATCH 3/3] riscv: dts: spacemit: add reset property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251119-i2c-k1_reset-support-v1-3-0e9e82bf9b65@gmail.com>
References: <20251119-i2c-k1_reset-support-v1-0-0e9e82bf9b65@gmail.com>
In-Reply-To: <20251119-i2c-k1_reset-support-v1-0-0e9e82bf9b65@gmail.com>
To: Troy Mitchell <troy.mitchell@linux.spacemit.com>, 
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Troy Mitchell <troymitchell988@gmail.com>, linux-i2c@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Encrow Thorne <jyc0019@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763553189; l=900;
 i=jyc0019@gmail.com; s=20251009; h=from:subject:message-id;
 bh=7CjOcGFE5wwSmpZcmbYOnGQ6AQrPba6RbTKMsYumG8o=;
 b=1Z0eoRX2dDGoiZ5ytJ6qWD0t24HbGAMxGDLnolPtr9iBAp3+NVNhtHnDXL+zj4kP54vcFHzon
 y5yhhsrcud4DFWaY+bGGEVZiNavy5wOwoXw5DE4VShZQEnXknJFCHy5
X-Developer-Key: i=jyc0019@gmail.com; a=ed25519;
 pk=nnjLv04DUE0FXih6IcJUOjWFTEoo4xYQOu7m5RRHvZ4=

Add resets property to K1 I2C node.

Signed-off-by: Encrow Thorne <jyc0019@gmail.com>
---
 arch/riscv/boot/dts/spacemit/k1.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
index af35f9cd6435..2b84dc276ace 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -468,6 +468,7 @@ i2c2: i2c@d4012000 {
 				 <&syscon_apbc CLK_TWSI2_BUS>;
 			clock-names = "func", "bus";
 			clock-frequency = <400000>;
+			resets = <&syscon_apbc RESET_TWSI2>;
 			interrupts = <38>;
 			status = "disabled";
 		};
@@ -481,6 +482,7 @@ i2c8: i2c@d401d800 {
 				 <&syscon_apbc CLK_TWSI8_BUS>;
 			clock-names = "func", "bus";
 			clock-frequency = <400000>;
+			resets = <&syscon_apbc RESET_TWSI8>;
 			interrupts = <19>;
 			status = "disabled";
 		};

-- 
2.25.1



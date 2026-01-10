Return-Path: <devicetree+bounces-253444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8858ED0CF82
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 06:19:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AF0C63038F67
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 05:19:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C90F2E54D1;
	Sat, 10 Jan 2026 05:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="q6UvC2cO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8BC623817E
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 05:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768022348; cv=none; b=UFdUemGN8htaLZqPSPc5+Beecp4ybnLkAu/lQyMaiWlkENy55EOJK/8ix5KTvG8/wd8SAl7UH8DLFX10wECoUJuYGz270kLyMgQ7I53OGMuTPRCbohA9qBwEH/RAOpIg6kdNeGqVc6mMIEqIdtrvDQTIHbDOD19tO2RsoUz5HVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768022348; c=relaxed/simple;
	bh=2L6MNmGY38hVdp9Ijc+okVTe3kqDNq0YpAih/UfxNDk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nTkOQxuVtVg7aK9RslefQuN3Sted7XTOl/Ga1gx5kYlWZKLZVRniyawPUHqHXkNB8UriJ1rQAnd2nJoyH1iZp9W8Bd1uDaOUFHIJoCNf/447P7i1YqUpjEUnJ0fJRVQR/vPJd3Xk6YI/mUp850WFuApwB0tQSl5seU4ixTWMbIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=q6UvC2cO; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-29f102b013fso47911775ad.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 21:19:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768022346; x=1768627146; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+vZa4MSAEGd4aC/jK6JBtGhuF7IGt0ZyoCs3KPie1Vc=;
        b=q6UvC2cOrSAnDOq+s+jUxpdGCQ2cyU+UlCa3XE3LSUcjS9vJHaDDOWe2uJpLTDHM8z
         PpyvlQiMPrZr98079NwsMOOLjwMX+UWWraPkd3iQw1uYR4CUiQmDPzvYWDBAm8cdTP/G
         dEdqd3c7Dkhuif8p4yvBoS73BI3lue8wxldDIMpBLII6T+22m3tU7X0slXNjQG+08Sjf
         uEqiNspWEMAxvZoXJ/fzCYHzN0JTKQkpNkXLbaSWNFToEkg1AlJEnlHD4Tadarbxuh7+
         Yyrii0nXjHTIDiJHDb7pIOqBX2efM5lCwRtshVqTV5rimmKHqjB0ZH4kuZOrtwwnFhYT
         3HxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768022346; x=1768627146;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+vZa4MSAEGd4aC/jK6JBtGhuF7IGt0ZyoCs3KPie1Vc=;
        b=bBB+g4qpflKqKokbpuOEAJJNAOcUz9WQnP+dUmT/6IQA1JGFyj7c5aafYdgqfScxvA
         zVlOj55KI68ivLXKiYkiyWsBeC84MzhM6cKunrAkz3c2OS9w+8X5y4AuruAuvz1U0X7c
         EzG5OORq++87CsUxDl97+ZABwuO7qB9Azm6/CTpu08RBSchR60ug9UumCoXUwXy2PbQi
         aG+21feWRcu2jxiwmdJC5oz/pj8jT62bhFTHXfAyfxdFUAWMB1Dfnob9o7pO1JV/AtZF
         Kaiw4UA0cM5BVMNEt668XWf9FRhIRAyVrWRq618sfJXIjeOKTNvf4QeTLmi+u/Ko3KG7
         n18Q==
X-Forwarded-Encrypted: i=1; AJvYcCUlui/VaYCIbnXCNzjbp5/XN0T3w1cXtexuU7PPQ5EYwVRNwum4XJq342B024jjn+vFttr9FI7t8n1y@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8/v0I0zicv6NRMOB1b5WIoga+UX+7nV/bhjLzb7w0ErgK3guQ
	r8j4b4bKQlJ2ptZ/KQPN4bBIwFMLMpgSazSYkxmd8QTewd+/c0kcG40HLU07Xvy2Tg0=
X-Gm-Gg: AY/fxX5NyA2gBOUFVURsH1zIr9JrZuV/zpC28w5RUsXC19jcQnOJoqi3qTirhmEqoB1
	rngMtqVBiML6H05vu2NOvqguemVbIg6HTnpQReCnIdO0MqNZzeAYjc1bjk9KoNNshqwwBgdIvSM
	Kx47/2e8QatGZnqtVQdCi+PR9+ZtkZ4aV9pXkYKPDLwYFpjLIdSVlraCgOIsf3ZLpKARb5bR1/h
	0vVd+rpWVAvGpUO08dPw01/xLcryr2cCzVw6WgvGC1g/AMu5G5VcFxobmMWyR8ctYpByEoxKYCO
	kUY+c+QHXS2gG1ahwCGCUQLk9rFWqnBRTf/JxXkbG6ZtqQHS0DNYKReT/ou4yjuC/pRDUla2O7b
	ug6P0hxpkd/FdIQdNiiSb63datG/IV7Xt5R+W6bZbTMKKYWosRrneWDLk9yWqXJ6CPmB4xqePv3
	qx+VhOAupN63rksceK2sH8VJnjwp2Anodsy4buRzT3b9UQQZC7RndRYg==
X-Google-Smtp-Source: AGHT+IHbWq9DQ8nx6uG9JGFLdiLuMqyccmdPD516zDG77XGC4jrI6E+jtKCvRSSwQ6vvWdUH3x05HQ==
X-Received: by 2002:a17:902:e549:b0:2a0:be59:10cc with SMTP id d9443c01a7336-2a3ee491b7emr114403405ad.32.1768022346020;
        Fri, 09 Jan 2026 21:19:06 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.108])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc88cdsm118208265ad.73.2026.01.09.21.18.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 21:19:05 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Sat, 10 Jan 2026 13:18:13 +0800
Subject: [PATCH v4 01/11] dt-bindings: riscv: add SpacemiT X100 CPU
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260110-k3-basic-dt-v4-1-d492f3a30ffa@riscstar.com>
References: <20260110-k3-basic-dt-v4-0-d492f3a30ffa@riscstar.com>
In-Reply-To: <20260110-k3-basic-dt-v4-0-d492f3a30ffa@riscstar.com>
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
X-Mailer: b4 0.14.3

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
v4: No change.
v3: Added Acked-by from Krzysztof.
v2: Fixed alphanumeric sorting of compatible strings, put x100 before x60,
     as per Krzysztof's feedback.
    Added reviewed-by from Yixun and Heinrich.
    Updated the commit message to provide more information about X100.
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index d733c0bd534f..5feeb2203050 100644
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



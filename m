Return-Path: <devicetree+bounces-247047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E883DCC369C
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 15:04:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E8B79309D964
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:00:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E7BB34E269;
	Tue, 16 Dec 2025 13:34:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="JCq18g9t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7DC034E267
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:34:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765892048; cv=none; b=UkFpvFB8rokAKwtQRwke3a7PK9m6DXUpNM1p9ddNL+pTaJpVKGca2whSN4loDMbyxQFuKIVE7o3A1J6OMu5T8KwF8N30j0yI9TRvegJPeuNjzg3p9ffQp1n8/C+PIfcxKkOZBG/C97dbiG1q27wz6mk5XKmVWVxQoew52lo6Qeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765892048; c=relaxed/simple;
	bh=WXHiNOHxNEkVgGMjQZWeXB9DxbyMRjTpNm9zjjrOvhQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=clzl57cocgvBzbtNwvDxg+S/+Cefy3G7rxvBySRwIKLUe8pJvoZ/bt+EcORbOez3RTrJSX9555wbcsw9SkU1vMeQbTEaRA7lvDk/PN12UGvmDJqHZrbJE2xOHfn1Ky6Ln0ZKk1Y8S8ISc9cez68D9ueRgPYGkIv8QAA5WkECRss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=JCq18g9t; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2a0eaf55d58so12756085ad.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 05:34:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1765892045; x=1766496845; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t7y/C6MB7UDZ9brxunSfG6djbfKn9Ck4w/Hk2KhvHZ4=;
        b=JCq18g9tSCJ0DMYvZmxKjm7oAF1MiPtjNhD1SYtADyVA8hOsA81MZklGVC7jLF/9Gx
         fUeuNudbmVMExEra6AY8ym3rYRhKKLA7vCnyYEOwpbpFyVVXN7UiksguGQkyIR/EGTRH
         OtYy9V2tO37UFSj5PlDljzRXOkKjdwJ3EeXXDxR5dTLb9He9SAL2l59H0hyX5WQq5qx5
         Qp9ldV/eVDvySJh1mzy9Hqkn1blk3/9oatPsMX/2hNShI5d3ukI0tIAURWCCv9yvLVzq
         K7cp6tDsUbvwTeha3cg/FMxE7Zvf+K7iLgwc25q3N/MnHOiWWdeCj/4rjLIxBGRBMyk3
         5+AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765892045; x=1766496845;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=t7y/C6MB7UDZ9brxunSfG6djbfKn9Ck4w/Hk2KhvHZ4=;
        b=xPxng73Zk3W0KDwxaf5L+ePRuueVLZSPTapd7X3Z1GllIF0Tk/G54Zvd8C8jTIWyPA
         Wx3LMUM0eT8FUvQ6LpRF/xX95rcYaTqNhLYJN1fuEcgix802YRMyTSOa3LqkcrB/n3C2
         rW+IawS9/MKSgYIh4h2rt7IkgWilOk6eDhajqXKenpofeUj+WbQTClR3FnkyinpXvINZ
         +Ju4gGlO3CgakPqVvS976G56BrMJL7idxHq+Nqv81m+sAcorp+iJAwvdICZuu/BB/M57
         BxYqOUdvDTRxSKBEpGNpuik6VaIY6eZd6HqkOvER9k1RFJFCIIIvTUdaOnPzMRDzJqyn
         Fung==
X-Forwarded-Encrypted: i=1; AJvYcCUI5VN/VPmvHTy5j290/YkQ8AUJvZkumG6BFAnTYskyFmP936fi3CJgYNQsnTsoQwhng1NIEpaXzkhk@vger.kernel.org
X-Gm-Message-State: AOJu0YyOkSRYrQkUVdnpEU9xDXMeCI6Bity82A/lFhZvdeoc21BAvnFd
	1g6ThfaIb1csP2jeFo8unYikY4fqQfGf6Qpx00RMRtk6yn1JLVa+2axMnXOcA/aBHPM=
X-Gm-Gg: AY/fxX5KJyfjFxS10aENKHjIBtFxSjyL+Ka9qGGTJECmVaiqY/GjUInUWDoqdWTjCpL
	qv2CSNNcIA67IgSX61fzk6XECt0gUIgWbFgWy0JG2OhS6rX6r+6dAedpFR3h4aFdsGhmt5jmYsH
	NTFJM1zJAwfsbonwl8I5UrpMYOoopHJk4zkYLrMF2h0bT/zZV/xDiXSuxcD6A6BYSOmGKZokZI5
	MEEpuzqi3HcMLU67wKHbULVDG/27XiMuBmy7f9SEZHCNLpq/wjyMr1w6+1kRJOJwN5xhBoSBLyP
	vgp7FuHqsXI9/W8FNahE3T4oLT/4JUncxVB4HeosFx4d5tWNTgLlySa+A4mcnBMVEgLVwH3d/RZ
	Ljd8HRfyOsFNfQ9XYb/nyIK74V07mW9ISzIgMfJcMW0VTQeL09dBRa04+Jsmm+u3ITqObEdi6+n
	TR1mXrhNAe6aGXxD2XtdFyFkCjoGRC3E8=
X-Google-Smtp-Source: AGHT+IGlJuIYFFX4Kf4ETwvpERoBwiGUxzh2gcBhl1n1hPyzmW7Qi4XuHbuLS3V/KKQPD4rNe3NC7g==
X-Received: by 2002:a17:903:1a0e:b0:2a0:c92e:a378 with SMTP id d9443c01a7336-2a0c92ea624mr100750335ad.7.1765892044589;
        Tue, 16 Dec 2025 05:34:04 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::4029])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a14625add8sm15829525ad.61.2025.12.16.05.33.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 05:34:00 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Tue, 16 Dec 2025 21:32:30 +0800
Subject: [PATCH 6/8] dt-bindings: riscv: spacemit: add K3 and Pico-ITX
 board bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251216-k3-basic-dt-v1-6-a0d256c9dc92@riscstar.com>
References: <20251216-k3-basic-dt-v1-0-a0d256c9dc92@riscstar.com>
In-Reply-To: <20251216-k3-basic-dt-v1-0-a0d256c9dc92@riscstar.com>
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
 Palmer Dabbelt <palmer@sifive.com>, Conor Dooley <conor@kernel.org>, 
 Heinrich Schuchardt <xypron.glpk@gmx.de>, 
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-serial@vger.kernel.org, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2

Add DT binding documentation for the SpacemiT K3 SoC and the board Pico-ITX
which is a 2.5-inch single-board computer.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 Documentation/devicetree/bindings/riscv/spacemit.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/riscv/spacemit.yaml b/Documentation/devicetree/bindings/riscv/spacemit.yaml
index 9c49482002f768cd0cc59be6db02659a43fa31ce..003b0bc1539b621e39172a0565dfea1274cbc8b8 100644
--- a/Documentation/devicetree/bindings/riscv/spacemit.yaml
+++ b/Documentation/devicetree/bindings/riscv/spacemit.yaml
@@ -8,7 +8,8 @@ title: SpacemiT SoC-based boards
 
 maintainers:
   - Yangyu Chen <cyy@cyyself.name>
-  - Yixun Lan <dlan@gentoo.org>
+  - Yixun Lan   <dlan@gentoo.org>
+  - Guodong Xu  <guodong@riscstar.com>
 
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



Return-Path: <devicetree+bounces-252802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 659D2D02E8B
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 14:13:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 78C7F30CC86E
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 12:46:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A32FA3E9F8F;
	Thu,  8 Jan 2026 12:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="tJ1Y8BMW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2145D4DF3C9
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 12:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767875214; cv=none; b=AV/R185nf5qnxa7I6yCg8y2xWxJ47/QOx3sUeXKwMPKoe/UObO+2cv8h1dMaUsyNTTWykBZbj8WQ+fA2+xIKtyzv1hxOcpV9RDceyHOcMmIqWK6dbTYxohdcONBQfKYk6S7X9i3QYZuzU1DoDasR/RZesddo2dqApkZHagI5pG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767875214; c=relaxed/simple;
	bh=K37CDQVk1qKhIlEnznd2RkcI254RHjk8sgFKmzbozCg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Fwm2FiA9uMGAp6R6xAiptd9jODfVkTHj1KB9pwmXuQXX1Pu7kGAmXiWn37bnR/vtzmF5FPECtBlXNXhkC1r+8si+0bCwWv1oWY6qW4GNkJmchNM/8IemDdNQnpDR25hWkfdgysiogaAnyjgvhT+J7ML8W9mJKofVsiLmWkRrxOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=tJ1Y8BMW; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-7b8bbf16b71so2094922b3a.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 04:26:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767875212; x=1768480012; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5Uu81D54FMEFR1KBiicj40Orv/JnpYImdvG8u4ALBqk=;
        b=tJ1Y8BMWmTeZXSIQHNRsiO86Df87gXV3W3fIBUjSMbjxxIR3v5MGJBcKVFXe5Y21Ev
         qyxHoOyJY+lDx8J2xUgT2q8bm8fJa0AiSuNBGvccLcKhA56976tHDCisWEDm0a+VKl42
         m3y7yH14eS98BWV+aRXN+n7jeb0szkNfFzqnHe70LFPGNTRVo07SV9UXYRk2lNxqFBAd
         eKC6KIqBMq6stpZpoysMWTWwuJKL+k3Vb/8Cnw4+SxxiDLGK4jKPUcgU826a9XO1lV09
         Ufwv0ZymAKT7zwfHKOrxHFtsu+hCJ14YsycxSyJAQ6GSRgI056xT1WPEXTgFHkTza53X
         9ebg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767875212; x=1768480012;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5Uu81D54FMEFR1KBiicj40Orv/JnpYImdvG8u4ALBqk=;
        b=NhkPhMzpVu/DjIq9YJYrcineP/7I1mtj/2B5zEgZmQdbYuJcAvj9nc9GWuUSL/BN4L
         4OzEHJ1bVGG+m/E0HL2Fu7T8jP5DTmjdUMp0YykDYZmyRPqzegw1hdnk7VlFb+TdRiOo
         j5fsJNjzLzdat/6NEFRuwxa55C/CXP109ErwIBiJZBrTkJuxi4n/dF/gqXE25j4JiUEB
         C0ycSKPCqV1q4YkUSxfgvygTzrSwQ8VKIYmdtPlDNPJ7roqVJLcja8QIDhjCO83UkSy1
         92edM3T8mY28EVeteB4m82kAfbv6fiYV0GbDHDaYUReZ1yjNFt6bVGZZrNEaNbPTVKwx
         DQOQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGXr9uBS3OEau6My7grvPAouz7xVQ/QkZijv1BDT8r5Ry40uekmFeRlLSzZWmtBBeuAylICluhA2TE@vger.kernel.org
X-Gm-Message-State: AOJu0YwxX6TI8ytmzMHnMq0Dh/UAKnYKMDuzXlN9I6jn19g2GqDEVBMy
	wi7Bes2pjCA43sE60JFxCUs8CV5rOyufYtewSlLazYZ6GG8BPSi0Y65siwsNKSNvqW4=
X-Gm-Gg: AY/fxX5xwm5h+dSRcru6M2SWblslujUr7Y013zYwaJiNRwC7dgeMF4/yiz7vnWuLdBY
	eLb3+VG/oJhBKELZB1KyBxjz5WmZMhuSc+NNZl/K0imArdD/Cjy4T8IlbzpA0QZTTq8aB4RIipm
	JTLGxFZQfHOL4n9JA/yrWA01p9MUF7U+jlrDVK6SXiErqk1bcbdg+GSezmpYlcQJ/WUN26PVjSf
	9ihSQFqbHJR4qm44Y05eBbk4Y3xkGJItGUifC0HbnHff0juhDthq9uKjKH6oevxNLsawxznzTGb
	T953jHT3opdbn1vzU872QkTyANNefq/fjkr/b6aBMPbc85nzBvX9EaXDGAWKYOMJ8lwkB2QqIhs
	jUZeo9DWZet+JTfOynvSmlixfXbdXFHmKZDi28gNO7+73FtCg7wXhgDbX4nY/3Xse6vxrtETeHH
	OT40bgNfl4IPWP6wQWZj715UrKQYV2lsw=
X-Google-Smtp-Source: AGHT+IGjXfsog98K9N9BmFt/146sG4w5oYOSz5QSQHD2sWVG91brHPM0hOS0kYWXqTMiNVr9IiT+oA==
X-Received: by 2002:a05:6a00:3003:b0:7e8:450c:61c3 with SMTP id d2e1a72fcca58-81b80ac5a0cmr5573634b3a.51.1767875212553;
        Thu, 08 Jan 2026 04:26:52 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::40df])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe991dsm7656401b3a.16.2026.01.08.04.26.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 04:26:52 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 08 Jan 2026 20:25:55 +0800
Subject: [PATCH v3 04/11] dt-bindings: interrupt-controller: add SpacemiT
 K3 IMSIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-k3-basic-dt-v3-4-ed99eb4c3ad3@riscstar.com>
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
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2

Add compatible string for SpacemiT K3 IMSIC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v3: Add Acked-by from Krzysztof.
v2: Fix the order to keep things alphabetically.
---
 Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml
index c23b5c09fdb90baccece03708f4a381084b22049..feec122bddde1f82cbd29b8f3597d6af1a16cb23 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml
@@ -48,6 +48,7 @@ properties:
     items:
       - enum:
           - qemu,imsics
+          - spacemit,k3-imsics
       - const: riscv,imsics
 
   reg:

-- 
2.43.0



Return-Path: <devicetree+bounces-255270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A96AD21BCA
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 00:19:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 18C69303C615
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 23:19:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B7633876D7;
	Wed, 14 Jan 2026 23:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="3L3Uarpv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EB4387575
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 23:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768432759; cv=none; b=VIEm79ijd4VjTjVHd3tGWVliE3egYMzLaV806LD4akF9SKeAp6oHKYRSs/OUSabWrVHExAoxFuEOFydtbDC8xqPBFMazoRcvDL/A/no9Lv/7de7XrYR3NMxd2/X4/mKwjV3qbAcMTr25f+hKN6vw3sfVDUrPE6LlBkE7OCFmmJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768432759; c=relaxed/simple;
	bh=Z0/JjbecIj4mMFn/eww29bfEtMYsLkii0TunPLdkuaI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JG5T6L8WsR5w4gKS//xRYytxxVjeBO8QFl2iNpfYx5FuDnSj7toG6Ql1Ll8aBEPtd+SDxwe4ht2UgQm6m6ghaafS7csEBqYaWlWYYzADDuMm32M13z6bYZ2D3P4sI4trmF6mN4uvjlN0Q4S0WQyF0rGfTHyB4RVZbYusgkWNIoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=3L3Uarpv; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-2a0ac29fca1so2386505ad.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:19:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768432756; x=1769037556; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nbmp2d0HgOyIl8jX1BIaQZ3qrfCn/EZHa3mK+NXd3sU=;
        b=3L3UarpvnoSE1BCkAKka2b7aUvdBkeMooO4+u+QtHXxwmnHvbVYgbzKSIbb+IAxdp8
         nhcs9SRu0SufhLwfZtRjwgFmk61McJd8l9WBe0GniszTEdtuwkztc8zOVgTDklHmdD78
         s93vKB8GzW6F1mS1gAKmBj/FlFIQtAInVtZHU88I4C3bPAPA3DQ2WL6pM2euTs2GCwvD
         6BdiYHEh3URw6UKogpHvfu3/3cJu0UuNc/eBGiy8KA78eJIFX1SzEJAylX500mfUtwfb
         YmpGTWLZVROoYHls/XqsP5IzRpwEhsaTLeMhp4JDbU4RfB8Lilj023qni0sQWO4opkvI
         XTwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768432756; x=1769037556;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Nbmp2d0HgOyIl8jX1BIaQZ3qrfCn/EZHa3mK+NXd3sU=;
        b=easuHNE31Kqu0+nrWQD4vBW0acXVCtq/m7U20XMO6jeaLsfC7jhJ6LnzgHYxgz7T7b
         AZNzkp3/G84vUL4kv/dvIhGm0z4wtA6VPnpzJ1EwP0QVH0MizS4Nl239or6G0hl14RFT
         Cvcica1Dm0VSLSnNGfhFLvTQrPuduI5w26YdKHxlivZS78QCu/aJwxW1Wu2pLs2VxGO+
         A6NqnMxyGceh6xhMfQyOoSxhsOKmIGRHeK4EqKp310NNHUc5IxZY8FQUxBVfSIF+mBKd
         envrANmNwW1q28hHwAT87xauHzJsjnrHG1l91HMqbfPKoj160qtOXvpwtV7f+eC40Q3X
         pTeA==
X-Forwarded-Encrypted: i=1; AJvYcCUC60JyzZKZvBJDy9q7vReZYfo/VJCYmg75iAe72sS3O6wykEuWRjK6dyuaGeLsodIiw5jWQqKN/CFf@vger.kernel.org
X-Gm-Message-State: AOJu0YwAwCjIjZrvByOyihS+dz4XE3QuOPtyPGia5QEEDJ2ZCID8cnRS
	DjQh4Wz2wQc2Q/5wjjK2bhGxvOos5zDB8XNRBPmZnRrt7wNoxGfO8ppFRyEu88FpjFQ=
X-Gm-Gg: AY/fxX7CW/Wdf+Cqs1W2yTWJN4cjBVy7cDum5IstzyKlA6mOSiejeeT/DdD/eQvCaDa
	yXsdkR+yslKusVWbc3pHkZhUgofrFX36Cb/XRnopMLnSQyAwldIAUUYQJqwSsP7DhTAKyDZ00Bt
	GJ7yfYc9UZnI3VNl7/wrhkaVuwJGyVzQy4TVPj+PV7sF2+RqU9dfBzewzGD6DTZY2UzI4KJQQyc
	IqN8mqW/ozpB4GKp3oT3q+86YGY5T2iR2/sP5iEQdJELVmf3fpRIWzXZH14vVEO7ItusRaYtLau
	NluH7j/ysrGuRyAx9RByjBkK+k/DJI1gDtcy2w9XZQ4bd9orxm+te0vRhPskSvRqxk0nGzdw51h
	lvZWzO6oqGd+5XaDXsMwALm2Qou2f73jpcOiJJTQSGcCQ66iHL5h0yKXtiSSN9ilDmylDiGVHe0
	k5/v/f6NQQSvkUKfUc0EQFX321Dvg4rCVtY+LlJBPhfbzEC28AP52XKvzpxAHkpvqT
X-Received: by 2002:a17:903:3bad:b0:295:3584:1bbd with SMTP id d9443c01a7336-2a599e8edb4mr40339635ad.41.1768432756448;
        Wed, 14 Jan 2026 15:19:16 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cb2d6csm238591755ad.64.2026.01.14.15.19.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 15:19:16 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 15 Jan 2026 07:18:57 +0800
Subject: [PATCH v2 1/4] Documentation: riscv: uabi: Clarify ISA spec
 version for canonical order
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-adding-b-dtsi-v2-1-254dd61cf947@riscstar.com>
References: <20260115-adding-b-dtsi-v2-0-254dd61cf947@riscstar.com>
In-Reply-To: <20260115-adding-b-dtsi-v2-0-254dd61cf947@riscstar.com>
To: Jonathan Corbet <corbet@lwn.net>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Conor Dooley <conor.dooley@microchip.com>, 
 Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
 Yixun Lan <dlan@gentoo.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Junhui Liu <junhui.liu@pigmoral.tech>, linux-doc@vger.kernel.org, 
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, sophgo@lists.linux.dev, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.3

Specify that chapter 27 refers to version 20191213 of the RISC-V ISA
Unprivileged Architecture. The chapter numbering differs across
specification versions - for example, in version 20250508, the ISA
Extension Naming Conventions is chapter 36, not chapter 27.

Historical versions of the RISC-V specification can be found via Link [1].

Acked-by: Paul Walmsley <pjw@kernel.org>
Link: https://riscv.org/specifications/ratified/ [1]
Fixes: f07b2b3f9d47 ("Documentation: riscv: add a section about ISA string ordering in /proc/cpuinfo")
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v2: Add Acked-by from Paul.
---
 Documentation/arch/riscv/uabi.rst | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/arch/riscv/uabi.rst b/Documentation/arch/riscv/uabi.rst
index 243e40062e34..0c5299e00762 100644
--- a/Documentation/arch/riscv/uabi.rst
+++ b/Documentation/arch/riscv/uabi.rst
@@ -7,7 +7,9 @@ ISA string ordering in /proc/cpuinfo
 ------------------------------------
 
 The canonical order of ISA extension names in the ISA string is defined in
-chapter 27 of the unprivileged specification.
+Chapter 27 of the RISC-V Instruction Set Manual Volume I Unprivileged ISA
+(Document Version 20191213).
+
 The specification uses vague wording, such as should, when it comes to ordering,
 so for our purposes the following rules apply:
 

-- 
2.43.0



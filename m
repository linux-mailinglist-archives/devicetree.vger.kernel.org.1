Return-Path: <devicetree+bounces-253446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 416E2D0CF7C
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 06:19:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C3FCF3020825
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 05:19:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8451335BDB;
	Sat, 10 Jan 2026 05:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="IW8JcpQM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6ED92E413
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 05:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768022371; cv=none; b=MVjDbCMgMhCe9l5vpS9dvmEeV8e04evp4IEWZredWxdJPwTo2kSsm+MQCLOEY5hCdCAGr42KIG/iuE5l6Jsk6oNBEbhqUAERQRupFhGwqWwLlarNNFSVXogB3FIShocbqToaOR1ISstEY00nA7f1LI/a9BGD/VZZ9LtX8RGk9HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768022371; c=relaxed/simple;
	bh=II8WFpH5JkBA2vO5Ewa8JbzAofV200Cwmh6BSNiyENw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aflgnl9GfSMpTERdj6lN1gAtywwXP+6d4UV2kbnBgfRkwuDnJsALKnWktknohdQmtHxpUGnC6r/7/2MhtEQiCmQ0igCwbLba8CZzgd3Zh4fIjfZqlEeUFopBmJvTeNEg7luXquXI89bVt5XzHbnXeSTwcMltx92FYlgxlUn7dgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=IW8JcpQM; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2a09a3bd9c5so33602335ad.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 21:19:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768022368; x=1768627168; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z4Geuz70LTMH+K1+IqxpgAgsSYEP1GMgnx7rbwvE2Nc=;
        b=IW8JcpQMMAUhn+fF5meae29x54qupHzZi+j1JMnvaJKB5IKfhr5B0quG4P8TONZpmd
         8E7FF8i5yfO9reEilxiJzwSDjPe+DSkjh2xKLtwfZnhbWai/QycHjisukQiEwmtwkuwB
         +8gq7pyPSy+nUtxty2yBChrZVB/9b9K9DvxjU41ssprbhcFbvL6KvO1DkYyiZujTSVaR
         71nup9U482oXXom7ppdIycJVJer4Ihsu0BahT9OzbM+zP+MDAfqTkLxrfjrbKv5LIrmA
         feazvNhLdfR2xNHIpUWsQVWE95RdDQ4fGIyvzQUoXeT9Y+X160mxFqMtm/w0VXDud/Js
         bq3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768022368; x=1768627168;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z4Geuz70LTMH+K1+IqxpgAgsSYEP1GMgnx7rbwvE2Nc=;
        b=Jt/THeVglJN0zmbyhVoe5VzBgZzopTcBUp8Q15yiPf0UYSE7WegobKVYSk+1TBNSbI
         BHXd/hMWBACGRzXFHhMcRrrt9j3JHr1ieBDqQ79D8Yv3q5oieS3BOU6UDw8uyhsCrc6f
         f7h367/F/W2LhgJX7vgwjKX0rwvg3x78hLgSr4o+NxVv66zvQS0dlYiza9L0V06y3fCf
         o7TDjzSAZ9Bf8vUPMndO4UEiX8aNtytAafyY7EgwJcXvpohOJW+0o3nDDbqCV0rG//Mx
         q/iV4/lth/RDpTq3CQiTFP2APgoqPyDy/UU2Npi4gXZCrUfbuR/zxISChM6eau2Rs7YZ
         +g4w==
X-Forwarded-Encrypted: i=1; AJvYcCWoYDpwVzajueew0AnGwDVOKZqFupp2IaiQ5L28VnPTaAFQuexLh6Pq9XjA9jq8uVWkvHnx7D1feXGN@vger.kernel.org
X-Gm-Message-State: AOJu0YzLz5dsrsDctt9iuDP7cC3TUb6yk/0zdy8OwFkQYtkgfUsaUr9G
	kcWGbM7rjkCSv/BrqoYbxIR+kORllbueE9AIyr+GHqmLjOL0zwEqZBleTwfDEgEagSQ=
X-Gm-Gg: AY/fxX4144WVSGM1QNzViOreFFMVxwjde7Bb629LuWFuJHupH8eQa7/AHGcyUoP0fqk
	fyVXwwz+R6bznQ6RXKotpN8UVloyusALk1tbPcHZhQBgym9fSjkF+lxxSIu5VVHbgCA2PNdhRKV
	iOwoEihYb2L7ES7IyGNmTuFzO2qtFIbNz1X0687doYTyv/DhvlkZpOMnWshdygCUqd+0ZorB2in
	Ff9iuyGhc8WW3Q65kt4kZAClNJlFKM9cYjICp17yTTXZ7DbjejPPbrl3h6KvjtVAkxJNO57eibP
	alHbj2Peuq+3F/8+gVHzZCt5cQlYonhaXjjW9sEJ61ghFzcgstgxbwvOM93tikrtryH0rCacA2I
	ob91SB/e7wkfDZMix7vZT4W6VR923awZnrS6TtcTKwQj3eIIqk4NiOy4efPwfWber9URf1HsQxa
	yvnOU7af2ZgDTNjtE40NM3XBT7iq7zUooQl5OCsDoc6abJMUK3bvlM2g==
X-Google-Smtp-Source: AGHT+IEhV3ebl9s1TopC0pjYDvYSTyDIROwqkU+RDAEMZaVwRS5ET19VZ04pbXXlgHjjsJSNiSZYpA==
X-Received: by 2002:a17:902:d58e:b0:295:1e50:e7cb with SMTP id d9443c01a7336-2a3ee444aa2mr109871225ad.23.1768022368123;
        Fri, 09 Jan 2026 21:19:28 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.108])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc88cdsm118208265ad.73.2026.01.09.21.19.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 21:19:27 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Sat, 10 Jan 2026 13:18:15 +0800
Subject: [PATCH v4 03/11] dt-bindings: interrupt-controller: add SpacemiT
 K3 APLIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260110-k3-basic-dt-v4-3-d492f3a30ffa@riscstar.com>
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
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3

Add compatible string for SpacemiT K3 APLIC.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v4: No change.
v3: No change.
v2: Add Conor's Acked-by.
---
 Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
index bef00521d5da..0718071444d2 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
@@ -28,6 +28,7 @@ properties:
     items:
       - enum:
           - qemu,aplic
+          - spacemit,k3-aplic
       - const: riscv,aplic
 
   reg:

-- 
2.43.0



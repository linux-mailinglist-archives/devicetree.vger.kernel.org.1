Return-Path: <devicetree+bounces-255397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDD9D22AD2
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:57:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 62E47307B3A8
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 06:52:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 040972FD7B1;
	Thu, 15 Jan 2026 06:52:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="mnaiWYFR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9EB12FD7D5
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 06:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768459967; cv=none; b=H/grQ/3tKrTIH89aYkp+dbUR6+Ac0LE0oyOt51s7zxQkWsiEnWKzOFGGvoy3i90+zmPquIEppsFnNlmW7wuJtAim0SczGLNorz0Eg91pkEeEkqd/h7E6cTffAQk21zZ6qL1RRlazKyIFrNKHV6VDxYrP8+Drrme4UkStyMYqTyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768459967; c=relaxed/simple;
	bh=7GsKL/0cK9MpJKy0wiy9gpBRnMF//wYNkY0xTML1hsk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OOB1XRFh5IwwsikHZqTJy6VUSAMo9kG8pI78TI637AM6m4MmjeOewLhCSJC49Ykco/ktz7Rfk3Ag20V8ABqnooetO/zPMCpM3NDiTLvJ1ibISoeo23skbqF1sIS26vqqk1R0+r18sKk2V3bMCzlCKB+IBs1bFlD/3FJSF85C3j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=mnaiWYFR; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-29f102b013fso6662275ad.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 22:52:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768459963; x=1769064763; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nBO7qrwPmz8yCkOE9w4XOKMChGOOJNh4q0wHZ0CHZEQ=;
        b=mnaiWYFR5AWzZiaV7YcEpIiPtKAhnIq06lIfd3s3RQBUXoxZH2pq65ZOIMp/WSuOfD
         BPydhPBK2Lj3+sM2cOdnLLX3mZcgIMrmX+UuL8SZQDY9yGP74N2e7KPgDnN6QD+hNWQg
         Y+8WOTbsCfp51bGR1NhFEJ4fGMP258Jd4lq5k6nw9xTxlaf2LzCLq47Md3UfGKvB7kVm
         NS3fVAnpOfjHw7MJ36sAZTwTWgv7yIZPiTJ/UfPjB7CEatNKCiz+oiltpWBxhuw1o4qq
         B/R7TP0ZMfafuYgxCXOIgT2S9bm971DO3RLBxGPH5Ss7LxjyeA61PEqgj26TK9R1pXVm
         6cJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768459963; x=1769064763;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nBO7qrwPmz8yCkOE9w4XOKMChGOOJNh4q0wHZ0CHZEQ=;
        b=vTBERvkuNabvZ6iZGoevAvJ6iqS+Vl4WfmeKfb9uzchaZB+zzAC5wK+g9WlXz+bxBP
         XQGk+u3hcdDdhODA1gpc7cu3k/82/ehIyKBWj1k6g5lQhmlm4w9sp4gn80IKKm2QbTP9
         JXd/Opr2P3izWnagoIOGHwXjDxcw1QVxjGbO54wyHb5N9QDkOMPM8Wo1lwzLSfl13vBk
         lv/3GcwSjwldhMpg8J2/mgtNUbFN1R3wZeUo/GzzffYwjA2TkFp0H24NbtM3OX+NXUmm
         YawzOK4h3PirZmWT8L/ISsedpgcgRh6OIr35N4qWlbN/eKvD4rYkYfIXbUGCTgShP5tj
         5HjA==
X-Forwarded-Encrypted: i=1; AJvYcCVaA3070Dcf+2tcT64sbd02yi+pb4hKdQvhFD/L5SWMrCguiAvAXgzonUeJnyEkiVO+Ifr3CpE9Ms37@vger.kernel.org
X-Gm-Message-State: AOJu0YyCh7tFOgYanIpKDdJct6NFLQfIOZ7kLaglTme7bPUZ2dzQuwer
	0xTz6+2fAukc/csjaNEhlYPL27gBZkhJQtqhP1Z6PkCGi5gG4u31pY5G/dHdr7Lt83k=
X-Gm-Gg: AY/fxX4OkRaZi/ZHNuX26RY9Jr/tTeO/+e2Axb5qbRVy63NsmyLbIDoH9Z0Wyh+4lNV
	SqPcJriuUluAWeccc/lMVC/iidlTC6CNkTKnZ2Kx4j0FxBlzY+IVo7N69IUV7R8ypoKylIEBp7U
	PHarum+DHZdZQQjK5d5Ri6UApfHLROcjdaTXr5s9iB6oX1CpgddqkcT2MBIRPaTWbM9LjBTTeY8
	7p6I/YxEitmYH7hr9YXG76NvBrByI5LICZHHb80FY9BKy1DBTlDWyffElgyXZj7y3LUed7nDjIE
	jQYMQbj3vN5Vt7WQmwzZSNDhdsAH77HcPEusoiVIN7oNw5EzdTh2WSN0o32zneq4Y8PnX5DY8wb
	xg9k/YCVISrnhToHnZAKaadZ7ZBwpl8OWsMVNd9TiY6IlSDlaNL03y7WM8pIORvongg25TsgH5w
	M1TJqksDNMUXLwUpcdwN6+t4kNV+QBtpGvL+cMQMzOWN4/x7vaokVd5gqparXndScZ
X-Received: by 2002:a17:902:cf04:b0:2a0:dd66:d813 with SMTP id d9443c01a7336-2a599e5f8bamr55517385ad.55.1768459963033;
        Wed, 14 Jan 2026 22:52:43 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e7a3c6fdsm235081015ad.15.2026.01.14.22.52.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 22:52:42 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 15 Jan 2026 14:51:43 +0800
Subject: [PATCH v5 4/7] dt-bindings: interrupt-controller: add SpacemiT K3
 IMSIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-k3-basic-dt-v5-4-6990ac9f4308@riscstar.com>
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
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3

Add compatible string for SpacemiT K3 IMSIC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v5: No change.
v4: No change.
v3: Add Acked-by from Krzysztof.
v2: Fix the order to keep things alphabetically.
---
 Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml
index c23b5c09fdb9..feec122bddde 100644
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



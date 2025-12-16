Return-Path: <devicetree+bounces-247042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95252CC34FE
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:45:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ABE9330D5852
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 13:39:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 007A73B7618;
	Tue, 16 Dec 2025 13:33:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="NSr80pkA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD3E3B7614
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:33:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765891985; cv=none; b=gq/2JcxLydSiV/pVBlnGo393XkWW8Ap+WthXtSDQCa0k8hjixf6oPJfYl7gDPA3aswMJGY96n4CYVFkiwBXwJQoj9nS1aujHYMMAOL+VCjxtGY2sUifXc5AR+drONwTTnJF8wJAM3rlJMAAsOQi1NvQAPOtV/dJbb4Juvzzocmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765891985; c=relaxed/simple;
	bh=hMk7e9sDIbndU8jtxho9DAKUxyuGQV2QeCg6OF24fgw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nIH9WLLbkpZ27ZKEh6Sus4Qwo8Sjq8vssjbBp8s/sORjf83njOsRpWOCFFI7PU9fzUmPKvOOtWtd0Dm8QSew5tjyOKWLGosNOLJk0uU4PppulaUSCCCa+L78f7A9BQwC0B6zjx5GosTlaVQcv84a6Bk0UqDHKyev68qmSbRzJ6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=NSr80pkA; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-29f102b013fso56226825ad.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 05:33:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1765891984; x=1766496784; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vwieFoqD7GSHNJIXxDJ7bzO+eNbv0m3QCXE/uSRPY3I=;
        b=NSr80pkAcHh7TAS5rc2DOjOaZ69BMfXSgRw42fReKUwuJ8J9t61HmrPEtd8ADtJY37
         4h9mloUqscTsZvIzk3lK7JB/U1VK8V9mMI696M2XGt0xdrYUDg1rfrVcq06TjrMbtJq1
         Kr1QyaNnX5TBK0B7pqlKeW1JBmBGnEK7zgXNaKFEjWHbQzKw05wnstb0aTcGmRTt5rqg
         4foTz46NBT6wvB08V3H8SHIegFgh/bOZs2DX1I7uWJAPmIqM0cKDrm3GHb9foNIpslh4
         OHURkslMTTYxEYq2/DX4Yqb09nRy3gQY6KapRjb9p5GLHCLoFGalv+On5mnBxgISlidA
         6YoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765891984; x=1766496784;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vwieFoqD7GSHNJIXxDJ7bzO+eNbv0m3QCXE/uSRPY3I=;
        b=NEfJrMF1MqK4uTndBkDTTCT79/4A9YE2njmbzkHeQ6yMHe714qbcf2HbghWnMDQWLU
         Fb27K3FL3D6Xq+yLKD/uRia8wWWfeNwiZksu+NkvcoQUKkouRTRLrK5xTFGfGVxP5xEt
         /wgKfKCKqXSbGZ8B5RvOn6HuuxP391SWlr7pdMUwtlIn1Gd1LP4fs2zermjBjKGMkDxX
         /VoqtYnQZQhUjKVxf4v3SG51TJf1/6/H3DTSwj01fwfOTuYCB6+qrWOpLO7mb8/O52R1
         XxjaYG/9J4c/ju5TlAxpu5Wof4QVSVu5/fvlLW4jbyVxQ6ESCYIG4eK3+qzY2DW2dQSw
         G0HQ==
X-Forwarded-Encrypted: i=1; AJvYcCVK5LHnnyH5+DASU/Ebs7TKeOn6Jxw5TA87kFuJDD0xE7uz3DmiTtQWC+pMYGRAJAxErVTKYW+L989J@vger.kernel.org
X-Gm-Message-State: AOJu0YxddmOJ2jeMX+7hjXHH0EotxfY1JN7+fostloz3ZPbjRDc2dAnq
	0aiRShdaGIy0jKd1vYgHGRY9Xd1VdkH+3uewW2llUTXIJX3wSI9KFclj9SWWDZe7pxA=
X-Gm-Gg: AY/fxX6dr3tURmZ1xtUUkg5/vJucyQ+ptW4H1kTJFZMlfkpwtlxH/rQx9FteG/Nojxv
	/Zlr55RG+b7pobBP/X5XWMQvGjA55MvQeYusLYo0tf7C8y3feF3Cj7oq2mvDvegziHHTGDkkpsl
	k4C3Uh4y+ALc1qitUAYnhPafgNSeZDO4NWEYBLGg5U7doddBP3w5B0ptOErIXlkFSqhn+2Xntgq
	m8Hej26gLd948tTTAh5TtlSX6wAIhF+srysbKY02zLcHL06AYPxxTf3JnsuBxNw40WZhW7GhZHs
	PUPQHBwreiJUfbULrtjGNmJUC2uEgpkr/ybFXZCdQz9G8y3Vdi6p4WeqWEwfZGiG63vCJ+En06V
	27fF5GidSFcG7VnsU+wIdSIROjV6kHZ8ubQbMXC0zJTry4UzSchtJjjRciRW2WBHbU+iygTdDO1
	bmcINQf48NICVW+IvQBC01Q8Lw+KDqhL0=
X-Google-Smtp-Source: AGHT+IGHe5/9SaW81jyDKkQ0OPmaYehcP7QMhJzz2ZDa3a+RaUWBBtXL3A4tMbxbrOk89EkkF+fCWQ==
X-Received: by 2002:a17:903:1a2b:b0:297:e3c4:b2b0 with SMTP id d9443c01a7336-29f244aa9e9mr153671045ad.54.1765891983667;
        Tue, 16 Dec 2025 05:33:03 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::4029])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a14625add8sm15829525ad.61.2025.12.16.05.32.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 05:33:03 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Tue, 16 Dec 2025 21:32:25 +0800
Subject: [PATCH 1/8] dt-bindings: riscv: add SpacemiT X100 CPU compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251216-k3-basic-dt-v1-1-a0d256c9dc92@riscstar.com>
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

Add compatible string for the SpacemiT X100 (RVA23 compliant) core.

Link: https://www.spacemit.com/en/spacemit-x100-core/

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index d733c0bd534fb63ed7c0eada97c42832431f1fc1..cce87092dc7749f49066154d9a256af6c7b6c19f 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -62,6 +62,7 @@ properties:
               - sifive,u74
               - sifive,u74-mc
               - spacemit,x60
+              - spacemit,x100
               - thead,c906
               - thead,c908
               - thead,c910

-- 
2.43.0



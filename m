Return-Path: <devicetree+bounces-247044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DB257CC366F
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 15:03:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 00FAD3068CEB
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 13:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D09F33644C8;
	Tue, 16 Dec 2025 13:33:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="1r6wOLeB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3C23624CF
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765892009; cv=none; b=PCY3GmaRqpZZZShZe3aDA5cz3PMLdRa7ShZRQ6L5jiDg4pT/59XQgii/eMi5X91efSwOMdQ03t8GD7UNv/8dBQaYOzqF7I9CybOj6LSf3lEMJN4Twsl2OS3JyMFm9YzcSKuiZerH8u0QlDR+e6CqJx2i6g04A2Lz1Ygr2/M53oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765892009; c=relaxed/simple;
	bh=bEvkKfpGvLRG5xChRyMfGRM8paMP5NXrDcBPWFsx3Fk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WCuZWSCkc5J3SYNqwE1AZxfcd+C86rk8mthOYb9enxapwtMBHdFcCek0e6CFBeix2btSVYioFeZeTpdVqJ/HVBZb9ImK2ryfRNVFLeE2k8reRSG96UBj1irZMZWJL3BO3MzUoxefgVBqcrLuE0DmDl+wFoyGkIC0L1CWJqSZkr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=1r6wOLeB; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2a07fac8aa1so34336145ad.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 05:33:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1765892007; x=1766496807; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rs9VW0IfWPzrbiE9L+0r4Qf5TkuQRPp65nyjMqVUyYo=;
        b=1r6wOLeBe5yysMuQcx/NlvRvIMB/dehGUb/amrciCFtdrxB6yHl8Cof+7bKm6X/7TM
         z1XZFh7/yBbE2jUk6TA2MMuFHS0XDpP7m3Xmf0fUOdcaLN/evWvQwzPaF6NowWGkSb+4
         SXsp8hzmt75iF95wf4IQtxIgrb7Oe+eJmzrnwgI45GvCNGaU0922RM84On87L7Eu3Z0K
         fwUItlrepnrXOl1mMAkKdCtcIVLBvebgvoQ1cy4BzxCqpFDBkaXbltB0jE3yju9Gn6Ie
         lCcJIDFGpPi/M7fAWeWgFk3/bUEWikMiIS5EORtmcaf5Ns161faYhQUDxNhhcq44MFyU
         LI4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765892007; x=1766496807;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rs9VW0IfWPzrbiE9L+0r4Qf5TkuQRPp65nyjMqVUyYo=;
        b=i/YrogMuKIr9DeXPjG+ssFnIOYwo6mR3h1rFJes82RZ295EqIAfpuIMylenFoB+JP8
         T1K8a4l6Pmej8miFWPDDX7QINcO9gWEcEyOVi720/VAWU6i91MW/6sFW8t6OlmOAeHHW
         acVnLKB8CHKh5xh/W/wOt6h+s2NnfHXb5jnGW3XR3XNB+p04sXkp/KZ9YAGcSZIGhf57
         2axdY3/H0BUhOtR2RSas/8vJCpByyNW/jWd97aRfP19J57Mu2vY+Ss1FCF2o/M3iB+1L
         6+yR+2y/S5y9U7XojdozOtBT2ICbQpCSUjjHtnRIS9/bF6BB5cTb2vRhvqTX449Gd8b1
         MK8w==
X-Forwarded-Encrypted: i=1; AJvYcCUHR0Uv9epGVrkXMLg6QCSOsWLYjXRJjnXVebg1GVELqNPBx1Z4F8/sfhr1iv444/CrC94+dz7fH+yW@vger.kernel.org
X-Gm-Message-State: AOJu0Yxc9KeJ++GjtvgTHcyLglb6rLtivU1mN2rVqBklewKWL4OGS6eP
	YZQaoFDyt8/hM4sfbta/3vrBw5Z9GdiClFJC/J/M8ZqkHNHIr0+w+bcRWKb1AHdYD9Y=
X-Gm-Gg: AY/fxX7NLS/nbQkkFXWlQh4aMUGWf6bPPyUyc9ZVeOtrfNIsUZ/EUuf8GZvcJgOKKTI
	sUbkoOOQE+8nqm/+ldXYYVaFBG5KykcW9+hUvFKwefHksFIqQ05euJgp1ZJqRiwhDRLuZ5KyUtx
	KZPse2yJjFr5O4uOW1qSD011OuMs9/NI+L9unMYJGp9/w0Cv+/SR558D+XmEcbUGGg8QDhaZpIA
	sDgfIynUYkz8HAcTrxGRZzL84u1zYuWeAH5or4MkNG3GurN6ZBZkTN8FposS2DvNCmZlN7Yrfwk
	NdZzPjln/eKYngjoKCremvI1KwLhyFiBg5/9I3L0b6w/Nd71KqqPcLimdUpIx11STdR1ml7cwkM
	QCr6yspC3WKEgLcEY8XbgC9n0ib6hyXmh42dld+GJ9YU31DsCu/Vv9X/QB8q3eykU4kBg/Hg1nh
	mu8c+OVy0QBRB8MQxQhHokXT0VuCqwOuo=
X-Google-Smtp-Source: AGHT+IHYO6VckBIE/NKNbVNQkjVqL/H4F2phLWFUlelSLlWr6JEkHmBJoAON7Tz83USpUb8q2a1UVA==
X-Received: by 2002:a17:902:f686:b0:2a0:abba:a2f4 with SMTP id d9443c01a7336-2a0abbaa7aamr118026675ad.2.1765892007376;
        Tue, 16 Dec 2025 05:33:27 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::4029])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a14625add8sm15829525ad.61.2025.12.16.05.33.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 05:33:27 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Tue, 16 Dec 2025 21:32:27 +0800
Subject: [PATCH 3/8] dt-bindings: interrupt-controller: add SpacemiT K3
 APLIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251216-k3-basic-dt-v1-3-a0d256c9dc92@riscstar.com>
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

Add compatible string for SpacemiT K3 APLIC.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
index bef00521d5dacc002d24c50843ebe6380a7d5524..0718071444d29fbfa36283fc9666e8cecd6f77e7 100644
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



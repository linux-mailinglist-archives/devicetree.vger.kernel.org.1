Return-Path: <devicetree+bounces-247045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B71C0CC362E
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 15:01:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3AE90305699D
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 13:58:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49CEC3BDA76;
	Tue, 16 Dec 2025 13:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="XeVt/2aB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72CB13BCC4F
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765892020; cv=none; b=VUbsAGiZCt2nStf0nqFEpMC9OEvjp2J9vcP7EEoO6pJPxgfsMfnfNgZIneDyl411tV49HWaDdYIPjiStZKug4WGm/kG+Mmw/4HeG7oXAOmLQD6uJ5kFWP/Pmdgu1JipOW/Ho5dfKC7i5nSGufwu64dYqMTh+EFaN5foBLr0yjiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765892020; c=relaxed/simple;
	bh=SWtgk3actb41mMKlJF1tMZCCUTgeUvVgO8N077NFFiY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BATKw4gRWyM5hUrQymTIZ+EVcyJVfTx/H7K8zjYyFchHdhacg+STdn55b9wQUVBxk7cu5rU941z+tJ5MBx4NONn8qIBljr0i1bK4RHVH5EL5RTDevwlEg+Rk59/Tvv+quxer52u+drpQAJsVEyoIFYCLtG3vm3302FTSTjoRfog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=XeVt/2aB; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2a09d981507so21895125ad.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 05:33:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1765892018; x=1766496818; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HUW1fhKJDbOe4HKSh/QeNnUAlu3BR5pVkgdl5b0ZaBI=;
        b=XeVt/2aBDZG/WZmTHGoX/LG6pjN+Lhxgd8xIM/D72yUsw8AMf7DB63zDzrFObu51zr
         ViOwMOoUQM80bjadjDMZ8+5uU4GKBQt73R3C6eYtmVfJjEkIMf4jJFmbR6JadFM8ZCn1
         z3JX7QI1u9YoFist3dGeNbV+JDWOX+BOPyWYkh+diftPTP1lzOGfXC2XHrMXMMGwV9Sn
         NmMbSirW+Q599hTHuiNR9l2PTk8x4x4eQJcBf4fgo67NtgqKBp/PvBX+awPaeTQXUfN9
         O3KcFYNnL09iNdF4u0eVKTCY1zhcMjZo/J+ZGaQpwtSCw8qDT1vHduyVlJqRLmkkbmSR
         Qupw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765892018; x=1766496818;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HUW1fhKJDbOe4HKSh/QeNnUAlu3BR5pVkgdl5b0ZaBI=;
        b=SU4SrJBCvnP1frSG1VfFkY+qppZ/mBlkZKfxS5g36rbqaFVJlNH0G5PWU0KnOGG0wO
         hu4+i8kTjcRLeRt3TZwQ2wfGy2LeSjKzfSDu9/syu6u47o+I08bjAKNCEsXFo1QllBBG
         C5UeBufvD00vPPKXWkjZ4UWk7GeXShbkQBotHcMhdlMko6VcAcCy/ZlqUZ0MT7lm6GG/
         HWVae65Za5a85vCLvM2JMznD0CWLkhjVXJJeF3XgXCOvaM/eOO1zSrfLt2hb+yxteymO
         D3XO1W7phCn7oMwOuhkKrU+ZxRBYPTKFNR0qZURpRj81F8qhTZRu4LsR+jiWw68O3ShO
         slvQ==
X-Forwarded-Encrypted: i=1; AJvYcCWSGJTRKatPxPKJbrU6OfWju9GNR/B78HktDYu7OTuVW8GIcRzPcavLHlBkzYntrsGhA51XKaMsiahx@vger.kernel.org
X-Gm-Message-State: AOJu0Ywv31JEF7pk//Zr8eryvNFjBzR9LF0IwWZodI6OTZj4uhzc7fni
	pRZgyt59zP6KVPCY2/Hrb8xELsEES939xdplhbTbB+oIQagFJOb3vg4aQ5LWVe4oyHU=
X-Gm-Gg: AY/fxX4hfDUzpeoAYvT5nX1c1UoLW/iG1Bu0SbOVGWYunJYE+5yJAYpt0WbLkkHAZfI
	9GB1mxohgtbDpimxA/uDu2aiLtqhNsT9miYHaGLiUGdRkW91fVhENeMOIpmvO4EDybj+7FfkH80
	Pny4tNsIW9uEW9ml+eFMCXI4V58vQdQcntp27ebATMqPYTQhHwVrXmZmhww2b+4qIU/+I4hCdeQ
	wzGVANDIlUf9ZqUS5KrSoUuKLBE6gJoco59IwlAmNKKAG9IQ7qyRMKC1uqoFi+PImw2PTQ30B/Z
	d5h2tDCVCXS0iSBdwCGNDjHpdL4VlBFlZNELlb3KcAHL1yxB9NKUraqwMU7VIAwgT8kZV1Qnwkk
	qvVEshrPrCNqNH400OZW94EXPJrkoN0JboOFs8rfZrx1fXsjrQV7p+TMHRonW8hyJPCi1gXVkWq
	oKT6S0on1ZHpHQGPhi1XrPeYHKYqUVrco=
X-Google-Smtp-Source: AGHT+IET9GhiW4RGL3w1Cy73SGb3pcHepT5GGV/njIgZC7quLxJZByYdERwcXy6lYO6BkLM3PBzhsQ==
X-Received: by 2002:a17:902:e84c:b0:2a0:971b:151 with SMTP id d9443c01a7336-2a0971b059bmr130452205ad.2.1765892017756;
        Tue, 16 Dec 2025 05:33:37 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::4029])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a14625add8sm15829525ad.61.2025.12.16.05.33.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 05:33:37 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Tue, 16 Dec 2025 21:32:28 +0800
Subject: [PATCH 4/8] dt-bindings: interrupt-controller: add SpacemiT K3
 IMSIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251216-k3-basic-dt-v1-4-a0d256c9dc92@riscstar.com>
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

Add compatible string for SpacemiT K3 IMSIC.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml
index c23b5c09fdb90baccece03708f4a381084b22049..152eff7335dd8457bf01d02497b7080f2a02ab65 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml
@@ -47,6 +47,7 @@ properties:
   compatible:
     items:
       - enum:
+          - spacemit,k3-imsics
           - qemu,imsics
       - const: riscv,imsics
 

-- 
2.43.0



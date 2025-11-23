Return-Path: <devicetree+bounces-241469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F90C7E926
	for <lists+devicetree@lfdr.de>; Sun, 23 Nov 2025 23:58:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A21453A90BA
	for <lists+devicetree@lfdr.de>; Sun, 23 Nov 2025 22:55:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C39DB279DAD;
	Sun, 23 Nov 2025 22:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b="Rsr+d2xO"
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5EBD274B2E;
	Sun, 23 Nov 2025 22:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763938371; cv=none; b=l7mTJrUXqRLs8c4QgyTT8y8ldhed+SuevzpGpq5NEDyvHjn2Vw8pA29Iwvdiy2F04CbmXTG7gASSre8SLigU1X9fQhmuyx59581T5MwfxBGGBTNZ+9ppFef5cIM1/NQgZpc48rM/0WqAF/DguAputdu93lFERQZMIw+p0ZQOfwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763938371; c=relaxed/simple;
	bh=MzXdEC5e3wiYibN9jJdM56BajcM0U8LTOMn0FgwHnF0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ROoVwT0W7+m3hveAnd1MnjNLi7s3hjKwwqdq86j2fF55WU9rwC53ExbwHRYE2krL/cxTocl6tlgXB4mFcPCO1IjJ1o7dstrm/ngX1C6CxqXKB9hGlr2Kv9+huKbMGG7zxG6KjWUw8ujKNklrrFQFfFDmfHZGZer12IP5UvLIB0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b=Rsr+d2xO; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=freeshell.de;
	s=s2025; t=1763938301;
	bh=BIRwaY1UKgeXSP6eRPPWJtjYyyGPHq4tBVHneu877kk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Rsr+d2xO+GQkh5o+VlcLGeJVd8ziY8sUJN1f6HRbWFK6u6sX4dRNK81NE0Wsu7VBp
	 GH6nTzoyD4kNEDILaE650lH7VXJGUqCurzYjU+b26ibaQ3ALVR2LvwK5P0eBmmPJKK
	 kPVcrYTNbbXfH5i5KJAOaAinAaPGBQoHoU6pChfvz3/6m8Uy9x+KdI8ksqx4/CKSHB
	 zivCeItbY9eEjx7fdm2Ky15Bz8sH4LloMlvXr7pMomnAW7keOzzQ9vQrapb8e2rtEL
	 rJ865LNVvi0PIjyZOycoV9M2gWjJe5p0droduJ2NH8oFrKzYCgv2/i3Vwui4ZtXs38
	 0SbCpoHG6xIhQ==
Received: from hay.lan (unknown [IPv6:2605:59c0:2078:cf00:6ecf:39ff:fe00:8375])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id 67E25B22016C;
	Sun, 23 Nov 2025 23:51:38 +0100 (CET)
From: E Shattow <e@freeshell.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Michael Zhu <michael.zhu@starfivetech.com>,
	Drew Fustini <drew@beagleboard.org>
Cc: linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	E Shattow <e@freeshell.de>,
	Icenowy Zheng <uwu@icenowy.me>
Subject: [PATCH v3 1/2] dt-bindings: riscv: starfive: add xunlong,orangepi-rv
Date: Sun, 23 Nov 2025 14:50:44 -0800
Message-ID: <20251123225059.49665-2-e@freeshell.de>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20251123225059.49665-1-e@freeshell.de>
References: <20251123225059.49665-1-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Icenowy Zheng <uwu@icenowy.me>

Add "xunlong,orangepi-rv" as a StarFive JH7110 SoC-based board.

Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
Signed-off-by: E Shattow <e@freeshell.de>
---
 Documentation/devicetree/bindings/riscv/starfive.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/starfive.yaml b/Documentation/devicetree/bindings/riscv/starfive.yaml
index 04510341a71e..3fdeab9d8f08 100644
--- a/Documentation/devicetree/bindings/riscv/starfive.yaml
+++ b/Documentation/devicetree/bindings/riscv/starfive.yaml
@@ -33,6 +33,7 @@ properties:
               - pine64,star64
               - starfive,visionfive-2-v1.2a
               - starfive,visionfive-2-v1.3b
+              - xunlong,orangepi-rv
           - const: starfive,jh7110
 
 additionalProperties: true
-- 
2.50.0



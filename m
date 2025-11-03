Return-Path: <devicetree+bounces-234269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF50C2AC0C
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 10:34:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 808361890519
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 09:34:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAF632EACFE;
	Mon,  3 Nov 2025 09:33:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="giLfoaBn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACC52900A8
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 09:33:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762162438; cv=none; b=ptCgeI11CBk3MdBwILb5CcJMglof3HXFuwm2pelG0fyRT/0soTLwRyXHYsgfWgnDTUzwhQymE1/jv6mw3Ymx0y9Sp5iF8rkjFIi7d8czn2yYO1EF9pJ3dt/huoJNjNKPBjVIIvCV2XB1feAbU0uix7k7NkUhLhiiOWAnvrpg2/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762162438; c=relaxed/simple;
	bh=D4T4s3SNgWEGdSKy6+YGhcgGrNqzcT9NA8JLZ8xPMUo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Iu6LIp54hs+hfX29lEFny6K5gLrQsofx4FdzoBbWMbz0S2VPGdCsS+ATbd8XFWmm3a87JwM9ci6/clskmQdCXqnRsMVx05vIZDGostghUM5/PL8GfASQvSsLV66QXObUaPGXh+YjtywPLQHnpviqNBlkO4pi4AxxVt8c1VYTork=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=giLfoaBn; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-b6329b6e3b0so4079954a12.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 01:33:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762162436; x=1762767236; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jF3tE7PvrhPTALHjWZmN+099uKS6CXrFf6F9PXA5mFA=;
        b=giLfoaBn3QvlAuOoAI4/tVlTuE8+aF8J67YlB1jURAm6U+CW9owCkDJkhKK10XalhQ
         PZPOkeN3QlUgr7+aOFHwglOhEb0lR/3GhtRLlt/pJDCRXnq61TbiLVXH5R4phtWkDs0/
         bgDQXGOZHqCuyR5EcJBfkzGBFLcnnVPAKrJPV9rEgUrqMFBo/8R/aJK2FP8Brl49zUQw
         msPwbxKTCdw8StJJvilMApUorXyJxySeqzxTD2xfBy0oqJHZa984jzqWc/KusJNWc9aA
         3zROi53m9/jB9cBWQ1PYgba84X1jIb+sgLHkL+dpsbvXIl7TDP350s7maim0OtdbDuUo
         gUOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762162436; x=1762767236;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jF3tE7PvrhPTALHjWZmN+099uKS6CXrFf6F9PXA5mFA=;
        b=tXJnMmpDYpiqgIoxc/BFBTgM9TZA3HZlS5rvzrkIPmtXbCx8abNMOE54vzJXOy6BxG
         NgwaQ2jHNDZgdgLCF397Qgkv2yavdW+YLQzIVzR60hwQ+kSHQlfCoTaZNosg6cbpv3GG
         vIpnhIaG42d7PO18zzennp0I8Bx1Asta8ACsq884P3KYAM57nqB5RlHJSL74G731m3Yj
         t9mhpX0U47VuFa4cO7htsKuaXda/U/FbOISvZBvuGFFWqna0aM356hsZy9Qmv8HpKjtU
         SQJjN6m5JViZz+ZA+JYn1/WvGyw7sLVesZ6jy/o5RXZ35Mn8c7BEb7ydVbqWO9W4F1tt
         vrEA==
X-Forwarded-Encrypted: i=1; AJvYcCUw46mWB/ABxsqQT2ly3I39D9GdLVXwl9cUabrWsCLZTHpDXESZpfwqcX1kG9fnSUvVugga6cgrN2Xo@vger.kernel.org
X-Gm-Message-State: AOJu0YwqcyfdlJNS7qwSQwAIWiED46iycRNOfuhW30VKRyG/3gPUxed6
	G5JS2ryXoRn9z35Oq0bqk4fGngC1bMqXhyb79jPvy9+qwg1fO0J9kWWT
X-Gm-Gg: ASbGncvaXMvWvi1ew82Tc7uufhn3MgFULGoQTRYrcxqm+8Va9uj/5dLaOMLKnN1TLNy
	YSxJ2bY7Nkmm933gQUU52oXEqT1YpW7J2JKncQydRwMtqko76oJKh0Wl5pmrNA+JQ7BFSdZkmnR
	GYBI16t5/gnWjE/Vnkal5S4FT9ECQvCFwDytk9QOPWMTkli4+6VY+2/yHx1Y7QFr+mbWVC6X4mH
	VTOCAe0AecOMDKDrrjdH/x5WJ90klGMRegnYrKvM4O2NyM3thZDB1Q9p0GV6CdmnvHnrLMnzcS5
	8LaUyo2+gGzpmHiVwqYltRzIo5jQ4bhwRKeCvUIT00iK/tfokRkH2olnBvfNlxggb9MnDhNo3t3
	xxyHpsB4KurUkw2PC1V07Axk4i4Q2/iwDSoha5RwXv6OJdv+e/jySB2ZbDwXOCZJSfJZTjMyDs/
	c0LtVC
X-Google-Smtp-Source: AGHT+IENCvGrL25P0O0Fc+MRrko1aTk7mSWYGPtk8oKD7ItaFZLfQ0P2sXgV2rrZRmkjGd+q+PpjRQ==
X-Received: by 2002:a17:902:f606:b0:295:7423:530a with SMTP id d9443c01a7336-295742355fdmr75326455ad.29.1762162436497;
        Mon, 03 Nov 2025 01:33:56 -0800 (PST)
Received: from gmail.com ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2952696ea51sm112351435ad.57.2025.11.03.01.33.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 01:33:55 -0800 (PST)
From: Peter Shen <sjg168@gmail.com>
X-Google-Original-From: Peter Shen <peter.shen@amd.com>
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Joel Stanley <joel@jms.id.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	peter.shen@amd.com
Subject: [PATCH v3 1/2] dt-bindings: arm: aspeed: Add compatible for Facebook Anacapa BMC
Date: Mon,  3 Nov 2025 17:33:19 +0800
Message-Id: <20251103093320.1392256-2-peter.shen@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251103093320.1392256-1-peter.shen@amd.com>
References: <20251103093320.1392256-1-peter.shen@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch adds the compatible string for the Facebook Anacapa BMC
which uses an Aspeed AST2600 SoC. This is required before adding
the board's device tree source file.

Signed-off-by: Peter Shen <peter.shen@amd.com>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index aedefca7cf4a..bcb874ebd9d2 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -80,6 +80,7 @@ properties:
               - aspeed,ast2600-evb
               - aspeed,ast2600-evb-a1
               - asus,x4tf-bmc
+              - facebook,anacapa-bmc
               - facebook,bletchley-bmc
               - facebook,catalina-bmc
               - facebook,clemente-bmc
-- 
2.34.1



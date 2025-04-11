Return-Path: <devicetree+bounces-165937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A98DA85E89
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 15:18:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B51EA3A5CEB
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 13:15:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78B46131E2D;
	Fri, 11 Apr 2025 13:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="ezFwS2pD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCB6354723
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 13:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744377331; cv=none; b=o1M4QaKDn72mQkboRftFIpum0Hby9sA33nMqNqUCqs3ANbB5KtLdQzFImzB7HUCSFK/CDrInEm/nNBYA1Ff9s3u155qfijapdhea6jlaPpwi5TiYqdvNHyEhI2fA2oaAazrRfDoULbE5ED77ePkp8MssXX/W09z6mrbjctHQFQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744377331; c=relaxed/simple;
	bh=1swIy7rxFEZEpzVbtoG003Ve9GvpHlafYnb4ccnIdDA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=a4+3QA+zn5OB/hyw1c1xebI3NRA6IjZ+PtLiv5HhvwGeWkM+ypiFMGZP/VvoUezcM/hQJF00O54Bus2LgVZdUKJ+atLoqAurvjLH9X/vc16QXGsZevvHuQ4//h/E84wv4NZOc3MbiVBYRxF+fJ+11qdKYGYCWG45z73GqB1BnNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=ezFwS2pD; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-227aaa82fafso15893995ad.2
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 06:15:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744377329; x=1744982129; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m/PuzfNro6+y5gilkjTT2xRfkKu3sAMB/YAOWIAOfRU=;
        b=ezFwS2pDzDzWZIZh3ySYop5umZohIo3OIWo8pbiIKCMWM97e7RM/sd5lMOAXJhMapi
         QPm4GaZ9ih4wi4wFxvizSsA/Wph/7Q/kESaUxUG23Wfl74/cVk8baBiJkFBMlCuH1rw2
         nxGQoqGmBWzB8iv7w8l7veDd6ZGwR0eXB0sJVjRF5R/IQT3jOcyc/trvyhfezx91sqaG
         F89IKrfv3A9iD8NyYXcJq7n7cS/2Vup3poDiqsu/bIZ0gCegMi+uH07KJZ/jojxRt/OD
         NFArmOFxfyPa9QBIpmpjhrTDCL8AyywWO72UbtL0az5+XSHuFYYUqlFwjVrXIfWBGA9w
         NPGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744377329; x=1744982129;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m/PuzfNro6+y5gilkjTT2xRfkKu3sAMB/YAOWIAOfRU=;
        b=QOic/5Ct1CtRAxtM4AFPNX951NPuYfw5d6qhHbJT45rDqJTkq4LzptpOJfx62STNBH
         Ag6MEaAnfmkgX9y4UctBqYOnDkfhVesFxVGeXCsDdbYH+VjBEdSnC+jJBzhHTEeoTrus
         LIGkRvMQdrXkKF2iWV7YXrL6pWmuMVojLAKlSDDIfFHj9niCiSgCrBjnwYVMrBpSm1BI
         GKnBVuTKA4I3mh1+m21Vl5/MZ+mziQPLYaXAp6j2N52AKVxyO4qGMijrXl5KP4ef6Bqw
         36sygoZFGVpnSa+7b7buU43AWO7mca3fhopVTIHPt0NHWDt9jvcXt9voJDXYIXZVQYw2
         CJww==
X-Forwarded-Encrypted: i=1; AJvYcCWKH49azb4grUcHoj9j5FQEpXP6ZO1hdDUCv5ufsSuqalUAkh8wrHywfPuBiGbl2lWEK3r4RAEUND9h@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx9MU1hxgTDls5D7vCIeMEIFmjCnLdmjLaEAwCnqnI4OM6PIIf
	pOZWW+hw1YUCLlXGZK9t5wcjxGsP3RFByEunsgB8D35nyz6TEvzXjbRZG4jbcxQ=
X-Gm-Gg: ASbGncs7ryvBS8x7Pkb9wELAHHdVg+W6kAQse9uttPXs4YxVYeL6K7pH6fup3Cuq7J4
	iWgvcPfsTwRqf6jznfXsbVKbw4o5vKITlyxnjTK0UXp+lrKSN51dBoC8f8RwmI20iFGn589Rd+g
	/wPgTbp1v/l015jlEYu7tr/+CD27YLaZXfjsnII7QQN+CHZf/1VRxB3Re5qFHZsxGfevfh4fJ4J
	uvxOltx2vLjnTGMOMbUXJBNFzcxW18gb4rtymK5kB5emBWdw2CJyEfMI4CwfUSIb8ernQfKNDkC
	qd59CXpyNJ5UEbT2aX17hSBm0L7hVUA=
X-Google-Smtp-Source: AGHT+IHitAgPlQRhs5N+Pq3jnUrMsP733j1aryRrbpuBG1bREkPzJLptIcFojxxM3RnqxYYr08nnJw==
X-Received: by 2002:a17:903:41c3:b0:223:60ce:2451 with SMTP id d9443c01a7336-22bea4adea2mr41309915ad.15.1744377329094;
        Fri, 11 Apr 2025 06:15:29 -0700 (PDT)
Received: from localhost.localdomain ([2a12:a305:4::308a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7c95cc6sm48245005ad.122.2025.04.11.06.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 06:15:28 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: ukleinek@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	dlan@gentoo.org,
	p.zabel@pengutronix.de,
	drew@pdp7.com,
	inochiama@gmail.com,
	geert+renesas@glider.be,
	heylenay@4d2.org,
	tglx@linutronix.de,
	hal.feng@starfivetech.com,
	unicorn_wang@outlook.com,
	duje.mihanovic@skole.hr
Cc: elder@riscstar.com,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev
Subject: [PATCH 3/9] dt-bindings: pwm: marvell,pxa: add support to spacemit K1
Date: Fri, 11 Apr 2025 21:14:17 +0800
Message-ID: <20250411131423.3802611-4-guodong@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250411131423.3802611-1-guodong@riscstar.com>
References: <20250411131423.3802611-1-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add "spacemit,k1-pwm" as a compatible string to support the PWM
controller on the SpacemiT K1 platform.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml b/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml
index 9640d4b627c2..1e3cabf6a89a 100644
--- a/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml
@@ -19,6 +19,7 @@ properties:
       - marvell,pxa270-pwm
       - marvell,pxa168-pwm
       - marvell,pxa910-pwm
+      - spacemit,k1-pwm
 
   reg:
     # Length should be 0x10
-- 
2.43.0



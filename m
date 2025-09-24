Return-Path: <devicetree+bounces-220733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A833EB99D49
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 14:29:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3C2AA7A3884
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 12:27:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFB033019AC;
	Wed, 24 Sep 2025 12:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jIa2HhW/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89EB22FD1B8
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 12:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758716939; cv=none; b=Uf/W4cNsYd2kQdB2nh2uhZyBCzhZTBYoIiqVUzBOxj8jIgGOWR4I0DPEzVCb4p+0lWBkPJ0gh7kLXyLzTWKPSWKcqW/KfJWlThlihngLunkxam8oi5ocvNGbV8QgoRF1LC8T6RP1YdvDiOvVZHbLdhbEbB6bZKICjZcV4pkp6ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758716939; c=relaxed/simple;
	bh=tFiVhe6+5SAbHrArHEtHiWSR8X3PeSACMPBwCd3KpFk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=N+xEZnaY2qzUenZaAznjD/nuRY+aBlKnRiOvF86VVRjRTqxYIJQGO92mGWKhG0m0xcDmsOWZ3jr+95vIc+iXzSadZPQfiXZTyPoPRhVH4Q9r6whkOKWzzzSXKm0CcgVTJCIzJoNOLvOqUQIdQL/aS6K1A0Pa57C0h/VNFHyOBtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jIa2HhW/; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-77f343231fcso1614424b3a.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 05:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758716938; x=1759321738; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=G9cki+WEYd1Fo4/29vxQI9Qu3AJnUGwvEMisLWPLAZs=;
        b=jIa2HhW/gXxgPBEjW1ako+lRK1G25QC+fQQLdezpFMmHD7Mds0jEJEaIvO7lRimV3G
         JmbuZnla8XlCX1vJOeai5k6yFPT5dVsYIJ7EXejy8EfsdsWqUDtpLZzmH/8I11uNWTfI
         iNIZY+i2LUHRVZHgHvGUvtESwsf9Y5YqD0S3ASKLr6kexZRgP67ARyBotEH50/doXYwk
         o1ZoMsORGzkP9zOApFFTBtx9kLMUCzTINghoeJWZRN8JUW9jlTguZ60IpJWNau0VrJcm
         DFLeVH38W+YhOuEcThrvFv20ujz9bGvEWRAiNJlKvx8tdG2bCGHm6J79AuP5T5spnOTy
         enRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758716938; x=1759321738;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G9cki+WEYd1Fo4/29vxQI9Qu3AJnUGwvEMisLWPLAZs=;
        b=RN84G+KpXvw59/R+7FYV9FYtBxY6bAqBeS05W7JYeKAViZfy3OM8frXFT5v3EAAL+g
         bZNSKNRdERObfYEwMquABzmsBOE++SwI3wqn1M6w7BvdyqjSda3kCb0WrpFfJIgem/RK
         XVoku9ivV08gCX5w2/+vKejl3CukkAWbJZedpRj0ei6nkqZQsB7RZ+4L/nYlNBNUgEKj
         77EClf/47YiI4siDltQIungzMIE9KTE5ny0KHg0zcTywC9MHQLt+QTOjhcwtVBTD8wH3
         s5mLf5wa6R+Gspj9FyU4fsuUjTnXDM0ld159EmfIa9BO851ByTmJy6rinFEaQ/FZw5nG
         EuGg==
X-Gm-Message-State: AOJu0YzmpmCtSvfJkl5AaSRwRKeRQwPwJmAjtYkahM84alWHxtKTaBQl
	KkC+0AHuEmo2bN5xiSkGlVG3Tgr+Wn8jaAuoSrRZow4WefEF5tVEPydA
X-Gm-Gg: ASbGncunuJ7/oIjjAhaCzFbkivyUIabfLfigDZsVoBFkEAhQ7fHoXpHvoTbUgfLSFlM
	2yDIeZlPP4DLU1a2kwEUH4Gt0ZIm+OsYFVENIm/Xw960wj1zEoVIw182Rsj11QklXBk9EsmEzim
	SMHSLCAjZkJeBwWeKl0BgRuRi5QDMs9K/qRfy2LWAOfpgQfGCbSv/Qe/LeAWt7LwdQdTDl6HVoH
	0pdSmenmOYRodmrWNKUmOI29UfEyJVHG08DzEBNUAy9PSPKqyzSFfkTEPExhS1D3ml4tWQpFIyI
	6Ujzg/TUMM66bea5cNEqubxlZZ5NAZS6V8o3OYtoRP7S8LETql/FFSt4NF+UK5Dk+89uprpGS6j
	x2BNM9gnGXrmO2yAsiKoccB/PPBOxgZNsrTF0AJ7YkeWdWWL3bYjUR8YHYEW+UD0q1A6pnsHM9l
	jc/1cn2iHV4silc0QK41+NaGMnVmFj9gz+gQppy4ROpfuR/n31GbJsH21in2lNRS237k2XiFrNM
	B41ulYdMximVq5aEGk5OPE=
X-Google-Smtp-Source: AGHT+IG4MBG8e2v0+aWHeqFMOXrtFI9OgNz+261XXbIkXToJkywcJkLjC2xVVDMaTiVwkRv5RMwAtw==
X-Received: by 2002:a05:6a00:2e1f:b0:77f:2140:9685 with SMTP id d2e1a72fcca58-77f538b5bedmr7501268b3a.9.1758716937676;
        Wed, 24 Sep 2025 05:28:57 -0700 (PDT)
Received: from 2001-b400-e384-7809-32b4-db27-121a-a0aa.emome-ip6.hinet.net (2001-b400-e384-7809-50d7-4f66-57aa-588c.emome-ip6.hinet.net. [2001:b400:e384:7809:50d7:4f66:57aa:588c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77f254f8f68sm11058495b3a.56.2025.09.24.05.28.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 05:28:57 -0700 (PDT)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Subject: [PATCH v2 0/2] Add Meta (Facebook) Yosemite5 BMC (AST2600)
Date: Wed, 24 Sep 2025 20:28:49 +0800
Message-Id: <20250924-yv5_add_dts-v2-0-39a4a8e3c9e6@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAHk02gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHQUlJIzE
 vPSU3UzU4B8JSMDI1MDSyMT3coy0/jElJT4lJJiXUsjM4vEZEOTlLRkAyWgjoKi1LTMCrBp0bG
 1tQA6ljkcXQAAAA==
X-Change-ID: 20250924-yv5_add_dts-9268ac14dfc0
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, Amithash Prasasd <amithash@meta.com>, 
 Kevin Tung <Kevin.Tung@quantatw.com>, Ken Chen <Ken.Chen@quantatw.com>, 
 Leo Yang <Leo-Yang@quantatw.com>, Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758716933; l=1114;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=tFiVhe6+5SAbHrArHEtHiWSR8X3PeSACMPBwCd3KpFk=;
 b=UVVmdvPWigN3kriTk9rFgPHT54UndEAYVQbKwdxLVCvi3Ykim8QPI25cmLzYR2LAl+p2TcHn1
 rIlr8+vvbiuBSzH9fppX5Surc2xp6nYJoqru68dzes7KNcXqTMNtibL
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=

Summary:
Add device tree for the Meta (Facebook) Yosemite5 compute node,
based on the AST2600 BMC.

The Yosemite5 platform provides monitoring of voltages, power,
temperatures, and other critical parameters across the motherboard,
CXL board, E1.S expansion board, and NIC components. The BMC also
logs relevant events and performs appropriate system actions in
response to abnormal conditions.

Change log:
v1 -> v2:
  - send v2 of the series so that it's properly threaded.
  - add idle disconnect to i2c mux.
v1:
 - create yosemite5 dts fils.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
Kevin Tung (2):
      dt-bindings: arm: aspeed: add Meta Yosemite5 board
      ARM: dts: aspeed: yosemite5: Add Meta Yosemite5 BMC

 .../devicetree/bindings/arm/aspeed/aspeed.yaml     |    1 +
 .../dts/aspeed/aspeed-bmc-facebook-yosemite5.dts   | 1068 ++++++++++++++++++++
 2 files changed, 1069 insertions(+)
---
base-commit: cec1e6e5d1ab33403b809f79cd20d6aff124ccfe
change-id: 20250924-yv5_add_dts-9268ac14dfc0

Best regards,
-- 
Kevin Tung <kevin.tung.openbmc@gmail.com>



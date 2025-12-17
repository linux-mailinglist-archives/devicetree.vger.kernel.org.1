Return-Path: <devicetree+bounces-247224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 80762CC5CB2
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 03:42:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7F09A3026234
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 02:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D8C3275AE1;
	Wed, 17 Dec 2025 02:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ka5gOR5A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4814E277CA5
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 02:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765939341; cv=none; b=IOG3o1jwlQcQALA/Ytlz/nZYGYOUsfQIZs77xNZV+gSFG7g4kS8Iwszjk7H1yPXb/EZlEmpA6qpaJI6MDeUuj2vJBlKH9A5asRBfyDFYG1ljKIus4vCx5CcRH7vUr4KNNS0TYBOSJDqgDfo+430TCazgg+aF8KlKehm+4LLC9MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765939341; c=relaxed/simple;
	bh=QVLOqIbpNwN5BlULes45Mw39k5QnUscgXN1AaUqlVwY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=uSWqD8+xUvHjBlHmeHeKsp+63ktTc+JCe9bpcA573Eh0QHnqA69JE2D5gfa68dqzYaAKljEvo3XTz0kl2A7u5fMw9XkEXW+8/k7CuAR3viPGkyMhGmNpazj2+HBDy/icd2begy2cZMhhR7HA8z82OA0gwsvRXKrF6NtxNYr4b/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ka5gOR5A; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7bc0cd6a13aso73754b3a.0
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 18:42:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765939337; x=1766544137; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SXY85Uw4s718bBbfWJ62Db0PnAMMSAWmGr9NoDA95ks=;
        b=ka5gOR5AfgBgp1bOsIjEuZ3sYDQQhGw10jRWTT64YpuxV1PL1GJqp5OFEt0jIult22
         rzjgNpsDdYn6ed/FdZ36UB0s4EnvQzJ0W5RJbOiLDsTI+0bV76+f+/ZFF64LQL8dJjAG
         6Ngw3bVrg/K7vvRoqbNqBOFWb8QuQdMBsw9G0IzDe2wf+qYnuOAr4A1DJ86Nc9Y8gLP4
         VQgtWKknq3ooyl9rF3g4wgSmLxzUnnzhHAbfR4CESleGjchwdFCCJbYE0a31EgP7aHEM
         9QIdM7OmVgBhbhL0cFxbUvHUdpbCBK16tWIGPeKrMJ5lbrnXNs5+P7W7pHToZaBGxRuv
         b5QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765939337; x=1766544137;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SXY85Uw4s718bBbfWJ62Db0PnAMMSAWmGr9NoDA95ks=;
        b=t6f+FTA7irEhDqTMySu1bppx6YVO5oE08VICldU06dwDp/0/rqTIep2VrKj20+tqjr
         w3iHpGVUG91ujiG5aNdWN9ugBopQ021OXNZiJ6KbdBZIRldaJWvt1xRCo6ONqbr2lCKJ
         2cQ9HVdpIq8g1okexIdlkvZoagOZHq/gwzwTIM30wEMBOcx583T0FzMwX9TclcfmUDY+
         Ms7BhZJzPychluJoNzGrRHDawT192Ntes80YQpmDAeFjNDV1WxrKSFgaIaI6sVxA6JPI
         ZCzhimOjCzZIok2+faj561+miBZyM3t2JeLPSQpIk4gdlzwIM2TYhDG2fR0pvdeOFDui
         6oDQ==
X-Gm-Message-State: AOJu0YxuyKvsNXmGQnjn3B6TPehPOGq2mepwD+vat1bHYsq29iyVgY1V
	DrZjX7D9DtY2ltoJoUAMaauo7STrHTeXmK3s2yseMmzjMjPHWNWvG7jJ
X-Gm-Gg: AY/fxX5VGdFJa65CgoWMSAtl+3cLPgf1VQCmF0LF9dp/7Zz07EP4eavfoLXkJgLXhkr
	gugnMeFDANlBODFgWPXLPLVCFiRtVdBr5QJhuv067Oe5MbV8PCuQi/D+XdDpvJ+p3G/za+vQsnK
	6RLbtP30qGWmzyXmXtGvKjewsmrEeYP1whz1+1+GBKJrFK3qhIvZjuyrcHL3Y//4Li50OC1DwVo
	BHTIB5RbOndHw9tgFyLdfAV0s50mPkXaV2cgAxIbm8MLFNhdwY/iO+BvlkedrZlqwZybfbogDnI
	Y0wllHT86aw6traxfGTaW68thDhT+Jjf8MDlqHomfF1FpSK9UZ0XQJx/b5K1Fjb055ruLvhpryD
	XgnqWi9BdQpVA3bN7Dw2VrsqtGLOzAhGcF6a2DkLMGBfj0hFYZHeYV6lKzMQY/W2Hq7fpT1MAqb
	oKVYtP7WDGSXag6XxS1bFwyMzcau3diIMV8xEj+Vem3JiQmk+7bVv/NGRt2LfZN0zcKQh4NIpqe
	Ke4+2IS0UjPE8E=
X-Google-Smtp-Source: AGHT+IHsL7dhoNmgnind5e824EvL1VoebSronNRlFQj2ywcoJod8TlpwxQtVbzBWrHsh8omPPq5EiQ==
X-Received: by 2002:a05:6a00:330a:b0:7e8:3fcb:bc3f with SMTP id d2e1a72fcca58-7f6691b4951mr13932466b3a.20.1765939337346;
        Tue, 16 Dec 2025 18:42:17 -0800 (PST)
Received: from cosmo-ubuntu-2404.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7fcb8c29738sm941342b3a.17.2025.12.16.18.42.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 18:42:17 -0800 (PST)
From: Cosmo Chou <chou.cosmo@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joel@jms.id.au,
	andrew@codeconstruct.com.au
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	cosmo.chou@quantatw.com,
	Cosmo Chou <chou.cosmo@gmail.com>
Subject: [PATCH v2 0/5] ARM: dts: aspeed: bletchley: Fix dt-schema warnings
Date: Wed, 17 Dec 2025 10:39:33 +0800
Message-ID: <20251217023938.445721-1-chou.cosmo@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series fixes dt-schema validation warnings by using generic node
names, correcting GPIO property suffixes, and removing unsupported
properties. No functional changes.

Changes in v2:
- Split single patch into 5 separate patches by change type

Cosmo Chou (5):
  ARM: dts: aspeed: bletchley: Use generic node names
  ARM: dts: aspeed: bletchley: Fix SPI GPIO property names
  ARM: dts: aspeed: bletchley: Remove unused pca9539 properties
  ARM: dts: aspeed: bletchley: Remove unused i2c13 property
  ARM: dts: aspeed: bletchley: Fix ADC vref property names

 .../aspeed/aspeed-bmc-facebook-bletchley.dts  | 100 ++++++++++--------
 1 file changed, 54 insertions(+), 46 deletions(-)

-- 
2.43.0



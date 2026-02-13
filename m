Return-Path: <devicetree+bounces-265394-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LxIKss/j2lXOQEAu9opvQ
	(envelope-from <devicetree+bounces-265394-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 16:14:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 38317137700
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 16:14:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0A5953007BBE
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 15:14:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B123136167C;
	Fri, 13 Feb 2026 15:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RmdYDOK/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665182C11CF
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 15:14:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770995656; cv=none; b=uRQnynw8JQATyWkB/tr9sTlMckPJT1m3oyQx9eSXYzZOCfkWWhKWsFi7rFvCULJJ3mn8aTQYyhGeo6ePZeXHQu2pqTnCo88D/3bH0ULBRkUqmeUbP3Mrzi8UmeXuvh+iu/CTs097Ha7IqeQwd9tSMQSDdyjS5MKzN8mYUUorAFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770995656; c=relaxed/simple;
	bh=Wro2PW/ehn8YzM1mixW7JEgdjTcay1Q33V37Pjusvc4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=X6KCid8WKne6s3OvCOMYuF4prE5pRqQuf0FuRATnUiI/6Rhz1l0P9m7k6ZmwUktWQ6RefdQ1Z9/jLWbqyL52YnClz54m6ehv/mSfD3SyevwuQPIaFd2PG/OSrgVy5vhBbbvu23wmKmID3oBMYJ32GtAXhFgR6YWlP+tFiiC9sig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RmdYDOK/; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-48068127f00so10221485e9.3
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 07:14:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770995654; x=1771600454; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Gh3/sxP/uDYO1xSje3R4BHnBwgGY2HD14S5Y+6zJzX0=;
        b=RmdYDOK/0+GmGZtu7bPs8IqfOmFZxTRvEvGm/R9phYym51NiHtGESH4k6EJr4GxkDm
         NFfOSJA4PEBVMuemJuw97EMTHqUWLpa+1cTBOcJ2HWsUsXIDvkoanKh9DikdqbYhHZMl
         c2e2pftA7toDvN7ptUDDsc2H5mbVVHRz/ZtmagUE1sG0jMa5F2EqFVHgwovUY4QDhbbp
         E8LRQgwAufXGkkP+HneHbBwM5DKhFpFPDfvLpg4HUtTlrGGVRXgYqNGXhpXAkjuOh2fx
         rs7J2Bxov+A4PxdsjWr3tkjBpOrAvGyd78MzQnoeMQmBf60lhh1C7G0XiXXP95marOZ9
         4TFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770995654; x=1771600454;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gh3/sxP/uDYO1xSje3R4BHnBwgGY2HD14S5Y+6zJzX0=;
        b=wGUarSrbghwrAgkQovmTwP/C3JQhRbZI70uV9xnRWSom8CtOyRW7WkZP6o691mlT+o
         4knAxCxzY3PiW6CfE5G0GJQ9NRp+sbCnsU3nMN1wgmfHnu5K94rITWf57kMHzBfDBIZU
         hRXWhRlCE/TT97WAMybiI+XPfZ4zMWMMoFLERMWkIUacNVkj1S57IpPgVAMqnmcZvGI5
         ZEnYFDxopr4DEatpAF2F6nXxgNXesAMt9KUp5LDiJf755GkRG4ZPPWoDnOsl2Xi/z1e5
         JqbEYUzf4eXiuJjoNosJ+BsRRVM9tc2x5nv8LCNbgkrQktvp1MrBTDXAN+guA/RawJW6
         5evQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVMAv2vhgovsqZasKWd9o3i8BigKlKORPiwPKwgpveRdX1TV/WhyDkjldAAfvW42PNhiRq0pvMZJnx@vger.kernel.org
X-Gm-Message-State: AOJu0YzgfnIcHBRgRb5I09LUlku+/bCfBPCe6J6tZ2A6/QT0sefyjnAw
	TB7gN2bZR4pVWkZhbERjJ0t1w1ns4BpOUMjybuGdV1ACaS24j0kFJffg2PdsSg==
X-Gm-Gg: AZuq6aKHQbYZdRz7ykWscfVqW8uCIdAJcPA8bwTWHQ9EU63GGMoM1h02at3XwITqUoq
	+1N5KuIotDuj8L036CWxnvCnuNlZtAQNd7g+BtDQWPqAL4l2caBYkVPVxYnz6nbm6wjT1xTgH70
	Sq+MLBro/BGfJfPYfD0Fop+x4RT36hQRuGNEwfN1RF/4JrMOTF5rPgs87DzNnvY06akA3Ma48Lm
	/HnB0cbUO+fdzMVKpl1hWm6o6IGT7D6+RwC/L1I8YC0m7R+peDCh9liXlYRaEVfWzOTzSvEoc9n
	FE82wOnT91eucmPUBfBwjT52aZqgdYevii1REjPSutEor64afoxXMxr9dLxf3+C+yThSa/Qr7YB
	g7B7sEMQTgveMoFIk5++lJwbRUw3+2b2Te3J7e+LynZIL9hordj6i3mNZQvSjugNo6tI0qUuuQY
	ReymKcD8tjQ2mYOXNqJvqZeuc=
X-Received: by 2002:a05:600c:4fc8:b0:471:14b1:da13 with SMTP id 5b1f17b1804b1-48373a1b6aamr36437785e9.14.1770995653549;
        Fri, 13 Feb 2026 07:14:13 -0800 (PST)
Received: from debian.lan ([2001:861:3f10:3c80:ba7a:d401:2221:cd75])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5d77b3sm296160035e9.2.2026.02.13.07.14.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 07:14:12 -0800 (PST)
From: MidG971 <midgy971@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	jonas@kwiboo.se,
	MidG971 <midgy971@gmail.com>,
	Claude <noreply@anthropic.com>
Subject: [PATCH] arm64: dts: rockchip: rock-3b: Add phy-supply to pcie30phy
Date: Fri, 13 Feb 2026 16:14:52 +0100
Message-Id: <20260213151452.535527-1-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,sntech.de,kwiboo.se,gmail.com,anthropic.com];
	TAGGED_FROM(0.00)[bounces-265394-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[midgy971@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,anthropic.com:email]
X-Rspamd-Queue-Id: 38317137700
X-Rspamd-Action: no action

The PCIe 3.0 PHY requires its power supply regulator to be enabled
before initialization. Without the phy-supply property, the PHY
driver does not ensure the regulator is enabled, causing SRAM
initialization to timeout with "lock failed" errors:

  phy phy-fe8c0000.phy.1: phy poweron failed --> -110
  rockchip-snps-pcie3-phy fe8c0000.phy: PCIe3PHY lock failed 0x6890000
  rockchip-pcie fe280000.pcie: phy init failed: -110

This results in NVMe devices in the M.2 slot not being detected.

Add phy-supply referencing vcc3v3_pi6c_03 regulator (which controls
the PI6C PCIe clock generator power via GPIO0_D4) to ensure proper
power sequencing during PHY initialization.

Fixes: 846ef7748fa9 ("arm64: dts: rockchip: Add Radxa ROCK 3B")
Signed-off-by: MidG971 <midgy971@gmail.com>
Co-developed-by: Claude <noreply@anthropic.com>
Signed-off-by: Claude <noreply@anthropic.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
index c5f67dd6dfd9..a1b2c3d4e5f6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
@@ -404,6 +404,7 @@ &pcie2x1 {
 };

 &pcie30phy {
+	phy-supply = <&vcc3v3_pi6c_03>;
 	status = "okay";
 };

--
2.39.5


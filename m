Return-Path: <devicetree+bounces-249394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 17828CDB893
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 07:44:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8058F300A87F
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 06:44:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB543320A04;
	Wed, 24 Dec 2025 06:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ah2Fc/DS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0E123184A
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 06:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766558689; cv=none; b=urHJ+lQSlq45RyocZXQw7cvQsfnSdN7fgAn6iVRzvC1G8qsP0IlCNLUIHuOcURPUYOGce3VHdKKySc/BQol0pY2H+38wB3el8sz8UF5nxuJROdRcUlD8z8yjlaBHmi1cZ3E8nz4Rt2IRMMw/ZrJXRnSE0+fIM6670Bgpl/jea3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766558689; c=relaxed/simple;
	bh=azZjw8PVAWNPZynSiyTzQDrnhDzBZBhZaLDnEbGQPdQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ftYKbN6tPNBqoW7Q/eilz1uFRKUn6ZUvnL0QNrj70NpkpsYoW6kQXJeIILbWhgciEgO85mken1J4HFTE8Odhm0dhyk0YgrZsouxcILehIay0J+N6QEGCYNBklLO8imchfS/ivJ4A9ZdxdvOEYLVUaLge00Msc40uqXRgAMg6nRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ah2Fc/DS; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7aa9be9f03aso4774709b3a.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 22:44:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766558688; x=1767163488; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rcXUuHqHsPLnPcdJtfcsoHeBwUrBqqzkRj7ul8huktQ=;
        b=Ah2Fc/DSb2nGTcmlXzRNNB/jwwtsCjLI2nP+PMNmHfHHo7GPZcn/eZfabvbiDbK8Jd
         nEub32Q6ZAANq9gNeyCrou2mAjwtbl00BDvF4bTfi5uTk8kWZTiEkz0x+I2+QN0x92Yc
         UMrivcKwLnpZ4x2YNzbojyfhIjDeeLlUsr9MfuXrHu7r1ZGwWacpLuM5eJXign7XKtlu
         J0YgzicbFwxTTg7tiKWAL1Ol0sR0EQInMyegByjeL3v7uo4ipjrqOetmf6sFqn+kZml2
         5MFv1IeTbHvAjkkE4nWacsdHx6PiVBtORyKn8gdxpUq+esDIEDelvrBLfMeSEqRkGATI
         W0xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766558688; x=1767163488;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rcXUuHqHsPLnPcdJtfcsoHeBwUrBqqzkRj7ul8huktQ=;
        b=hGnmTj0x9gXGO1gXUaGqmLP9fL2RV87W1/WYGhMGIaKd5ElplPWJQPDpm7QhdGutbe
         ENYJRSIdXpc8yGxggo4rbI8yZQ22sHAvkL7rbKvFys7oiI4L24KGHM9uYaUMR7XTztPf
         GL7DVrkRlFkvAEi14gasG4spt1GoABGkocaPwjlDX4fndfRQLeFflwdOmtkjn9QW3oKb
         EpsKcEb+QEe/JYjn/Gxz525iaWrpvADNsaewRZuGusE21pw2eSwrbIunpaApM3KHAShB
         No2UEPjehp17K7yOM+fEk7CGC1gl9Dxb7Ft/K2j40rGekcs849CabizSc/GQyaCEaURM
         kbNg==
X-Gm-Message-State: AOJu0YwZbFFJL5bAz4kDlz870WBZ9jJjrVapEjKqxXeBEx4gEQ+zCPNX
	c/ZsVfy45TH5N1/1jsFVDBzsLAywR9ntt0r1XCbAG6AfYqdAOLCmF2sn
X-Gm-Gg: AY/fxX6A4mnK07ic4YUptbQI83zSYTu2E/cn4Z/F+jIWyF6i981o24s5/Nm58/EJcbI
	bEdVIbdEcnQ0HSXwLBYVS9rUIHEZZUNaZkdI5a83IG5HOKwPc9RThI0htIGxWQrDLgu1w0vy9Oy
	mjWl5egpn5on7sokgOS6gN7dVa5QPtIEhDgn8V4ebwYjhR181UmOhd10rweJ5pBV22R15Wgv0g9
	mHold7xq/fjgAnXFdJNyw52PRyG9FGvaD4GpYhpDfmddYaH2QPqRnxJNMQ0QxliRdBLbtd6AM5q
	LGremkTgYOf/BlNk5Wt3UxN64PnYhRpiIkE5bwRSO1GPHPFHhxs0LMVFaf22YhHkWZJ1gzD+sku
	+l69P6r6bgcm35sCiDFcugovzRGXHhGKVclrPvI/1Gn1+ZEQihiQ+dmeGPp8KF4e7gm27nynhe+
	tHIZbdM+Kgc0jVMMzVsa2pi83NMMP30KFB3OqW165F76pFGwDKv8I=
X-Google-Smtp-Source: AGHT+IFzM0YtWfrF80UVaawG2TS/l53Sn0EPeZUElG2pvPac2AyOx4/2qKIx+1lXLB+Crhek66ij9g==
X-Received: by 2002:a05:6a20:7d9e:b0:364:783:8c0f with SMTP id adf61e73a8af0-376a83d8902mr15918646637.33.1766558687573;
        Tue, 23 Dec 2025 22:44:47 -0800 (PST)
Received: from [127.0.1.1] (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e7729b04dsm8320864a91.6.2025.12.23.22.44.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 22:44:47 -0800 (PST)
From: Kyle Hsieh <kylehsieh1995@gmail.com>
Subject: [PATCH v2 0/2] Add Meta(Facebook) ventura2 BMC(AST2600)
Date: Wed, 24 Dec 2025 14:44:37 +0800
Message-Id: <20251224-ventura2_initial_dts-v2-0-f193ba5d4073@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANaLS2kC/4WNQQ6DIBBFr2JmXRoYI9Sueo/GGIqokyg0QEkb4
 91LvUCX7yX//Q2iDWQjXKsNgs0UybsCeKrAzNpNltFQGJBjIxCRZevSK2jsyVEivfRDiqzl7aN
 GpQYpGyjTZ7AjvY/svSs8U0w+fI6XLH72TzALxpkYuRRSGnXR9W1aNS1n41fo9n3/AouFguG4A
 AAA
X-Change-ID: 20251222-ventura2_initial_dts-909b3277d665
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Kyle Hsieh <kylehsieh1995@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=879;
 i=kylehsieh1995@gmail.com; h=from:subject:message-id;
 bh=azZjw8PVAWNPZynSiyTzQDrnhDzBZBhZaLDnEbGQPdQ=;
 b=owEBbQGS/pANAwAKAaWDQrcJVsSBAcsmYgBpS4vcWXtTW254mAtMa81OfMyOxzHujO8LGc3Cf
 aA9IBrNSMmJATMEAAEKAB0WIQTJHsaNZOdY+THGqJelg0K3CVbEgQUCaUuL3AAKCRClg0K3CVbE
 ga8jB/0fsX1Yn9czAf9jWr+dWRgMjd9p6K4v/4mIoZ5JgZA/ZU6vaeONX0vCj6yX9JekztiDk/p
 5NF+RV7z7JtqAJjgLhTTKYzkPprssM5VlvVz+UttrXPbG1rG0fDiI10eeFm0v2wWJJScAek92CF
 6GxiwS8ZAehRdFM5nYccny1p1xmmN7nlVS40qxO9Vc++MqeOGT/qr7aXefEoq35zDToi7385iTv
 TIUU/2r6vkAUhXZsFO9xB/cNpndZdx3URwituA094L9VFq4UNYIvE6mXN0By5tvez0E0M3gzCH4
 nIXJOQh0q1p0J5Z8WuW2YdRSNkTu0/QfPxDmOiCQj++ZMjAL
X-Developer-Key: i=kylehsieh1995@gmail.com; a=openpgp;
 fpr=C91EC68D64E758F931C6A897A58342B70956C481

Summary:
Add linux device tree entry related to Meta(Facebook) ventura2.
specific devices connected to BMC(AST2600) SoC.

Signed-off-by: Kyle Hsieh <kylehsieh1995@gmail.com>
---
Changes in v2:
- Remove unused mdio
- Link to v1: https://lore.kernel.org/r/20251222-ventura2_initial_dts-v1-0-1f06166c78a3@gmail.com

---
Kyle Hsieh (2):
      dt-bindings: arm: aspeed: add Meta ventura2 board
      ARM: dts: aspeed: ventura2: Add Meta ventura2 BMC

 .../devicetree/bindings/arm/aspeed/aspeed.yaml     |    1 +
 arch/arm/boot/dts/aspeed/Makefile                  |    1 +
 .../dts/aspeed/aspeed-bmc-facebook-ventura2.dts    | 2945 ++++++++++++++++++++
 3 files changed, 2947 insertions(+)
---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20251222-ventura2_initial_dts-909b3277d665

Best regards,
-- 
Kyle Hsieh <kylehsieh1995@gmail.com>



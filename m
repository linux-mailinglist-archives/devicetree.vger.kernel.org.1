Return-Path: <devicetree+bounces-134704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3289FE524
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 11:03:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 78BF73A1EA1
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 10:03:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 905081A0BFB;
	Mon, 30 Dec 2024 10:03:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l2t2i0qg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27F6171C9;
	Mon, 30 Dec 2024 10:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735553004; cv=none; b=iBua0dIM79jQELarxAhndWlz09KuSHN4ppb6bN/9lu6F5hwgcYmNjyQnaw92RofqieSmXHJbw+utVnWnCiHHiKYzZ1oFpP4a4TIQY6n0bFNCMxsPL0CxMdd0PMbk29WmAD4GyA6HOWA9hC9lcLetXodIUk1m8llovXzCio/2+is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735553004; c=relaxed/simple;
	bh=fI0SD4pW+QS8nc8Wtiy3t42Rgh3UaOlu+jqWvydrJwo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ajZZ56d8hWyiagMjVAox6mMalLzS27UWSmCEITJj2vgzV+2jTe/zUIDmwkNia2ofPdtu8K1WhZDYjDJZPDZ5XAs5Y5rVo5L4Cwwa/dTaLrOSycVfTtSCu2yhmHgH/c3pFk+EqeMKsvvZ58XBvQ2mtwnfbEX+NHGXTxbsO9mAP+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l2t2i0qg; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-21683192bf9so117143325ad.3;
        Mon, 30 Dec 2024 02:03:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735553002; x=1736157802; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OGcdgmSPp8Rl4ve8WcljtcuxciOP3V5C9soW1Jk7mGg=;
        b=l2t2i0qgVYLQ2OS40pK08IUx6L1TciDz9oUbPX+qD9aP+sEam+hbHsQApkFV+pv1IC
         gtLl5d4oYn13gsPptv21D17YvoOBgyH4SLcOg9pQJOqoUZjyJS8JbPHR5jL3FZP5wcoR
         P9keFlYkFuX9i5sZ6g2uvaMEji/tTseYUIoXq05jn8QunKAy3r+K3jxWiRog1DZECZuc
         KQclF5T3eBo9LO62La95wwI8lgc8W9aUj+NhbCmRGyFj9OhlDXmuF4Ev9NUvedyo5tDN
         mM2oBjGkALRZjYekuKqbOraiLJD0lsZm1BKcuXInHnVQEd9a11t1KZ+igURbEs3LVvZP
         C2/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735553002; x=1736157802;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OGcdgmSPp8Rl4ve8WcljtcuxciOP3V5C9soW1Jk7mGg=;
        b=Wwj2+mdXK/KOKi/78c7gVjZIsbP/VkYlvHEjUZNgMnGzwlXhZ+x2rnLm3fExjByr0w
         XhVAk+6xWj37AV3U19xqENpmRv+ukRLOrzG4S2TO5xtG+w7an1vbS0F0srH4wMKIZdeY
         3GPOhj3RoObh4PtnjNYAmQMzSmmErDJlKvgX+3pCZue+xhZK8wXbn0wdO+M+Dzq6EU2g
         uWo2lxtQm+8uMGRcDXEkUgXcQCbDKSIOy4ZKPHf/gfKwE4oLqOIidb2xZtJwi49uwTgI
         EFtJknTCqpWZ7bZCuJMwdEQ0KDc7ApvAtmq0vebWfVO5EbB14Tb+XCr8A9q5wL1vT5r2
         mZrw==
X-Forwarded-Encrypted: i=1; AJvYcCUT9uxhSyte6X6yo8sS7YjE+XfSoFwhcrDQxzgUeGPucHK/utuz31eDkdbQNKSvXTO8GI12ft87uS0A9OTw@vger.kernel.org, AJvYcCWn8iWk6y4xSDAvIz0w2ecIJP8W5w76TgsIa9UxnjLqDEhzAQRDbhp7Qb1xuPwVirnF6MjG/H3HqMPv@vger.kernel.org
X-Gm-Message-State: AOJu0Yyo+gegZY6rnAGp7QKPkBCOuNcSyU4Y6DzOKef8DO2coXoFZqJ7
	T9P5REbiTmCYLfiTxZNtJcKg7wgFLNNx/YK0A7ymU8cjww2/ALHUXi49NMpY0cZ+dQ==
X-Gm-Gg: ASbGncsomcyQInqVdzYO1lS08/kFknyUVJtVGCBr5myi8rRzC0su57nUjUWGzP1ByNh
	lyCKg+7EAf6k77+tthAQGWvFXBOj5AzGYYNX4PuVw0xdQ1BFbZ6QMeKTtqIeIhdlc6+ZLialbJr
	DkE906yA6+loFgrV4nx+x/+v4GDnPawcgqjSZxnp+FvfKlr+g7ikcceDoR6o2TOYXRdWVO8NYx7
	oXL9mNR+oWTpOJLlL/QzbtFNxmVkEaK0AmMHd1cYQgvXKEE/st5hJO5lqs2OSKk
X-Google-Smtp-Source: AGHT+IFxQtXcUqnaBXMvwVGaoOUYs6B2QF/v0AdY3gjC3294y6oxY0eiuEfhGeiAYtPx65Wz+vhr5w==
X-Received: by 2002:a05:6a21:900e:b0:1db:df34:a1d6 with SMTP id adf61e73a8af0-1e5e082e79bmr49152095637.42.1735553002000;
        Mon, 30 Dec 2024 02:03:22 -0800 (PST)
Received: from [127.0.1.1] ([106.114.236.41])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-842aba72f71sm17328587a12.9.2024.12.30.02.03.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 02:03:21 -0800 (PST)
From: Troy Mitchell <troymitchell988@gmail.com>
X-Google-Original-From: Troy Mitchell <TroyMitchell988@gmail.com>
Subject: [PATCH 0/2] Add support for the P1 PMIC from SpacemiT
Date: Mon, 30 Dec 2024 18:02:04 +0800
Message-Id: <20241230-k1-p1-v1-0-aa4e02b9f993@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJ1vcmcC/02OSW7DMAwAv2LoXAIitbjSV4ocZIpuhcJJKrlGg
 SB/jxwf0uOQnAFvqkkt0lQcbqrKVlq5nDvg26D4K50/BUrurEiTRdIWvhGuCNliyiMHl0dS/fZ
 aZS5/z87H6eAqP789tx7DVy0Oz5Y2uLcKMSyprVJhlnEeJ51ZgombVf9fOCTtye+SRphSKwx5B
 UzJoIhMnClubrf6ToAvy1LWOLxLoMCTs17EEofkMZOdk3jttZMgBgMZZ9Xpfn8AjwnWkw4BAAA
 =
X-Change-ID: 20241204-k1-p1-d41ad7c95d72
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Troy Mitchell <troymitchell988@gmail.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Troy Mitchell <TroyMitchell988@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735552935; l=2380;
 i=TroyMitchell988@gmail.com; h=from:subject:message-id;
 bh=fI0SD4pW+QS8nc8Wtiy3t42Rgh3UaOlu+jqWvydrJwo=;
 b=UhyyEJ1EwogsuDv3Id3hoR0cg5sPnSEbuP1If4fUFCbeiWOIYm4Z75BcR27meOATZWSShv1eF
 n+OVvy3Nz+iDt1B5yAEGTjegJw0Qa63i/rcbiQD3w4k6okaB4ke6skz
X-Developer-Key: i=TroyMitchell988@gmail.com; a=ed25519;
 pk=2spEMGBd/Wkpd36N1aD9KFWOk0aHrhVxZQt+jxLXVC0=

P1 is a multi-channel power management IC from SpacemiT.[1]

It has 6 constant-on-time (COT) buck converters, 12 low-dropout
regulators (LDOs), as well as pinctrl, RTC, and pwrkey functions.

The datasheet of P1 can be found here. [2]

This series is based on K1 initial series [3] and I2C of K1 series [4].

Link:
https://developer.spacemit.com/documentation?token=JtOgwFZzGiExmHkoLFDcE1aSnHe&type=pdf [1]
https://developer.spacemit.com/documentation?token=WsLAwb7OqiMbcMkRZw4cVJWWnlg [2]
https://lore.kernel.org/all/20240730-k1-01-basic-dt-v5-0-98263aae83be@gentoo.org [3]
https://lore.kernel.org/all/20241125-k1-i2c-master-v4-0-0f3d5886336b@gmail.com [4]

Signed-off-by: Troy Mitchell <TroyMitchell988@gmail.com>
---
Troy Mitchell (2):
      dt-bindings: mfd: add support for P1 from SpacemiT
      mfd: add new driver for P1 PMIC from SpacemiT

 .../devicetree/bindings/mfd/spacemit,p1.yaml       | 153 +++++++
 drivers/mfd/Kconfig                                |  14 +
 drivers/mfd/Makefile                               |   1 +
 drivers/mfd/spacemit-pmic.c                        | 159 +++++++
 include/linux/mfd/spacemit/spacemit-p1.h           | 491 +++++++++++++++++++++
 include/linux/mfd/spacemit/spacemit-pmic.h         |  39 ++
 6 files changed, 857 insertions(+)
---
base-commit: 8e929cb546ee42c9a61d24fae60605e9e3192354
change-id: 20241204-k1-p1-d41ad7c95d72
prerequisite-change-id: 20241031-k1-i2c-master-fe7f7b0dce93:v4
prerequisite-patch-id: 9526a79ce73cba25daaf9d748aa0073b5f0ab283
prerequisite-patch-id: d75871ad3cdf179f429be441cb9e69874fb83d1e
prerequisite-change-id: 20240626-k1-01-basic-dt-1aa31eeebcd2:v5
prerequisite-patch-id: 47dcf6861f7d434d25855b379e6d7ef4ce369c9c
prerequisite-patch-id: 77787fe82911923aff15ccf565e8fa451538c3a6
prerequisite-patch-id: b0bdb1742d96c5738f05262c3b0059102761390b
prerequisite-patch-id: 3927d39d8d77e35d5bfe53d9950da574ff8f2054
prerequisite-patch-id: a98039136a4796252a6029e474f03906f2541643
prerequisite-patch-id: c95f6dc0547a2a63a76e3cba0cf5c623b212b4e6
prerequisite-patch-id: 66e750e438ee959ddc2a6f0650814a2d8c989139
prerequisite-patch-id: 29a0fd8c36c1a4340f0d0b68a4c34d2b8abfb1ab
prerequisite-patch-id: 0bdfff661c33c380d1cf00a6c68688e05f88c0b3
prerequisite-patch-id: 99f15718e0bfbb7ed1a96dfa19f35841b004dae9

Best regards,
-- 
Troy Mitchell <TroyMitchell988@gmail.com>



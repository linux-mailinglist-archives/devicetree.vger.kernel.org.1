Return-Path: <devicetree+bounces-234882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A17C31C45
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 16:12:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D62323AF9B7
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 15:07:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEE9E221F0A;
	Tue,  4 Nov 2025 15:07:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EywpkVeG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC3C1A9F83
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 15:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762268820; cv=none; b=ZYdJy7+cXKkE0Y1WbOv9ojbyG7XS6qC2CyDF3Cp7u4V8A7i2dee6q5I/2+6eH4YgIm7fo/ksAw1iCozeEgJURxcMfeZpX7bjm7OLefubIZtIj0S4Z9dofwAS9svJOUgXrdLjVKIcdnOzqXMGetz4FwGVx/bRTrC5fl4L+M9srnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762268820; c=relaxed/simple;
	bh=p5LFmwEX6fbf6gDhCZzGUh0cp3wC6wAYcyXldsJFIIg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=F4Q4ptov1Kr/arNX+Asr3fXX3uIXXB6wXzZVwceHqnOfcGv0mYzAlGsk+EQjDblT/y0DgO4iUqnf5N+HC79i7+oZJT2TYQfXpjonCPFlP+kyIU3XUHBK2xuk4INOd0aKyogqDoxZv+/jal2x9pxxz6A48xGdwFDknA6YPelWMFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EywpkVeG; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-640860f97b5so4855670a12.2
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 07:06:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762268817; x=1762873617; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5mpUIW6+CyzXZCjIETW1X/eFRIiBeTonduLxFWGZK/o=;
        b=EywpkVeGojPWKfwinjWNU8CQw/sSxWBgwCoGqZOYEUDcuUZO66DM4aXSI1nJhmg9wJ
         W4Y4s4nk5I8wYsexYrGqV0c3MnDPNhBYRoic0JiP6EFedQXXgWvVxvdvdbq3JW24Cqti
         gSd6tgAEmAe9OLZ1ozHVhQS1KehtyXqlzlLZz3HwodgzqbOxfjKhEmgMvY/lqjseabZy
         noXJXOUTYWHPASCs3F4xuOD6/SB+Oeh0lJbLlYTUKn4GLmuVi8sGvIgxDjqs29QtWNfB
         HorT/wWoWHPtEXscvk2am5ifl4H0ObxsBo8IUNpvieUFuVIWlRJAKvLW8UPor7pDpXui
         eriA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762268817; x=1762873617;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5mpUIW6+CyzXZCjIETW1X/eFRIiBeTonduLxFWGZK/o=;
        b=hilE8BDaDNt05xM5Y1FA4sm2R3Wky8P+N54JL/eFFzoOcP3dsUm1X9ktFHD2kJz55Q
         o3Y8zVtrhzZ7v1QlwVwyVarviZrGyr6dFfhegOwITB8kDfFMXVEW9f7bdGyA0Qam20mr
         4L900b8OfpsUApVL5c9R9XZqvMKjxaNL6HHWaVVv3zQcXKKixEpyvwsd7Xm78H0QNil9
         qJF7uGFc/8BGf8SyOkL3x8S5z0QKUrTG8uWqCV7o9w5L9qKyqkpQlGx6RYCeEqmglWK0
         fNfRG0jJavZ6wNGc2CsCk3qzhM+15re2fhOksCxskrB49LsGcWhXDjHy9fMxJH4uTc3N
         yQpA==
X-Forwarded-Encrypted: i=1; AJvYcCWWJDvI4X42MPanoa3wBxMW1B1mDIxfRG4EYwIUp0GTG1ORr3ca2eSpY/ktdApGfK5reiYcoA9USeLn@vger.kernel.org
X-Gm-Message-State: AOJu0Yy55i1OK6LdHTVCKP8pTuYF7OTe687EGbSgwmshYoGR0dLO7nyM
	J/kNn707XzDqImSIAHjPSQFxKLr/cJ3iVxETuRFNQDC1mIs7S92uTL1k
X-Gm-Gg: ASbGncvijaOK4EY11pp4gKJdujbWh+ewp2OLzUjGpcjfvR7W9KaYGEnThlsphRN8Dsr
	juT5iYcBSgun6L+YRx0fVUTztK6u/beXOAf2374qq53w9WNXK61UQK9AtpY6o830ZJVNasyTQ0A
	uAHKTBmzPZWV2nA651OC17FcDYVU1N34WDg1t+L60eHtdqm7LQHtJyDozgasI8aJjDz9UWFu7oE
	1OWlFXY0qfdnUVO5Pf0QzMfqKtx5e4uUxjBsG0ZFM5Zpj8AUstbomJyY8wUCC2P9ps11MQdsOp+
	vfRR4gslC3qVFzE+OBuLW75KyIvfj9h0LlN5SoazZXIYTV0H7/069kxSnVNmz10fswMdxg9qRuy
	1sF3lm8x0OiLxXOTpG6QzH6MXu5yQawnB0akGbSBZV546d28lUUh5C/HBpCpgvdNwrj3Tkh4+nC
	/nbSET/QZiJMcY6Z39GjMhwGXNbA==
X-Google-Smtp-Source: AGHT+IHpPTJa2+j0h+Cs4K2bC2PC8wb2EuNR51cOnJgsXf5x4woRyQv45qLS4utiEScOeGGzpAw/cg==
X-Received: by 2002:a05:6402:50c8:b0:63c:4537:75c0 with SMTP id 4fb4d7f45d1cf-640770823a5mr12779586a12.38.1762268817213;
        Tue, 04 Nov 2025 07:06:57 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-640e6805da3sm2342014a12.15.2025.11.04.07.06.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 07:06:55 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Daniel Baluta <daniel.baluta@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] Switch to using AIPSTZ5 on i.MX8MP
Date: Tue,  4 Nov 2025 07:06:09 -0800
Message-ID: <20251104150612.1874-1-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

This series is a combination of the previously dropped patches from [1]
and the config-related patch from [2]. This enables the usage of AIPSTZ5
on i.MX8MP-based platforms.

[1]: https://lore.kernel.org/lkml/20250610160152.1113930-1-laurentiumihalcea111@gmail.com/
[2]: https://lore.kernel.org/lkml/20250707234628.164151-1-laurentiumihalcea111@gmail.com/

---
Changes in v2:

* squash patch 3 into patch 4.
* rewrite commit message of patch 1 to state that this driver is used
  for the IMX8MP-EVK board.
* rewrite commit message of patch 2 to (hopefully) better describe
  why we need this change.
* link to v1: https://lore.kernel.org/lkml/20250821105634.1893-1-laurentiumihalcea111@gmail.com/
---

Laurentiu Mihalcea (3):
  arm64: defconfig: enable i.MX AIPSTZ driver
  arm64: dts: imx8mp: convert 'aips5' to 'aipstz5'
  arm64: dts: imx8mp: make 'dsp' node depend on 'aips5'

 arch/arm64/boot/dts/freescale/imx8mp-aipstz.h | 33 +++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mp.dtsi     | 16 ++++++---
 arch/arm64/configs/defconfig                  |  1 +
 3 files changed, 46 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-aipstz.h

-- 
2.43.0



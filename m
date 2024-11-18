Return-Path: <devicetree+bounces-122487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A84D49D0BBB
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 10:34:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2539BB23895
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 09:34:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5787E1741D2;
	Mon, 18 Nov 2024 09:34:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="B5wMRDzG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74B625760
	for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 09:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731922445; cv=none; b=D82Ar3ncds4dglsUXfwSksIN6Y2omCCnuqQCRCqA9SmLpj2fyYMLHNqoSzcMTjCtVlVrlBKSQRtqsYhBV7lTB1DaRQh1z4eqoVS7vPAbynFcqQ1fA/uEq45/+b/97lq18gRaE2B06tCULsYYMsABd8bwd4ZEG3ghFa1h5mrakKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731922445; c=relaxed/simple;
	bh=mgpxk1Id3EynGOXNWYWN8QXCMTV4djO5BklM9jOek1k=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=jyKc5l9/Iiau2C9NkEIv5ZshRs6DF6nZ7vmNp5keBSl3A0PC4GccUb86/83AFdRFe32+JoYevWjg4/oFA8MUgRBKbb0oh4ml5RM+hkbzJGNnKrWgFg0psTl4UddBu7ezlOI9RivkvE8fSVHOQ/417WbaJnYUKYnQSRlwcSb9DkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=B5wMRDzG; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-71e953f4e7cso1020925b3a.3
        for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 01:34:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1731922443; x=1732527243; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HO5WwwJBXKRwY38AXn2v73LeqlUfbbIi5JSituwuRLU=;
        b=B5wMRDzGJDUB+ILKzsvA5eAWRuuVJFqiXwHtgol06KYk8o1PXtx9xW9KYFht+qMKVx
         y/0wBKl1+Zs1bgzedDiucQTa7YSVwUYIeLTCPG3MRBlxb/TalL1ZLmbI2BRZhiDqROiK
         Ju0TkOtz+8uudd0ekeiJ7UVXzvz3z3sWHGukw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731922443; x=1732527243;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HO5WwwJBXKRwY38AXn2v73LeqlUfbbIi5JSituwuRLU=;
        b=UFzUfy0ITcNK9qQQuM7yT0UIOwwcBD/wQWFhYdb2R5rD1NxSt5cV0e8vqDPf+VwIrv
         Iy6KiGI0E/odY0Gyhdoqp1cUZNcM7LVGazDLa/KHXLDcYQbfmTXDaeiPY4mm8ZzE+5/W
         U8Tmk3knXWKtDpup757HLOVOubOz2TsdZqVUovFfDrCQM3St50L8GAu5je9CKukXoM1n
         APZzMRPBxE/9qsEDRGg2B1TTlYKy6SqY85MZP2aurFP+p8Q83pJKznxGigJE3lnEk0D+
         TBH/NnTLBKaFFY0CVzcXeU+ZPLqHDBI5LMlhua7+x4875PlJHIdU2u6C/pVVFBDSS+rA
         sBag==
X-Forwarded-Encrypted: i=1; AJvYcCWzJM64WYlOmb+eAlEiQNphQxY7x8RERc2MRg0iJyfo2q/8mqqBez9kc1DeXaCdov3cys3BFM35CvHr@vger.kernel.org
X-Gm-Message-State: AOJu0YxIlOrDz9UFVcoPWZsMxgAZedPDFAp1/Z82njO+0fsmxLP7Mi7X
	99TZtHmfBtegXQAVJtyXzuJgAyczXaNQj68ASVbnetlXN3YEbECWp6i4NUAP2g==
X-Google-Smtp-Source: AGHT+IGw5paEXgQzTMpgS3LU/sXd+9iUm8nVO94EMaVZJzu1tumWk19RpK5qWPbKJV3j9LEKVSmglg==
X-Received: by 2002:a05:6a21:99a5:b0:1db:e8dc:4ae1 with SMTP id adf61e73a8af0-1dc90b37d1dmr14645634637.17.1731922443101;
        Mon, 18 Nov 2024 01:34:03 -0800 (PST)
Received: from lschyi-p920.tpe.corp.google.com ([2401:fa00:1:10:e40d:fa29:75db:2caa])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e9f1e24ce4sm8333500a91.0.2024.11.18.01.33.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 01:34:01 -0800 (PST)
From: "Sung-Chi, Li" <lschyi@chromium.org>
Subject: [PATCH 0/3] Introduce new driver cros-ec-charge-state
Date: Mon, 18 Nov 2024 17:33:45 +0800
Message-Id: <20241118-add_charger_state-v1-0-94997079f35a@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPkJO2cC/x2MUQqAIBAFrxL7nZBiUV0lQkRftT8Vq0QQ3T3pc
 xhmHkoQRqKxekhwceJjL6DrisLm9xWKY2EyjbFa6175GF0xskJcyj5D9aGJHQbfwrZUulOw8P0
 /p/l9P38eUSVjAAAA
To: Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
 Guenter Roeck <groeck@chromium.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>
Cc: linux-kernel@vger.kernel.org, chrome-platform@lists.linux.dev, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1731922438; l=1941;
 i=lschyi@chromium.org; s=20241113; h=from:subject:message-id;
 bh=mgpxk1Id3EynGOXNWYWN8QXCMTV4djO5BklM9jOek1k=;
 b=S93M8Qm6z8yVyYooDGPIcBbKFzjnpP4+DusZuTLKwaJP/RewW6uWx2Hsl6ThQzR4hF9LqU7T/
 XFoRe728loECOBi/Arpv+Ily3CpPgxyV1JhMmBNI6jvqJoogu35WUwl
X-Developer-Key: i=lschyi@chromium.org; a=ed25519;
 pk=nE3PJlqSK35GdWfB4oVLOwi4njfaUZRhM66HGos9P6o=

There is a battery charger IC connect to the ChromeOS Embedded
Controller (EC) if that device is configured to work with batteries, and
EC exposed the application processor with a set of control to limit the
overall current used for charging and current flow into the system.

We have seen that the battery charger is one of major thermal budget
consumer on the device. As such, it would be great that we can limit the
current running through the battery charger IC, and reserve thermal
budget for application processor to have more room running in higher
frequencies.

There are some existing drivers that can limit the current flow into the
system, but they either require certain features (e.g., needing ACPI
supports for cros_charge-control.c, which is only available on x86
system), and these current limiting mechanisms are achieved via indirect
configurations (e.g., cros_usbpd-charger.c via setting certain USB PD
charging profiles). As such, I introduced a new driver that can directly
manipulate the battery charging current and the system input current.

Signed-off-by: Sung-Chi, Li
---
Sung-Chi, Li (3):
      platform/chrome: cros_ec_charge_state: add new driver to control charge
      dt-bindings: chrome: add new binding google,cros-ec-chrage-state
      mfd: cros_ec: Add charge state control cell

 .../bindings/chrome/google,cros-charge-state.yaml  |  62 ++++++
 .../devicetree/bindings/mfd/google,cros-ec.yaml    |   4 +
 drivers/mfd/cros_ec_dev.c                          |   9 +
 drivers/platform/chrome/Kconfig                    |  11 ++
 drivers/platform/chrome/Makefile                   |   1 +
 drivers/platform/chrome/cros_ec_charge_state.c     | 215 +++++++++++++++++++++
 6 files changed, 302 insertions(+)
---
base-commit: 744cf71b8bdfcdd77aaf58395e068b7457634b2c
change-id: 20241118-add_charger_state-8c0d6e9a5e45

Best regards,
-- 
Sung-Chi, Li <lschyi@chromium.org>



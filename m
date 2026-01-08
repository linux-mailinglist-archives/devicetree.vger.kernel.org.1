Return-Path: <devicetree+bounces-252589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B04D01407
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 07:35:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 50D7630213F7
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 06:35:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0569433A6E5;
	Thu,  8 Jan 2026 06:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="nDhbd1YK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 848A43002CF
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 06:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767854133; cv=none; b=aovaohXz121h4HeuJRGft6ipiKWymdGizzjWK7bBOBWx+q2v0jWTon73ooFTxFKtKEYzNPmMvabRsSmyqZpkMWmCjHjuHivdQn+ao8OJyZ6TnQw9Z1d0Z24xk9fXKoLnvkMYYbHejo24quryoyYgmlXJDhLZf08VKIY4y2ydULc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767854133; c=relaxed/simple;
	bh=1j6DmnkKG2KNczfpdUirPndvV+/QJe0itlIlr9g43qw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=iCwTFAZzKYQqnfavRWVJmZI/4vT/F9MdUkF5fx2APxUeEia+0zx0FGPp+YSAc9HOuoMaIHKy2BO8+Q9R+Dm3cLtwI56GJqVZVviUYQ66WQPm0DRDK6DfeFHn3poEm1EH4yB54HmN99yZEkKYTaxmFWpoVEglvwm/MZJ5dqt+cqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=nDhbd1YK; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7ade456b6abso1919320b3a.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 22:35:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1767854131; x=1768458931; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FfWymTP8L0jdt/cVVblGynBtPL0Xhi5kpRh/WSBflBo=;
        b=nDhbd1YKVGpw208UkILZEptsMTI3JUVJZ6ne6SC6diOJDMS28GgEk0XDvPFxPdx9+k
         /9VqOEPPo+kVTN+GxHEvSvBanXXxFIcFsbaYysLWUHtGIJPGSuUVMMTznP4zv0sx4VtP
         EAX3CHmHn4XT5q/lp6CCh+wB54e9j6H5SDj63FbAFzA8VGidk1/unqn69iLaMUSLWLBy
         PNHxIVTe4jQWyWqhuyBOiS2NKwhOo8wPeA4hsE5/+gZu9Z9+0CniCV3e4eRhIh/EbN+7
         73kZs1ITLKJrnM4Q42H43FjrLcOpNDC33wPa9mm6OvS3IW0HWndwVwyby4mHRaA+uPfH
         De0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767854131; x=1768458931;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FfWymTP8L0jdt/cVVblGynBtPL0Xhi5kpRh/WSBflBo=;
        b=cIR6sFwmWu/OHTKTsRwKYX+OWtfQJqweePiG5eErEUxuNWhT22iaKVmYAJlCEajwR9
         nyyMSjda49YG5onBKX7LC3T9tpGieNh1tgRC7J3iMmEHYnP5XET0gnWY8OfsUkPB+KrU
         iDvhQXDaufLHW6TKgSdRH/awpSLTqf04kAe3hn765kZjYVO1R4+DD93+Ibk0xLIbLytK
         3kqqBlscXM/wYFLOA2DIKVHmtX0ZVlziUvXPPSubsgsv/xYsSG6M1/4GFlWF6WwZnn0W
         CPDBw6eD48Y2RCflGTfYEpc3PCOVxiARFCttpGZmZcLvl/DNYqRmUZIywAhedIzeBE5h
         bTpw==
X-Forwarded-Encrypted: i=1; AJvYcCX5mD+6lXXrPnVu/V3cgKpiAGT80uO9aB+LnzF1TKVrU+y3as2bK9Jb67gUQIQjPuHv/IrzeidR/SeB@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9xoKgwo/OjMyHTVRQKKBKZdJzxolF5ZuS3yrM7qchNmVGPKfo
	r1y7yRGjJWI0rBTcTVm4tuUr9iz7ww2c8cvVC6BRiPu4UFm/cFHwmycHyxHr+j+GIhw=
X-Gm-Gg: AY/fxX6yG92JyNDDVxK/4bKwWE4jkiOmtXbyznUOcb/L/coIOOroTU10ubJeYl/Za/W
	XuAzadLfJhnRo3Y1Ttw49En2cYFWpaibtTU/3KZcOeaW5ByUj5nONskn6gmz1kZWKgm5UQGxO71
	cBDf2cKWiIQ3eFoJX7n44FZ3HY8fsv/lfMd+rBfQGF9liA4bx5RjhlmwA7N40+oqFdD+QsF/ooF
	bB6i9oBEe4iUrO3OolcDuoOCX+QwuatdR5VJ68AQFRuGdq9/M36kHzMsejw2hMBPBCBZHRoyMoL
	PmO4ctpn3aKl9/dCAECLyMVj+SVqpkUXHaTaQE0T17tStUH4Vw/2Td31Q3rXO5HbuqkneyXp0Ab
	bRir/ubunaq7f/LNjdSf6N7Oi3CtGai5vhO/zpTkAssO7MUQB2Hw/II/VtXLqrt1kRgwYBrR9SA
	P8ldsJ8HyBAoZO4SBU2HQfBEyq3tO5hBWrWGqS5X30ovzA0BdGA3gTf4v2fw==
X-Google-Smtp-Source: AGHT+IHV5U0OA+y1lK29uKoEUr0JsrvW3Xvk6wizATInwg9WfJxSC+5P4jf3qL+bG6pHiGjaXH80QA==
X-Received: by 2002:a05:6a20:430e:b0:35d:b963:f877 with SMTP id adf61e73a8af0-3898f896e65mr4684725637.25.1767854130842;
        Wed, 07 Jan 2026 22:35:30 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([103.117.77.121])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5fa93ee7sm6712750a91.7.2026.01.07.22.35.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 22:35:30 -0800 (PST)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	bentiss@kernel.org
Cc: dianders@chromium.org,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH V3 RESEND 0/2] Add tc3408 bindings and timing
Date: Thu,  8 Jan 2026 14:35:22 +0800
Message-Id: <20260108063524.742464-1-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The tc3408 touch screen chip same as Elan eKTH6915 controller
has a reset gpio. The difference is that they have different
post_power_delay_ms.

According to the Parade TC3408 datasheet, the reset pin requires a
pull-down duration longer than 10 ms, therefore post_power_delay_ms
is set to 10. In addition, the chipset requires an initialization
time greater than 300 ms after reset, so post_gpio_reset_on_delay_ms
is configured as 300.

Changes in v3:
- PATCH 2/2: Corrected post_gpio_reset_on_delay_ms: 100 -> 300
- Link to v2: https://lore.kernel.org/all/20250820122520.3356738-1-yelangyan@huaqin.corp-partner.google.com/

Changes in v2:
- PATCH 1/2: Drop redundant "bindings for" from subject
- PATCH 1/2: Improve description (describe hardware instead of bindings)
- PATCH 1/2: Drop "panel: true" property
- PATCH 1/2: Drop redundant description for reset-gpios
- PATCH 1/2: Use unevaluatedProperties: false instead of additionalProperties
- Link to v1: https://lore.kernel.org/all/20250819034852.1230264-1-yelangyan@huaqin.corp-partner.google.com/

Langyan Ye (2):
  dt-bindings: input: Add Parade TC3408 touchscreen controller
  HID: i2c-hid: elan: Add parade-tc3408 timing

 .../bindings/input/parade,tc3408.yaml         | 68 +++++++++++++++++++
 drivers/hid/i2c-hid/i2c-hid-of-elan.c         |  8 +++
 2 files changed, 76 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/parade,tc3408.yaml

-- 
2.34.1



Return-Path: <devicetree+bounces-123640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEDC9D58A8
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 04:47:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 350321F233E7
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 03:47:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13772154454;
	Fri, 22 Nov 2024 03:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="JkqUIAZ7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB0D922081
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 03:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732247257; cv=none; b=ZP/+vWsu5Bmt216L1v0ailzsUvTjc18TzCrHH8Jjy74enH8cuxj+9fLEcQDJRYnsk+mf5mKV8s52CWcwTXl/bVBEBcdoORVprJ/LeDYEfxaUOSqgBk/rCHym+st4MPpIZo0Gy3dAEz0pCohYoeFapGrzoC1up0K6Ewa7Nz4EnJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732247257; c=relaxed/simple;
	bh=9PRuTzDBqQfJQDriZ1LwQnsJ3pxswr44u/jT5UYum2w=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=JTEincno5dtjjNsy4ytZWSig2y6msSdE2Tm3Isdm+rBeaKuNuro0czRJ0pBadKRCG+ZeFqVlA3nGPl6teNrr+fClN0f3MABJctmnPXI3tDxLzUzy2bhcC0Y2LcHEaSb9GXscaAlKacRTwHEmvgA/9mlb+X7P0Lpu5NibLB3uQlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=JkqUIAZ7; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2120f9ec28eso13107965ad.1
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 19:47:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732247254; x=1732852054; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OUPLabeEhsTuPB6N8IV/JgXFnjKZTiSfXFCFhiuDbdQ=;
        b=JkqUIAZ7L2x6EVLpE8J8O8BqfHDNQK5VFSdNk9e5vpnKp6yrxnOtZU7ETlm6uNLxeR
         rg0WuIGllftScg2R4wCXx7jQSR9iKhiRex7SqMbDW8OIboj+BkmijbJRReau4SAGekUG
         QgIccYj9OZvpRUymJZuHQN0R5T87ssatuwf4U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732247254; x=1732852054;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OUPLabeEhsTuPB6N8IV/JgXFnjKZTiSfXFCFhiuDbdQ=;
        b=deJvAtYvxT1gYx91B8zC7i+2U1EzUWNb0UebWSuv3s9k7OB052nm8hhWHhY7F6T9TN
         5NyGrvcZSmBpx9nDSyOxXGRNvewtqJcHjByZYbRUCLQqbGQr267op8RaX6VGrhLSn5SY
         2ggQrCxB7OKM/GR5qaUFGeZcBtXwH4NK/ZqNX7hdZnyEFgDQSni66eaw1GeWyz1bIZdS
         809u6KIBYXDTWEWr19QUpFkf0Q5Jdpc7jL3irq8TCnu0Shloq7RJUhjOtu5TUFzxAOni
         CWfd5zrgO8Bh5QF0Lu1zK7qD1FchJDKqVrQleF/0duaaSIByJJ+qVq6jJs+edX2I8IiB
         ZCFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtsuVpCRpBWxoNyN6oQbpJX8qrGBlKzUWayAEPVmt5mL8ysFvUfaztZl++j8lO4Ymx/19qjXYZvNd4@vger.kernel.org
X-Gm-Message-State: AOJu0YyE6yKiUkhaSCdvMKZjgJj0xXOaNbQOCL52+nBH/TzPmCFtvPjx
	dxhfqzE/+h367yzACEnJc32RmYZjiZfnFP7Q4V3E/jXfwXkU+Jfo2Z1QnXpSGg==
X-Gm-Gg: ASbGnct8YVBu3WWbeSLaCfoiOWUoP7M3M0LYH8jJdDpjDmdIc2VeMbSBeM0sk9snaAM
	/i9lr69grDI1uJvhvVtZ/0wFBTRDPpJGqGAAOT26PQmlN9ltckkrUz3ny0EB0cDoKvSQVMPk+f0
	shs7Ubix8BWUCJ0uvttrleZkhAhV0h2tdPEt9qMOLoGxQ2BWO7JyxtIqiMCA4JRdF3es4GKdGyi
	8pHu/WVFQwWAD3Ixxlic9CaX9496fatnyvx1JCD6C92UFj7vimWfziLMh7jIlBp+4FiL7Q=
X-Google-Smtp-Source: AGHT+IHiALVToYKglGv8HQ4w/4rsnqINW3YG6Y1GRh2tGW268TcBGb5mBkzYGC/fBrRZJ1hQiu3nXA==
X-Received: by 2002:a17:902:e845:b0:20c:e169:eb7b with SMTP id d9443c01a7336-21283c7d68cmr91453535ad.14.1732247254165;
        Thu, 21 Nov 2024 19:47:34 -0800 (PST)
Received: from lschyi-p920.tpe.corp.google.com ([2401:fa00:1:10:533e:26bf:b63:973a])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-724de554b11sm550174b3a.133.2024.11.21.19.47.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 19:47:33 -0800 (PST)
From: Sung-Chi Li <lschyi@chromium.org>
Subject: [PATCH 0/2] Extend the cros_usbpd-charger to make it a passive
 thermal cooling device
Date: Fri, 22 Nov 2024 11:47:20 +0800
Message-Id: <20241122-extend_power_limit-v1-0-a3ecd87afa76@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMj+P2cC/x3MQQqAIBBA0avErBNyiKKuEhGmYw2UhUoJ0d2Tl
 m/x/wOBPFOAvnjA08WBD5chywL0qtxCgk02YIW1lIiCUiRnpvO4yU8b7xxFgxpNp9RsVQs5PD1
 ZTv90GN/3A9AOCHBkAAAA
To: Benson Leung <bleung@chromium.org>, Guenter Roeck <groeck@chromium.org>, 
 Sebastian Reichel <sre@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: chrome-platform@lists.linux.dev, linux-pm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Sung-Chi Li <lschyi@chromium.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732247251; l=964;
 i=lschyi@chromium.org; s=20241113; h=from:subject:message-id;
 bh=9PRuTzDBqQfJQDriZ1LwQnsJ3pxswr44u/jT5UYum2w=;
 b=Zc1RWAqzt3jVrYqd5ASn9V+gjaIAcZeOGISABX0Ac99Xxsn8I3BztCE6a22BtmSCbL3aekvws
 faN/RYixLo6Dxfe7unI1ySbUZo5kTdF4qousRqILdTYvWR2gEqJJnw3
X-Developer-Key: i=lschyi@chromium.org; a=ed25519;
 pk=nE3PJlqSK35GdWfB4oVLOwi4njfaUZRhM66HGos9P6o=

The cros_usbpd-charger already supports limiting input current, so we
can easily extend it as a passive thermal cooling device. By limiting
the current flow into the system, we can reduce the heat generated by
related chips, which results in reserving more thermal budget for the
system.

This series will only works on making it a OF style thermal cooling
device, so related code are guarded by #ifdef macros.

---
Sung-Chi Li (2):
      power: supply: cros_usbpd-charger: extend as a thermal of cooling device
      dt-bindings: mfd: cros-ec: add properties for thermal cooling cells

 .../devicetree/bindings/mfd/google,cros-ec.yaml    |  3 +
 drivers/power/supply/cros_usbpd-charger.c          | 98 ++++++++++++++++++++--
 2 files changed, 96 insertions(+), 5 deletions(-)
---
base-commit: ac24e26aa08fe026804f678599f805eb13374a5d
change-id: 20241122-extend_power_limit-62c2d9aabfa7

Best regards,
-- 
Sung-Chi Li <lschyi@chromium.org>



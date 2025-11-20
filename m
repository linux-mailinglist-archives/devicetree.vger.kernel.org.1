Return-Path: <devicetree+bounces-240510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE0EC723E8
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 06:26:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5CC654E07EC
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 05:26:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AEF12FD7B2;
	Thu, 20 Nov 2025 05:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l9M0Y2pr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 929DB1D2F42
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 05:26:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763616368; cv=none; b=h00ik/wYPSejHHU6iiGZ8ipsaYjawxpu6TD0VUoexYX2VuBA9vjj/W2f884Sji6Wyy1M+tIU5lE5oiRKazE7sSEcy73LKxfse+Tf1I9GJkRMw9vKNHm2l8ygHoXDtK0mrHNMfIAkR9+a1D6DP/Tubco1tcWEyJIsz3FmzxoX6tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763616368; c=relaxed/simple;
	bh=lg2jHrJxqbgoMaTKC4ITbkxnQHARHKleNAEPRdJp6v8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=rAxesJRJXNqN11yz3GS8yt/+rubHMSRNL9a36kpnXrxtL6KWFoHhGeJ8a6MwW4tNdq/tL8thmr3humBQcBAiQOxAmRrN4VSxJAsdPi4Bz/k0tRlVlvd2mMqtY73FJW0kp2KL0qSBpsYA32w/JuDb6V82jH3bHJ+KLMrlDSHz60M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l9M0Y2pr; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-343806688c5so378749a91.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 21:26:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763616364; x=1764221164; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XK8FGpJd/gRCbg6Rh2iKRhUNOEC1c+hhwCoLg8DxBR0=;
        b=l9M0Y2prL+ic55yqsaQuiKy2rI/ZMnB1ZqHh0nv0SHTVbuisc3XTCRnsep8fj9VEKd
         1cNRsGW2w/hlHUmOuT37FZf3zU4uxgOp/PnJF604rLi7yTGpfKrUY8Mq6AFjCk5leR8+
         Wi64yliSuhQYSoGn/CXzxHbsG1lZRHDuOJniLdo+tjEwimBuJW9gUzJDgV8pCmPKF+v/
         Yk/rhPMJVkIR5y2oTW8WLHDpbYhtdX65zjuwW803r3iONMRvxvpyoR4exX+TmQltW1cN
         LC8DjDqc0nS9xDT0zcvF1pxyNWupQ0V39NlMSDoZzObH+uLpbzlaA3Sb8tzt3Y9O/Kkq
         /5Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763616364; x=1764221164;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XK8FGpJd/gRCbg6Rh2iKRhUNOEC1c+hhwCoLg8DxBR0=;
        b=NpFbw2/Yq1KFzWf4IEFIyKDMGY5KVPqHmOznbk6juK0UMEfksxZuujpOrCKuxysRuq
         qB4vTe++8Ch9kG2P26qnXnpabKAlsZieMUJqsXOVz8UnFu21qh+vhUD9NSQdICX7hDEb
         43z3YzQh+pET/TdEMRE+3083msnZ8L2dkW/4F904Zmdf7LX57VGCeaLypc/sEABNB2vf
         1X5a6bM5GCVgP3H8fx2G+25Op/xMCW8/sqFAhmCXmkMVfXHgi926dVLyWNm4oUUBb9WP
         M+pl1fybH3RFnKyY+LPx16PidC/csi8CNIZJwn7AVRQN31LCuBrnydTGP+DJ0IFwdF5b
         EOWA==
X-Gm-Message-State: AOJu0YwctJeluWY/didN0/5qmy4J0Xcxur1CjWQ1wKExokDyvu0wn4aM
	OLCZXehOlqI4ZiftpdIBxSSgU+ofzWyhkhbluvLc2LikYvTHCVbsDXpW
X-Gm-Gg: ASbGncvX9DSHvDoceP0yjsUrpIV6Dxn3K2NQnN0DIousF6OnV+ERU9GBpojMACLVt8h
	OnoupLJ4t5SAzl1MMD0ZCBWvvuL20ZS6B+YAMbMKZmXcu/VfnI8P8HyAuLe3H+rCE/wu9OeJQkg
	jIcw6s6obzsbFE3iDVeLUkzFjAueh1vpsiTlMY/Tq5lkDY1dst/vpdGsICUCwnN4a31OFntadCh
	CbReZmb6lhsdwRmJNDsuFyJdIT8w2LP6H3IvZVO2LcuFfhCjyL+aOegip5yzvomPnf/BGFPr45K
	h0ZKh8QfAfRK3vENhZSUcA9GAopo3KrVt4bF4D//cBBW2piOtjkOIkDQpJbEC3e33bRhfgb7+kD
	byOoYHuK3H1Rv7Wy/ZPdSun572je/fGQDxPHnxCgF32mPEu/zQ4AjIOuD9gQXV9KkVCVHQrXB/t
	8zxIHA7Z+I6aw3TVlZgipoP/E4+VC+5iCS282eg0kHdtQFyZ7pyiH8qrNWVxdG3Gt5xxSr7d2Re
	4WWGgaq36SSCmmmhCERpMjQt1CwAGgbbcViTzRJM92ouPuYXHcbpVyIdULPqfE3XgpQ0gYzPfHR
	WXgQOnE91W7lv7ZkBT/Cow==
X-Google-Smtp-Source: AGHT+IGRKwLmW5TfFmdLBz3341tnXeMORxmdp+rmYdWoNAuomZUITEEz1HkqEwACgq+mI0ayc0njuw==
X-Received: by 2002:a17:90b:2cc7:b0:340:b572:3b7f with SMTP id 98e67ed59e1d1-34727d56695mr2083615a91.20.1763616363754;
        Wed, 19 Nov 2025 21:26:03 -0800 (PST)
Received: from 2001-b400-e301-38bf-be0d-b72c-6bec-2812.emome-ip6.hinet.net (2001-b400-e301-38bf-be0d-b72c-6bec-2812.emome-ip6.hinet.net. [2001:b400:e301:38bf:be0d:b72c:6bec:2812])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3472692e5d3sm1221342a91.9.2025.11.19.21.26.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 21:26:03 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Subject: [PATCH v2 0/4] Revise Meta Yosemite5 devicetree
Date: Thu, 20 Nov 2025 13:25:57 +0800
Message-Id: <20251120-yv5_revise_dts-v2-0-4d7de701c5be@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGWmHmkC/3WMwQqDMBBEf0X23JRsMLb21P8oIjZZdaGakkioS
 P69ae6Fubxh5h0QyDMFuFUHeIoc2K0Z1KkCMw/rRIJtZlBSaUS8ij3qvgypt1sQqAglWdtq20A
 +vT2N/CnCR5d55rA5vxd/xF/7VxVRSDEa2zzrOqe93Kdl4NfZuAW6lNIX93AXBawAAAA=
X-Change-ID: 20251118-yv5_revise_dts-12e10edd95d6
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763616361; l=1026;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=lg2jHrJxqbgoMaTKC4ITbkxnQHARHKleNAEPRdJp6v8=;
 b=rT/dVjbKgo2z9etA2QhmDgpnEgtLGOvLpItmQ1ufeR+WHVaWVtYQ8Nhh4/3EdyX0Cnixja2eV
 Q8efbvA4UxrBtX8ICLtcXY24k4Wq4dmaXAAKyzBKi7nCsPs2xXp7q5c
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=

Summary:
Revise linux device tree entry related to Meta (Facebook) Yosemite5.

Changes in v2:
- Add ipmb node for OCP debug card
- Link to v1: https://lore.kernel.org/r/20251118-yv5_revise_dts-v1-0-fcd6b44b4497@gmail.com

Changes in v1:
- Increase i2c4/i2c12 bus speed to 400 kHz
- Update sensor configuration
- Rename sgpio P0_I3C_APML_ALERT_L

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
Kevin Tung (4):
      ARM: dts: aspeed: yosemite5: Increase i2c4/i2c12 bus speed to 400 kHz
      ARM: dts: aspeed: yosemite5: Update sensor configuration
      ARM: dts: aspeed: yosemite5: Rename sgpio P0_I3C_APML_ALERT_L
      ARM: dts: aspeed: yosemite5: Add ipmb node for OCP debug card

 .../dts/aspeed/aspeed-bmc-facebook-yosemite5.dts   | 25 +++++++++-------------
 1 file changed, 10 insertions(+), 15 deletions(-)
---
base-commit: 111e542d267576de402d0836603e1def2b60316b
change-id: 20251118-yv5_revise_dts-12e10edd95d6

Best regards,
-- 
Kevin Tung <kevin.tung.openbmc@gmail.com>



Return-Path: <devicetree+bounces-135697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE77A01BEA
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 22:08:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B565F18836BF
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 21:08:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1634194A74;
	Sun,  5 Jan 2025 21:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DZ+pYUwj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C3917543;
	Sun,  5 Jan 2025 21:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736111297; cv=none; b=agMSD0jqbObH5SYveKoLRMp+/pSH+3XteRZUC8QA6rrCelI17IEYyKDZK7Fe+PJgjaWzBiR+Au4K0/YcLxN3Sizcbyk+is2Dn7gdnWzTsl3Im92PnFx2OTw2hJSAzoDi6ZGxTv6reVJpiGD78tzS281JmDtw0qbypuro1GjELjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736111297; c=relaxed/simple;
	bh=sLcOvAjZb7/WOSHRnPLOHxWvcuoYjh6Be8Wj9gfvfF4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Iq8h9B8o2kZSF6/s3s4fzIWyF6OPSXFNNn6zBpBcLuLE35qm1DCyqer4dnRT6GCUoC3WoDvQTgWFx+Juv+gHnwl6MWc64KCC32FCY8jGrMNeJOBO73qJ8RqkyX0KIpiTgkq1ABJ6b34ik2zy7EdUVBg2AM5HzEQZFbjcDzG6GQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DZ+pYUwj; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53e3a37ae07so14487596e87.3;
        Sun, 05 Jan 2025 13:08:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736111294; x=1736716094; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OGc6+zqQ7ZdEycYdKOJUWB6YUgheiEtIDWzCrRZKe9g=;
        b=DZ+pYUwj8S6FNejCx7qtTZbV/FMgTC2BTQzLHVekkERsfVKavIFydUJN257yHwC3oL
         CSZICnaM35tnCh2CBmbQ/+vAkNVY+TCUThD0BDQoT2cuiJ6D7v9uAMqzyJHKa9Y709aB
         6G+PI4AD1MuD6FM34WgybYhxvsz6ScGklIfc7ie4U+zwdE9ALOIAg+vWxx1XeJW9KDl6
         QwGkC5SIO5dt0K2tKOMBeSm+I89gdKN9qVdAIYFLq3G/YCLLS/LMk5QX1YiZj0svK6Qg
         aVJr21jv54YwopJrXekSeCqs2S2Z5AERz5THniG2PaaA++O90V6tdEqQOHFj6+WflVEz
         j2hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736111294; x=1736716094;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OGc6+zqQ7ZdEycYdKOJUWB6YUgheiEtIDWzCrRZKe9g=;
        b=m588/w+kHv0pWieuWIGK5vgOHNokv9Q4P0gagqaQNc8a4jwmqysuRlE7YibsXz182X
         cjiro7qFVvg12UW5BfaUQMLGfBAMPZfugOT2tHftTD3KwZKHwOHMAcUD1hAb1t9D7Vrd
         8bybPDsuNGk1k/pIRjSNax3HxqhrDENLKgRli26yMbA/H+j7hbGjYvcE2MDMUanWtvO9
         /DBiy09iZBseUYA6OBJlfWCEiEMmVxqmR3JGK+qO65e76/goqnenGNNLcPIAbxy3d+8/
         dnKdNlJLScnwa/08VgOob3WAtLod6Gi17vBm8yM0BOHc352LqBjup+rZtCVOrdjQbOrV
         h0jA==
X-Forwarded-Encrypted: i=1; AJvYcCWqqTf6ALRsWLU74yvzqGyTxmnl2+SZDNzSg9TTzhqdS9EYS+ojaI8HcputdqN/gYPYBsIDtMUOh0LtTcw=@vger.kernel.org
X-Gm-Message-State: AOJu0YwMUc6uKpK9frzY2VH1SDfxOqXUZTMTqfKOxrATfsv7FhL5EVwn
	x9lgGhCOhP3dii+j1CA487iQc5NMtlzONG20fw3JcCE7qcxdvJQj
X-Gm-Gg: ASbGncvIj4Ozns0AV2vDyMoVbsk+NGSRRR/kh4YnlEPJiHB80jbGr9OnIVkGnRLQBBE
	weQ4kMsieWTTG2BteKNbbYPa4tA8wQBrQyN+LeX7TfYwU2yNRNKYbk92wF5ZA9eqRgWhxNdCMfW
	m72/K2lxmZYlcHlNltp+sOjnWQcBAXxKA0su7AH5zfdpxU70Z0ipaHOvJjbfCYg1MoZVvnZAweX
	PmbwDsUJjQOBQdI4VCyF4r9ZHve1Kftb30Yof8uJLtMgJzDGhJO
X-Google-Smtp-Source: AGHT+IElcDOD5aCIU5kdEC0BbRI70nW6vt+Kv5a+8O8dDy/uTWPiCqctUqNQioF2Q6kUII8MAlBR4Q==
X-Received: by 2002:a05:6512:1193:b0:540:1e17:10eb with SMTP id 2adb3069b0e04-5422957acaamr16138198e87.48.1736111293939;
        Sun, 05 Jan 2025 13:08:13 -0800 (PST)
Received: from [10.42.0.1] ([185.204.1.212])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223813687sm4773419e87.137.2025.01.05.13.08.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 13:08:12 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Subject: [PATCH 0/2] arm64: dts: rockchip: Add H96 Max V58 (RK3588 based TV
 box)
Date: Mon, 06 Jan 2025 01:07:16 +0400
Message-Id: <20250106-rk3588-h96-max-v58-v1-0-d25255f851fc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIT0emcC/x3MTQqAIBBA4avErBtISxm7SrQoG2uIflCIILp70
 vJbvPdA4iicoC0eiHxJkmPPUGUBfhn2mVGmbNCVbiqrCONaGyJcnMVtuPEyhF57NQZi65yFHJ6
 Rg9z/tOvf9wMj8ZWfZAAAAA==
X-Change-ID: 20240618-rk3588-h96-max-v58-c2c1bf8e6996
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736111288; l=1673;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=sLcOvAjZb7/WOSHRnPLOHxWvcuoYjh6Be8Wj9gfvfF4=;
 b=0f7T4qFoBCj5Ift+sKZfJocCUd7BL0zYMYeEKBxxDmzTs9NUfR2Asc3WTCFmNwWKAN527OGon
 GDxcFBZ5kZhC8YKzFaoLkN9QN95EcSuOa5diagABcHraGa6sBYE6v95
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=

H96 Max V58 is a compact TV box based on Rockchip RK3588 SoC [1]
that ships with Android by default. Add support for it.

Note that there is no publicly available hardware documentation,
nor vendor sources to be used as a reference, so this implementation
is best effort based on poking around my board and staring at the
decompiled stock DTB. It works for me, but improvement suggestions
are very much welcome.

HDMI output is not tested, but expected to work.

SPDIF output is not enabled (base RK3588 .dtsi needs amendment)

Auxiliary LED display is not enabled (no mainline driver available).
The controller used is FD6551 connected to GPIO3 RK_PC7 (clk) and
GPIO3 RK_PD0 (data), which happen to be the right pins for
i2c5m0_xfer pinctrl config, and thus might potentially be used with
the hardware I2C5 controller (to be verified). Out of tree userspace
driver is available at [2].

[1] https://www.h96tvbox.com/product/h96max-v58/
[2] https://github.com/arthur-liberman/linux_openvfd/blob/master/driver/controllers/fd650.c

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
Alexey Charkov (2):
      dt-bindings: arm: rockchip: Add H96 Max V58 TV box
      arm64: dts: rockchip: Add H96 Max V58 TV Box based on RK3588 SoC

 .../devicetree/bindings/arm/rockchip.yaml          |   5 +
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 .../arm64/boot/dts/rockchip/rk3588-h96-max-v58.dts | 785 +++++++++++++++++++++
 3 files changed, 791 insertions(+)
---
base-commit: af349ca4d3f8659d84abc667125c826fda155109
change-id: 20240618-rk3588-h96-max-v58-c2c1bf8e6996

Best regards,
-- 
Alexey Charkov <alchark@gmail.com>



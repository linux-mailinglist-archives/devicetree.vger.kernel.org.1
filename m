Return-Path: <devicetree+bounces-204782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E967CB26CB4
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 18:42:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E88CB189DA1B
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 16:40:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 700A1266574;
	Thu, 14 Aug 2025 16:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VzKeESQ5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EDEB220F55
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 16:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755189608; cv=none; b=OMqxQ2gX6s1Po0D8DwPyUY3tkuOIN9/IqcyYN6A7EmQS3o641bIUOqqggeHyiwmpAZP/tg/CTMjobEn52bswzWfYCpOr+zU4+KtR/N0PfmEiRnoVjub2i9YjEERNmLqjR1Ir5vBGPM6sYwXhoA9A5xEOnsufrQ/IqmAgnmIlGA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755189608; c=relaxed/simple;
	bh=JiFvmiHjWP6u6etN63J3FXsi3vjW2q2BJjWaZLnnNW4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=QIydmY+kHvSXFROQeoVS36liR00bHjzS60Zgu33e08ojMOGPKck44QUl+kX3mIrVNfiC4z2XKWRiPHAoaDC5m2z9EuBDEN/kTPY/jMBuujhQ4NM3+L+avQGXzJb/B2Nzfy2xtxCiJo5VXut88af6k2BlKOQqM/06XCzWB117Yu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VzKeESQ5; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-333f92d682bso9745551fa.3
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:40:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755189604; x=1755794404; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CXqXRy64lVkrU01s43hs91VfZV7gllC24lvxhG5vy9k=;
        b=VzKeESQ54lJJRv7jC6RcV2+2dHOyXiMj0+AdSAj+w+9Q/kzJTfR/0oTP2nPCpfS0uJ
         n4dqlEq9Zd4eSxZ2znTftxlp7LC24+KQbM7QfRAYHanzbt9iouG41xYVBzHIK7tmrsLL
         Q75apniIFMMP0BISxxecRT6j27xeWm12FMoHKLoYq+49PkRCVYh65j0PId0cJEwRuKnU
         9K1+3uCIY3nqa84axyKBRU9ik7p4hdkVzJ07clzYkHusasnVFxOTPxoJNPQ/6XgLbhQI
         58pnUyBblI3LGtnFtRi3LF9deE0t5Cy7vWQ9L6F5edrV6AYD+TqbTF/XD3kmWoK9ZH3s
         H1JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755189604; x=1755794404;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CXqXRy64lVkrU01s43hs91VfZV7gllC24lvxhG5vy9k=;
        b=cNyMNvFCumQuzIP9yfKgM4eMcRQi+60u2L7GoEc8sJzQJVKT3fnXBC54nJT4apzJFJ
         OteKEzcZbD+ZSvQj3lHcUw5LpH8hp9XcYB4Uz1QiyrY3Wlpllc/dcA1V3os/225du1gF
         MILNcosGwecl2PaI3GYOYMkWff4ep28fM5B+WkJ/wcd/d8CYbElUGTxRXgRh0QRxrFyg
         g3n9CQYuaAalHKTxaiWDLpwRTteexr8er6+dHJw6ihvMYzhzKX897OLd/1LX+J9MSMak
         gtj/WGenYk9uLSe1Gig9bCfWG91gi/YwtUFSX7Jvp3UDKmz/gtSN9j5oZrqdE79EQIIR
         lyVQ==
X-Gm-Message-State: AOJu0YzGe3bNDOVLlkqNhpbHEyIgFSGqoLkaCRvZQDnKAygTujDF7MO+
	iViT0O0H8CM/bFlIeUTAUZ8+bf5bdaxZvbRg1My4n4Z+aMSm1oBZ5VxRfz131wvq12qprq4usdM
	TrxWoRFw=
X-Gm-Gg: ASbGncuFBHmd6ZLU4l45gyEVifVPF6o3D2PkrWRI3HTrfeDUlReuLj6lfYCWphjpGwG
	nEGOwnTi+VemMJkA7x8dsXrEgLEXZfYU9wtqvFd6PcwzGKqSDR/+VRlTlUx6rwXMngJl0Txq1h8
	XcygOqBihxui39Y4Zr9S0pz1zkwwmO3ZrwcZsvpsY67nonvoc9drJpPbOmHBZCrPEbRqpoUdBYl
	8iqdPy2+jshooD5SWJIDB8yjQTCxCcgjANSeTBdIZWMczgmQSJwfDzrPrkr5qbYtHvzyqoAKser
	Z0oywVq4PA7djJuQChV8pKocDnMRFkPBl9+Go6ijJy/w0OKImZzTwIP0ay9U4lrd06bitaw5coA
	tZN4r7dWxl94IhlapW6E/K/TDqrATyE4lw9Nulg==
X-Google-Smtp-Source: AGHT+IHxhrU+W50kg1h1oEpYS6nfIoOslP5saeGlz78QeOuf0ByQmiZtTzh2afxN/6vUajzqnVqAdA==
X-Received: by 2002:a2e:9901:0:b0:32a:6e77:3e57 with SMTP id 38308e7fff4ca-333fa845485mr8951411fa.21.1755189604293;
        Thu, 14 Aug 2025 09:40:04 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-333f8e1c71fsm3296301fa.48.2025.08.14.09.40.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 09:40:03 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 0/3] ARM: dts: ixp4xx: Add device trees for MI424WR
Date: Thu, 14 Aug 2025 18:40:02 +0200
Message-Id: <20250814-ixp4xx-mi424wr-dts-v1-0-b7c10f3c4193@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGIRnmgC/x3MQQqAIBBA0avIrBswsZCuEi1Ex5pFFholhHdPW
 r7F/y9kSkwZJvFCopszH7Gh7wS4zcaVkH0zKKkGaXqNXE5dCu6slX4S+iujDRQGJ6UfjYcWnok
 Cl386L7V+FmZjAmQAAAA=
X-Change-ID: 20250814-ixp4xx-mi424wr-dts-afef5c00d68d
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Imre Kaloz <kaloz@openwrt.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

This patch series adds device trees for Actiontec MI424WR
versions A, C and D.

These routers are quite common in the Americas and uses
the IXP4xx SoC.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Linus Walleij (3):
      dt-bindings: Add Actiontec vendor prefix
      dt-bindings: arm: List actiontec devices
      ARM: dts: Add ixp4xx Actiontec MI424WR device trees

 .../devicetree/bindings/arm/intel-ixp4xx.yaml      |   2 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm/boot/dts/intel/ixp/Makefile               |   2 +
 .../ixp/intel-ixp42x-actiontec-mi424wr-ac.dts      |  37 +++
 .../intel/ixp/intel-ixp42x-actiontec-mi424wr-d.dts |  38 +++
 .../intel/ixp/intel-ixp42x-actiontec-mi424wr.dtsi  | 273 +++++++++++++++++++++
 6 files changed, 354 insertions(+)
---
base-commit: 8f5ae30d69d7543eee0d70083daf4de8fe15d585
change-id: 20250814-ixp4xx-mi424wr-dts-afef5c00d68d

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>



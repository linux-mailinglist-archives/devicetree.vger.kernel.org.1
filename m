Return-Path: <devicetree+bounces-124964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 694689DA676
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 12:03:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2A7AAB2A9AA
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 11:01:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C8D81EC014;
	Wed, 27 Nov 2024 11:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kI4G/oGp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0441EBFED
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 11:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732705303; cv=none; b=hE4en4N2vSpNqmU6VffgCYUhOdTx/6mmjSAWD7iCjUGGrcnUEFAS9rCOlgdZres+M44IJa//g4UgPKohALsdnqQbX9SisOFzSO2hWeKKRCd+dfvZSdJrY+/0PYpD5z4ENsYv7tb3II8Yh8RFV07jqdemdHkAUYAU9mKyUYIhnd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732705303; c=relaxed/simple;
	bh=LYkr9r33Y5XKXLryrepschQpm2XBjm1H7bQnk6ENV30=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=JgYG1WsaWboBAGyny2YgjmPzP/u4GV1+J8yZUSb697gX4YgguJ63A1ahvJjXB8vPNEceoAgNKZZTUMyU7LBb9ZHHaNTPWQXG62xnsRRhEfB35whvl5IuuHU09FiHZOn6I7l0pKkucyHq60x72iKi7t8W5Sdawkc+H+nECx8jgc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kI4G/oGp; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-aa53ebdf3caso622693666b.2
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 03:01:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732705300; x=1733310100; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cBZr6b/b4WAms1NkzQ7R3CufwwQCxtnEtvUYSb5nf9M=;
        b=kI4G/oGpdd3nQMinjYs4IwQOVXqxFP7b4S9fakKeT1EN2p1X6TLXOzVb/tQZCd6ncR
         Rd5fCsaXUVngu7wJQ1x9SU4PMDB7PKhbSZkKYh9MOwkn8xxWvWEeuqQFGHomPm2AzNdn
         0pB9456I/YiEWbSW1GVFvZwwH2hRheiMfAMp3aDF785o5cUqYjaqfCxvfUqxsQhI1qbl
         LTWWIUsdKOvVS0hAifU0Om5JEoMEFwW9OCnRcbiPBgRhkAw3iuTs3fWuSBAfgeD3Wz1F
         mrzqW/D/Myi+d+U6fuWlOv78+LU6XOyf/5G715QgckKJ+o9lMhmyrBv5kTPoiin0y/Vj
         5JhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732705300; x=1733310100;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cBZr6b/b4WAms1NkzQ7R3CufwwQCxtnEtvUYSb5nf9M=;
        b=kpXlkJieQInB58XVW3YCQctOj+xsqsmXeMovfS5crHW8zCReD5YTOCai3GJrl3+uBE
         zY7QphCKf94R9hyxQlwCGKKVv7k8DXq+YqibqbhOQCbRfTIIssYSGvIBcdcULVIw9xRb
         BA7IrkqFPuQp5PwIW7HyZCHgqcjxADHbfnyq70AMTMNSR3oPm6zoT1lJFjxpQ9oSOq57
         u3iCN7a1RGFT/1vbg+92Xb2wwA9qZpkl56wJLOISIweHSLRKqOGsQhefaI5Gl3znat9w
         QWgQW54BS1078iZLBHJ1hbfwVxP4JQyAGvJk2++mkOmGe/+L4S/OLOFmyUCUGFZmQGk5
         mOrA==
X-Forwarded-Encrypted: i=1; AJvYcCVkSCCtznas0LIhpnMHkLx+CKHmbwuW3Gn7RlscNnE7nkLcYy9EsOd1N/yJ6JM8eXsZR4R2joYyfycr@vger.kernel.org
X-Gm-Message-State: AOJu0YyfDg0elocqf2u5UnlEu4Hu3oqm/+AYggYydO78oRuXSiaOh0NA
	DsRREOagg3aKP1PWJkqkFbLdwQd5lTmhJ7Pu0XrJzdDJA06UMsk4b0udc8KoQVE=
X-Gm-Gg: ASbGncs8XKB0Z0VH/s7cE2oFoKFIBhdwOrjdh8qNLOmwFSppOX8w/7ZQ0LCW4SNKdm6
	hFrt1awERTVDSfYqRvpl727GW01J0zGh1Na8/jP8o+ZUGPVTVOKqFttKUFbDIASrLsub2XzJ52e
	InEcE2qHE3CzBTiyIeIk8IkO7PIRECD9ZtJHicywWyTvpEXqSKN+SOMXqDDZLYLi96cOzIyUTn5
	FpCJL60cdRzmrcYoV8LvTdhyx4rS+/xjMKKEIwwTkfnj5eHs51wA1J4WHHZ+NboYViE/TDMYkGh
	F/VQdDQIdJgxf29N3f6+BKTpbUEO17wkiw==
X-Google-Smtp-Source: AGHT+IG9LM9nsHo2L6pr+d8lMcVcqFeZ9vngEOtHUmqHJbBLX24wsz6VfzC5liy6xxjFk86MjURtsg==
X-Received: by 2002:a17:906:4ca:b0:aa5:b32:6966 with SMTP id a640c23a62f3a-aa581076b11mr207938666b.50.1732705300206;
        Wed, 27 Nov 2024 03:01:40 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa50b339612sm693762966b.84.2024.11.27.03.01.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 03:01:39 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH 0/6] Google Pixel 6 (oriole): TCPCI enablement & USB
 updates
Date: Wed, 27 Nov 2024 11:01:38 +0000
Message-Id: <20241127-gs101-phy-lanes-orientation-dts-v1-0-5222d8508b71@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIABL8RmcC/x2NQQqDQAwAvyI5N2CCRepXpIewphooq2yWUhH/b
 vA4h5k5wLWYOgzNAUV/5rbmAHo0kBbJs6JNwcAtd0Tc4+zUEm7Ljl/J6riGnqvU8HCqji9J2nf
 CiZ8JorIV/dj/Pozv87wAXVvef3EAAAA=
To: Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jagan Sridharan <badhri@google.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

Hi,

This series adds and enables the Maxim MAX77759 TCPCI for Google Pixel
6 (Oriole).

It relies on the bindings update proposed as part of
https://lore.kernel.org/r/20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org

With these patches, we allow the usb phy to detect usb cable
orientation, and we make it possible for the USB DWC3 core to enter
runtime suspend upon cable disconnect.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
André Draszik (6):
      arm64: defconfig: enable Maxim TCPCI driver
      dt-bindings: usb: max33359: add max77759 flavor
      arm64: dts: exynos: gs101: phy region for exynos5-usbdrd is larger
      arm64: dts: exynos: gs101: enable snps,dis_rxdet_inp3_quirk for DWC3
      arm64: dts: exynos: gs101-oriole: enable Maxim max77759 TCPCi
      arm64: dts: exynos: gs101-oriole: add pd-disable and typec-power-opmode

 .../devicetree/bindings/usb/maxim,max33359.yaml    |   8 +-
 arch/arm64/boot/dts/exynos/google/gs101-oriole.dts | 104 +++++++++++++++++++++
 arch/arm64/boot/dts/exynos/google/gs101.dtsi       |   3 +-
 arch/arm64/configs/defconfig                       |   1 +
 4 files changed, 113 insertions(+), 3 deletions(-)
---
base-commit: ed9a4ad6e5bd3a443e81446476718abebee47e82
change-id: 20241127-gs101-phy-lanes-orientation-dts-9ace74a2c25c

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>



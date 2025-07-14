Return-Path: <devicetree+bounces-196249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AD843B04A6F
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 00:21:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 32A791AA1031
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 22:21:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3ECC2777F1;
	Mon, 14 Jul 2025 22:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=scandent.com header.i=@scandent.com header.b="IjEmVHrg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4895103F
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 22:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752531494; cv=none; b=dgmxGBczRWZBN0wz35zlAdDGf8gxmW6Y8OxWEr5nodVEqK082dtFOc+f/kE87wWTYp+qxYeMSbM9gNDts40BXIvSbQRz0IXJN4Q17XGwTtfDHzOdCnx9DJai6lqBp+VHD3HYm2DLUfMqD8T1UsWNio4XXgqwq4AqdvlAtOPsjPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752531494; c=relaxed/simple;
	bh=RwujV69Z0YVNhTpEUfe+P6+s3YZYZVzhNocrYyKslC4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Ysx108SuUw0AwjNTA3UXrKLQG0xNo3SGpW/FSVsiVnCnFZzjFzVhFk3MGaSSPk94Tc5DmErlJW1RuPfvIwcs2tf6mDFXnS9QJ70vuLjrNN3GgERvWT8Rlua3+6CM+DlxJFbVNw5aeGJf1hXP3XNT8WlFXq7PIX0XK67P75PCTAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=scandent.com; spf=pass smtp.mailfrom=scandent.com; dkim=pass (2048-bit key) header.d=scandent.com header.i=@scandent.com header.b=IjEmVHrg; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=scandent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=scandent.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-4ab6e66ea68so16741681cf.1
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 15:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=scandent.com; s=google; t=1752531492; x=1753136292; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lzGt9wsOTtCPU11nB043+95KlCYKt0UXr8OMVRklspM=;
        b=IjEmVHrgAnaGGlC7bKZ6iIX9XXmtFkEuGYC7nmOOuicZLcqEG9Y8x7Outhgy9eKwFW
         /7UCZUgPfOl0Iqe/v0Vf3Q2iFn4Px8qZOXGl8WEd6cUozQlfBLHDuNuQscAjU8FHM96L
         DvJqE8LsRsFEeEAkNNh7eIBGaY8ysyKhCEk6WPQV9NXgQQ6jDM3CQBRtaXKDXbAH9ALQ
         qhvqIZEjriwxZXWWMy0x4YpPOVyugKttolotBqs2+r8t12KxViQL8TGSI9EDjXP126Jf
         QcDhz253apgGbfQ7aYotv04oiKb4GNrivSsLBpX6l6IRSIVnLtxk3HXv3FC/sy0+oiPX
         vqxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752531492; x=1753136292;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lzGt9wsOTtCPU11nB043+95KlCYKt0UXr8OMVRklspM=;
        b=wPeQXUVZd9oXWLGAV3XkPXlJ1OwfJ9AbEsT+Wb9nfy29GH4/1It1Oq6enNclqwJieS
         Oph7wSZ/AakxsAks0HH88vIp8SXoHSAltfib6zTo4W59E9jDA5BU6v4AssGwHGLXw6pc
         xZK07ZR4Xk7eRQMZPX06QIHDEfkUBfOpB6M/+gnRt2/U6EPW/vPZMsb56+IS1dwu564n
         QRRdX62WwucmFjjzE2g8faHtm2Y5KlJ72+f3Oo0dVRDTXSY6wVUb40PJc8Td+a5dH/wi
         HaLYc1budgAs3gLP/L0Ebq6UgynLxVa4qKN6C2p5UVGcloc3k2EiG18XCL9T35liZ37r
         KNbA==
X-Gm-Message-State: AOJu0YwVUKYI8QvRhwtvcb9lFbTe/RkREb/Cma/Owj4ZCBxee7tV7xZc
	150y3OdEcQv+GhVxZ2Oo7bi9D1f5SgU3qycX9SS6lh94rcd2iDTjmUYNaSqmGM957w8=
X-Gm-Gg: ASbGncuxdTVWdHIG5L1ioOwtt0f9zzWCaZV6moxL//D235/OHn7iFRf6Jd7w26SMwXG
	VMcQ5aHbWrWN8aIaBPVcaBEbiSX3wBjPqzMtwfBI3zRdX3FmM4oryfghgnTLPfqfzo8+vidSOh8
	dbcovUgcj9vwgvzcQ0bSvbD2uPoH6wJXo5sBkaR7DVcrRCPKObTBjYc5nv81oVhhqIupRA9Ko/g
	nWozrmmFUg8VhC+edhJWR3ct6xhzYN97kSbmO8vUVEPa+PlogxkqRNKygm1cShGOF0zqaQOvP9Y
	ZQfCrZTWWKyFu9GLbq78PyM2svHLTyQ0xpfmBZteRIJAecXJaX6rxbZzw/7Jz2xOYnDg3kClbyx
	DWi4ZH4Bh+bmbl9cfmplastxMnakkFqPDwqXtA7BVlv6gIaNW
X-Google-Smtp-Source: AGHT+IGlRZA/qnX4ZWdj86YPCTr54hQC6VI5zp1c32i2B6ksY/OHCD68yCydeS/hNCHpt55KNY22Yg==
X-Received: by 2002:ac8:5dc6:0:b0:4ab:6b08:9db8 with SMTP id d75a77b69052e-4ab6b08ad01mr107012131cf.11.1752531491791;
        Mon, 14 Jul 2025 15:18:11 -0700 (PDT)
Received: from vserver (ool-44c5118c.dyn.optonline.net. [68.197.17.140])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ab3a1ceae0sm37822021cf.25.2025.07.14.15.18.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 15:18:11 -0700 (PDT)
From: Richard Yao <richard@scandent.com>
To: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Akshay Athalye <akshay@scandent.com>,
	Richard Yao <richard@scandent.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Andre Przywara <andre.przywara@arm.com>,
	Junhao Xie <bigfoot@classfun.cn>,
	Caleb James DeLisle <cjd@cjdns.fr>,
	Kever Yang <kever.yang@rock-chips.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH v3 0/3] drm/panel: ilitek-ili9881c: Add Tianxianwei TWX700100S0
Date: Mon, 14 Jul 2025 18:17:58 -0400
Message-ID: <20250714221804.25691-1-richard@scandent.com>
X-Mailer: git-send-email 2.50.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

This series adds support for the Tianxianwei TWX700100S0 panel. The
first patch adds the Tianxianwei vendor to the vendor prefixes yaml
file.  The second patch documents the DT binding. The third patch makes
fairly standard changes to the ili9881c driver.

Runtime testing and validation was done using a patched rpi-6.12.36-v8
kernel on a CM4 using a custom carrier board designed by Scandent.

I have confirmed in writing with Tianxianwei that this patch series may
be released under the GPL after sending them an early draft for review.
This should be superfluous given my signed-off, but I want to make it
clear that I did not assume fair use when providing signed-off.

Changes in v3:
  - Fixed squash artifact in the third patch's commit message.
  - Changed v1 link to use lkml.org to address mailing list rejection
    due to "HTML part".
  - Link to v2: https://lkml.org/lkml/2025/7/14/1504
Changes in v2:
  - Fixed typos in romanizations of Chinese names:
      Tianxinwei -> Tianxianwei
      Shenzen -> Shenzhen
  - Link to v1: https://lkml.org/lkml/2025/7/14/1389

Cc: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Andre Przywara <andre.przywara@arm.com>
Cc: Junhao Xie <bigfoot@classfun.cn>
Cc: Caleb James DeLisle <cjd@cjdns.fr>
Cc: Kever Yang <kever.yang@rock-chips.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>
Cc: David Airlie <airlied@gmail.com>
Cc: Simona Vetter <simona@ffwll.ch>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Richard Yao <richard@scandent.com>
---
Richard Yao (3):
  dt-bindings: vendor-prefixes: Add Tianxianwei name
  dt-bindings: ilitek-ili9881c: Add Tianxianwei TWX700100S0 support
  drm/panel: ilitek-ili9881c: Add Tianxianwei TWX700100S0 support

 .../display/panel/ilitek,ili9881c.yaml        |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 drivers/gpu/drm/panel/panel-ilitek-ili9881c.c | 242 ++++++++++++++++++
 3 files changed, 245 insertions(+)

-- 
2.50.0



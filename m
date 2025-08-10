Return-Path: <devicetree+bounces-203010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 18247B1FBC7
	for <lists+devicetree@lfdr.de>; Sun, 10 Aug 2025 20:53:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7AB13B7D08
	for <lists+devicetree@lfdr.de>; Sun, 10 Aug 2025 18:53:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 078EB1FCCF8;
	Sun, 10 Aug 2025 18:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oA3TPUAz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0911F130A
	for <devicetree@vger.kernel.org>; Sun, 10 Aug 2025 18:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754851974; cv=none; b=U6lICtes109jPQHH0Km8N1G/Vhq+KwZRHfYuRQPv9/6cVJXSsXwnpUdpNbxMQasqg09j+pFebbScLy4Q42SY6HcK1wGIdoCH7XEtYYfSx7Gb891jOFkEjBYWJnwu7pqUFVpYFHyGtBGzTozkudBGugqMM9/AZT29HgQLpUrD2mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754851974; c=relaxed/simple;
	bh=dRZXfj9LhZMEywUBc7ebwIDMm4+bg+qctwAOluXIk/g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YyjscBWy0VSZPeDd732TAiXF/ZhGoX3JlML0mvtprUIufSMVdcbtkx5HUVUWIXdFX5pVsKtuVufp0f4Tjra+ZcAgxH3pmmB5nsYDGw6KaM8lEtBkjKvsGwt8gwIkxdGLm9qzVq8x+lK87HHSkDk76k6CzqcbJE36R3CsJoVeHyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oA3TPUAz; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-451d3f72391so29134915e9.3
        for <devicetree@vger.kernel.org>; Sun, 10 Aug 2025 11:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754851970; x=1755456770; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=usyaukZJ8v2Y8S8vh0sfNK3CloCXi6WSzcXm4cRl3cI=;
        b=oA3TPUAzBw/EqnTQx97GTVhy3K4ewX+jy2Q9LHGzSaVmn4/T+FXSIyZIqTexb4YYSO
         5jSsbur6y4vjOvW42EZtVTM0PisqF3/d6d3Fy0tam/87tkalXaVYlJnbtEFByV1pyTxt
         8Qv/7HtUSHB0+ios0K3ywk2403OXUxBRXe/1IMzONHs4L6SxqUt4X7+v5B2oYa7ZhpWE
         32YZoGCtBZGgC8Y2HX9iifGWRygSC3st9FP2JdrXHqC6KHsDHoNaSID28TH8z3+6IK/D
         o3ASKCbcLJ0QSrH8DDRjXczanyudlBV5bvWxmnpgKg17nlCjbr23o8c+jPBJZYBlccju
         dtxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754851970; x=1755456770;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=usyaukZJ8v2Y8S8vh0sfNK3CloCXi6WSzcXm4cRl3cI=;
        b=cuBxR2RL7DKvVeNcNSaJ7EIUNONeQBzQtGdL7M4HJaKm9HoPxCTYbgmDo8P3jpe+/m
         DIjBJv2p7ZJ5kfg0dC4aN8tQOSaFsZiEt/wJ6HNmIa/RfSwWAl4XDMf+kKoNWs0YWwTv
         olYhjEvwXkXq52IQ5H0Y3z0NTi+Dv8BoTD02nCJS24HHHhrSm8gZCYGp48eK6UgEwxbD
         sFxS74WzAuOPT429uIDolBNOt6Ru/rC2IYMBgEtvV34L9tR27XcKVt4Ko/Eod/8pMRSZ
         GSDgPKLtSNFmC9jsEDk715QN5W+SrJsqy4lDc4pAMNQ599enkVyvHLFxLNKd28B66Nv/
         oZ7w==
X-Forwarded-Encrypted: i=1; AJvYcCVjICWwLTy3LGHLcKvFz1kcahbwwM4cX+sXP4yMoNYuOIwLlz++c2JQcy9/cvkoYGXcNgNCVyPUv9L5@vger.kernel.org
X-Gm-Message-State: AOJu0YzWQWjelI8t++Mu75TqzdK88iIe+gOOzmoCR/hyCdPeD6LHXhLv
	56O7lsAgyVHYYfeE3yaCU5VEFnPF5HM3PoCyK77I4S4GvrU1Ux3IOMzBaWQcOiCbbAU=
X-Gm-Gg: ASbGncthrk9gDTSRv7MzV8XCifuypEB7WNRuJdw0061mIg8gjzNenHBDEWEJYIJnc4Q
	Hx+iPYcIGpHwnycVWvx7s/CSH94jbLZdlUx1Ntw3Ezm3GBXmin11Kp617erxm6j1u2B5V2FG17V
	Dhks/t1bbX3iFbg/JReHNj6a6dxRByPiM8125iH9yGRJv3ZPMyPJI+7I710DRkqGHqFZ/pyoV1M
	xmev0g7XGIBL0NgVA/BGLc8mNPQwKW9Ec9jxJ+ekdm9U1iPIZCLb2zlLCWGo5f5l1HA+/wn9aHW
	5hSdLPBRzizVVm50KCLLixIRvb5ugvv/kpqDC6th673F6zIVAa/Hr8jLdIE18SLpqSUhiECfxYI
	RUUocjmBDIrHrBVOzeHqnfKtLpT5iENM/yMjD6puApLCrfcO2SdTNmIrNhfo=
X-Google-Smtp-Source: AGHT+IFeTAPP7suUMfpcy6xs18xcCXvs6tFgkRdUdcK+N3WIVE5vhGpvbw+GdxaOl6/QKV6UOXPNGg==
X-Received: by 2002:a05:600c:a03:b0:458:a7b5:9f6c with SMTP id 5b1f17b1804b1-459f4eb4d05mr88238015e9.11.1754851970069;
        Sun, 10 Aug 2025 11:52:50 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459c58ed07fsm319461145e9.22.2025.08.10.11.52.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Aug 2025 11:52:49 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: ukleinek@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Frank.Li@nxp.com
Cc: linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ghennadi.Procopciuc@nxp.com,
	s32@nxp.com
Subject: [PATCH v1 0/2] Add the s32g2 and s32g3 FTM PWM support
Date: Sun, 10 Aug 2025 20:52:16 +0200
Message-ID: <20250810185221.2767567-1-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The NXP Automotive platform s32g2 and s32g3 have on their board a
FlexTimer (FTM) dedicated for the PWM. The same IP is found on the
Freescale Vybrid Family and the i.MX8 SoCs. However, there is a small
difference with some registers not available on the s32g2/3 and 6
channels instead of 8.

These two patches provide the DT bindings for the s32g2/3 compatible
strings and the code to deal with the FTM difference.

Daniel Lezcano (1):
  dt: bindings: fsl,vf610-ftm-pwm: Add compatible for s32g2 and s32g3

Ghennadi Procopciuc (1):
  pwm: Add the S32G support in the Freescale FTM driver

 .../bindings/pwm/fsl,vf610-ftm-pwm.yaml       | 11 +++--
 drivers/pwm/pwm-fsl-ftm.c                     | 42 ++++++++++++++++++-
 2 files changed, 48 insertions(+), 5 deletions(-)

-- 
2.43.0



Return-Path: <devicetree+bounces-203952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EB994B2397D
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 22:01:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 032506E2615
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 20:01:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6E5B2D0626;
	Tue, 12 Aug 2025 20:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O/XcwEb4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C5C2D0601
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 20:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755028885; cv=none; b=o95T6Eu9CITgtBqe3k/LGj8wDV6/9E33h9gVVmqVm8VQHEp7CcelLN1N2j48cY94Rzr1flqWaHBGHCGBbiQM5qXLhZ1TxwuAqGo3leBOcUk2SpN1Ayie94Yerjuqqf72R1JeXuEwnsFhzTz2cKoWFwgE0+l75A99xKGL275kk7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755028885; c=relaxed/simple;
	bh=ZwMx34V9OWcExmMpXYmSZnw1baiVNmb8joVWoNfeyq4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=f4Njzgf/EpOYGzccz46FGDPAGk2IpGzmIkdTAa/XxpVY9Fq7Uj0Mezl+C4RwDD9m6tvDY5apAuJvzo9ugUmkhdBccIhP3cBzTKIYoBSuU8ASCvIaRzyIJ6ju2euJV567ZBwcNF7gQ8ShWiCk2Tx/ITbZ6agCvcLXRTyLrhoM08o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O/XcwEb4; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3b78d13bf10so5945963f8f.1
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 13:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755028881; x=1755633681; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=U1y+cWIfL3TjiwtoJYCWMjcfzPHs2ohpLn5LEWTCz7g=;
        b=O/XcwEb4yUqXO2ucKljqp7CZ+HgG22TnzVScVR+MLWYL21xJCv3ssKALH0EnHrJZfD
         lIX/hIHbvksSlgQgFzPo8jP6LpQCTwKQn2jJ5swIbW5jMP4FdzAqbbPsu6YeF5crxRC0
         mVNYpQhpgSsL1Qss7cZ6DCkVcaevbyCSGqyiUw6bi7id8xj35Wo9WlTCVgWGrPTCkEgf
         KnWR9EXjXo8bG42zyU8Nqjp4TlTtmb7R7gBzD2sOZLVwrRjDTmGeL+DXdd6732UEmhjE
         OiTFbrec/txx8TTWbGMN7PPxdy4Q558TW12ScrdxnjvFxL+0Mi8AkIKf+kvlVbYQLlDG
         lf8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755028881; x=1755633681;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U1y+cWIfL3TjiwtoJYCWMjcfzPHs2ohpLn5LEWTCz7g=;
        b=L/KoZ7b8PTKRpRHgZ/fKBQj8BwHNjyKbxgHYWQS1Rtq5p4h0x6djycr2TIp5DC4eCJ
         rPx4kBPXjrc//MvC9cEhwF3iSVytDe6LcBPSmpz7hZwEiwPbY5fJiZxT1Cm72UD0AycA
         ZiJp0dlN3StI4QaEegZcQUCXLUVvpMTAq2areSXkN5sFTDXWQspk/Rn6QzWa3IhWd78h
         6X2b5xBjSw638+D9ZSwJlJlzPSZ90IYRRRnBJkso9Te+MdhRc2Nc1t9jWmLPFblzUP3Z
         rtO9mG9AOkQHsv6tTJPxHsL8KfjOPe6+Dg3SsQ2hHRJlmj46yUEETygaDai/kXVOW1ci
         zhwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUDLW1fDCzYpsaymKnecxd1ALVME0+zc9hkfRyjBw2PzzW/51nxdl/4ka+UtfmeveKvcuNUjdkYtWmO@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4RQf9HOUsmpXlPs/na5ZKgSBk2kg1+RFe3X57E1sJKgt5p4Bm
	hFj3tmiTPIfp7YTSygobOVYwP7d4VYtVvZ5E2X3g39/oBpS2O7SHxVzb5n2IkfpJD7Q=
X-Gm-Gg: ASbGncuqBw0e6iJLDQjqfnYKiZW3/bnu8ok+CRnH7ASssPoruqIno5ioDx1Sxojh4BQ
	vjpGUdejNeQ1Tv4vMr2rShUVpSyv5iF7wryxXE+Fn0PYRCDPNy2B/JPpc7jzp+06VnsDGFI+GZg
	X/ZsDGeRg/Pc4DVN/SKKeQgztFVEMRM3bMyp2PHcDaJIkGIZ+iRWA+m2XdFH4xPEKNFzEJGTOKJ
	N+Dwrbb0HvLimYI81MuJwjgqHTCMTmGpm2IKAj23BJvCq689mnFCxJdcGw8cn1l+RW5bIzd9U4K
	umPwjqad6q3Ey3uMAVm7dIJ4nR9o2Yu6PjB4p5cxtFBIzP+Y/GqVhsk1ELNSQ0A0qVJd+eJurwq
	BntFxs3EMvkmPrIlzMsTE9nRqSK93uKhvwM+ECb6HEWPbKdCVs/LWb6K3DVM=
X-Google-Smtp-Source: AGHT+IEMKTjUNjqR+kDkoO/Ph/EbTK5O4Z3JvXSkJvS/sag9rK4IKE3PjLUYL4y2eNGemDoFHXmgFA==
X-Received: by 2002:a05:6000:2f88:b0:3b7:9564:29c3 with SMTP id ffacd0b85a97d-3b917ec5398mr173299f8f.49.1755028880987;
        Tue, 12 Aug 2025 13:01:20 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c3abed3sm45143947f8f.10.2025.08.12.13.01.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 13:01:20 -0700 (PDT)
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
Subject: [PATCH v3 0/2] Add the s32g2 and s32g3 FTM PWM support
Date: Tue, 12 Aug 2025 22:00:34 +0200
Message-ID: <20250812200036.3432917-1-daniel.lezcano@linaro.org>
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

Changelog:
        v3:
	 - Fixed dt-bindings subject prefix
        v2:
	 - Merged the two booleans for the regmap holes check
	 - Clarified why this is needed in the changelog
	v1:
	 - Initial post

Daniel Lezcano (1):
  dt-bindings: pwm: fsl,vf610-ftm-pwm: Add compatible for s32g2 and
    s32g3

Ghennadi Procopciuc (1):
  pwm: Add the S32G support in the Freescale FTM driver

 .../bindings/pwm/fsl,vf610-ftm-pwm.yaml       | 11 ++++--
 drivers/pwm/pwm-fsl-ftm.c                     | 35 +++++++++++++++++--
 2 files changed, 41 insertions(+), 5 deletions(-)

-- 
2.43.0



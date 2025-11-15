Return-Path: <devicetree+bounces-239000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D89AC606F3
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 15:14:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9DFC73BCC30
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 14:14:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84C852FD665;
	Sat, 15 Nov 2025 14:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F1xyL9j3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F2E92FC896
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 14:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763216056; cv=none; b=fby6q6FtnJlqbb9Go7HgolimD2Y9GuGcQrFCHmES6Ms3ijS1OrHP1ea2pYj7/1zOteCd9Q5b6DCCG+FslA0xsvt56k/Vom7PGNgiEGNZvYIyF5VfSt6Z9DV5FWO960Gyu18qSPiYRMnR8KB+V7EyEA15csKUVz6WIyZ2AMreA+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763216056; c=relaxed/simple;
	bh=vHkwErpfhnxxsv02IcLQLhIy7rGI2ZohNEYD9R+2700=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=URMUt7IG/zkyp+z1O7g6wqFlrgiQNfvLnWfloli4DR2R173CIrgBtLEDx6lYOtOJoNYlrvRAELSitc7nYLk5EuDQRH8T4vbPScrnVOgNf9OxUOX9vzDrc8lvugWrzJ+DT5FttHS4z+WC7kb4WmSfRcZHn1j1oxfCc0tlWb43pp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F1xyL9j3; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-6431b0a1948so5085085a12.3
        for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 06:14:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763216053; x=1763820853; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tO9M0rK2lTwB71cTYp3Jpf3ChX0WRs4mW1Amu6CT/w0=;
        b=F1xyL9j3bVAI4D50nk9qeQaIyMUGfIQv6tshhTOti+C8+uJau+WD3MUt2hupYhc71e
         3AJlWmoQBcg050dOy6QQZLueyHrAfkd0csju6vq/iadsUooRN21Nl7OQdsUNxFfo+UFR
         RSFeE/30Xfk8vpnl0K7fUoqejZdux2ozeUNNLLvaffWN3L8QV5b1bs2xMhSL2Qmvm2Ti
         oB+BXG5BnpeIAHfmmRgihLa5YhtK6ti4EJeKGPt0i02inGe5h7YaawsogBRsJuEqDpk1
         m4f2iRKJV3/zZsyb/IMucWLK7WTUlk1lM+cD5YUcOI3vaxio5V08zheIC3l926/Vm5f2
         MraA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763216053; x=1763820853;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tO9M0rK2lTwB71cTYp3Jpf3ChX0WRs4mW1Amu6CT/w0=;
        b=naGka76AygSiqxkTwJo9fqPBkzzvIpOB6rK5YCVuOWvQeoJCk+3mFGkrxpra+Lhp65
         0ZKorr/pXuYgphOfdtJe0SV8uSRCvtJgTLkgo10GZMVKtqWwQCflyhIh9fCXh+Za+VsO
         ZlbdoM1073Gjkn5z8T3cHRB2hm26k6Ns/cZLo9QRtJ1SBDYsvUf3IeH+e94bPKY8bRJR
         7/21MDPx4Pl8a7tK2QKyl4l3dHrg3nQx0xv0FaTcSNdyx0orwaSmsI8405/RN+Vwi4by
         u+evBoQ3VyO1kl9CORWRQ7P+3TBYeqEbzYBjNhsLB1zqzcs+AFs7pFmew0rTSdHfUR2p
         wWYg==
X-Forwarded-Encrypted: i=1; AJvYcCUpTFR/9ULgFuUaY4EwWsK+Vjz4FzEcN8rxgRhMI6xnqSdwJxO9b9HCOu50TOxLJ211NtmA9UZZBwuv@vger.kernel.org
X-Gm-Message-State: AOJu0YwxhE/7odu4AFQC/gIpgOGXgTRGWndj6tJuSy3cwYQKplRhjdzn
	6oIRlXBocNw5s3Y+O3ZXRJ8i/WHjfJ1EYe73IHrApYF/Ui0XsfkYK70A
X-Gm-Gg: ASbGncsIOGdPGeMfeKjgAZy/5TFl0dlWTXSQ6niUTvtNd14kOGMjSQEWYmwx754o/tG
	LkbAoIlX9Mp1I4nvecKSYnmO/GqK8j8FMFLV6XHQQ60qRB/TYvK+fW+bO+Nm5UEgTuMrSxCHsVw
	hWplTls8LQlmJW7YzFZpN0v9uW+1dU0Ce5fqDVK1BA/I2aBf019QrqXjHhP5lpEtwNQwSf6l7He
	xOeT/yW1E6BmbRDyezV61UwdnysJu/2ql9YGa5HsvAnQZ+6tdqyhOyfathhgmbEvBw8s248mBC1
	r5FaR5rRfl85LaGW+N/wvps1z0rB+HpmfCu4RqO8lj2M398jQk/x0bs7fPuY7bdiY80GkkDae9R
	11eBDM0VoiAUbKuKowR18Y/zBYAy7GzuIoDpDazZ3X02W+ffvUXgGJ1rdNREIhbDRg9z5+AFbfL
	ZHUGytUVVy9gMcz/CIo1MMlqKjVbJ8BvNegFFFgyspeAJA6JXPbXbnCOAf
X-Google-Smtp-Source: AGHT+IFp+Taw68EnwDXLkJFHgktvsI4Q2Kx6E5s2D/JuSsEx96b8Hqrxaybkmry8X04xeOfOSy8LRw==
X-Received: by 2002:a17:907:25cd:b0:b72:6383:4c57 with SMTP id a640c23a62f3a-b7367b79f4fmr713777466b.55.1763216052568;
        Sat, 15 Nov 2025 06:14:12 -0800 (PST)
Received: from jernej-laptop (178-79-73-218.dynamic.telemach.net. [178.79.73.218])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fda933fsm606189866b.56.2025.11.15.06.14.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 06:14:12 -0800 (PST)
From: Jernej Skrabec <jernej.skrabec@gmail.com>
To: wens@csie.org,
	samuel@sholland.org
Cc: mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: [PATCH 0/7] drm/sun4i: update DE33 support
Date: Sat, 15 Nov 2025 15:13:40 +0100
Message-ID: <20251115141347.13087-1-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.51.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is second series out of tree which aims at properly introducing
support for H616 Display Engine 3.3. Previous series [1] reorganized
driver so proper DE33 support can be easily implemented.

H616 DE33 support was actually introduced a while back, but it was done
without fully understanding hardware design. Fortunately, no user of
H616 DE33 binding was introduced, so we have a chance to update bindings
and introduce proper DE33 support. Issue with existing binding is that it
considers planes as resource which is hardwired to each mixer as it was
done on older Display Engine generations (DE3 and lower). That is not the
case anymore. This series introduces new driver for planes management,
which allows doing proper plane assignments.

Remaining patches, which introduce all the missing bits to fully support
display pipeline on H616 SoC, will be sent once this series is merged.
WIP patches, which can be used for testing purposes, can be found at [2].

Please take a look.

Best regards,
Jernej

[1] https://lore.kernel.org/linux-sunxi/20251104180942.61538-1-jernej.skrabec@gmail.com/T/#t
[2] https://github.com/jernejsk/linux-1/commits/sun4i-drm-refactor/

Jernej Skrabec (7):
  drm/sun4i: Add support for DE33 CSC
  drm/sun4i: vi_layer: Limit formats for DE33
  clk: sunxi-ng: de2: Export register regmap for DE33
  dt-bindings: display: allwinner: Add DE33 planes
  drm/sun4i: Add planes driver
  dt-bindings: display: allwinner: Update H616 DE33 binding
  drm/sun4i: switch DE33 to new bindings

 .../allwinner,sun50i-h616-de33-planes.yaml    |  44 ++++
 .../allwinner,sun8i-a83t-de2-mixer.yaml       |  16 +-
 drivers/clk/sunxi-ng/ccu-sun8i-de2.c          |  53 ++++-
 drivers/gpu/drm/sun4i/Kconfig                 |   8 +
 drivers/gpu/drm/sun4i/Makefile                |   1 +
 drivers/gpu/drm/sun4i/sun50i_planes.c         | 205 ++++++++++++++++++
 drivers/gpu/drm/sun4i/sun50i_planes.h         |  43 ++++
 drivers/gpu/drm/sun4i/sun8i_csc.c             |  71 ++++++
 drivers/gpu/drm/sun4i/sun8i_csc.h             |   5 +
 drivers/gpu/drm/sun4i/sun8i_mixer.c           | 130 ++++++-----
 drivers/gpu/drm/sun4i/sun8i_mixer.h           |  10 +-
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c        |  36 ++-
 12 files changed, 543 insertions(+), 79 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun50i-h616-de33-planes.yaml
 create mode 100644 drivers/gpu/drm/sun4i/sun50i_planes.c
 create mode 100644 drivers/gpu/drm/sun4i/sun50i_planes.h

-- 
2.51.2



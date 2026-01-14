Return-Path: <devicetree+bounces-254991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B95D1E37C
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:49:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A06DB3119C07
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:44:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BCAF393DE7;
	Wed, 14 Jan 2026 10:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="aw+wos9Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC3635EDC7
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768387426; cv=none; b=PFQwKFXDY6wH3FDb19OVCgncuW7OFnV+6YJCrt+TtoOjXhGUzdiS+DasIypJ/Iv2DXQsAg5nTiikG21Yg2fmX2qnI816K17Y30Z4vffkqyCt4xZHow6pJU+ora7lqn8mLqcBwhb/8ceBgvTNIg6lMyWQ9CmmwZw3Z0o5FJt9TGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768387426; c=relaxed/simple;
	bh=1LKCtim2I2hT1s40Y3DrwuSpkWo5wr0ZX4RSBFzQkDY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=oF7vS2BJtL1NuGfVJjBOvAr9DQVhScgNskR0PzpfMQPb526yCkunEhaYia9C5hce7PtR06UE09MkDNzeccPtkwFaGmxBHWRcyRfhRvWxn+KSDqearp8EsrIq1zbHLbAr0MHyC9H+qJHZgmlkZwrZIyaeArNK3luAK0MjSl0nYDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=aw+wos9Z; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42fb4eeb482so4909924f8f.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:43:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768387419; x=1768992219; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BlRF7x3GPWhzaZswMOKLBWLPrgVCED+FleXataOYLuA=;
        b=aw+wos9ZxGGy4MFwOGzY+ubHMpuvwPYc4p1r5Z/otRndzDOMuz5+mOUqamoQK7Kzuo
         MpSyZkKkM7Zegl5WRixWCpfR8oex6lixK1OB5l8H/5NLCYWlQchCh6QSqfwQdXrBMYTL
         GvOH/zm+OsZ07hjS4LEvmYFgRt50hfPLgNVUAkr81ljOJcZNWDHn7xWs+MH5+9HYOuEX
         TOuNEKFLPA0L4Ftkq3KGH4zYxZU7ML1n9jHZwrErHGBer7sb/iNhYBZff6yPGNWo144F
         C3xUVMrNy2nQlGFprQszAEn9HAFOO0Ct4+IRepEisnxjpNZYMNc3rPxuPUICYq2Jppjq
         6/EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768387419; x=1768992219;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BlRF7x3GPWhzaZswMOKLBWLPrgVCED+FleXataOYLuA=;
        b=vMxeADDY+YMAGZdePWoPcHTJ2MzSqtAwKPTAXiMBt16rqAr94XRSUa5w+lCdXawiGO
         ur3tGqgjzxgy/2HOnuRqO7bRcM/eqfy55f7N8VFHOgMp4dDd8DxwYJ0RIDTcrk6ZEpl3
         XQxkOhXIGS39c+BRTjqxyfqg5rLbamqmL4B94TTZSHGEkxbSJdnIT2Jj93E0SVZmUgRf
         6FEXKxBvA5MM1d8AXE1MmchpXORKlPsI8e11Ywm9GEVNrjeblOcq1dAG64O8OYH0X8sM
         /SKzf4vIGeY/lyL/BtRznnGOcr0bQGLVnBH6MWAFL/C20BOXN3D+X6pjoztcwE/omixa
         qcWg==
X-Gm-Message-State: AOJu0YwV9idgRtYFzPrSLzgjaGNeXDnemXLs0YRYgF2bq5f1PxtLGWHt
	Kkrk0RmmuzrKKvxltYio14FsM7K0prwqYp88zLgo43sA0JrCgfc/0Xq7gunhfp2J9bY=
X-Gm-Gg: AY/fxX7pNOcGa+5cy1nC/hMISq2nPZMs2a+WvrPL9GKGvt1BTgCQKZBaNygt1UpNDAl
	Z/pS68bd8cSl+3e+PkgVwcyKhiA6oWBefuYUqU6XiCmfZJ6wgJYjq6uxTeXhlPoIdqdQsDO9avx
	E3dfC7448gW//MKEV596/OilUb/SAtXmmGPhmT9ecG+ctpg57M80A9c3fdy7bzOsEXSt+lXi2Vz
	1SXezIlrpzYkBE+xdbj6XgeQvNVf/XBh7wrQnOWv+sD3CyrNqQIkiOdKFMSlzUf+tvMeVekuqXr
	cnwTkGOLd61xyBZprmVQO4ISLn/MEt6pAADyu9LJCbLqT1/4652gowMpOP2ci+0/Q9rG2w4aJIN
	wkrMmYNil7KUjZkOnbg0Sg/on2UMxtgyFJed4tzouFTAxDwEZQLaiWa5Od5gKwdd9+5OmVaxnQH
	ncgxguf2O78Q==
X-Received: by 2002:a05:600c:548b:b0:477:b0b8:4dd0 with SMTP id 5b1f17b1804b1-47ee33948d1mr27636215e9.17.1768387419126;
        Wed, 14 Jan 2026 02:43:39 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:f2cc:bd72:2de3:86cd])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-47ee27cf06bsm18320395e9.4.2026.01.14.02.43.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 02:43:38 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
Subject: [PATCH v3 0/2] arm64: dts: amlogic: s4: mmc clock fixups
Date: Wed, 14 Jan 2026 11:43:10 +0100
Message-Id: <20260114-amlogic-s4-mmc-fixup-v3-0-a4d3e136b3f2@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAD5zZ2kC/4XNzQ6CMAzA8VchO1uzFeTDk+9hPGyjgyXgyKaLh
 PDuDk7GxHj8t+mvCwvkLQV2zhbmKdpg3T1FfsiY7uW9I7BtaoYcSy5EDnIcXGc1hALGUYOxr+c
 EDcq2Vg1XlSKWTidPabGz11vq3oaH8/P+JYpt+geMAjgIqYTRkhuF5qLkPFjl6ajdyDYz4qdT/
 HAwORU1Up2MQKzLL2dd1zeDp/ubAwEAAA==
X-Change-ID: 20260113-amlogic-s4-mmc-fixup-92ad8b90b7be
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>, Nick Xie <nick@khadas.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1261; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=1LKCtim2I2hT1s40Y3DrwuSpkWo5wr0ZX4RSBFzQkDY=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBpZ3NSZJZtIWJKLF9AEgh31t4Xmgs/V4YDd+dFa
 0XSd+pUp52JAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCaWdzUgAKCRDm/A8cN/La
 hZUjD/9xs+WWSkkahEPEw76BOMvXlY+wH1U4EcYR3okK0755L+Ix+DqOmP7l1pX1kw7lrDkLYLr
 zlkegkq8eEyv8Ia7LSGlR8Jmjq2+I8+sk9IUh+WMD7oKDVI5mZ6U559ORfS2g3vYXD+XZ5LJ8TC
 8Vu2FjUtF4+ovYxpiVdV6lJeIEOz/DNyaOFWdIlrRXp08FFl6czFmI3VQRF2yuHzEvvnbpcuSbX
 OhAEAPGyOqQ2x1XY8Oe61l8FYFJ3GTCN8UceZ3E9ys80BxAkBr32oaIN5tKILq8rzfB/rBP6KDs
 q3veyF23F3TRXrbAulemw7esd8lYg4/BGxWbyFebwZmp2eDXtTeduyhdxXUqbI3Sw+lKcYzUdIC
 gJUycJGUR2C6QFXp95eEwwA9QofkLVDMndVln7fDsCjOzyPWbD96plwtPgE31wkOEn2n9uSduLl
 FBNr9JtKnBiupNTh95URNfFsv1p7ENTP8No/mh/MWl5jjp4LKars5iBwvLvNWiYJzvql6CfgzBe
 dYMrTSwXoGzyRLyjPYLkm9ZQ5FzZjrhS6z8rOCD9Jp6YDvffFfQu2wmMS3kJY/hlXuXdKcPBmzM
 kGMZxoHi9FVTlGigcC8u5ALdVdRbuiOip+qTDhzFmNeHYli0nmhcQhVsrPh27odzMSvJpcTnMKc
 aKieeb0045kRqnA==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9

The patchset aims to address the issue raised here [1] for MMC B.

While checking this issue, I've found that MMC A and C also appear to be
improperly described in this platform's DT. The 2nd change fixes that.

To be on the safe side, the MMC clock should also be assigned on the other
SoCs. More changes will follow once things are sorted out for s4.

[1]: https://lore.kernel.org/linux-amlogic/20260113011931.40424-1-nick@khadas.com/

Changes in v3:
- Dropped useless assigned-clock-parents
- Link to v2: https://lore.kernel.org/r/20260114-amlogic-s4-mmc-fixup-v2-0-7e9ab5f12286@baylibre.com

Changes in v2:
- Collect Tested-by from Nick
- Fix some typos in the commit description
- Link to v1: https://lore.kernel.org/r/20260113-amlogic-s4-mmc-fixup-v1-0-1ab1fca0fb2f@baylibre.com

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
Jerome Brunet (2):
      arm64: dts: amlogic: s4: assign mmc b clock to 24MHz
      arm64: dts: amlogic: s4: fix mmc clock assignment

 arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)
---
base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
change-id: 20260113-amlogic-s4-mmc-fixup-92ad8b90b7be

Best regards,
-- 
Jerome



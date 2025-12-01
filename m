Return-Path: <devicetree+bounces-243273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id CA631C9637B
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 09:41:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B46EC3415E0
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 08:41:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B6912EBB8B;
	Mon,  1 Dec 2025 08:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dl8oQ0vQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392F52EC0B0
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 08:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764578508; cv=none; b=PtpAP+RiRyI4uwV4nm2jPjT3f0+BTIgAWvY/1O1ahmMbq+9j8FtgD8zGW7rnMav7QaZlpvlF+v2UUKqfzDJ5DnAF9AWG6RWFtH6roe6Iy6hRE/QUYHPkjr8YcS1+l6CjB2YCr5gb7Ouw+Tx2Lv0LchYsUMi7bYhnFaRrL9RSNV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764578508; c=relaxed/simple;
	bh=b5z2KcWqlk8MlSxqfSlKAGP4CEdSyRIaxzBpqjsPYr8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=SxkR9YQztUL4vydWU2lbRawkgvTo4rTAcXN9kk/10KH9PfFqbIkBuUhUV4YXIkjo5dUBpUIWG3+La33ErOAFJxLKgFAtO3ozCOGg+HEuZJ6h5ZKg3kh03GXGNuVtDgPZOzcb3PSZBDqCQMsZjDUSPsaSNQCjEdw7d28+75OEWps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dl8oQ0vQ; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47775fb6cb4so26379035e9.0
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 00:41:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764578504; x=1765183304; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=97C/Ev0rC6JcGUG0mR7bjVxQO49skG60GnX/roDGMIg=;
        b=dl8oQ0vQeRUYDBRgoKP8Guz32ip6v2Cc32sJ6tB/1nnKbquQxY8Wz5tMdTJId95AOD
         H2cNpIGQHCBIPUcFp97oFP0+HJZWvfQ463rH1adbAWupEWe+JXoVTF0Od2EP2cUPHvbg
         /khnKLj1g/w5f+9FGM4jfK+JmhmMLtewHkWufJ9TQ7EUN09WbSkEn61r+bgt7Xf4xw0N
         oNbnbSvvZbaV5msojM6uZ1cHNITp/eiPU1lxVR/b/41rpiQIe2M21+eFAUGddwW2uMIz
         KS0BF74bdZCt3p56QWQKusa9/pUtv11WQARhdInyAasMmbkBmnHBZVkLnnprytPVh1/8
         SSSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764578504; x=1765183304;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=97C/Ev0rC6JcGUG0mR7bjVxQO49skG60GnX/roDGMIg=;
        b=ezVrj2iSPSl6NCv/w56T02wkF3PTJazCo3FZPCi1rsjv0gU5XH2yM78ZKe1dSGMlns
         FfuwgfAYoIOsUmaExPOu1B6p5OIwtfVWQhxdO+V+fD8N2r92/nUdhFpYRGWG0oYd3ueP
         gcX0sZx38eUVarV0o3Pz3t/daDFKY/sfi3zIGb/f+S01/9mM7F/TT05lpHDL3+Ij+fZr
         JsemMwx6W0EuwVpb5UInIVO8pC/noUP2RSj1v64Af9e5o5s8178KilCEeOtTf7H4A95B
         0q7xAIeq8Cw+W4oFaExFzy+y2X4jk4AeBQjHY2pJg4Mi0l20Znh0H+m32HE4nXV2MI4I
         tURA==
X-Gm-Message-State: AOJu0Yy2E+iaAYCyQQKqsni6iUjPJ/y1xDqTLHCMhXp5aG9puwzhZQlL
	j+NpnDIHMhETN8zdq2fXXDwG4R4UrH6uDy+SPmjGuyWpOlEn5NeGpPm6gBwDzA==
X-Gm-Gg: ASbGncstnkvmoZ4ovQgczFb5YPBE2hnO7LFY/hdlyYVoiK6gg8pN+KafsM8dQ4Gc4nf
	nDyKkCrjVOElcAIx641682YA8z0S551qxebwrvWn9gy5UuHefsRDlC5qobS0hDpFcRfW2xaH8wB
	I+eU5b1S0FYelNto4Q0puOwPMvW3hZ5b1dCAIL+ww3G7OmySU1Zc3+lZawwn5vcjT/XpHK9GymH
	JvfOYspY6gw0P4PJPMXoFj+VpaphwbUJk7mXy+g2y+tDL6qV0PZnNF2DPPNwsBNJTJgivc+xwi0
	FFx1faukcStuDk+iOefnEl81fJ8apjhzJQGsgrArM09qo70PRv5MZTTGuUTlEIYU3dzWQ2SRNDW
	NSVJHu6YevdjZf1P8TsvNEV+M8YvtLouZ6wIZdzL7tBANaVCVcAkWzLJAFydSy0DX5ksJdpTcwD
	EUeCirGTM2H35umPMldGQ=
X-Google-Smtp-Source: AGHT+IEH4NM/QZPkR7gSqqML8vC0a2C+GrElrhCzDKUMsoc7T3w5nfVWTh1hYMq9aVozC1eD1dOZYg==
X-Received: by 2002:a05:600c:3590:b0:477:54f9:6ac2 with SMTP id 5b1f17b1804b1-477c104fc20mr429686755e9.0.1764578504373;
        Mon, 01 Dec 2025 00:41:44 -0800 (PST)
Received: from owl5.. ([2001:861:3201:3d10:4ab6:6efe:9b65:a6af])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1ca1a4bbsm24186087f8f.21.2025.12.01.00.41.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 00:41:43 -0800 (PST)
From: Gary Bisson <bisson.gary@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Gary Bisson <bisson.gary@gmail.com>
Subject: [PATCH 0/5] Add support for Ezurio MediaTek platforms
Date: Mon,  1 Dec 2025 09:41:35 +0100
Message-ID: <20251201084140.376058-1-bisson.gary@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds support for Ezurio MediaTek platforms called
"Tungsten". It includes support for MT8370-based Tungsten 510 and
MT8390-based Tungsten 700 SOMs.

Regards,

Gary Bisson (5):
  dt-bindings: vendor-prefixes: Add Ezurio LLC
  dt-bindings: arm: mediatek: Add ezurio,mt8370-tungsten-smarc
  dt-bindings: arm: mediatek: Add ezurio,mt8390-tungsten-smarc
  arm64: dts: mediatek: add device tree for Tungsten 510 board
  arm64: dts: mediatek: add device tree for Tungsten 700 board

 .../devicetree/bindings/arm/mediatek.yaml     |    2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
 arch/arm64/boot/dts/mediatek/Makefile         |    2 +
 .../dts/mediatek/mt8370-tungsten-smarc.dts    |   14 +
 .../dts/mediatek/mt8390-tungsten-smarc.dts    |   22 +
 .../dts/mediatek/mt83x0-tungsten-smarc.dtsi   | 1481 +++++++++++++++++
 6 files changed, 1523 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt83x0-tungsten-smarc.dtsi

-- 
2.43.0



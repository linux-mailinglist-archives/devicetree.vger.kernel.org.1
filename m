Return-Path: <devicetree+bounces-216983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E2087B569F2
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 16:57:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3880D189F3F1
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 14:56:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 312BD1D27B6;
	Sun, 14 Sep 2025 14:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eqxMqJ/k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AACD21767C
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 14:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757861769; cv=none; b=N8P2mNXKeDQ0TAMkOiNJMWf1MeHt/0n2bSUYsb7GrAJnlu2atrFYU54gk6g9cwUrwq7nZhSwxpouHykS8Mb6Qbu5KBmlTnvHGBzaA9uy0u+dDmCGm6NL+/kc/PGOSk40msp/bMNmD416h/FETx5k7fYGhMajPDHN8JtwzEeK+uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757861769; c=relaxed/simple;
	bh=GtzfjRzPIcRz3TlDPzQkhFG0JB1MRNghy5cWBQyLfB8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UnfvAEz0PIAHMqrsUjBVCR7+BCWWKQgURKZ3lSz+v2fofQvIV/f0U6aclk3F9onBokB5Lg+kNjYJl00CcnCz0PQT56GozSh0ykT3iLiNy3flix/JJ5FWNbCuNQZv4RHQgYM4pnrLyIG3kM2eA3mPGgCXeiYowMZ/VCsLNCGXEhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eqxMqJ/k; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3e7622483beso1659215f8f.3
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 07:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757861765; x=1758466565; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5qapOJtKxyY0MNaqH7qXtB8qqR3nlxKXEctWyb1YrfM=;
        b=eqxMqJ/kF3Uo4/Bf1swgDqKzqb1RNYU4W1rBYitmTmYaurnEh2yJQVCiwyGpfknVBw
         sbbjw8eVEHm6ZcSVXTNYNJl9x8QHDKk2AKP4/bT/nu732Okan662mosSeei4G6UTceYh
         YGGiNqCDBzYf21KUc7ufl3ztwjn5ETniKHGbZbu6P59KBrVw89Sq11Ur+6uYBQ9IRvD2
         qLXVPrVsEhJSep1r8Whv+axZNrbqILqIsAQGA6o6LIfhkPWCjJEnm4yDQXmxSMuhew0z
         TrYOs5guhHIoqcW+GB4AmW1jYcr95SD3XQ3ZBkc3BDWwumcrvLPRcpW9Pp7mHaK7ws1D
         r7ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757861765; x=1758466565;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5qapOJtKxyY0MNaqH7qXtB8qqR3nlxKXEctWyb1YrfM=;
        b=QOFscnQWnOfujQAtg1en0tmdV1bkousMD6biryRRsMvN/BTvrCy0Rgr+CghcxnfoMa
         2VuVLj15Ut95SZBDReBSMncG5p3pYwjAVfUDUFqwYUOKd9ZPao9ZE8fiYbUS9uEt3uon
         SS6wxEk8tISO3J9+7Xz+B1GC/NEg9Pb3j2hcowZgkt83cBEvW1QhOEwlowUdaHcwq7d2
         2SSQoVgFXN+1FY9s5m4aaSXiDR02A7vRCNgWFLU52TvGLuoKFPAyJZQ8z84aurWzBpts
         Sp1hdk6e5Z9MyDuMMaHyBKoiDblE9L53KCuFqEjByyuXdRledcRL6IzXNM68KVLTd7lw
         EYZw==
X-Forwarded-Encrypted: i=1; AJvYcCWaGBEkR2r6uZPoff/Wp+J6zxr9+FGaP5onPqc267OXOO8rQjpVkbwmaUiPEQxDNszGAGLhjm+aGXuJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxTZKf3595SWy2KJN+z0wBPeIdjTsK5zBFLgf46z3NtRlls7AcM
	H4afjY7BReLWjWc6quALJkTWUnh80pmGg7Z/Cj41ZGCYee4lnwz7asqQ
X-Gm-Gg: ASbGncsQ5O0fiwbLai9u+RJ55WXBGeBIXUo/3WEu/eLk0xxH8UdZqpdPE+Kgogbsl2C
	oKrsSHZP8dIC0zhL3jsq9QEShH8ZZnj6bH64CXvt8BZ92yRAAb4uF7CqFIcfg7vHaYfvVIqUVg8
	jKW7MfiT5PXTpQsEFghyocSNXUAw3QsnWBpomEi+fJK88OHPZW8TG7/TeCZ8MuykBfplIzL6llB
	tfRVRdwZb6Vocka87FLYe0fkkFVk9d2o+03qFk4Oyin3g4fSxbp35KZt2nBNYHhPiN3QPaBUq1n
	DICt8Ql71Q30ZBdjmu7qds7yWUmqLn2p6jGOcdLz8zqzRXA8iJI0i/3g7FrsAKUxBAcYWLaOQlq
	Jpl31DPz2WWO8FJBhg/vfRE/QDNEp2hMiiPdDDOoTySKKnFHSFapZvu3zSLJyJeR0lXLkxppp6w
	==
X-Google-Smtp-Source: AGHT+IFV/3JZpFtVZv9IijfdfagkrdK3hCy/JcOZd8MWso5BvseWKVtiecc8/LFjzi/kNn1nTtuUIw==
X-Received: by 2002:a05:6000:2486:b0:3e7:404f:685 with SMTP id ffacd0b85a97d-3e765a197ebmr8559306f8f.44.1757861765516;
        Sun, 14 Sep 2025 07:56:05 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e037d62besm136303475e9.21.2025.09.14.07.56.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 07:56:05 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] phy: exynos5-usbdrd: support the exynos8890 USBDRD
Date: Sun, 14 Sep 2025 17:55:53 +0300
Message-ID: <20250914145555.2631595-1-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hey folks,

This patchset adds support for the usbdrd phy for exynos8890. The SoC
features 2 dwc3 controllers and 2 usb phy controllers. One of the USBs
is used for DRD, whereas the second - for host. The host one seems to
only be used on the MV8890 SBC, which... I don't think anyone has,
really.

Code from this patchset can and will be reused for 8895 (I actually based
it on my old 8895 work but decided to upstream it)

Best regards,
Ivaylo

Changes in v2:
- fix up the messed series (a patch from another subsystem was accidentally
  sent)

Ivaylo Ivanov (2):
  dt-bindings: phy: samsung,usb3-drd-phy: add exynos8890 support
  phy: exynos5-usbdrd: support the exynos8890 USBDRD controller

 .../bindings/phy/samsung,usb3-drd-phy.yaml    |  25 +++
 drivers/phy/samsung/phy-exynos5-usbdrd.c      | 210 ++++++++++++++++++
 2 files changed, 235 insertions(+)

-- 
2.43.0



Return-Path: <devicetree+bounces-229212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C4CBF4FB0
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 09:34:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 75C383B38BE
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 07:34:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28EC92690D9;
	Tue, 21 Oct 2025 07:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="ZGmpJuog"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673A527B331
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 07:34:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761032073; cv=none; b=S20S8eAKSmEAeZuIKrJViC1NeKXBZ+a3PISqEF6rQNSFzZ55cNlWkCpJVAqgCTHc5ol283t6Yfs0ZjJPt/Dna3c8ElFOvgeW6nLWnq0xkS1bSJ+3ufWhOzXG3jjKPo/2PHxYm1e8k3i3vH4GNRLf1vkj5SuGYCbXvYZ/LyED3NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761032073; c=relaxed/simple;
	bh=Vvzttjl7tjT80pVkw2Q3B38I9Z2O/vYbEAO91Ciss1E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=KevcYp/argq9gsM2avaclAp7XpQEFAg4ZtN0pfbuPCVS6zRpEyIEoECSHHbrPo1rJYdc+tFJzAO1gx/kNeeE2QPEA7F35R45mJeJ0flxfOcYc4dM0MsbddEGZB3Xwl2Mqpn0hWDNpqXG/ucrzlpQcIKChBA4gjtGuSSM/bK/Lj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=ZGmpJuog; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 4990A4E4122A;
	Tue, 21 Oct 2025 07:34:28 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 1CC1A606DC;
	Tue, 21 Oct 2025 07:34:28 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 402C5102F23EB;
	Tue, 21 Oct 2025 09:34:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761032067; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=k8izWHbKqzUmMmmsOINNCS8K5Jl2Km69X2C2UUxs0cg=;
	b=ZGmpJuogJrl8d9hqJ14Da08yy4HUxuO2dbr85y1EEu7gyS6qJ3TJJasWI7GJ2F/1UG4YlP
	BnNz0nC1iZ7tyS0weufg11hOWdu0WV9Q+APgCPU8zTPd/SmIGvDbPkeAujbLb5QNPud+F5
	fyWh8O3C+Dp7Ic8ZFatjSxxovCCAzSlP/fncP0kHu0Wuxm6B42uAjSdoAlOqGJh2U3ZQsc
	JAALIU/etH8jVqPmB45g5i82QrAz6ktvRSDYHRXsm0i3GA4bujNZvCrH8ANlIAJmgrHgyA
	Da48R0IGjFrYHsxOHyVDir1Ct5dQoEti4CendgvBVrKCbWHrtrEub2RiH3MJ2w==
From: Herve Codina <herve.codina@bootlin.com>
To: Herve Codina <herve.codina@bootlin.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH 0/3] Add support for the Leadtek LTK028QV25BYL display panel
Date: Tue, 21 Oct 2025 09:34:02 +0200
Message-ID: <20251021073408.195959-1-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

Hi,

The Leadtek LTK08QV25BYL is a 2.8" 240x320 DSI display.

This series adds support for this device.

Best regards,
Hervé

Herve Codina (3):
  dt-bindings: display: panel: Add the Leadtek LTK08QV25BYL panel
  drm/panel: Add support for the Leadtek LTK08QV25BYL panel
  MAINTAINERS: Add the Leadtek LTK028QV25BYL panel driver entry

 .../display/panel/leadtek,ltk028qv25byl.yaml  |  55 ++++
 MAINTAINERS                                   |   7 +
 drivers/gpu/drm/panel/Kconfig                 |  12 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../drm/panel/panel-leadtek-ltk028qv25byl.c   | 304 ++++++++++++++++++
 5 files changed, 379 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/leadtek,ltk028qv25byl.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-leadtek-ltk028qv25byl.c

-- 
2.51.0



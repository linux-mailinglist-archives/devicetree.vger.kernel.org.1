Return-Path: <devicetree+bounces-124400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F559D8A7B
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 17:37:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 295DB163501
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 16:37:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DC061B4F14;
	Mon, 25 Nov 2024 16:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="X5nCCmgO"
X-Original-To: devicetree@vger.kernel.org
Received: from omta036.useast.a.cloudfilter.net (omta036.useast.a.cloudfilter.net [44.202.169.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD281ADFFE
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 16:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732552663; cv=none; b=i5gh2jCa9L2tCy8EM1q9WdzXmKD0X7QoIgX71esTuNkC/oGKu6yUS5yZs0Zeh+7VnmrDdXgLF4FD6/i7Mt64Jq/T2v2Jc+bONjojVDS1XsZBSGRH5CvPLSBYJWYv9i8OySMisjYlPrRb8uePfxjfHfrj0iF1dFis8kNmb66w4xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732552663; c=relaxed/simple;
	bh=wz0d94cMgk2jCkE3+IUok1zC9AYzGdZePCRqqYnV2r4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=u/pGCdk25Au5RGRSa5cojY7sgudKx9Nwt1ArRh2mS70xqxm3sw3wrGZaPNo0ZnKsHQg3in0CbPzkl0YF+fleJRFyLzaqZcDSuJWQdeCn6JmjO6/mz5TxHizV3GtHzbBQMVwCQBUkOYKQg2Qye8LEg9toH586W6B2w9j6O0wXrys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=X5nCCmgO; arc=none smtp.client-ip=44.202.169.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-6001a.ext.cloudfilter.net ([10.0.30.140])
	by cmsmtp with ESMTPS
	id FaGXt3M2biA19Fc5dtnvpG; Mon, 25 Nov 2024 16:37:34 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id Fc5atNur92Zy0Fc5btPkGm; Mon, 25 Nov 2024 16:37:32 +0000
X-Authority-Analysis: v=2.4 cv=Q4EZ4J2a c=1 sm=1 tr=0 ts=6744a7cc
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=VlfZXiiP6vEA:10 a=-pn6D5nKLtMA:10 a=e5mUnYsNAAAA:8
 a=vU9dKmh3AAAA:8 a=gA2AQYKQ_t_7bDYX36IA:9 a=QEXdDO2ut3YA:10
 a=Vxmtnl_E_bksehYqCbjh:22 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Cc:To:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-Id:Date:Subject:From:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=/R/8ktimgFp1MMUEeMZMmyHbqIU8LGVD2WqjYNvUGFE=; b=X5nCCmgOO/4M6SaRVygGHlMosa
	Z2I+Vtjx8InQ77ZPoBVhdqpZH03tjmrnott8KX8q+r2oExie8CzkwaNK9+Lrvf6kNTKRQm4V6O0pm
	1/ScB5APAJGpSWNMQcGYsojceruQ39f2QIh7RdwfNZT5pcXHV6zy56uvndWuKE9v+tTOMAYmbXs05
	1gaSl0P3Yf6ysklEzf9M1Ug0/xzPMm3XrUaW+lbzTLwobqtHYqYbwomBiXEVnAaO8FN7vO2n5FSSu
	EKnPl+cxmfewNjwnx+rkV+iHoahG8gOZ4jtmBD0pc4lsKQmEwKTB+VxfZ3I9qI08JbL+aJsrAbgEY
	6ta38asA==;
Received: from [122.165.245.213] (port=38110 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tFc5Y-001iXQ-1j;
	Mon, 25 Nov 2024 22:07:28 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Subject: [PATCH 0/2] drm/imagination: add reset handling
Date: Mon, 25 Nov 2024 22:07:02 +0530
Message-Id: <20241125-pvr-reset-v1-0-b437b8052948@linumiz.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAK6nRGcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDQyNT3YKyIt2i1OLUEl2DRCPztKTEVNPUpGQloPqCotS0zAqwWdGxtbU
 A7ZjsblsAAAA=
To: Frank Binns <frank.binns@imgtec.com>, 
 Matt Coster <matt.coster@imgtec.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Parthiban Nallathambi <parthiban@linumiz.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732552647; l=1066;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=wz0d94cMgk2jCkE3+IUok1zC9AYzGdZePCRqqYnV2r4=;
 b=prlb1b6SvCi9nOD4ZuXRpjN3ycPphZdm3U7z2CuLxBqeP06ltjCHnpgCBs4WZrh3PWYzKtMzq
 I3feoCWA7x9D0nKi9/eRCw41q3mazGk/LyHX3DVTG5x4ceRX/F5m/MQ
X-Developer-Key: i=parthiban@linumiz.com; a=ed25519;
 pk=PrcMZ/nwnHbeXNFUFUS833wF3DAX4hziDHEbBp1eNb8=
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1tFc5Y-001iXQ-1j
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:38110
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 6
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfBxZwrxWTd17/60S3Y87y1EJB6jBOi6u+tnXF2ySTH3wBIVn9e5oKlhv0l+l6qrdrG6nFGZ5ON7sJfXO6M6CQGGvDmsMhM1KsBEYYG4AGLrb6mLQlZid
 1HPgaboC2dnx3wccD3EEPbHTOu7tyXW+lCYOlldy5bhKFO2n+MBUIjGOcs/ktcKEQYlVZY9PBqdAhZKU2KlIp21aj6B2THMSLU4=

reset control is included in platforms from Allwinner, specifically
A133, A733. Add reset control from devicetree and these changes are
tested with A133 based helper board, which will be upstremed after
Allwinner power domain controller.

Firmware is used from [1].

[1]: https://gitlab.freedesktop.org/imagination/linux-firmware/-/issues/5

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
Parthiban Nallathambi (2):
      dt-bindings: gpu: add reset control property
      drm/imagination: add reset control support

 .../devicetree/bindings/gpu/img,powervr-rogue.yaml       |  3 +++
 drivers/gpu/drm/imagination/pvr_device.h                 |  8 ++++++++
 drivers/gpu/drm/imagination/pvr_drv.c                    |  5 +++++
 drivers/gpu/drm/imagination/pvr_power.c                  | 16 +++++++++++++++-
 4 files changed, 31 insertions(+), 1 deletion(-)
---
base-commit: adc218676eef25575469234709c2d87185ca223a
change-id: 20241125-pvr-reset-0a27fbae5ebc

Best regards,
-- 
Parthiban Nallathambi <parthiban@linumiz.com>



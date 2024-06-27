Return-Path: <devicetree+bounces-80889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6368B91AA91
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 17:09:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 21366288F8E
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 15:09:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B352198E73;
	Thu, 27 Jun 2024 15:09:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mainlining.org header.i=@mainlining.org header.b="dYJZRQGE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mainlining.org (static.95.144.75.5.clients.your-server.de [5.75.144.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55FE198E6C;
	Thu, 27 Jun 2024 15:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=5.75.144.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719500945; cv=none; b=sbSPPkMKCA+Lrwkk2DmiVx2ofL/pv9zVUTJ+XnUIHLW8j+DZb9CLO1zeUouaXxkDF/nfv7LURnsEbowejLvAJyXf3tQNHYSQ23kIpDY8f7tTbl1aNBNaeH0USwsAvVtBLnMf0OLz6UbhO5kwJpaR4WYD9Xkyw27g2W83HzGSUZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719500945; c=relaxed/simple;
	bh=JoOSiJtZunrz+OCSKVggQNZqebs0k2RruV6S9ufU4ks=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=apF7f6716QjpAY28GZcyWotHuD6bkw0W1DIJqsEpNTDkmdNKYpgM5wv+7Y/d1qlfhOwk522oDi2CS9SvJwoNalUY/rbrj0MZxPpU3tRfddqmVUYA4rfFQycIbs4oLSCkaujh7c3HP+o8gYlLs086CQ48qeeO1Y0G7KZUWP9H8Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mainlining.org; spf=pass smtp.mailfrom=mainlining.org; dkim=pass (2048-bit key) header.d=mainlining.org header.i=@mainlining.org header.b=dYJZRQGE; arc=none smtp.client-ip=5.75.144.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mainlining.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mainlining.org
Received: from [192.168.1.130] (BC2492F3.dsl.pool.telekom.hu [188.36.146.243])
	by mail.mainlining.org (Postfix) with ESMTPSA id A07B1DAC33;
	Thu, 27 Jun 2024 15:08:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mainlining.org;
	s=psm; t=1719500934;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ass3ueSG+2KqItaVWFmW7+4bd32BMf/+ocWnJZumNqA=;
	b=dYJZRQGET5uu5D1+rvf1tAxQsj1UNTeTd3oQQYCKkrt2IqP9HQ4/mkljv9AoI9EXmHoBUK
	d4r1OwMFb/z5r/wnQBf4EC2cODMbiKJJ1OLxtYlKsYW8LTg9ClLrF/Pg4smRuKCsmsyfpd
	uYP3KGCAMuP9TZmrClVMBGwcnnBOGwKlPT7W76/lP7p1O5O32KQCExSqa1RrA8KwZh7lDx
	fLF04DdIv8TxdTNOfYlEo13BJrdYGY+9bHipLOX3PdfYvgMy2o2W1WTEyOjgYwHepscP4w
	b2l7Z69ZMM1nFNlYf7uEFnuB665+X8txLi3nggCwA37Rc6TcoOitaI7EhLGmlQ==
From: =?utf-8?q?Barnab=C3=A1s_Cz=C3=A9m=C3=A1n?= <barnabas.czeman@mainlining.org>
Subject: [PATCH v2 0/2] Add interconnect driver for MSM8953/SDM450/SDM632
Date: Thu, 27 Jun 2024 17:08:45 +0200
Message-Id: <20240627-msm8953-interconnect-v2-0-b4940a8eab69@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAH2AfWYC/22NQQqDMBBFryKzbkoyUbFd9R7FhYlTHagTSURax
 Ls3Fbrr8j3472+QKDIluBYbRFo5cZAMeCrAj50MpLjPDKix1DVWakpTc6msYlko+iBCflGkrS/
 JYdPrCvJ0jvTg15G9t5lHTkuI7+NlNV/7C9b/g6tRWhE5azpEa5y+TR3Lk4VlOIc4QLvv+wc1O
 b2qvQAAAA==
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Barnab=C3=A1s_Cz=C3=A9m=C3=A1n?= <barnabas.czeman@mainlining.org>, 
 Vladimir Lypak <vladimir.lypak@gmail.com>
X-Mailer: b4 0.14.0

This patch series add interconnect driver for MSM8953/SDM450/SDM632
based devices.

Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
---
Changes in v2:
- Make nodes const pointers.
- Fix schema issues addressed by reviews.
- Link to v1: https://lore.kernel.org/r/20240626-msm8953-interconnect-v1-0-eeb31a2231b0@mainlining.org

---
Vladimir Lypak (2):
      dt-bindings: interconnect: qcom: Add Qualcomm MSM8953 NoC
      interconnect: qcom: Add MSM8953 driver

 .../bindings/interconnect/qcom,msm8953.yaml        |  101 ++
 drivers/interconnect/qcom/Kconfig                  |    9 +
 drivers/interconnect/qcom/Makefile                 |    2 +
 drivers/interconnect/qcom/msm8953.c                | 1325 ++++++++++++++++++++
 include/dt-bindings/interconnect/qcom,msm8953.h    |   93 ++
 5 files changed, 1530 insertions(+)
---
base-commit: 62c97045b8f720c2eac807a5f38e26c9ed512371
change-id: 20240625-msm8953-interconnect-e03c4eb28d05

Best regards,
-- 
Barnabás Czémán <barnabas.czeman@mainlining.org>



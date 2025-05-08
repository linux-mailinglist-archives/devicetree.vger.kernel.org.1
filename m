Return-Path: <devicetree+bounces-174933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B17BBAAF4E7
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 09:43:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 287E14E1221
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 07:43:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3978C223338;
	Thu,  8 May 2025 07:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="KoP1tg8E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C0DB221D93
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 07:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746690206; cv=none; b=PVUuUoPLAUQc9eSUjcNCDpmoGfQGcuk38XcccgNPXHVmWgNgAqWMmLBj36IdTLXremMkg1GepSi6Kk6PrbToakaaa0wQIZ6NCxx48JWMfuk1Ef0oG2C1Pj4E/HYkbahTjvCxRYq6q60/s6coY17BxtAyWyXniVJJz5WfojetsNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746690206; c=relaxed/simple;
	bh=r4He/SbE13CQK7Ytn3b712lfUL6ZH2CQO6FJpHoww7k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=eSNvFy+QjbUKIk0DCBnZoEkGu6NCuTLKxlW1H37igOtPLqAQfEK8tq1L+EqRKoU0IJR3vfQP+udonzzUPpj7ZDUQySTY4Fcg+8+SJ/Nh2oFt+FJ7eQglJZjlndrhPS2MYyFJWmTLrRqWb0Cntio6pKpUQITkzFMZ+WgFFKnzh0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=KoP1tg8E; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=4pG7NQpNXvxmYH
	mRjI/0iVghcPUcTCsgebEDay8eIiA=; b=KoP1tg8EYXwt5pXcCCedbSBhPaDCoP
	dKju1Cf+Bkvm6/mmunMjbXyy1MXL5O885KPx4mJoBVipAJmh9uSEIQ8Cq4C64C8t
	AX7s/SXnroWCaTCSbAaZfjWbCB1ZeuFOC3z6jiipgY7mQplv8li+3tmYjOLkHXjE
	fvO8/sb+b47mD60CSFMiYNKThFllqAxJoOkxjrKn/aSQ5oNeWAa5dNBybS3b6Qwg
	LqCPHXofX23Ho0I5O1WEze4JY45R4a9hk9fcrZH9SEA0wThP43bvzwZVtonTdPkd
	DXZp/+3HUL8JluOWSswU4eHs2fCnLVo0+URcwWl0AGU0ZIYZuF8xcaQw==
Received: (qmail 3712177 invoked from network); 8 May 2025 09:43:18 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 8 May 2025 09:43:18 +0200
X-UD-Smtp-Session: l3s3148p1@cxHLAJs0fsMgAwDPXxyAAIlRla1HkD11
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v2 0/2] ARM: dts: renesas: r9a06g032-rzn1d400: enable USB host
Date: Thu,  8 May 2025 09:43:12 +0200
Message-ID: <20250508074311.20343-4-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

After the previous discussion, here is my second take how to enable the
USB host port on the above board. Please let me know what you think.

Still works with the Rockbox player.

Changes since v1:
 * rebased to linux-next (USB device patch already accepted)
 * moved pinmux to a separate node for CPLD on the demo board

Wolfram Sang (2):
  ARM: dts: renesas: r9a06g032-rzn1d400-db: add pinmux for the CPLD
  ARM: dts: renesas: r9a06g032-rzn1d400-eb: enable USB host port

 arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts | 10 ++++++++++
 arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-eb.dts |  4 ++++
 2 files changed, 14 insertions(+)

-- 
2.47.2



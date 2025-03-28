Return-Path: <devicetree+bounces-161662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C94A74DE3
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 16:33:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6149317B7D9
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 15:33:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34A68185920;
	Fri, 28 Mar 2025 15:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="CYzvt98U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062A0DF58
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 15:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743175993; cv=none; b=tECnpce3VeH4lP18N62qtIsPb4LE28Y4qSheIMZnlXNX7o25HOQ5IImmUJct7xrO0FDlLKNZAezNG1VbUWPZ6McI4GTZgkfROhdOFOPxHfie5U2FO7Bf6b//vpXIiXofPI5njqH3XqgdX1xyuTnEZBgbIM8GLu0pzblz8Oa+ge4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743175993; c=relaxed/simple;
	bh=5iBN5LA7c00TSzKcBYHsywDwrRewkVCjkrdHyHkveBk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DnzwTNJsNqviy/IEJBJSb9tGrSdfwNy1j0svhIdMi5qedP3T1DYS3ybQ/qo5scoEGYz8Yvnexo7qrvAHtWMHCbHrJfuPQ0VEfmwqBm56DliMRH7ksF5YNA24jsJK8YRcRBwIuMju0dGqJPb3jEPOUze8AGzmeQ6WaJ1uAHWmKBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=CYzvt98U; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=j9Ti0/L1FlqvjT
	e8Hf7N5Z9YEwfcz/YUE0tU1XApB+8=; b=CYzvt98UIjxiiKOYuWT+TTwgO5v6aY
	oCj0ruNho6e2iJ75ACkvQ9m6BfYLKSQjzF1H19/lxzlKq7Mdi5dnL4MPDfRutdHv
	3lHGmCSAvr2IcsxlJg/HV5iUNU8XbvjRZUidmkZvOklya3OeDEbKukNzvxx0jbPn
	wYxeLbaouAPLtBOAPdG07dF3CP5KuauK/vrQKSAgkdkdBQ0VfhvpZyyhUIFVlZT8
	EZwaSsKSyWpQrpdYuhKxhwbNWPNJILmxpRT5mbRuwSTIHliB1kDTH1c9kSiNO5sa
	GusRdpaWxk43yufHaPjpO/yhIn+Z486B3V7reIpriCz6oJArAMdvNYYA==
Received: (qmail 298861 invoked from network); 28 Mar 2025 16:33:05 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 28 Mar 2025 16:33:05 +0100
X-UD-Smtp-Session: l3s3148p1@9G9dyWgxmlJtKjE8
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH 0/5] ARM: dts: renesas: r9a06g032-rzn1d400-db: enable I2C infrastructure
Date: Fri, 28 Mar 2025 16:31:33 +0100
Message-ID: <20250328153134.2881-7-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

With the binding on its way to next, we can finally enable the
controller and targets on the base and the extension board.

Part of this comes from the BSP. This has been double checked with
datasheets and schematics. Part of this is new.

'make dtbs_check' is happy.

Wolfram Sang (5):
  ARM: dts: renesas: r9a06g032: Describe I2C controllers
  ARM: dts: renesas: r9a06g032-rzn1d400-db: describe I2C bus
  ARM: dts: renesas: r9a06g032-rzn1d400-eb: describe I2C bus
  ARM: dts: renesas: r9a06g032-rzn1d400-db: describe LEDs
  ARM: dts: renesas: r9a06g032-rzn1d400-db: describe keys

 .../dts/renesas/r9a06g032-rzn1d400-db.dts     | 144 ++++++++++++++++++
 .../dts/renesas/r9a06g032-rzn1d400-eb.dts     |   8 +
 arch/arm/boot/dts/renesas/r9a06g032.dtsi      |  22 +++
 3 files changed, 174 insertions(+)

-- 
2.47.2



Return-Path: <devicetree+bounces-104268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E7C97DCF4
	for <lists+devicetree@lfdr.de>; Sat, 21 Sep 2024 13:48:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A6FC282309
	for <lists+devicetree@lfdr.de>; Sat, 21 Sep 2024 11:48:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0D1016F27D;
	Sat, 21 Sep 2024 11:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="JGHgMMMU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A202355E73
	for <devicetree@vger.kernel.org>; Sat, 21 Sep 2024 11:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726919321; cv=none; b=iYwMat7PmaIZXIFSo7oMORGY4R4L+PWVhvgQB34TycYCOSImGkBwlgiQsLEFQqoedZw6t/YkJK725QqlZvacE1ekIiqw6pzDYYNFcMgCWYr6aoL/Gi671ESOTePGrhAiAL7zFtI3V+qxnlhsPsGy/4pJAo3x2fALg6rQPMw7geY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726919321; c=relaxed/simple;
	bh=bxocJ30aoT5zSqsupVkc/wv2Eei9qb4gBauQUvFMhiI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Ya/8vkB3p2G74E5Lp93OrusifXZfcNzEye/UNk9lO08emKw5PtvlySaP0tA3TqvwQGKsqW0Vss7n/7k8d/8HVfEyHq7XZmz6uihdm4/Ib7mkiQOsrVVA5tP58uxXDlQAqcU5dS+avwUf6V6X41lfPHBRo4ohlyghBKYQ2onJvSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=JGHgMMMU; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=AnGD4oQgfHpw4s
	tijlRvP6UckMuOr8otrdqAYZytbrs=; b=JGHgMMMUi/WPjlj4SNDFtcv+Y791lX
	GqigLt5PBbxKQuFNtF4NvTnWxtRRaDeWuNwXerw43aql8YUBPZT1pbbRyzpyo+Ij
	lhq0SJCIFK5lvGssA+vmCbJNxqMJyKGmQTKiMAwe/8ZGi9SHy9XXzKNAxspw3kQR
	8JqJpXMsKKq6UuFZV6SmEnmgNB5tkz9PwkbVM5PDfDoGnc0ad4KRQ+frhyHgrVeO
	ahjmZM/EhdvgWqUuLbOAp/i61BVPatYVAsit4RWXuasivAunNgR9TfQ9rtPlAsVq
	UkCKOLpJIWgQ8f9yITWwXslNksRoZtb/ZFIV0SSPQUcv/6x44NrIlAsQ==
Received: (qmail 3652674 invoked from network); 21 Sep 2024 13:48:35 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 21 Sep 2024 13:48:35 +0200
X-UD-Smtp-Session: l3s3148p1@8/pUvJ8ibuEgAwDwn0Nz2qARpwvTE8dN
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH 0/5] ARM: dts: renesas: bring genmai up to date - the easy stuff
Date: Sat, 21 Sep 2024 13:48:12 +0200
Message-ID: <20240921114813.4124-7-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

I recently rediscovered the Genmai board as a great platform for
regression testing (RIIC, pre R-Car SDHI and MMCIF). Its DTS file is a
bit outdated, though. This series adds the simple stuff, and reorganizes
it to be sorted. I want to add SDHI and MMCIF on top of this, but those
didn't work out of the box and need a little more work, probably.

Let's start with this seris first. Looking forward to comments.

Happy hacking,

   Wolfram


Wolfram Sang (5):
  ARM: dts: renesas: genmai: enable watchdog
  ARM: dts: renesas: genmai: enable OS timer modules
  ARM: dts: renesas: genmai: sort nodes
  ARM: dts: renesas: genmai: sort pinctrl entries
  ARM: dts: renesas: genmai: define keyboard switch

 arch/arm/boot/dts/renesas/r7s72100-genmai.dts | 136 +++++++++++-------
 1 file changed, 85 insertions(+), 51 deletions(-)

-- 
2.45.2



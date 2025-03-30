Return-Path: <devicetree+bounces-161813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB9FA759F3
	for <lists+devicetree@lfdr.de>; Sun, 30 Mar 2025 14:14:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED067188A702
	for <lists+devicetree@lfdr.de>; Sun, 30 Mar 2025 12:14:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 116651C5D61;
	Sun, 30 Mar 2025 12:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="mbe3VYQG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041D11B6CFE
	for <devicetree@vger.kernel.org>; Sun, 30 Mar 2025 12:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743336861; cv=none; b=X6BidZMSDp2dvYDJxHRfoKPq+XmhMVl1wD/RYCsFiuWp3HFZfb1fLRF+o+E5L31lJp2/3dxMT4tPd2LazGwtqyJ0qW4mZu4D81Vyr0EhBBjPxAxPa0UEI7M/QJcC6+ff2WKMbWM5buFBtjGwPcXqNoeP8rZskR6QgkQTXfM0aKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743336861; c=relaxed/simple;
	bh=DzjiwpHmB7xb7OXwRYih6dMKDH/OKYDNZQ+VhQvtY/Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RCT8lVdZS0EycUvxtF6wBycZPdot27f0PO9v9r8VzK5/wF/DldOdHVfkemnH/mkVNBrjPKDLjSkxMjPtLr1LnAmB7HXXfWqiZkb3fmx/f9c/DtyhxcwdA21Bda3r5nOGe5jQBk7QG90CnJFZdBn9xDcsJLE+wRuP9darqd1vapg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=mbe3VYQG; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=ZE9T3uXnqG2GViNG4d7SHAAqEGhToFsltLWTVb8ftpk=; b=mbe3VY
	QGY3uN91DQY6IoP43Jtv6/9xePESy8hVfqkryW3X5k0r0cQCEKaSEMKf4Xt3zVNU
	31E6Xx1KxvSuESWLbT1qCppOawA2TRNOCLowv9lhjeD/d5a39iPH782wx1v+PJvb
	LQ8HiHvkMbp/gP/555Z5vAyP74VDGSFESY3nUWqKUjS4oNm8fSV6jZ39k/+p9UrE
	Up3NnivLvrp6oJkflq+UOrS03LY/vu3t2dQqQdN3a9vUEA//WG0KeqSS7u8eah1k
	4ayrqGtawWJFhq56l5S7Qg2PKdQUswahmOR+3TRi0uqRVHegWsc998EHraV6Vk8W
	3eTUHHOy0VQrzQbA==
Received: (qmail 855778 invoked from network); 30 Mar 2025 14:14:15 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 30 Mar 2025 14:14:15 +0200
X-UD-Smtp-Session: l3s3148p1@1P/2PY4xsnRtKjBa
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vladimir Zapolskiy <vz@mleia.com>,
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	devicetree@vger.kernel.org
Subject: [PATCH 2/5] ARM: dts: nxp: lpc: fix faulty ohci/ehci node names
Date: Sun, 30 Mar 2025 14:13:25 +0200
Message-ID: <20250330121326.9069-9-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250330121326.9069-7-wsa+renesas@sang-engineering.com>
References: <20250330121326.9069-7-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

They should be named "usb@".

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
index 974410918f35..41f41a786f9d 100644
--- a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
@@ -94,7 +94,7 @@ usb {
 			/*
 			 * Enable either ohci or usbd (gadget)!
 			 */
-			ohci: ohci@0 {
+			ohci: usb@0 {
 				compatible = "nxp,ohci-nxp", "usb-ohci";
 				reg = <0x0 0x300>;
 				interrupt-parent = <&sic1>;
-- 
2.47.2



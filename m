Return-Path: <devicetree+bounces-158161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1351A64EB2
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 13:25:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2213F16F2E0
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 12:25:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D2EC238D5B;
	Mon, 17 Mar 2025 12:25:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-190b.mail.infomaniak.ch (smtp-190b.mail.infomaniak.ch [185.125.25.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523DC214A8F
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 12:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.25.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742214315; cv=none; b=pR6akWfYnMH8C/Hsmf//bTGhS+WV0NEl56+kUs0u9JEQBLlAv/OzWZrAAQ9qR+a+EtQWqmX5XDh3hS1CnOEVr+JnNnRxyh4aXxsDUfRygyTm5SoIStPWFFULul8BokmWNfT2JU4gXVsA9CBMlVeoXquzX7IAyxI2QKXMLrypseU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742214315; c=relaxed/simple;
	bh=73vrbXVGsCmOtAsR8R2dh8FZRfQxfkbOvNreIJaNnoU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=lAUNymPM/Ackz8XZXbHzDu0kXfzD5FDuGvRrErCX39yM+7lOfHwqWHCGdDKaIv49tpD0y4wDwc9BMh6IOaMePtAzqojePzoegYq/E0PtqNP4b9hm2mklsYVtXdL3BHsnlDSttsX4Xbmj0h7CstNWWPHgLZWFKD9whykVikNr2uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=185.125.25.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-4-0000.mail.infomaniak.ch (smtp-4-0000.mail.infomaniak.ch [10.7.10.107])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4ZGYd82wt6zJ20;
	Mon, 17 Mar 2025 13:07:40 +0100 (CET)
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4ZGYd75JMlzJG0;
	Mon, 17 Mar 2025 13:07:39 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Subject: [PATCH 0/2] arm64: dts: rockchip: enable HDMI audio on RK3588
 Jaguar and RK3588 Tiger Haikou
Date: Mon, 17 Mar 2025 13:07:25 +0100
Message-Id: <20250317-tsd-rk3588-hdmi-audio-v1-0-0b8ceb9597a6@cherry.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAH4Q2GcC/x3MTQqAIBBA4avErBvQpLKuEi0sxxqiH7QikO6et
 PwW70UI5JkCtFkETzcH3rcEmWcwzmabCNkmQyGKUihZ4xks+kWVWuNsV0ZzWd5xFGSEk2aodAO
 pPTw5fv5v17/vB93IqlNnAAAA
X-Change-ID: 20250317-tsd-rk3588-hdmi-audio-c0ea0f1ab689
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha

Both have an HDMI TX port and can carry audio, therefore let's simply
enable the nodes required to get HDMI audio on that port.

This is based on next-20250314 and the following series needs to be
applied in order to reach userspace:
https://lore.kernel.org/linux-rockchip/cover.1741886382.git.robin.murphy@arm.com/

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
Quentin Schulz (2):
      arm64: dts: rockchip: Enable HDMI audio output for RK3588 Jaguar
      arm64: dts: rockchip: Enable HDMI audio output for RK3588 Tiger Haikou

 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts       | 8 ++++++++
 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts | 8 ++++++++
 2 files changed, 16 insertions(+)
---
base-commit: da920b7df701770e006928053672147075587fb2
change-id: 20250317-tsd-rk3588-hdmi-audio-c0ea0f1ab689

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>



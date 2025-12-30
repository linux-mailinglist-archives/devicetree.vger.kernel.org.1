Return-Path: <devicetree+bounces-250639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E91ECCEA98D
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 21:19:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BC9F8301225C
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 20:19:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66DAF2E6CA5;
	Tue, 30 Dec 2025 20:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuPDT1nx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D80823D290;
	Tue, 30 Dec 2025 20:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767125978; cv=none; b=b4MGfjRyKkQVAlvsC/53ahc4cNAlXHig0R72zdB2FqiC/oI25VfaV6x+smfxs3FS6+hzF0jgwBbqcwHd/Yd4jefp4Oe+0usswRITMr7oNdefJpMnQLEQzPgIEeB5IKmcNHSmnghxmt7AU+zayGQ0xpkdLgNKoCFe2VUuZFsYn9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767125978; c=relaxed/simple;
	bh=Z4EYAHZGekQfOTPPZ/bCzt9bocu5SLTKB2VfqWaqPQI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=duw0Gpgbr9l92ZNc0VaZne9Cp45lTIoAUKy16nwfRzAF9OaFimRrfYC+RnMSriuPXSPI//z2Xt7/ATTrXVmSBgiWCUReT7nZ2Hy1SdwD3/lYqoT1ZCsKb9egOjpSyQgdDxqjSVeo+tzfOKMznKCXBo1a+Yop8bOgH6CQU+rGPCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuPDT1nx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BEBC4CEFB;
	Tue, 30 Dec 2025 20:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767125977;
	bh=Z4EYAHZGekQfOTPPZ/bCzt9bocu5SLTKB2VfqWaqPQI=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=FuPDT1nx3mnhbx5G6nVRwGP+rZKcupMg1opSbM+WhfQGKspsTsikkcH1pfAoFAYm5
	 WstWU7fCgbElEXy0uiEPvNqZaf7hLC12Y9fM7Xi3irNv+FoXakDPDpFynLNJT8C8dT
	 eNe3EwjqmcyrPc0UlRzMPibHFSVCBXxpbgSw1b/9V99n4y4mwyRQNKZ3rWmex8j5go
	 SzUfF4cc7gCN9bcszXfkhJJiN6KM8OgifqAmb/fwBZXBvBN595CLPe64YnMC9aBfgi
	 d7WCrFRIjJfpznNY5//NgK2BoRXpzqgJoUBjD6cl6D+5hMy0IXbvFIevPDfDH2lX+E
	 SCg21RkqXajtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C38A0EE0203;
	Tue, 30 Dec 2025 20:19:37 +0000 (UTC)
From: Ricardo Pardini via B4 Relay <devnull+ricardo.pardini.net@kernel.org>
Subject: [PATCH 0/3] arm64: dts: rockchip: Enable the NPU on some rk3588
 boards
Date: Tue, 30 Dec 2025 21:19:29 +0100
Message-Id: <20251230-arm64-dts-rockchip-rk3588-npu-enablements-v1-0-d38b182a59e3@pardini.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANIzVGkC/x2NywrCMBAAf6Xs2YU8Wg3+inhIk9UutduwUSmU/
 rvB4zAws0MlZapw7XZQ+nLlVRrYUwdpivIk5NwYnHGDdd5g1OXcY35X1DXNaeKCOvshBJTyQZI
 4vmghad6SC95kR5fRQOsVpQdv/9ftfhw/usSzmnsAAAA=
X-Change-ID: 20251230-arm64-dts-rockchip-rk3588-npu-enablements-1e2830d2e7b0
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ricardo Pardini <ricardo@pardini.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=878; i=ricardo@pardini.net;
 h=from:subject:message-id;
 bh=Z4EYAHZGekQfOTPPZ/bCzt9bocu5SLTKB2VfqWaqPQI=;
 b=owEBbQGS/pANAwAIATteP+Oex+3pAcsmYgBpVDPYd76x2JB906NyNHFhO6NnaxWsW+lO80Uql
 Ji2PwKD1t+JATMEAAEIAB0WIQSsGCMM9q/qytxIiJM7Xj/jnsft6QUCaVQz2AAKCRA7Xj/jnsft
 6UMPB/0aiS04N/PRQ7spsEThwruzr2esSQwAH9xDCV4eZcHZQTkVVHaH5RnanJ28d3fabRgZmSy
 1BmvrsltvRrqNQ3rI1Kay3RfkvZU2vn0IMEMA985DFXBjCEV43ZGCNMd2qX0JLBUZ73Q1lA4a3R
 gtXRZZqOyY368C6QyJWVjFWfQjPzWtt4X8DKKQzcWLpC6O2FJWCA1NHr/0gr6MOgpwSViPL9P+C
 fwKllrnSZeMRvupYc0FHxO5Z0JiGVY6fjB9mSAjzWSMszf6ZlvEB3ZLmfF2PdRTQKlH5FDx5KDl
 j0E+pA6o3ysj2lr2BwqUO0AVil5ptuiZRO96Ot1J6lQWk7Bz
X-Developer-Key: i=ricardo@pardini.net; a=openpgp;
 fpr=AC18230CF6AFEACADC4888933B5E3FE39EC7EDE9
X-Endpoint-Received: by B4 Relay for ricardo@pardini.net/default with
 auth_id=588
X-Original-From: Ricardo Pardini <ricardo@pardini.net>
Reply-To: ricardo@pardini.net

This series enables the NPU on a few Rockchip rk3588 boards.
In every case here, the required regulator was already described.

Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
---
Ricardo Pardini (3):
      arm64: dts: rockchip: Enable the NPU on NanoPC T6/T6-LTS
      arm64: dts: rockchip: Enable the NPU on FriendlyElec CM3588
      arm64: dts: rockchip: Enable the NPU on Turing RK1

 .../dts/rockchip/rk3588-friendlyelec-cm3588.dtsi   | 34 +++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 35 ++++++++++++++++++++++
 .../arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi | 34 +++++++++++++++++++++
 3 files changed, 103 insertions(+)
---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20251230-arm64-dts-rockchip-rk3588-npu-enablements-1e2830d2e7b0

Best regards,
-- 
Ricardo Pardini <ricardo@pardini.net>




Return-Path: <devicetree+bounces-46340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C69B868F73
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 12:53:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C0E6E1F28F4E
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 11:52:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C39C13A242;
	Tue, 27 Feb 2024 11:52:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="EeLV/ZB1"
X-Original-To: devicetree@vger.kernel.org
Received: from master.debian.org (master.debian.org [82.195.75.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EF19139599
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 11:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709034777; cv=none; b=rEpDpOetvN9VUtJ8j0j62rlP4EFQuzHHJhcZ0pZxcgIgb7AOPlaoPHhn865U3dUlcFO4hn8qUYs2GrOcD8t/CUa58/oUNRTk2+taCDLHYIrGFzx3iZqJNXMXYZfFSa0UQZDHe/nBw8jIS/R2fj4QcLzMBRETk+PTzsyr7HOJi48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709034777; c=relaxed/simple;
	bh=63H42ZceL4Aj+2bTjz5yrt8POkWXFe7RhQZ60a7hT9M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=eb8fk4B09QmRa/BETJ2d08stR5gZoC2PhXAuV/bh8yiZoggSx+94UPfK61YkXDB3m75ol+4XOMFAlcXSll9g82n+/g4i0vCZUEDJqjeXu2J5kWrLp/FEmWjOilJwceMeCDnxqap/N4oRI2cXMDuKBwyMQPR4KllX3mNAvDLAUME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=master.debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=EeLV/ZB1; arc=none smtp.client-ip=82.195.75.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=master.debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	In-Reply-To:References; bh=aJQzGBjCMr7fNjosR9pa4p7/m6St4LJq3B9lUGe3QaE=; b=Ee
	LV/ZB1iRga3C1h/AM8rsDAxZ9zO3Ta+nm6UVJtLhaleRRYCwQWH1yG5yNeJERMXD2AXt+w80v7Gfn
	RANBGO7yI85muqU/fDqYsxYHbMVKwsDM/PiZpIpbuu5iHZta8QzNjuwdmHtUTNf2tiShg+WWFYBWD
	c1dVyF3dGghrEiqmHsUdE7ZGJhdDtoDuRQ2cv4RHVQgM0pCL/7mf1f4Goy5EFzb1m/eQG0Q9637JL
	JpYBa9hg0hW4/CE3WkRQFNKqXMnrnY/wgAEGqW5Yl86fO7VHu91gy8VQHb7MA/FGjYSriQEyAiLV+
	sAySlJNvPE0ErdEUirWB0P986CQsLBZQ==;
Received: from ukleinek by master.debian.org with local (Exim 4.94.2)
	(envelope-from <ukleinek@master.debian.org>)
	id 1rew0y-005f8T-BA; Tue, 27 Feb 2024 11:52:52 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 0/2] arm64: Add basic support for QNAP TS-433
Date: Tue, 27 Feb 2024 12:52:35 +0100
Message-ID: <cover.1709034476.git.ukleinek@debian.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=979; i=ukleinek@debian.org; h=from:subject:message-id; bh=63H42ZceL4Aj+2bTjz5yrt8POkWXFe7RhQZ60a7hT9M=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl3c0Gx9lvZUjZopbCx5zsbrehplaFQB9Eh8gnc k57KE0SJ8CJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZd3NBgAKCRCPgPtYfRL+ TjKOB/9ryHI4PHqt4zKbQcdNwCpkwWqMeC6P7ToClb2D6fPWkw0fBprl9+gA4ccMBDmwvqu8QE1 wv5pMb8TfoV1J16CB75rkWI7PiQuMEdqVoahdIUnR9xcPknxVcor4M+weXwl2V2xzG8eslRYu6H D9VywPeI1i1rsYBocykDs1qbczEVQbhv0kWcX+Gj2GPGkbZuOqohEWIakcYc5qcgugn9bDIAPXF tLakTqIRgGobed3B3fRHh5s4+WytD8ErHdkphUALKBVzW/hdf/oGVxj35Vml9Ym2wwoUBhPY5L1 1vv6s1G26Ktcll/k4Y4ev2u30OUVDB2g6dUFuDbbiZjY1igh
X-Developer-Key: i=ukleinek@debian.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

Hello,

this is an initial dts to support QNAP's TS-433 NAS. It's enough to
start the debian installer with a custom built kernel (original Debian
kernel fails to open a console, didn't debug that yet) and access HD,
eMMC, RTC and network.

There are still some missing bits and pieces, but to make people aware
there are efforts to support this machine and so prevent duplicate work,
I think it makes sense to add the dts in its current form already.

Best regards
Uwe

Uwe Kleine-König (2):
  dt-bindings: arm: rockchip: Add QNAP TS-433
  arm64: dts: rockchip: Add basic support for QNAP TS-433

 .../devicetree/bindings/arm/rockchip.yaml     |  5 ++
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3568-qnap-ts433.dts   | 86 +++++++++++++++++++
 3 files changed, 92 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts

base-commit: 6613476e225e090cc9aad49be7fa504e290dd33d
-- 
2.43.0



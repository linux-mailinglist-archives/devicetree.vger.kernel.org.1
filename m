Return-Path: <devicetree+bounces-250454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 05550CE9217
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 10:05:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4C2D0301E14B
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 09:03:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F101425C821;
	Tue, 30 Dec 2025 09:03:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="Ye9phus0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast3.qq.com (smtpbguseast3.qq.com [54.243.244.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E700724113D;
	Tue, 30 Dec 2025 09:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.243.244.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767085417; cv=none; b=o3pp5nOAh2AMIyD/dxD+4g4kU6kSzmYZkaNoqhRnthcIi/EzbjYBy3twAo2HskmoK7T5+R7FsrqL8rfYRRqPxnic0KmjZ+cwRyl6lKwTGrCPIZZ8fHywUVXzSVQJJ+rukC4aq0XbJwLNcUdLcz3kpTePTAA7S33L96Lpf7T8x90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767085417; c=relaxed/simple;
	bh=yVSascH212ySIJDaBm1PqzSyq8CdlQ5Q6RwVtK8/lJ0=;
	h=From:To:Cc:Subject:Date:Message-Id; b=MgIftsy/qULMO/hGN6n+RWko4H48BORYBKsIyza/Wb5KS5hsuI8V296E7IiWlkTRcOaNeoLtWHXnT2QT+V/bSU58hE10QpaZ1yOQgTInd9o5aUglwxITa5GFgBeDUQlUhjZyy0wLw6bAZC0N+lYfDbcSvBtpFukmv6PZfSltm/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=Ye9phus0; arc=none smtp.client-ip=54.243.244.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1767085402;
	bh=/VpoCnIgKsRZ92pzrMxwDZZP7i+qPNxm3KzgXs7KlAU=;
	h=From:To:Subject:Date:Message-Id;
	b=Ye9phus0iD6bE4EnTHBikQ56fbJqbGi6xAGS3aYhLRugIPFLIzSCyEAOjMi1i8YZC
	 //O8iUTRUOw2m7IbMCWt4t8KM6bpKkeSuS790lQoD5QTgGXepGycAhm8HfFAUzeFVN
	 E4gs5PTOmRqMIbzVjHFoskjC+qedxJzZ59EohiEU=
X-QQ-mid: esmtpgz16t1767085398tec99c1ed
X-QQ-Originating-IP: /TmhuuJhxmP7FNa6N98cvNeOz2pDT9y88FQ2UnLeMZw=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 30 Dec 2025 17:03:15 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 15785446282400789070
From: Chaoyi Chen <kernel@airkyi.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Frank Wang <frank.wang@rock-chips.com>,
	Alexey Charkov <alchark@gmail.com>,
	Liang Chen <cl@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Fix wrong register range of rk3576 gpu
Date: Tue, 30 Dec 2025 17:02:46 +0800
Message-Id: <20251230090246.46-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: MjqaYNLY8QZGIpmhSyWql8lBVXPpgTM4TR5U4/q2VkiNMudNkiic3T5r
	tqje2uqfv3AGjDZiz0oGuBBBHC59sWISQ5aCLYZV6JKWr7hiexMh1N5ZNE2yOgcXW+9HYNt
	9q6TkXuLJxh9M6W9z5G5ARoHkDlDcdvMKTKwwCzhIfBwcrr79XZp1bkWzWkFVIGJETkha7E
	q3d/9RpuBM18IywgIclM3kSI7rT+D/N4nJ7vrotn/HFzHzBESIGDu3buASiXPyxu/qaGwcf
	wuFGdFZ4Le+Rlz0ZEjLFsLwvcLb2n/XO1hscdHthFoe9njS4crfIxUdPG+LQcpkETZ6iiN6
	yHVQ5HGSVY2JHCpE5rw7UHm/uPvKZDvAeBCOxG9fZr4iNHHxx56ee+T49xSCLIDpd1oNxet
	tKcLpGU6EjYKdLuZRS8/AC7mCMEvyfszd/LPqd274L9/rifDQYlhjgArzUF+PX45rqoGQqj
	oaFyJMBfPvkTSbgtac5PwO5e70D7vHNFRkgsnaqpa7y9ajHIfKx9okt7npQ/pdUUYxJRkkF
	z1Pl6zrKKiGMFmnnebsHct6WDO7otVVGpRNiWmhUcmGz1QJ1A55dJmP3MwTcD2GLA6OCzwR
	rI7y8zeI6AFFQgK6e304HRl1DguvxrQ+VBZf5Hmyzu5Ss40ywD8+gIlnCzClduJLw5ldkjp
	pbgZkH7vft3jt++V2cAzHNKcYRn3tPa9azNeXSYDeXr2+aqX/DSMbDJnhPLV93yAebF2vpT
	0FMcfPqC7FxvxNBoQd4GcJAE/y4CHRNRCnMLYVlNDVA5kPacsCWui6H5pIXitKWpm5WwwqW
	gbXFvgq5ubkRJWYWYVGgqf15ER9nLVMaJQd4OGOl6gQmlc6Z2sJPsr5BM//7Rn91HeqC23y
	WT/gFUV60sk4rB+cDY3PHVSwpoNdH34lgEW4wTkwtHQAdCk+DRnLK2MNQzpzF6HElJ9BaLQ
	YgyhSFd4j8cmdQsqLQZ5w5v6AJQBs6MU0+ieB3iA3ua+yB6KY9nJUCT9FNM8q1mZDm8k=
X-QQ-XMRINFO: OWPUhxQsoeAVwkVaQIEGSKwwgKCxK/fD5g==
X-QQ-RECHKSPAM: 0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

According to RK3576 TRM part1 page13, the size of the GPU registers
is 128 KB.

Fixes: 57b1ce903966 ("arm64: dts: rockchip: Add rk3576 SoC base DT")
Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 6284e7bdc442..b375015f0662 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1271,7 +1271,7 @@ power-domain@RK3576_PD_VO1 {
 
 		gpu: gpu@27800000 {
 			compatible = "rockchip,rk3576-mali", "arm,mali-bifrost";
-			reg = <0x0 0x27800000 0x0 0x200000>;
+			reg = <0x0 0x27800000 0x0 0x20000>;
 			assigned-clocks = <&scmi_clk SCMI_CLK_GPU>;
 			assigned-clock-rates = <198000000>;
 			clocks = <&cru CLK_GPU>;
-- 
2.51.1



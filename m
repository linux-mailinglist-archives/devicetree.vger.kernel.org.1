Return-Path: <devicetree+bounces-251786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B593CF7029
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 08:16:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D5583019194
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 07:15:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD71B27CCE0;
	Tue,  6 Jan 2026 07:15:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="vd7z8wY1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg151.qq.com (smtpbg151.qq.com [18.169.211.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C61091E5B9E;
	Tue,  6 Jan 2026 07:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.169.211.239
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767683737; cv=none; b=K7/+n/0INqtJGProLRHgHCRFxdqy82Tyl314wRl2P6JMXmKrbOzUp94ahybqN/LxWWKWa58gU8bcseQZTTejVeezWBRTheY9grZtMtshEE8V6HJdTXJFmbFoQYz3mSM/MGMxqS9BcFxBvlasDfxPdScMLJxVSGXrA+xXMSq1xjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767683737; c=relaxed/simple;
	bh=DB9AkzVPscyUIysDsZVPwT10ihPG2RGiyJoMO2ucniw=;
	h=From:To:Cc:Subject:Date:Message-Id; b=m8aD22Z7wJGvjUgxan/JRr+2xTIVmHEbbxFnTX1qEW3CRRITdKAoLff1YY7rSvPdVcKrcpmsK+bxbNc10Z6sLo5y5lNn6m5GJO4rGJ2hIQCEHmhknwjypZDzu7lePdNBO5cqaM8zrQG8ZXuk/qx+Y6D5UlWS6oEyLkQZBnca9G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=vd7z8wY1; arc=none smtp.client-ip=18.169.211.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1767683722;
	bh=wzOmv6xb46ma0kIdq1mvf7H1nuM8KvPoqSmkqQD+is4=;
	h=From:To:Subject:Date:Message-Id;
	b=vd7z8wY1CXXQt89MTgq9BpeT5Jnez09BrXNdCeYMMq772QRDIo5GBb30RS5Od96r7
	 BV25gA22e5sw2CyhCPnmHMc/u7RaEyhAa9/Pch6W2erXuQDOUUD2bVEvV/iFEMos/V
	 bGcNwk0GZYK2lHywx0ExOb4YfSFmA/9kA6h2kNeU=
X-QQ-mid: zesmtpgz9t1767683718t74c1803a
X-QQ-Originating-IP: 3daLNgR+M4EFi4RaxX9uSmwxwSvZp/u/KtlWbfEdv90=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 06 Jan 2026 15:15:15 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3899787890278610606
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
Subject: [PATCH v2] arm64: dts: rockchip: Fix wrong register range of rk3576 gpu
Date: Tue,  6 Jan 2026 15:15:13 +0800
Message-Id: <20260106071513.209-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: N3IC8um5pMyYiUTB++F8KmFoTRst9n0d4/5fetujUxJSXbatcAHZwOSV
	raWAw6KvwonZ2Tc5GyeeJ2ryPNoWT//5wZ7e6TDTFIngWEPr9fSu3LSwz4afFAVSzsUYujL
	7a0PJ8txORAqfwKwxcn5TVxBN1+je3clK3vczadFJf7pH2stFgPd44OKkjW4+cU7hbHx3Ey
	M8Hii8GprIrTKP1Mfx6rz6Dv4HHcfqeLQpTE6G111XVY6+lyDMj80ublNSX3X7GTKrFrPUV
	rOTzKC1Q7tI4F4qUNRDqliIfJJaOTBdSvlV723iKhpFqSEbPvqfrW5QCHazohp6ztU7eYU5
	gLs1KPrAV73jz+lPZQaUdAEOg7LrzIDM4sU+qGbMpiVqbiqY7aoquwGwQsSj/dGqBCOjJrM
	2v81AdW5z6dcmClf9Gty8Qehx7W6pNdnwN+IWwIwm1HEp4xRAUgS3YVt3NoiZe7NmBDQb4d
	Uo9o34DH34is1HGw0M0MTVZ/K+6kynLnKAOjw1m7p+LdHhwlv3ColscPKTIab3eXdD5oau7
	grm3D03hnn8NTJU8NEk//PEtPtrZcpkhRnITlAFBDN4sYh6pC5+FfgPcIZwPn2SNqYlNeHT
	lkjF8K8dwIoGXN4BwuNXDUQLE5azhO6Gh3lolsrqwFdRTvhMyukRqEr3323mU7AjqeZNgXO
	MecHg9gi7p2Vh70mUSe+pFUnQmx4aL7fe4H7FM4Y52axqyHG4Q59TbHIahfjsy+UYNi09pK
	8czwczfvwJqcvW+8De7GyknftIVwmoQ/NjcrzdfiI51SSDSPAZxKlZjnA0FFCyxEocoT4zA
	q6+LoKdFzVmpisX6657uZt6keTRYwLWVBy9CcIzXmJPfFLwwD/6A1E3/hTZ4qpBlIC5I1K0
	l/ccDUO8hwCPiPhanxhEADqcC4PE7n/0wf27Pimr9u7vk+qu3nFyU7Iu3RmcMIN+T9HLshn
	tPbmH1Lctw2yYeIkAsA7TitGCqEhE7R8Zm/JvHBGVN/IVHk32QzrtooDjVUkpQEOkDtZVGE
	MWG3Eu8w==
X-QQ-XMRINFO: M/715EihBoGS47X28/vv4NpnfpeBLnr4Qg==
X-QQ-RECHKSPAM: 0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

According to RK3576 TRM part1 Table 1-1 Address Mapping, the size of
the GPU registers is 128 KB.

The current mapping incorrectly includes the addresses of multiple
following IP like the eInk interface at 0x27900000. This has not
been detected by the DT tooling as none of the extra mapped IP is
described in the upstream RK3576 DT so far.

Fixes: 57b1ce903966 ("arm64: dts: rockchip: Add rk3576 SoC base DT")
Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Reviewed-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---

Changes in v2:
- Add more accurate problem description comment.
- Link to v1: https://lore.kernel.org/all/20251230090246.46-1-kernel@airkyi.com/

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



Return-Path: <devicetree+bounces-252196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C323ECFC466
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 08:05:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1A21B30299C3
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 07:04:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23FF32690D5;
	Wed,  7 Jan 2026 07:04:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="I92q7Axk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgau2.qq.com (smtpbgau2.qq.com [54.206.34.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3686E21D3F2;
	Wed,  7 Jan 2026 07:04:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.206.34.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767769488; cv=none; b=ZzHewa7cBhkSBfi7H65UVLTYBqt08SCDSv12bnOqfZEKpSe0I4LUtqvEXZMF7Br1gVAdRD0K/p0gMDdL/EjJ3d9HBmCkegjInVKcSrgM1wbxK5013r938Zx96DuW5IfNnySGTvuhJloZRjt9m3gtnMMwve7w8HY2RNB0i2/AOcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767769488; c=relaxed/simple;
	bh=N42ZZuW7bpXy0IKeGmyH4sbDv4PXWIBCwXdei4DzEeo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=R6m1lKEs5iq23A5+loH4e3R2fKY8V2I9BHZvynL+Ne5tlQSI401IIQU2//20sc7VG9pf0nIpabwsTemGeyAJzDaPT/qXYepPrOfn/84SnJ+7XJGiaUicbWdD4nG+DbBlHuWpHpJqIHj0+OMxzS2WJahG2VBc7B+Iwmz+pqac3r4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=I92q7Axk; arc=none smtp.client-ip=54.206.34.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1767769420;
	bh=dIwuOx0WUbd44zBInbdsOb+naFLrWH7lMlUXQU5tjTM=;
	h=From:To:Subject:Date:Message-Id;
	b=I92q7Axk6W1ex9zhUkGcphcv0+wcUsh+TcKyQH1qvH+bK2CcxXoWqCKjf61E9hgiQ
	 rbO8MQmqHYb3eMVeSPHuQ7b/0sUm2vdMjwn62vyMjzZL7LRwQYcXXd2ySxxugPEwBU
	 LuSBfZ7h6qxYoxTl5nNt5bYOkG0BASCNTFqVHOm0=
X-QQ-mid: zesmtpsz4t1767769414te4793528
X-QQ-Originating-IP: vb+g/KEJ4N9UWS51x3mp9z/cLl0G4zbL7kmdhHdpLZc=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 07 Jan 2026 15:03:31 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8160116837600662199
EX-QQ-RecipientCnt: 22
From: Chaoyi Chen <kernel@airkyi.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	John Clark <inindev@gmail.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@collabora.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Alexey Charkov <alchark@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andy Yan <andy.yan@rock-chips.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add rk3576 evb2 board
Date: Wed,  7 Jan 2026 15:03:21 +0800
Message-Id: <20260107070322.323-2-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260107070322.323-1-kernel@airkyi.com>
References: <20260107070322.323-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NYSvqfltpRXSm+AWNvPewTmSflghD+Ptd+/+oKDgG4PF3Eb+8/ndxCop
	RxA8ng0z0AX/R2mheVWXh7kU0dvDDVfnUsQPfNEb5dQAu+6ColBIHdCbP4PTYnwYxtpRilk
	SH/dZGL4Cs0N+se86BhkvtbGclArOZIo7Kv88HzeKY1nFMulgPMZV/Z1QcpmltS5blrOI1X
	TmwhyY+QA3wdYnIApII3ZfKagkVUzRJP5yK3FU6hi90o+C6Tt0TwpZD3J4C5iCvYmGUu9sH
	ld/YupRIdwE/iU9K62jMnTs+SU/CCMosdBVl0t600PqNUey5hu/jhJUpoFASlmbZ0XJma51
	qUDAzjRUx2DyOlO5bNNhkNVPkWkcyv2eZXpkHrM5OvthKnL/kld/5j0tBvYnTsjbmwIlwmO
	AWGdY0uNQf5hkwJZDZpfNfopX/YiuT0qF7I5W3YA+45wznonde5oDjAhuftEG7Z/cVcQkhy
	t+mLi4RtIViTwW/UbBjWfz78C5lkHTpGytybgNjH+og/q4QYoZqKIsSQXdmy6EJgGMVfEKk
	bZkhJDUyCLdSdgjmu9wayBbiXkAwQyoEXONdV7PNSb00pXhRbo7wRGmEErdbgsTMFbniG5g
	grorKA0+y+U/XX9/Xlg6vFzVJdPUZpt3eS6H9cv+rdVZORiYrxqgG7KL6ARiZj1/r3830yu
	7d4isMmnVjxiU+Vyi/txiMhXw2arRy4LhHDUojGfZzUl7WNPqHeGPHe5B/2pBPfMSa99xNs
	lDFU7PLs7kU0avjN290u1zl29KYMROahAJqvlBWkipAAcR6+uCjusvbtoQvc6zFi5lWA24v
	gSM3vR+F5p8zVS234ovZ6zmXVJJ+hjYqGfPcZ0/3qTYKzaIAHG7l6k6c0Utgp5kZboT+wX+
	vpLlcOx+fYjXTMfvrnFKMx5aCIEuFp6wfraetrTr+HkM8fzB7pRdS/bDHDkvAlZd0fZapAR
	oGwkonqZZb51GYgOn9DpDOF/Lwy0gLYlbXhKGnTXPxv7/BcCmyYCVME0RY2mZAvuI1uMueV
	JWsrwmMg==
X-QQ-XMRINFO: Mp0Kj//9VHAxzExpfF+O8yhSrljjwrznVg==
X-QQ-RECHKSPAM: 0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Add devicetree binding for the rk3576 evb2 board.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---

(no changes since v1)

 Documentation/devicetree/bindings/arm/rockchip.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6aceaa8acbb2..59ed57082003 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1136,7 +1136,9 @@ properties:

       - description: Rockchip RK3576 Evaluation board
         items:
-          - const: rockchip,rk3576-evb1-v10
+          - enum:
+              - rockchip,rk3576-evb1-v10
+              - rockchip,rk3576-evb2-v10
           - const: rockchip,rk3576

       - description: Rockchip RK3588 Evaluation board
--
2.51.1



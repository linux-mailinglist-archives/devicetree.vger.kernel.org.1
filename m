Return-Path: <devicetree+bounces-211035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E70B3D6E2
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 05:00:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E275A3A3746
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 02:59:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25B2A1FF1C8;
	Mon,  1 Sep 2025 02:59:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg150.qq.com (smtpbg150.qq.com [18.132.163.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6444B2080C0
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.132.163.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756695597; cv=none; b=AyXaFcPjv5o2KyRW1/p3RtsXxGcyetYMYCqlNuTJsxs/Law66m9Wn4ezq+PKHOKm7GvGUElOse3J4lcP12AXotcty2pNXF7+Bj2m2qHu9M3ZoJPTnS8xhsjyTLb0aT0vMePsQuNclcrof1EEsgaAw8LcaG7opBHAPr/PXLpdCDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756695597; c=relaxed/simple;
	bh=dKbllMyJvq2cWyxNikxqDTkakDd4FTY5P/jf+amsR9U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=s3ljswIyh5n1H27GKHEFAQWknQn/nxpzNI1sTC5w+ytU1NG/z2Tzyx0402cZRBj2RpBubQwZoMHdSdwpnN/Koa2rxEcMkh/E05BKK5SGiDuPhH35+EjdcdZvS/w2O6EA+DUHgSBlmj21inMG6Y6J8Tn/RtqO8NiACHAImDnYGeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chainsx.cn; spf=pass smtp.mailfrom=chainsx.cn; arc=none smtp.client-ip=18.132.163.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chainsx.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chainsx.cn
X-QQ-mid: zesmtpip4t1756695045tc264b712
X-QQ-Originating-IP: ap5qtfwFLDiWsWjGBf9EO9zRS7YU1uzGqHMrPqJn1wo=
Received: from chainsx-ubuntu-server.lan ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 01 Sep 2025 10:50:43 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 5940222375455868438
EX-QQ-RecipientCnt: 12
From: Hsun Lai <i@chainsx.cn>
To: Fred Bloggs <f.blogs@napier.co.nz>
Cc: Hsun Lai <i@chainsx.cn>,
	Conor Dooley <conor.dooley@microchip.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add 100ASK DShanPi A1
Date: Mon,  1 Sep 2025 10:50:36 +0800
Message-Id: <20250901025037.81548-2-i@chainsx.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250901025037.81548-1-i@chainsx.cn>
References: <20250901025037.81548-1-i@chainsx.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: MeezH9KDz92MWDUg//IiAxG3x3XgnvFZ2nntCd9fqlhxoQPI67P2iHoq
	T27qj9LySo9dEIswjWNMVcTAiO3Yji1H9G2IE94LgLkI95XLiguhRydj+JLMtjZy3ldgGgk
	fbGqnj0VirfarOYs9GtbIDR5HjzP0NqCRHUgA41YKgCA5U5XfN9hsx+stQSktFRF75LpuqO
	9l8ryVwAzKZTOac3/BRR/UR5Z41GHlWFpR7Gbn3oD/Q+u/RKi2ej3/N6qtT69wvmQSZ9Ohx
	6uEcgaWiecL6APwWebo2QMLjzf+i+4X8u/YUTTRk8ZtZ0pDzkDqFDbQ+tr5cqvt2knXRFwI
	ID2QUZzXisi2ynFdvt6JqGPXK50Fjd4HzHIVhxwd8XXqsR1hSwTrlRFpHePpQ7/AS7sSkau
	fJR0oeftBd3PwRFP4eZzaJx1BR0J6AqjNJPSKdEIreXM+M5+ukw/SrjKH9A9RbTEAVWGQgJ
	zxXei8LUmwmuoF/Gp12pXlxgCE3RHKUAq/JMdM6SJTxu4ikC0LAx/B54Uq8EaR+abycWpwR
	X/WyTOOOBIp5OhEb8HgQTQzpJvXOAeGGtlF1vNrwY0ZAGt7fM96SINI8qBOK16as+t8r6w6
	SIJgnY7ueQB6/805Gm1iZ3ekjNMvisLKltC5eLa/5SxiCwQC6bncTZSRO4+9usXpdeHfypU
	zmXxUIOsqNKRghZ72Ko9gpnJSluG/eZUM11EPqaa5Yj/dqlhxAUn02xiibaILvSKOcHKi2V
	gHCdzcDF4bYRzhB8ezNsEcp6FKR6v/ABIuQiUdu2vcuxLWVquIe9eppiFULKNW909id31dn
	2z/L9sGL3BjY3rcZebgvPbPp++KYFoyIy++Tvp2MNcFqNe++oBBljrsZUoygHhBRGgkBhQK
	N9GobfMwuF6k7mCJFbX45y/kD6kCcU/6jw3/MRGcEsUPT4uBf3OIUoEylzXN/8wW9degbPL
	E8rHw/gu5SPYLvnFgDF81XcI+vDWSmEw4wLvcuqJf7Ye5oAoKGdNlPqsXGx0djcgOtT/3BL
	GodS0C+yiTnXKkW0lLR5fbq4sEoYIykOSgaEiiLAx+UzLdri5jXZF0Bg55Kicf2DRLeQGpM
	FB0WwrZjPH55okiOJmDjvoj2aWX/3Jnuf9e3dfG5KzEPb3yngoB/Ay/lsUQGOH2ew==
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0

This documents 100ASK DShanPi A1 which is a SBC based on RK3576 SoC.

Link: https://wiki.dshanpi.org/en/docs/DshanPi-A1/intro/

Signed-off-by: Hsun Lai <i@chainsx.cn>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---

(no changes since v1)

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 28db6bd6a..033730861 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -15,6 +15,11 @@ properties:
   compatible:
     oneOf:
 
+      - description: 100ASK DshanPi A1 board
+        items:
+          - const: 100ask,dshanpi-a1
+          - const: rockchip,rk3576
+
       - description: 96boards RK3399 Ficus (ROCK960 Enterprise Edition)
         items:
           - const: vamrs,ficus
-- 
2.34.1



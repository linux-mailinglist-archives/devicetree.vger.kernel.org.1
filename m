Return-Path: <devicetree+bounces-223821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CB9BBDE9F
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 13:50:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3B2811894EBA
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 11:50:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CDA5272E67;
	Mon,  6 Oct 2025 11:50:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="KuO4ph0c"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay76-hz1.antispameurope.com (mx-relay76-hz1.antispameurope.com [94.100.133.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61B72594BD
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 11:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.238
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759751407; cv=pass; b=nt7qubIZ6cax86OGyETU6uPMR64nNYBASu3y2IrK4RY52yX9Qyq1KwUSeMn0555DENb3KG+dHRKbgz7lGkkETAlIDSaeHbzRegmHLT+TjfhcENY4L6CW6uRdjrvzF3Kh1zlPYcDZ6SCbW1fAfvFlClhOdrh6dfpzL64xOV+X1lg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759751407; c=relaxed/simple;
	bh=lQusUQvXdBnjoaLEEe4P5A98H/WHgUn83QJF2IuKnxA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ppOTcL3DAX+zS/QR/uSfUuAIzdsLgZ5fAuBTcuv6fqcJRDnyLownceHNCvH7BSICrDIgNCwoyJiMlWem0s1ULf2umA1bM/hqNUL4ylOg8rAkE2p3qGHEvak9LP0uT4oiyWsD8sLycVi34cS2Hrbx51H1k8kv/8jc0Yc+/T2JOjc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=KuO4ph0c; arc=pass smtp.client-ip=94.100.133.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate76-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=Nwv2x3AV2URX4eDt226Z25gIAY13bxvGxt/6sHiSWCk=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1759751351;
 b=d+AmZXUmiIXadG27QWpZWxJooBBwh89VQnnY2JZ77Bhnfpkn/JXmA4Ra09P2pHH+Vp/X1xl5
 EDOOAf3Jxy469x5gOdhc0xMCRleE2PFjMzEGlQH2ASx/U5+rHZygRl6XwShffh50iwvMUwLqPdJ
 T9MItK9nUtU0u9jo4BDM41K/G7a8jRNf94NveBoE0EVawNEsdBw+LuNmitqR/JJOCtGVgdoYpku
 9d7CC4RLjnmQ52tVGwbfiWzNe/r15RMeYBk06HkSZKuiTKm3Zq8+0ma+Y8JypEfjDjWQUYfSmLI
 +M5vTZhalmTrkdimvrvqtm1nNBoq0PE1Gxt/seJixikyg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1759751351;
 b=bb2JFVBo2p1NLdZBoOc7DM2KWwAAREIccTycgIpUMokmp9klUg5mxmkSqvEAGW6ZRwO7bazV
 PGi3p0bDvpvdC7Fw3vi7Mui2UISL49H8tK5bDZE5bi6ZGUqgBHb2Hf+v3DbCNjKc/0i7FvDJ0gT
 5/OBXTUwOSlb5BZ66uUjABWD3wiJRV4pfPC33cGW25ghIanscWNkTzsE8EkJiJdAYuRJK9GbRtb
 WRXi0+jaua/M14hfSWXym2m+2XoW8yC03Y3hKWfzBDHdxbVgZ9RFE3g6slCol9LDa1OV1bLzlPh
 j8SElUVSWXcdJTdQiS4bbx/MhxI646KkiUT1uqeYxrpqA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay76-hz1.antispameurope.com;
 Mon, 06 Oct 2025 13:49:11 +0200
Received: from schifferm-ubuntu.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: matthias.schiffer@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 67843220CBE;
	Mon,  6 Oct 2025 13:49:02 +0200 (CEST)
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Tony Luck <tony.luck@intel.com>,
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>,
	Andrew Lunn <andrew@lunn.ch>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	linux@ew.tq-group.com,
	Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Subject: [PATCH v3 0/2] TQ-Systems TQMa62xx SoM and MBa62xx board
Date: Mon,  6 Oct 2025 13:47:46 +0200
Message-ID: <cover.1759749553.git.matthias.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:matthias.schiffer@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: matthias.schiffer@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay76-hz1.antispameurope.com with 4cgHbz2JRWz4LZB9
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:48afd15d2880b31a25c63c7ab36f7410
X-cloud-security:scantime:2.103
DKIM-Signature: a=rsa-sha256;
 bh=Nwv2x3AV2URX4eDt226Z25gIAY13bxvGxt/6sHiSWCk=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1759751350; v=1;
 b=KuO4ph0c7aFQd9grtk2kveheG8aVwVauHDEmZaAo48vsb6ZnyCwWHD4htxMOAcR/TZaT32D6
 Z4L97cquT8p+Y8qGRx85ibO1OJpvP2Jwx5F02fOe7BcY7ApA80o2WBW1wEOFETAYU9YCYiKcdeh
 aH51reIG6orARYFQJtyKuViFidWp1WzF4+3iIialXkXfQipl6z9prVmskK3Uv3Nt2p/3NGEdKYO
 Mc5Gg5LfuPDa5gXaer6ua9dgrEBiAvO46A+Qp8o3yl4EFTYQHf1CBFeJR7jr7qFJIF8PNEyq24D
 DxUvD/vrZrK9Jc2JHt/WRoQldUMy2uQF0YzTCfnzVStfA==

This adds Device Trees for out AM62x-based SoM TQMa62xx and its
reference carrier board MBa62xx.

Not yet included are overlays to enable LVDS display output and MIPI-CSI
camera input.

Changes in v3:
- Rebased onto ti-k3-dt-for-v6.18
- 3 of the 5 patches in v2 have been applied already and are dropped
- Include k3-am62-ti-ipc-firmware.dtsi, drop now redundant configuration
- Change node name for MCU reserved memory to 'memory'
- Use rgmii-id PHY mode
- Drop now redundant ti,rx-internal-delay
- Update simple-audio-card,name to match other TQ SOMs with compatible
  configuration
- Reference dss_pins in dss node (actual display support will be added
  in a follow-up patch series)
- Consistently use GPIO_ACTIVE_HIGH define
- Drop unneeded usb0 quirk flags
- Add boot phase tags

Changes in v2:
- Collected acks and reviews
- Rebased onto v6.13-rc1

Matthias Schiffer (2):
  dt-bindings: arm: ti: Add compatible for AM625-based TQMa62xx SOM
    family and carrier board
  arm64: dts: ti: Add TQ-Systems TQMa62xx SoM and MBa62xx carrier board
    Device Trees

 .../devicetree/bindings/arm/ti/k3.yaml        |   7 +
 arch/arm64/boot/dts/ti/Makefile               |   1 +
 .../boot/dts/ti/k3-am625-tqma62xx-mba62xx.dts | 928 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am625-tqma62xx.dtsi | 319 ++++++
 4 files changed, 1255 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am625-tqma62xx-mba62xx.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-am625-tqma62xx.dtsi

-- 
TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
https://www.tq-group.com/



Return-Path: <devicetree+bounces-251628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA63CF5215
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 19:00:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A627E315E716
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 17:54:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB7BC33FE0A;
	Mon,  5 Jan 2026 17:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b="PaQCKdNn"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-228.siemens.flowmailer.net (mta-64-228.siemens.flowmailer.net [185.136.64.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461CE33A02B
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 17:54:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767635660; cv=none; b=KEeJ9qa47hCs33IN+HrM3+JYmWt+ZHJf/RXzeu7G2UC6e3ktZgY/fNxVIXd8tGtoi+g7vivKFqAzWkWqq4GTbg5Xabmy3m3c/PfeIw/iK7lZOr4X7s+N0sf7aqnL9xNEO+kdoBtyBgLEOIWZMnDZGnIh0iSvHZMgncBn/3A6YnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767635660; c=relaxed/simple;
	bh=rp6oMiltIBG5xzrwYgM7NxRGzmICVUFnI94Pv6EsBg0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fZt3mnTl2Y0wh7enJ8pGEg65hDGun/TAIpur2ax1hs5mKP5pbe4DFWIm2iuUCijUbCsF07VMHfwUgEX0JGN18RlFdq9UjfVPqZfdomMjTUBYEXySfsQPOLJT37fEvF+4fnE7VMDIpfo+wQWSZNgrecCaSoUAC2rn9oWS2eBo95s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b=PaQCKdNn; arc=none smtp.client-ip=185.136.64.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-228.siemens.flowmailer.net with ESMTPSA id 202601051754144f801c6bf2000207e2
        for <devicetree@vger.kernel.org>;
        Mon, 05 Jan 2026 18:54:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=alexander.sverdlin@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=78lJofstsjazXIljE1VwN40yDxLb/avzRgg48ql6ksw=;
 b=PaQCKdNnNbbNc6UG2NV7JdahCjMrsDyJQR63oKwvBlEAwc3V0T1m4sEeCpHT1xKO9naMJT
 5t6cYN4DAnn38f5al+XsRlvmxni14yIvmozi+gJaNCtZ2wwCKMhXvPlbUKR+3ZlbkJFxvp6Z
 1eRy5oBGYKyo6PkOX8mEc+FDaYGebU6xbv/2oi2BIIxXj5rPggWOX0pcQvxPvnCFV711Sy2Z
 RIe8xz4XXcBj7OLzC/Pcvunon31RK/+aY9DZj4nPYqL7oFCo4bwXsAjgVfB9cm2t9Hwk/CLP
 a6FPV3DfkaQHBrWr+lu9Iq77pdAkMsY5yT1b4NX/OdxQF4sMc6hoGAaQ==;
From: "A. Sverdlin" <alexander.sverdlin@siemens.com>
To: netdev@vger.kernel.org
Cc: Alexander Sverdlin <alexander.sverdlin@siemens.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	Andrew Lunn <andrew@lunn.ch>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Golle <daniel@makrotopia.org>
Subject: [PATCH net-next v3 0/2] dsa: mxl-gsw1xx: Support R(G)MII slew rate configuration
Date: Mon,  5 Jan 2026 18:53:09 +0100
Message-ID: <20260105175320.2141753-1-alexander.sverdlin@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-456497:519-21489:flowmailer

From: Alexander Sverdlin <alexander.sverdlin@siemens.com>

Maxlinear GSW1xx switches offer slew rate configuration bits for R(G)MII
interface. The default state of the configuration bits is "normal", while
"slow" can be used to reduce the radiated emissions. Add the support for
the latter option into the driver as well as the new DT bindings.

Changelog:
v3:
- use [pinctrl] standard "slew-rate" property as suggested by Rob
  https://lore.kernel.org/all/20251219204324.GA3881969-robh@kernel.org/
- better sorted struct gswip_hw_info initialisers as suggested by Daniel
v2:
- do not hijack gsw1xx_phylink_mac_select_pcs() for configuring the port,
  introduce struct gswip_hw_info::port_setup callback
- actively configure "normal" slew rate (if the new DT property is missing)
- properly use regmap_set_bits() (v1 had reg and value mixed up)
- https://lore.kernel.org/all/20251216121705.65156-1-alexander.sverdlin@siemens.com/
v1:
- https://lore.kernel.org/all/20251212204557.2082890-1-alexander.sverdlin@siemens.com/

Alexander Sverdlin (2):
  dt-bindings: net: dsa: lantiq,gswip: add MaxLinear R(G)MII slew rate
  net: dsa: mxl-gsw1xx: Support R(G)MII slew rate configuration

 .../bindings/net/dsa/lantiq,gswip.yaml        |  7 +++++
 drivers/net/dsa/lantiq/lantiq_gswip.h         |  1 +
 drivers/net/dsa/lantiq/lantiq_gswip_common.c  |  6 ++++
 drivers/net/dsa/lantiq/mxl-gsw1xx.c           | 31 +++++++++++++++++++
 drivers/net/dsa/lantiq/mxl-gsw1xx.h           |  2 ++
 5 files changed, 47 insertions(+)

-- 
2.52.0



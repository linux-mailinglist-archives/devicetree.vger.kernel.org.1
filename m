Return-Path: <devicetree+bounces-254995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A17DFD1E3DB
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:54:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5B97B30A3F1C
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:46:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10EAE393DF4;
	Wed, 14 Jan 2026 10:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b="LzIDAseC"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-226.siemens.flowmailer.net (mta-65-226.siemens.flowmailer.net [185.136.65.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB3D5342CA7
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768387578; cv=none; b=h5dYRkeu8VWvNaBHbrahx1ipxALLofqDeKhTaVFSa2trNi5mOx4+YiXUW0rSDGLXnBoluSvQ0pUj5xeWO4w+G89wIpTOZeGBTe04AIw+/NcToeiHW1/aJLnqqalsZ9qBEGk3DOzDNg/Zl7/QC/ocmKSQ69fIptYIorwFeSuyy/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768387578; c=relaxed/simple;
	bh=D+e3z0jwwSJ/jjSIelEwRyJu/mea3WE63qX44iBS6wY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dPVOus8nEb/Xs1vFp9MjR6ft55b5zWNXFydK8Ebx074bqKg9QL6TU3DAO3x0yHlhQZyw3CbZzT3Qo10S9+c8TIZX8RUKaORjFtwHV6u2rlBQoxm1aJgg2U0JmhiHWRWotjzXFGkhRd2/Ktrdyy3+N7O1hk1G7JzHekJjluxo718=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b=LzIDAseC; arc=none smtp.client-ip=185.136.65.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-65-226.siemens.flowmailer.net with ESMTPSA id 20260114104603b9eb0810f400020774
        for <devicetree@vger.kernel.org>;
        Wed, 14 Jan 2026 11:46:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=alexander.sverdlin@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=Hsk9giDZ3rzrNEZl642AzZnZlbepHrpP8Fn7XrRdciU=;
 b=LzIDAseCuMMfV+6Uhs541ZX5a8pa5dz6Nn4ssTJDd2T39uqWbugy7c+l56J+N+MfL780Lt
 SQXyGU6+sd0Jce+0z992jaPnIUa40Ae03iweg64Yl7A5Ip5XQZdk992RqLnaLQZd5IEfKn2v
 4PcT5DdVx7rA4oI8Hc0LAkCav0stLwRmCNUghDpVSDb2UsXnUHvC83lZzBMKYYNMBGEGe/g6
 EPpS/LxQdHgZKLPj+Q5l2g6uDYOWGkQLguCL/Ch4+wWUqzpsXRgRdU0kLTawQbCWWCw7qtbN
 rb29G9UBSxNAfgwRJVAwEl6TKRiQQ7qF/LIJMS6Ip8GsF1pHurKYaigw==;
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
Subject: [PATCH net-next v5 0/2] dsa: mxl-gsw1xx: Support R(G)MII slew rate configuration
Date: Wed, 14 Jan 2026 11:45:02 +0100
Message-ID: <20260114104509.618984-1-alexander.sverdlin@siemens.com>
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
v5:
- improved options' descriptions on Rob's suggestions
v4:
- separate properties for TXD and TXC pads
- https://lore.kernel.org/all/20260107090019.2257867-1-alexander.sverdlin@siemens.com/
v3:
- use [pinctrl] standard "slew-rate" property as suggested by Rob
  https://lore.kernel.org/all/20251219204324.GA3881969-robh@kernel.org/
- better sorted struct gswip_hw_info initialisers as suggested by Daniel
- https://lore.kernel.org/all/20260105175320.2141753-1-alexander.sverdlin@siemens.com/
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

 .../bindings/net/dsa/lantiq,gswip.yaml        | 22 ++++++++++
 drivers/net/dsa/lantiq/lantiq_gswip.h         |  1 +
 drivers/net/dsa/lantiq/lantiq_gswip_common.c  |  6 +++
 drivers/net/dsa/lantiq/mxl-gsw1xx.c           | 40 +++++++++++++++++++
 drivers/net/dsa/lantiq/mxl-gsw1xx.h           |  2 +
 5 files changed, 71 insertions(+)

-- 
2.52.0



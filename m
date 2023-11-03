Return-Path: <devicetree+bounces-13829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E17E37E0B54
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 23:56:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9BBB52811FC
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 22:56:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD9E524A0C;
	Fri,  3 Nov 2023 22:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="iUsvARtH"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBBC72374D
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 22:56:18 +0000 (UTC)
Received: from mail.zeus03.de (www.zeus03.de [194.117.254.33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B224D62
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 15:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=//vHDdaoI7preO
	uPzu7V9aDR11Gy4yS0cSesSqxf2j0=; b=iUsvARtHMQcT4RqRHG3CyfHdzIQLTO
	00wA9s8kq25uXsxptGsrlKrEnjC0DrdXjTqlNuUQg/g8N0hFG6a8zP9feAtbR7dX
	H+Fljee9ydaw6hnaVPCIK5swcplWBJF+YptGWedubw67RQThYox878WWQF1FQEtT
	B4wNIEKb47xziOVr3dkC9MWq6qWUCcx3peSJBtVZwuOz4+K0zIWiJO7bN8JDeTZg
	vV3WPUGjSzqlcgN5vCdK3QHnDAuU0hDFfNJRf30dn+DDfsSRNiFl2P2lZmbKP/uY
	vVGUXZD4Qm3aZtQlZh1j3/CPH1um8nfzWzRdxtSmWh8taQWEN2+QgAhA==
Received: (qmail 1327833 invoked from network); 3 Nov 2023 23:56:11 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 3 Nov 2023 23:56:11 +0100
X-UD-Smtp-Session: l3s3148p1@/tAgaUcJ8s1ehhrK
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	devicetree@vger.kernel.org,
	Johan Hovold <johan@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/3] gnss: ubx: support the reset pin of the Neo-M8 variant
Date: Fri,  3 Nov 2023 23:55:57 +0100
Message-Id: <20231103225601.6499-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.35.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Renesas KingFisher board includes a U-Blox Neo-M8 chip with its
reset pin wired to a GPIO. To support that, we need "reset-gpio" support
(patches 2+3). But first, simplify regulator handling with a new helper
(patch 1).

Changes since v3:
* rebased to 6.6
* improved commit messages for patches 2+3


Wolfram Sang (3):
  gnss: ubx: use new helper to remove open coded regulator handling
  dt-bindings: gnss: u-blox: add "reset-gpios" binding
  gnss: ubx: add support for the reset gpio

 .../bindings/gnss/u-blox,neo-6m.yaml          |  5 +++
 drivers/gnss/ubx.c                            | 35 ++++++++-----------
 2 files changed, 20 insertions(+), 20 deletions(-)

-- 
2.35.1



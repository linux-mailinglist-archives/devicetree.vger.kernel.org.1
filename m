Return-Path: <devicetree+bounces-104316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E37B797DF62
	for <lists+devicetree@lfdr.de>; Sun, 22 Sep 2024 00:21:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A7D382820E4
	for <lists+devicetree@lfdr.de>; Sat, 21 Sep 2024 22:21:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21E7D16C444;
	Sat, 21 Sep 2024 22:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="dEHaZCqT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [207.246.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D3B153BF8
	for <devicetree@vger.kernel.org>; Sat, 21 Sep 2024 22:21:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=207.246.76.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726957273; cv=none; b=pE6imhtGvchpFriOevx1If0XdZj8abSmfihdz8K2jtx1NQHA9LabibrulXTS4T2pGJYi/67R40otI6qEzG28kWMzXzWRDq/CoIqRtnHVfz4Ao4vqadW7d/0SP54Y24Y9V2SCnMO35Y/VDPm6xSMnG9cAVOyD/xzcPkhTZbWdOXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726957273; c=relaxed/simple;
	bh=ID/PC1Vn0huGT79FcgxXeZ14UYfyjzO9eLEYlrjz77M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bmuyVkRNeBNMjtzady/TF92FPomiSHh0P2zQpu7iL3LzWqI4xcvP13Lb1AKpppr0TX85if5c9ul/3v9yfhjDLJKgkM6uoxxOwT2BlYDgD0tdydnoPzCNiaWnw0HiMWj5drCZEYNmdNGp4KVmJH2dyPnr8V1wetU5AuGIuVfaLeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=dEHaZCqT; arc=none smtp.client-ip=207.246.76.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1726957236;
 bh=vW3Ue0teLF7LHwhAhdpVjB9NkznQc9ED1YULlXDH87A=;
 b=dEHaZCqTjMmv5qQ4mO0tg70fdOCbYDQn3h+zYTJaYGpFQLsdm2fA0vUo0HyO6tescXmyGsWmH
 kgpDJkOjA6gwp0MxAt41CscOItwXkttNhSoo/UQFwOAHyXYlI/JytdVdfmzFEa7cFDXPmO2cuJZ
 N0VnF2WLi7iguifUFHcZ4j3asUz4ha0ixPcCQ8AGVDn1FKEjUSc0wX/rL5//ut0JTNzm2WFpsiO
 6DLRgBh+Oq/IRx6O/b6pp7jrZN4AOJCBFrks19M7kRZZzCPJrF6JV7dYWRPv+g9Kd8JW+o9t+F1
 0D523SXemZ5d7GzMsgbpGwBDZdKdHYp4/Go60gu2onNw==
From: Jonas Karlman <jonas@kwiboo.se>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/3] rockchip: Split rk3288-vop compatible into big and lit
Date: Sat, 21 Sep 2024 22:20:00 +0000
Message-ID: <20240921222007.2301868-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 66ef46b118c10b4d4a165cf1

The Rockchip RK3288 SoC contain two different Visual Output Processor
(VOP) blocks, VOP_BIG and VOP_LIT. The VOP blocks support different max
output resolution, 3840x2160 and 2560x1600.

This series add compatible to differentiate between the two VOP blocks,
backward and forward compatibility is kept for older and newer DTs.

Jonas Karlman (3):
  dt-bindings: display: rockchip-vop: Split rk3288-vop into big and lit
  ARM: dts: rockchip: Split rk3288-vop into big and lit
  drm/rockchip: vop: Split rk3288-vop into big and lit

 .../display/rockchip/rockchip-vop.yaml        | 36 +++++++++++--------
 arch/arm/boot/dts/rockchip/rk3288.dtsi        |  4 +--
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c   | 27 ++++++++++----
 3 files changed, 43 insertions(+), 24 deletions(-)

-- 
2.46.1



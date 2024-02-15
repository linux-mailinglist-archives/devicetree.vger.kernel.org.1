Return-Path: <devicetree+bounces-41943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE35855E3B
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 10:32:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C7E471F2197F
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 09:32:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6F2017591;
	Thu, 15 Feb 2024 09:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="FXVwh+61"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F60F1B81B
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 09:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707989542; cv=none; b=nphjThushYUpvgOTzc5HUfdZlODuS0m89NX0M8sbyKVsBmuM/c59662b7u3npl97PV3C36xQzDuNPGbzC5IRDcpPtvKCjcHZs4geajdkmaLBN2ak+mjzi397dQ0DJjGTXtm3Hr6XjwOarYOUlMnGrEZO+pGdIaX75vXaKe1aXJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707989542; c=relaxed/simple;
	bh=Lu87iRuFgtOMWDq/x1Xub9ZQ7G6mYnvEpZIGOV8cpIg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=t8kvkCEYvTlzBu0i/ZOomCcGRMRBlWxW4xKotQhl+3f4U4YTDB57gWNZvBtwtvt2G84eDCMvtMy2mLvr/FwOckpbIsuFiBkNu0dx/03S9OHqHhAYmFWVRaJpK3S0ZKMpB+v4ty45nnGZnQLVTJl++ca7M1Dv72afkHOJrHmQbpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=FXVwh+61; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1707989538; x=1739525538;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=s3bGtiNlRsHrcXKTk9RvPlEL9pVcHOHPkU2yGNQQViY=;
  b=FXVwh+61rdzJmLrPum77MQjqAVIhm/Aq5fbsSGIyflPYr6kB3EAghkpS
   5ChRnbTlLdYBh6Boro48/FqqX4+ogdljOihnhhkndLVFV+zSgchNPDjjp
   ywBMPwWa4jg/XOJDsatRtUlNn05xzfYAz/yYvoFwFuGdckExHXeykGZJC
   K7BNN0zljrgN+4rxm6c1kHFtRIOgH0FC5xIDK0gWsmQeeX0pqQ1M6XFIW
   poXGAK6LlSY/1di+wUeTvnuS+i+Wbumz+MsknDmtceLix2jc2WEm7Lodc
   8hE6qh2MIIiUhyO9oBC9GhIJ2JnxInHgSdWP6MTrXUZL4mgsQc5SDkADe
   w==;
X-IronPort-AV: E=Sophos;i="6.06,161,1705359600"; 
   d="scan'208";a="35420058"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 15 Feb 2024 10:32:16 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id E6563280075;
	Thu, 15 Feb 2024 10:32:15 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v5 0/2] extcon-usb-gpio YAML conversion
Date: Thu, 15 Feb 2024 10:32:12 +0100
Message-Id: <20240215093214.796821-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi everyone,

it seems these two patches got missed from v4[1]. So v5 is a new version only
containing the patches not applied yet. The rebase also includes a slight
change to the mediatek patch.

Changes in v5:
* rebased to next-20240215

Best regards,
Alexander

[1] https://lore.kernel.org/all/20230724103914.1779027-1-alexander.stein@ew.tq-group.com/

Alexander Stein (2):
  dt-bindings: extcon-usb-gpio: convert to DT schema format
  arm64: dts: mediatek: Replace deprecated extcon-usb-gpio
    id-gpio/vbus-gpio properties

 .../bindings/extcon/extcon-usb-gpio.txt       | 21 --------
 .../bindings/extcon/extcon-usb-gpio.yaml      | 51 +++++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt2712-evb.dts   |  4 +-
 arch/arm64/boot/dts/mediatek/mt8173-evb.dts   |  2 +-
 4 files changed, 54 insertions(+), 24 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
 create mode 100644 Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml

-- 
2.34.1



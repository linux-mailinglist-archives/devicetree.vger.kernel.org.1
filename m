Return-Path: <devicetree+bounces-50984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 852D187DE2F
	for <lists+devicetree@lfdr.de>; Sun, 17 Mar 2024 16:57:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9803CB211C8
	for <lists+devicetree@lfdr.de>; Sun, 17 Mar 2024 15:57:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AC131CA89;
	Sun, 17 Mar 2024 15:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="ECof+i1S"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E9391C68F
	for <devicetree@vger.kernel.org>; Sun, 17 Mar 2024 15:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710691072; cv=none; b=pRLXxGhktA5pr0Dpyd6ruQ5mmFca/sUPlaBa0uW/rkFN4M8ivAz+Jj3rEIs4AwhFAX/E/eQ5zf5r/Z+YpJJyOSENTNgkflbaAovmZn56ljvntA1Bz01Tepj652SOCK1QwVITaZA1NNc+c18D8kMB7dwx/Gnq4udIbiab9tk8T7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710691072; c=relaxed/simple;
	bh=25i5J1kFlZfTTly5Ul2J+vToXqh5dRGaBYCuadqfxts=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EaWBxWxOlWmc6MRcnylIGKSEWOFUouASPL50aBnMf+1+cn6obgW87nWFDyjXj92qIqI6J9fuc850R8Msj9QPnp6vMXRsH5n/jHrJiD4yYRlxY1HQgbC/RTnyBhH44ounaw2ZkDNsiFMOYg3jBnrAE5Uw0OPJOrb2aKQaGnRU+a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=ECof+i1S; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0A8D1D01;
	Sun, 17 Mar 2024 16:57:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1710691043;
	bh=25i5J1kFlZfTTly5Ul2J+vToXqh5dRGaBYCuadqfxts=;
	h=From:To:Cc:Subject:Date:From;
	b=ECof+i1SV7j9dDYv3YPTZhiOsBLLbtOKxV/LUlbxFhzMxB6ArZox9moy29j0uv+Fa
	 ZC+oaUHSN9WyFNSFr5LcaW2p4MtP3u7EIcyMwxIv4WmJRzn2RCx8rvDWlm6zWhxLLD
	 QeZ3ZhignCmuO0IT/grqOUK2KUE+zJPHeutHIMFo=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 0/2] drm/panel: Add Startek KD050HDFIA020-C020A support
Date: Sun, 17 Mar 2024 17:57:44 +0200
Message-ID: <20240317155746.23034-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.43.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

This small series adds support for the Startek KD050HDFIA020-C020A panel
to the ilitek-ili9881c driver. There's not much special here, patch 1/2
addresses the DT binding and patch 2/2 the driver. Please see individual
patches for details.

The series has been tested witha Compulab SB-UCM-iMX8MPLUS carrier
board.

Laurent Pinchart (2):
  dt-bindings: ili9881c: Add Startek KD050HDFIA020-C020A support
  drm/panel: ilitek-ili9881c: Add Startek KD050HDFIA020-C020A support

 .../display/panel/ilitek,ili9881c.yaml        |   1 +
 drivers/gpu/drm/panel/panel-ilitek-ili9881c.c | 222 ++++++++++++++++++
 2 files changed, 223 insertions(+)

-- 
Regards,

Laurent Pinchart



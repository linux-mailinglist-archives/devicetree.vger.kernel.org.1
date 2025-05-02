Return-Path: <devicetree+bounces-173061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DE7AA759D
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 17:08:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 28F521BA2707
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 15:08:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75BA525B1ED;
	Fri,  2 May 2025 15:07:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E83BB2571D6
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 15:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746198431; cv=none; b=F0qd2vhdcaIcCzeUw8hu9Dy87NxdL3gFIfgN+s2oi8vPp9O05GK2ipEuoWhStg4WNLMG9Jo+cAWsw8PSjhgPFUEsodAD0Eo+T1wDAtrpHVxz6AxMNFcryUI/iTbsbYkAOVIBLZY9UCH1oBw/234LvwzAceeEgRjLMlztjYGRbhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746198431; c=relaxed/simple;
	bh=Gzby+9GIxIVi1tD1qQglYZ8H1Y8eSr5Pr6g3ipujJ1c=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Rhch93DlTPggt4j0+opz7+0BDB3Q6IeiHa/v36WHKhijiBTsWBig+2+/ME9RYdf0W1KnB2cJXcXcWhm8IiYpDydjKOjBKN83xquaSWBiHzf4J+M+nhKfTOevoJacWp4zv1igPaIkdGirq9EQJlFvGN8fbj1Mn5Pl+rjGwlIq6Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uAryU-0004HG-7G; Fri, 02 May 2025 17:06:50 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: nicolas.dufresne@collabora.com,
	benjamin.gaignard@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	shawnguo@kernel.org,
	Sascha Hauer <s.hauer@pengutronix.de>,
	kernel@pengutronix.de,
	festevam@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paulk@sys-base.io,
	hverkuil@xs4all.nl,
	laurent.pinchart@ideasonboard.com,
	sebastian.fricke@collabora.com,
	ming.qian@nxp.com
Cc: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Michael Tretter <m.tretter@pengutronix.de>
Subject: [RFC PATCH 04/11] media: uapi: add more V4L2_H264_ENCODE_FLAGs
Date: Fri,  2 May 2025 17:05:07 +0200
Message-Id: <20250502150513.4169098-5-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250502150513.4169098-1-m.felsch@pengutronix.de>
References: <20250502150513.4169098-1-m.felsch@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

From: Michael Tretter <m.tretter@pengutronix.de>

The encode flags may be written into the slice header by the hardware
encoder. User space decides if the flags are set and which features are
used, but the driver has to write it into the registers.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 include/uapi/linux/v4l2-controls.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
index a8df393c9ead..152b6b0cfe78 100644
--- a/include/uapi/linux/v4l2-controls.h
+++ b/include/uapi/linux/v4l2-controls.h
@@ -1774,6 +1774,9 @@ struct v4l2_ctrl_h264_encode_params {
 #define V4L2_H264_ENCODE_FLAG_ENTROPY_CODING_MODE	0x01
 #define V4L2_H264_ENCODE_FLAG_TRANSFORM_8X8_MODE	0x02
 #define V4L2_H264_ENCODE_FLAG_CONSTRAINED_INTRA_PRED	0x04
+#define V4L2_H264_ENCODE_FLAG_NUM_REF_IDX_OVERRIDE	0x08
+#define V4L2_H264_ENCODE_FLAG_NO_OUTPUT_OF_PRIOR_PICS	0x10
+#define V4L2_H264_ENCODE_FLAG_LONG_TERM_REFERENCE	0x20
 
 #define V4L2_CID_STATELESS_H264_ENCODE_RC	(V4L2_CID_CODEC_STATELESS_BASE + 9)
 
-- 
2.39.5



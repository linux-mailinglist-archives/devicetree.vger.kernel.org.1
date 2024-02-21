Return-Path: <devicetree+bounces-44453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB0485E516
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 18:58:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5EFC51C241D4
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 17:58:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB3AA84FD9;
	Wed, 21 Feb 2024 17:58:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B53C84FD8
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 17:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708538305; cv=none; b=Ip8KfMjk2ojP3Ommap329eRXpcX3QGtwhKHM2kpr4q2EYSShzM7V1FxlL6jjIaGbItN1ufgEfq3Xsf/4r3m9XdZRLvqyr/uDuFsePf+yBjgxe/gAVV798NyknkI7kD7Mp0tIQJH2mp9HnebGSulDGdSNcCR26ydLK3p+kHkbdVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708538305; c=relaxed/simple;
	bh=SDXjqB4wIG3XnhyFFBnM6Pd3RHudSe6ZGddZfgcxJrQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ppPhleJVDH6YQ63zsktxGS1nM+p1SP0CfLwrZz5oWsyyiquBfvH5cgZ48iuTvz7/np2TACRuW3/6m2Xi2EhhyzbyrILCdPVtjyL7C0uDyULuVHtRFqZkaiEgnB5VQ4hBkdSyhvH3lKNLWsjw97GtClRYVsW73JVfnnDeocluY0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rcqrF-00046q-LD; Wed, 21 Feb 2024 18:58:13 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: jic23@kernel.org,
	lars@metafoo.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	denis.ciocca@st.com,
	linus.walleij@linaro.org
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de
Subject: [PATCH] dt-bindings: iio: st-sensors: Add IIS2MDC magnetometer
Date: Wed, 21 Feb 2024 18:58:10 +0100
Message-Id: <20240221175810.3581399-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
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

Add the iis2mdc magnetometer support which is equivalent to the lis2mdl.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 Documentation/devicetree/bindings/iio/st,st-sensors.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/st,st-sensors.yaml b/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
index fff7e3d83a02..ee593c8bbb65 100644
--- a/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
+++ b/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
@@ -64,6 +64,7 @@ properties:
           - st,lsm9ds0-gyro
       - description: STMicroelectronics Magnetometers
         enum:
+          - st,iis2mdc
           - st,lis2mdl
           - st,lis3mdl-magn
           - st,lsm303agr-magn
-- 
2.39.2



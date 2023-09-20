Return-Path: <devicetree+bounces-1818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2D97A880D
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:20:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BB52D28250E
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85A3F3B797;
	Wed, 20 Sep 2023 15:20:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3DDA3B2B0
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 15:20:22 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5775DCE;
	Wed, 20 Sep 2023 08:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=rkPvlf3H1P9ACxQK+FGe3o7kq/gw7tnfk6uZjZgiHwQ=; b=w23Jc7vJrj8ES1UxKOLvc2DyYu
	FFzyWbYr0w6Iq8z+LLkAe6/SaXIpzd2E7ABJkzlg9NPXLocnxTvdbD/cc5KvMA3KKJjHGZKE1QevG
	/OS3YVFgoIlfT1bBYZ6JazmSCpZT0z/mn0fPNCYXi5hqb8LqPTUTN3a4Yuna72wOgyuY=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:43190 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qiyzx-0008Co-4O; Wed, 20 Sep 2023 11:20:17 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	hvilleneuve@dimonoff.com
Cc: linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	hugo@hugovil.com
Date: Wed, 20 Sep 2023 11:20:11 -0400
Message-Id: <20230920152015.1376838-1-hugo@hugovil.com>
X-Mailer: git-send-email 2.30.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
Subject: [PATCH 0/4] serial: sc16is7xx: device tree improvements
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

Hello,
this patch series improves DT properties naming and handling, and converts
sc16is7xx bindings from text to YAML.

Patch 1 make sure we use the device_property APIs when configuring irda mode.

Patch 2 is in preparation for patch 3, to make sure we recognize
"nxp,irda-mode-ports" DT property as well as the (soon to be) legacy property
"irda-mode-ports".

Patch 3 adds a vendor prefix to irda-mode-ports property.

Patch 4 is the actual conversion of bindings to YAML.
Conversion to YAML has been suggested by Andy Shevchenko during review for
another patch series for the sc16is7xx:
Link: https://lkml.org/lkml/2023/5/25/743

Thank you.

Hugo Villeneuve (4):
  serial: sc16is7xx: use device_property APIs when configuring irda mode
  serial: sc16is7xx: recognize "nxp,irda-mode-ports" DT property
  dt-bindings: sc16is7xx: add vendor prefix to irda-mode-ports property
  dt-bindings: sc16is7xx: convert to YAML

 .../bindings/serial/nxp,sc16is7xx.txt         | 118 ----------------
 .../bindings/serial/nxp,sc16is7xx.yaml        | 126 ++++++++++++++++++
 drivers/tty/serial/sc16is7xx.c                |  40 ++++--
 3 files changed, 156 insertions(+), 128 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/serial/nxp,sc16is7xx.txt
 create mode 100644 Documentation/devicetree/bindings/serial/nxp,sc16is7xx.yaml


base-commit: c980248179d655d33af47f0b0bec1ce8660994c6
-- 
2.30.2



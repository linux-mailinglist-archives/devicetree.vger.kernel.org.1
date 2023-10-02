Return-Path: <devicetree+bounces-5282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C15C7B5D38
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 00:40:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 893F82811A1
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 22:40:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1744E20326;
	Mon,  2 Oct 2023 22:40:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87B47200BC
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 22:40:26 +0000 (UTC)
Received: from raptorengineering.com (mail.raptorengineering.com [23.155.224.40])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FA30CE
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 15:40:24 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id EC30682853B3;
	Mon,  2 Oct 2023 17:32:33 -0500 (CDT)
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id NMZshF3YjHxo; Mon,  2 Oct 2023 17:32:33 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 749D3828574D;
	Mon,  2 Oct 2023 17:32:33 -0500 (CDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.rptsys.com 749D3828574D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=raptorengineering.com; s=B8E824E6-0BE2-11E6-931D-288C65937AAD;
	t=1696285953; bh=p4kNTzkyLJ8t7HjjhbHfZ+oyVGvUP0QP8XNTdzHgjec=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=or4PjLNbtX1+cFbcX2nuy7ipgTRlKjzqeYDSzl31AsV2NjUdCx2mz8Qcow+WqDjPk
	 luCuhcJmSFJ6YlQn9NMh3GHsniAl7cmo7ANvSApJHsWOqTPDArKauKmThdi+xNsb+7
	 PWl8tufVZTU9352XFKhPCaOL9OtYw8uOrwl5QUhg=
X-Virus-Scanned: amavisd-new at rptsys.com
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 8oE5jABqyEN9; Mon,  2 Oct 2023 17:32:33 -0500 (CDT)
Received: from raptor-ewks-026.lan (5.edge.rptsys.com [23.155.224.38])
	by mail.rptsys.com (Postfix) with ESMTPSA id 1D79782853B3;
	Mon,  2 Oct 2023 17:32:33 -0500 (CDT)
From: Shawn Anastasio <sanastasio@raptorengineering.com>
To: devicetree@vger.kernel.org,
	lee@kernel.org
Cc: Shawn Anastasio <sanastasio@raptorengineering.com>
Subject: [PATCH 0/3] Add driver for SIE Cronos control CPLD
Date: Mon,  2 Oct 2023 17:32:19 -0500
Message-Id: <cover.1696284747.git.sanastasio@raptorengineering.com>
X-Mailer: git-send-email 2.30.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello all,

This series adds a driver for the multi-function CPLD found on the SIE Cronos
server platform. It provides, among other things, a watchdog timer and an
LED controller, both of which will depend on the MFD parent driver implemented
in this series. Device tree bindings are also included.

Thanks,

Shawn Anastasio (2):
  dt-bindings: vendor-prefixes: Add prefix for SIE
  dt-bindings: mfd: sie,cronos-cpld: Add initial DT binding

Timothy Pearson (1):
  mfd: sie-cronos-cpld: Add driver for SIE cronos CPLD

 .../bindings/mfd/sie,cronos-cpld.yaml         |  67 ++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   7 +
 drivers/mfd/Kconfig                           |  11 +
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/sie-cronos-cpld.c                 | 589 ++++++++++++++++++
 include/linux/mfd/sie/cronos/core.h           |  17 +
 include/linux/mfd/sie/cronos/registers.h      |  59 ++
 8 files changed, 753 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/sie,cronos-cpld.yaml
 create mode 100644 drivers/mfd/sie-cronos-cpld.c
 create mode 100644 include/linux/mfd/sie/cronos/core.h
 create mode 100644 include/linux/mfd/sie/cronos/registers.h

--
2.30.2



Return-Path: <devicetree+bounces-125048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 035049DA9C7
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 15:20:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 19BCFB20C81
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 14:20:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E56581FF600;
	Wed, 27 Nov 2024 14:20:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5E91FECC1;
	Wed, 27 Nov 2024 14:20:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.80.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732717215; cv=none; b=Xd/qgn3FG0x8FZikV2Lx2RPJEtfzu86HDDecRaNRQWHYFgy2tqhpr25A/kDDls5PR2wklHUJOEkGOCqhusAPXdZFg8MllQByy2sMmPjL6O4WVzVAxb8RuNlMDkOHJh1xpDAgrpZJwSQCJ91PnaeZ5XRC9tlVxfHfBFyjDW/uDDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732717215; c=relaxed/simple;
	bh=+Ck81q+LRJDOUdH9a4XDz5x2/B7DMOn0oBYq3df+nKY=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=VggycW7on+yeTR345/n2JetCL5Tn5epNiXlaVr5wyYSsZRNWoskrCgcmvfEgdGF8q/DqE0BoGyjmZG8olr5+GgeOq1pI9jBSYcR/cW5w25lkZZytZd3t5Jf1vgg5CzURSIrP7XFRuV6ssar++4OwwhTgkrDPUrD3/hszP80qcHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.80.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=andestech.com
Received: from mail.andestech.com (ATCPCS34.andestech.com [10.0.1.134])
	by Atcsqr.andestech.com with ESMTPS id 4AREJjpl082900
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK);
	Wed, 27 Nov 2024 22:19:45 +0800 (+08)
	(envelope-from cl634@andestech.com)
Received: from swlinux02.andestech.com (10.0.15.183) by ATCPCS34.andestech.com
 (10.0.1.134) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Wed, 27 Nov
 2024 22:19:45 +0800
From: CL Wang <cl634@andestech.com>
To: <cl634@andestech.com>, <alexandre.belloni@bootlin.com>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <devicetree@vger.kernel.org>
CC: <linux-rtc@vger.kernel>, <linux-kernel@vger.kernel.org>,
        <tim609@andestech.com>, <ycliang@andestech.com>
Subject: [PATCH V4 RESEND 0/3] rtc: atcrtc100: Add Andes ATCRTC100 RTC driver
Date: Wed, 27 Nov 2024 22:19:36 +0800
Message-ID: <20241127141939.1570952-1-cl634@andestech.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: ATCPCS33.andestech.com (10.0.1.100) To
 ATCPCS34.andestech.com (10.0.1.134)
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 4AREJjpl082900

This patch series adds support for the Andes ATCRTC100 Real-Time Clock. 

The series is now based on the rtc-next branch from:
git://git.kernel.org/pub/scm/linux/kernel/git/abelloni/linux.git.

This V4 submission addresses the feedback received from Krzysztof:
1. Ensured that the patch series is based on rtc-next.
2. Verified recipients and mailing lists using scripts/get_maintainer.pl.
3. Included all necessary To/Cc entries for proper review.

For details of the change log, please refer to the commit log of each patch.

Please kindly review.

CL Wang (3):
  rtc: atcrtc100: Add ATCRTC100 RTC driver
  dt-bindings: rtc: Add support for ATCRTC100 RTC
  MAINTAINERS: Add entry for ATCRTC100 RTC driver

 .../bindings/rtc/andestech,atcrtc100.yaml     |  43 ++
 MAINTAINERS                                   |   6 +
 drivers/rtc/Kconfig                           |  15 +
 drivers/rtc/Makefile                          |   1 +
 drivers/rtc/rtc-atcrtc100.c                   | 524 ++++++++++++++++++
 5 files changed, 589 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/rtc/andestech,atcrtc100.yaml
 create mode 100644 drivers/rtc/rtc-atcrtc100.c

-- 
2.34.1



Return-Path: <devicetree+bounces-134886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 887229FEE1E
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 10:05:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B1C71611B1
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 09:05:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A56FB188A0E;
	Tue, 31 Dec 2024 09:05:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="OK9fJyLh"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot01.ext.ti.com (lelvem-ot01.ext.ti.com [198.47.23.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAE661EEE6;
	Tue, 31 Dec 2024 09:05:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735635918; cv=none; b=Il5vy9+o+BrURoFfZb6t1h2QnPXE7lRzVm/3d9r+JH2NRT066uGMGvCr0bPUjS+KCp232Vuifon7ti4pqsn4Uye9A4/9rZor4RNqInS1VxHKXTETuffmjHVRnLXZ1j43I2CvpcIqURKb/RbettjbczYBzqhBd5x5f/UGycaDwdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735635918; c=relaxed/simple;
	bh=T+LCrdRbeIaVlPDPJl7w1SFhufrluKWlkNKtrQOD8Iw=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=C03vW+NgHLMLAIwKSrLE+jlfcpjbOhCxrKDv+/egYjTa35KvqQV/1QUMDdllT2guZpdcXN7jE0zrvF0iZ7d5c+QGHIim7EkgTlvtpU4/3mSZAXY29x1zMJB0PnwFkmlfRcGjcZnXjl7sS2qcaytMD7+9JYGaXolrwCxkfbNBbnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=OK9fJyLh; arc=none smtp.client-ip=198.47.23.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 4BV94Yol1658390
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Tue, 31 Dec 2024 03:04:34 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735635874;
	bh=VjtVVDWaw6XmJ9FZAoW+qHZDo3LcI9lR6qp/Css+jFY=;
	h=From:To:CC:Subject:Date;
	b=OK9fJyLhmndSPhxk5C31ruAU6YfEzGk/WYySqpJkGydAL/iQ7FCetdwf6pDyN9TWS
	 ZNHZAoHs79XV4CKmQlTd7FQOCJxY0sgIzzpGVpb9koxcoexWTN8Aa1O6EZXjyP2lfJ
	 CL5uR17O7RcHj1h69bJTAg0sH3B3U7ZYcO/ED3XQ=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4BV94YgT020666;
	Tue, 31 Dec 2024 03:04:34 -0600
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 31
 Dec 2024 03:04:33 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 31 Dec 2024 03:04:33 -0600
Received: from localhost (ti.dhcp.ti.com [172.24.227.95] (may be forged))
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4BV94Wql081898;
	Tue, 31 Dec 2024 03:04:33 -0600
From: Devarsh Thakkar <devarsht@ti.com>
To: <jyri.sarha@iki.fi>, <tomi.valkeinen@ideasonboard.com>,
        <airlied@gmail.com>, <maarten.lankhorst@linux.intel.com>,
        <mripard@kernel.org>, <tzimmermann@suse.de>,
        <dri-devel@lists.freedesktop.org>, <simona@ffwll.ch>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <praneeth@ti.com>, <vigneshr@ti.com>, <aradhya.bhatia@linux.dev>,
        <s-jain1@ti.com>, <r-donadkar@ti.com>, <j-choudhary@ti.com>,
        <h-shenoy@ti.com>, <devarsht@ti.com>
Subject: [PATCH 0/2] Add support for AM62L DSS
Date: Tue, 31 Dec 2024 14:34:30 +0530
Message-ID: <20241231090432.3649158-1-devarsht@ti.com>
X-Mailer: git-send-email 2.39.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

This adds support for DSS subsystem present in TI's AM62L SoC
which supports single display pipeline with DPI output which
is also routed to DSI Tx controller within the SoC.

Devarsh Thakkar (2):
  dt-bindings: display: ti,am65x-dss: Add support for AM62L DSS
  drm/tidss: Add support for AM62L display subsystem

 .../bindings/display/ti/ti,am65x-dss.yaml     | 25 +++++++++++++-
 drivers/gpu/drm/tidss/tidss_dispc.c           | 34 +++++++++++++++++++
 drivers/gpu/drm/tidss/tidss_dispc.h           |  2 ++
 drivers/gpu/drm/tidss/tidss_drv.c             |  1 +
 4 files changed, 61 insertions(+), 1 deletion(-)

-- 
2.39.1



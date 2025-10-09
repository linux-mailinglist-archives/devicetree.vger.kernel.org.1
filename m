Return-Path: <devicetree+bounces-225140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id B3140BCAE7A
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 23:20:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 396233507FF
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 21:20:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DD702820A4;
	Thu,  9 Oct 2025 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="C7IQ1hr1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f225.google.com (mail-pl1-f225.google.com [209.85.214.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E85D280325
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 21:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760044834; cv=none; b=Pg3NqcXbin0NmgtVuwugU6GKqoS/ncDbhK2CRoLPQxc98q1c1i9Q9WeFnqpfmPx2LR4BjAn6bZUzVjAaPiSeiv8UKz8e/JiKpajphsRMGJfH3gdDWzH2dnMWAq46GEr+hXf7it2GGD/89m8QKsXhjZ4hrrkjfZLifMP7j2PSo0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760044834; c=relaxed/simple;
	bh=ZhL87hWPCqJqUdWzKetD/aJArXJ8FhDY4s+4hHC081k=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=PigJnL9iqmLgPtP+yHrDesvNhzGNFc/oZxR2x42QgeRyg8AprlR4KdASlZDnbdKa3QeuWjgO+TAfIAPKC1vedTjwLZm9aN75kYnEyL2N+QqY2qI4YJj1ElBgyvvfFrnL/RqUV5COU2C0hFDVAhNYn93a6rHwxoQQtq3ZTjM2EVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=C7IQ1hr1; arc=none smtp.client-ip=209.85.214.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f225.google.com with SMTP id d9443c01a7336-2698e4795ebso13938585ad.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 14:20:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760044828; x=1760649628;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PQrmK4OLtZ+IgNtZ8671Owl8Y5KLotbw1U+tAsx0fP8=;
        b=oNR48rp2VMJXbuykHaKY/fIckMSJzx/cBB2NGt+3TAdIrlbRhoQDhjsgErJ028UMAt
         u1Nm1IHTj4S2SX2h/nZXt9xkFOPWq/rBQR1LUfyZnHDGOhrpn/jzrAlftdMKWJOMMG7a
         pj0mJ31bWEqDTV1sy51z1xWrHIP9YhuolHHCS/TUuFf6cL6b3SAZxLxuG4i5VlvUAxE8
         rN9VdO3vT0Wt2bZWePco9ugnkPUc/wEukSC/sMJQjlXXyMJun4gG5yAygFTS7wTttIyz
         CQmLjSu//UppOZxrQ1i6ZnM+MX8FWFl6SMkR1kirZGOT+i82BRcsHqWEoDM2Dwn/P2/e
         8h+A==
X-Forwarded-Encrypted: i=1; AJvYcCXVppuvoGGj2HJ7/MN8bBx0AbfC4gRlyyAFtG45Aaq00e2nSgJomkUHX7hHBSPXwj0/6XEjkHWXAWKY@vger.kernel.org
X-Gm-Message-State: AOJu0YxTGBkZIDWfA24NleFG5v/MU8ZRMh6XzzgTVRqmhqB7VYXaxzwu
	J8tzDcna+liS4/XOb4yQhaKNuFIz8Z0a0cH3PZ1XspD72D9jh1yftEgtJj4ipfeDJoOjFwZH5Es
	9LnroGT7Zrh1ipq76hKBG444xfitzJd5w9gQWa5Z3IOp1FoFROSLplm7t5rw1QAB9e7NdQSwW/4
	HvxBe5V6M2eIdaYo9N/D4VmCmwt1Vikfw5pNJwnvUw9726cwc6uzfdjE++g0t7n2evQFA/1arww
	ZPfiGWO318yiA==
X-Gm-Gg: ASbGnctULfB8kRGlT8Ggunb09Ykz/WTs+ypBHmdLLpWlF9EuPBNLyASkPNJHgzdhDBI
	vOrRr3pbNsPAvC3nkr9qsegAlykHkrVw0y4zQUXXCgEKPR6vovejzDq0t9BisDJFkuB9U3NaQuF
	C5zIPYgr6vK8Wbyp5kktqiPR7W6TYwx3nXAp1iK6muqSL8FFw7XuJ1r+pdOWVi/BDssbp7ElBZ0
	TzwAJt5yq731ErlREkOv88npdd1DZL+yoLCtwC0gbj1KOJ/OACfXSAOw7vjGFNSESH3TCCTdHsO
	JIykwGQwzEhzMriH8YzvHw6uZsXdsKPbDDorooCwMaq70ErwI+AjmOsIXoLNIova/bgjEbd4kpc
	d6fK0BDkWd+3RioZ2zENgt0ez90ZBcoTxJzdSrbQI/jzus20K3Wc3E9Dr7qgkMV6mELMpWoMWqb
	1LoP4Q
X-Google-Smtp-Source: AGHT+IEiFlRvAjcRbsnZ4KPyG3Ga0a9KZARjq3YQwuq1RJSAbX9hrmmkHdAMWjXIeiWmJfYImqmlKTH+bRs2
X-Received: by 2002:a17:903:2c5:b0:24b:e55:360 with SMTP id d9443c01a7336-29027386943mr115848965ad.23.1760044828201;
        Thu, 09 Oct 2025 14:20:28 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-118.dlp.protect.broadcom.com. [144.49.247.118])
        by smtp-relay.gmail.com with ESMTPS id d9443c01a7336-29034ef019asm2970415ad.40.2025.10.09.14.20.27
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Oct 2025 14:20:28 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-86835654255so755664385a.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 14:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1760044827; x=1760649627; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PQrmK4OLtZ+IgNtZ8671Owl8Y5KLotbw1U+tAsx0fP8=;
        b=C7IQ1hr16fabfBwl+LqkiTFxvCwn5fwb7V9rpS6CR7cw7+6fmS/9xO4IaxiuldEPS1
         x2GpL/+adxI5X11U8/4TJqj3Kt24OVJd5IfSiVaaTful2UP+fPjTcK544B9JtNFkFSP3
         DQwgwwe1pez5eCDm9uE6I8jKhw8+SwgoX8BbE=
X-Forwarded-Encrypted: i=1; AJvYcCWvUh/3qBNHw5PuaCJtXq6TElbvHAjQ2fpglqxv9DiKQOwLrWHnjYuiYWp9XE/vJ1zyvJiDsxHu5K/N@vger.kernel.org
X-Received: by 2002:a05:620a:4492:b0:865:cacf:e133 with SMTP id af79cd13be357-8835104c86bmr1139487185a.36.1760044826826;
        Thu, 09 Oct 2025 14:20:26 -0700 (PDT)
X-Received: by 2002:a05:620a:4492:b0:865:cacf:e133 with SMTP id af79cd13be357-8835104c86bmr1139483785a.36.1760044826325;
        Thu, 09 Oct 2025 14:20:26 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8849f9ae428sm274832685a.16.2025.10.09.14.20.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 14:20:25 -0700 (PDT)
From: Kamal Dasu <kamal.dasu@broadcom.com>
To: peng.fan@oss.nxp.com,
	andersson@kernel.org,
	baolin.wang@linux.alibaba.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com
Cc: bcm-kernel-feedback-list@broadcom.com,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kamal Dasu <kamal.dasu@broadcom.com>
Subject: [PATCH v3 0/3] Adding brcmstb-hwspinlock support
Date: Thu,  9 Oct 2025 17:20:00 -0400
Message-Id: <20251009212003.2714447-1-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

This is a standalone patch for the hardware semaphore feature for
all brcmstb SoCs that have the same hardware semaphore registers
hence platform driver compatible uses:
	  '.compatible = "brcm,brcmstb-hwspinlock"'

The patch has been tested to work as builtin as well as a module.

v3 changes:
Added detailed explantion in the all commit messages as per review
comments
 - Added  description of 'sundry' ip block that the hardware semaphore
   belongs to
 - Added reasoning for using '.compatible = "brcm,brcmstb-hwspinlock"

v2 changes:
Adressed following review comments:
 - fixed ordering of obj brcmstb_hwspinlock.o in Makefile 
 - fixed ordering of 'config HWSPINLOCK_BRCMSTB' block in Kconfig
 - Renamed BRCMSTB_MAX_SEMAPHORES to BRCMSTB_NUM_SEMAPHORES
 - Removed unnecessary platfrom_set_drvdata(pdev, bank);

Also addressing duplicate PATCH 1/3 sent in error as part of v1 change.

v1 changes:
based on fixes made to Initial patch :
url:    https://github.com/intel-lab-lkp/linux/commits/Kamal-Dasu/dt-bindings-brcmstb-hwspinlock-support-for-hwspinlock/20250712-034624
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20250711154221.928164-4-kamal.dasu%40broadcom.com
patch subject: [PATCH 2/4] hwspinlock: brcmstb hardware semaphore support

All the review comments and build warning have been fixed.

Kamal Dasu (3):
  dt-bindings: hwlock:  Adding brcmstb-hwspinlock support
  hwspinlock: brcmstb hardware semaphore support
  MAINTAINERS: adding entry for BRCMSTB HWSPINLOCK driver

 .../hwlock/brcm,brcmstb-hwspinlock.yaml       | 36 +++++++
 MAINTAINERS                                   |  8 ++
 drivers/hwspinlock/Kconfig                    | 11 ++-
 drivers/hwspinlock/Makefile                   |  1 +
 drivers/hwspinlock/brcmstb_hwspinlock.c       | 96 +++++++++++++++++++
 5 files changed, 151 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml
 create mode 100644 drivers/hwspinlock/brcmstb_hwspinlock.c

-- 
2.34.1



Return-Path: <devicetree+bounces-268081-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OH3PJWQgnmm/TgQAu9opvQ
	(envelope-from <devicetree+bounces-268081-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 23:04:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 151C118D016
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 23:04:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C60A930603CB
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 22:04:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 932CB33ADA1;
	Tue, 24 Feb 2026 22:04:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="VsUznEyF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f99.google.com (mail-dl1-f99.google.com [74.125.82.99])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7EB33B97F
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 22:04:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.99
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771970658; cv=none; b=rBSOywBrvQbGAhQGgmre6kefe+l+JWuvG4bMI+YkEHAPSsPEAKWz8bPTFmI+aLq1Cs87KsTtuSPPjTHSQoDK3z9YFu/MnAmIC5yB0jE+mOExlRDkE0Es06WIP0KbylF30RnPgkDHcRCFWYrlIQOxhBaJKqO+PF0UJ5KCoS4Ut3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771970658; c=relaxed/simple;
	bh=mbwRB4ZGvL4g1BgK0BDf89bAQ8LmFkBZL5/b0mRW7iA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=JjXK8HZtNDfxZoChaz7Yx5xIjvznok1Sw2ThNXY9p2T/9KYW/oboHuB97zlXTZ+HuYOJVWHfzB8pk+jCbzRaHhFl1ILhFtyScVJMcfw6bhSY36sq5mbggGP34FyexjQ62N5IEGOoUlliU+MfrZQYyfEvo2SCkJt8825JIxMvCjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=VsUznEyF; arc=none smtp.client-ip=74.125.82.99
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-dl1-f99.google.com with SMTP id a92af1059eb24-12732e6a123so1584400c88.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 14:04:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771970656; x=1772575456;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/7wTU2wqO3eKHYFN8DRzgtidY91chf6u6I995CUEKtM=;
        b=SADjA/wbdpj7jYT88pJQSZ/P7bnoWw55nHst0ha2Tq+CH2xQpKZZO9xqmZGU8dhEM+
         dYv3qlYyq7FhT0MDUtKTApkUmLzNXWz3UTbHO8Nm57ZfeWlk7GmXsihBd8ccXGRH3/ZB
         mJyzUZdEq/pgY9iSnciENU+OMhsl6H4F7kunif3iGGuOoPq+/SyCeAdnCeBnHjmo/zQ8
         8+mzrsqOJNPVuuxT9xkf8dvcfpJLqartnrBL3WJE1q6BDCXDwScSHIrkppSGlNep9EnF
         mKC2mw9Drd4TiO3NhYQkjJpY8Ae66VHceEHcjUixtGkiXHuPbm8WyuIJg51kEoI36Ubu
         NxPA==
X-Forwarded-Encrypted: i=1; AJvYcCU1bwYQlvF+xE4NQAHN9Z6IpeEcXiub6QfkPTLLqImd1/NBlhxITPmCzuphWnZP+PyGnGgNiMhobVqh@vger.kernel.org
X-Gm-Message-State: AOJu0YzqnESOSAnr8ZPLUNSbAbiU6hoKJV9H1JRgvaTVI0lEBJ+lFZu3
	3qoqbi1+Z0/gEnIq7O7seJhJZIknas7dtY4wEyHlR0HYWIh3HNXh386raj7h9CW3fVfRm1IGx6A
	1TvxZMfjx5eZwDOHjnAapixOLJTBfVr8Xi9cCWshPsnnIrXv1v5gba+rLJgbmddG5EUw3i8P5re
	Ag7mcpBglpgpEx4vncZO8UiB7xVn0IYuQDPGA/z21NX5egtU4iWv0CiH/o7tff/SlTEQGpRWjgJ
	WlG6Q/pOESTaQ==
X-Gm-Gg: ATEYQzz9J8/t0rSdtdAsEhMXCq2iXU3Eq9do7VCg05+Lqsd7KU3//mXzLXndzqNy21f
	EHBhvOVdbZEz0ZVcXRra9mx5JR6ZXI04oi2mnFvdh5AyUm3TjgH+fNhutqPFz14+ApQEGJIFWe9
	VKca4qyFjhfMkZ6jaDq4UnWij3Vb+d1aa69m0puKdWDVewzZZkfJ8upqN0F05QLCaKzN55LaqrU
	40S9U01c7HK2/6IonqkRH6zMaB4fDVMEjpqfB1UJ9hpBRc/85INnF4Qp3esga84ujZAs71F8WAp
	Y4Jy/v7jo0GEM6U5LUDtp9XMI36LeSYjs4kJ1UOhRj4YRF2cgZpcM/+h5PPJLTgzDOQf7QXLaYm
	YJzU5yGDyPUkmo7Y42CSGUiQpRWCy5eF6hoWusIOOXZsUIhdZ6YK/Brn/DJTVWRon6t9JBUakt3
	qF1MOXd8VjMNwabkTrYkBWYoj9keCbHEj6CD9Z84RdD0jCDZaxiE7vnJ29
X-Received: by 2002:a05:7022:6290:b0:123:2c98:f6af with SMTP id a92af1059eb24-1276acfe093mr7181853c88.14.1771970656229;
        Tue, 24 Feb 2026 14:04:16 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-118.dlp.protect.broadcom.com. [144.49.247.118])
        by smtp-relay.gmail.com with ESMTPS id a92af1059eb24-1276af6346fsm1455727c88.5.2026.02.24.14.04.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2026 14:04:16 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2bd9586c512so381542eec.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 14:04:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1771970654; x=1772575454; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/7wTU2wqO3eKHYFN8DRzgtidY91chf6u6I995CUEKtM=;
        b=VsUznEyFEW3/uiZMAGgCnLmPQNcFcIPyXBBvOhT3eBn2xKK2JBIeMTSydkX2ZpxGaU
         5i+WGFa2p2DPdFhrAtNaMuCSMRwr582aNKLbd5tPWCfPDJH+WeIvT8wcfr9N20q5doLK
         wNJ26mS4iENkPOdZTDf9ZMRGEOyUklod04sKw=
X-Forwarded-Encrypted: i=1; AJvYcCXIrZycK6cuptOWuJqRzUB1F5UqotQrF+Sahpxl6pwzSGjqFdPbXWGCLgbsYs06CwObRXeZihyw8on4@vger.kernel.org
X-Received: by 2002:a05:7300:bc0e:b0:2ba:8f47:fe4f with SMTP id 5a478bee46e88-2bd7bd24d3dmr6232098eec.18.1771970654359;
        Tue, 24 Feb 2026 14:04:14 -0800 (PST)
X-Received: by 2002:a05:7300:bc0e:b0:2ba:8f47:fe4f with SMTP id 5a478bee46e88-2bd7bd24d3dmr6232074eec.18.1771970653607;
        Tue, 24 Feb 2026 14:04:13 -0800 (PST)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bdb055507bsm2374822eec.0.2026.02.24.14.04.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 14:04:13 -0800 (PST)
From: Kamal Dasu <kamal.dasu@broadcom.com>
To: andersson@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: baolin.wang@linux.alibaba.com,
	florian.fainelli@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kamal Dasu <kamal.dasu@broadcom.com>
Subject: [PATCH v6 0/3] Adding brcmstb-hwspinlock support
Date: Tue, 24 Feb 2026 17:04:04 -0500
Message-Id: <20260224220407.2351692-1-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[broadcom.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268081-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[broadcom.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kamal.dasu@broadcom.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.995];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 151C118D016
X-Rspamd-Action: no action

This is a standalone patch for the hardware semaphore feature for
all brcmstb SoCs that have the same hardware semaphore registers.

The semaphore registers belong to the sundry hardware block. The
node describes only the semaphore register range carved out of the
larger sundry block address space.

The compatible string uses "brcm,bcm7038-sun-top-ctrl-semaphore"
based on the BCM7038 SoC where the semaphore registers were first
introduced in settop chips.

The patch has been tested to work as builtin as well as a module.

v6 changes:
Addressed review comments from Krzysztof Kozlowski:
 - Renamed DT binding YAML file from "brcm,brcmstb-hwspinlock.yaml"
   to "brcm,bcm7038-sun-top-ctrl-semaphore.yaml" to match the
   compatible string
 - Updated $id in the YAML to match the new filename
 - Updated MAINTAINERS F: entry to match the new filename

v5 changes:
Addressed review comments from Krzysztof Kozlowski:
 - Changed compatible to "brcm,bcm7038-sun-top-ctrl-semaphore"
   using the SoC where the semaphore hardware was first introduced,
   following the brcm,bcm7038-l1-intc convention

v4 changes:
Addressed review comments from Krzysztof Kozlowski and Rob Herring:
 - Renamed compatible from "brcm,brcmstb-hwspinlock" to
   "brcm,brcmstb-sun-top-ctrl-semaphore" to use the hardware name
 - Added description block to the DT binding YAML explaining what
   the semaphore registers are and their relationship to the sundry
   block
 - Fixed typo in Kconfig "Setttop" -> "Settop"
 - Fixed email typo in MODULE_AUTHOR

v3 changes:
Added detailed explanation in the all commit messages as per review
comments
 - Added description of 'sundry' ip block that the hardware semaphore
   belongs to
 - Added reasoning for using common compatible string

v2 changes:
Addressed following review comments:
 - fixed ordering of obj brcmstb_hwspinlock.o in Makefile
 - fixed ordering of 'config HWSPINLOCK_BRCMSTB' block in Kconfig
 - Renamed BRCMSTB_MAX_SEMAPHORES to BRCMSTB_NUM_SEMAPHORES
 - Removed unnecessary platform_set_drvdata(pdev, bank);

Also addressing duplicate PATCH 1/3 sent in error as part of v1 change.

v1 changes:
based on fixes made to Initial patch:
Link: https://github.com/intel-lab-lkp/linux/commits/
  Kamal-Dasu/dt-bindings-brcmstb-hwspinlock-support-
  for-hwspinlock/20250712-034624
Link: https://lore.kernel.org/r/20250711154221.928164-
  4-kamal.dasu%40broadcom.com
  [PATCH 2/4] hwspinlock: brcmstb hardware semaphore support

All the review comments and build warning have been fixed.

Kamal Dasu (3):
  dt-bindings: hwlock: Adding brcmstb-hwspinlock support
  hwspinlock: brcmstb hardware semaphore support
  MAINTAINERS: adding entry for BRCMSTB HWSPINLOCK driver

 .../brcm,bcm7038-sun-top-ctrl-semaphore.yaml  | 45 +++++++++
 MAINTAINERS                                   |  8 ++
 drivers/hwspinlock/Kconfig                    | 11 ++-
 drivers/hwspinlock/Makefile                   |  1 +
 drivers/hwspinlock/brcmstb_hwspinlock.c       | 96 +++++++++++++++++++
 5 files changed, 160 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/hwlock/brcm,bcm7038-sun-top-ctrl-semaphore.yaml
 create mode 100644 drivers/hwspinlock/brcmstb_hwspinlock.c

-- 
2.34.1



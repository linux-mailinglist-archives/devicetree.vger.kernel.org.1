Return-Path: <devicetree+bounces-266733-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMY3LTuHl2kgzwIAu9opvQ
	(envelope-from <devicetree+bounces-266733-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:57:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DBD162FB4
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:57:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D3A5330067A3
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 21:57:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CFB432AABC;
	Thu, 19 Feb 2026 21:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="YooRy1Mb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f228.google.com (mail-pg1-f228.google.com [209.85.215.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F053009EE
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 21:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771538233; cv=none; b=cmCjq/vPzNmfu3ANDPUhXOAvuIR+p+C83taLPkUfK8tQsagubauVNE7LpJi4Q0o0KgibUxW9anSzuHLx9ZC0cOcrj/XCAew1hAoKWzSyw6qq/0y0VFJpYXozX5Cu5ELlZ5ucx/p9CXVLpc79mhKksXFex2iXVufD+CDgU59PNQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771538233; c=relaxed/simple;
	bh=M13rRdKkj48+l10Frz4L86bVw/CZ75WBD1Ms+1T541k=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=tF+txZ9zSV85Jc5DJyoKXPScGhR07czoe/ccpYLj7KU7Aik5kSg+ixmp3MIusMjkhVoZdi8qc8KvMT/UxLKlfPs4B/1kmsrCVGdqWAWwBsZMNiz1ANi+DLuQ6blUw3HJKIruMp9oFtf4M1W/ot/SqTaOKgvYd8dtcqCo0c1qH5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=YooRy1Mb; arc=none smtp.client-ip=209.85.215.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pg1-f228.google.com with SMTP id 41be03b00d2f7-bde0f62464cso579605a12.2
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:57:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771538231; x=1772143031;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LrI6BpFC3eI6yOKYRJrMT8qJD2DqNlsDbhGThIhmnQs=;
        b=VYfeEfu3SCsgweJGWXXWjv4cqREb4snVFmGMx07oIf7LtjELPDjoJvMIgDK704Iz3I
         NIDmHrJCUXHqPIFlCjaTDGj+nqqTlbdAs17Bmh4mIjpV5J9NjtW7ulZddFJTxgEAY9KP
         W9jkBawTHvYkHyrAJXGTOhETixcV0M1LikjBhSip20FZUdHMriPF1imzbv3Zt3fyb91E
         u5ITVQqJkVRIwwHMJqkYc90WIpeYG7w0Mq6w+2dMYEXivzflfi//x4b3lHNC64ryOUqz
         de9qVrcJouLOi68GDDX0a3c8y0/7L/pZ6depcDTGcE42OOa6ACVVSMxQ1ndJxXOqg5rN
         MxIw==
X-Forwarded-Encrypted: i=1; AJvYcCV36DiZ83BnRgjG950bO7e0TpIFzEwpaYVa0q7hskQXfPYE974Gv2fmsItWfjo2G+WQjBMMe/O2yrE+@vger.kernel.org
X-Gm-Message-State: AOJu0YwzR4FWWvlAp8+BQPoFd9uXAAbbjGMXGp1TvdzPYpDVB9ug4kY7
	qXVHU5/BTecdaJNbFo+Ywlx2AgApc0uxOdPqYapjdE4frMGRwwac9IKx6reNd881PwqhgnsjX2M
	Yej/xgyIsHKIMT1JNntPL/Wuv6L3PLKikaD2Qidq8UhOaPkehxoOJFmJXhpnepB4wDnu0Ng2WDD
	bI8/oGbfoRoxX9Hed1XJspJFCQyLaV9ZtmbIeVMpVk6qXoVwIG/k6bcs2o63TAFLdgGJwat6+GK
	5jxE8t/1udSJA==
X-Gm-Gg: AZuq6aIdE+FbBoGVITVVBMr9RYyx+kqLsi7rdoaMlZ/tJX7Oq40zOXkeAo67nqnMkoc
	WqZvA3ABw6u3EcEADPQXB90crj4KojUyHEiSuhHiuLMEa9zBGNsiyMNk+fQLcbKTrQ2PSJL6Vbm
	oAEdDCn3Aq3RmFb5kpCNOIdqxCOGi4om77o+V1YPFdnytTByTDbk7l1IIWJsPsqe94UCBJbVtzq
	/Sz8yDB1db6ttFTwP3XRu9Mzm5Litsld39MKtk4L/XXRcj859GPYKAnYp13qVaYs/DGmiJYoNH3
	smT3EPy4bKelweHNNwEhxqyivwoz03PWhnU2peNSUG9axSbK85woID9OVoVqx8UvZOKt4ztMtaG
	ELk5QdSJC/k5hKfq+bIr5RRWpwE/xLk2ZP76FUvxOPVrMQxZpEdjsegbu5qDaLhh3ea8M2ns9oG
	P+ml02igecfx1VF/w+m8/n58iFqCZFG2WyupSTcU4+bEd5BpFRPYIbb817
X-Received: by 2002:a17:90b:3d83:b0:354:c6ac:6e3 with SMTP id 98e67ed59e1d1-358450c98c3mr16292434a91.32.1771538231314;
        Thu, 19 Feb 2026 13:57:11 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-117.dlp.protect.broadcom.com. [144.49.247.117])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3589d817408sm198164a91.3.2026.02.19.13.57.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2026 13:57:11 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a7701b6353so16510105ad.3
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:57:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1771538229; x=1772143029; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LrI6BpFC3eI6yOKYRJrMT8qJD2DqNlsDbhGThIhmnQs=;
        b=YooRy1MbEzA+TPPyKk6bKdlKsTi7nRo9oDFPpcHclFwh3ja1pICm83OPV9TQmbnxWV
         yBbhB4icMXEHYd6tvG19YO/blwljJSuTSXEJIZ5SFJKOqbOZe2NEZVVsCD1v5OXP5gr4
         k4AY8WsrQA3PPQ7zYo+c9ujFu/4URgfxLWGGY=
X-Forwarded-Encrypted: i=1; AJvYcCVfIJPFPRE0+xtfE6UEcJWodv2X4j+4/cBkHI+KM0gWD7GABdjLKUf5NEVBQVB0AMyOTA3hl0ahBzQR@vger.kernel.org
X-Received: by 2002:a17:902:f647:b0:2aa:d2a7:ad2e with SMTP id d9443c01a7336-2ad17515e97mr214771145ad.36.1771538229586;
        Thu, 19 Feb 2026 13:57:09 -0800 (PST)
X-Received: by 2002:a17:902:f647:b0:2aa:d2a7:ad2e with SMTP id d9443c01a7336-2ad17515e97mr214770935ad.36.1771538229117;
        Thu, 19 Feb 2026 13:57:09 -0800 (PST)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1aae9d73sm156416065ad.77.2026.02.19.13.57.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 13:57:08 -0800 (PST)
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
Subject: [PATCH v4 0/3] Adding brcmstb-hwspinlock support
Date: Thu, 19 Feb 2026 16:56:59 -0500
Message-Id: <20260219215702.63321-1-kamal.dasu@broadcom.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266733-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[broadcom.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kamal.dasu@broadcom.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[broadcom.com:mid,broadcom.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 20DBD162FB4
X-Rspamd-Action: no action

This is a standalone patch for the hardware semaphore feature for
all brcmstb SoCs that have the same hardware semaphore registers.

The semaphore registers belong to the sundry hardware block. The
node describes only the semaphore register range carved out of the
larger sundry block address space, consistent with how other upstream
hwspinlock drivers represent their standalone hardware blocks.

The compatible string has been renamed from "brcm,brcmstb-hwspinlock"
to "brcm,brcmstb-sun-top-ctrl-semaphore" to reflect the actual
hardware block name rather than the Linux subsystem name.

The patch has been tested to work as builtin as well as a module.

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

 .../hwlock/brcm,brcmstb-hwspinlock.yaml       | 45 +++++++++
 MAINTAINERS                                   |  8 ++
 drivers/hwspinlock/Kconfig                    | 11 ++-
 drivers/hwspinlock/Makefile                   |  1 +
 drivers/hwspinlock/brcmstb_hwspinlock.c       | 96 +++++++++++++++++++
 5 files changed, 160 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml
 create mode 100644 drivers/hwspinlock/brcmstb_hwspinlock.c

-- 
2.34.1



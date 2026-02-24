Return-Path: <devicetree+bounces-267680-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QGwMKWMDnWnhMQQAu9opvQ
	(envelope-from <devicetree+bounces-267680-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 02:48:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3EF180B47
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 02:48:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 80A86302A9E7
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 01:48:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1A6B23A99F;
	Tue, 24 Feb 2026 01:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="HnwDPO/K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f225.google.com (mail-yw1-f225.google.com [209.85.128.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7917E1A073F
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 01:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771897695; cv=none; b=VDmFvz48b54C/eoIC2GrxTqVBIUv5komg1G0Tevi8Sdt46jtrt3x5UfGkNfhxRQrHO9EpuqyXSIuDtPY6xVNiLL4H74c23i58ARJOkSJ7d2DCH2sTqes22H69o3V//AkMkKknFp8tBPyJiTg47oGH3klXwB6OB2XzecQLvDIt3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771897695; c=relaxed/simple;
	bh=Jg7M8Y27o9R+KC+um2GQHVA8k04aDMaNaY+U3ArEqR4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=UgEHLBsbci11hgoh4L1eI7AqfDUFI9l09Oz4pkGclw1hnJBnKyVqbyheFeq9oD0uoyhXRTFAQmDbPm+kru3+Eu6imQUucyIzOKxqIzPfoaCYb6a2mucinr7yJHgsQnMNnoNcm695PHYg87SvwsEktAyjlAQqxw3PH43+XphvxI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=HnwDPO/K; arc=none smtp.client-ip=209.85.128.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-yw1-f225.google.com with SMTP id 00721157ae682-793fdbb8d3aso41915797b3.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:48:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771897693; x=1772502493;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U3dB7+eefW5Li2eyi5u+nXkNwMUEBPNrYMz+/+fKzj8=;
        b=SYIv5ytjEelJzYoqSumc/I49WFi0KzOYP+pJoEgtM3kL4KagEcIVFnO78jeX/aVz4u
         kalxhP1nP4kB6iepshNaAIp5a41+ZNWtDV5XBOCrLitOo9wzxTwdCFQVNrzPERZz6XgZ
         O7i/6MJdhVHBhMhGuqnVI20qSLe+N2i3vCNtU6M+rvE8rCy+vt+BFbPaNb0nJEqMElGe
         29P60fFJ8XV/UDINixmFwYK9311o24DP+EEhJI3Nkn71taEsQaKcsUxnV5kGydaNSnMv
         41EV5kbLnaGbLVc6l+n4ZvMw0P1ii4zuc9Jd5VufzDBx32J6yYf7df0hnO/cXWjwj64n
         E5fQ==
X-Forwarded-Encrypted: i=1; AJvYcCUovOS/har55mpoAf7uQxq3lpYPdL2A/yTB1uaNoarCgCVpr0ceg9W/0awBpIgL5YlxYvQCFt2PSHo2@vger.kernel.org
X-Gm-Message-State: AOJu0YwgH4SLbhevMDknzUCvsRDni01lu5liMIkbEh8WGYrQ/paQSaOB
	Sauu+pumhIZ22O0XgtESGTIbgWNToZsjWZ1OSc3GHTc0a4CtuJAAOUJcaEk+Y69d/ylmUQQFehu
	EKvgU2R6Ow79b4vMdDUkYL6WLlruCcy/HUjQyYHVeIxbgjVVSik5DkyE9VxmWdqcmL/9Ep0NvNb
	QdFotiSm3BKLyD2pGLIfQ8KHrvwfq5tB+tcw2P1Wc2+tOSKNp1XRvmeGf0I3hf4glGVUC8FJWrX
	feV+dl94Io8Yg==
X-Gm-Gg: ATEYQzz6PB6LhknPnveDdrQ+FwsSzUI8pCwQDi/FQ2en9WDs5snetMD68tIS9/mUI0P
	/vgCxFit9GOKCZ+DyfkHH5FZLohsB9Yr6P3GxFLf6g/bUF74VKQ5xESZzaIxXly/4LMnQXf9d7l
	0npSAglFkiH4bK/i1VDCPHLcaEapln38CSgpTBZt3bVQVa6d5m5n7Z5JlmOqYK7cvrpOh+AuEfu
	XnpRbXaCw0MHbk9CR86HjYgkCmUMIDwLlaCQAQPbLGa2T9UFM1S0M7rPwrucWjlR5fbx2uowLRX
	wJtbZ1xtL76CKqnMMvZDRCWv41GESgxzVC1tXCyyjyHE5Ygvh+CSrSriTes7513vLr9oU0KfjSt
	SvN159OksX28X899fuFz5cfw4yxCSqRZPySlLZvIIxU5x5Np08IPVxT84dt/N5IkZBNIsn9slld
	xAZKVn4hR25O9dMjtaziSXtSmCoUpbf9n9CANE4CAKvsBGLMqraQnl2x5u
X-Received: by 2002:a05:690c:e1a:b0:796:2ee6:3f85 with SMTP id 00721157ae682-798293b3ef9mr83568667b3.66.1771897693335;
        Mon, 23 Feb 2026 17:48:13 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-118.dlp.protect.broadcom.com. [144.49.247.118])
        by smtp-relay.gmail.com with ESMTPS id 00721157ae682-7985377ec13sm2095457b3.27.2026.02.23.17.48.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2026 17:48:13 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2ba9a744f7dso6068692eec.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:48:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1771897692; x=1772502492; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=U3dB7+eefW5Li2eyi5u+nXkNwMUEBPNrYMz+/+fKzj8=;
        b=HnwDPO/KkXEybpu5edoXWQklvyCWHugUInEWGONB+kWxl5AEdOxAxDCeR0Y5VJ5PKW
         2OUmorLtm5kVfHg7mnUtXnfz8qP+rLi9Z3PwcxcZsvf1WQ5MAQD5QjwUPxs99yyFTGGW
         DnhQLDEFb7jhuYD2dcOGSW19bcyfOuhLsopPk=
X-Forwarded-Encrypted: i=1; AJvYcCV5mTAZtqZ4Ls3nuIBiVkQgxNneR1xbsRTyifmoA5odkWYDzN5ILWC9COmHtxFu/CRP9R7H0XGXg2bJ@vger.kernel.org
X-Received: by 2002:a05:7300:6915:b0:2b8:26b8:3446 with SMTP id 5a478bee46e88-2bd7bae9e1bmr3940772eec.2.1771897691999;
        Mon, 23 Feb 2026 17:48:11 -0800 (PST)
X-Received: by 2002:a05:7300:6915:b0:2b8:26b8:3446 with SMTP id 5a478bee46e88-2bd7bae9e1bmr3940763eec.2.1771897691372;
        Mon, 23 Feb 2026 17:48:11 -0800 (PST)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1276af102d9sm8470964c88.1.2026.02.23.17.48.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 17:48:11 -0800 (PST)
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
Subject: [PATCH v5 0/3] Adding brcmstb-hwspinlock support
Date: Mon, 23 Feb 2026 20:47:55 -0500
Message-Id: <20260224014758.2660318-1-kamal.dasu@broadcom.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267680-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[broadcom.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kamal.dasu@broadcom.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4D3EF180B47
X-Rspamd-Action: no action

This is a standalone patch for the hardware semaphore feature for
all brcmstb SoCs that have the same hardware semaphore registers.

The semaphore registers belong to the sundry hardware block. The
node describes only the semaphore register range carved out of the
larger sundry block address space.

The compatible string uses "brcm,bcm7038-sun-top-ctrl-semaphore"
based on the BCM7038 SoC.

The patch has been tested to work as builtin as well as a module.

v5 changes:
Addressed review comments from Krzysztof Kozlowski:
 - Changed compatible to "brcm,bcm7038-sun-top-ctrl-semaphore"
   using the SoC.


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



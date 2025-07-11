Return-Path: <devicetree+bounces-195559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A904B020BB
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 17:43:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E0381B41EC3
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 15:41:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2F172EE282;
	Fri, 11 Jul 2025 15:42:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="gtHREV1U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB412EE26A
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 15:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752248555; cv=none; b=GElyndG6RGaknMH3pzBYIUNvi9Rro5pEs3ZC7VN2YRegGoO6unBmjKQyFfTFw1BspEMwl20TVfK2Aysv0J1/wFg29IUuhN97goZlH6+VHl2fxgZ4JvQASfaUYtsVldOgY7Z05Rnwj7oZzuJSxGEtlygmgYi5/S16T2bdpT6pE/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752248555; c=relaxed/simple;
	bh=iF8ihvJBIUayCH7M+0g/FxeDaHneCHPNV7PdfMD3EjA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lLRiKiX+XCK47oVa1E2CYbD7cLLPc777/9OpNvGMKgyFvxM6WwpeX1MA733+e56263cs1QAozD9Ofo0hCa1x0ZRSY+H6r9bGSB6kGpGc0522Bum/ptmIZ5PUyWbdKEnScN0Bf0VU2QzWMY+D5++SD9Z4VV/UZFt3xLWVPMwQyL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=gtHREV1U; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-74b54af901bso1528867b3a.2
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 08:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1752248553; x=1752853353; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k7skpOByzW+hOTXagKwoSr9X/HjtkTFtxhdBwxlew5M=;
        b=gtHREV1UN0iNImAXaqVLfkwOSS0oYfzXpQdsx35pW498V5lEPuY5ytmaRLMym/+6lr
         vzNtxX+Mlf6xiiOeN3eYbs41DVi6z6DjHvshe6cpO//imMI1sHb6jlEFPjdmz2OhYFu8
         oLAUArWh18dVFFtRV+yfLdHbGhsz40n5Hq7WA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752248553; x=1752853353;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k7skpOByzW+hOTXagKwoSr9X/HjtkTFtxhdBwxlew5M=;
        b=FQR243htd6V4Sn9dKuN8FtlFxwFYW5Bn+TvuCj+Gth6AtFyG1loH9GTWBTSz3adf5e
         KDieMpB8DkQzb1tGBKntIxufDyjbHV/3jaO5eCKWg7TTOtyRu4GVJDsme9sEBu28Krck
         MWMOb6kWPxSakbynKKk3xJ3SDomfHnbmcv+ZpKyAfo+yqKkk9ndcEb7NRqTpW2wh+O2C
         231RY7W5OfD1mEXLCs+vis7VJe8mGun8N9CORlssr7JHyoueNQMd+WcO4ILuAFXh5h+4
         Um4Ed3U3w7hy2WWtmqsLEoFlNyiithDyACvIqpvIMDY/fy0nY6DIGSAOcC8/7vTzhHdF
         5ZEw==
X-Forwarded-Encrypted: i=1; AJvYcCX5H1QWrzyb3G6LWD2Sj9AZiL98z2Qoqhf9AIJNM25heqc9LJKpLtPiS1GgpKPIj+JPDFlioKfO+9GB@vger.kernel.org
X-Gm-Message-State: AOJu0Yzr/x0fUAzA1WKMLs85WT9F20KX8SWBlyHcBxWMGIFULhZGzd8s
	CMivLbFDU3fk/XCt3sBPv+YS+G0mkEUOePHbV/VEcHpZ9bTVapOS2yYpEuQsVtm0DA==
X-Gm-Gg: ASbGncukdevoq1m+bAJSOecBaxDuBthrd9sIIcXhl9xhBlld+nJnMSSP8iUwpZA33mi
	owSM0pS5tdoTxDdn0xYk5Wdf93/AwKawFHIDZ4z0uY/MvM8eh6zFvvoFtSMk6I44aG4RHjY7dzT
	hCxljqOMk5WnWBfrLuvwvr+w1LDByxIl2akgJXrG6mmE8eWsiYAwN3ijT8mWYQ6tkbaab7GjNT9
	U8a2UkZAR9CAQsiJm+lxCLcfks98ndpG0WOKMIk6boWtELGxuJNGMCRSSq9MgLF1gjBfDkKcBFU
	LBxNjPbXNBc7WMpKUqUn1LkLb8JM4qxEQFXC5G+co2G5poUeTf2Nd4NNbqPLkKTNODHnOfrolLR
	+IckiHT62n6dx4Uy20k4dEawkHlCloa6yR84VAgJuvOZSuX+lqg3gghLBRg==
X-Google-Smtp-Source: AGHT+IGDEkar+diQDXAFzWseo9mmENOlTrd0V0FLWObaE74a9KCtE2gcym2rmo5BmC5WxmqYeQa0ow==
X-Received: by 2002:a05:6a00:188c:b0:74d:3a57:81d9 with SMTP id d2e1a72fcca58-74ee0ab538cmr5458867b3a.8.1752248553448;
        Fri, 11 Jul 2025 08:42:33 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9dd5ccesm5762420b3a.27.2025.07.11.08.42.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 08:42:32 -0700 (PDT)
From: Kamal Dasu <kamal.dasu@broadcom.com>
To: andersson@kernel.org,
	baolin.wang@linux.alibaba.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	ulf.hansson@linaro.org,
	adrian.hunter@intel.com
Cc: bcm-kernel-feedback-list@broadcom.com,
	kamal.dasu@broadcom.com,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org
Subject: [PATCH 0/4] mmc: sdhci-brcmstb: rpmb sharing by claiming host for TZOS
Date: Fri, 11 Jul 2025 11:42:17 -0400
Message-Id: <20250711154221.928164-2-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250711154221.928164-1-kamal.dasu@broadcom.com>
References: <20250711154221.928164-1-kamal.dasu@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch adds support to claim host for TZOS RPMB access and synchronized
access to the controller hardware using hwspinlock framework.
To achieve this Linux OS and the secure TZOS make use of:
- shared hardware semaphore register
- a set of SDIO shared work registers and
- IPI interrupt registers 

The currently running OS that needs access to the controller puts itself in its
slot of work register and if its next in line it can try to grab the hardware
semaphore and complete its mmc requests. The shared work registers indicate next
in queue to access the controller, and current agent in the queue. Next agent
queue state is changed under the hwspinlock is owned by the current OS accessing
the controller hardware before release the semaphore, send and receive IPI
interrupts between linux and secure world are used to indicate completion of
transaction to the waiting OS. TZOS has its own RPMB driver which accesses
partition when it wants to read/write RPMB frames. Current implementation
assumes Linux and TZOS as the two work agents.

Kamal Dasu (4):
  dt-bindings: brcmstb-hwspinlock: support for hwspinlock
  hwspinlock: brcmstb hardware semaphore support
  dt-bindings: mmc: add brcmstb share register and hwlocks reference
  mmc: sdhci-brcmstb: rpmb sharing by claiming host for TZOS

 .../hwlock/brcm,brcmstb-hwspinlock.yaml       |  36 +++
 .../bindings/mmc/brcm,sdhci-brcmstb.yaml      |  29 ++-
 drivers/hwspinlock/Kconfig                    |   9 +
 drivers/hwspinlock/Makefile                   |   1 +
 drivers/hwspinlock/brcmstb_hwspinlock.c       |  98 +++++++
 drivers/mmc/host/sdhci-brcmstb.c              | 243 +++++++++++++++++-
 6 files changed, 413 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml
 create mode 100644 drivers/hwspinlock/brcmstb_hwspinlock.c

-- 
2.34.1



Return-Path: <devicetree+bounces-223133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B42BB1774
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 20:17:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B49113BF209
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 18:17:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02F442D24B6;
	Wed,  1 Oct 2025 18:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="V7ztuWXc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f227.google.com (mail-yw1-f227.google.com [209.85.128.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66174257452
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 18:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759342644; cv=none; b=dcW35ZdhTxIuVezRHl9lAnBSNkA6GIauhihujs2dYS4bGMbjz2/cXZwbMyeJfbi4dkWGu5uhAZOpychbuZxlDEFRyTFYiWiauGT3N5qHEI674cmLMczuDpUnG0k6pZOVV6F2vu93kF7/N0npuZGoZcU3P73V7STQLLTbokTEyFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759342644; c=relaxed/simple;
	bh=4D2u5+7Q4n316L058k0BKdEZoe/mLPgqNFtIcDxFUac=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=kekjdb2ma1/Lj7joNeax1ET5J6YukYKjwWDLswdKK/cY9UX0zR0M0yNGO/4CrnUQHPUOiW7uZUHHBQHkgrKgkhTRg8ELRfv3k1HEKGFjLl8ZliFetCdE2f6qzqEGPYC9+XnyNR8Yn8fNLbEIZNM4iUQ+x4T70hklNS5iuhvANLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=V7ztuWXc; arc=none smtp.client-ip=209.85.128.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-yw1-f227.google.com with SMTP id 00721157ae682-74f6974175dso2575597b3.3
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 11:17:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759342642; x=1759947442;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ecfc2ylaD/7+laCYwVlEzsbxMMAjlj+CWU7OhEl57sc=;
        b=czcaMvfg54mCI3MDk3rFx59BjP6Pc4BJnEpqoeUTzwsOLaW9BF2KcgS1NOfq5JRRKV
         EP/g0PkH3K5OdDTuwAHXTl25gdK1O9mFAFcwX8DFqgxbJXylmfP76RaRp1qJW/x9O9+W
         2phcEJCSGDpA2VoKzZKrC2MWKyZnWtfvROBQB5EkHQS3As9+4CpFPweQbmVdxg/b1pZI
         7ciTB1V1TC1lvEHM6TZkU13Jcq9qi6TQOWO6CYgR9N9jjyfUk7bx4742wYs8ESDkRqKD
         f1S77Zhv6xRElEya9eQUhR0klt1F+kGsizdxUSGQ4TX9YzD5oY32jAzJH/CLrO7YIXZ7
         NpgQ==
X-Forwarded-Encrypted: i=1; AJvYcCXdJouZNsUxJ/FaYWdxj+/IRRh/KD/n87RiNYyrT02iG73B12X9xcEjtp9kqBVNp5p+IK4hSW57hXAC@vger.kernel.org
X-Gm-Message-State: AOJu0Ywq0UAUduRnk4oP3ghFjKUcNCRICCQmeK97R3F/sx0+y83TEabB
	SqsOSdmynrd50riKXe0wvLXHUAveE3BAPMrdtdshINa9KS6z1B22mQmmM/SvcvyDvoY1zCLxQMf
	hOaFvdOFZz/UN01U4IKxJggWTQYK0jxJxKue88OA2VAiMecrmVIcn88SzHh/hTgCOUV4aRR4nxd
	6fxKOC+A+YkOWkOAqu8W7F7NR8t8nCWk+bv9vFSLkoU1kVabXFGzRUTry4wkpzryB3bSIUV2eQ9
	IM/VHzc24Amhg==
X-Gm-Gg: ASbGnctgrtbyWZANnIHJ7Y7lyPovX+N4WgcAofA8Uni6uv22DUNkLi8PFlVAYk3s4JW
	yjPn89+KVUZT+cHk0CI6HuB9DO2TRNA+mw7jplA1PNrg4vNc6pl4O9K9SFbOMpqJ+xoO0jiCZ03
	GVeuZEjqY1rZA7T0Oiyf8lBv7t5XaxfKe9M4maEZc0k8uNvRaSfP21L/JDs9BSDQoL21kE0Y4SL
	1fNNrKg4FQDC9bQ9eeqNxhFniLlRE8QJlQi+fGKMA+mA6TqfVr9rnuUeBnEZ6RCOo2NMhvZGdVd
	LYEF6fyx836AirUz/eR0rqFQ0gFzjUNVEXMCiF+Hm9LszB9lpth7SSIXtpfn6RAJUZZRHCC2zAc
	9javeW4Xgy7X4BCgo0FBpXGH4dsq8OibA2ffgNCIqaRUM0tlkk8uTnZJIA5VbIygVXO7b3L0Wwl
	szg4j9
X-Google-Smtp-Source: AGHT+IHScV2JdrUxr85lsd3I14bLxKC/C1H5mzRr7JDlz0iUQ0LAsq7Z782PeoQyK9OYTEgHDgaTzLzt93bz
X-Received: by 2002:a05:690c:6ac8:b0:770:bb4:85ef with SMTP id 00721157ae682-77f6f2c5541mr72396557b3.33.1759342642184;
        Wed, 01 Oct 2025 11:17:22 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-100.dlp.protect.broadcom.com. [144.49.247.100])
        by smtp-relay.gmail.com with ESMTPS id 00721157ae682-77f81d2c736sm154087b3.33.2025.10.01.11.17.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Oct 2025 11:17:22 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70d7c7e972eso4155676d6.3
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 11:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759342641; x=1759947441; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ecfc2ylaD/7+laCYwVlEzsbxMMAjlj+CWU7OhEl57sc=;
        b=V7ztuWXch+CaYdGpnMpGbAJJyYNbibHDHc5DXMdw7UR3EEBERaL8GwDk80pYIXBnK1
         fyxk0e8n0s3Ip8OH11vSRUZTP8LMFUv2aw7qRUZj+FzTWzI4M3tAJiVU7wXSzeKLW4N9
         ia+c2PoFhTrRghPBHBZ8b0ysnnuYft4Y4yxmM=
X-Forwarded-Encrypted: i=1; AJvYcCVe+9LjF3e5EQL4baaVetrk4MTLM0IyaOJOMoZOKOm5RPvgXAm6sKN/ZIJKaubYkGzdrQnm1T8DBA7q@vger.kernel.org
X-Received: by 2002:a05:620a:3193:b0:866:73f7:259d with SMTP id af79cd13be357-873796bd7eemr589522685a.61.1759342641424;
        Wed, 01 Oct 2025 11:17:21 -0700 (PDT)
X-Received: by 2002:a05:620a:3193:b0:866:73f7:259d with SMTP id af79cd13be357-873796bd7eemr589514985a.61.1759342640724;
        Wed, 01 Oct 2025 11:17:20 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4e55c9e78cfsm3847671cf.27.2025.10.01.11.17.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 11:17:20 -0700 (PDT)
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
Subject: [PATCH v2 0/3] Adding brcmstb-hwspinlock support
Date: Wed,  1 Oct 2025 14:16:38 -0400
Message-Id: <20251001181641.1561472-1-kamal.dasu@broadcom.com>
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

v2 changes:
Adressed following review comments:
 - fixed ordering of obj brcmstb_hwspinlock.o in Makefile 
 - fixed ordering of 'config HWSPINLOCK_BRCMSTB' block in Kconfig
 - Renamed BRCMSTB_MAX_SEMAPHORES to BRCMSTB_NUM_SEMAPHORES
 - Removed unecessary platfrom_set_drvdata(pdev, bank);

Also addressing duplicate PATCH 1/3 sent in error as part of v1 change.

v1 changes:
based on fixes made to Intial patch :
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



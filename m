Return-Path: <devicetree+bounces-222551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE8CBAA91C
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 22:06:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 19E663AA0CB
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 20:06:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40D4624A067;
	Mon, 29 Sep 2025 20:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Bow644b6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f103.google.com (mail-io1-f103.google.com [209.85.166.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7C65244662
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 20:06:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.103
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759176401; cv=none; b=WtRPSD6zBRhKsjjJXgtTLa6l7kxlxvc9p502LerElHmDwlQt4DmpcGCd9YbFyltkiqzClE6sZyVkOi4A4Z2WcQV6GMgQgUYjNAVqWltJto7iStQtDWSnwVWf4GORyYI+mtkqY0tUjuUkQrwynnd6fcjSZ5Hsj/tFVpz7eV/GNu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759176401; c=relaxed/simple;
	bh=xJ0YjV6u0u1BrqJyi5HsaFx0jR+epqiScXrW80J8Ilo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=PaKTVdZBpy2ukdw/QykA/LPWy+dv7WYedklIugcvJGIY3NOJMFj9THzGP31tjKk9rjAlKLEDXpeRTMAZytV0isVp9Hg6k3vVY6QGeRK7KTgS5es+YOqfG7TrA/QRZByVJhK9f3vu6ylPkh88AJFHEt/HLvW0Xw7XVQLKmIaWh1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Bow644b6; arc=none smtp.client-ip=209.85.166.103
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-io1-f103.google.com with SMTP id ca18e2360f4ac-9194a0241aaso114895939f.3
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:06:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759176399; x=1759781199;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PNXWXlHT5+84YH+qmxDCb+3VQowVLVSncoXOi7xa9mU=;
        b=dkrxpblMDPJF5rY+vhzRtVcRrMPf70+O7tkQjtjiHSWra8Tdr/gWfwxUsdkas8tLV1
         mb9wBQDzkC8+zUoMC643iexrLy5Bz0hz4VCTDkn1l6KIsmdAmpEUrLfLhfvxQfN0ghh8
         X7q9Fr6QOydGEX4vxVxGsvc/OsfErBCC3mMCqCSNp7ZXLD5qyCEIHkcKOahKTDjHFpES
         Qwq7dMUJB6kq+VvqkVKwo5BUuWEL9HZtpNce23HYqzgJpakEcmw6oNgS9nWr9cqU7ZlO
         9JaQPG3ThYbA3U5UlGg/yTTOSmY0ARFOeRoiiiXiDJbBoW3v15pMY2qpcnjHJJUcNDpc
         BXeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXiadT+jvUIg/kwsU/QhMB66lquog0k+KAA8SZ74RDZPp6bb2qfTigKOXDSukn0CheYowaJx2whXvyI@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5YisX9S3KWh7Y4uNFerTmPdiWcG0lZKAW+RD6oRmNBOx2vALi
	ECYPXRDh3kasxcALMn0kokcFETJh2rY6TEIZ0/zf2KSfbVfmvZQq/Gvs4o8esUShx3eqPK1Aj+j
	RoVIryv7hvm+HhNR099lIlVr/f7X7CPSN+KsPTYSY2B9UEzMY6sgcveqUbXZkeO6Aay8M4LrJNx
	9+cLSD6/2wFc3F5UNA5j4tAZIqh/evZp4JU+EYIQbFeaeARXY7Cu7L2EfRVxJ2G6vQ8n2YpfaSz
	FzE6Q4sQr008Dwx
X-Gm-Gg: ASbGncsRBtalUQ9rLWBrbK5FBmib+MbMhm8VtWdupMwjMjVLIQjXakZbfESmZzpjO9I
	vaWa6iV0xbW062uRjydSXmMkW2oicd1Y2dVSPRLwvkiO1kjtuBHH5zAjO8rOi+q/1GqBGjq7bN8
	tB8TjVzQT6lgj7e4r2kB2McnQVvRfe4XgO+65AhdkdESfcxaExFSCLSh8XGVR7SNY6MOkj3uCXG
	1JKY/iYZMsDPybRSx7AJ85t5aAqW8craXGZDGtqfFFB4pefrL00hXdRtTvsGCgJXQfwpjhN7uiu
	eH5gj7fdQnrUtMnA4eDg/nFMF/9p6dYzZmeU2XUpwwLd5L5cphodEroQ6hjVGLAvAu4te5suxQP
	UO33KlpAcCaqTlZDfwABA
X-Google-Smtp-Source: AGHT+IGdwLjLun9KTXlAn2FFVYNwF4F2Buhs4BDvhIKUKBv13gnrr3TThPFJNzD7JTBlXft5YtIZpJSf0px9
X-Received: by 2002:a05:6e02:1a08:b0:426:9b42:24ce with SMTP id e9e14a558f8ab-4269b4225fdmr237045735ab.13.1759176398410;
        Mon, 29 Sep 2025 13:06:38 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com ([144.49.247.127])
        by smtp-relay.gmail.com with ESMTPS id e9e14a558f8ab-425bc68f3a8sm9563345ab.19.2025.09.29.13.06.38
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Sep 2025 13:06:38 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b57cf8dba28so3761604a12.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759176397; x=1759781197; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PNXWXlHT5+84YH+qmxDCb+3VQowVLVSncoXOi7xa9mU=;
        b=Bow644b6p+csLTa64Wcuf5kVEfAMYp91VRVecGYttqiFI8QLU7Sby4GwzPfA2a33oq
         ksjtHowGcFUNNlE3hBbc/BJZqk5T0faJUSmMv83EsoXZBO0oBEgMArPlJVHBgRFA7LIQ
         GGius/12GADlmXHU8dUEtiY1cKu09tDOMzYIk=
X-Forwarded-Encrypted: i=1; AJvYcCX0/GeOzNRoBw9JxdeLOjI1g9Jlu3d5WgjLBN/6zxsWufLLutuvQtMXmHk/2wxQEvfhZSVFu6L2T4rf@vger.kernel.org
X-Received: by 2002:a17:90b:4b90:b0:330:a301:35f4 with SMTP id 98e67ed59e1d1-3342a296f22mr20564262a91.20.1759176396990;
        Mon, 29 Sep 2025 13:06:36 -0700 (PDT)
X-Received: by 2002:a17:90b:4b90:b0:330:a301:35f4 with SMTP id 98e67ed59e1d1-3342a296f22mr20564239a91.20.1759176396554;
        Mon, 29 Sep 2025 13:06:36 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33838735194sm2121479a91.22.2025.09.29.13.06.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 13:06:36 -0700 (PDT)
From: Kamal Dasu <kamal.dasu@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	andersson@kernel.org,
	baolin.wang@linux.alibaba.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com
Cc: linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kamal Dasu <kamal.dasu@broadcom.com>
Subject: [PATCH 0/3] Adding brcmstb-hwspinlock support
Date: Mon, 29 Sep 2025 16:06:23 -0400
Message-Id: <20250929200628.3699525-1-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

This is standalone patch for the harware semaphore feature for
brcnstb SoCs. The initial patch was sent as part of different patch
set shown below. That was not accepted, however the hwspinlock feature
is geenric for all brcmstb SoCs.

Intial patch:
url:    https://github.com/intel-lab-lkp/linux/commits/Kamal-Dasu/dt-bindings-brcmstb-hwspinlock-support-for-hwspinlock/20250712-034624
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20250711154221.928164-4-kamal.dasu%40broadcom.com
patch subject: [PATCH 2/4] hwspinlock: brcmstb hardware semaphore support

All the review comments and build warning have been fixed in the current version.

Kamal Dasu (3):
  dt-bindings: hwlock:  Adding brcmstb-hwspinlock support
  hwspinlock: brcmstb hardware semaphore support
  MAINTAINERS: adding entry for BRCMSTB HWSPINLOCK driver

 .../hwlock/brcm,brcmstb-hwspinlock.yaml       | 36 +++++++
 MAINTAINERS                                   |  8 ++
 drivers/hwspinlock/Kconfig                    |  9 ++
 drivers/hwspinlock/Makefile                   |  1 +
 drivers/hwspinlock/brcmstb_hwspinlock.c       | 98 +++++++++++++++++++
 5 files changed, 152 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml
 create mode 100644 drivers/hwspinlock/brcmstb_hwspinlock.c

-- 
2.34.1



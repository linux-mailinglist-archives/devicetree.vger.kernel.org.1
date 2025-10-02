Return-Path: <devicetree+bounces-223463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1514ABB5693
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 23:04:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C88651881590
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 21:05:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AE031A76BB;
	Thu,  2 Oct 2025 21:04:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="OFISdMeO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f228.google.com (mail-il1-f228.google.com [209.85.166.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076BF1863E
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 21:04:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759439083; cv=none; b=aWPHmMncTiwsuKmq2FmFrXIOVpURohCgAOwfZzWW6Z123TcrdVZSSnuQm8Zsr22JM7pDQnXoiYEafoeHu9uzxsKVAFjTIp9FPmiAnQ29IosgR38rItCuwlolGXS0/mQ0YPiXVwN1i8hhj681VyNT6xBEpRJWY2JIsRS0GFkbRWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759439083; c=relaxed/simple;
	bh=wQ1CYAjiFcO9931vPI1LjA3++HAVRuOZx4J5E9bcb2c=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Jdt3tUsfcOVq7QnktYwv5srSBjL8sfBEvXlvkrs4w9UpW8HiRFGSFUmAyiLe7c2F57I0nOXdivubFxRa9L4u5dg0LhKIWydXJeEyBq3YL5xcqwO6ZfkUA4YTv/Rpapwd6clzSvf6hwQBwWXuLCnArsjnuXfPe9gpv4SdyXS1pYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=OFISdMeO; arc=none smtp.client-ip=209.85.166.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-il1-f228.google.com with SMTP id e9e14a558f8ab-42e7b5ea8c8so2122245ab.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 14:04:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759439081; x=1760043881;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C2UQeXeCdd38LZjkJTP74V8I/AwlCwJ5vjuI4bPLac8=;
        b=IOGTAsHot/dSGcvbfQ5efdo2pKDs0moTYSvN2mPjWRcRWoJFaUrXp0F8jfSbsP6SIT
         KFKdq+W0ZdTUEg9mvKKyqzhh03kIwwJSVij2Z4O1cUQOy1Kz1FLAmKld137Aqy36myNS
         3EqJZntzEGyx+yjHG8enA5537i9rJipgrO17PMItYwtvGPtddrIvTKwWQT479tkHe4bh
         RiOECLayS0eSNyW4C+9uv05fDESDcSNA34kLoQK+vKqz47yEdBDk08fCKwG69FeGirfw
         VX+tHp4fH2MhBHaK5iPQYKaH4r9/LA74I1w7f7Eg8xLN2SooyHhKp6tRMee3w5mZNXiC
         qy1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUK7WalqC8QU+j6wxSzmcQOg4DxDJdUCXqXJFO2HHa256bp8Q6sVrYNDQyi01uswSwKCC9KRHZIPiak@vger.kernel.org
X-Gm-Message-State: AOJu0YxruOPRByXtEUJ+E5a60FgYquyQPBVIko97npiIKHKEXkXE/85G
	+3IhTGnKugS4UoawEUbDLmnWkAIXAvXgAh+kn3mRwdbfsnnBprPNOAFVyKU9yp0syRBqp77+Fww
	PFdnMLIwbxEnXOPbgq2NDgtvnGNfr9m9Z0rGyg/Co0wnypQb+VD4qwO20rWlIQOpSc380oRDvfc
	Wn5llOjljWmWaVRPVwe64m0RaIIQDggWzAVp04skJpGyDsnOuMcWzr7EYgJXEbaX3hJc4H+wzwf
	QEfPe0aN6MD3A==
X-Gm-Gg: ASbGncs6p4NAF636Thvt56Vxp0je5hckBvXn9Mn6fER0ArDgPjjhAIJDjpDImxcspBG
	FUcphQc3F6U93pn8QHcSeCeUhenC0XIIlfF2AtShHrBU2IfVxl/zFKYhb1JaAo4qcK+NXNOk+XO
	ID52HHFP7gefv5B1jhZXYAjF0EuwhuY1waM3JIzr+wgem8/I+sbKO+AtgwaCud1WMJ4eJt9qErR
	66TcaptSFCp/5Bfmq9A+pnhGrKoSdixGTGW/OL9UhpbhwygTXKlwRz0jgShX1jvchxodsDocwyO
	corgfg8Tv2cLQiUbjCnW2mz0kYUTIIB/p0NaHop5JIhC/sj7UCsfMSU5ON2Oq6u33WvYRp2cg44
	Y6bsUgSWXGvsVedBiCJxDQtm62pn5taVX3mOYFfUtdGlqHGg1xcuBav5DoheW9u0lxnlkdhQAQF
	Hvpg==
X-Google-Smtp-Source: AGHT+IGSj7+unbUqizhCE1RyB9Y8A3HYnDvRAM4v8pXLSKUhGXDveFxlZ+YBidmqBMiDUnHydqlaHTL9ys8N
X-Received: by 2002:a05:6e02:3788:b0:42e:7444:b019 with SMTP id e9e14a558f8ab-42e7adfe854mr10817235ab.32.1759439080968;
        Thu, 02 Oct 2025 14:04:40 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-19.dlp.protect.broadcom.com. [144.49.247.19])
        by smtp-relay.gmail.com with ESMTPS id e9e14a558f8ab-42d8b290382sm2311145ab.33.2025.10.02.14.04.40
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Oct 2025 14:04:40 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-3ee1317b132so855679f8f.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 14:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759439079; x=1760043879; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=C2UQeXeCdd38LZjkJTP74V8I/AwlCwJ5vjuI4bPLac8=;
        b=OFISdMeOfvEKfVtKZGfW3hrRgSBI40m3XgVOdaOCvidXH0/6AyvdqtPti0z0cWhOtk
         GKz3SmMG7NFPshYmzDJjoOOWU1kIg0kEa7o3JoUzPhyT8fRQ/rxEuhR8YxpdyPH696uC
         UUPqL8KsrbM1Sty+5iIvxPRoswBFsyw1wlYik=
X-Forwarded-Encrypted: i=1; AJvYcCXrp3pgJUEqJymSf1Kj0wMjcKKZmDRqrE4HniKxIxiolkS/LaKxzMmgDhkOiHBsdEuVCsSV9gIiKPUL@vger.kernel.org
X-Received: by 2002:a05:600c:5304:b0:46e:5df3:190d with SMTP id 5b1f17b1804b1-46e7110ef5dmr4793815e9.11.1759439079335;
        Thu, 02 Oct 2025 14:04:39 -0700 (PDT)
X-Received: by 2002:a05:600c:5304:b0:46e:5df3:190d with SMTP id 5b1f17b1804b1-46e7110ef5dmr4793685e9.11.1759439078875;
        Thu, 02 Oct 2025 14:04:38 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e5c4c0321sm61711295e9.8.2025.10.02.14.04.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 14:04:37 -0700 (PDT)
From: Kamal Dasu <kamal.dasu@broadcom.com>
To: andersson@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	ulf.hansson@linaro.org,
	adrian.hunter@intel.com
Cc: bcm-kernel-feedback-list@broadcom.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	Kamal Dasu <kamal.dasu@broadcom.com>
Subject: [PATCH 0/3] sdhci-brcmstb SD host controller SoC specific enhancements 
Date: Thu,  2 Oct 2025 17:04:23 -0400
Message-Id: <20251002210426.2490368-1-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

sdhci-brcmstb HS200 configuration for BCM72116 and PM register save restore
changes applicable to various SoCs. 

Kamal Dasu (3):
  dt-bindings: mmc: Add support for BCM72116 and BCM74371 SD host
    controller
  mmc: sdhci-brcmstb: clear CFG_OP_DLY when using HS200
  mmc: brcmstb: save and restore registers during PM

 .../bindings/mmc/brcm,sdhci-brcmstb.yaml      |   2 +
 drivers/mmc/host/sdhci-brcmstb.c              | 159 +++++++++++++++++-
 2 files changed, 153 insertions(+), 8 deletions(-)

-- 
2.34.1



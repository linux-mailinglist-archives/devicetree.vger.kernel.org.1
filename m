Return-Path: <devicetree+bounces-182350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 418A8ACBD41
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 00:23:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 762607A677A
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 22:22:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8898227E92;
	Mon,  2 Jun 2025 22:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="HCq/eAMb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C5012D1F1
	for <devicetree@vger.kernel.org>; Mon,  2 Jun 2025 22:23:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748902996; cv=none; b=i+HU4wfELc4LE+9RKVkPRTB1HEEX2h6QjMX6K2PfwSGDUReGNMymis6evYh5Jbmi3t0ReEcUxQ7LrVgz5fHpAl5BqHx999RUekF/aa+Mu42akXfuel+51CuV0FYa4jnnp2xjOnhE7rmF4WjtG/O/mn7yFSiCHqYY3pzxl7Vo0gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748902996; c=relaxed/simple;
	bh=ZymE7UPp7kyUe9b3G25j69TavirZtJTZP8xjJlE08XM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=biGEwzHrIm7+3TLqaZ480qDU4nJTqVKa2wc44CKpgSTDkLX5lpcH/kwFvroJDIcn8SnPfSHQ3WhfZaufa/yeZwL2I984SK//G0jwMwsFgo1+fks2G/ttmPtBs5w0dc2hc6fTs5Q5ovX8vMn8dRCmkoF9AlK0t8YMbKszopuc+JU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=HCq/eAMb; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2350b1b9129so28627825ad.0
        for <devicetree@vger.kernel.org>; Mon, 02 Jun 2025 15:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1748902994; x=1749507794; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4OPhKExA638elpBbuMbbNxhj45qqqMxtabBtiJDTd2k=;
        b=HCq/eAMbJEF5uIPxu4CVViAtVYetE1MGaTGvmFL10tT/bCznQMINh4IigfD6g4/ofq
         SZBzNK+jmrcDiDVSbz+OIPvg8LEKGmmMK4kYUbHiGaU9eDKenvrQm7PM4ArjijGZZVLQ
         4bgZAJC0LXgQQppulQhL5hOi1Hh4KZ2bu+FwU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748902994; x=1749507794;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4OPhKExA638elpBbuMbbNxhj45qqqMxtabBtiJDTd2k=;
        b=uh0hIEVBu4pr3G8jF4lcAfrgRCR5TpXW1QlV4LhRfLqlcycPpWmKRNEOOeyZL/wt1s
         GZTJvMKmj2RjPiAaqJPykAbfGF8XDGzppReBKPWaZgEUo0/m/m6rOunfsQ89Xqx1E+rD
         XpSqYg9VNQ8MFuRkMdFMSzy43SvHvtlvntqZIP3PMXWgFbAJFu4oPn07T4EDgclpwvyw
         MHzVuozir7eNAjd39L0GUv2yp6nVBTzdxxj/9A7VAEFMW/gOILp5ClSwFsJ5PoUPYumw
         DGYrRbWVgEU8/cp1itkyxQDzfyHMgUkDecrzhP4h+EFNMDTK21XSSl8xKimCTef0jtFF
         JPFQ==
X-Gm-Message-State: AOJu0YwlhasIMJkZZha5DZZfOAVKREUVPllZ58oOEMzG7R7wHXeZXSPh
	apNwwR2rHy5b+V4RwKhzvZiWKaXjDvR+fBR3yGDzDezUzy2jYJuYroNae3gfPxGobnILgv6ulUh
	I5EzOvXfxKGPZivTWlYnONCURWqQU3TPdRYZmplpmujetiiy7+We7cbP9b+SrVDvQcEjuIyzHGQ
	k/doevNVzxA09x+lEdRJ+LSrtYEmMPvlaOyRIK/ao+kEJqIwmV
X-Gm-Gg: ASbGncsWvNyOZpEquD23+9xyoAZDfkuZu31bs5s0T5sYyCot6XvSQ8cHprUFrYJVpok
	1h5i29Yol8/vwArR3YmYZBTi5dBb8u696/U+uq+yzuSargQe2INdzhl0d5LCqqsUragqhZhpAdI
	mlrVUoFtDsqWNsfzMIYXcVq6EHi46ki9/4TbxarFsmledPB5+OWDsehQgXVR0h2ylJ4v/GLCODU
	Ki4uGxjSU8upez7D2MfkBKF1wgV8t9bmeSDK3mTEQ3Bm4gsuPGdosJCzu/n5svBctjVM01OuZkW
	0Yi+FkVTgnD4mKL6Wy/ZoIDYKo+4/Iaff9fMfJTLfqdCXbqYvTMU/1xcP1W/25gbrIIoxaZ3Woo
	6cMuQPQXPxsU71vHsAr6PGZEiNqqo
X-Google-Smtp-Source: AGHT+IFA3Qk3qqNX6ANN0hVJ7qMPymVyFi1kMt50QVWBJ8zzGzXDts06dDSxYbp6UdWM/Z+8pBF8MA==
X-Received: by 2002:a17:902:e5c4:b0:22f:b6d6:2737 with SMTP id d9443c01a7336-23539423ecemr211725725ad.10.1748902994348;
        Mon, 02 Jun 2025 15:23:14 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23506d19bfesm75565195ad.253.2025.06.02.15.23.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jun 2025 15:23:14 -0700 (PDT)
From: Justin Chen <justin.chen@broadcom.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: florian.fainelli@broadcom.com,
	conor+dt@kernel.org,
	bcm-kernel-feedback-list@broadcom.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	jassisinghbrar@gmail.com,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH v5 0/2] mailbox: Add support for bcm74110
Date: Mon,  2 Jun 2025 15:23:09 -0700
Message-Id: <20250602222311.2940850-1-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The bcm74110 mailbox driver is used to communicate with
a co-processor for various power management and firmware
related tasks.

Justin Chen (2):
  dt-bindings: mailbox: Add support for bcm74110
  mailbox: Add support for bcm74110

 .../bindings/mailbox/brcm,bcm74110-mbox.yaml  |  64 ++
 drivers/mailbox/Kconfig                       |  10 +
 drivers/mailbox/Makefile                      |   2 +
 drivers/mailbox/bcm74110-mailbox.c            | 656 ++++++++++++++++++
 4 files changed, 732 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml
 create mode 100644 drivers/mailbox/bcm74110-mailbox.c

-- 
2.34.1



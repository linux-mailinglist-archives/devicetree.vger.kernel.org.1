Return-Path: <devicetree+bounces-183978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B5049AD2947
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 00:17:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7EF6516FF52
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 22:17:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10F4F21B90B;
	Mon,  9 Jun 2025 22:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="LDIKg0FC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF8821E521B
	for <devicetree@vger.kernel.org>; Mon,  9 Jun 2025 22:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749507439; cv=none; b=idgPVeILXFzMakLsb9XhLXJ1IuoUubqegyov+3Jpn/TXhzdIB5qG/4RmD+BQ9v5HwlNFKgtnPLM+VQgfYuMBsQ3Lb3hu6GpE+Nk+skbxIxhZ6+TkK3nr/7J/Gs1Rj5/0w7osLbRyoukZ9b5E9sB1wtxJvOkKDGQY07ibGHnBr4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749507439; c=relaxed/simple;
	bh=ippx7mwC54eJmUHEwJWcTHQzmsugXPAwvfuGdSUFg8U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TmX1XIMCDQno9lkEI8dn2j5kL+fbvFclPpUw8tyAYlMWDpVRNUuGXE7wI8qq5BPw97ONOhLSf/6z9V9FMu5P1JsvNRIgIRrcusMwWxet40uOXHNLFJ4dNq8xTRB0IOGV10YDeScaG7ef+hsWU7lvYSI5gIRhR2NxCJHVrMEStJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=LDIKg0FC; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-235ea292956so46792995ad.1
        for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 15:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1749507437; x=1750112237; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0LMCevDXMHdSbreINi9ovgK2lLQA7N+OHtW2WG25EAI=;
        b=LDIKg0FC8g/NPykctwpCNthlhZIV+H08nvtTQNWNNuBXVlkyb6AxbLymZUpf0IB3Yi
         X6l+Vk+1TCbBsQk6TsJtLikllnCSzqw6vLdIF3u9SuoYzrCfUBWYP2eGu/9STP8bmupp
         am9kjDh3m75qZ+3iO/DAmbg/PjiPQFVH9SVs0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749507437; x=1750112237;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0LMCevDXMHdSbreINi9ovgK2lLQA7N+OHtW2WG25EAI=;
        b=M6abltGxHeF66i8ij5VZ9TE6odYYB2Ikwundp0iGsBrtU0V3s1pONAP4ST1LETGB29
         geT1K2AnO8Ko2bMSrwrofPv9Ud0OQJlaFUFnuriQYT2kKxK6Vr/v46e9SpSVB/w6Ua5q
         dZTFIcS1TksoZIVeBQKRkmOMTbWVv1lYYG5AQbt7tehbl2uSH7FUWejoU0APLj0BB+g9
         YsQsvhZcssE0e7I/mTRwV+5sGXRfU3fG40udfEuMDaIotoXmR/L+AhoBWfWsImuIePLx
         8hYfsLdJOZOcdIX8KjEao3zQjfS3rp3WDKAjYmiFTwQ4nexH+JrDPhQNz/9aOFPwRUTh
         ZXCQ==
X-Forwarded-Encrypted: i=1; AJvYcCVB2Ik0kiZy221avNAOngONk3rsrFWdEVkAEt3lQNNfrczrVxbwS1im9gBl2m9V+BGQu+8BKp+QHLp0@vger.kernel.org
X-Gm-Message-State: AOJu0Yzw6psNYfhkZqUuOl+rzK5R/QL6tZ+EDfEBKSdkOQEm9mlQrZxE
	eO2IF81F65i0BW1g7H7wtpkmjrBEE+i+52E+DjdyjhoriRMX1A+l05vZdDvqAlCGsQ==
X-Gm-Gg: ASbGncu5PDZVlBgMfQ0rXL6qK2Lbd1diVAwfHDH7jQPzFvfbSrYSKhkU+n9lIKA1BXG
	cNMfmpfkVLu2vMjgzljj2iB+jFrCtNtZ+yd0mRl8CkHveuVgY7HSiyaAFNeDgKwu59phsgSPOJb
	RZ8JvusotCCuLQdIgcvopj6VaNqNibJgnPFgCHXgb9yUYMzJBkwygnB1wLHmn0qc5V9XmQ/efSm
	AaHdzambC4f3rwt5vpAKqT7ov56ARdJcdxSfjdwkyPa3ELL0fnBpPVyGJzwFcCoGOfBtLUOBx3a
	4sNmembvfDuX6HVb1CdrxbfvH/kWqHQDkmVrSr4aIHp4o6+WcBc+P+UzZ4yBE/3s3LA5OHcMi5b
	NlI2rxq2dDf4puO4eSiHrsGvVIRVE0cNGgZS6M41Pnw==
X-Google-Smtp-Source: AGHT+IFUjmcbbkIOR7TTH9wu7tiMbf9RN0Y6LSdxDSg6pkLLd4mf/C1TRHZZ8yuUsvW2madDoeJTXg==
X-Received: by 2002:a17:902:ea0f:b0:234:e0c3:8406 with SMTP id d9443c01a7336-23601cf42b2mr215945945ad.1.1749507437017;
        Mon, 09 Jun 2025 15:17:17 -0700 (PDT)
Received: from stbsrv-and-02.and.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603078d65sm59290415ad.5.2025.06.09.15.17.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jun 2025 15:17:16 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-pci@vger.kernel.org,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	bcm-kernel-feedback-list@broadcom.com,
	jim2101024@gmail.com,
	james.quinlan@broadcom.com
Cc: Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list),
	linux-rpi-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE)
Subject: [PATCH 0/3] PCI: brcmstb: Include cable-modem SoCs
Date: Mon,  9 Jun 2025 18:17:03 -0400
Message-ID: <20250609221710.10315-1-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

At Broadcom, the Cable Modem group and the Settop Box group use the same
PCIe RC driver for multiple chips.  This series adds the CM SoCs to the
compatibility list as well as some CM-specific code.

Jim Quinlan (3):
  dt bindings: PCI: brcmstb: Include cable-modem SoCs
  PCI: brcmstb: Refactor indication of SSC status
  PCI: brcmstb: Enable Broadcom Cable Modem SoCs

 .../bindings/pci/brcm,stb-pcie.yaml           |   4 +
 drivers/pci/controller/pcie-brcmstb.c         | 193 ++++++++++++++----
 2 files changed, 159 insertions(+), 38 deletions(-)


base-commit: cfc4ca8986bb1f6182da6cd7bb57f228590b4643
-- 
2.43.0



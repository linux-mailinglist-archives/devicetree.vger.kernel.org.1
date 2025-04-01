Return-Path: <devicetree+bounces-162399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A35EA783CB
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 23:07:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 442EF3A8B9E
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 21:07:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AD0F1E9B22;
	Tue,  1 Apr 2025 21:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="AvDH6p2U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06BDE20C48F
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 21:07:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743541662; cv=none; b=ilqmMBDGQlpypw4Dzr/M3SeQ7PNU+pujcGVsczFplP0+j9EvkMFwlBGmxqY4qUdiWZ//ZU0FLNPlXKBdXobpYzuRQYypsiSdjVMbH0AN5S5163beG0aijmifhw4qKFxVJDA0PYWD/o8p+9Gk60zW3U2+TWH0xqn7eCp+LTCdxBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743541662; c=relaxed/simple;
	bh=6zEWp/DnYz6uIyglj8mgP1oV4M7L2TPi27y3lIZVrr8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ght/W0cRexUj1oEnku7hhi3RdPBBBgVDKuza9wa+xFD5yftUbfK7wEI0QDN54qd8mOyhs4cV/NTolOu6a/34LDjaxCkoQn/SyzdyIAW1gVZNd4I5WnJf9caVUZhE0j5W6MlRxSxQLtaa7Ic3GDlq1hl1pwaxF1c6gFHIZxJALno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=AvDH6p2U; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-224191d92e4so114249205ad.3
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 14:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743541660; x=1744146460; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lVQoemYUlfCPwZiQBfRAg9BVnj4fMqGZfUkpdiHtqKg=;
        b=AvDH6p2UIEsE5cuLMN80naPOCd1fnqxDtU+Vz/6FujvB7GwfNwEw4vKHJyF6Yxi/Dq
         lXD41ii2UKZT0+kqLhu+EH9TJ8v9i/toUunajCtJ+6BLzW4ch3lBHRwnJIC0K96xuiWn
         v6DunIy3qZiNtFy5awpK2Icv+IzLVqa5iGMl8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743541660; x=1744146460;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lVQoemYUlfCPwZiQBfRAg9BVnj4fMqGZfUkpdiHtqKg=;
        b=A2SwDchRPU0LGZftsiNOfBnoTm1yiUT7OTRzFpDeYhT78EcUAhPlmtZxVvlFH7i33w
         GCnumgtMO9hCy/k7MvA1WAE+6MOGT1nhZ89tV11yasweuhTUjnT3948OdbZQk/UNAo1Q
         kEw1E1EVClJaITO8lf4I3S7RAy0AOB7pnGYKD0fMTSIv8KKkAVGod363ool1EqaMQ84y
         Q4TFukw1h2Q2ggpQ0TBPmyOT9AFXD6NvAhxAgqdzoUnUPPptxx4lAkcWdp246qA0vOIy
         8B1n6W5k9i6eViR2WcFGyuk3lIQs7Mhpk8XAh0cDk4dC61Sa1R1OgBWFI2A1DtJhsfHn
         sbgA==
X-Forwarded-Encrypted: i=1; AJvYcCVcU7YmPTQ/4DNtXGkSDw7mX2o8P8/r62Z43YsyL4vp52MXrqxnQ0b9ePzh5ui9nsJ4pHG+f+oKQsH2@vger.kernel.org
X-Gm-Message-State: AOJu0YxinUlP8/3OLhZ5Dmc0uGFCurPpecmXgNjw0+r99KjBmukVp7Rt
	868sYOtKVibOg0C5+R9yUMwZafbbjL6tuVWxNzyZN60r9gkbhOOJ56/pEiaLfg==
X-Gm-Gg: ASbGnctjIIYwJroDmFDrVFSrvu/yS7h0ctTvlmeeFE6Yr8J9TA8dj48W7LJ9+Xkd0Bv
	E8tMfutKkSTnadHggHsptENGqiqcUZ5WQBy5fDTL2GJ/pl2BvkCgifkzL4y+7wzK2RGZBz9WrsI
	VdEvssCRolOz8PJ3KTFKDuglrqBIZl40sGRqkTW+NzewI4gorCfCvcam5yye1Gzf75SuPOxEpw6
	EopvuXNqJ0cmG3sBq0/KXcKmhvpHZjKfDLYglIzobQU0kr9tTfhnEcuAwp4Y8LUo5VKfnQZFh74
	XPDDNX5Qe8NDFQu9uc4k2RDo6G59T/+OVFHhJXJkp9YSOMqWVuwIG2iJbvqebMBkdlZejXcyC6b
	MCZTrqjAsjdJB/w0vxEzMPA==
X-Google-Smtp-Source: AGHT+IH0PQ7taRoykgUfWzcSREeHMofrh9rV4j0LFTSx412vSYptiSojp7iGvTEFiYHXeqxqmv5rHw==
X-Received: by 2002:a05:6a21:3a4a:b0:1f5:7710:fd18 with SMTP id adf61e73a8af0-2009f609379mr21130355637.17.1743541660157;
        Tue, 01 Apr 2025 14:07:40 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73970deef7fsm9414995b3a.9.2025.04.01.14.07.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Apr 2025 14:07:39 -0700 (PDT)
From: Justin Chen <justin.chen@broadcom.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: rafal@milecki.pl,
	alcooperx@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	florian.fainelli@broadcom.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH v2 0/2] phy: usb: add support for bcm74110
Date: Tue,  1 Apr 2025 14:07:34 -0700
Message-Id: <20250401210736.2613748-1-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

bcm74110 adds a freerun utmi/ref clock that saves furether power during
suspend states. A tune is also necessary to pass USB compliance test.

Justin Chen (2):
  dt-bindings: phy: brcmstb-usb-phy: Add support for bcm74110
  phy: usb: add support for bcm74110

 .../bindings/phy/brcm,brcmstb-usb-phy.yaml    |  7 ++-
 .../phy/broadcom/phy-brcm-usb-init-synopsys.c | 61 +++++++++++++++++++
 drivers/phy/broadcom/phy-brcm-usb-init.h      |  1 +
 drivers/phy/broadcom/phy-brcm-usb.c           | 14 +++++
 4 files changed, 81 insertions(+), 2 deletions(-)

-- 
2.34.1



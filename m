Return-Path: <devicetree+bounces-167954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A71A90ED4
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 00:48:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D29F03B0E5A
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 22:48:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFA38238C25;
	Wed, 16 Apr 2025 22:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="WMNo6Yg7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5365510E9
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 22:48:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744843702; cv=none; b=qSOfas1Dw2wyJhuVvGvPVd/u2igbkCqOhHR//i9p20sTALuyxeHJ5HAH5xVLo/iJbd8HQFeWULYNeyXCEoKlz3rE6d2PgCfJz4v1lPv7Ar/aV4pWcVp2hRcvAALBMmmtH+J5eEO4BEMjO6NYTsATYapS74Fg2pPt3mZGcL9U9To=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744843702; c=relaxed/simple;
	bh=OqusOPeMjg/sJfnLfpn1gMh+LaQA/7Og/SG2cOd3jy0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=EKtMCM3ubXEP8U+arLFRCl3Esej01cf6Tq36TttY8kXRoQ5B/5C5jy5zTd37jBVUz710PrfHIF8BGMWF/AuseEMxntNeKDSKhL8iyCoqiWMJTXBpzGdZuHRwb6TGN8USCPcbHJulZLQrxVqog7GExY7i0VvciljjLTF+8bpRmdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=WMNo6Yg7; arc=none smtp.client-ip=209.85.160.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-2c7f876b321so31933fac.1
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 15:48:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1744843700; x=1745448500; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k5/PQOoVcW+1fkczXDMdutM7S7PmnuJhL9tq/POXOzo=;
        b=WMNo6Yg7/6UHku1JbmAmrEB9mO64jyGXddmxcULdv1ekPgzzpgru8W1dfIOqsVbeFR
         8s5o9KuD71d6DaAfo7UpVms4v1QNXiqpu0hQxSb4nw4ixQXx42B8cumDm0qrSDRv9ZBZ
         E+0cuHsvGpt4lPYuhHQaGGJMFMQg3Pwso01MI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744843700; x=1745448500;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k5/PQOoVcW+1fkczXDMdutM7S7PmnuJhL9tq/POXOzo=;
        b=DHrywbsHUUj1C9R5S4Ceh0f8tKtxK7Ld/IGm/h4ZOF3SlgpjhKcifvKgUVPTi8mNyS
         ilqoBzXiHbYYLS3syk6xDtlkNadXjCzaVfG4IlJ4BvyqJkUeO46mVAi1eoGBoUWy9Itu
         rcCCrn7ODSHwruakcvTkcKIP1ArsnO43rMwND/EsgTdzAnM43mpx4EnEQUgS+nk84hMS
         aKrwO8B91CKgivpELI/0To7lniDkOzl8f93PT/EmOtBt97Stu5J8vj0K/5EiAh/Oi47w
         R/pVxLK0e6SrehilxQhYoJIqWtvth2P3HE3/TkL2v3Fz6/8SDZMAXGSmZYWO/X3MncHX
         APnw==
X-Forwarded-Encrypted: i=1; AJvYcCWeQfGvhTyrqv5aGf39tBZMO4QM+lK1ztQCi8UrY0Q2/zOGyfDpWIRg8DSvOCPEwDnsS04bwBg5MSTo@vger.kernel.org
X-Gm-Message-State: AOJu0YwTzm+SmqWtjzeyhxhUjrQGwbEcMC6fj970ayHQjXYXKzQ/c9pU
	EyqKnAQiCEmz48s/yueSZDgpQb6ZpOCZiu+ZulD2RLk4mWuLs1cDPvdGe3gvhA==
X-Gm-Gg: ASbGnctY3JmaDr2BjQWqQ5kbGCZiZGmsU1CNsb0DhWavicWcZWc7bq1CvRMpESKiLsw
	x83Jc29RZ6wbfRfNZUlhsnAVTmLp/5c2HfsjTzE9jZB4frJSy5fTKhSKS9pBDas2QohCws5ujoF
	WymKNZ5x/+0k3BT+bjZeieIxdsiGryNlM5bFSzFBPgmVdy8a7dt9yO+xbCOKRwBd+HDhrPTvhkI
	rhAW84zauMla4vQ8pOqE60hxkdY/OhWL9ePc+F9xEJuiLdPmMxD0Qq2LVbSC8MlB2nxg3iHOqLS
	bAZyuW+f95Tafrx2Emlcs5kI0bhrzf0ynly3w26yj3K+d/5QRvm7G40+qPlpRoWV6zK5P+U9ZAN
	MhdEGz0sILsIOvwMA8Q==
X-Google-Smtp-Source: AGHT+IFvWB7nerAS/OVdF2vlk4PsLsujkrdnqtsNqoOQHOCMZc0s84dRg/yS8fOHAzQVF96v6vvtuw==
X-Received: by 2002:a05:6830:61cc:b0:72b:943f:dda8 with SMTP id 46e09a7af769-72ec6d207d4mr2354863a34.26.1744843700017;
        Wed, 16 Apr 2025 15:48:20 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-72e73d71813sm3015956a34.26.2025.04.16.15.48.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 15:48:19 -0700 (PDT)
From: Justin Chen <justin.chen@broadcom.com>
To: netdev@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: rafal@milecki.pl,
	linux@armlinux.org.uk,
	hkallweit1@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	opendmb@gmail.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	pabeni@redhat.com,
	kuba@kernel.org,
	edumazet@google.com,
	davem@davemloft.net,
	andrew+netdev@lunn.ch,
	florian.fainelli@broadcom.com,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH net-next 0/5] net: bcmasp: Add v3.0 and remove v2.0
Date: Wed, 16 Apr 2025 15:48:10 -0700
Message-Id: <20250416224815.2863862-1-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

asp-v2.0 had one supported SoC that never saw the light of day.
Given that it was the first iteration of the HW, it ended up with
some one off HW design decisions that were changed in futher iterations
of the HW. We remove support to simplify the code and make it easier to
add future revisions.

Add support for asp-v3.0. asp-v3.0 reduces the feature set for cost
savings. We reduce the number of channel/network filters. And also
remove some features and statistics.

Justin Chen (5):
  dt-bindings: net: brcm,asp-v2.0: Add v3.0 and remove v2.0
  dt-bindings: net: brcm,unimac-mdio: Add v3.0 and remove v2.0
  net: bcmasp: Remove support for asp-v2.0
  net: bcmasp: Add support for asp-v3.0
  net: phy: mdio-bcm-unimac: Add asp-v3.0 and remove asp-v2.0

 .../bindings/net/brcm,asp-v2.0.yaml           |  19 +-
 .../bindings/net/brcm,unimac-mdio.yaml        |   2 +-
 drivers/net/ethernet/broadcom/asp2/bcmasp.c   | 178 +++++++-----------
 drivers/net/ethernet/broadcom/asp2/bcmasp.h   |  78 ++++----
 .../ethernet/broadcom/asp2/bcmasp_ethtool.c   |  36 +---
 .../net/ethernet/broadcom/asp2/bcmasp_intf.c  |  13 +-
 .../ethernet/broadcom/asp2/bcmasp_intf_defs.h |   3 +-
 drivers/net/mdio/mdio-bcm-unimac.c            |   2 +-
 8 files changed, 126 insertions(+), 205 deletions(-)

-- 
2.34.1



Return-Path: <devicetree+bounces-169632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 748F7A97B0F
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 01:36:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 854E7189BC70
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 23:37:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45E43215043;
	Tue, 22 Apr 2025 23:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="axz5MdxN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A824823A9
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 23:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745365012; cv=none; b=rPXkv0Eh63q7pqfiMNeKX4I7iPeoUvDJjssQMYNc7+EagbH2iS4g33x40XME9ItDFfSkN/JorcfHilSrUsb+nlMYMddr4r7RFAKyalR3ph4zcckyyBjUUoGIRgWfmMzFo4PCPBQyM3JVjSyMtf+Nk5LhrPlA204Vdv5kwjj3vOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745365012; c=relaxed/simple;
	bh=xAlx+MJX8nNewVjgdt5ATui8gHpywINRhhg8eaTl4U0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=b7JfPXrdOt9wd6S5WITI/KInIYTyrPqU+XdfH6qHly7OeSehEQTfKSIfGz5TWIi5NpeA+uyrt2vGtJz4iEQTbGpUA7fFHAA/bAgAs5K0oJDMGCTTJir0CIerlxGXeVuWij7PM5paSrXTMoCGWLnOeZPdpydfM13NF1nhBLzFo4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=axz5MdxN; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3ff0df81fdbso2380856b6e.3
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 16:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1745365009; x=1745969809; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vcRHQvphPQn4CUi/TPisXUxRxZEAhcBM8wzHtZBA4KA=;
        b=axz5MdxNBXoX1Xd3ESyYEGobuL8MK8l/0PR3KuCPWvWH7i2IqkNqRSXc6ZHu9NeMTo
         26Ob2yvmMFu5MV27EEBC7NZrm2/JADnhFvkjdCNSBkNVialVELPCuJfPgnzl28gprNst
         mMPogyZ1QK2zIkIo6/Lpkuj5eBBML61KCi5ik=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745365009; x=1745969809;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vcRHQvphPQn4CUi/TPisXUxRxZEAhcBM8wzHtZBA4KA=;
        b=OCx9saXE18b27UinKTziHNRWvRDjFEzQg2WK1KUe0N/675ZE7A1kVogM1b4w9M9KaR
         xJiJ6Q4/w7AL1OVoyKgTMTmM4A2529k+Wm5qy0aRMakSSkbh70GflkRUVkc5SUtZU2HU
         KLYxsC6IMgVADxwowVriM2rGzhS5eg0e6PcbNQc2qHX+6fFBMfkJuiqKcxsotJbeR8HP
         j7NgQQjmWUdyVtZHr2HWETddDgegdpvxJZ8ewtaVNMP3btdODni07+nsswHIHacy/CFm
         SoU4Br2duneE5Wu/X76PbwmSRXLzdwxW+iZ1ueYV2ppLhGiMux5AP5R0CMeE7VVDfS81
         gwpA==
X-Gm-Message-State: AOJu0YzKezycF2reHYlLC0bKnglkaNKNq5pLpD4hCt9k2BmnsKsHtS1C
	imY4a0ijZyyJO2HUzPpynXNN6lpxZjtDUbHzb/cuzsMBJYtHQWIkt+6Bmb50T8St0nuiGFxYfRw
	b8rmPtuHAzk8HuK99XRSpC0er5i9rLfa7EGG+onSWZ6Pu+v+yIyAzqzhWSvwOSfW8yah1TYau5f
	/QGzxw9h5azZb66NrFdT80H++Xsm38tPzohClPS0ydaud20WQ=
X-Gm-Gg: ASbGncsf84rU8kruKlK0nhAX8jsr1NYigqnPJl4J6xC0AVt/H/ZSN29AcztbY6jFp4Z
	BfzoT5Ou/RzFI9DPVgiYYGa7W7NQgmJOJ5d+VD+biJhTFS8KCjygp1Rs6TEFZx7mFB21tTgfB6R
	fmEBf3qzw3j1qiFK9LDFh+HqdZA1fjCnUJzwyOyvkKkFUEcu7MLVkESC96JievOZ5MdJFjwwPxq
	Ozse7HizPfWg5UOcIH+EyueauuAsoYbp1DDQksjQiyrZEOpzB6npwa4G0IqmOmJXLXays50KJDs
	OMRTKiKUslUL6+5L4sECya83zQBnznk8VIthwh+8gEyIT+RjQaTo5UIdTHdMvPZ3Kb2CFMG4/pA
	CyAtMScOfjA7c6zjjQUShlz1Ru5kf
X-Google-Smtp-Source: AGHT+IFhDRCfBt60rvSifXoPbqKYD8GCY+Z4oAiyxrebKJVf2J/b3b6ULPnb6DYxozFbO+7qvNEESg==
X-Received: by 2002:a05:6808:4e1b:b0:3f9:c0f6:215e with SMTP id 5614622812f47-401c0a7af27mr9218983b6e.12.1745365009355;
        Tue, 22 Apr 2025 16:36:49 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-401beeaf403sm2333582b6e.7.2025.04.22.16.36.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 16:36:49 -0700 (PDT)
From: Justin Chen <justin.chen@broadcom.com>
To: devicetree@vger.kernel.org,
	netdev@vger.kernel.org
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
Subject: [PATCH net-next v2 0/8] net: bcmasp: Add v3.0 and remove v2.0
Date: Tue, 22 Apr 2025 16:36:37 -0700
Message-Id: <20250422233645.1931036-1-justin.chen@broadcom.com>
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

Justin Chen (8):
  dt-bindings: net: brcm,asp-v2.0: Remove asp-v2.0
  dt-bindings: net: brcm,unimac-mdio: Remove asp-v2.0
  net: bcmasp: Remove support for asp-v2.0
  net: phy: mdio-bcm-unimac: Remove asp-v2.0
  dt-bindings: net: brcm,asp-v2.0: Add asp-v3.0
  dt-bindings: net: brcm,unimac-mdio: Add asp-v3.0
  net: bcmasp: Add support for asp-v3.0
  net: phy: mdio-bcm-unimac: Add asp-v3.0

 .../bindings/net/brcm,asp-v2.0.yaml           |  23 ++-
 .../bindings/net/brcm,unimac-mdio.yaml        |   2 +-
 drivers/net/ethernet/broadcom/asp2/bcmasp.c   | 176 +++++++-----------
 drivers/net/ethernet/broadcom/asp2/bcmasp.h   |  78 ++++----
 .../ethernet/broadcom/asp2/bcmasp_ethtool.c   |  36 +---
 .../net/ethernet/broadcom/asp2/bcmasp_intf.c  |  13 +-
 .../ethernet/broadcom/asp2/bcmasp_intf_defs.h |   3 +-
 drivers/net/mdio/mdio-bcm-unimac.c            |   2 +-
 8 files changed, 126 insertions(+), 207 deletions(-)

-- 
2.34.1



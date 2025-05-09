Return-Path: <devicetree+bounces-175826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF87AB1FE9
	for <lists+devicetree@lfdr.de>; Sat, 10 May 2025 00:28:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 582ABA056AB
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 22:28:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E688262807;
	Fri,  9 May 2025 22:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="UGD+Ntob"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181B315E96
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 22:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746829707; cv=none; b=ppNqsxIHKQiWOFoPcdnuUtfIS7tlx9cKKTPKENO7UzF5qYKHq4zuIpiy0WlUiWy6qHFzjEe2b/zhWneGXatgNHiUiqjG54JwzXxIxUKTrl5+nUi+eEWHKT9ggapu3cR8bleTVOZDT4JHdidFSwLHAI4ig0nuP+bhrdQOev0BBC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746829707; c=relaxed/simple;
	bh=8tLcmcPNDjDv2wNIMRwkFTH/IVfOGzil3SZBQKcfqD0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VYA5u/kZjaKUYXhAWP+tykbKj4kJlALiqpG44k/weFfAUvpkOF7H9lScX3DPFKcgQ18/IoucBpWPjkmujveW9+QSDeZwMjPmH4iztifBHYP0Bjqo93+x8FY/1RGlDl0/doNM7TTLlQUWYYCObwGt+eYouUWj7tI2ekxmLTZPPak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=UGD+Ntob; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-22c33e4fdb8so23843025ad.2
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 15:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1746829705; x=1747434505; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YuvwOYm4GSUNUy2wD5gyT6WoJqASKId1GoOL6RjMuAE=;
        b=UGD+NtobAmKKju2DCjGQbP7E+ijgWEuM1TB2+3KQlPk8+wqBRPtwAq4ZnvVZ7LA1xa
         XwrrKWRsXHUwlnkc5RY7BjxVRz0cELHe4j5uk30BXk+jmydKZY1hGjloT66c1Iyoz0c/
         bT/0znOiShuDHddGcZAWYnHyg7SkweVLa2myo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746829705; x=1747434505;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YuvwOYm4GSUNUy2wD5gyT6WoJqASKId1GoOL6RjMuAE=;
        b=G/9gxJqv6ygN+PE5coEIREJ/Wr0gkCAkH37dUKFPJCD2XoNUTnMQQVrj4VvYuTFmQI
         OcTaUExxUmWqstGRlcST6mBdrrGzL5+bt5VdVWV8s/MZLF0/pLaMfoBbxLHcjuqFEprD
         Gvg6hsX8drXwShmdGV9mw7xGcUOHzA7zR18gnZoZvsEBdDiGQLHMkHrve0fNbpL2Qrhl
         t6a7lyr4eIZMyx8q/3h5od3xQFmIpZQV7iMwVWjUOAi17G6EQ36i9BHM3K0uKSZGn78H
         cTLZq1h7olHfr6r26wuM9uiGrM9wVorGyTwYVjh9YmFWZOFfxBswm9yF5BAFghC5fPyi
         Ggyw==
X-Forwarded-Encrypted: i=1; AJvYcCUrLfwo+7mkM9XzX0bqi1YnMdbW3LGYy/HYBScxuZuaZy9mdB8wW/Q/vFdZa0McqJsxo+pR1rHs+kx+@vger.kernel.org
X-Gm-Message-State: AOJu0YyS3YpwoJxO28gbBPRS5hmELAnmwnwT9sZhrFle02ZRZ8vDMrfU
	1aUGv0XjE4gawYc6WwqcW1HBrPt4uPG9Su1zHNQi83OTueraoyKY/X0VzOjUOg==
X-Gm-Gg: ASbGncuvuquPg7PopcPZ1SdlDfsohfV1rRHIf+fDcvpPs+LHuDeS5jXF1ubS4jnzdbx
	Qk6nlz6NeoXSLxM1HZlWM3pUCk0gz8gysQdXyXKHdQGedpwDRvj5SSwTxD3bU5aj/FpO6cw/rUy
	ocNy7R2len7VwqPwGb7xAwIFGkUXWoXxdPxGaL7bfSH4cvq2wTkxltD4wT/150gAzkGLEN1N/EM
	emePN2p47NFhaTrpmDDbZZXjfRoDLsKfLwlbdIJ91bmly9Vd2e9DeuaQhj6NDdiUyRUuw1byniw
	Qz5Hea7rbzYrWa5XuksYQptT6dgehw9L3B86Ti/2MW7HWd4uzsgjwBxoVflXmjZ6vtzK42D8FpM
	bkyTO6B9VxL4SRGO22ckarIxSAMIEGB4=
X-Google-Smtp-Source: AGHT+IHnRTtiNbjExYWwvoR2t+W7MP9bwGubNxYQG/OewKoIdPhHsxX+NcKse+IqZBIXhDqj/IpvGw==
X-Received: by 2002:a17:903:2b04:b0:223:47b4:aaf8 with SMTP id d9443c01a7336-22fc91caf3dmr64938435ad.52.1746829705327;
        Fri, 09 May 2025 15:28:25 -0700 (PDT)
Received: from stbsrv-and-02.and.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22fc7544fadsm22584465ad.24.2025.05.09.15.28.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 15:28:24 -0700 (PDT)
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
Subject: [PATCH 0/2] PCI: brcmstb: Use "num-lanes" DT property if present
Date: Fri,  9 May 2025 18:28:11 -0400
Message-ID: <20250509222815.7082-1-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

If present, grok the "num-lanes" DT property for Broadcom STB chips and
configure accordingly.

Jim Quinlan (2):
  dt-bindings: PCI: brcm,stb-pcie: Add num-lanes property
  PCI: brcmstb: Use "num-lanes" DT property if present

 .../bindings/pci/brcm,stb-pcie.yaml           |  2 ++
 drivers/pci/controller/pcie-brcmstb.c         | 26 ++++++++++++++++++-
 2 files changed, 27 insertions(+), 1 deletion(-)


base-commit: 01f95500a162fca88cefab9ed64ceded5afabc12
-- 
2.43.0



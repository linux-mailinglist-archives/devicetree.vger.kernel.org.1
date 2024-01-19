Return-Path: <devicetree+bounces-33349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02874833076
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 22:52:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 34CDD1C21855
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 21:52:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68A335789C;
	Fri, 19 Jan 2024 21:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Nbj2O4R3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4FD355780
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 21:52:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705701160; cv=none; b=RMLKHm7TRFrYLQXnUdAfhh7UBPTLYwMk1+2Ui6tTipJsLsxMpXwpe0n3spxH8hkf/0W7/fHxB59zgUNSpRU1MFE5HoQ07sWwIhPDbetHtKqW35bMHNgLP4XfpckuD6mz+VDjf6deJcw44n6lunzznWPZq9Ok/b4Qu1Kny3YpJeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705701160; c=relaxed/simple;
	bh=vMHpWO/QYEYL5mBygZeH4+A8BA8znBrl7J3Z2+2ledE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VaP+5gCrQFUL4iZozj2lx5q6nIJr+olL/3030qcS+CF0yZ1nPPbhMrVCaYjbIzZC4FCtaSGqCpK/JAVOL68ummZ+Ho/wRcIwLLhmCKzaumofBD0QiX/gf9QV8cfgs2OfFTZzqPI19yUd9sMmUYAs68j0Si78Wbp67xA67BfGsZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Nbj2O4R3; arc=none smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-7838d1176b4so15051985a.0
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 13:52:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1705701157; x=1706305957; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oK5JfnFjUnPI3L0y0Aa2Q4btTFp3M7GIq/C+XWsHPDA=;
        b=Nbj2O4R3TYQX6BNYzzIeImPYqnuuJngcZla03Ovx6YRi6IsxckpfWC5nWGoChmBFBx
         6O4G9Ls/O523QXWvPzeNeXWSiFns/ku92KEqRGyh6kT+mXYB6PLN0Nfoakj3XRgIEmCL
         Ugvs3956e5oYqaQYR5qnG72Fr+nyOHsmTRsyI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705701157; x=1706305957;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oK5JfnFjUnPI3L0y0Aa2Q4btTFp3M7GIq/C+XWsHPDA=;
        b=PcHawOaw/nk7NvVJ+KSFrSd7aWqh6U4TLOdWS+PyZuHweuWyH23n07KsZZiRccXsVG
         enMqzXGdZwaKOSSM2OOddsw17Pvjqc8zCtVXyGAI5pRPGC/RNlyaAc29+HDkuNXxqsn8
         AQAHaRBLKEb2Cj1upgfGe4wnG/3HzCMJUhAe42iVP4ycDHzYIkDxNQ3rxmnHVUzFGx1u
         OC95p2zd2OyOwJY1vQiTK0fuC4cpxcK3LRtdZ0R1jOKYomolWIVSFVzGVRlPo6FkJzLC
         ztntCeC6cScQlP4INx+yBOhTjLChII7aKyj7HEL6zS0b1zl1T1+3KcgcdY90d/7G2OJ4
         mjcQ==
X-Gm-Message-State: AOJu0YxLCgGraKC0JlY4DbSEcRJnntV8xLNZJwrQLqcpYZK8tsS4i3HF
	xYvVrZVdySjzLkpqQYx+So6GuKAbSV1IdFMxi5aOaP8I8X6rX4sW2PWJ/MNPDA==
X-Google-Smtp-Source: AGHT+IGZbRKEeocIbWCL2fcCda6LWbsu1WPCHHpOlC+CSAAPaAt3hyLSRR/40E6PY6YNjqTVyk2u2A==
X-Received: by 2002:a05:6214:5089:b0:685:3dbd:1566 with SMTP id kk9-20020a056214508900b006853dbd1566mr377663qvb.6.1705701157591;
        Fri, 19 Jan 2024 13:52:37 -0800 (PST)
Received: from lbrmn-mmayer.ric.broadcom.net ([192.19.161.248])
        by smtp.gmail.com with ESMTPSA id i3-20020ad44ba3000000b0068198012890sm55854qvw.66.2024.01.19.13.52.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 13:52:37 -0800 (PST)
Received: by lbrmn-mmayer.ric.broadcom.net (Postfix, from userid 1000)
	id 6FC23890; Fri, 19 Jan 2024 13:52:35 -0800 (PST)
From: Markus Mayer <mmayer@broadcom.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Markus Mayer <mmayer@broadcom.com>,
	Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
	Device Tree Mailing List <devicetree@vger.kernel.org>
Subject: [PATCH v2 0/5] memory: brcmstb_dpfe: support DPFE API v4
Date: Fri, 19 Jan 2024 13:52:23 -0800
Message-ID: <20240119215231.758844-1-mmayer@broadcom.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

It has become necessary to distinguish between the various DPFE API
versions by version number. Having just chip-specific compatible strings
no longer meeting our needs. Furthermore, the generic compatible string
"brcm,dpfe-cpu" is being removed as it doesn't serve any actual purpose.
Finally, a new DPFE API version, v4, needs to be supported by the
driver.

To select between the different API versions, a new compatible string
format is being introduced: brcm,dpfe-cpu-v<N> where <N> represents the
API version number.

This approach is needed, because the API version has changed in the past
for some chip, which means it cannot be derived reliably just based on
the chip name.

We rely on the boot firmware to populate Device Tree with the proper
compatible string for the correct DPFE API version. The boot firmware
already has this information and can easily pass it to the kernel in
this manner.

Changes since v1:
  - remove compatible string brcm,dpfe-cpu
  - add compatible strings brcm,bcm7278-dpfe-cpu, brcm,bcm7211-dpfe-cpu
  - add "description" section to the binding
  - drop patch that contained API probing and detection code
  - tweak and clarify a few code comments

Markus Mayer (5):
  dt-bindings: memory: remove generic compatible string brcm,dpfe-cpu
  dt-bindings: memory: add two chip-specific compatible string
  dt-bindings: memory: additional compatible strings for Broadcom DPFE
  memory: brcmstb_dpfe: introduce version-specific compatible strings
  memory: brcmstb_dpfe: support DPFE API v4

 .../memory-controllers/brcm,dpfe-cpu.yaml     | 24 ++++++++++-
 drivers/memory/brcmstb_dpfe.c                 | 41 ++++++++++++++++++-
 2 files changed, 62 insertions(+), 3 deletions(-)

-- 
2.43.0



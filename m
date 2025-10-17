Return-Path: <devicetree+bounces-228328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 39617BEC0B1
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 01:52:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1AE2E1AA7818
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 23:52:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BFF331195F;
	Fri, 17 Oct 2025 23:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="EL1P7Z8a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f202.google.com (mail-pg1-f202.google.com [209.85.215.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C64E62DA751
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 23:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760745135; cv=none; b=HLPvfexHnO+HK5RxOvExtuIRFMpHR+AVjvOnH9mmj42dEpyCyp87szwWAsAKGAI0Dhhpv7pWvEnyXbHBInH8KTzilKPp3uRRwxvDnrHvv3Aot1dfQ1xoZlBRxrn2xu2UBSm9ouHUiP+ezuznkyyHyG4j97I7KUVUqa+wOBKPsT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760745135; c=relaxed/simple;
	bh=GI0Yx7Ksjta8jleO59PgIKVTnn0otko41CMsmxM7N9g=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=oqiwqYUI3hgQmmmpTEqXjUwM8A+U202KnRdEgju3G2Fv/t+wGAcCN1WOW0yP9Qpxx3g677CK7yBz9ojBu+StDkog4dKGfqyA1ZtnHev2zNPTx2FVy51aWEnzc3P3+KI++qtITszDwDFe0UafYMNatSin3W0ByePGIL0iqRpJ4rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--royluo.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=EL1P7Z8a; arc=none smtp.client-ip=209.85.215.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--royluo.bounces.google.com
Received: by mail-pg1-f202.google.com with SMTP id 41be03b00d2f7-b55118e2d01so1698370a12.1
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 16:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1760745131; x=1761349931; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=epoAusswG5dO23h2QFaAnAg30xN4jI6h3Smw2Tdo/d0=;
        b=EL1P7Z8a9GQWKD8nTVXh9124UOonKMoTjvenbiOrRn1uPyidvF8/mc9Ni14uJ3MpT8
         ZmT3HfynG8R9OYm3WAU3ou971E0avPgOOibjVhrRQvfXMUgniUfxeV+1pB+tR00xzzh3
         d/P0VnMOwD+/vPK4IzMpOfWfFxcGKeqR/H0l8P2lBfymW12aX73uceXatGaMzbUqeX6Q
         4e+ynJkDuSekbyWAwpqH62XbsuNb+4ZcV8kKrSPv0wqvjsCSjfkebTsauhTL7KkVJBzI
         ft3V2K5MT547mQXVG42wUFeAnv8Y9xtAUo5JD1FoGfQXAhSpydFaf+LyWna8mh8socj2
         atzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760745131; x=1761349931;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=epoAusswG5dO23h2QFaAnAg30xN4jI6h3Smw2Tdo/d0=;
        b=k0eaSRNdEw84jKIzV7i5C74HvjMruWA5N3TbvsVATsi0XjquHIEDmJQSXxQKPcNlUS
         LESheaUEejDd9S9GjB2VAkr6maAkeTlWdACQIKXDbQZhZsEytvV3hsQgxAoZ5mSmbdth
         aG+hITHsXqSDAs76eAQL6ZDkxlwnHCj28asX5w+5MtcNDaHZgbZq+AuxYMkZudEirbRQ
         0VISJ6IpNbMxQpjv9J8woI/0BTCufzRLwQbu3nY7CIrmyRVNmgiaLdJR4mrL1qSnoG57
         3YdMHOeZPrwcl51GmMCCHwxS2cw2LdopTqIyuG04O0dWR4hmIxns/sOZwItBtMO3kJtX
         fFog==
X-Forwarded-Encrypted: i=1; AJvYcCWOPtJLq0Q9QyBx/8gjy0pmzQib/68BjzWiubeJiYFbL3Kl8MDU5CUvktGPC96hqOjV4ALC1guTQADR@vger.kernel.org
X-Gm-Message-State: AOJu0YwM/qSOEtd0QQJHJ7LaewxQOVYfwiimInrHyP56x02eqqhEFRkA
	xvhu/fjX7fAZFhQ9QY+qzsfj728MVWlcKM/BID6sctNJpmoMFKY86SJ1UYowSO8fQQ+tRkjS8o5
	WdxyHBw==
X-Google-Smtp-Source: AGHT+IFpvneIuRadcbPDmZxphSwx/I7IpPbqWA7MW5ybUCSkZbjENPhFaSSItQAT3k9kMr4I9sKjw9HCWMA=
X-Received: from pjbds19.prod.google.com ([2002:a17:90b:8d3:b0:33b:51fe:1a84])
 (user=royluo job=prod-delivery.src-stubby-dispatcher) by 2002:a17:902:ea03:b0:26c:3e5d:43b6
 with SMTP id d9443c01a7336-290ca217ac9mr72880525ad.32.1760745131078; Fri, 17
 Oct 2025 16:52:11 -0700 (PDT)
Date: Fri, 17 Oct 2025 23:51:57 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.51.0.858.gf9c4a03a3a-goog
Message-ID: <20251017235159.2417576-1-royluo@google.com>
Subject: [PATCH v4 0/2] Add Google Tensor SoC USB PHY support
From: Roy Luo <royluo@google.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	"=?UTF-8?q?Andr=C3=A9=20Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>, Roy Luo <royluo@google.com>, 
	Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

This series introduces USB PHY support for the Google Tensor G5
SoC (codename: Laguna), a new generation of Google silicon first
launched with Pixel 10 devices.

The Tensor G5 represents a significant architectural overhaul compared
to previous Tensor generations (e.g., gs101), which were based on Samsung
Exynos IP. Although the G5 still utilizes Synopsys IP for the USB
components, the custom top-level integration introduces a completely new
design for clock, reset scheme, register interfaces and programming
sequence, necessitating new drivers and device tree bindings.

The USB subsystem on Tensor G5 integrates a Synopsys DWC3 USB 3.1
DRD-Single Port controller with hibernation support, and a custom PHY
block comprising Synopsys eUSB2 and USB 3.2/DP combo PHYs. The controller
support is sent as a separate patch series.

Co-developed-by: Joy Chakraborty <joychakr@google.com>
Signed-off-by: Joy Chakraborty <joychakr@google.com>
Co-developed-by: Naveen Kumar <mnkumar@google.com>
Signed-off-by: Naveen Kumar <mnkumar@google.com>
Signed-off-by: Roy Luo <royluo@google.com>
---
Changes in v4:
- Separate controller and phy changes into two distinct patch series.
- Remove usb2only mode configuration and the corresponding usb_top_cfg
  reg (moved to controller)
- Add more descriptions to dp_top reg to indicate it's not DP specific.
- Add u2phy_apb clk/reset
Link to v3: https://lore.kernel.org/linux-usb/20251010201607.1190967-1-royluo@google.com

Changes in v3:
- Align binding file name with the compatible string
- Simplify the compatible property in binding to a single const value.
- Add descriptive comments and use item list in binding.
- Rename binding entries for clarity and brevity.
Link to v2: https://lore.kernel.org/linux-usb/20251008060000.3136021-1-royluo@google.com

Changes in v2:
- Reorder patches to present bindings first.
- Update dt binding compatible strings to be SoC-specific (google,gs5-*).
- Better describe the hardware in dt binding commit messages and
  descriptions.
- Adjust PHY driver commit subjects to use correct prefixes ("phy:").
- Move PHY driver from a subdirectory to drivers/phy/.
Link to v1: https://lore.kernel.org/linux-usb/20251006232125.1833979-1-royluo@google.com/
---
Roy Luo (2):
  dt-bindings: phy: google: Add Google Tensor G5 USB PHY
  phy: Add Google Tensor SoC USB PHY driver

 .../bindings/phy/google,gs5-usb-phy.yaml      | 104 +++++++
 drivers/phy/Kconfig                           |  13 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/phy-google-usb.c                  | 271 ++++++++++++++++++
 4 files changed, 389 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/google,gs5-usb-phy.yaml
 create mode 100644 drivers/phy/phy-google-usb.c


base-commit: e5f0a698b34ed76002dc5cff3804a61c80233a7a
-- 
2.51.0.858.gf9c4a03a3a-goog



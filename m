Return-Path: <devicetree+bounces-177093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3566AAB66C6
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 11:05:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 754AD1B63C89
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 09:05:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E583D224B12;
	Wed, 14 May 2025 09:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="RbivllH1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE2DA224B05
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 09:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747213465; cv=none; b=I3LPjmf5LNRMn63ujXga8XWCbRx99OTWxm+zIxtkBS/eJo5pB535y7qlbMZjM2qIBYaL74/1NwjxLe7tNfF8lVUs7glpXVV+/r+NPA64k0OAaomwXWdHPFrEx49Nv97pBb6d4CpmIq2Pfj8toJpeevbDAMsbSUYyrD7hoG9/IiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747213465; c=relaxed/simple;
	bh=5K9vutlNbCySpn2mNDTs4+oqYbErEJzRkyHBo6CSjUU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jrsJ0kq6eh1KgveOrVvq26TLxIQh1wkX2JyXd65QopcQaoFaBsUqlDxUb7zjKCvvpSQ3elkyPpwGip7w9Tu/JaDoJ/B1zf32JbqYiZleXDv3DEFWf/j4DMWmF8MYcj1nNL9KeqDnH9cOHQKomNVmcsWHpW0fLVMIdAxoaA+FgGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=RbivllH1; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3a0b135d18eso3763062f8f.2
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 02:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747213462; x=1747818262; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=P3wGtNITHa0U9o78hhbypZiCBzOOsk2GAy0wSEWd5SI=;
        b=RbivllH10Q9QTchRwQ9uc4Dd2nm5qVYmJvwQABgbkSafJB3aDZMHSR5dw5S2WpSSH8
         aGbqu9ThmPKGNDHezRGtYQFVa1SH3WUUTo+CLWISHirFmnsJ+IYAg/5/SRMiZWSa/WJu
         cO22pWZPv//sbZpldEHSZxwFBAWU7cyEoK0mAuYCQZ16+b2GfcA5IUsqm6Isg64b3yuN
         dcvQ/zjf2rTkp1i6ahze4XzWjngOroe/hVushea33xVxjb445peCXwgwhbnAc9x/RYh3
         t22OsS+2KWgiYVnBN544tgdt2vNgH71RT3zgUjNi3CEUpcAnqYIHfms0muWuHf93R9fg
         rNFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747213462; x=1747818262;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P3wGtNITHa0U9o78hhbypZiCBzOOsk2GAy0wSEWd5SI=;
        b=xR/kz3eeBGDEBkYbbMsR2C9iyv8FGmDip0qtnXUVTgTTwy96GvYxX+NKdOIQpHRihX
         T3CIZ3pR0Pg5WZ3hqWPb/i6CruHH3SgxAbGs+tz9ytyp4bYJZz4huerYTam+GIIbN3EH
         OIr5XUZRSm7n7dbEUotNfUn7pE/PmB6qcziAmKwG9PP+456j6gTeZOPP2/olwMcr3O/i
         Nqv59+Fu9H1JdrGoJycg+uAXgLyRBlBtJ2VtfWrVgVxZTWr5/ouIyDVszuq3ZSbQNsMT
         bz8O205Hf3frVRPqgfX7nkiMGOCmkraWMLqMtQLatC7QyFvqfoGuMnOf2mhPvgbWJv6S
         ebMg==
X-Forwarded-Encrypted: i=1; AJvYcCWn8HdKLzF2zabOxfXQWvSJDTFzVq8632yEp9/3xwjgQQUZjSjSPM1iTEM3Um5GEEJoMxqMtolJKuri@vger.kernel.org
X-Gm-Message-State: AOJu0YyYbARE71nQSy+oXOQ61ioKACBafbqWyvvkgXa8roH7JsjN4LdD
	2pwV00d7ba6LVxrW481KArttubT0lBUbnBdZMFdJTeXoynW5WsiMIoYT2KOX+6Y=
X-Gm-Gg: ASbGnctvn0plttlEoF1qUrx9AjTU0s+fOfFljnR4FvEnGwMyVzmPvXm4YL8B5vPh5Q4
	Rp0n108llcyrg545HWIGXThJxhQsJyM00pFllusl/lBgpmqaJlLSRRwYoGylNnMeyrvxkZ82zmz
	Ru+KC6yKElbsSNODBRueN8sv3/eNUOkOh77e6+TUbzksfZxkPzxsSDhr4NvfZAep7W++d/znIuD
	Klk3Xm6tIZTy7xV0LzECc2Pn8wssT0io6I1JsgNaMUrdN92P/gJrOJoQIm64SxcH4OnpgpmGjfz
	9WfJRKlPT+7xltCBQbiAZycEL4h7QByQ5EJAViiRqYib6WZv5QDFIAhT02c8ivZ7NJi2sO1wt5s
	bQEtmQkatvEwlNYI=
X-Google-Smtp-Source: AGHT+IFjZxHD0RqKbm4Bz/XFWoN+olN+g7TOLkSX6yfDvf6e23UqKDyHNvx4g80jZ4+20Yv+zITBSw==
X-Received: by 2002:a5d:6342:0:b0:3a1:a96c:9b76 with SMTP id ffacd0b85a97d-3a34991decbmr1659237f8f.38.1747213461891;
        Wed, 14 May 2025 02:04:21 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f57ddfbesm19286561f8f.10.2025.05.14.02.04.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 02:04:21 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	magnus.damm@gmail.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 0/8] clk: renesas: rzg2l-cpg: Drop PM domain abstraction for MSTOP
Date: Wed, 14 May 2025 12:04:07 +0300
Message-ID: <20250514090415.4098534-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hi,

Series drops the PM domain abstraction for MSTOP to comply with the
requirements received from the hardware team regarding the configuration
sequence b/w the MSTOP and CLKON bits of individual modules.

The initial MSTOP support for RZ/G3S was proposed here:
https://lore.kernel.org/all/20231120070024.4079344-4-claudiu.beznea.uj@bp.renesas.com/

There are no DT users of this abstraction yet.

Please share your thoughts.

Thank you,
Claudiu Beznea

Changes in v2:
- updated the title and description for patches 1/8, 2/8 along
  with their content
- added patch 3/8
- collected tags
- drop duplicated mstop lists in patch 4/8
- detailed changelog for each patch can be found in the individual
  patch

Claudiu Beznea (8):
  clk: renesas: rzg2l-cpg: Postone updating priv->clks[]
  clk: renesas: rzg2l-cpg: Move pointers after hw member
  clk: renesas: rzg2l-cpg: Add macro to loop through module clocks
  clk: renesas: rzg2l-cpg: Add support for MSTOP in clock enable/disable
    API
  clk: renesas: r9a08g045: Drop power domain instantiation
  clk: renesas: rzg2l-cpg: Drop MSTOP based power domain support
  dt-bindings: clock: rzg2l-cpg: Drop power domain IDs
  Revert "dt-bindings: clock: renesas,rzg2l-cpg: Update
    #power-domain-cells = <1> for RZ/G3S"

 .../bindings/clock/renesas,rzg2l-cpg.yaml     |  18 +-
 drivers/clk/renesas/r9a07g043-cpg.c           | 132 ++---
 drivers/clk/renesas/r9a07g044-cpg.c           | 168 +++---
 drivers/clk/renesas/r9a08g045-cpg.c           | 227 ++++----
 drivers/clk/renesas/r9a09g011-cpg.c           | 116 ++---
 drivers/clk/renesas/rzg2l-cpg.c               | 493 ++++++++++--------
 drivers/clk/renesas/rzg2l-cpg.h               |  66 +--
 include/dt-bindings/clock/r9a07g043-cpg.h     |  53 --
 include/dt-bindings/clock/r9a07g044-cpg.h     |  58 ---
 include/dt-bindings/clock/r9a07g054-cpg.h     |  58 ---
 include/dt-bindings/clock/r9a08g045-cpg.h     |  71 ---
 11 files changed, 603 insertions(+), 857 deletions(-)

-- 
2.43.0



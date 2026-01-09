Return-Path: <devicetree+bounces-253320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA21D0A9AB
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 15:23:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E3B57301FD92
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 14:23:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A457335E546;
	Fri,  9 Jan 2026 14:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GCNcswNh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E01F35C196
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 14:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767968584; cv=none; b=QJ3wlOCTgMRS+Ivhwxad6Z3N6QZ3hUvFDM/ZHceFw8oA9s/8Mw64KbhXJWo59eP5x2kOmnL0rtUVvM96oTgHuVJagBLmlQsh3jr0zTED1zH+61/gjyVSCd42skg+l4Ebu0S69SDt3cuTOegWPj5mb/3k73x2IULp057ns6GuzP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767968584; c=relaxed/simple;
	bh=UY7UFflbDgHZVibFTmDMq/bNYvMSyEoJd/ePrvRn4bM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZgcUMyoaKM0EbsxuZfjjil+Fdvfb55ToSEa6Bjhg9llxTsA+0mYFQoaDohXlgYbl+5ErgwuT1XKhoYEq/DvCZsuqP6LMoDR9ehyP1sm9j/mUjYcxSiDzcM0rp9/5aw6J7mq0XB2waM1Pg6XpBDRcfomyCPQsnmd/16j8RHhO5XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GCNcswNh; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4779a4fc95aso16172995e9.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 06:23:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767968581; x=1768573381; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VZhhwAXsDIlx+lDJ1akeMoR5QOac1v63YDzTMpwdMz4=;
        b=GCNcswNh5fdd0ywVQd83AEgN08putvRSqXc2WAqW7ONxp9tJvycRwLUFJGVHln9PEa
         flYYox094U8NpyQTSbZZDPxPv38wN83VbCEnnDI2+NyhbXFSPtgwaNaXfYCgHVcckj4Z
         fVmT5xWgxO2eC1Ztx/JkeQ1j6Yn14nmfQIvT4wrWEvE2sKdAdRtK/L/jxillAvVF+1it
         yr54BrGS22C1sgjq3rM9e5jhmHgxwLSa2+E98DDj9FMUSDr5+RJ9VVz0r1+Sf7z/5BXQ
         JEZzR4XXyMz80lASupKf5rXNq8+KnKNX7KFLO5sOsP3DJyN7PsLD7TxBu0uZZAzdSWEH
         e6rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767968581; x=1768573381;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VZhhwAXsDIlx+lDJ1akeMoR5QOac1v63YDzTMpwdMz4=;
        b=oRjkHMwyf42xNf1srPmFCFGz1T2juMWubMuTmzO8Iv0NXuQHABEWvribbfkKE3Gv7U
         ofisMD4FB5FBA2u3cg6A0Y9RPztD5RqInmXo0P5dItt9onUSKeXmEyc+MdLA5JhLNP+p
         3EoSvQplTs93GX62KyA5Y3rdHmYUzHkMBGIMC77YY2gLpXuqZWtfwNCdxw3Rx+08Ae63
         LoFHSPY1nxYnqcuLjpNKiV/3UROesNZNZbekYLtVOOFBqOyifani6cVuoFEoiBc27PaV
         llrtxsRsftAHcMGEmqRdEQVGlfiq2fMy0CHYzedd1WTsBBrB+3PBLiEEicmYP5YsHyuq
         CbLw==
X-Forwarded-Encrypted: i=1; AJvYcCWh8NT/VzBib/kv6ogG+NKJWLQzoe2dNUpqA2NogOB8xjg9ucYixkijMNiDdo8rY0NRPen/sHzOEtrM@vger.kernel.org
X-Gm-Message-State: AOJu0YyP4RKb6L0Rp5Dwxb1KnaHEiRnnZUm7NDH9eNd0mhOZ13cAHRh9
	koIXYKsoCfcpsJNJaFRLQKp7F5ewK+ekq7lRXOQWqXhdceVXs8JL2Ebk
X-Gm-Gg: AY/fxX4tB3B3d1rP63Q4Mn8TR8ghkxfsvjYfmJ93aox/pDtgg2YmAh+S1rCqMTGlsxP
	fvUCM3b9BdaHFmNI6Mi3IcdVtMCpYguWygh7jcCotMq6mJydDGF0bDYLrHMgJWfnkbetDnDDpWC
	8zw65aZUEVDDei1aDgj2AM0nYFS3CwLWa17D6CXZjik8puSLDAqP+Mji//fI7iLlGug+sjneY0K
	evBh+f8jKdlcQLLeAHci88NvD/uy7WSwKcINtTcu5y9+eVtN7qRPyTabZRIgof+6FD02kAEYOBl
	hoATkeqHVkGfGVH1ZokSUhJCYNKyp1UUjvkwAs54qUbbM6m6oq7l6FoDJgy8sxEgrFQNYlWeizr
	BNrnWIQ1ug8PWJN/RdqQM6HYbUoHGOyqI+BdGAd8fHToeAudkf1jcoVKKzGDU0KNCE1M3dnT7dx
	ez7yvq4D2OdZ7kBma04HpmcDYTV6gJNoanQFLB8V+dERgg+zrjYESlVWbAAVFrV+yZMVRGkELI/
	Z4ERPTvjkzikmaSAKuO5FE=
X-Google-Smtp-Source: AGHT+IE4xUeJTRReFgbyqrI4+BRSkB5yL0hyNobdmJhLiKldprwBuzroJ3WhNsl5L6ooZUp8tRuy0Q==
X-Received: by 2002:a05:600c:8b37:b0:47d:333d:99c with SMTP id 5b1f17b1804b1-47d84881c77mr103101565e9.18.1767968580372;
        Fri, 09 Jan 2026 06:23:00 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:3d06:ce2:401e:8cb8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d871a1e11sm61448855e9.19.2026.01.09.06.22.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 06:22:59 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <clement.leger@bootlin.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH net-next v2 0/2] Add support for PHY link active-level configuration in RZN1 MIIC driver
Date: Fri,  9 Jan 2026 14:22:48 +0000
Message-ID: <20260109142250.3313448-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi All,

This patch series introduces support for configuring the active level of
the PHY-link signals in the Renesas RZN1 MIIC driver. The first patch adds
a new device tree binding property `renesas,miic-phylink-active-low` to
specify whether the PHY-link signals are active low. The second patch
implements the logic in the driver to read this property and configure the
MIIC_PHYLINK register accordingly.

v1->v2:
- Updated commit message to elaborate the necessity of PHY link signals.

Cheers,
Prabhakar

Lad Prabhakar (2):
  dt-bindings: net: pcs: renesas,rzn1-miic: Add
    renesas,miic-phylink-active-low property
  net: pcs: rzn1-miic: Add support for PHY link active-level
    configuration

 .../bindings/net/pcs/renesas,rzn1-miic.yaml   |   7 ++
 drivers/net/pcs/pcs-rzn1-miic.c               | 108 +++++++++++++++++-
 2 files changed, 113 insertions(+), 2 deletions(-)

-- 
2.52.0



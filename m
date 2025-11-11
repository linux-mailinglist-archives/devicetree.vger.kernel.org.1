Return-Path: <devicetree+bounces-237168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1C9C4D943
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 13:06:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 183E94E5439
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 12:01:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 481A33446BC;
	Tue, 11 Nov 2025 12:01:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ji6zdWZq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CACB2E3AF1
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 12:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762862464; cv=none; b=p1TvvypewDCK3wLmNvdQYZ7IHgS2Rtx+Y6ppuE4AzFSNzPoAHSNslBrcxUnLs2XOTHmq2MXpnfKFziIVf/ReV35u3LIAwYyXUfLP6+vPvtwAlUZpb4olVTdbC+wsplSP/ZTK8yyk7FNnbn4Cr3nWpi95TRCjAi7GYPOfeAUY4no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762862464; c=relaxed/simple;
	bh=3kjI3dq6p7W7F9ddD6xztg6oeYg1W5dCRwLSxcSjN3M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qMeS8odC21afGD+QlJ7Lf6or+ZSX9CLuBwl3nlT/bDfMwIkUZ4IzunbBKE0Zu1oTEKy6iR5I9oQ5hyV5spXYhYnLxfikVpAU2XDLjE5NhIgKPJkgJLW3uhjKkAlTg3kY+y6fiQrmAAUQhTNSPmzcLUQXVsYG8sGoteR6e6IdK1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ji6zdWZq; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b7321b03aecso103024766b.3
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 04:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762862461; x=1763467261; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=c9M3cMyzoNu29tzKfw+UGIVH7zn3E+bc2pWo8lrVlBg=;
        b=Ji6zdWZq5YyxZw+1VdsFmGJO1lkhL39oaALFjYqdbCrFprLWWfOCUhQLoON+51usn7
         6C3Vu4OjJIJ+s3OXTqzjbe4Np8MtohHUEvUgCVosCm07apowYpY1R/ktMeFB5jxQx1/K
         PxfT86D8oagoW0EJuuwAYYY3tQZtVd9aJFx7bAaid2Oua1Nr+jEgpVFfcXBbzLwDb3Fx
         HLDLZsExUJmxkmiHpGrAbRq9khBYAxJBdWwIe8G9Q51BVmeztxfNlBH/RVgzTHxtS2Ub
         Qx/Aq2sXHVfIZmtFy0P6UKQy+UzOGlb1PUQvbFz9fHqe16TNLdCPQa65Bqk2xewYlVaT
         KmYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762862461; x=1763467261;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c9M3cMyzoNu29tzKfw+UGIVH7zn3E+bc2pWo8lrVlBg=;
        b=HZIJuHiyUPpGVs+GNvC3KYd2gwdVr1CJCxnI7fK4Jmz2hjIeayKlIELK5UnLq6luv0
         JrXPEJ58G5D1jFsEU9d0ywke8KnIAJ5OVvH6iTXE6wvGia3EslaDkNpqzZPCKomdQ8Tu
         kcJeWYsVvl8/TTiOxEt1RFWHQJW+Ma5i3tdSs3GIHl2maoo70zptcdOA7flGKXIWf2Zd
         XiSwN9lFqJp5OiawIJkNt6oaG0TeKCKmZnloBe3u9VD9Vyx6+bBoKa2ymAajXDRQJAJj
         cW9t+9zW3aBFrDlVmZ72VNDzsznloxEPp93rbBBplIUEQlsGnxcMAwjlkZSWjm6bNj38
         58+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXSlUbfawDdzpl+p1hvmEgZS0p3lrSx479bFl9dVCbeluBofKQdE+OQ5a1Y+33NaoNalYhL50qK9lsU@vger.kernel.org
X-Gm-Message-State: AOJu0YyXZr3zNIQhcaY2EDPtTF2EXe3z5ExooQx9F45m0D9bMkVWzBWP
	vkoFEBLL2p13828r9lCpeW07UHivA03wbSm29d3KRItB3KG9jsVjVWn+
X-Gm-Gg: ASbGncvcYc6nMspIOdRgtW4zr5PFU3L4R5ghUxWpDE2KH1tDmqCtw0EZyHM+zQGg7/F
	9RQCG2RRP4qGS0ooMQ/1PtPPRTADlzxWKZHjoC5TeKo1vH24IYHOv0qMMtoz8DmD11YZDuTTgZL
	I25eFN6Mm43qnZa355c+PI/SCeFUnl792uBH3V5ezK2Kmg81UJ470aiT9qKSV8V7lfYg1+GA3AD
	jhqtGXNuOBzJhDN4tnsynNP27mFrZYwbRugZSGjs5MD875nBKtmv/4JHpcFIT9cqZD8ACXSrstP
	tsX15m7X73xTrM6IhPShUniOvuE0W1wd25JxJ+vMys8Df41ZP3QpnJlZ6eOF42o5LF2KYdtfpQj
	EvEqNfYbDqHvoFLMJ7oWB/cX4Y6FODD50Qo9UnIaxcSxh/umNXCfBcO8yQFfOWLodQGfChX07hk
	A7xqAkcXKet9r/wmbinUQ2EM84qNHhu3ctFBxn/T6jB7pwiEE=
X-Google-Smtp-Source: AGHT+IEv1psFTLLIn3fLR6zBNaC1O4/uKT3iU2N03Fto9nCIf6JIXdox9iEwBJ11RCWUIzocGYmgaQ==
X-Received: by 2002:a17:907:7212:b0:b72:95ff:3996 with SMTP id a640c23a62f3a-b72e02d25e1mr1281562866b.10.1762862460597;
        Tue, 11 Nov 2025 04:01:00 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf407a01sm1340707466b.22.2025.11.11.04.00.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 04:01:00 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Daniel Baluta <daniel.baluta@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/3] Switch to using AIPSTZ5 on i.MX8MP
Date: Tue, 11 Nov 2025 04:00:19 -0800
Message-ID: <20251111120022.696-1-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

This series is a combination of the previously dropped patches from [1]
and the config-related patch from [2]. This enables the usage of AIPSTZ5
on i.MX8MP-based platforms.

[1]: https://lore.kernel.org/lkml/20250610160152.1113930-1-laurentiumihalcea111@gmail.com/
[2]: https://lore.kernel.org/lkml/20250707234628.164151-1-laurentiumihalcea111@gmail.com/

---
Changes in v3:

* enable CONFIG_IMX_AIPSTZ as module instead of built-in.
* link to v2: https://lore.kernel.org/lkml/20251104150612.1874-1-laurentiumihalcea111@gmail.com/

Changes in v2:

* squash patch 3 into patch 4.
* rewrite commit message of patch 1 to state that this driver is used
  for the IMX8MP-EVK board.
* rewrite commit message of patch 2 to (hopefully) better describe
  why we need this change.
* link to v1: https://lore.kernel.org/lkml/20250821105634.1893-1-laurentiumihalcea111@gmail.com/
---

Laurentiu Mihalcea (3):
  arm64: defconfig: enable i.MX AIPSTZ driver
  arm64: dts: imx8mp: convert 'aips5' to 'aipstz5'
  arm64: dts: imx8mp: make 'dsp' node depend on 'aips5'

 arch/arm64/boot/dts/freescale/imx8mp-aipstz.h | 33 +++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mp.dtsi     | 16 ++++++---
 arch/arm64/configs/defconfig                  |  1 +
 3 files changed, 46 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-aipstz.h

-- 
2.43.0



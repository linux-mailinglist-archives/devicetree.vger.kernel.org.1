Return-Path: <devicetree+bounces-252432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D15CFF360
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 18:53:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 090D33014DEB
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 17:53:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03DB034DCC9;
	Wed,  7 Jan 2026 16:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z9YHYwyb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A04B2346FA2
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 16:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767802300; cv=none; b=W3kV0Zw+DNBTsD7s1L7fZ1+70Y+eaDHGuujdkE/XDUK3CXWKUlMXSQsBxnyGGHDu76Les5SmWhz+GxUIJ9+NSTqgxwH1yLNnmsjLcDRCzlP8+9PLS5yMGixZkYfWHhIDbg0PnKXX3HshrspyyW3FWxxv2p25DQ5gueVYfFwqAHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767802300; c=relaxed/simple;
	bh=MtzDOseeRu4590Ja6tjo7RxvRP4+cOKcLM8JZShOIqE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=L7HgXk0OXQOBMP2zG2aYti/5BDSUrEva3wGn7VTDWXIv3nhq8dRx/JYIIqXQFo36CkxjznyO17iaFV/NXpoDTVx6mypuqlaHXzHkIo/i5YO5+OIWaaWZGUdw7KBgp9eYWZmzhaHh0Hhc8AX2+6oLlc70uVkSU6DT3+Nxzlsw6c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z9YHYwyb; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-7f121c00dedso2132202b3a.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:11:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767802291; x=1768407091; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WcdUfhv9PmkySnePknemKHn6SsLx3bTbcdvg5pHIo6A=;
        b=Z9YHYwybmUaE/Iq7zvMwk/Upiia4rSrCo3oJpdTJO2O2dxee3rt/VhZGnqFIC6aEo/
         6P+L6qgA031jRl8DDVpCfYDp9RuTJTiOUM4p7swDQaAluxRd1q5vHltFJOun2ZW5vbsm
         o99U5KKAOTRndKLuAkuVSeGKYhyesZyp81Cqh3ey/oIwN0qOUfLY32wHiB6foSNjQAZY
         CQ2KmIA6NzsyrY4ICFllf4HWyetuTuIWuX1/f/D+eYImhOX+3QrbZxhmvxUTN2Nrv1tf
         G8MD0B3xv1ik/MQqj0mwulH+LaVg4geJWOby289RxTr2ooUBlS/a/cFZhstd/KQHuzCW
         3rmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767802291; x=1768407091;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WcdUfhv9PmkySnePknemKHn6SsLx3bTbcdvg5pHIo6A=;
        b=Y45gCFep7Px9wExbphKMBUaXrihU1nZIXujLhUm7m9Q/HK0I90byE1yT4PmhemDDFD
         8JBLuASz0vLhlED6K8XIwAzoSf8gnmUUueo3MKEhw0BLcXvFztWhgNYF4l07kaJY/Km6
         t6u7K+hqH8Hxh7OjPYX43nQHZIgsUhTiw4mcFxX8yP59bA5/SX3EsVOb8tC5ozsUEWax
         zAZhja55JczeLVbYWtw8hvboKy+2D8mKBK4Guol5EvHUbm4RneWq7vO0pjL6ud/ry+Rl
         BQRxELVbEYgwdHJurSuJhVFe7C0UwzE3BPMJNtIuIL6B/rra66kcoOubgeI7zzRct6ic
         /DIQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhFsry/CTRajRTcnSaIa7ll5W3hZfTWk+XMGCGL9vrk2GS2rd+Pl2PnHB9dTzdHeUA8a5NVJk2hM8j@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7gYi4Km7VQVzVfqsQ3iWo+inzz6kkFdo3Y6rRLyqxFHVFxwtz
	fhkdiIw3fgRiwSrKLnBV3F/a1tlIzGmNtI0lfxeti+Wvce+dzWHUYgFA
X-Gm-Gg: AY/fxX6IcXBrh8F7aHWqblnJZ+TogyozhCKW5NCepvd6ElI532CmL8dm7nKib+57thk
	5urSEqTRHm9xGztFwHP1fScLcEAH96TwrhRN+AyrKKGWXN8jow1jCJPHb8vnksJNXFyQylen6bt
	cye1u2j7OAGmpcRNEtH2VBSsDBtrdysD0sJjd8Rv4BnySYtFDvkuTEdsoeHxmUXsxedaQL76Nvz
	nkBX77/uH6ryCuGZUe0ko5EKJ4Wv/8Kuyw7PurtW42I5h5xVD3e4428Rp3LigVsHjRRmT6ZzoL7
	/cFEXEd1viBOjrAoGnOfGCy4kOMYdggIU5ApylY2slmflGWed4JchnKYmeYH2GTCT5AuXI5u41i
	hHk0PsBkPfG9lSxKLLxn9XvGIVsa/i7POkxUSvRcNCU7bUUXP2aIrKFD3/JKl3Bvuw30S5GOikr
	ZcHpk/WE9G0oQJhUQA9eLcGGSWwS8DXUwGmBgSJA==
X-Google-Smtp-Source: AGHT+IHo4QEFd2Cz2lPkEiku1PqfKCJ172v98MX9v11PuwfeWjgii0vt6ch3UHrFQ4lDPqqQkbvHHg==
X-Received: by 2002:a05:6a00:e15:b0:7f7:5783:fc6d with SMTP id d2e1a72fcca58-81b7f7e1900mr2615654b3a.41.1767802291567;
        Wed, 07 Jan 2026 08:11:31 -0800 (PST)
Received: from Black-Pearl.localdomain ([157.50.178.147])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-819bafe98d5sm5373079b3a.21.2026.01.07.08.11.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 08:11:31 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Subject: [PATCH v2 0/2] dt-bindings: phy: Convert TI OMAP control and PIPE3
 PHY to DT schema
Date: Wed, 07 Jan 2026 16:11:14 +0000
Message-Id: <20260107-ti-phy-v2-0-a1ec27401fff@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKKFXmkC/zXMSwqDMBSF4a3IHTclDyKxo+5DHGi80QvVSCKhI
 tl7o9Dhfzh8J0QMhBFe1QkBE0Xyawn5qMDO/Toho7E0SC61kEqwndg2H0ybYWhQGetsA+W8BXT
 0vaG2Kz1T3H04bjeJa72Imguu/kQSTDBjldMo7TDW6j0tPX2e1i/Q5Zx/A26vZZwAAAA=
X-Change-ID: 20251231-ti-phy-58bb9e38cfc9
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3

This series converts the old text-based DeviceTree bindings for TI OMAP
Control PHY and TI PIPE3 PHY to modern JSON-schema (YAML) format.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
Changes in v2:
- ti,control-phy-otghs: Update commit message to reflect the latest
  binding changes.
- ti,phy-usb3: Drop the obsolete "id" property from the schema.
- Both bindings: Update maintainers list, modify node pattern and improve
  node descriptions for clarity.
- ti,phy-usb3: Introduce new YAML schema with properly defined optional
  properties for the PIPE3 PHY.
- Link to v1: https://lore.kernel.org/r/20260103-ti-phy-v1-1-8c3f5e2cbd63@gmail.com

---
Charan Pedumuru (2):
      dt-bindings: phy: ti,phy-usb3: convert to DT schema
      dt-bindings: phy: ti,control-phy-otghs: convert to DT schema

 .../bindings/phy/ti,control-phy-otghs.yaml         |  94 +++++++++++++++
 .../devicetree/bindings/phy/ti,phy-usb3.yaml       | 127 +++++++++++++++++++++
 Documentation/devicetree/bindings/phy/ti-phy.txt   |  98 ----------------
 3 files changed, 221 insertions(+), 98 deletions(-)
---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251231-ti-phy-58bb9e38cfc9

Best regards,
-- 
Charan Pedumuru <charan.pedumuru@gmail.com>



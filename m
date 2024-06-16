Return-Path: <devicetree+bounces-76163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 275E1909D9E
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 15:19:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 96B6E282BEA
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 13:19:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A3AC188CC3;
	Sun, 16 Jun 2024 13:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s1TC7hss"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409E66A008
	for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 13:19:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718543978; cv=none; b=k/9SRwxw538D0znm1hTlTUuCqnI7MYvGlhBxUeaWYOa1eBDT5Wj3NxEaQGTTA21VnRXHdYgazm6ottc1PRKSCdDDhP2fk57vK2lh0G1uXJ1sSH3sxzeljr9z6+Y+C2+IXwtCnQ1dHvJHx1KU8Bzn8dFR8FrWl5bqlNRoIr07nxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718543978; c=relaxed/simple;
	bh=KsuesC+AIOWnKwWhlFMQqxP1c7Aqz3KwBjkPKaoEn4s=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=CoGUfqKoGuNBnOpGuiSo6Ju3ir9QOW/RoKiLSziOOxBnmfNoxqXJV8hra0jjB5nyouMrRt+yTQiiCP9k5HQItsOVt3k63pVxQDUC+4Eqn57n+VxtaXz/K1amDNaXhKNX6HT/n71CxgHaiPzSY7rS71Yv/XvZ/Rn5U7ME8sP4h+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s1TC7hss; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-57cc1c00b97so2295330a12.0
        for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 06:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718543974; x=1719148774; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Y9RC7qP2hOgwXMsoy3J2wjG1fwHEObGM33Zw9CpfKZU=;
        b=s1TC7hss0hKZrvcAMyDEMub+eNRspgcAIOaNSi8425BgJfHwYBqoZ9l78TF75bWFt7
         JyjUxbH1ypuEU1oKgk3AAFX3LUmZAWzUOUhy7nPs1IT0EhUfe17cebJxEG//LY37Evty
         oCkGTZLxwdo/kb98ihUyH3WtkWEIRC7zgYBKVYaBVSREbnc0Hv1VqEZi0Rvn9FqTziIZ
         1ZkaL83rNReErwMTyuRaamI0qNoDFQ6ZeaWj0J9anXnRtE/gA6elK/BnV/WtcLStcaiW
         wFcwj1CnoQxyAxg7YwV0Keb117UnAbu+hqiwehpQBWSX5ErJMLQUgmbVsFYskf1lrAx2
         PsiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718543974; x=1719148774;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y9RC7qP2hOgwXMsoy3J2wjG1fwHEObGM33Zw9CpfKZU=;
        b=oENMcoyZxXur66xiaoNUWNXmpcRaP66YnvBo0t+Ddifwj0sS/rVvwxrIwzyOU0Z7To
         grWtw2bW5T6icaOmg5EBXGdQ6GfW6u99eHqay6FeShDI0neornm91LECgVWBxt8f69z9
         ipstK9e0LeAiFWAP61m3yzXWJJaXGfDcmgEOA9/St/4W0ooFMpzKYbndP76xLN/43AB5
         5BTtmENCl0z4qvMNGCMoJ8ILQqxRMWuK2J3EmIQGcyHV/47AdL2VrCbmEl4gkCFMqiH1
         R+rosa6Mmk6GcEvbvGCCUf5MvPokj2lsKedzJs5RlFBdYcOXqswqoGv4CvtiYIjLpZ+T
         uMxw==
X-Forwarded-Encrypted: i=1; AJvYcCVAjG7KLtZN0isWvLZNxM0MMrG4NoumU22nj+8u+fn7mAn5CW/QeuIVpxXwOdb7YzX1RCaSVpXIe41R04uw+cpA5wy92MbTJ1YSIA==
X-Gm-Message-State: AOJu0YzitsB0llzeWtQy7KH5SOvtDS02QDbk39RUmJqOBQkNCcXLAXyG
	lD8UNVz4gUooXQNn+WVP31fnB+dk1HFtzo1V7UcjeO0YsY6Nla5owct3UKQsF1k=
X-Google-Smtp-Source: AGHT+IGMI/wzpjxIzGob+oc4c+5L+0sBURQOTzW3e+I9pMt6Aj9Zo75Lc2WpGk2lBDIv5UBbbO8UMA==
X-Received: by 2002:a50:8714:0:b0:57c:ab84:1095 with SMTP id 4fb4d7f45d1cf-57cbd652420mr4227643a12.7.1718543974453;
        Sun, 16 Jun 2024 06:19:34 -0700 (PDT)
Received: from [127.0.1.1] ([78.10.207.147])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57cb7438815sm5099603a12.80.2024.06.16.06.19.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jun 2024 06:19:33 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 0/7] dt-bindings: mfd: syscon: Document more compatibles
 and require simpe-mfd description
Date: Sun, 16 Jun 2024 15:19:20 +0200
Message-Id: <20240616-dt-bindings-mfd-syscon-split-v2-0-571b5850174a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFjmbmYC/33Nyw6CMBCF4Vchs3YMbUWCK9/DsKj0wiTYkk5DJ
 IR3t5K4dfmfxXc2YJvIMtyqDZJdiCmGEvJUwTDq4C2SKQ2ylpe6ES2ajE8KhoJnfDmDvPIQA/I
 8UUbVWqm67tpIZaAQc7KO3gf/6EuPxDmm9XhbxHf9wd1/eBFYo9au2OVBKH2fKOgUzzF56Pd9/
 wAhMnwyyQAAAA==
To: Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, 
 Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>, 
 Jacky Huang <ychuang3@nuvoton.com>, Shan-Chun Hung <schung@nuvoton.com>, 
 Khuong Dinh <khuong@os.amperecomputing.com>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lars Povlsen <lars.povlsen@microchip.com>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>, 
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
 Nishanth Menon <nm@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3459;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=KsuesC+AIOWnKwWhlFMQqxP1c7Aqz3KwBjkPKaoEn4s=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmbuZZ4iKC72/2IrXQ++FeWFww/PEerhVXjYS9F
 gps/xdFZaaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZm7mWQAKCRDBN2bmhouD
 13DLD/9rH6dQNL9jR/EbdncCtbVy7XfBgF23WzTSQ+Zetujhw6InK0iBU9oEm1RSW3H741evTzS
 1a/HpapRRfre/jtZ28lyZFE5wDJtLVowZIvWiV2jPC7wUUKnfnGG6xy4y+UO8W5ajNybtQ541QU
 yot4HM7h7n+P3OEtjlAu/pcnQTY04MxIgmVemOiNdK5wVaachnub0WN1lw7kq89xWlOE8fu3uGF
 tnpdejWgoKJJmv7sGMTWEAZQc8OHoTyKB7yx1oohIa7Cs6hJ8sbOkke3QMD5t3NWu73TKtdH5Nb
 859EmTDIORS+lqwHissSo564KiYjXD9R8rP9RbHlnm8z6Ei9M9c9PjRGCumfhcwUeAnl4RMUmyG
 2KVhL94LusXQxhLgF7VzRrTd0kWeET5MXGiMPNXOSGONX7hLTF325XYNnwXD422YRnFsz5jeZ3E
 sYlIHRRhBcSjhWfbP0Qp4HBS26bwIjW0poIo71YXoa1SNEwQoz11kT0lUmeECJlvrQaemHs6gcc
 QaTo6mmP7lI/Zt3UkwBNGkzXz9kdIlb71FNORzwYJgARNszOWJSOCq1bHLiwfjR4gYkqiOUUphs
 9BR9xpFHp42gZ2DHz2Ura9j0DlxBEcJ5gszm3JLaES0vrHheDY/DuIzOhANOqbiCgpIg5vV4zYw
 5vzsTOP0J6u1U5Q==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Hi,

Dependency
==========
Rebased on Lee's MFD tree, because dependency is there already:
https://lore.kernel.org/all/171828959006.2643902.8308227314531523435.b4-ty@kernel.org/

Merging
=======
Preferrably everything via MFD tree (file/context dependencies).

Changes in v2:
===================
- Add acks
- lgm-syscon: add ranges to binding and example
- syscon.yaml: add big select with all compatibles for older dtschema
- Link to v1: https://lore.kernel.org/r/20240519-dt-bindings-mfd-syscon-split-v1-0-aaf996e2313a@linaro.org

Description/problem
===================
Simple syscon nodes can be documented in common syscon.yaml, however
devices with simple-mfd compatible, thus some children, should have
their own schema listing these children.  Such listing makes the binding
specific, allows better validation (so the incorrect child would not
appear in the simple-mfd node) and actually enforces repeated rule for
simple-mfd devices:

  "simple-mfd" is only for simple devices, where the children do not
  depend on the parent.

Currently the syscon+simple-mfd binding is quite broad and allows
any child or property, thus above rule cannot be enforced.

Solution
========
1. Split the syscon.yaml binding into common syscon properties, used
   potentially by many bindings, and only simple syscon devices (NO
   simple-mfd!).
2. Move some known simple-mfd bindings from syscon.yaml to dedicated
   files.

This patchset might introduce new dtbs_check warnings for devices having
simple-mfd and being part of syscon.yaml previously. I fixed some of
them, but probably not all.

Best regards,
Krzysztof

To: Lee Jones <lee@kernel.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Lars Povlsen <lars.povlsen@microchip.com>
To: Steen Hegelund <Steen.Hegelund@microchip.com>
To: Daniel Machon <daniel.machon@microchip.com>
To: UNGLinuxDriver@microchip.com
To: Nishanth Menon <nm@ti.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org

---
Krzysztof Kozlowski (7):
      dt-bindings: mfd: syscon: Drop hwlocks
      dt-bindings: soc: sprd: sc9863a-glbregs: Document SC9863A syscon
      dt-bindings: soc: intel: lgm-syscon: Move to dedicated schema
      dt-bindings: soc: microchip: sparx5-cpu-syscon: Move to dedicated schema
      dt-bindings: soc: ti: am654-serdes-ctrl: Move to dedicated schema
      dt-bindings: mfd: syscon: Split and enforce documenting MFD children
      dt-bindings: mfd: syscon: Add APM poweroff mailbox

 .../devicetree/bindings/mfd/syscon-common.yaml     |  72 +++++
 Documentation/devicetree/bindings/mfd/syscon.yaml  | 306 ++++++++++++---------
 .../bindings/soc/intel/intel,lgm-syscon.yaml       |  56 ++++
 .../soc/microchip/microchip,sparx5-cpu-syscon.yaml |  49 ++++
 .../bindings/soc/sprd/sprd,sc9863a-glbregs.yaml    |  55 ++++
 .../bindings/soc/ti/ti,am654-serdes-ctrl.yaml      |  42 +++
 6 files changed, 457 insertions(+), 123 deletions(-)
---
base-commit: fe6ba540b2ce777eb4f59991c3ef20ad8a319a1a
change-id: 20240517-dt-bindings-mfd-syscon-split-37e23996523d

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>



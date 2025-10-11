Return-Path: <devicetree+bounces-225548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1476DBCEE37
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 03:48:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D1FA189F4F7
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 01:49:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F34DE7260D;
	Sat, 11 Oct 2025 01:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dKCLLZ/U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6A6323E
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 01:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760147315; cv=none; b=j4xgjRkE0IVxhkarkS+ycHm94xfkn/CQsuby247KMuyhewRFkv0jvWccIfsnuhu78drEc2lrORls9S4/+xg28OFfRKkR0G+s47f1QOzcwqP0wN8XvT7e7uqGyef1foK6oskwnkmVCxtnw9CbNbgvOXzugTX+lB0sXguKtus88dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760147315; c=relaxed/simple;
	bh=sHjX7E/+ZZPtjLeTkqhQZWbJPxrtcGPQ2098JqzoOO4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rL4Ru6ZZSG2+XRoyOkUKd5D279t9IAPP3b0FBx293QmCaoglgE13XbZGqJjyXlsfJftAZ07Zu/NIiqM7D18nVfcNDoym8HQeHBIgX5ah2MgFpnIMCUcvuSkGxr34pLaZ+yjXLnAHu5QbZgexWLXZghv7h1txBtLc5F6AH0+6Esw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dKCLLZ/U; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-78f15d5846dso35956816d6.0
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 18:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760147313; x=1760752113; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h/W2Xx3VDAhi2ly1ngkxo8tYf8fz/VcaD9wHZnrx7SU=;
        b=dKCLLZ/UamcCCax0FLW8z9+8hZWHxZ8KfWuoauxdn12KHdaSBScLpZKjwu40SV7Ya5
         Z0NIaTI5O7ZvXnHGJmRdUDK6z+mAL59tWaP4lalwZF7p4tbeb70O1q2ZUo05GkN+1qiQ
         Bs6WBp63p6yoULl0T454x6/NkZ60OV6tx1jSybEN165ytVKWwzjt8KLEWhN1wl33lzdd
         DWxqD0SOZutfd89KyUCV0CV1W/7uJZ4bhSuy5RrgD+Gwm8fCwZF1y7/kBMbP4FI5Ymc3
         YW3AL5HAXCUWGxwiBKq4HOBwr8fjibsz5UfB1g8GgU6aB2G1N4XpBjQXxKOqpI6vi02i
         L0SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760147313; x=1760752113;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h/W2Xx3VDAhi2ly1ngkxo8tYf8fz/VcaD9wHZnrx7SU=;
        b=CLxBO9YxcisXO0zANDGHELSVZKHgucA3+0oyhVMSbugy6SAYUGHsgHzy1bbLHaA2Fl
         S9qO+XcuPRM6E6i+mD6Bq6ArT+epqaGX/jHKpwyxopGWZ1AilxuWXlKpXjrrmPl/e01C
         UwgwTHrOyxLjjypigtNMpjKsU9LhqzlcFMmYYUidS4dWRND9DE07vogIJGo4rwBwSfdL
         vVejat8SvfZULfT1XIES7y78EbxIRdeJxkHcIhFs27COTwLUidRinriiyTf0pjih/QRP
         qoGsbtpYF0OoQBdrH3AbndSZtOWXn5x9iqwAKKaglXuJ0R8zt+HNGIWNmrLLZFw3styn
         C6Ow==
X-Forwarded-Encrypted: i=1; AJvYcCXcySb/quJ9uxCnuxGsjNPwhW3kYneFmzAXN3PfKz9/1zu3zpxJOYqCGrKhiuEO0mCd6hkxFEqLOJII@vger.kernel.org
X-Gm-Message-State: AOJu0YyDZGPCW0VgW//hQorQuxDNW9B/m5kAAGSccnT3fPpS+9TkNGbj
	zpbei/gQ4NUWqm1My/vcUAz9CRJ4lvNN750Ef/oV71kOCnBVdtahXyCz
X-Gm-Gg: ASbGncudh9MyA/shsTFb55wmCYBzVTTa/64WKuWwhwvprJlO/obcCKfK86OZuWSmyBC
	t9j+oLgwDvpT80MDcjrnn0RFVzA21ySFDKZVJrH47XyZSiVYyajnRlv1tBLxETqQrG80pmaSHLG
	dIjuVsVp4O77UyYLtioPZOQBGJK1oHm3wvY27HahTaHxzdlOBRsLXBDB2qeTSZiwLU6U/46Ek/T
	Ds3yUT9cg3vbItDYTaG7lW66LUQ2LTab4av3YZior1S76cgE9g2JHiBq8qbdB5STCKwNT+omGF/
	Wj3I889sU2mHnO9GlCr+1tS8boycV5WHLajgExNmD3U8AYQNYRRi61UmtAThITPRZrrYfUG4hsf
	dPf0f7phaAzh5uhFK05MXWIWDJSsdGHPKEX4j3756cUdnXR1MPpbh47p0XfKQX+TtK8SrCVu/3T
	NiA0s6h9U6Ww==
X-Google-Smtp-Source: AGHT+IFBkBNnpT/JUcUbYt+Zy+CvYduIlQhXQKlUiQpAEV8m4hje8Yu33lh54bsqnR3UkiS8jt5MJg==
X-Received: by 2002:a05:6214:2485:b0:792:61c0:beb0 with SMTP id 6a1803df08f44-87b2ef71746mr206771416d6.67.1760147313167;
        Fri, 10 Oct 2025 18:48:33 -0700 (PDT)
Received: from sleek (d-23-244-200-70.nh.cpe.atlanticbb.net. [23.244.200.70])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87bc3574e71sm25978806d6.36.2025.10.10.18.48.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 18:48:32 -0700 (PDT)
From: Joshua Milas <josh.milas@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	unicorn_wang@outlook.com,
	inochiama@gmail.com,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	alexander.sverdlin@gmail.com,
	rabenda.cn@gmail.com,
	thomas.bonnefille@bootlin.com,
	chao.wei@sophgo.com,
	liujingqi@lanxincomputing.com
Cc: josh.milas@gmail.com,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-riscv@lists.infradead.org
Subject: [PATCH 0/3] Add initial Milk-V Duo S board support
Date: Fri, 10 Oct 2025 21:48:08 -0400
Message-ID: <20251011014811.28521-1-josh.milas@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds an initial device tree for the Milk-V Duo S board
with support for reading from the SD card and network over
ethernet. This is continued work from Michael Opdenacker's
v6 series [1] on the ARM64 and RISCV side. It has been tested
with both ARM64 and RISCV64.

---

v2
- Made new entry in docs to avoid DTC check error
- "Milk-V DuoS" -> "Milk-V Duo S"
- Sorting of aliases
- Added uart*, emmc, mdio, gmac0, i2c*, spi*, dmac, saradc
  to device tree matching what is available on the pinout [2]
  and available in the device tree includes
- Removal of 'no-mmc' and 'no-sdio' for sdhci0 as it works
  without
- Added riscv device tree

Link: https://lore.kernel.org/linux-riscv/20240421055710.143617-1-michael.opdenacker@bootlin.com/ [1]
Link: https://milkv.io/duo-s/duos-pinout.webp [2]

Joshua Milas (3):
  dt-bindings: soc: sophgo: add Milk-V Duo S board compatibles
  arm64: dts: sophgo: add initial Milk-V Duo S board support
  riscv64: dts: sophgo: add initial Milk-V Duo S board support

 .../bindings/soc/sophgo/sophgo.yaml           |   5 +
 arch/arm64/boot/dts/sophgo/Makefile           |   1 +
 .../boot/dts/sophgo/sg2000-milkv-duo-s.dts    | 110 ++++++++++++++++++
 arch/riscv/boot/dts/sophgo/Makefile           |   1 +
 .../boot/dts/sophgo/cv1812h-milkv-duo-s.dts   | 110 ++++++++++++++++++
 5 files changed, 227 insertions(+)
 create mode 100644 arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts
 create mode 100644 arch/riscv/boot/dts/sophgo/cv1812h-milkv-duo-s.dts


base-commit: 0251a1deaec78252cb311fc8305d3670bc5eee0e
-- 
2.51.0



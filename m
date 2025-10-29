Return-Path: <devicetree+bounces-232398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C940C177D3
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 01:12:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 335BF18839EF
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 00:12:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A59CE1DE4F6;
	Wed, 29 Oct 2025 00:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iIn9HuNl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1811386C9
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 00:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761696695; cv=none; b=VCxYx44UK8P/gsXZpG9GMWK1XN2JCSX9NoAK0angbrAX+hcraUXjsQN4VK5xTMfie462FN5up0nKiVXjTUGZJ0gs99FbMwxq/kiw6WSRqYvN1j3k1GigyxAuqvY92GdxrusKNORuWV9JaH3jRq8qjHwjRZeyrzW8TmySNxMCXNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761696695; c=relaxed/simple;
	bh=7hd5coJwbQGsAi8TU/A+6KQnWACya3DK0167CVMNCgw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lMYpb3G8OO1kqybwigsNYz9eNiYU2FAWPIGotjIsztYQmG4rZN3Zd5m+Ny+reo9h6WeMZioadk6NUXKqyVIX2er8YNjcPAo4Xia2qWBNpcOXn1ieZcZIUBOwzxBYai69/B6yp8vMW2ladJrgJLvEdit2wgYniaAR5q03pWsn+o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iIn9HuNl; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-81fdd5d7b59so63179056d6.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 17:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761696693; x=1762301493; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QCyTfqDCHwiXjxLeCItWxd8e7Ei2d6bvYTfbpnxDRG0=;
        b=iIn9HuNl9d82KpDtYo+ECvY2j+zG9J7KiHiLQj8xivHigEd6BTZWQU2dH8TnQaqkfA
         Mmayenohi9QtAe6g64qD6DsqEZdJ102n6SA8LZ+DdfK6eOZkZcxy2Al2TTq6qQ+hhTfe
         R9hFKWqVCWKF54T0TEs4aSrpPCsaRjI8Ije/yFUnZs/BcUEPehPEwFwxu1OhAdtA29bQ
         YFZmoLzfSzm6m0nIPERXLC1D3Ozsm9DyU7UGt2d/TtYuM5GlftnZuUr4RBnE13IF29cH
         d3Mwpw4rjPbLL+Gqd5KHsHUKMzXyrzDH14B8jgZkSyDzbAZMvsxrkoPaS7F9nma1rDps
         M9Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761696693; x=1762301493;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QCyTfqDCHwiXjxLeCItWxd8e7Ei2d6bvYTfbpnxDRG0=;
        b=ctzzNezjIpBDTSIiTSROwkyXoKLOk8vllJ/KGaPWqOMY/097XuQej5T+z3AX6nu8CN
         8xOaJw8xah9DYitHksCD3q4/lw8hno60wR4GqStXcFNaqcZW01yQA5Wtk/d8vxP1h+7g
         XQkdznk3/HTYMK+r2p9OQn8JycbTXBRKox2mqT+OfCjhAnLFoxNTiDLKDPDH469h1GBh
         KqYSiRcORiKULh3/lNREkUwTIiIVfmScLozOKUdrn/ppcI/LHd7QpB2pubdvLzkVugZD
         B9HolFQwqJL9qjG0qtJQmje90oZzbnhNWr37W8uAmtZs+8kWESh2lRE2PUrySUJgCa9N
         ue+w==
X-Forwarded-Encrypted: i=1; AJvYcCWghqStmRDwcjGyyIgehIb+64xU44Mf2bksjm4YM9q7F+r/5hSZ3VaNdQELpddLbPxZ+RW+ESKHs4WJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzY3kamd93jvOlrdQf9DbLVEwZjFm7RBcXuOqzenwqAFm76d1kA
	hVHXLahMRBBGL47qOQ7AQqykrbwvx9VXZlY8XwS+7ju7/WyYS+VSWKC2
X-Gm-Gg: ASbGncvQczlgCJZN6ha9lNcYZTWQ4U/1ORS1cKycW1sokbLTPnPjgNaH9TI53v+Vbj3
	ffFepW5Lh0ejYJHSS5CNABnUHXDmlnZqMpsi32t6lzY/jmprRNBjizxTQE5j2HP2Q6zxmbHhzPW
	a1RSK62G/Ij0OlJNNyNzzkD5R0xpGyEjJgXRqzDRM+wlyPOTXMUjUSX07xihfYO7opvHu6oqtrD
	FA0yh3OOXL8i4wdrQA5PR6ll2ibihX5KDDxnH1rsJk9pii/nZO3QWdXaZMS8MwXDHTwOuXDdphH
	WljyIXpUEMfVhv9y2rsVssoRBZq8TgeYCUptQJuB27gYLHzNoDmN6pZ/28NvtJYAbIIwfL3Gw06
	G3WfJMe44bNvA9sOy8RDabe7ADy4pIFGjQIrRg1CqHWRBNsOMOktzPmdg4V/6Z81w/b/OzqKCuJ
	3TpT7YbmtZCcA/XhytppimHeTZn1s+kjvfkw==
X-Google-Smtp-Source: AGHT+IFTRnQ6IrBjTxaybv1yiOJZzNf1V38jNNEKvU4+MUeC78yIhbKYR0O/Jah2TP3guOgTGOtWEw==
X-Received: by 2002:a05:6214:242f:b0:87d:f2e9:488 with SMTP id 6a1803df08f44-88009acdd94mr12733766d6.11.1761696692917;
        Tue, 28 Oct 2025 17:11:32 -0700 (PDT)
Received: from sleek (d-23-244-200-70.nh.cpe.atlanticbb.net. [23.244.200.70])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87fc48dee2esm87255906d6.23.2025.10.28.17.11.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 17:11:32 -0700 (PDT)
From: Joshua Milas <josh.milas@gmail.com>
To: tglx@linutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	unicorn_wang@outlook.com,
	inochiama@gmail.com,
	paul.walmsley@sifive.com,
	samuel.holland@sifive.com,
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
Subject: [PATCH v3 0/5] Add initial Milk-V Duo S board support
Date: Tue, 28 Oct 2025 20:10:47 -0400
Message-ID: <20251029001052.36774-1-josh.milas@gmail.com>
X-Mailer: git-send-email 2.51.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds an initial device tree for the Milk-V Duo S board
with support for reading from the SD card and network over
Ethernet. This is continued work from Michael Opdenacker's
v6 series [1] on the ARM64 and RISCV side. It has been
tested with ARM64 and RISCV64 to boot from an SD card, have
networking, and read I2C slave devices over i2c4.

v3
- Added sg2000 interrupt controller and timer to documentation
- Added sg2000.dtsi for RISCV and moved DTS over to use it
- remove devices from DTS's to match what is available in the
  default pinmux config. spi0-2, i2c0-3, uart1-4
- Added i2c4 and spi3 aliases

v2: http
s://lore.kernel.org/sophgo/20251011014811.28521-1-josh.milas@gmail.com/
- Made new entry in docs to avoid DTC error
- "Milk-V DuoS" -> "Milk-V Duo S"
- Sorting of aliases
- Added uart*, emmc, mdio, gmac0, i2c*, spi*, dmac, saradc
  to device tree matching what is available on the pinout [2]
- Added riscv device tree

v1: https://lore.kernel.org/sophgo/20250927173619.89768-1-josh.milas@gmail.com/

Link: https://lore.kernel.org/linux-riscv/20240421055710.143617-1-michael.opdenacker@bootlin.com/ [1]
Link: https://milkv.io/duo-s/duos-pinout.webp [2]

Joshua Milas (5):
  dt-bindings: soc: sophgo: add Milk-V Duo S board compatibles
  arm64: dts: sophgo: add initial Milk-V Duo S board support
  dt-bindings: soc: sophgo: add sg2000 plic and clint documentation
  riscv64: dts: sophgo: add SG2000 dtsi
  riscv64: dts: sophgo: add initial Milk-V Duo S board support

 .../sifive,plic-1.0.0.yaml                    |  1 +
 .../bindings/soc/sophgo/sophgo.yaml           |  4 +
 .../bindings/timer/sifive,clint.yaml          |  1 +
 arch/arm64/boot/dts/sophgo/Makefile           |  1 +
 .../boot/dts/sophgo/sg2000-milkv-duo-s.dts    | 80 +++++++++++++++++++
 arch/riscv/boot/dts/sophgo/Makefile           |  1 +
 .../boot/dts/sophgo/sg2000-milkv-duo-s.dts    | 80 +++++++++++++++++++
 arch/riscv/boot/dts/sophgo/sg2000.dtsi        | 53 ++++++++++++
 8 files changed, 221 insertions(+)
 create mode 100644 arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts
 create mode 100644 arch/riscv/boot/dts/sophgo/sg2000-milkv-duo-s.dts
 create mode 100644 arch/riscv/boot/dts/sophgo/sg2000.dtsi


base-commit: 0251a1deaec78252cb311fc8305d3670bc5eee0e
-- 
2.51.1



Return-Path: <devicetree+bounces-228685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E086BBEFFE2
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 10:39:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 745D9189A425
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 08:39:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 209D72EB866;
	Mon, 20 Oct 2025 08:39:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="M3+XLvL7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC8F15733E
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 08:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760949556; cv=none; b=uDgZyFGxkkWBQUaflbV3DFpceAij4PwihMRs1mkqHHnD2nrZeytY8suDLEWrIfY/Bz4tj1TMaiaWnK5pXH89vBC5kxAkTX6rN33N4ipqxaOC3c996pKgCPp9xNMi4NeWry/DqMZ67NCw2pzt6qlXzrysKpq4nH7XUn9r1QrWO3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760949556; c=relaxed/simple;
	bh=Ln1cpTJYDMfYJSK2ETGhBkeC8n5lFPLWaYaKEejfbjg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Lwh0GMisKe7tn7ZTIxCuLpgXwfk5LY7sjdQzCZG1haW8ZxwlRPBqSvqa79PhdOm/LaXbwnB/4hMgC7tCftWQ/szKSKRWOn3Z1MDONEwIPVQ8BgEKpDJodAx78RZqKAAcclJt3G68YTCF2zaSR7DjXRPcDVN2Mmv3T03WXOpeIYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=M3+XLvL7; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-781db5068b8so3121592b3a.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 01:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760949553; x=1761554353; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lC0+koW9LqBuD2DjLYQLY3ByhReVTR9v1Ofuem5KTnM=;
        b=M3+XLvL7V8KX9SrVY5ChmjC+lrZgcdH1JjukLvndceOTSBPwnQxT2ndzWjRDOqqq7K
         wU7bISEkycH12Q6tXx6WJ4GWA3w7vjeZAobYx09usHMVeldkwklJwowm14EJmvG8GWX7
         VvEKIlYOAthb5lub1jMI29LHvPEtXGKJAy6Z/HaFT3eu5K79kYeiWu4P5vp88/e7LPfZ
         YtaIaFqQWe5HEU1SC5n1os03HtFXwlRy69dFv5ITc5kwmvk6uUMjz6q3Bi0dfP+LOBii
         ESjrEGZMLHhiRr5Cm5gEoxNqn+wnd0eU4Jq5cyi3az/6kBmJNICgjbzJvX5kZS3hucsl
         Cr5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760949553; x=1761554353;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lC0+koW9LqBuD2DjLYQLY3ByhReVTR9v1Ofuem5KTnM=;
        b=N+fI+0Wlvbehi54kHB5KCm/Tlgj7+q/lgW+0eu/08dHOcWidKFe3OWh5DAXGQE683S
         xJHaaNlXapAq4KVs1GcxHx0UC61GQSyuQUfv2390zmuC5tnaBjKPo09cKoRPBsDG9f4B
         22T9Z0jWBrV5Eq/YbW480KPzVuyyVYxCYrnfpfrzoInynibL4UFDTgkrDd2SDwPR9gMu
         VShZXgU2aYcccjRMEZ0NrQXD+LUOSTyhV+wgbSCCwL6fCKkpGTbVXB8ZTC5WFQh9DFa0
         C8poi1jA6wD1VvnGp8l+6QF3emtzwESJGfI3s4zZfqoFy/25d1iW/6azERlRhuCuNhN5
         Ky9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXnHRvG4HvrKpK4/R0Jn1y8MTE1EJbo/XqBcT3U655KkCTF8b02iZ6nbrWYzVd7lN1X0rw4ML+ik2JN@vger.kernel.org
X-Gm-Message-State: AOJu0YxEp1dxXHuPhRHoo7GlpOS+kz5WLwfgYQq+80Z4GhDhR5k4JIXV
	aCbu2XIJbbyb1d5LPHcRhJkUI3z4pYVCToj6j6SJwZO5C4ju577shHgZ
X-Gm-Gg: ASbGnctm69ic4h3HInk/fmEua9jGmcNWy9RNymAC255GBPxPWC21zm67/hAxMWnIQTH
	nJpvnI43nJXCLTtjmke8DF7ZR+auexD4u6vTLsKlTVsWknKM4kpAgVMi1yDtfx4LvrNVg5fMVnG
	/brAN1u63yL8im1Q/1WKCjC51KisN0OI/3JkX0mAI36ZuIsZYqfo7rpVRbxCI/nyesdmBbS6Dv7
	XDuA6unl2l30yQeT1CbdfqpfGEgv5m4TodQanYSQfgpgH7rjaAe9am3GOQEOKF8JACraqFHBF+N
	S7A8JB6YlxMnWTXG42mK2VNl26GR/pXBychE1GouG2JfwI50GyVqvYTAktaE7DdsqEt3l7F1HAo
	ENePxh6x7jhGwYRh3PVkgNzYY7oVYqb6PfUoqSjeRxTKTchUtaOHNs2ucGa3Yjrtdoqg1tXwS8a
	NX8Tz21BIsP5JaTv4R
X-Google-Smtp-Source: AGHT+IFfolMgNTgrjg6QCUPSwye2gWTgy0cB2CyUntFytqmxf6KYJJHGK5kXGlssp1Efpt+QdGtvtQ==
X-Received: by 2002:a05:6a20:9144:b0:2f4:f041:a065 with SMTP id adf61e73a8af0-334a86103e8mr16827774637.38.1760949552820;
        Mon, 20 Oct 2025 01:39:12 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6a76b5d0b4sm7062386a12.29.2025.10.20.01.39.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 01:39:12 -0700 (PDT)
From: Longbin Li <looong.bin@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
	Ze Huang <huangze@whut.edu.cn>
Cc: Longbin Li <looong.bin@gmail.com>,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v2 0/3] riscv: sophgo: add top syscon device for cv18xx
Date: Mon, 20 Oct 2025 16:38:30 +0800
Message-ID: <20251020083838.67522-1-looong.bin@gmail.com>
X-Mailer: git-send-email 2.51.1.dirty
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add top syscon device bindings related DTS change for CV1800.

---

Changes in v2:

  - Add ranges property.
  - Use proper regex in patternProperties.
  - Add complete example including child nodes.

Changes in v1:

  - https://lore.kernel.org/all/20251012022555.6240-1-looong.bin@gmail.com/

Changed by RFC:

  - https://lore.kernel.org/all/20250611082452.1218817-1-inochiama@gmail.com/
---

Longbin Li (3):
  dt-bindings: soc: sophgo: add TOP syscon for CV18XX/SG200X series SoC
  riscv: dts: sophgo: Add syscon node for cv18xx
  riscv: dts: sophgo: Add USB support for cv18xx

 .../soc/sophgo/sophgo,cv1800b-top-syscon.yaml | 81 +++++++++++++++++++
 .../boot/dts/sophgo/cv1800b-milkv-duo.dts     |  5 ++
 arch/riscv/boot/dts/sophgo/cv180x.dtsi        | 42 ++++++++++
 .../boot/dts/sophgo/cv1812h-huashan-pi.dts    |  5 ++
 .../dts/sophgo/sg2002-licheerv-nano-b.dts     |  5 ++
 5 files changed, 138 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/sophgo/sophgo,cv1800b-top-syscon.yaml

--
2.51.0


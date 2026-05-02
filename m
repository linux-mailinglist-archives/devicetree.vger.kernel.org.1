Return-Path: <devicetree+bounces-292269-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDgEGV/O9WnjPAIAu9opvQ
	(envelope-from <devicetree+bounces-292269-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 02 May 2026 12:13:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8773F4B1A22
	for <lists+devicetree@lfdr.de>; Sat, 02 May 2026 12:13:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B81CB3013D72
	for <lists+devicetree@lfdr.de>; Sat,  2 May 2026 10:13:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4A26325491;
	Sat,  2 May 2026 10:13:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h1ldEgeN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C268B322522
	for <devicetree@vger.kernel.org>; Sat,  2 May 2026 10:13:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777716825; cv=none; b=RtCyUCkWQ+97HqYS8EXfRw6smYYfF9dDRzTd4xujrwG/4oc64qILzUDYSKEaPCXrl8BQ/MOp0yM2cqmM3UQLHBvKAPWgpt+KSUGrDtHPBDhHOl6p6t38aHkdW+SB+D28B6cGEUg87VMBQMdpUEE2xQDUb7AHv+YqFYu72hQmvt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777716825; c=relaxed/simple;
	bh=87vMfmom6x66nDjtyewbi4CA0Cs/yF1ou1YgZ/Fl0ew=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=W2HWCH5sV40kmE+Ka5qtAo5yDEBQpxav47c+HZAkPtESho/s297kdTHma0vu62z9EZp1B7kAdYb6kgd3LoP5dupy/HlIgSHTYIwWo//RTNxWbEgv0L/fUfWeQ+5IKr/lXU1LHsNASB0NwlZUAvH80P70t3icHUDeZrI8vsq75Tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h1ldEgeN; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-835399c11e0so31985b3a.0
        for <devicetree@vger.kernel.org>; Sat, 02 May 2026 03:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777716822; x=1778321622; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SJKp1v+dhpmw+gdo81yg2J+fP8PT0lbJ9HKJa2rNBWI=;
        b=h1ldEgeN5OYFqwIgs+geneX71XxFLlLqzuYDbwx1Gz3odhiUrP4yuOIvPi7gzTzRBm
         O4G7JJPcH2rL79K593vHJPDARrTr4C8oH0Z3Dz7wCHASHqahOqjzO3RNspAMYFj+Ru9h
         TDfZreOe1C05nHwBQKPmZuXpFr80mSTPNaU5FOJOWP9T8eGBo3orauuyS7y0w+VLfrOV
         kWhjlcBMMhRC/7dmlPq6ANnsZq9J2qdtNW3+nAs8ejTev7wUHXLBXEU738YYofikqJqJ
         /SuYfpb5JjEKhKCNu4LWYPC00rD18jBqTosaBx4a/bv1et/DG1EodYQCmIh5uHmvuv4D
         A7Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777716822; x=1778321622;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SJKp1v+dhpmw+gdo81yg2J+fP8PT0lbJ9HKJa2rNBWI=;
        b=Yl/fpwL4hUE+uppA1AIULXPDEEuKjeUGLju0BpBkn6WGjQtx3e2MAC7MOjiy4pDB/4
         rXF7uSc0S+Is/hrIuK1s4CYiGW0dzNnt3cRi2iWb3JHQBvbjxuR26bEZTyFF9I5vWzkn
         vdXUdPr0nKyqQ03q+3aKzUd5BNrYnUfYfIJZfuFSXmJFBzaD0VuCF1BidQafUNtngLCB
         CAGEwKpfzKRcdmL+fPC43T83XjnNSARKooe+hGeg6SbSZFWoU8doEka2PsSph5UdQ1h7
         G4dI0k/uSArNIfuRvpyNvFysXZ7sSxn+M2bBUU9ch27M1apeFvrBvnA+D9VwuILrzq5C
         31/g==
X-Forwarded-Encrypted: i=1; AFNElJ8F9kglb/B9NbK5AQGQCesEXEe7mbEWnyrCUa+9BtdHNyiDU7egPusP+GofeChFmRAr2vHyLBx8mI1A@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+GTQyw31P7mGG5tP4qkTvYkDZaDNRAzRzFsj7fyt5G1H2rv3Z
	pIyFIODdowt936OSpcmeqb0fUI96IzHLhvwBDXxoo3fe0M98l0EyS6n7
X-Gm-Gg: AeBDieuEE2dezEC1RaZldmj6HcojreG+5n4bB9/esL1rN6Tyixxz7exRA4jxpzd+eG0
	FkQ1GkAgCdvdzQyddeCgRqFwQiWHuNcuGdXE6siexL95Dc1Z9GzsS4cYkpCBcxmKaDvAbkGcARA
	gZUiEfwig/9NvU7wGJWQeuxoTt+2qJqgEdEtbwzuGfsFfQzmcP+rYIvSEo49sXGC1keJttGt7aa
	vNnbrvXvjGNTSq4S7JI3huMjXjfTj9X1YlFDwpmNPhMkrHTjdzb6+EohQKoj87C3C+LtiwXs0Ge
	ocSImpGF7iJ5WNPB1QM9Z/KkyJkP6X3G1aE1hJOD+awm8Pw/+dDv7aCl/Lzgxpn/WSnsVIqWilS
	UnQRVoGYIZ/FBmK+WpVLg3bYHBkqEngQB5yixOVX7jMsrMd4g2iptol/p0Aj817oMKtdCFTPb1R
	72XppGtPhl389eD4g9SuLBT1H60OJ+sZp8uQ==
X-Received: by 2002:a05:6a00:1405:b0:82c:dd31:b84a with SMTP id d2e1a72fcca58-8352d28c7d3mr2337323b3a.43.1777716821723;
        Sat, 02 May 2026 03:13:41 -0700 (PDT)
Received: from localhost ([2001:19f0:8001:1b2d:5400:5ff:fefa:a95d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-835158bc863sm4946839b3a.26.2026.05.02.03.13.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 May 2026 03:13:41 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Inochi Amaoto <inochiama@gmail.com>,
	Alex Elder <elder@riscstar.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Cc: linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH 0/5] riscv: spacemit: Add PCIe RC controller support for K3
Date: Sat,  2 May 2026 18:13:13 +0800
Message-ID: <20260502101319.2364052-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 8773F4B1A22
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-292269-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,google.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,riscstar.com,synopsys.com];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,gentoo.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

The PCIe controller on Spacemit K3 is almost a standard Synopsys
Designware PCIe IP with extra control and external MSI controller
(IMSIC).

Add binding and driver support for PCIe RC controller support on K3.

Inochi Amaoto (5):
  PCI: spacemit-k1: Add device data support
  PCI: spacemit-k1: Add multiple phy handles support
  dt-bindings: PCI: snps,dw-pcie: Add msi-parent for msi handle check
  dt-bindings: pci: spacemit: Introduce Spacemit K3 PCIe host controller
  PCI: spacemit-k1: Add Spacemit K3 PCIe host controller support

 .../devicetree/bindings/pci/snps,dw-pcie.yaml |   7 +-
 .../bindings/pci/spacemit,k3-pcie-host.yaml   | 142 +++++++++
 drivers/pci/controller/dwc/pcie-spacemit-k1.c | 289 +++++++++++++++++-
 3 files changed, 428 insertions(+), 10 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/spacemit,k3-pcie-host.yaml

--
2.54.0



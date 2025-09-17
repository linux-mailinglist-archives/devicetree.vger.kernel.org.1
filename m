Return-Path: <devicetree+bounces-218331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBB3B7E6F8
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:48:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A7C4432698C
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 10:20:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68210305E10;
	Wed, 17 Sep 2025 10:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CD3gcOEv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E55285C95
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 10:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758104314; cv=none; b=OM3jCwuHBWxcsJ5Y3bJOg80LDwSMFaA87zqST0E4rYHmowvDdAV7R/zOX/P+R0QL31HRcWAFSWqO/fbmnip0P9o1dqtZ5imXNUomO/ULTymbsycbw+9uzS67yJpN5gpRwGCkieQcO9w/OdQGezzbhfqqiyxqxT+suw85J88BMGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758104314; c=relaxed/simple;
	bh=5/1gkiTNtLbu/XmxGojO/4FdNXtINVTfkfsGsdU/dPQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YOtoXkaBi6f/AsMJQRZYWXPhYbOcwAft+meCwD5UYF8zxW2CXBmQqmjtUI4DuURbNlkH6ga8Qk3HB0XRxsqhOyxtePfsQFEC14y/du6MHcz+7Zhr5geuOZqHB1ZkgZUWulidc6JxhTLyHNW0SG9rmBEux74g9CIIZamLW4MmzhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CD3gcOEv; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2570bf605b1so64888935ad.2
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 03:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758104312; x=1758709112; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jZgFdo56U5Rjwn/0fXd6egZkLqMBUY9dg2lSu0VhJvc=;
        b=CD3gcOEvcdOkJmuChNFoBgTJ+gnosQ2aQu2b3+CdKBSS/IdDYIYf4oKjtAuRJP6ruh
         6OpHdkVCGMUdRabwGZDsEt4zHYb8i9BvV0zxhVkpjdlSbiYYzg7XxUszFDG/i+w7lKXz
         DGupQlDQ3r3wLGTMdmusMUx0xAXMQtvrLepPu6g45u4AT6T7NEIlYkUe8ppb0oiC+wgB
         9K1PO7ZU5xwthaA+ebtspAxf4Wm+K5r1xRgqyVhpe/OSa0iP5pFfLCon1pzq491HsxtR
         iNwbFOViN/Vis3a1a2iLfbN4UgkbrVnvVrXUSiSb3Y/qoe0+5ajr//oprvXf5m5UCTr2
         ilNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758104312; x=1758709112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jZgFdo56U5Rjwn/0fXd6egZkLqMBUY9dg2lSu0VhJvc=;
        b=sodp7Kgz1JGhT80LdCWMMAPPyWXc7NB8XepDphhtDeHGD1kdzbHSriYY8CYMXhPVV1
         Fsaj4MPSD4NVDDdwvWcVByCOfxVA7P/IWCIwiFsbhz4QfPHG6i1Se+AAqhx3JhNDQj+k
         l+FcWNo7mkmYinQ2FAqqRMj3BQjRW4PsiDgREhwaLUiGxwKzpMvW935b2KktvJi3gWbC
         0LLR6w/IEFuTpvmvbUBdH+S4Ei74//aM2KkddxbJOqe44t+GsQeDblC7xGfwQ/mvK3hP
         waAjAcYAyOBTAHlMSnBkRIxTt0oaif55ghDAGleQVUHoFvP+/zl3/Fv9Pn78IS8JUOdk
         Cjyg==
X-Forwarded-Encrypted: i=1; AJvYcCVdhQJ4T4T6o1V54eR2UDQMMTtvOdpSOY4gWmat9pd3bPd+v7/5eswfQhRI0f4wKdAz/WNEPu/MoL71@vger.kernel.org
X-Gm-Message-State: AOJu0YzN4VRlSqSBHM6pcRZOTg6pjN6yUhoD+Wy7e5VDd/ncrqftsaMk
	A9znAU6qgAy7dSW/97zYZeiVpvIa+hJLUjGDvN8typYkTnrf3tgw3mmT
X-Gm-Gg: ASbGncstbvk0V3Lsdix3Gb0IarUm7YdrNrR6lrdTtAsKtGQq2EzRhHBqg4snwRoFEYp
	2Ez+fJc1OZr0X5PgyTdFDJLTzRNJycXjaDfLNatvJmoG5faf3CGy/5zFe4CZp+0gRnFyoq0SrcX
	YjPfhL8mYdTxMx2Zkq3w1r8UFm2uaNtfz46z9k9+libos9CwTU0mQqIqVqBJr4W2A/NLTXRyOJ5
	ukd/fZAzvBYJyur4sBEQN9ckjs1wRf0/kIv5Y4aEpeZ2LMCAdhOkUoXJjgR5RwAp9Ehd1d6t71e
	aaMe8WnrBd2wRjTQGrhtmCqj81H7mNG5T0cwIUPGrBgYqzlvGpQRFLasT9907Sk3NmLVHdcNDgz
	Vxne5MnoRZlKvq7Bu5/L3f2LcIs9vQHLhUaIbloZ3xFVa/z19VNY2r/8oyhv+QEQqLQSCp5JRnl
	k647LjcOdYTCcgGgZLbs0+IWiddcs/iPz6OqBX
X-Google-Smtp-Source: AGHT+IF3QgCkXxslVB6+8cU4cYQ7hXjdu0fR318XHFqwWXVd5FRKAeNtm0+mTEJzK5nwiVQMB620Aw==
X-Received: by 2002:a17:903:3585:b0:264:1afd:82e6 with SMTP id d9443c01a7336-26813cfb4fbmr18125285ad.53.1758104312186;
        Wed, 17 Sep 2025 03:18:32 -0700 (PDT)
Received: from eric-eric0420.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-267f4d286aesm28588755ad.63.2025.09.17.03.18.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 03:18:31 -0700 (PDT)
From: Peter Yin <peteryin.openbmc@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: peteryin.openbmc@gmail.com
Subject: [PATCH v1 0/4] Revise Meta(Facebook) Harma BMC(AST2600)
Date: Wed, 17 Sep 2025 18:18:21 +0800
Message-ID: <20250917101828.2589069-1-peteryin.openbmc@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Summary:
Revise linux device tree entry related to Meta(Facebook) Harma
specific devices connected to BMC(AST2600) SoC.

follow-up: https://lore.kernel.org/all/3a65d568540e9ca43d3bfc24cfe5f72d2bb12b3b.camel@codeconstruct.com.au/

v1
  - Patch 0001 - add new line between the child nodes
  - Patch 0002 - use power-monitor instead of power-sensor
  - Patch 0003 - dd sq52206 power monitor device
  - Patch 0004 - dd retimer sgpio

Base: tags/v6.17-rc3-39-g07d9df80082b

Peter Yin (4):
  ARM: dts: aspeed: harma: add new line between the child nodes
  ARM: dts: aspeed: harma: use power-monitor instead of power-sensor
  ARM: dts: aspeed: harma: add sq52206 power monitor device
  ARM: dts: aspeed: harma: add retimer sgpio

 .../dts/aspeed/aspeed-bmc-facebook-harma.dts  | 59 +++++++++++--------
 1 file changed, 36 insertions(+), 23 deletions(-)

-- 
2.43.0



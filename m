Return-Path: <devicetree+bounces-65720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C3D8BFBAA
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 13:16:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 03AA8B22890
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 11:16:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A90AA823BF;
	Wed,  8 May 2024 11:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="VBSvWMAq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF3A81AB2
	for <devicetree@vger.kernel.org>; Wed,  8 May 2024 11:16:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715166972; cv=none; b=Tvn+yQnffFteCN0umLRDmMNCjDnBkvX0TsBrbcvcMQyIXs1Q5j2s8aHKiLAeC451nq4Yfoy1/iRZS4OJGbUcAAr6F9w7Nz1onW2cWj1G0Vv2vEKxviqZ43dgd3LoDSz/YGq3Nqof7XjUVxZh6lFGy9eJt+gHZbFArUZlSO0JqIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715166972; c=relaxed/simple;
	bh=n5syDHbWlKZFGlbFdFRj7DVmAEgeHOc88URkxEey/2Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mFTAkaYb3h5roXBjLve22ITPiW62LPkZ0SypHjlGjZcEDsN30SFsDTv3I0FqaJQ3pMWD5qs/gXCqND3W8orMAjMoUCEbgnUpDMOMYjQCFAcPw/TLjpfUbqYWqvKP7ngANoom6QROIOj3jgNep7XPHvtgZUkrOfTanX7WGFwdu/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=VBSvWMAq; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A6ADE4017A
	for <devicetree@vger.kernel.org>; Wed,  8 May 2024 11:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1715166967;
	bh=ttExS1UnS2n/6Qa/JbmhsWywiSSPxbOTQjuITk/gJkg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version;
	b=VBSvWMAqZNIczhVhmATL0ddvXieeexQtAVda9DDyaCwBiME+F1IBKO251J0cD0loS
	 obVIsTkqNg80UV5bX5ANvgoOyCPMrx5pfa42iCk/PmQPn5eVrVHz6TVMxgwkme9EQi
	 YoNwTXzOMrq27Supoyrt2q3ndEBFR2aL4VfniCgo7dKIIvYwxGoqYXQL3POKwbLcpi
	 Xk/DjE1VFxMb85vYqtB90oUqWkyMMokD7bAHfSOoeZKc18lXNBi54BrJVqVY8Uys6m
	 vlshjVID34G5yvOU1SmhJbnBKUsld7EJqKbmPCiRmoxldnF9MSEI1rxBISYchay8rv
	 IDTMsrVB/tIMQ==
Received: by mail-ed1-f69.google.com with SMTP id 4fb4d7f45d1cf-5732229087bso434769a12.0
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 04:16:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715166966; x=1715771766;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ttExS1UnS2n/6Qa/JbmhsWywiSSPxbOTQjuITk/gJkg=;
        b=biynryKiPdiIfg6TNR6R9Iru+oCXxIfIDsZ3yC4M3xU/a/SCkNvfCz0UwVJBPwQ9bV
         ottLbsV0UxfdBhAWuBc8WsqXK3n8Jffg0qhgblNMWXORg+cDVs+v+RQoFl3TZ9yslKkr
         bwlskbua11Mn6YWEP2U+QUhNiNR9duEr9dZ3+htqTdUEKVbO+6v3KUgv0klnIBJZQD0F
         WFBIWid7lNHwMj6CWUwvC1v4OWqPQYwmVum4a0xFTPp08noQUC34QeB0Gq4T2a9lKuhK
         IluhOiqYB8bXgoTZIdB3RyJm8djnNXN76rn5igtPQYT0sdAx3zq7YadaWNuUo/OFbfiB
         tVnA==
X-Gm-Message-State: AOJu0Yy/ntMG14fb4PWcOMeLyJAeWNIRPfhY0gw56EJlQq1jX7HWe9ek
	1r6tckurke68b3CIljGrfeR/ZKBH40I7rzw+N+ky5lH/vD0nXwz5oVB0bdlNAo+QJW79E2yWQh8
	/vIG4GdP0EAVfG8/xC5c+6XnQNCFNzQOPlP0iwSO3HwNi+oA21G0lFOTjZ/8bHHRojtFWZfI9Y0
	la//bd5GQ=
X-Received: by 2002:a50:c04b:0:b0:570:cd6:8ef with SMTP id 4fb4d7f45d1cf-5731da68e1cmr1841382a12.29.1715166966630;
        Wed, 08 May 2024 04:16:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE/zJKBlzUpmhPRWq2mnEwWWSWQxatndRrGKIq4OblBhRgcWleGjKshrbRBqa4BNQ8dbb/k+w==
X-Received: by 2002:a50:c04b:0:b0:570:cd6:8ef with SMTP id 4fb4d7f45d1cf-5731da68e1cmr1841369a12.29.1715166966301;
        Wed, 08 May 2024 04:16:06 -0700 (PDT)
Received: from stitch.. ([2a01:4262:1ab:c:8ce6:9eb:cd7b:fcdd])
        by smtp.gmail.com with ESMTPSA id co22-20020a0564020c1600b00572a865af10sm7513556edb.44.2024.05.08.04.16.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 May 2024 04:16:06 -0700 (PDT)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH v1 0/2] riscv: dts: starfive: Enable Bluetooth on JH7100 boards
Date: Wed,  8 May 2024 13:15:53 +0200
Message-ID: <20240508111604.887466-1-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series enables the in-kernel Bluetooth driver to work with the
Broadcom Wifi/Bluetooth module on the BeagleV Starlight and StarFive
VisionFive V1 boards.

Previously Bluetooth only worked with some GPIO twiddling and a custom
program to load firmware from userspace.

Emil Renner Berthing (2):
  riscv: dts: starfive: Add JH7100 high speed UARTs
  riscv: dts: starfive: Enable Bluetooth on JH7100 boards

 .../boot/dts/starfive/jh7100-common.dtsi      | 49 +++++++++++++++++++
 arch/riscv/boot/dts/starfive/jh7100.dtsi      | 26 ++++++++++
 2 files changed, 75 insertions(+)

-- 
2.43.0



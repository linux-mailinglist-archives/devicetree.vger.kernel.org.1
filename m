Return-Path: <devicetree+bounces-73430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AEB8FF569
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 21:45:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B3C02865DB
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 19:45:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6858F4AEF6;
	Thu,  6 Jun 2024 19:45:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZVsYXuii"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E764CDEC
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 19:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717703112; cv=none; b=mPWj4jI+amlfhfH7OtAeNPZ1kQtFwMMCGGgFppTAR3F79EmBQfa7zzsFFaMT+VN+d/EDzf5YG7de1SWeb4Azryu+kd2mhinwYvMxnaKF29S8JSMd2sQt9w+SOtowvn9EpGWqsHlwPROr0M80yeM3/m3wXDoRYjWfY0+st9OcPlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717703112; c=relaxed/simple;
	bh=5ChNUSUiaQ7krbEhchcSUVwttklBTGyxyCD9qWIVIGc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=n8kQbUFhwCwftKmEQnqeKDv+mBDvqygCIdydUADKeXWBNkVrxBvjhYnB9ESEQ6F841cSqYrUQQy6SOHFy5CBiDNf5tEjJwIZwBmvJ2cVJMSu90/eiaDBet3J7Di6tSmghQRifSVQVImZGrLuUL2B2sEsfNe8V7pzFIYiRJdMrrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZVsYXuii; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ea903cd11bso18010591fa.1
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 12:45:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717703109; x=1718307909; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rLHMSC502WG0JzGj/92HozRDe48TcNLCgFLa8B4Km/Q=;
        b=ZVsYXuiihTyb3oFzpjNGK3mLKt3fDoRw1S31idOO3WbepyTxvuXnWd1iz5qdVVBNi8
         sOjsh4mbgdi7z/3d8OXN71nP4jqNh9H/DsowfdjsaGrF26yt4iYJl03z+AbJR8ea6lTM
         ncEge/DsM1Jm+CpPKibAZr49RDgCVeY4W6DscAICdDaY8BjhfcwtUrW0GWHO70wbziVE
         uiGZX9Y4FKsuficBevUQQGP/Axn0TzyqyGg0dcz+2TQ0Mj9oNANhdItHUNFyhsbVuD6R
         /+fzZCKk8UTYoLbaE6yGXdz5WMy6U3nTzu4ScgeUCC2Op1IMr1kQR/PvqpA1IsPgC4S5
         vOag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717703109; x=1718307909;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rLHMSC502WG0JzGj/92HozRDe48TcNLCgFLa8B4Km/Q=;
        b=I0n1zdIlZMkd2xxKZxTO50Mc/qDNssVdzZyxDpEF10dG4Ze1G051qRaOFrbO8DH+6B
         fpqQ51R9pHqrCpSrJWtpbiBIMgHftpdDBJ/CRhWfWdZhV7xxmFatbdReVZRPvPKXKpnW
         6IHohdM+DingPtIrnTwsdTEZ0T3PilAd0SiBePWcbxss7fMcG+Q6yFT1HwQZ4ELKECI/
         +jYN35kh9Ssq+lHrT1X2t4GoEDghkbuNS1KPGMa5WrR8ICz6TZh+QAcF/dU/YYikQ69X
         9uOgqgpTt2eK+8Q2ZENu2K1/6FZ3S3T31bjjZMNpEJEn9ID4bTtoSyuhT9rOmFcjCfWT
         Ouaw==
X-Gm-Message-State: AOJu0Yy9bX81P+VpkBQegXBk+fa6MudH2WviyHT9WIQ+AnishKp+t0rg
	7ktpgY95aRwAI3avAekWHdaDvuvVbpCDclFRi2jXDVyY3ppVENgNulv0t+e3
X-Google-Smtp-Source: AGHT+IGNBakvIUIJmN9kTPikCShK3yz/zUQpXLskO3SUHQlS75RXGqPbVAQegQ/3eWPH0agS19pZIQ==
X-Received: by 2002:a05:651c:1a11:b0:2e7:2d1f:edbd with SMTP id 38308e7fff4ca-2eadce7f8ecmr6064321fa.39.1717703108891;
        Thu, 06 Jun 2024 12:45:08 -0700 (PDT)
Received: from localhost.localdomain ([2001:171b:c9a6:e661:d20d:79ad:6944:cc2d])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-57aae1042cfsm1566463a12.46.2024.06.06.12.45.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 12:45:08 -0700 (PDT)
From: Florian Vaussard <florian.vaussard@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dinh Nguyen <dinguyen@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Florian Vaussard <florian.vaussard@gmail.com>
Subject: [PATCH v2 0/2] ARM: dts: socfpga: Add support for Terasic DE1-SOC board
Date: Thu,  6 Jun 2024 21:44:05 +0200
Message-ID: <20240606194421.1465667-1-florian.vaussard@gmail.com>
X-Mailer: git-send-email 2.45.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

This series adds support for the Terasic DE1-SOC board, which is very
similar to the Terasic SoCKit with a few notable differences.

Best regards,
Florian

v1->v2:
- Drop the earlyprintk bootargs
- Use function / color instead of label for LED
- Fix various formatting issues

Florian Vaussard (2):
  dt-bindings: altera: Add Terasic DE1-SOC board
  ARM: dts: socfpga: Add support for Terasic DE1-SOC board

 .../devicetree/bindings/arm/altera.yaml       |   1 +
 arch/arm/boot/dts/intel/socfpga/Makefile      |   1 +
 .../socfpga/socfpga_cyclone5_de1_soc.dts      | 109 ++++++++++++++++++
 3 files changed, 111 insertions(+)
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dts


base-commit: 1536dc8edc653e0e4a333035a73ff146d0517749
-- 
2.45.1



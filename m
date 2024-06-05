Return-Path: <devicetree+bounces-72621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C288FC6B1
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 10:38:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 14F30B2A20B
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 08:34:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3F8749652;
	Wed,  5 Jun 2024 08:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cft2HFzC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5751946AA
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 08:33:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717576423; cv=none; b=SimxmuKkYO4Q6EaFQhtMsQ8c+Xp6oywa8va8ZjTNDTVFj4GhOWj1IANenitiskKhjG1D3Ekr0AheQ+bMm54Y9JDNBALBLSq2MjN/EKawVHBxocx4jHK6npyUVm1DHNEQZiFVIE/B4JxnQT3JyEbVP8qhp++zPGNMCDlpvsBhUE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717576423; c=relaxed/simple;
	bh=59n9jRWomkNdwbIo7Yx9Y7tzT6SuCUe2tOVlljqtcHg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mwb15dPgJ9fR6r2VQK9TwE3if0V6/hbcjDbOV+QYs9DTeb8ULSfAI0C0IaXLSbuAoraG4QLGWZxh8r4SX5g44WsdVRi+rQ5uSgTujPJEBX2nRaEIHRgxbPONz9TIrpBS63lX1fzy1CuE7rPGKx+ef0f4kkZ5gs0KzuX5bDVPKg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cft2HFzC; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-57a1fe63a96so6143933a12.0
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 01:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717576420; x=1718181220; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3d7dwrsPyzMTs7epeOhC4R1M1HUdUmPbZ7ZdXMNRVmM=;
        b=cft2HFzCgoFFYLP48DdMzQl1Y0AGPPMSxdurlpdCD6rSUF1j4zqvnNTDFiIbU1ZBEv
         3zrsE8pEtUh3IdBnuut8yoAODQFq1gtDZU6qMCuKiaRQPfPsqEWjMS/zu6DB/XBmZ9+m
         EbUueHTKMCapk6m7n4OksreMeAOvMTIjpUwmQ6Q8WqmLIbZul/SH5vBCRb1vC5n8wj1P
         YxNaAgJbouF3sB4ycyfxm8iZDmGlc8P7rfkLeAqR5A/lNqJVGXR3NCFpW/R2ksycID6x
         fh7UP5Io5UTqck+9cPclQR0r3rXAbGqESZGDZ9o3kcMnTHngi4i3qZJ6pX3Io9Nvy69z
         GdlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717576420; x=1718181220;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3d7dwrsPyzMTs7epeOhC4R1M1HUdUmPbZ7ZdXMNRVmM=;
        b=EZiiRGaCzuGq45nimDivhD3rS1BosgRETjPyAPsB0pU8XCb7iayXZ/RxcL6AA76wLE
         96zjOMcvz7pW7AFupRVWREg08wAoPR6xGeiPAeQl+M8bNiPA89wZcOzFxhOyh95FPIFb
         SMEKghsSBa15z0prZZWo2jEf1BWu8m5VJ5DX4bMFprKsk8bcZwXlwFEe3uTPkQu7zkXR
         Dc4Epf5tEhLvT0NHrpwKrZn/iPOG8SlWwtkmde15UUuHc48aXRfidCirSwKxZHB6+/0H
         ldICbx89m5YX9k00u7P9aKn0BZNSTYCqwueTy19rYs13RopGqo6Mv8w/7gtNEFlSZrMN
         +/Gg==
X-Gm-Message-State: AOJu0Yymv9IIGbBP2e2v8H4CxoYiWrhKKuOV/wOuVWbCrg78cCZX/5Id
	UwHlyVYfVg9qOAgK28EHCNh/0OFixTmGMGKv3uPU5RTUODfbwAYG
X-Google-Smtp-Source: AGHT+IFnqxt4Pkyc0ikcMMsR5ZNDHmIULbqEtrT/yRZmrL5SC9ENBVLTnfd/4htT7fTo2luM5cYFBg==
X-Received: by 2002:a50:c2d2:0:b0:578:5d4c:9408 with SMTP id 4fb4d7f45d1cf-57a8b6f1af6mr1099378a12.23.1717576420544;
        Wed, 05 Jun 2024 01:33:40 -0700 (PDT)
Received: from localhost.ch ([185.144.39.44])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-57a31c6d330sm8724501a12.67.2024.06.05.01.33.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 01:33:40 -0700 (PDT)
From: Florian Vaussard <florian.vaussard@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dinh Nguyen <dinguyen@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Florian Vaussard <florian.vaussard@gmail.com>
Subject: [PATCH 0/2] ARM: dts: socfpga: Add support for Terasic DE1-SOC board
Date: Wed,  5 Jun 2024 10:33:03 +0200
Message-ID: <20240605083321.1211198-1-florian.vaussard@gmail.com>
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

Florian Vaussard (2):
  dt-bindings: altera: Add Terasic DE1-SOC board
  ARM: dts: socfpga: Add support for Terasic DE1-SOC board

 .../devicetree/bindings/arm/altera.yaml       |   1 +
 arch/arm/boot/dts/intel/socfpga/Makefile      |   1 +
 .../socfpga/socfpga_cyclone5_de1_soc.dts      | 106 ++++++++++++++++++
 3 files changed, 108 insertions(+)
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dts


base-commit: 1536dc8edc653e0e4a333035a73ff146d0517749
-- 
2.45.1



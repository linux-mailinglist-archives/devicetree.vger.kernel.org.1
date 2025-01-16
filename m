Return-Path: <devicetree+bounces-139056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C166A13CA5
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 15:48:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E44A43A46D7
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 14:48:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8228522B8AB;
	Thu, 16 Jan 2025 14:48:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="zNVOCeTk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED0822B59B
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 14:48:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737038889; cv=none; b=hdJ7Qpt+5E/Ti0Tkl3kAgvECUP0ax7IGpbZtmmX43qKbDj+xGSe1ACH/zTN3BPIXJuFgZl1FvOiRDK1zrDZCRCzBhW/rpLf6bGGB3qQaUQcCXvlhb2wgqkRWB2eHMotE3s8KaInZ90CxWLgs28Q7mJYTN//BF8+PNzt8B3AElLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737038889; c=relaxed/simple;
	bh=lZuH5XuzvhtMW6S5Loq2CfVs2XMtSzvngAT5jOK5ZxE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=uNe1ZbRalUZC6DH4EgA56mxu1IAAxUq7O06FEyMBzMGkuPhF1Gu2KlsSy3IcM8/N1AhwzR7S4rGHXOp7eEBaLq+94rBcvNy3dUq5knWecz7gM357sgjG6flj5yHv7ag3OH+HKhb91SngK9hs8zrPpB49sm/os4ezxjvAw2UQKEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=zNVOCeTk; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2163bd70069so19512225ad.0
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 06:48:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1737038886; x=1737643686; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9wAvkOrunuNgdOQ0ytQ443cZQu2DUu/TS+lIUMni9JQ=;
        b=zNVOCeTkIT1odJVR6aDxolOLBNLHE9uOUlOGhmrH+XRiu9945I1Jo0ZL1NwGV76HQ+
         2+YiYyTZ4tmky2apUESuaVzXcikyrWaTWvFLUTkRmYJBhoVL0TJgVxcCQX14wL2dzYP9
         6fx07F79oKMuhK7OYBWtOYgOqE0CslvFsuWAB1YfGNiOQ9omQVhFvN+oCz15YMmcnFGu
         satsz5lkOFCGPo91JqnXDQ4rxa528juFFI6qAz5HHDObqAyUnP1zUR+Tw5AXQRd/IDSN
         PxWQDJ4vpMko59hxVnY2bRn8TW6LpSSJzm1ImPu0MZxilVyOyvpjvHuZ9aa0dxHb36aC
         pgZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737038886; x=1737643686;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9wAvkOrunuNgdOQ0ytQ443cZQu2DUu/TS+lIUMni9JQ=;
        b=TR/LCFSThH04W+gxMXXCdjYBePR7vh8ILmKAt7goGc7cQr3RoDJNyV3I96D3xvYEYd
         uyBhhsPO3dAaHsgnT//gl+cYc06saoD7mdSZh3T1AAiMGB89MXI4KZjsT5RNrdZSC47m
         66Vg4rESIBwM2aRdIBtfpvH3ExiGwgFRTkVn8T+/K/JymTdBJ4CXSyF6ZFTtaSLROald
         Ra+YY4Xz23E3nRwqOAhZsx8xT4jfbk9Sm6o1Gy11zkE8+UdMwgV/3sGwimYJ8KPg9U58
         IayWmsgcDtdutLw4fewhH+OYDigsfOSRk3YUr4TU5r4dp//1fKIz3eBMRoZxrE+CAor4
         BXkA==
X-Forwarded-Encrypted: i=1; AJvYcCVL/5MbHL7eHI88XSnCgRzKFI950nHg0yFMhr1/npd7pVgniE3LAdpOgqRDKUIIbvqJxrNSJQJeS+DX@vger.kernel.org
X-Gm-Message-State: AOJu0YygPVmcPcZeE4xhjRT7He3ffzh5r0Ukw9WnwH+vwfLsAINrYBsn
	4JGhJ/irfGD+OSF3dOFPPabva/GEj/Ok4a3UDoDTRJZlwneIgkeu1ndASHBe
X-Gm-Gg: ASbGncv3t6uSGQIfl3CULi2j/ohAGTFr4gNm09x3vhbhDgJuolwAJNczSDlg5DCuMIh
	JanTL6/lW1PmgWv+WmFLHdK8rsJeCOfsUKkIeJtKkhyFgI+gReNJQiFP37zou4uaAzXxM7tJ5Tg
	iV9jH29zkgeIxWGJwoFCXG1ROgO8VU7ylhvnHBkjmZnKWJ0NXFn0wUZZFaYTR47TFcrXW9Rk3N3
	o581LQbG2lYDliRLJHj2N7PkMP+cQVg9TDEhp4f7DNEp1HoDtwh/CkvsQ==
X-Google-Smtp-Source: AGHT+IG4dJZ9nXSR75sT4oubBrf6Xb+ut8YWDZmGSLZSGE1QYKnGyA+RwcHj01eCQDMDr1yD1dA4SA==
X-Received: by 2002:a05:6a00:f04:b0:724:59e0:5d22 with SMTP id d2e1a72fcca58-72d22014b2dmr52524064b3a.20.1737038884977;
        Thu, 16 Jan 2025 06:48:04 -0800 (PST)
Received: from localhost ([2405:6581:5360:1800:4323:933a:5975:d650])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72daba48951sm75785b3a.121.2025.01.16.06.48.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2025 06:48:04 -0800 (PST)
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Masato Kiuchi <kiuchi_masato@yuridenki.co.jp>,
	Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: [PATCH v2 0/4] Add support Yuridenki-Shokai Kakip board
Date: Thu, 16 Jan 2025 23:47:48 +0900
Message-ID: <20250116144752.1738574-1-iwamatsu@nigauri.org>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi all,

This patch series add basic support for Yuridenki-Shokai[0] Kakip board[1] based
on R9A09G057H48.
And this series supports the following:

  - Memory
  - Input clocks
  - Pin Control
  - SCIF
  - OSTM0 - OSTM7
  - SDHI0

v2:
  - Fix the rule of binding for boards.
    kakip board uses r9a09g057h48 only.
  - Drop bootargs from chosen.
  - Fix binding name for regulators.
  - Fix the name style of the regulator.
  - Use DTS coding style.

Best regatrds,
  Nobuhiro

[0]: https://www.yuridenki.co.jp/
[1]: https://www.kakip.ai/

Nobuhiro Iwamatsu (4):
  dt-bindings: soc: renesas: Document Renesas RZ/V2H SoC variants
  dt-bindings: vendor-prefixes: Add Yuridenki-Shokai Co. Ltd.
  dt-bindings: soc: renesas: Document Yuridenki-Shokai Kakip board
  arm64: dts: renesas: Add initial device tree for Yuridenki-Shokai
    Kakip board

 .../bindings/soc/renesas/renesas.yaml         |   9 ++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/renesas/Makefile          |   1 +
 .../boot/dts/renesas/r9a09g057h48-kakip.dts   | 136 ++++++++++++++++++
 4 files changed, 148 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts

-- 
2.47.1


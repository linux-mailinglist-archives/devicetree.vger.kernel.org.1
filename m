Return-Path: <devicetree+bounces-108949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 352389945D6
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 12:55:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E8BC12855A0
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 10:55:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D138F1C2DDC;
	Tue,  8 Oct 2024 10:55:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="Y/NbM2ym"
X-Original-To: devicetree@vger.kernel.org
Received: from out-179.mta1.migadu.com (out-179.mta1.migadu.com [95.215.58.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 751841C2313
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 10:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728384916; cv=none; b=F2HuAyDhqjpvviEFy/s4vqT6WHy1M5EkYJTcHfo3DkbhbBcmpGpxF4cW0/T1buUXUN9qlFYjy9VhKSCiCYKZasazYo8H1fg+lTeIx4X+6ny6iv5IXLKAYaxulxICJWNUE/LSsz4XoRuDovHZpKdTa+2NNq4h01YGTDscXnJ0Ayo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728384916; c=relaxed/simple;
	bh=OJJraGmHnRk5chCxV84P590Ffk8GG7uHJxCfvTuZyNo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mCTfJb3+Elf+2Lfpo055Kzh0JHf0jH7utrWyXWHpGuJHLVeFQiVkjfL/giCc4x9HaBWKbfS4fl46SmrrPlgDoi1UQETANdwOn4/XK2nf4vsas7h1IAB2fUkT201wuBQJ5vTib09K9OOp5iEX7u+HXmir8MGljXCeYiQXLE3x3sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=Y/NbM2ym; arc=none smtp.client-ip=95.215.58.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728384912;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=AGz7VCfXaXG3LvRwq27Msjm5+K1AK3Eq82mj4eAkW6Q=;
	b=Y/NbM2yml6SAoeDwHOd1GN/bYa2a3RWcQpati6LXD072IOFAPfEMH9caLPqAD9Mrj/gObo
	ko9wYNMPeVOh2r6jKdW/0dAMqzy8TiQgH85ZNCogV7CxBJIC3kNF644oWiiwvFqLNkjPsd
	6gl/a1c7aigMwXh2IMnc+v6zVz5rA7T7nVYhb8SyETAV/bM6KvAsI5LhSiIg155qSFxSJ1
	RZ2Ug/RodUWESI7mt6xXD2mG6UgUFDd8tKBDK1g43t+WzODptvoSD0D3t1Lt/g/IYjSMmk
	wuZ3Y1LB/+zS/NxVHGrAt0OxO274VZjmprD3MoR30HRqCr9IuOWENhjy0QreiA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v2 0/5] Drop deprecated 'rockchip' prefix from s-p-c PMIC property
Date: Tue,  8 Oct 2024 12:48:00 +0200
Message-ID: <20241008105450.20648-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Property 'rockchip,system-power-controller' was deprecated in commit
961748bb1555 ("dt-bindings: mfd: rk8xx: Deprecate rockchip,system-power-controller")

in the "rockchip,rk{805,808,809,817,818}.yaml" mtd bindings and its
replacement is (just) 'system-power-controller'.

Drop the 'rockchip,' prefix from the px30, rk33** and rk356x DT files
which still used the deprecated variant.

Diederik de Haas (5):
  arm64: dts: rockchip: px30: Drop rockchip prefix from s-p-c PMIC property
  arm64: dts: rockchip: rk3328: Drop rockchip prefix from s-p-c PMIC property
  arm64: dts: rockchip: rk3368: Drop rockchip prefix from s-p-c PMIC property
  arm64: dts: rockchip: rk3399: Drop rockchip prefix from s-p-c PMIC property
  arm64: dts: rockchip: rk356x: Drop rockchip prefix from s-p-c PMIC property

 arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/px30-evb.dts                | 2 +-
 arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi  | 2 +-
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts               | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts              | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi            | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-evb.dts              | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi            | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi  | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts   | 2 +-
 52 files changed, 52 insertions(+), 52 deletions(-)

-- 
2.45.2



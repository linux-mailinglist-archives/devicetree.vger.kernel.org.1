Return-Path: <devicetree+bounces-179152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADA4ABEFB7
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 11:28:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 956E73BB2D5
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 09:28:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D1FD2405E3;
	Wed, 21 May 2025 09:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="RgeWHUTJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A894523F429
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 09:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747819713; cv=none; b=lZoQxO4T8DGBru3F6Z7OF8zyJIi21R2TyFSwwr9Zg+ZorR7IdI6twce56DoCwDqacNXgXV5pLQ1AztH3IeU1Ef2MaTnlWt5hboEPn/bCMv02ngG+sE/zSt7PvK8dIx+fpWpNX+qzgGfKW3Htrp+V6wm/jis8rfuDt3W9XodOpzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747819713; c=relaxed/simple;
	bh=+tdvos/UqVi6pMAhZ0/80FmoEyTCrLTd9vhGypQS3jk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=O9zUnk76ECJG911i3Ci7NA/pRpnwrXPkyiXF3LdWNx/5PpPD3SdjLITMSZPsStXICYkEeKoyLiCG6Kf/I27hNt1vNp1jMYWOq5Hl7g6BOipXHA477fiLsSOStVKcoLSfw8H64qJRSAQUWtpn7TlsOzxCaWMEQQ1CYlHhd50RlX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=RgeWHUTJ; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-601ed5e97e9so5574573a12.2
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 02:28:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1747819710; x=1748424510; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9Br03zaPymWOmp5DzQkScr+PbTLXI2KHvIOqgBOpOx4=;
        b=RgeWHUTJTnaSEG9BS5ltx/NwZhoG3abU9z4h8HMUK8KQ+8g9YINqml6CGuJb0B5IPb
         Jq6LZRDblzNRlAvAiGQGrdpwyVxYJOQzbiYAOl0a6TZF1/AEydcQ/nf1Fg8rEkH/B2wZ
         Bzj26ENbXlJ3tFHUwgwzJjAcaDJvO5hoFobHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747819710; x=1748424510;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9Br03zaPymWOmp5DzQkScr+PbTLXI2KHvIOqgBOpOx4=;
        b=LwtxqX21/H+coENClE99NmkShePKVxEGcGwe1D5z+u9ak+icQkvbiuSxCDCQbQcPxK
         pygRdLhGCCZp5K3EnYiJKgc10xRgjDlDIXEXkkD6mxtWWD16Qnk8p9ntVC71cwAKSEE5
         7HL9cte406Y+voJuVTeAyDuV6mFc6oHkBE6/3hffd9xj9wp+JlqrQuQKkPKorn+nrcf/
         ZY7zWc4xiCZEmqZ3EawSpXUfT5gbWynC0/BZI34jeN+zpS/MFyhYhj97UoL1n5ItAZVh
         vmUxyBz8Y5IUamLg28g4u8R/DEWUVXS2ZOWRn+WPC6kfQGMqI5E8K+L0MoElZkb4ukt0
         qnZg==
X-Forwarded-Encrypted: i=1; AJvYcCUinsU+Z+K+CGjgoUucuxdi0Caagen2VsRSPqo0Qpt6FktSQKi6lOFmyxG7+TzWtH+D3mQY290pChFV@vger.kernel.org
X-Gm-Message-State: AOJu0YxszIqLAtL9+60oNz8/l3E/2t4bruF7oMrHY/zhNC6iSmZLN/Ek
	+k6FwdibD8AI6FBQo1nqRdW+q6JU9OTiMJJKCfsKWRVi7J18i7niyPs+6m0xzriOhHE=
X-Gm-Gg: ASbGncuXdyienp+lk/YLoj1MRWh6eVLFhPh2evtTyjzoKgs5Y5Oi41sNiewqyUxk/rB
	EHepX22PnRO2snKNEZuWmL6J4eWU9jcH/GNtrl2llQpMVlMfj1Sp3ZESApj4koFc80VVhqwhLiU
	MbGiIRdZcb0oan/it2Y0byrbzK6mcS+sVsrPcgD2vrG5PcKP1Fm7iPUkZns04Jv4gGHWwT3auS1
	uWpvfT62iSeL2VhW1HY2WNpKSALfIlDAXFSz7yxewJIZQegcQzGETz2flTVqWJtfgFbOrCnYAg9
	trHqC2Pd/FCTSoycn12R4AACt1Zi7cXcIeiRFdFJvrO7TJGLZtoGO4qPvEoVftHnFgpEG7FQJNh
	JvOvPdgZbPxmY
X-Google-Smtp-Source: AGHT+IE9Rsd+fMS6VUFvdncItJY6md4j6oNw2IpDZyEuTisqE10/bRSVI7wzKmHIESJJG3Xl38x7OA==
X-Received: by 2002:a17:906:dc94:b0:ad2:3723:6bf5 with SMTP id a640c23a62f3a-ad536b81a94mr1643951266b.22.1747819709868;
        Wed, 21 May 2025 02:28:29 -0700 (PDT)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:cfc5:5070:d6f4:1d86])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d275d9fsm867442466b.74.2025.05.21.02.28.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 02:28:29 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	michael@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@denx.de>,
	Fabio Estevam <festevam@gmail.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Heiko Schocher <hs@denx.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Marek Vasut <marex@denx.de>,
	Max Merchel <Max.Merchel@ew.tq-group.com>,
	Michael Walle <mwalle@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] Support i.MX28 Amarula rmm board
Date: Wed, 21 May 2025 11:28:19 +0200
Message-ID: <20250521092826.1035448-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The series adds support for i.MX28 Amarula rmm board.

The board includes the following resources:
 - 256 Mbytes NAND Flash
 - 256 Mbytes SRAM
 - LCD-TFT controller
 - CAN
 - USB 2.0 high-speed/full-speed
 - Ethernet MAC


Dario Binacchi (3):
  ARM: dts: imx28: add pwm7 muxing options
  dt-bindings: arm: fsl: add i.MX28 Amarula rmm board
  ARM: dts: mxs: support i.MX28 Amarula rmm board

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 arch/arm/boot/dts/nxp/mxs/Makefile            |   1 +
 .../boot/dts/nxp/mxs/imx28-amarula-rmm.dts    | 302 ++++++++++++++++++
 arch/arm/boot/dts/nxp/mxs/imx28.dtsi          |  10 +
 4 files changed, 314 insertions(+)
 create mode 100644 arch/arm/boot/dts/nxp/mxs/imx28-amarula-rmm.dts

-- 
2.43.0

base-commit: 4a95bc121ccdaee04c4d72f84dbfa6b880a514b6
branch: imx28-amarula-rmm


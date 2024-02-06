Return-Path: <devicetree+bounces-39132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A7F84B811
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 15:38:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 103C628DFBA
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 14:38:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A353495F0;
	Tue,  6 Feb 2024 14:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="d1nDfybm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A171B132C20
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 14:37:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707230281; cv=none; b=TYErwSkM8VnsR9/HWzpMtc5zwsMmf1rHPC/lMnd76oSWjqWk9sNnthaKEiqC7IH6XWK7fGmP6ZRUBint2mbgP9LgdlpguTxZmwC+xy+vqF1jJHWjnLF4TPgUdVGCZNsG2b/3G6P3tCBNngP+j696/h06QVJDiK+mAAHLHY+e+3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707230281; c=relaxed/simple;
	bh=qCtYwolXZnavl0Sd6oLqndUOVdi0NBe84oy1jvw5Hf0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tP86sMp9RATELYgoIEl/ySblcno+kchjrTrErRZrcL82iOatRs0Yg/SCgv19Q4coKwsdfjzm7ez7rO9b4YoEfysenpxha727a902YUEtvGOCIY94IzhTDyoB2SrVTStKh9UleVD59CUmx2+OYIRJ+wh1iIjR8alVUC25xVf/jX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=d1nDfybm; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a2f79e79f0cso131096066b.2
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 06:37:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1707230278; x=1707835078; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3vF7suW/1TS6qocxyvv/s8H/7vu3Cb51VVYgV+cySIg=;
        b=d1nDfybmgqIhk+XfreoVz6/jsnWOtwiVgj394bmQzjyaawUKn+OmQJ5kL1TTN/EJUA
         /ShVl5BJS0dsjeL5Yq0Rl4cUHf/TnGvnJMLRcputvRQjdSX7zd3hX8D3YLJlVWi5raZ2
         89DODsFlB6t80Ad8rJa62s447eckycyksJVyECooU0kzbb6T1vRxLnKjjVGAX3lDnaIW
         Arz5idtmA3lRMxs9PvLWSajc3DDf1KUS8+LnP6pQ0cLgdiTxwOXbgoJCEn0u2Kn4oVf7
         2Sw/yy9eunBZ8sq/G6EyPTkc+8FDqmNnmd+Pvp+y6YVZzIIdXR5QqbuSkrGIiwE+U/un
         VGEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707230278; x=1707835078;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3vF7suW/1TS6qocxyvv/s8H/7vu3Cb51VVYgV+cySIg=;
        b=rBwKPmOAmQLT3xMzwUFtXAU+O0sXi/4x6ZapY7w5t6Rxbg16Y1SSbtS+YmuW2ALHGS
         7Zd60asKDsPmYi3BjvR+DUk1UAw37CC3P/uAOzJxxUwa9pzkoIpmsIy3d57UggCEyxL7
         hFkrdocDhff/d1v5oB/Aa1Tz4OS82gdLNNkWvdvtj07LcGVjtLO22xnWj0lZjBoCh/nz
         ZJMwR5TwzccHef0eRulhKpMB6TLn8FvVDlxqdaxHwEytfmBgZ3xUSsqHLq32tBem5z3c
         JaHiN8hZSDwUW55++egVgzzv0Fld88qJae8LHwzsMS/+rQjQUSxcdAMNOS0Iduqm+fdw
         f+ag==
X-Gm-Message-State: AOJu0Yyomb4gzv6OX4vCKghJJD13x5AwY4NIvJ4VxVIxnlHh7HqW7KW9
	hkh0jT16YnP4YOdQIPSF/PCER8YO8f2yTN/gA2dx+JAcU4Z9fXcf+F6Equ9nfvs=
X-Google-Smtp-Source: AGHT+IHj0HtY8SzoVivBKzXBSyJMbIxEV8FnkFEryAPl79AxFxmn1uuzci9liogNUSCvs50RIiyaLQ==
X-Received: by 2002:a17:906:2e92:b0:a38:40c:5911 with SMTP id o18-20020a1709062e9200b00a38040c5911mr2287110eji.20.1707230277895;
        Tue, 06 Feb 2024 06:37:57 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUu96QIev3G7AKOTetfby9vEMbsek5UkU7upCeDF5tSF7c/MeK2fVG0fw4hzpDAaWaMvaXJRMsNBEsNDUI+69YY2K/lDyZjhxOhCHbUokqg+6sDTig3NcwmjlTm6pYpFhpvfCMbdEYh4nxSMlnlSN5aIOWh0Bp843YDMliA2q8NqVIInjiw5e5mY2j8rNnhLyVt0UN56mOHRY8LnVeIDo2ZuBnKOfag9DpCkHWLeTTQC/EmDij29Wi49dSclEb/rXgr8rERdEg4HKCEaFe8AbhsF9btBV6y1TPC9s1DnPhzLVAICklNMlAZDYWOqXKawqEPCO6mgMCjoss38HGP4XfV2XudnTswqnvDHWmGiuNUIboBfIOJw2+pDSqxCSQEvisMERpTkYEjtZLNL2ucvdlOwBFZWmMOxgSbKvVLWyzY6rM2QYap
Received: from blmsp.fritz.box ([2001:4091:a246:821e:6f3b:6b50:4762:8343])
        by smtp.gmail.com with ESMTPSA id e22-20020a1709062c1600b00a37585d5dcesm1224418ejh.51.2024.02.06.06.37.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 06:37:57 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Santosh Shilimkar <ssantosh@kernel.org>
Cc: Andrew Davis <afd@ti.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH 0/4] soc: ti: k3-socinfo: Add support for nvmem cells
Date: Tue,  6 Feb 2024 15:37:07 +0100
Message-ID: <20240206143711.2410135-1-msp@baylibre.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

am62 has a number of efuse fields that are situated in the device range
of the current chipid device node. As other devices require these
information as well, I am trying to establish a new nvmem layout for the
information available in this register range.

In this series the conflicting chipid driver is updated to support
nvmem-cells and the chipid node gets the register range removed and
replaced with nvmem cells on am62.

In a follow-up series the opp table will be updated.

Best,
Markus

Markus Schneider-Pargmann (4):
  nvmem: core: Read into buffers larger than data
  dt-bindings: hwinfo: ti,k3-socinfo: Add nvmem-cells
  soc: ti: k3-socinfo: Add support for nvmem cells
  arm64: dts: ti: k3-am62-wakeup: Add chip efuse nodes

 .../bindings/hwinfo/ti,k3-socinfo.yaml        | 23 ++++++-
 arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi    | 36 +++++++++-
 drivers/nvmem/core.c                          |  6 +-
 drivers/soc/ti/k3-socinfo.c                   | 67 +++++++++++++------
 4 files changed, 107 insertions(+), 25 deletions(-)

-- 
2.43.0



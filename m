Return-Path: <devicetree+bounces-295341-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PEAOFeLAWp4dQEAu9opvQ
	(envelope-from <devicetree+bounces-295341-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 09:55:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 66871509A30
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 09:55:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 61CF530A347F
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 07:48:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FB673A873E;
	Mon, 11 May 2026 07:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="joIivMUG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F4253A75A0
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 07:48:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778485694; cv=none; b=Z48qIq5Yb4RXtOz1lhzKSY+rhRajOb0WPd7Sni0Oz2swPQ4oqDWnnoy0O8fVtGXqfXAWY9/0aJONBjbX2a+fDFKrv47npRBqU/oQyFgNuId+/L4Je50HwKCgNgtJEHflAkjji9a36bEefIc7genuOm687aVjr9/Zpyjf1mdXEZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778485694; c=relaxed/simple;
	bh=DTG0d6srwYuZw11HXVSrISSlverDM3+dZg5dZOfkCs4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=F/ksd/bReXilUe36trXRH+A0cKKG8Q6aKQIBbacERkx+tsKgcRvU9egapz7hMtOFCNLV8/0PzN26wBp6CMyX8Ivv/e4OoIiJ69DY1qbAvXw3A9YPVcwYuV/1twstG00irtkRsHwVOiHFdTUIy1u8MqJL7vurRh7xGZwSMPp6vzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=joIivMUG; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5a88db610ccso4582390e87.2
        for <devicetree@vger.kernel.org>; Mon, 11 May 2026 00:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778485683; x=1779090483; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fzV/r9uQPwH3fg/E4X8ZbrbeGCJOX8rINpZLXDiidxQ=;
        b=joIivMUGmujWdGdblvDXrz77mKEVZqeNYh2LgRTyDJp3U/Huzl1yRfnFy0gH37JF6N
         C/GldSmHGPdOT76CNmCzlLxJIxQZD3eMap89bdNGVVzJr0Ah3NYSA0uUcP+hELe3E29N
         fQnnmxadU1kQ+eAL7KwsqiNvG4py4Zdnbf0x6sqjm3kvCIdGCFZCkg6XySalPqpfGIJk
         vXTuwAIOFQ1lyJJD8vkRCqGYk5R/6soIKT8T5wwoyNZNAMzfc9RH12OhZsPAU3rCRwf4
         SHMc5Pzsy2kq7Zz4g5VthCN7DQhQkz07JgruilTP0gLInC6RQZlvoakKvOUuAeb3bL2F
         bPlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778485683; x=1779090483;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fzV/r9uQPwH3fg/E4X8ZbrbeGCJOX8rINpZLXDiidxQ=;
        b=nmoAREhV9YGDdJIRBfD01Op/PLx8Z0eve/eghg1f23GQR7hY7vkeUwY9n9rA9zXvXX
         fov4lgvVM8p2gvsVTEyzE4d9SzvIRVF5BWDJwhZ+pBmtjX/Wx9jnWCeOLrziw4xeafWJ
         EAIynp1zxPyXC1sG9joMhqlI+4QmLuAh9jcLhpsC+P/sn+x8GWpkoX+ncLYypG7vEVLy
         wP2upNjhk9aYpuDkTBQH88Z+4xb0vqtZjN6Tluxia5fNKGcbXRRxtJrUmR3/wYs3f12g
         rH1StrBbU5twXztFnuGgrd4ZOaONfzdwSaUOxPbtfrrEbvQV6SeBV1rUnu3pNXuTio6c
         hdkA==
X-Gm-Message-State: AOJu0YzFGCTUmfAoJvVaWpPPkzw7K5ylPbnJgxMqdUFBaZklxaiTlJ7A
	kxVLEyYwh3GMwxDhiYhMQ2DCC5bMBiAQgyNw5B+y2nfp0esEI6+Hm05o
X-Gm-Gg: Acq92OHYC3Vff7+S2bMqjdyIWHO+neZQSipENJkvC2cRWoC8mhne8VUH0zHobMz6+WZ
	tNtaSTv8xurcC28ahOxnNVEPQ7RiXNBmw/ayJWbrDalqPtD+VI9hFX5NKGzWc2xK1e36FPBBcVs
	d8LWrno5b4QTiC6Jz2TU5laGTLlM2HA83od4bVaUbNpQFygcaRMoj+Vz7GzoRkMwNQxrbEmtU85
	l+K+h1+kqytkUSG4E1t8hRFd+4eC9Z8YLFxbFd1JvjcXedWJ6e55nPwPlDw66Bnm2x5S6WQE+kr
	4swgmkljq4RGyofzhghB0OuKsATtiCa/lJZkVC8YLo7H3wZd9h/RL+fSYM7ZXnUqLubbWFiXeqx
	TihpjoCJ1jBzUzkPqRB/2qnu60bCyWkkJYXl61S+bVM3IDKmWcq1B1tgqLc+nwhruC/PGnL83hS
	E3SwkJ2S59eu0a
X-Received: by 2002:a05:6512:2315:b0:5a8:6cab:4871 with SMTP id 2adb3069b0e04-5a8b719719fmr2232605e87.36.1778485682662;
        Mon, 11 May 2026 00:48:02 -0700 (PDT)
Received: from xeon ([188.163.112.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a8a955e096sm2386670e87.38.2026.05.11.00.48.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 00:48:02 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Ion Agorria <ion@agorria.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/5] gpu/drm: tegra: add DSI support for Tegra20/Tegra30
Date: Mon, 11 May 2026 10:47:47 +0300
Message-ID: <20260511074752.24745-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 66871509A30
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nvidia.com,gmail.com,agorria.com,yahoo.de];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-295341-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.974];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Tegra20/Tegra30 DSI is quite similar to Tegra114+ apart MIPI calibration
logic and clocks. With a few minor tweaks, existing tegra DSI driver
should work on Tegra20/Tegra30 devices just fine. Tested on
Motorola Atrix 4G (T20) and ASUS VivoTab RT TF600T (T30).

Svyatoslav Ryhel (5):
  dt-bindings: display: tegra: document MIPI calibration for
    Tegra20/Tegra30
  clk: tegra20: reparent dsi clock to pll_d_out0
  gpu/drm: host1x: mipi: add Tegra20/Tegra30 MIPI calibration logic
  gpu/drm: tegra: dsi: add support for Tegra20/Tegra30
  ARM: tegra: add MIPI calibration binding for Tegra20/Tegra30

 .../display/tegra/nvidia,tegra114-mipi.yaml   | 41 ++++++++--
 arch/arm/boot/dts/nvidia/tegra20.dtsi         | 14 ++++
 arch/arm/boot/dts/nvidia/tegra30.dtsi         | 18 ++++
 drivers/clk/tegra/clk-tegra20.c               |  5 +-
 drivers/gpu/drm/tegra/drm.c                   |  2 +
 drivers/gpu/drm/tegra/dsi.c                   | 69 ++++++++++------
 drivers/gpu/drm/tegra/dsi.h                   | 10 +++
 drivers/gpu/host1x/mipi.c                     | 82 +++++++++++++++++++
 8 files changed, 206 insertions(+), 35 deletions(-)

-- 
2.48.1



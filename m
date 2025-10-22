Return-Path: <devicetree+bounces-229833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD82BFC7B6
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 16:24:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5E56E352AEA
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 14:24:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAFC934F260;
	Wed, 22 Oct 2025 14:21:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dN2k4WE0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0977134DB7C
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 14:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761142910; cv=none; b=VICskENPwdxj7NhYFoeGQjZEvMgaxHev56QeSX/Md8Mwo4CWHXgOGVQwtE7LkIaPtFsLx6vbjvlThzkylWY5nLnqcJVWbU9C5GyymzyR0tM4LkTOLzBS8/s0CbzTuzSbRQKJSWSTFT1F0bszn4YTHwhOfAw7TD5ZDuBBV0Md8FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761142910; c=relaxed/simple;
	bh=NPYq2prUDw6E4LwASXaQMdEqr6v2oIwItNqZJN/XQxU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KrhfAxcycf3q7AzmN0UQr0GwM3nJOnbkeg38E4WQXyc+rQ/6hi9KuoT18Mfqdx1oHtjj5TMYhwkSpwBJ0iWimjFyRrkMAXr+hDzf46d2rCZ9nMOGiwqQRrsz1uyVmB8gwRzdweh5kaOeD3t4dOK11Sv7aZMKZcOuNUrvrOir74g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dN2k4WE0; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-4270a3464bcso3803036f8f.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761142901; x=1761747701; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bgdj41tpB2VgIRDJrZCciZQ/xBBL1EcMgPyAyntTnpo=;
        b=dN2k4WE0ZY529zJSRBJ5ZwORqoW8KLeZSCDG6UUz7GYvoOwhMzgy1KeJ9j7hImNFYF
         6jgoUufnykUb7VrhHxH/ZbMkng2hRNLbLq1WXb94zmPgT7TBt1gYeZypt52aMSWdZn2A
         /nijUnNp08qxO3kNmhbsPtM1rZZ6YtRpStfEJITrlnFL7NeNBPcQxQrX09tmPKQOT2u/
         s+OHrFBQERBAlc/eA1zcXlLEhbwAo13Ju8WQ4DBjWVP6U7cE2wtMvU+GOUVJDwBNR3E7
         KyiRW5CeKo7CM6Ec+rKxfvq20nd6aTr6KFQO/Yy+9nbETsYnbb3kD+PZ/nQYEecAIMQC
         KA0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761142901; x=1761747701;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bgdj41tpB2VgIRDJrZCciZQ/xBBL1EcMgPyAyntTnpo=;
        b=SaX3zsPNiUxbsznUTnhA7AI702mAXKtrrklTeAzslxRFhlhZtuDad2CwEayWMkyI0f
         zHVoA11sxbeKJMGFcFugj/BciVGwFSjvZxm6Z/LADefn4rSTX0muLD6kXMGrJm8bC8U4
         FupjJfyzCuY54iQPeHWEv7FONaZJmim7ahir8TXiIOiwMKM2ig9gfTrIA+p52UcxgbZC
         1uENnNdsG+pLYw+pdhtGTptc+IVnGkF+yK8ND3RQhHrYylGKVbTapf/sAe/Uj3w8x3wf
         aY3NMFuiupumv8KWkxMtNFa4XRZcSLY7HWidd4HVhZnGCT9wCUbThikqyASc4yiI2UIl
         qY3A==
X-Forwarded-Encrypted: i=1; AJvYcCVjm1YIH+Cw6Tvp2JFNJIDvxtJ4bTpxI0uYEWZuuqWnPYEX7c6Fa1DwiCbgPhTGB51Gpfkbwz7V/6tv@vger.kernel.org
X-Gm-Message-State: AOJu0YyILKZR1KaNXizhNBYV4mYHuogn8IFRP54S6jjGyHTliji2rO0B
	OTTCC4OeDZZixrSgTubuu2wv1cb4JtyAuf7GkETTZ++Q9PvpFRbADSPO
X-Gm-Gg: ASbGncszP+49sjk3fPMYzqvHrU5zrMtWJhdVtuuPEdZ40UDo+V/eJtE0kKSYNix5RA8
	6d+LwIGHwtEn6/2Zib8wxot3HgQRlV2VAgRkcgpE65C389vv4adZEHi7dhRRndYOToFGJq7Q+C3
	j/ZgOeDwI5YPei1G0h15c34I4QJe/poomYivpjk789VBmXxYJ9PNNxJQWPH9ky6i7Fiw27E5v/z
	zoqJqrJaIPUd/oxQ1c5ELowjPfB2UFmkGP5ODCqSV2IAx1+/fHFh8IXJeNrdj/9qAqenHt30WZ5
	E87aiWbsVxCImShIpCaHJyg9prGopGj7IqGX6Fx1cNfDwnghwfdl8Ejt4WcJOJb+jPBYouy6vX3
	ZbQ/cgV3qCILepi2rxAjbOTMT5VQEzVCJ8d2vE94Qa9+d2gfrI3o6kJ4RzMp9NDOqQsBZCFlXed
	L4kw==
X-Google-Smtp-Source: AGHT+IHM03V7eJFt3Eu6ja1MYetjG461AcLXE4YT5HRjXzs799spnfwnfQrFSdx7t2nEB8DurbecfQ==
X-Received: by 2002:a05:6000:24c6:b0:427:928:787f with SMTP id ffacd0b85a97d-427092879c8mr10794030f8f.21.1761142901362;
        Wed, 22 Oct 2025 07:21:41 -0700 (PDT)
Received: from xeon.. ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5b3d4csm24803518f8f.19.2025.10.22.07.21.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 07:21:40 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Sowjanya Komatineni <skomatineni@nvidia.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>,
	Dmitry Osipenko <digetx@gmail.com>,
	Charan Pedumuru <charan.pedumuru@gmail.com>,
	Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>,
	Aaron Kling <webgeek1234@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-staging@lists.linux.dev
Subject: [PATCH v5 10/23] dt-bindings: display: tegra: document Tegra132 MIPI calibration device
Date: Wed, 22 Oct 2025 17:20:38 +0300
Message-ID: <20251022142051.70400-11-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251022142051.70400-1-clamor95@gmail.com>
References: <20251022142051.70400-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document MIPI calibration device found in Tegra132. This compatible
already exists in the Linux kernel, I have just documented it to satisfy
warnings.

Each Tegra SoC generation has unique set of registers which should be
configured. They all differ, hence fallback is not suitable here.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/display/tegra/nvidia,tegra114-mipi.yaml  | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra114-mipi.yaml b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra114-mipi.yaml
index 193ddb105283..9a500f52f01d 100644
--- a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra114-mipi.yaml
+++ b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra114-mipi.yaml
@@ -18,6 +18,7 @@ properties:
     enum:
       - nvidia,tegra114-mipi
       - nvidia,tegra124-mipi
+      - nvidia,tegra132-mipi
       - nvidia,tegra210-mipi
       - nvidia,tegra186-mipi
 
-- 
2.48.1



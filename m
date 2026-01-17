Return-Path: <devicetree+bounces-256315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 73223D38ABE
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 01:31:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D0807301E6CE
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 00:31:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EACAC7DA66;
	Sat, 17 Jan 2026 00:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z3wNVdwy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC126A33B
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 00:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768609903; cv=none; b=TNVGzvoG+/75FnyZHs+EKa0dUBQLRF4A1VuCPuEwEuBdRyM0cYZrcTmzy9wcu6EQY5cCclyB/IxA7o1DoaWjzDDRhS71sIyhIJ9kMq/Y4p2KQZBCFoLT37681CslbdG94GC2yC3rro3ndtrNgg35NmBEk3d3dkNNHYW0kXrcUF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768609903; c=relaxed/simple;
	bh=oYQI2hBpIRcvGtuZTojZuoMSi1NBy8aQgzTCzObvMzE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XEdRmMyiq1pjBxw6qxFEJnkpl6Mnpfj+vP8lA6+UPrj03bJPqqL3Erli14Di82gJB59Lhpo9wjH07ptXT7bLkLT/2akBVPfwCO72QNF2l+FCpyBGlqj5thpYXEk6o257mPOYIQbHXnbVIjKZgwyHB2t+2PxizTCorxaiIeZD/JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z3wNVdwy; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4801c731d0aso14133275e9.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:31:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768609900; x=1769214700; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iFv214rAmnxy+ZWfqYzxoI4aXe7hA3FW0xG43u2wRxw=;
        b=Z3wNVdwyvc69g3580tyf5fWfsc14h+xc/9Vg7PNDraGOG69INSVBA1CzQxPpB4YuJ3
         PKbJ2HX869tVWnNxczVuxy5XUMmrKH6RCTC74NzjWEyITJ8wsFDhSwVO8qFXS3h0nF9l
         zLlMXJJKycuP8R6ewUNsbElXbltaxzQP8B/ylWOmQA8B4ETt5tcgPQQS8iPBTAyRGshV
         y6qj+5YBywUuBf+KdejltrIIANh5VXj9HpnpopRWsjGMjwmUrClqhnzR5GegrUfbYKUf
         EH5Frf4yO93if/0XcU64VQiyErG2KMsxhElv0qzt8UDUcQ+yUMVwWYeaxNCTnnpLrYHq
         Z9KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768609900; x=1769214700;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iFv214rAmnxy+ZWfqYzxoI4aXe7hA3FW0xG43u2wRxw=;
        b=YIzPRRFvk1rgzx7l9CfYWdHys5ROvNEG2+eDwTaWYged2/P7X3bPAYTmRsMC2ghQ+p
         TAZP2fPVnFG3f39y9+RwcyT5y6Qr13LA1jZVGn84cE1CpjWGffY5xyRY8TQw0HazdJ3H
         Bpqx7fXg9xQFQNia68+0p0EoX0I3HzR2PALmj659IXhVxvRfsdjuy4IeXqmDJibvn3q1
         QEwWf8WvbGFRV3Ukk/pzPZSybwUycIMY4qeD0EAW4Ey+G8zvKRiIFP6g2hxD1IAM9e0c
         r4m5GctN6kM4MULOsC6OBD68VqvkeWnQEwZeTs8TpdXALjhZl3+CdcCbJsvZ7d7NF7eR
         A40A==
X-Forwarded-Encrypted: i=1; AJvYcCXHIct51zfOqG7iNuT3QIP2Yu8A6qe8qUKT3A4kzhW46T7Kl1W0TLSSb366hjIWmtIDjE7QvVqziEqS@vger.kernel.org
X-Gm-Message-State: AOJu0Yzbeo8sXd//ZgoG79MbPmZTokpg3X/L5nyPt52ME56GtZJ/uush
	VaRNJ8NJ9E/tRncd2znQasP9OX6s1nEz0m2DQOmJuRPWVR5yoY1KpgoI
X-Gm-Gg: AY/fxX7NRW1LrLPGF1lWV+5aVakk/r8lfCYbExjYdr4uHgm6vMJf81S22YlAC8+AMkv
	FIif+5elgcLXJKne07z4FlzxivnH8EZ1/8ALGPkVReQHCwvlPLpfueoRIwRMz1AuuOKDC7m87KU
	KWe9HxKwCwKFZG0QxGnqsQDbh+CsSPVKirfWfvqAydFOxofRQaD3waKDLAzejtHp1kSNIuKbDe1
	giZGoMZCQIMWneVlEqngLs696NNbNJ4dOLSvXMdsSSuU3Tz3mxQI3tcT9arbUBOxDeywc9nr6gs
	qJKTIYvMciiqdDlEGGK4Zt/kyUaQuSeDgWYvfWpMBsw5cRViLFHazuy2cH0ULZKrnUqCN53/5EB
	8kfgPdrMpivFU0kw0aVinBV7tO/Azutt5gYEfUEpfF3hmCdA6d6w/aWRkP3QNFRHBz2YcVsSTTh
	PWje+zfIcQBcvQoR9OyT3Y/6Npylrh78pYFhqNqXMMVa+wzUQRBzKyT0LsArSlLRAOcTnhxo2y+
	yQhOFQ=
X-Received: by 2002:a05:600c:3b9e:b0:477:9a28:b09a with SMTP id 5b1f17b1804b1-4801e2a5861mr63784045e9.0.1768609900200;
        Fri, 16 Jan 2026 16:31:40 -0800 (PST)
Received: from localhost (p200300e41f0ffa00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f0f:fa00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e9fb193sm27730315e9.6.2026.01.16.16.31.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 16:31:38 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
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
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>,
	Dmitry Osipenko <digetx@gmail.com>,
	Charan Pedumuru <charan.pedumuru@gmail.com>,
	Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>,
	Aaron Kling <webgeek1234@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-staging@lists.linux.dev
Subject: Re: (subset) [PATCH v5 00/23] tegra-video: add CSI support for Tegra20 and Tegra30
Date: Sat, 17 Jan 2026 01:31:35 +0100
Message-ID: <176860988748.1688420.11717122647073678.b4-ty@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251022142051.70400-1-clamor95@gmail.com>
References: <20251022142051.70400-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Thierry Reding <treding@nvidia.com>


On Wed, 22 Oct 2025 17:20:28 +0300, Svyatoslav Ryhel wrote:
> Add support for MIPI CSI device found in Tegra20 and Tegra30 SoC along
> with a set of changes required for that.
> 

Applied, thanks!

[04/23] dt-bindings: display: tegra: document Tegra30 VI and VIP
        commit: d262d030baef287da33344a932639aab5f913c3a

Best regards,
-- 
Thierry Reding <treding@nvidia.com>


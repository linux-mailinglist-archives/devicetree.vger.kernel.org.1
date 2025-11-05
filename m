Return-Path: <devicetree+bounces-235373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A438AC37922
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 20:54:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 30CC8189252B
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 19:54:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDF733446D7;
	Wed,  5 Nov 2025 19:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RSHFNiv7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE6103446DD
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 19:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762372427; cv=none; b=KPcWXrTPKtvwvyYk6GseA9xqXgz4e3N0AprBt8tEaMwaRkCwH3F0QR9v0bfxUiy0iKbrW5jEp13SMhogUJBw4h2LnWrpMKGMCKC+hHxehWshRbAxNl49XfzdqQGXPih2ky4ycvW2gaaDwdTqLjY8rNG4t1czetbfPdT7dlcAcNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762372427; c=relaxed/simple;
	bh=Jou1lNMM00w9f5eYejrMFyeqVvolRlVhHQuRaxQ0mdA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tUztnVxrc3T9BlK8ytv5KA3a32vdCVAtzm5pRm8ewYy4OtK48bmPvRkwFRZwDf+R4DCu9cICgiFxfgLtYiEtw6RZU8pwJxi6BKPzFPwK8C8B7lFjcRZMExHObKTuCvTUMxsLsR5rgJsPpLvOknTsBAlf8cQAHc2a9ETkI9VKqO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RSHFNiv7; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3f0ae439b56so142251f8f.3
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 11:53:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762372424; x=1762977224; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a9xaRF0+Ylf+8WvDI0dQCdMPlw5uq8nk/5FgqyYx7Zk=;
        b=RSHFNiv7iTBDobLPodRHqDvruLRqnECefigub3B09uG0uB/QA1S2jJ0ofRzdDJjnUz
         L7hUteGC9tUjIGrmjaYMn/weERg9Vt/KpeBZKocB+oaw6CKFGu9NR2RIw57bIvt5aQhz
         aa5mL886AwgFuQxjChuIvQNO18EJMAxOQSycSTVLo5eXCYBzFRmB3a3Yb0rEy7d9+BSR
         iC2FoQB0HsUh9jSDk655oQdVdKKJ5ZZeuZhCIz/7xZyW5RvQG2Ijj9SCLEwPK5vbCq0b
         qVHNFnuFS9YXW6n7QYDJjw0ZYSVAzzI9TQ+fSmtrUr0pVmXoDxwLSGn5E53Al6JnsVOC
         wWkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762372424; x=1762977224;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a9xaRF0+Ylf+8WvDI0dQCdMPlw5uq8nk/5FgqyYx7Zk=;
        b=UBheTdNcXdd4brOcufK0lb19yCF50qLXVQDVBTkPiQyc3lgbu2yQw9pcs0sbpBB5A0
         c0eeobQQEE3EU9K3aJ3pH26nQ6ticgYtImOPd/TLaB4+agHtecQza2wvucsGBX8Gd+a9
         r7DjusK0OuG64fchBOlYDul/ntfnmg3YzRKQnKjHJbcr9hFpvIR7FrslSoWevhXOOVjw
         yiiNzJ4MCt5L1vXufdieQQ17dRQvcG4o4MjYGG8xYifHxWgaaSekr5QrzHCUjLsMB1tL
         JonU6gamO+mIdSsQKVTKyeSA9Z2qPSfH/3THmOLBRdiI87c+Iqz1ocmPS3db/su9E/qA
         n7hw==
X-Forwarded-Encrypted: i=1; AJvYcCWWW39nmQowhoTd2/MJ25L4M+YadPZEZQYCF1h5QAN9z7FiYUa1yv6sdoNUWbSBCANyVb8aq0jIEtJ0@vger.kernel.org
X-Gm-Message-State: AOJu0YygwjBta4XsVlh1Yyg7rysRPYX588p2U+ChYE0BO5KpWX5KZNca
	+tWbHEUIljtR/8El0W6o953IQ9YMkeJfKCO5pFFRyAKJ3k2D1SmR4Jan
X-Gm-Gg: ASbGncuCtZMPyBRXNxivUfW6rqMchHJ9rATtm+Bz6/GipvpYO/18L/xWnrp03yzOOUy
	CzA1KUIswJ9UKUN6uNyX9H8f30/VJY5+OgmPaB/CrMunj67VnAIzwx9LokYUmPHfMjpwnprK15e
	CmeN5/c+VvKztM2bCdMgSDke7FshL+jAk8GO0FI4BBq+KGfZh1OFcRDIx7PsOdMfgYE63nMNCrN
	bTOTWO/TzyDrp6P1KkvGt8SluujPoSs9cTONAmYe47Ou2hB73UkcSqmhN3hduuYkaBOL6cIE8RB
	jhUZGf9vLw7lG0OzfIMcg5uD5Ebmrjx3kReXBfn2TZV5zCfsF/7jb08FJv9xHTBq8xYWBmtllqm
	LHI8b4PnweJd64OTZOy8bVfotHdTCbTbu8HtduWeOW2WAHrhmr5yhoxyjTc/n/MRhOfwZC3QXml
	juh2FBmtxqZLvNR4RMMid88y+JSs1DBt8+zQYZcs1tKxA+gkym/EprwtYFQ71SSC/Xi0nX
X-Google-Smtp-Source: AGHT+IGIWa/x4p6sZ2I1xd31Sd6kdQ/ay8nIV1AcjeU2MDxx5pes1fxx1MSrjGbeNguT13vwB4d+pg==
X-Received: by 2002:a05:6000:430a:b0:425:769e:515a with SMTP id ffacd0b85a97d-429e33090femr4013296f8f.42.1762372424127;
        Wed, 05 Nov 2025 11:53:44 -0800 (PST)
Received: from localhost (p200300e41f274600f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f27:4600:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429eb40379esm558947f8f.9.2025.11.05.11.53.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 11:53:43 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jon Hunter <jonathanh@nvidia.com>,
	linux-tegra@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/3] arm64: tegra: Add DBB clock to EMC on Tegra264
Date: Wed,  5 Nov 2025 20:53:39 +0100
Message-ID: <20251105195342.2705855-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.51.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Thierry Reding <treding@nvidia.com>

Hi,

Tegra264 requires the DBB clock to be enabled anytime an IP block needs
to access external memory. The external memory controller is the right
place to put this logic. This short series of patches adds the DBB clock
to the bindings, adds code to the driver to use that clock and finally
passes the clock into the EMC so that it can be used.

Thierry

Thierry Reding (3):
  dt-bindings: memory: tegra: Document DBB clock for Tegra264
  memory: tegra: Add support for DBB clock on Tegra264
  arm64: tegra: Add DBB clock to EMC on Tegra264

 .../memory-controllers/nvidia,tegra186-mc.yaml      | 13 +++++++++++++
 arch/arm64/boot/dts/nvidia/tegra264.dtsi            |  5 +++--
 drivers/memory/tegra/tegra186-emc.c                 |  8 ++++++++
 3 files changed, 24 insertions(+), 2 deletions(-)

-- 
2.51.2



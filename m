Return-Path: <devicetree+bounces-235375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 204EBC37925
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 20:54:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D8721A20EF3
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 19:54:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BF51345724;
	Wed,  5 Nov 2025 19:53:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hSk36Jil"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA18F3446D1
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 19:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762372431; cv=none; b=J2IlSPUAGkVmJYuCH9VDwb8F/pKBQvRYthlPlP7C0v0eAyZWXN7GT67klogRL7vsmi93hyw//rqFhOCnagkfUIamwLVAFThzr66NnfcQvFt+yadhgBxyQWc5Yk8ghngPjU6IAHY601Had3oDQaFZV2boRjfFTVD+whBWgddBeBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762372431; c=relaxed/simple;
	bh=aFlIqj8cX1NQ0lCzxiSyrrlu00dbSVu+NizVPVqZ+Sg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=D6A00ISMHeijfoiKhF6/oc3SarIkRdJo0zVvkMfUvq4RJ1Rr9yKwBTHLl6dVj2PiDv25Rlpz22gsl+XK5ItejjtWAnqEY+s+isq5xGCm5xMbT/UrWpnx07B354p4rqLBsgIW7X8RHlF49zaYZjvFDcMIaLDnsEevJeRgktNxGnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hSk36Jil; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-640bd9039fbso281473a12.2
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 11:53:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762372428; x=1762977228; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pg1s0jiPxmjQzUA2OkWwvLk1yS9N8UGQ6BwkSG5FxaE=;
        b=hSk36JiltwIz7g348Zxjr5EqRfOPHeRBzOeDi6qv8R81Bt/Yw65cNuQE9hVSkejR/c
         uzvkczpjWKSnQuOyxG3DOrn87xXKldqD6r1idCyfD7y0ZP5DOYduYLVZ1e5T71mSAeWP
         0Hz5kRdnZ5/+oqn5jp4FHqjIUSlWa7jwxe7s8djFvsj98AARUlnRrhvxU3Ts8oVO7Pmr
         oQdLLXj6xLxgGMZZYuWJ7npOsNgeLueUANd7BUurV8dGUHrDb6Z//r1MRekHmWKi5xUZ
         v7OAU6rr9cU56k7zNZTsTkp2vDJi8qB5waDsZ6AZJXGiJ6H6wq+xMQfLJSI/mv4h+GAQ
         5Ycw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762372428; x=1762977228;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pg1s0jiPxmjQzUA2OkWwvLk1yS9N8UGQ6BwkSG5FxaE=;
        b=VR2SjTt9mYiOJDwye69w8+J0AJu5PcW+zvhaLv53nBlAEaUBiNmb5yQM+t8N4+3WuJ
         RrJdaMRomV8rCIMe9P+FpOy5Ai/0IwemlaZQ463LP9aw2swQabcNpFbI6AJDfYzPHFGF
         sy6HMEJwSETJVHccMzUlkd2JQH838Uf0Z+R5uuPZmZICQV3/Xd9tP1mOVC7FgxiOCPtN
         NA6phAQYWatwgO5FMtGBcTOR0+ZgnerGFBsEBqynDWrYIYxI/z3V3FMFFcKIBDDFH869
         VmzRVZqxArjGaX72FgK8cihs5W4U23ZPQugSMu/92LMzarIQFteInlwBhuH5zX9DXkt2
         TcfA==
X-Forwarded-Encrypted: i=1; AJvYcCVFl/C/M1Klz8mG9GiyaPlOser0047C82Nv0U7O49SRD+xPm2cxmQ0KNZBhulaKXqgYWfc7UQyanLH/@vger.kernel.org
X-Gm-Message-State: AOJu0YzAQ2nYr8bYiThjJleg/KBsgfIuROqg/GMqv88i3GfCCWbefvUm
	VXM93+ipT7XMaY+yt3gYV/TnARr39Gyo3S7BT3xtdBLCMlcEgWB5DHHH
X-Gm-Gg: ASbGncvN0pGOBfYnYpH+fkqwKNaJKQ0NqgQ0nD/lkqSZyhLNTDosyjCN3VxKUgW4hIB
	gQG0cKWDuQ4gnLjjmOipJZBdxKW4O60a2MjU8ZwElmI39qoFfGj0gG82OHb8JlAxCPaDFP5CQUp
	/9e2G1VZEUdirdF+KC5xkO6mLFdo3+U1F46gI7MDYRf5414OsRGYFiznycvOuhqF1FGrrVGOEUP
	LM95MgvPOUyZ1Dv4HySJmt0XAfO0r5ePgU3pzIMYghp9R/xwGQYR19FRy6RuvEF1Pg6XZQ5mzhK
	800+Vnb1YPC0GHdUPuCh/5y59CiuK5hWJJ4dtoOs4xDeGTXU/KLoItDK6hO6/LUjPa6pJ5h4dDc
	ORZmYKUeEVDlU1Zjl+1Rm4x0HUgyrsEifMyeF3KI1edBxyQ6XaTfKHIGTAhxEayKfaVJPfhHhWD
	GTZvFoPXohCEU1ejuZmahYllCALcioNEv2BxumWLswkyFwwkfs6sjsYlNZPUUZk9x4wLvDRbPz1
	XFFTWI=
X-Google-Smtp-Source: AGHT+IFu/BJUgqVzC+0jB97MzllQNZ57Y5RAgO/mx+gwuQJPWfhIHg5Z6D6gZvFid0rSdIKZNllB2Q==
X-Received: by 2002:a05:6402:2686:b0:640:7529:b8c7 with SMTP id 4fb4d7f45d1cf-6410588c635mr3990360a12.1.1762372428058;
        Wed, 05 Nov 2025 11:53:48 -0800 (PST)
Received: from localhost (p200300e41f274600f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f27:4600:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6411f713aa2sm21117a12.1.2025.11.05.11.53.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 11:53:47 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jon Hunter <jonathanh@nvidia.com>,
	linux-tegra@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 2/3] memory: tegra: Add support for DBB clock on Tegra264
Date: Wed,  5 Nov 2025 20:53:41 +0100
Message-ID: <20251105195342.2705855-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251105195342.2705855-1-thierry.reding@gmail.com>
References: <20251105195342.2705855-1-thierry.reding@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Thierry Reding <treding@nvidia.com>

The DBB clock is needed by many IP blocks in order to access system
memory via the data backbone. The memory controller and external memory
controllers are the central place where these accesses are managed, so
make sure that the clock can be controlled from the corresponding
driver.

Note that not all drivers fully register bandwidth requests, and hence
the EMC driver doesn't have enough information to know when it's safe to
switch the clock off, so for now it will be kept on permanently.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/memory/tegra/tegra186-emc.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/memory/tegra/tegra186-emc.c b/drivers/memory/tegra/tegra186-emc.c
index 74be09968baa..7a26d8830172 100644
--- a/drivers/memory/tegra/tegra186-emc.c
+++ b/drivers/memory/tegra/tegra186-emc.c
@@ -33,6 +33,7 @@ struct tegra186_emc {
 	struct tegra_bpmp *bpmp;
 	struct device *dev;
 	struct clk *clk;
+	struct clk *clk_dbb;
 
 	struct tegra186_emc_dvfs *dvfs;
 	unsigned int num_dvfs;
@@ -452,6 +453,13 @@ static int tegra186_emc_probe(struct platform_device *pdev)
 		return dev_err_probe(&pdev->dev, PTR_ERR(emc->clk),
 				     "failed to get EMC clock\n");
 
+	emc->clk_dbb = devm_clk_get_optional_enabled(&pdev->dev, "dbb");
+	if (IS_ERR(emc->clk_dbb)) {
+		err = PTR_ERR(emc->clk_dbb);
+		dev_err(&pdev->dev, "failed to get DBB clock: %d\n", err);
+		goto put_bpmp;
+	}
+
 	platform_set_drvdata(pdev, emc);
 	emc->dev = &pdev->dev;
 
-- 
2.51.2



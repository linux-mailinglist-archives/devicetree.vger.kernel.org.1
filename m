Return-Path: <devicetree+bounces-233752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E385C25212
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:58:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D34946373D
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:56:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C047334C15E;
	Fri, 31 Oct 2025 12:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pjcqSf8c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC47234AAE7
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761915373; cv=none; b=izd9LTUSmB8pGl2lTvmn96ZLsqiCc7EjlFSbdszMNoo/i48yMP0LXV9QAYcXppy+d/AAW5r+/dyeRaGdIqzmr6da7T6qR3iA2JWHwxhBTOF5wYtxwGAFgyAIANvJhr3Jm7F76e2oL3y/+/xujn2+ZBbosxlhzwpJxOQTxKwfKK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761915373; c=relaxed/simple;
	bh=9SkaUUiz7kTIzusyZvFJbNhQMbW11/ifo4mNZna+tJU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bHypgo/nHgS7B0tiNLiOPvQOU8YAr5v9ONee97G2So/nBMZdu2UAKpmPxyWJ0szSrAix8iaU4NTH5qA3J8jgT4HPDJ5iM4t9WhBHtqxQSY24wY4l4zwpqnsS4uNCBgFjX160L9lNTTJzti7jZ29cI1jqrt6iD1M7J46uEIN3ENY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pjcqSf8c; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-475dc6029b6so22551505e9.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761915370; x=1762520170; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zOHP7nyDdbsMDvdN2HPmSUfNbw9SBzb4pYxZJwfsKCY=;
        b=pjcqSf8csRvMKhXpsMNT5GfCy/ENV258BI/DdZllu8DN/pdAiGBnqgaygnI2Zmvs2f
         lr12n7FM7S8fhke/yul3Brzf+SejwIVvXyY7cJUam1bUzAkgAk57o7kDehd+D2nRPwq5
         8nONXCFTsEHX2zG0j1TRcw8YWt5XWZUUQIQY/k9/+jkaAvwKqDjhe4EQ5KsbHTh3gQ2j
         lsvzBEvJt71jVAWIj238hncwKT8qLuVLpqFcJbpCjUcJJbic7ujkCE9bgWVwb9k8QH4e
         1XGkUt0JFILfHs8umMHD1QuEvr9z013GauBDtS5pBHhjsd8nsXKb3odreTI23iqWTTzH
         6BEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761915370; x=1762520170;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zOHP7nyDdbsMDvdN2HPmSUfNbw9SBzb4pYxZJwfsKCY=;
        b=lxqQGEfoo/ZnLJjYpunGkM7XBJZBhmNC58AhfiP0iDeKCQFGgCNScUS1zIFeVNLarC
         pQh8SRDNiElpEbsaIw5bW82QbW2jAd4LD12f80RICKf4Q4pxQG9ynf4TrRr/9Y2lJ8wz
         pgkc4LNfp6U3OIvv8Ce0pWvTrx5Qsf+ysiaOoHuMv3Z4mmGIeLLOKjJe+r7u2JUW5Hjp
         Jc073gncHCS43bp+y15Jx5dFKHdTyKdPOTOdmzrAAXukTZcfWm4lBYuet413brKl3FkH
         8Tei2ZRZgRCDpLZVZ4Elf9jWKlRWaVlMWqie7tVaN5Kb8yZAJkPl+7toZ9N0ofvDxxvH
         G7eQ==
X-Forwarded-Encrypted: i=1; AJvYcCUS5nciLHCofk4d5JAEJ9b3U1Df62E6iIaksRVP86Lz4Kfa36lPc4FSzIjZXbF9dDSZBzaXGqDihi49@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6Df5t0McjWr0qxpJqDPad1QG/7DbXC54WbMq98AbacN2biO3Q
	iJO1ykpFOhJt/bGe6/5ANe3SfbDamVxtA7D193KPs3h6X9UOmxEttvQwxC2PvTEALct7d5AD4Qd
	Ld+bI6qI=
X-Gm-Gg: ASbGncvh5v3Xo0yNlImLMIEal7/mqQQZ9IeG9eZhoes4J7nk2ZBpMG+So039uKQ1shl
	UqiLo86L5kt1RrlNmZ6gr0TzB8jpC+fWVhcrxJhABwFNmHfPg5XESuF0AbMroZGQbwcAWnnJcW7
	IzKWzE/+wFPGhjVBiGh7kfe4mokia5+3v45Lkb5sZZSyY1+IFzwMarPgCvwfU4dKfBEdC0j6Y+q
	UxPRt5TEzPn5hHzBN6E0a/i+vjBKPPwCoqVESjCbRZ+XCdAmWbdh7601eiT/uvUhyQ+EljnIA4n
	QyspnMAdGZi37gLHZZfe67BSZGL9FnndvgyFmblejXiGwYvgR8j7ZGqhZSzjyUuy5gO1G/p4tZn
	YFI3MJvReOp4px7VdIfizBLFsWX9cEx2SDGbAeKky1Ip4JEAChsL18J93vGGOe7Erx9ecsBB7Ev
	0oGdhl4Q94JywRqVZeThWESKJqUMOys4I3+iWCcM1aNH5HNtBGvK7jcAh4BpP2RNcvddWbsVeee
	A==
X-Google-Smtp-Source: AGHT+IG5tkb1EJ/8aJ1Ee+rlCTIqPTTaT+zFP2s7onbxjS1ItcgDWPxmaFF+3jJVap3Qn/JSHQQtdg==
X-Received: by 2002:a05:600c:a345:b0:471:1717:421 with SMTP id 5b1f17b1804b1-47730872584mr29116745e9.19.1761915369981;
        Fri, 31 Oct 2025 05:56:09 -0700 (PDT)
Received: from ta2.c.googlers.com (213.53.77.34.bc.googleusercontent.com. [34.77.53.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47732fe1075sm31814585e9.11.2025.10.31.05.56.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:56:09 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 31 Oct 2025 12:56:07 +0000
Subject: [PATCH 08/11] soc: samsung: exynos-chipid: prepend exynos_ to a
 method's name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251031-gs101-chipid-v1-8-d78d1076b210@linaro.org>
References: <20251031-gs101-chipid-v1-0-d78d1076b210@linaro.org>
In-Reply-To: <20251031-gs101-chipid-v1-0-d78d1076b210@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761915362; l=1201;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=9SkaUUiz7kTIzusyZvFJbNhQMbW11/ifo4mNZna+tJU=;
 b=nVOMdUvG1eXJr+DmGEMwRP9k/VrvAUTj6to5NckxRVaBgVO0QjELdEXrxI7Wq+M6ZeX/ijI4h
 dh24nYIEhqCBdabs7dGrkSupGP7jmC0xwBudDXgEZ9PZzzmF0vMd5kr
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Avoid name space pollution and prepend exynos_ to
product_id_to_soc_id().

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/soc/samsung/exynos-chipid.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
index 9c43c615167e4bbf15d00d42c2e52cc64d7dae1a..92cd5dfc0a9b641428d0d047cfefd4256a893ac0 100644
--- a/drivers/soc/samsung/exynos-chipid.c
+++ b/drivers/soc/samsung/exynos-chipid.c
@@ -84,7 +84,7 @@ static const struct exynos_soc_id {
 	{ "GS101", 0x09845000 },
 };
 
-static const char *product_id_to_soc_id(unsigned int product_id)
+static const char *exynos_product_id_to_soc_id(unsigned int product_id)
 {
 	int i;
 
@@ -222,7 +222,7 @@ static int exynos_chipid_probe(struct platform_device *pdev)
 						exynos_chipid->revision);
 	if (!soc_dev_attr->revision)
 		return -ENOMEM;
-	soc_dev_attr->soc_id = product_id_to_soc_id(exynos_chipid->product_id);
+	soc_dev_attr->soc_id = exynos_product_id_to_soc_id(exynos_chipid->product_id);
 	if (!soc_dev_attr->soc_id) {
 		pr_err("Unknown SoC\n");
 		return -ENODEV;

-- 
2.51.1.930.gacf6e81ea2-goog



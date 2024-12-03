Return-Path: <devicetree+bounces-126532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E3D9E1A2D
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:02:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 352C6167499
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 11:02:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAFEE1E411D;
	Tue,  3 Dec 2024 11:01:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Dglka5za"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E89AF1E376B
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 11:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733223684; cv=none; b=lu3A0hHwlYckPdCmrDoRvAMHlAf3dUjCp3FcjbONV75gZoMgEXzfhEUg1hDaE5Umz9dvK/1XJGgMgF8uJDbvT+R4ixVSeBy4dCKLGdg1NxMHmeRKhihcls8p39FlN6bh7IFjqn2QyGXTPzNWTllB3QDokvquHWjxoiN7WPvFyr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733223684; c=relaxed/simple;
	bh=dkTnukD2rrkruTwfH798eaeGxe3q8221q3Q+tAj6IYI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qksS+tN2NeIfBbCkCU3ADssOJwRBM3XrAYH58igOENlP8mlIZu3WEoCCz0BaCIqqnDkXlNI7U4FMe68rHRlPEUMME7UwrcMo02aI4XCCPGCDMPABovpNxFktlyK6NcC8gav4keUQjdUhzexv4aMIOO/g45Fhl8Zi7ingWJU2mTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Dglka5za; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-385e1f12c82so3548731f8f.2
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 03:01:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733223681; x=1733828481; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L8sEiFdmMWi2hzthhwzHkLTong+QNvgFETpYvC/h2tk=;
        b=Dglka5za8W2pq9FSkPSM9jpqG78CsAyU9dRyh/sB6k5xalR4dmpYlZ0Ur9sR3vK4nO
         MDUhXqCYfDQ7wC9OF2K5OmjKpR3g7y2/c7Bz3G4sjpD8ski5QbaWe0Pp+n+zCTPYWNRF
         qOlQ5guKRXaubrGx71zIVzu9EK3cGfZfOP7AcXCgeOd5V70qZptXqniGXK6hVwXNzstf
         ZUihx/1hBLj1ZF0q72cNDSb73AX8aJk0rDfwsskdPjbs49PCZI0+TDFwnR8bute50BfO
         fli1dOcxRge6CyPxcTuJuZWz/P4z4EHxHyH00KpUI8SjRMUzkldy//bnVL4Lka4Ga0Fb
         NiWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733223681; x=1733828481;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L8sEiFdmMWi2hzthhwzHkLTong+QNvgFETpYvC/h2tk=;
        b=caCdWZyxWbnJ+5BrznanWWC3nhRj/C+E3FKZGwp5MsUonCHPHudQUVco2QLXA7iPiK
         YTK++SRIBY/fWxutpgYOeWBy3hpO1WEiaGiE8LDKJRaMiDKXmBRs8+8B3dRpI2J1s12M
         VdAlXUkcN7yEJAZLmcmV6brmrYZ+nA70dVl1rIUUUYbB5+mtvUChZlfT+ZLvt0+mvfKN
         QMfp8OsX15wCMnhVFbW5KKNQlSzsREn/V7vatDtLebIMbCjDHE0HIwOEzB5BgpkJ5c6y
         tO2i50jz8rOiN2xAtvNkY7NCMtD9dzmnPkhDwNCcX6us+9CSh3oFPU/uKZgiWIog3phz
         bVtQ==
X-Forwarded-Encrypted: i=1; AJvYcCVug3PhAJmYeR0wsHBhZrrkNhHTp9BUQVSaKSCH4W2jS4yI0jKVwdzoY8826tKN7UlSzdkqpRAknwbK@vger.kernel.org
X-Gm-Message-State: AOJu0Yywp5Hbtv3nZx05F0UXtDCcjXkR3YLUcaYJ6Sy97XRRkrDBWKXN
	cBr63e3xclVQ+yZICy/tfy0UD/iuOrw/MHx5SaYKDtSaSdXcky7ZE33Cp7dLncg=
X-Gm-Gg: ASbGncs8XcXhx0yHeWasMQjj2y9q0hdmG3JhpvAkDVMvO9HfGXvQBPViqOCrC/QTe/y
	GVBgTmr+5zh7BLEWU7TLCipqFn7HGXRrme8cIcLOJnKnLCOHVAX2qtBhlt1RvbTjYhDH8DbSC3J
	EUoAAH/L17TO0YdpyE1yrdzf2DD1+wv/2ell+Z1huUV213sC8SH1X1SEyy6xT8CNwqxROC55vts
	ojRhVxVsM4C0oqOoUCagqugqcpYoKLs3OvuJzjBjtBbXv3cg/MlATMsiUKNDuNQrzMMGwx64zdH
	sHbGFe+ezjZ65U9LIut6OaZhhc5bY7Mrtae71qE=
X-Google-Smtp-Source: AGHT+IHvQ1Sey5bBeafu9jqtRUmCuPeE8ddeFRmxiOx5J9cEDyNaOjdFEfD8olz3nQU6ugPn8QDp1g==
X-Received: by 2002:a05:6000:2801:b0:385:ebc4:1c62 with SMTP id ffacd0b85a97d-385fd3f268fmr1564168f8f.24.1733223681349;
        Tue, 03 Dec 2024 03:01:21 -0800 (PST)
Received: from localhost (p200300f65f242d005bbc9b581c6b9666.dip0.t-ipconnect.de. [2003:f6:5f24:2d00:5bbc:9b58:1c6b:9666])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385ddb364e3sm12796164f8f.27.2024.12.03.03.01.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 03:01:20 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	linux-iio@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alisa-Dariana Roman <alisa.roman@analog.com>,
	Renato Lui Geh <renatogeh@gmail.com>,
	Ceclan Dumitru <dumitru.ceclan@analog.com>,
	devicetree@vger.kernel.org,
	Nuno Sa <nuno.sa@analog.com>,
	David Lechner <dlechner@baylibre.com>,
	Alexandru Ardelean <aardelean@baylibre.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Trevor Gamblin <tgamblin@baylibre.com>
Subject: [PATCH v5 05/10] iio: adc: ad_sigma_delta: Handle CS assertion as intended in ad_sd_read_reg_raw()
Date: Tue,  3 Dec 2024 12:00:25 +0100
Message-ID: <20241203110019.1520071-17-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241203110019.1520071-12-u.kleine-koenig@baylibre.com>
References: <20241203110019.1520071-12-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=953; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=dkTnukD2rrkruTwfH798eaeGxe3q8221q3Q+tAj6IYI=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnTuTTrHUffRNjnKdY3og9fWY46C7ZE5BO0lhvf IA8qsTdgOqJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ07k0wAKCRCPgPtYfRL+ TvIdCACT/CGSXboDEpBNsSE4VcFYnMpX7yyqbiq79d6mTLGclPH0/isWLJzrUXKEFDz35YItMCr VhZd0oQeklOrjgwqVtA2AzU94ju04iV9uthjbSGEIDkYeGXqm7FqoWoQowKA7aW1yEb19oXkbj5 guhgxznuAizgqzIcHaKHvCQvJ6Lt5D7VFgEdbBS6PvtkqO+nozrg7FY0WohbzkFLqFXqF2ecWX7 F5fyCyNN8uQGoHbtDHOmQXYs2oAjWriuhUGgseLVcNSoHPGWWOkA4cKh0FsF+hFPIsTYC5LHvMc MCa2bTlRnBDrs/WtYtBSy2QjBYlBRpQfWPAfm9mzG7LWtHoN
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

When struct ad_sigma_delta::keep_cs_asserted was introduced only
register writing was adapted to honor this new flag. Also respect it
when reading a register.

Fixes: df1d80aee963 ("iio: ad_sigma_delta: Properly handle SPI bus locking vs CS assertion")
Reviewed-by: Trevor Gamblin <tgamblin@baylibre.com>
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 drivers/iio/adc/ad_sigma_delta.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/adc/ad_sigma_delta.c b/drivers/iio/adc/ad_sigma_delta.c
index 7f4eae5244dc..a2efd2145373 100644
--- a/drivers/iio/adc/ad_sigma_delta.c
+++ b/drivers/iio/adc/ad_sigma_delta.c
@@ -109,7 +109,7 @@ static int ad_sd_read_reg_raw(struct ad_sigma_delta *sigma_delta,
 		}, {
 			.rx_buf = val,
 			.len = size,
-			.cs_change = sigma_delta->bus_locked,
+			.cs_change = sigma_delta->keep_cs_asserted,
 		},
 	};
 	struct spi_message m;
-- 
2.45.2



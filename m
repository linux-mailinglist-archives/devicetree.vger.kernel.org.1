Return-Path: <devicetree+bounces-34255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A606F839310
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 16:37:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5664D287650
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 15:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A36B5612F3;
	Tue, 23 Jan 2024 15:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mpekW4G5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7B760DD1
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 15:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706024080; cv=none; b=UflocH1M2eVScUQ2+98+uoiGsdqdp/Effx2vvjDD+/EHPJqdLh7Unrwz0km7+FS8BdmxYnTdB+S4fIPm851EsAtgGOOH1RP2tWqRd+4IcaSYPacnS4OZ9m0x3Ur9t0ad72PUcRYSgLPRlujkR0lNLmpLTlkBWSJd7cymaPDuAY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706024080; c=relaxed/simple;
	bh=azFcV/mgHmxVyLvuazK3I1eqSDB4DgGiyfhf9SMqDgs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ggvi5rYRkLcpMyFRFBTkRUQHSxJgluDSIItv4nI/AO7mZtGWPoDMuSKoakqYHjVXbpbSbY8E4o5S4MW+QFMNgJ+Y3IGFsPvQ2A6g0Cdx3QgLJUSDLrhnEXwa+PujwI6hziQPfE1KXcJUJods0O+ME2rFRnuH0/7s4oroWWjswpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mpekW4G5; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-40e80046264so56604495e9.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 07:34:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706024076; x=1706628876; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e+YMzDyGNc/zXRSdUvNiD+W2fMYH+c8kFJSxO3iDixs=;
        b=mpekW4G5d289qPbVUvpkAx8dBz1CQgT4/WEtGZYW7xdwyvJSb9jRMGSPwByj1kCtgF
         2LdcPLya6CDBrGEfsyh2EV/dJdPCVn3YQ4C0xEOFDCy/Eu6OUXZu27B5pyfGy8fcYsxl
         52TuZpwdJlbRz88Wyc/Ou58kG9b70Oelvt32wxIZ05LGnT1mK/egInn2APLvu4brVNQN
         3enQu9MxqjIZoVvFdlZw86KAQJKCbxWuDeZ7sJC6cNQQDqkgGPK2RO8uOH1CWZiuP7NY
         Z37j4r6HSoQyIzT1xgKfjEDPcNlSJuJAT3JTstiqQAWY0E88S3MLVMrBB7NTP54WiSj1
         S0ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706024076; x=1706628876;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e+YMzDyGNc/zXRSdUvNiD+W2fMYH+c8kFJSxO3iDixs=;
        b=WcuwtB3SmUCiCNjXe/HOHddG75HjzMyAesCH+cHSoJfbRbfWHVFeK4SvvMOTsdpmPW
         QKOGV6G54HaOWwkW15I7hNfo1UB0RxHJRVCD9vVnszkrsdQphRv/fzyA8fkctoxdmZwh
         i4I7y0Ig3r0mJe8mU0OQ2gsilBaBbNQRw100lq09d1XcRWEyqZWyJ8SS+MEsypo3Iard
         4gC1DQ9RXKwQ3KfO72I/cWZFgEjt6x+dKyZS1f0D3m4LYSO4smU74ae1ks0kN997fNNp
         mctZ8xQPLENRq4+b9M6oSRgj/RkgLi2S+Kh4UW6C78nICf2/oQKK4COMoeeH+cF33UWP
         jvlg==
X-Gm-Message-State: AOJu0YybBZLN2EWRRES1WKOePofq8R1bN/5ovw8OM6pH71MJkj0zF85Y
	qSQvSk5xs3LXOfR3pJ99MfuvUXRtg8EWjlJw4aWSIJA+sX33t0zvQktkx/ACSAE=
X-Google-Smtp-Source: AGHT+IHzfN1qnVR4UVsM9mJTMqExDKUWTqRX/JTb9E8bTyCwoGow8h3nokE07jWiTAJ313YlGKAHHw==
X-Received: by 2002:a05:600c:12cb:b0:40e:4179:d060 with SMTP id v11-20020a05600c12cb00b0040e4179d060mr280263wmd.65.1706024076431;
        Tue, 23 Jan 2024 07:34:36 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id p21-20020a05600c359500b0040e3488f16dsm42457536wmq.12.2024.01.23.07.34.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 07:34:35 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: broonie@kernel.org,
	andi.shyti@kernel.org,
	arnd@arndb.de
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com,
	linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-arch@vger.kernel.org,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	semen.protsenko@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH 12/21] spi: s3c64xx: propagate the dma_submit_error() error code
Date: Tue, 23 Jan 2024 15:34:11 +0000
Message-ID: <20240123153421.715951-13-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240123153421.715951-1-tudor.ambarus@linaro.org>
References: <20240123153421.715951-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Propagate the dma_submit_error() error code, don't overwrite it.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/spi/spi-s3c64xx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index cc33647eab14..2b088a190ab9 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -315,7 +315,7 @@ static int prepare_dma(struct s3c64xx_spi_dma_data *dma,
 	ret = dma_submit_error(dma->cookie);
 	if (ret) {
 		dev_err(&sdd->pdev->dev, "DMA submission failed");
-		return -EIO;
+		return ret;
 	}
 
 	dma_async_issue_pending(dma->ch);
-- 
2.43.0.429.g432eaa2c6b-goog



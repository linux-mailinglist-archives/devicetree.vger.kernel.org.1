Return-Path: <devicetree+bounces-34855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D8B83B6A6
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 02:36:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C719280E1A
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 01:36:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AA16101E8;
	Thu, 25 Jan 2024 01:35:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DyVLwgf4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF855EA9
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 01:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706146547; cv=none; b=VYO7G6BOaqqd8QKY4RDR36f4U9Z8MVZ311gt/5r+Z8dMxja8pHi3FMtqWbXFFgQIzvEtCCSKH+5AY9yA9gHVh11kRVlfhg3S2XEr6qEBk5XM+iCwc8rmdOC25wtihsBklu+4A4I0P5NWaNwNNxiSvdUpxbb5Dn1fyVmCruOGEMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706146547; c=relaxed/simple;
	bh=gvS9OR872hMLDwjbJt9LD4SXHkhJWBAYwtl2RkaXhw0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=crK81RmSHWhB/ivobdwidMwbasYMxYL808D9XjYcvDw7BHbC6hMffKU3Uz9+bCGxd+BXtGvMU2aqwj4Jift6zTxKMl7KKxg4CetIstPn0Nm32mbwEfA0DzzZVWjGmIk4fmCxuUc4ulWGfyp9uSuVYirY/QFZIRQbn67n8ccZs9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DyVLwgf4; arc=none smtp.client-ip=209.85.160.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-214d1139620so35043fac.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 17:35:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706146545; x=1706751345; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mrTPIRFEFJl4D6usMUg96I/YEqaZ4s0DmE7WQLKQltI=;
        b=DyVLwgf4SMZKgX/HuWJm6AONwqK7BQUHZd2HZkW8dipo+ACRGZfRTofRCbttgFyJYF
         sLDRl4HEXbFYlTxlmtDN1NpB0+vVGSxDTA7rpKX5xkuvnH8bBuK2zySvaH5IMKeJcofu
         k2vvr8oThswxENpHeKvnyfRYVjUMzGi02/VCLMqHHCojSGOBeF7z/O5xD7Go9JmzGmbu
         2s6HbwFUYkBgNvJ3DJNb3kD2ZDL2imgOMRtjNx9gmUR97Y39kpM9uasx7NXz7gdfZeI9
         Zg6JNGN+faJAY11MveOtv+r4c0zZYieCE4JwwSJHQ+IZAqfP0ypeeNd31s0zJNPeMUii
         WieA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706146545; x=1706751345;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mrTPIRFEFJl4D6usMUg96I/YEqaZ4s0DmE7WQLKQltI=;
        b=Vtof+A40H1DUOpHnt60StOfcOWfEYWOqSvuSm6wV799lg7c0KBWQn9/ogpoSaf+/mx
         g8Tb09UfvHFk90oNiRN++xu1devDo13TbEO3OyIvIVchtxDGS0G1+mwO/rhHO/4SHW80
         Y6AfC8533jeTKh2ODU2h5v6gjSkE7jJ3j+/Eiex5IGk/tk4iXK0wypOyHybvB4MxRS7e
         riTiObX2SNggqA31MnBO2ofhreMl/QNfBl22Glv/mZvzlUqf8RJgLOlUI8EWqm3haAP9
         +ERs6N0tXB1vXWmt2F8oEna2yOYuyo3NRVCohGM35WBG9YVaaKuanEJfUXGu5OfwV/dZ
         K/eQ==
X-Gm-Message-State: AOJu0YzHiSc7crd67Zs9wKMNkTsxGSnpUbuAiYsVNoKGRXh7UE2qnpAp
	OGDC1e+A3rDsXwVAXCp32CIREF5Db0mM9L+GR/YqgMXv/tio1674BH3oaZyaer8=
X-Google-Smtp-Source: AGHT+IF3NwE0mZ28Ss+0PVwv8nCKU3mV6Ff3m1ZDji1UuD5XHmoV+07SSc21F/vfqXbluZjjyIrAbA==
X-Received: by 2002:a05:6870:817:b0:210:d5a5:7d37 with SMTP id fw23-20020a056870081700b00210d5a57d37mr190367oab.22.1706146545100;
        Wed, 24 Jan 2024 17:35:45 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id xa13-20020a0568707f0d00b00210d8274204sm2999081oab.23.2024.01.24.17.35.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 17:35:44 -0800 (PST)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/2] spi: dt-bindings: samsung: Add Exynos850 SPI
Date: Wed, 24 Jan 2024 19:35:42 -0600
Message-Id: <20240125013543.31067-2-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240125013543.31067-1-semen.protsenko@linaro.org>
References: <20240125013543.31067-1-semen.protsenko@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document samsung,exynos850-spi compatible which will be used on
Exynos850 SoC. Exynos850 doesn't have ioclk, so only two clocks are
needed (bus clock and functional SPI clock).

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
Changes in v2:
  - Collected R-b tags
  - Changed bindings patch title to "spi: dt-bindings: ..."

 Documentation/devicetree/bindings/spi/samsung,spi.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/samsung,spi.yaml b/Documentation/devicetree/bindings/spi/samsung,spi.yaml
index 79da99ca0e53..f71099852653 100644
--- a/Documentation/devicetree/bindings/spi/samsung,spi.yaml
+++ b/Documentation/devicetree/bindings/spi/samsung,spi.yaml
@@ -22,6 +22,7 @@ properties:
           - samsung,s5pv210-spi # for S5PV210 and S5PC110
           - samsung,exynos4210-spi
           - samsung,exynos5433-spi
+          - samsung,exynos850-spi
           - samsung,exynosautov9-spi
           - tesla,fsd-spi
       - const: samsung,exynos7-spi
-- 
2.39.2



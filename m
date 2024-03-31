Return-Path: <devicetree+bounces-54955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 651F68935CE
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 22:29:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 968381C21791
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 20:29:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8086A147C86;
	Sun, 31 Mar 2024 20:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UvTGPYFE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CD7B147C97
	for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 20:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711916951; cv=none; b=t/M6CM84gWOT3+82MU1TcPn8ZLstZseTQDfc64bAB/l0q2MhE0JSGLKLWr/CuTTp+8ct9rDPEtdTsYXDw66aco2Ox1CJBa8UGJtJBNvPY6oaDfzi9+/gnUqW86BFGic0Jb1NQkF4I5EmZkrxfKYF+wKnfIt7Jdxr7T1tkipcZrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711916951; c=relaxed/simple;
	bh=3Nz5IHmPVWRwHFsw4a2c0uKZtmM9s7xJPi4nSL2SZJE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nZOWp3ANPNkG6KgoAYdpHtdPl/KR/aF4z7JXxWtb3ufRmXrr7RV7gR/4iRMmfF76RNYQ1nzIcCKd49+1P5T8xjbnhzem+u5fydHmgIMq5e5nXlrBiqoVAUE9uoK5aYvX74o3UHGFh6FpXjw8cOLRU4YUM0ils2gGvnf29lb11bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UvTGPYFE; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-513e25afabaso3711910e87.2
        for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 13:29:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711916947; x=1712521747; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BGWVh/Zr3LGFqNC/PDJ+t+m+rq2p7BOWG0ebyvpQons=;
        b=UvTGPYFEEpJ5FRdr9bqPeO4ZaiQdeIKASVXZK6jdMfKHxG8mHdFUpkV5YVllTRwmP8
         I0PuI5Lsi577hEeWjEAPphpEl1Y5q1OnDHjIIVVfNgg9gD/QMmp/fUz/wHvuEE3A+ql2
         AJkya9KmEhHv/R4FRrvCqjPE/i1Y66RF6D80JisxfkeZiH9YyxqfDvvglWsiqNXCzA23
         2DHQfc8JFa1hXoW5sxKkBxmfWMD3HqlrlnVuTYC/OHlXxSZSOY3SePMkQLEGoPGWDoco
         sfc7sx+nqFSIBRfixj4hCm/Lw6MBMkorG+3XbnzsfxWkcLM8Ux5x/jYKBC0VJ+JXVURb
         e2mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711916947; x=1712521747;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BGWVh/Zr3LGFqNC/PDJ+t+m+rq2p7BOWG0ebyvpQons=;
        b=TnA/5KAhKx3iWLJPCgcILgqwgwOLqepi6jbFd3aysxKVhkUk9T1/j76McKnhoGG348
         W4AtpUxPx6qdH1WTqbHVasxTlWLnOtuFpECaG5B/1egXsNu/znzeJiYM9+botIruLsQO
         y0CfLLSuhWvxTSZOz+BIZh+2JvntQjzkv0VjqJF3/e7zXOiRIz850r+k5LdW+wo/aya6
         nb9Uz/RDjxgqJ3hpNOR5RxhF6IYjAX2P/1k7B1wLKjjQ07ok9adGX5cUm7WCJFhpbF7X
         se2701l37xJVuv9QPOhV0hvoHZc40AZ8HE76k5TfuOTzzJDlXGYDc6mTr+iD4iahAWcY
         PguA==
X-Forwarded-Encrypted: i=1; AJvYcCUFoW2Dhtb5gQHUOoCHOvKY1ABvcCrjkx5LBNNR8DoalwPnh+hntP8ZbqTt25Bn2kZzFa/B+7Rswlbu0pPtbE9LZh+MDsv6caea8g==
X-Gm-Message-State: AOJu0YyJ/BADN3ms8NEg2xtSqbwOl4Adaw+o9EB10XEmj4PB9XKITAtz
	CJlS2ZEMQ2z7p3d4g3nFe5yVIxZtKPrPJ3jyTbu6zNmQtN5Uf1mIZHI/RWN5pvc=
X-Google-Smtp-Source: AGHT+IErgrRoQvxgZumBivM+Pb0YMQVGa5TcuZqM+SRcVE2qbrjJzJG0RqIIHvoWbmgR8bTP+gcaJw==
X-Received: by 2002:ac2:5e62:0:b0:513:fad:3a79 with SMTP id a2-20020ac25e62000000b005130fad3a79mr4662754lfr.41.1711916947600;
        Sun, 31 Mar 2024 13:29:07 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y25-20020a197519000000b00513cfc2a7aesm1237276lfe.71.2024.03.31.13.29.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Mar 2024 13:29:06 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 31 Mar 2024 23:28:59 +0300
Subject: [PATCH v2 02/12] dt-bindings: display: imx/ldb: drop ddc-i2c-bus
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240331-drm-imx-cleanup-v2-2-d81c1d1c1026@linaro.org>
References: <20240331-drm-imx-cleanup-v2-0-d81c1d1c1026@linaro.org>
In-Reply-To: <20240331-drm-imx-cleanup-v2-0-d81c1d1c1026@linaro.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1144;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=3Nz5IHmPVWRwHFsw4a2c0uKZtmM9s7xJPi4nSL2SZJE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmCceOQEdxUBjYVGcqNd2OmrDFYajZlrsDacoPO
 CuZPZV1962JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgnHjgAKCRCLPIo+Aiko
 1SgTB/9h3CyJDldBv5uM4m088XmQ8/63HBIR0KmKsg2ApUeLlsUQVFPWv6HCxXEHhmoroNSzibq
 6tblygXjqEY7bhNq3EvQb67kyg6LhARbVAc+3d/idawgHzRewcnAuylIV6WFd8nDUT8AMmhhYac
 El3My4G/fyldP7NqLXkTfQHs4HtfNnEjwjCXCeAxxccIsz+T7kMKndy1i8BUrqTk5kA/wG54jbR
 k5JMTXaOx6tshdQ0kirRA4BAkOgtir/k2M+Rs9/FPAI03mg9xiib6Mdhgee1nnns4riNinorjxl
 A03KUxKfJAma3OVCmDJoQmR7FaMLMBIwgFi9quEUEv5eKIYY
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The in-kernel DT files do not use ddc-i2c-bus property with the iMX LVDS
Display Bridge. If in future a need arises to support such usecase, the
panel-simple should be used, which is able to handle the DDC bus.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/imx/ldb.txt | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/imx/ldb.txt b/Documentation/devicetree/bindings/display/imx/ldb.txt
index 8e6e7d797943..03653a291b54 100644
--- a/Documentation/devicetree/bindings/display/imx/ldb.txt
+++ b/Documentation/devicetree/bindings/display/imx/ldb.txt
@@ -62,7 +62,6 @@ Required properties:
    display-timings are used instead.
 
 Optional properties (required if display-timings are used):
- - ddc-i2c-bus: phandle of an I2C controller used for DDC EDID probing
  - display-timings : A node that describes the display timings as defined in
    Documentation/devicetree/bindings/display/panel/display-timing.txt.
  - fsl,data-mapping : should be "spwg" or "jeida"

-- 
2.39.2



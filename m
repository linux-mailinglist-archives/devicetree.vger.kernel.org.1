Return-Path: <devicetree+bounces-38975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 572F384B05C
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 09:53:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F3AF21F2651F
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 08:53:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7827412CDB2;
	Tue,  6 Feb 2024 08:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="je3aQsiG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A51E212C7F8
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 08:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707209570; cv=none; b=IEwp7JAbTziRdoee1A4zuD3xgAUbmr24s7UZU/Q7Yx9mHluYXRIvQxx+h+qQNrxkLTCrw/cQz/FVJffFKIKDKKLi/zDH3Imkic8cI+fdGZzqJQnv1eZKSjLakt2+FQO4S7nrVTOuMXsmCjOEJhGcDam1JeapCcfQX1c41UXMejI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707209570; c=relaxed/simple;
	bh=gb3/09jPmJQxQa+5iqTwD5oAbMlzBsY/867NNayEZIs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tgjyPRvE7YgAgSImaQ56xr8H2q0/5PILWk7eku5HH6F1k5MqWL/oQrHZl7+4CkFTnHkAp5P7f661xBngt1z/d0q87WTy+PF6OENPa5LManNHhkAhVMPgAzgBBJqNghrsgy3ju+flc6Idalr/UoeqMiwlNAl02UQn8pOmuSQT2Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=je3aQsiG; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-40fdf17fa89so1727255e9.0
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 00:52:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707209567; x=1707814367; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d0QF+4HlffGHefJgdKDHp8fWrwCAllLNXyqxziFTkTw=;
        b=je3aQsiGazQCNZNe+PZOEbl9eW5biPn5f5Wdo34ObGbWi8IRUpWGVlfVCp2wBMXPU0
         vuIr3zu9TeSoXjzej09c0cKNJgdpnLAbnothQedNaFnTwidlkNh7Q/7bXFeR71QzY+sQ
         wktAIf5qmcL9uKb80djp3rDCYXb9KIhKmn9Ru0X+7+v7HfACf8oxaTwSqLFw2lVJvu/i
         b5wb88pTcF2Z0HdWbeMMMbLB31qrU8nWP4GRIrEWWCO1yXHE7qwhHf8X1OPnTgOOxUW1
         NN5tyB3uGMRgtVQaalymr0a4Vhkh29C11i1MD0Am1O8WokQcgtuN4oHyvemlVculUK5u
         uRtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707209567; x=1707814367;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d0QF+4HlffGHefJgdKDHp8fWrwCAllLNXyqxziFTkTw=;
        b=Jtekhx2ajvnKm6tdczRI9bFp88/wPBvYjYzZhrX1s9GelsXwtv82Et93Ex8XnWfymT
         xPbGTlkNw7LokHj12HTR8qilvtVOzPVf93YNAyrwboSDqCWGwXoAgCPAdyFXy9BNcSzP
         6xuZbDfuTL5fLwLPR/WqlBfKoovW+VuOLES9nTU72Kv45oPz5RNfg1fXP6Wkp/DOjxA2
         Hfvhesc+ntZVqrNJO8E8Ncg+INn0fXx47E0y8ilnONaTQdXcvgTUMdzOv4Skf/SqNd/S
         DzhrEbIcsIU5TXfwPNHmS7KqeoBsdHPmTRvQLrWmwai+0fR1RfR20Dwvy6DGFXhfJv5b
         rHiQ==
X-Gm-Message-State: AOJu0YxzZ7EUwHK2rZlPLZSx+LJEUzuvkdAa252t/MHUvNQiRItUlvNl
	U3qVPn6N5OSwrcBR0p0JpPMnzzmOgeBehbtOEW0PVKqcPYCE8baiki7csLXiGeg=
X-Google-Smtp-Source: AGHT+IHC6aAcZXDMP8gtfL6xV0f2h4mOHWkxbV6phqY/eiIZshjnTyf0+T79bpivuePsboqjK7az0g==
X-Received: by 2002:a05:600c:3552:b0:40f:b69e:aa1e with SMTP id i18-20020a05600c355200b0040fb69eaa1emr6080174wmq.13.1707209566865;
        Tue, 06 Feb 2024 00:52:46 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX34c5jWCHAgfG586e2HK612qLg2gCXlE4wjCIoYzWl3tcQpCivQug2snTitLJTQHbNt5mqHrqdY2LX9UlZpyKlmx7yk7+WUWrIHaaMyKd1OZ1WIsbuaexKggfZj3/m7VNeWa2LtqbxvwPCTaKCS16sVVf0lgTrSuq9j3gNkniYUVS80Af4jhFO393vVC2SX/dCVqJw/Fzi1DcQuRmv3s4Ux5J6NkakJf8jpnXcSyYFlFpnuyGkpJI4Hdk0aXwjsilBnRrByZKi42Lx7l+dkM57l3RSopzSEkh0uEMr8tiWP94RnmrDBMvN1i2mrETQzIcKhuD2G2Ku2H9VUybzQE+uyNwiutMihV4d4qsTtbpbtZbtX9JUhvzATyc+oL6OWcM4yc7Rgc1s8Btx4hVijcGR7lD9omjj5Egj59rkcixqd5u/ZiZQbpzi+BZ4xGRU1NBcv+VPOXN6E+aHgR7iqRUzWRd0FmmdIY058AKrqi3xm/LGphYKL9bdV4sQQE0OKWKp4byiTlRCxurauI12xA9rPsbQQNRTkzo7XKFh4TpOd6z+AJ1LEFTmUZaEg+xb65hxNOYpLrPVYdlQ2w+uORRBqg==
Received: from ta2.c.googlers.com.com (105.168.195.35.bc.googleusercontent.com. [35.195.168.105])
        by smtp.gmail.com with ESMTPSA id z10-20020a05600c078a00b0040fe078fb03sm1221591wmo.32.2024.02.06.00.52.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 00:52:45 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: broonie@kernel.org,
	andi.shyti@kernel.org,
	semen.protsenko@linaro.org
Cc: krzysztof.kozlowski@linaro.org,
	alim.akhtar@samsung.com,
	linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH 2/4] spi: dt-bindings: samsung: add google,gs101-spi compatible
Date: Tue,  6 Feb 2024 08:52:36 +0000
Message-ID: <20240206085238.1208256-3-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.594.gd9cf4e227d-goog
In-Reply-To: <20240206085238.1208256-1-tudor.ambarus@linaro.org>
References: <20240206085238.1208256-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add "google,gs101-spi" dedicated compatible for representing SPI of
Google GS101 SoC.

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Andi Shyti <andi.shyti@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 Documentation/devicetree/bindings/spi/samsung,spi.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/samsung,spi.yaml b/Documentation/devicetree/bindings/spi/samsung,spi.yaml
index f71099852653..2f0a0835ecfb 100644
--- a/Documentation/devicetree/bindings/spi/samsung,spi.yaml
+++ b/Documentation/devicetree/bindings/spi/samsung,spi.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - google,gs101-spi
           - samsung,s3c2443-spi # for S3C2443, S3C2416 and S3C2450
           - samsung,s3c6410-spi
           - samsung,s5pv210-spi # for S5PV210 and S5PC110
-- 
2.43.0.594.gd9cf4e227d-goog



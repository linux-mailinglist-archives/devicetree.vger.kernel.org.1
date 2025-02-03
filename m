Return-Path: <devicetree+bounces-142663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E686FA2607C
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 17:47:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9DE6B7A17EA
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 16:46:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2552E20B207;
	Mon,  3 Feb 2025 16:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="X0NZIPkf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA6CB204C23
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 16:46:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738601216; cv=none; b=Bn7wqdDrefBV7gdRi1D35P6WjbEnTYZdvH4gmOJAF+Wlk07AwlyQ5B2z07GpQ8A4AJo8yqdWcE6Rb1OI3lBiw60nKbnyV/svQX0FAeIK9sm8/PcTcbjfOdcTOjpzGO+jmHu830cX+iMNQZbGijQ4G1rIEhtGze7l6p4rZuCImxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738601216; c=relaxed/simple;
	bh=AzdbwsLGIxqw7TQE28+Rpu8RSV6L75Z0joF7UtUReVg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LaZ9NxKgH8J+YDIt14dG247f31c4dX+wWLgcstxxuZuMHb9T6QLlMfe7N+vLxh9ZBz9eHDpvNEdsMMXvvGMJgbaFwytAZPU16u6PhFhQE3F/KqCbYeBk5h976jU7TT+hQxKFW4VGNk1M11wW0izWlxh81rHO8pUvtmDCVfC/AwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=X0NZIPkf; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-aa67ac42819so695553766b.0
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 08:46:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738601212; x=1739206012; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CXimI5SLiQiBHkqFLm5+Ukj2WZLR7LsHxzJcUyfhXrU=;
        b=X0NZIPkfrt3mqwYRioKK7BzEDho7n3ED3ADf1C5DMg6t42hdIic36tE68qDzThVQX2
         QL9ID1cBlxQWblAf6QgkKJbOLgFPK7aTxrgD8YJA27xcgvVyKcAS+Ep4YojvzrTAHCDQ
         hjAunfv/wmJUjGvMEoaglUeEoJt5r6OrT9XNt1st6sZE99BCJDeHH2ufzELomx9x4rGe
         OIcxefF+DhGA4DtziZ0L2e4BeVJg3UkNHEaWlNSZwzCOVy1Py8Ey8ONeWLWIUFaeqD/Z
         7NCCnx4Zj3RQc0CK2LJAMCwGEY2SCOQSUK7csa98t8yuKQqaaEcmm+RPMPIvsFK0oFw2
         S7tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738601212; x=1739206012;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CXimI5SLiQiBHkqFLm5+Ukj2WZLR7LsHxzJcUyfhXrU=;
        b=PmTjEFUFkLoDTgEYqX0BD5IvuIGsY/hHBdxStVpRPclkqEDXGLAOzQB35YhP8ayt/6
         0UYXgOOaGuQOGRx6aF8zwWj9hYiwiJtDiyltwkkNJlQbO54HP7XrOdS0vCr1Oagjb4il
         RF+uKqgA3XxPggGdKaNE/MoVvSHTQzBX1isOEjA3UCtJxaaxQPt2XQWEOruWWY99N3RI
         wOFYpdk6FPOKn2HVTgT890WTNHvHgEsFrCUiHzaioFFwYEJFfR/yg+3gF7z5V3mSZZ9U
         K6+UFDjuJzjfecdsInrZ46moHRyP9RJwVUWPvjw7mAlABZaMdIxjgiP+j8Ooh0Jl31y/
         dP+g==
X-Forwarded-Encrypted: i=1; AJvYcCUh5AA5Hnj+XqZlB6OxdHqgw2s3tnSy11Ky1J5mK9Sh0U7O1O4fhpuv2ALKTO2hUcoYnEyWFynX0h0j@vger.kernel.org
X-Gm-Message-State: AOJu0Yx72oQDcRcz7TXXOc7KycLDUcm5dXLpxEHY2o94/ssblSHhy1jd
	tZPZa6yDJE/E9ziauf8nB2ImgQgXlo4zn+s7STmbmA60lKtY30ztAoxrt9u8hYA=
X-Gm-Gg: ASbGncuBAXBX3vvEvepgpar7TJNDrxEuRxXJAlBdqXaMoKpSlCU1TOSi1Q4/hEwdec3
	/oGmduxuMNi8mKPq/wj1di5Xrq921hZmsIYCx+7nI/JXWg03I33N0wnu1kpDajhefeL2tvVGvg8
	6ODaaqikubMqly5QCStUzokA38vns8wdLNjL+/9It8NTXJDt5f0GKjSMwIAuWRhOqfrujerYQdY
	z+bpAnsAuRAne7wOmIIADY2efSdKTIqRzincP7ZAJ54lT52g13kpCd7Orq8dN81PfZC8AxGjaiA
	qLRapqFU95omTrSYn0Hmr+gn3POImrNWHqb0eq6Yl9iaXim678X0ve3bsg==
X-Google-Smtp-Source: AGHT+IHXs4AvC8if41Og48yMOr1zBX+SD4uou5rx2L22DfDb7S64uAk44ZOshnu8uxmk57Ks/HsakA==
X-Received: by 2002:a17:907:7211:b0:ab6:36fd:1c8f with SMTP id a640c23a62f3a-ab6cfdbdd99mr2830433466b.39.1738601211988;
        Mon, 03 Feb 2025 08:46:51 -0800 (PST)
Received: from localhost (p200300f65f018b0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f01:8b04::1b9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6e47a7be3sm778193666b.20.2025.02.03.08.46.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 08:46:51 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/2] dt-bindings: altera: Add compatible for Terasic's DE10-nano
Date: Mon,  3 Feb 2025 17:46:36 +0100
Message-ID:  <8714f54eb78a2bacf508debb7844abfea78767ee.1738600838.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <cover.1738600838.git.u.kleine-koenig@baylibre.com>
References: <cover.1738600838.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=868; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=AzdbwsLGIxqw7TQE28+Rpu8RSV6L75Z0joF7UtUReVg=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnoPLvDKT0DgpoDQfq1jscOPJ1mvTJ+mIVfCZPB YKKB/SkLP6JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ6Dy7wAKCRCPgPtYfRL+ TicSCAClaFMs/fLDDEylCkIBwk1KoS3U9eDIWGGGfVGmTc2gRVY2gso7FI/tmwjoujp4TMjMxak l/EXRrlegKL7M7vyLGHpNBt1z3ecqobNbrILjqAWyBEMSvlW1UaW2dkjL6pBfs84B923wOWe5XK IDuGVrEjNgJG8g9eD2Bkn4hJHO/KZVUdTQgfAHpFWsj84P++0bRnYSFuHw1rfZO/xUvZMBRNdHQ VT+xsWByp3L/toM+4Fd8uTXPfP0JapVuvSYXT1ot50uadKvpvTB1nuW1Q3TZU180CIhaA4Q+19I bHN+rxiTeHhsWhfjFbSppSPQNsbjPZObp1lujBgN1lCzE6Au
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

The Terasic DE10-nano development board features a Cyclone5 FPGA, USB,
HDMI output and an Arduino compatible header.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 Documentation/devicetree/bindings/arm/altera.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index 8c7575455422..30c44a0e6407 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -47,6 +47,7 @@ properties:
               - novtech,chameleon96
               - samtec,vining
               - terasic,de0-atlas
+              - terasic,de10-nano
               - terasic,socfpga-cyclone5-sockit
           - const: altr,socfpga-cyclone5
           - const: altr,socfpga
-- 
2.47.1



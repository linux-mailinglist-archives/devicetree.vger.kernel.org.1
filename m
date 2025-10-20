Return-Path: <devicetree+bounces-228940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F86ABF287D
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 18:52:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E16FA426A99
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 16:52:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBE9B33033F;
	Mon, 20 Oct 2025 16:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="2d3D0YC3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F7A32F76B
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 16:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760979122; cv=none; b=ch2QamYimiaVlKklgjWdSlgcqaEXSwTqhJTz/TISb299Tf1pQBK38XSZUR99NyOmM6Meuzsa/GdEZl/lYsWcPGDqZCc5FgwP4cptzh88YRMS4GQHNnJ2tpwuzFu7GU2sNBiUmFqVQUoFVJtcsQeRw4MLitYF1Lz5MFU1lNtWzrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760979122; c=relaxed/simple;
	bh=gzZET6mP2OucMjDQ4thYViOeZ8/OsV2OQsQvxJj19l4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=n7uOvOfzWuGpLe4Xlb+E5BDeJ+68zhU5Yl8U+wrv/7z9tq5569EbNR5whYo0JJH4Q6cD6eU5Mt1hSY1B2qbTcZNGoflPPHDQw5I31K6MwVR4x47hGogPcuB26BE1az6nfzIYMVylOgGKE5lIlIWS1Z3tbCdHCEZOXBaSna2YLGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=2d3D0YC3; arc=none smtp.client-ip=209.85.166.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f54.google.com with SMTP id ca18e2360f4ac-930cfdfabb3so281257239f.1
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 09:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1760979120; x=1761583920; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GAFHx5Fe28+JucgqjXAxBLPfwtGRK1k39/wAp21/umo=;
        b=2d3D0YC3K3FJP52bQYr6pQ6xtsimF+G9blY4Uwb3rne5njWGKZYidz14jLmTgx35SE
         X1UM8sCtqPdT6O3UuI+fzsGAQfzyEzEEn1VkrpkGsBTNPx4aWPs3y9R9ZfFm4ukdtP8e
         ZFyy/bSPrh4joBEe/zIp86kJjkar58fwzeK9ewZYONp8BtpS6pHhAdqyMfuTFWpEMNUN
         6FcsKWaLclMDpxnsvYt2n5fY2ufVFr0VYwuoWm99AVaJZdedHMYB+wlTfpINKmgaImR/
         9lPEsp2DKOCwTFRp4t0olR/2Vpq82fT8zeuJOVSyR5WIOm0k95oN2zsCM8ILpbWH7F4Q
         47mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760979120; x=1761583920;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GAFHx5Fe28+JucgqjXAxBLPfwtGRK1k39/wAp21/umo=;
        b=mZ+tiL2elr1TCYwk36YN6HDSpJk+cfFhvttlkLI7lHGuhMz3FQohU2gZQxlCMbfhLd
         OazFrpqoD/rup/Il9uYBfKwro/qqOk5enXVzXNid0Lxa9X4+Rb2FfjltHr8fLSd9UZk6
         Jh9/pzIjGsoT/4itgf4ETNO/R6kp8XceF3WSVjfF6FK6KV1XRcVgcbBW4FqCPynfVwBf
         GUlpBqsjlaj9VdkCe3cOFZ3os6obx9Ec+z+g/Ann8woOeXF84EyzFbyuSi736qykwuHt
         y1L+w2pnM093uoIu7y6ZmRCOsGYiJfQ6IP8KOp+X74o7WMsPJgoX/YtmMDeGjG8eSmoA
         ENLA==
X-Forwarded-Encrypted: i=1; AJvYcCUv8FSZpfanqs0u66WJM/Z4fcyEdlgxEsAOrD6rJDk23SZBGiuY6QW+LXR+7ap9iwxEyMMOYhyWgest@vger.kernel.org
X-Gm-Message-State: AOJu0YxJGc38WxjLypAahvp9c80AKBt9qbYJ5HNzCxwTO7wyhWVtQXqY
	UF2aNR4iLYdAE/DSbmNL+1AqaAxMgA2aS9HigEfNaM7Nq21MJztl5t2Cw3senVuFrdE=
X-Gm-Gg: ASbGnctHNnv1nFkKypsORUWpZKjdvnQKHo5ydFD129L8jitHO5Dh47T78sZ8GGgv/Jz
	+Dl9fnwMqABJDgy4LK3HgzZBRHu82AN30gS9jk52rFX/hRn9FaV2gRPTUz+gtjkzY3kCmjwVoFW
	AQnNYtJXgkwREi2IZCkS1dKfL+pjgc1afYGHy9SVfC6M75DcpCAXWZUjjMmeQRFf5LirN9yc+tz
	i9MYNXUHTC2+u9uy8uA+W9EH/FV6l9baKzje0n+Vmjk3mdT46AdmV81g2ejm9dQ6Kxnp6zAuv4U
	FfBJnwvngoGoaHEDEj8AtRJtGa6D/FQrIvnNdQDAyfQDL6RGQNrt9Se9v7qOm7YDVu8bBemkK5F
	4HiutPwesnj+yth3JwiS/NreX8DhLoiZJuHiBzqWDrQPcU3xTg5YCIYqaygj+JjOMDc7M+RPNZ6
	Nbput6vvvhxshGdUlMgbA4FhnxRoAerMHhS0TU3mYe3SaRlZF7pkTX4A==
X-Google-Smtp-Source: AGHT+IGrysi/n+6wy3sDQX5W8PX80X7sxp0qMRXdkSjXbUhQItP2k8/GDMxk0YCbp0Wy5FwbdhktFw==
X-Received: by 2002:a05:6e02:3e8e:b0:430:ce63:4180 with SMTP id e9e14a558f8ab-430ce6342cfmr168487305ab.8.1760979119873;
        Mon, 20 Oct 2025 09:51:59 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5a8a9799428sm3116783173.63.2025.10.20.09.51.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 09:51:59 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: han.xu@nxp.com,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlan@gentoo.org,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-spi@vger.kernel.org,
	imx@lists.linux.dev,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/8] dt-bindings: spi: fsl-qspi: support SpacemiT K1
Date: Mon, 20 Oct 2025 11:51:45 -0500
Message-ID: <20251020165152.666221-3-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251020165152.666221-1-elder@riscstar.com>
References: <20251020165152.666221-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the SpacemiT K1 SoC QSPI IP to the list of supported hardware.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml b/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
index 0315a13fe319a..5bbda4bc33350 100644
--- a/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
+++ b/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
@@ -22,6 +22,7 @@ properties:
           - fsl,imx6ul-qspi
           - fsl,ls1021a-qspi
           - fsl,ls2080a-qspi
+          - spacemit,k1-qspi
       - items:
           - enum:
               - fsl,ls1043a-qspi
-- 
2.48.1



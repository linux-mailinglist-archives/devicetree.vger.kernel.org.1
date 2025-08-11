Return-Path: <devicetree+bounces-203470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D1169B2186F
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 00:32:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4C6F1A20EF0
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 22:31:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8210A21ADA2;
	Mon, 11 Aug 2025 22:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GdN07UCK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B81411F948
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 22:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754951458; cv=none; b=rBBlbbqfstahTTttmjrCmRHslxFqVUNs3VxSk10wmcED+AstY6tvjFgsFCGQwawDzkw5knJWDvdv8N3QGWlwXpfMgNPYfda22XDIPlcyBztkQn6kURg1pxcLtvP+86sIBlPvmhiaOthu1mBpIVo4xOxjaRT97iZdBzytlGF/suE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754951458; c=relaxed/simple;
	bh=GPqLNQYmGgldngVoz0uzCbZ4RuS5lu8mmuunEVAfXdQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VJVToZIBLl+CdOimsNzXGuF7q1ooL8v//sfITR+H73JRtWhT2UZhJh9X/QPotXIbX2lZf3etwtkNP+D5G2CjIxL/pIrll3mHTG1kwhxDA/9hEpBNa0TQcuDTNdJrXbJ9u4Ms0pKZBQ4SClwvCc/+puiKtCSQvFurTilNTqaqNhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GdN07UCK; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45a0dc77a15so7045945e9.2
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 15:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754951455; x=1755556255; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HIChLFJXUTptU2roabulec0iIj7wIJeqA5HDjOWIy78=;
        b=GdN07UCKs+jXXdTnItRn6dtNuCLj03sezobXMVqUbrzlaeL66jPSQOBJIoLB/5WhKI
         vFTgekBPfqyXNd/2ANl1PtpbR3ys6RutwWV0/vezXm/Ss5ZCJ1AD/7vm/7tBsgeYPBde
         lagkV578Qe5M4NEYpfL4+qr0pfVv/ydpQbgcueY0j6UJfp31R7VNwoy17LJ+zhnVHOVq
         XlJtd65ExVMKcwB0juhF3CoGli/bd7XVZFn3ISkPr1EmnmNris59ZKFbB2BtLa1NqGmy
         fdOU5/9dMkEyfasrCKkOAqwey68xTrqoMAfXL0IJX3RbdEGjdCG5u7MgambqONXFndZ5
         p9kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754951455; x=1755556255;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HIChLFJXUTptU2roabulec0iIj7wIJeqA5HDjOWIy78=;
        b=czlfWrTswPKvqHBSxvlspT+voa019yNCz+ZIJmHMa85fE+YjtwfNlJYGokoNHH46qg
         SI+dZmj/1rfijLipBPCOZbig6VqhKCKG+pbRZyNlVJI1aXyiJA2Mc4lKOqFXGMWQlTlv
         p/TMYBH1EkEOq0KwW8CERx+n+nfif+vGT2KfpjsdDbVjrBKc4KVtj2ZRAJuDUBVnt4Ii
         Ta8FnqZcpZC6zFrUMj3Qgn5NwFJD17uR+6RNFdsd1OrXrVtfKckFsfqXbsagfTUsuW6O
         j2a0j5AFB6RQ7nt8rfepnURjijdaUdqBzsJfjlxEBimYIowATsEucxq/2ffB8zh85ukW
         dWPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXVz+bpu3trDP/ZsmgQb9Ro92QuV8iNDqoqWjhYN42/LLU09K64i00uZMpvvHvz/sE0MIRKYckqzEnx@vger.kernel.org
X-Gm-Message-State: AOJu0YxmV3FdG3TjjjWHzWTBk03niOEEBA0BinTiYaWZqzFMRYHhPT4n
	Aeid23Kcl5sJVKTjLolGn6oyD7OdrXVq4R2Dqi9H0hxxa5jXZk8D4VdGiw6FSE164SujAKJipZn
	nNJNp
X-Gm-Gg: ASbGncto5bMDhD6JcpHuj3W80ar3JXIm3nXoz7A0u3q5kYIgbfV/iimnD4I1FIq7f1o
	d2gKnULZEradXYpsqqhKp2bXT0yZ4708MqbsuYzSJ0EaTmouxVe4GbDFe4txdN7HyUaY+pKqNUO
	wUMpsxJSPxQmC08WOBhbJRaiUaNfamRF/VsIFtHT6O1Ssv7lIrrYzNVI9uIMLO7gI3dffoxFZwr
	PsOvj6GHXg8YGNfdklHmo7YUBnGFmtp6KNkMiODcr0Gk4pyQItC9z7BB+GgSPLhRQKlD3MIIai9
	blkq9uRN6QHr2P/tTn6bEOGWGfHCPePDoGmfpGYC45nAKEyhtVY2Pq1jPJdiGG5CIx6JvdFgSZ5
	OyBl8/AkVS9jwhyL77KhsAXYgWwFsxpr9yFmMoWz+cZLIwTeM
X-Google-Smtp-Source: AGHT+IE9a3RQjvUbfMWCMwyystXXfoGplC7a7Aahfwg+Kt8MTYEed70a5T7Hc5VGmEGnzR1qkVdu5g==
X-Received: by 2002:a05:600c:4f8f:b0:450:d4a6:799e with SMTP id 5b1f17b1804b1-45a10c005edmr8980105e9.20.1754951455077;
        Mon, 11 Aug 2025 15:30:55 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459e5853104sm271557715e9.8.2025.08.11.15.30.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 15:30:54 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: ukleinek@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Frank.Li@nxp.com
Cc: linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ghennadi.Procopciuc@nxp.com,
	s32@nxp.com
Subject: [PATCH v2 0/2] Add the s32g2 and s32g3 FTM PWM support
Date: Tue, 12 Aug 2025 00:30:38 +0200
Message-ID: <20250811223044.3087090-1-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The NXP Automotive platform s32g2 and s32g3 have on their board a
FlexTimer (FTM) dedicated for the PWM. The same IP is found on the
Freescale Vybrid Family and the i.MX8 SoCs. However, there is a small
difference with some registers not available on the s32g2/3 and 6
channels instead of 8.

These two patches provide the DT bindings for the s32g2/3 compatible
strings and the code to deal with the FTM difference.

Changelog:
	v2:
	 - Merged the two booleans for the regmap holes check
	 - Clarified why this is needed in the changelog
	v1:
	 - Initial post

Daniel Lezcano (1):
  dt: bindings: fsl,vf610-ftm-pwm: Add compatible for s32g2 and s32g3

Ghennadi Procopciuc (1):
  pwm: Add the S32G support in the Freescale FTM driver

 .../bindings/pwm/fsl,vf610-ftm-pwm.yaml       | 11 ++++--
 drivers/pwm/pwm-fsl-ftm.c                     | 35 +++++++++++++++++--
 2 files changed, 41 insertions(+), 5 deletions(-)

-- 
2.43.0



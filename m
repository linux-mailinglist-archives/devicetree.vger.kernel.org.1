Return-Path: <devicetree+bounces-253516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C4BD0DD25
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 21:05:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 033D3304C6EF
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 20:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E1642C1589;
	Sat, 10 Jan 2026 20:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="MHSbdFx0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF5392BD013
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 20:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768075494; cv=none; b=iAYYoCxhxK69F4TDjl6j79R972V5aX1LmhoGnr3HhHO76r7ZQYN65BktX45wnuG8lsYbQxKugJhS+PhS0+T6Nb/ZtorpNhzyE7POjjW9BUxg/DWeebBhGHFz5QTRGvEpBR0v3ZQxOZkTUghMUhoLGvfrQMw1LLkZOUzkAOCPDPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768075494; c=relaxed/simple;
	bh=P5tg0GpXg4+JQlOWogzePFD5Z3ui1RK/C8bD+webufI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pCr5icJTxDzv3A686OxELWNqrzALf2N5lwMVR6J3lYTulbGZEDPS1/4kO4QAeGeb638aoWtAFFR6ElJBD2DoPQjB2vmcdjgZX5rldKqAux0y8Sp6g+njnR80QDTTAWxK7OitKG1ykffHVHRECBhjPi7/MlneQ84Yqr53xJdwTI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=MHSbdFx0; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-64c893f3a94so6567176a12.0
        for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 12:04:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1768075489; x=1768680289; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7ssjVYpipcbS61pLDGCrSHNTsxktheeQ8WYFF+/B4GU=;
        b=MHSbdFx0t4DD407jIdxaEGqx8jLH/CLHTzNOlP+Lzb+3WOxpe+Y5/tYEBz8vcGZhb7
         KB8b6uB3pQPEHsI3X7ocl7NZV0nVXqZvJBDUvsaVLshvzgNr+lQ2NhWkjTOOwggdHoMM
         bz9JaGWjysrgwuGNwEXISMPa9uzLYoJO5ac/8NlbLoHtX6uD1l3NgCDPV8xVlpLt4ywn
         wyZybUJnSSLT5XNrKY+xcp5ZoTo4JPFrTG2vv2cBZHgBeU2F42lZ+nWocoxIAS9au78p
         9FksN46HBk/MR5wcotnH/iKbYoUEQ6wmAqc60+XTTIWP7Lqrib3T0CWnVc+woKVYL3Tk
         ciPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768075489; x=1768680289;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7ssjVYpipcbS61pLDGCrSHNTsxktheeQ8WYFF+/B4GU=;
        b=UG/zQW/Z4BUWH6tt4ifimF8Q37ltcLPxC/F1S3gGCJGCIUJL1dTK89amXVY0cd/cBo
         UXFPNDYtusGhzRNX0kkzO8WseocvATswNjNZZP0k+M5tg5L5a7YVyHHuGN+zPPdU3b4k
         AeqWU8K6HwVv7Q471n0N/j44Sd9PtXO4FVpMMACnoRmfRqK7idMGSCSDvp6NjPfgyDog
         dG8Th/zRNPhknkM3pxnz1nzlMur9/OZ99w9gXT2gAcjxYFhshSD/jn/8zGn2UmQYIZ49
         jDNTShITjWT90ZwXGM/ACRBh33u2frIbm94ovYhxA9dpMiBp2DxVpIKE9Bw33ojCx4Cg
         uxbw==
X-Forwarded-Encrypted: i=1; AJvYcCXYzUJYJNUMSDYZBj++Mj3NafkF0XCIogC82uOtYVRHkStdJrTMPZ9R6VPGobCk+L5gIrbPtYMbZkZJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwbAt8pm+a/kKUGobF1BcTXj6WFXlJvSnCpVlTzgwhRZOfubIMk
	nA4X6lDfhZEz5oOzX/2Jt5WyhtEqO8Mq4ehX2+vpRppSoDB4f1mwveh/xQLKjw==
X-Gm-Gg: AY/fxX5s09kOr/k1Fuj2ru3ov0OM6pL3AV7RPA0TETTrtMTrlTgozguy72LPABfgyd2
	Qp1c8kgGb334ikWp5hknueFXJ0utubElVdUgtru3Ga+pklBj24n2wiFKDgCpr3DhHxoQe9oXPp+
	6MF6sR+xIBxftfDmoyVxulNa3Zab2Ey59cbrusMpTr9egr+oZFOpPcrBCfmX7j26aL/qoEJLrjg
	kpiqmhOglG/Wz489CGn26BDHQ0J7mg12BipjuRiKdbP21vXhOrEb+Gljb0qwB1194sMNlVNGyal
	nMVXpyh5GuVgU+qZI+TOiYpOzLUHJqKEap+2ggWBcfq2gBWcFILREETopM5ZGxAW3EkVMD3wbcY
	q2KDhrgjI2szz+XWBB9F1t7gxm5/RdnNVVzXL8MAdMfWtFF/7d0AtSXIn58ycFxUZmSEDEw6KSg
	S+gmn0urj0nQlkW7VPnbfzf0prIFu0oW+Xo6dQfihC7+sW5Hy6lFQbYuZ6Jm1mz287CvTgmz+xE
	+k1qNQlZ/a6MZ7SdBoyFZFgbpCZFc7RiZem9N6ghaI=
X-Google-Smtp-Source: AGHT+IHgSf4RPCvxj7DEDU0E/KAOwWTEok3li/D8J9Ibm4he0Pm9LnoQAzAl1Hd3E276oW9oZh/Wtg==
X-Received: by 2002:a17:907:744:b0:b3a:8070:e269 with SMTP id a640c23a62f3a-b8444cdaca3mr1447948766b.14.1768075489016;
        Sat, 10 Jan 2026 12:04:49 -0800 (PST)
Received: from blackbox (dynamic-2a02-3100-af95-6f00-1e86-0bff-fe2f-57b7.310.pool.telefonica.de. [2a02:3100:af95:6f00:1e86:bff:fe2f:57b7])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b842a56c552sm1483591066b.68.2026.01.10.12.04.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Jan 2026 12:04:47 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	adrian.larumbe@collabora.com,
	steven.price@arm.com,
	boris.brezillon@collabora.com,
	robh@kernel.org,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH 2/3] drm/panfrost: Add Amlogic Meson S4 integration quirk
Date: Sat, 10 Jan 2026 21:04:25 +0100
Message-ID: <20260110200426.1461575-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260110200426.1461575-1-martin.blumenstingl@googlemail.com>
References: <20260110200426.1461575-1-martin.blumenstingl@googlemail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Mali G31-GPU on Amlogic Meson S4 SoCs requires the same quirk as
previous SoC generations. Wire up that quirk by matching the Meson S4
compatible string with the existing Amlogic SoC data.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/gpu/drm/panfrost/panfrost_drv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
index 7d8c7c337606..431470af0f36 100644
--- a/drivers/gpu/drm/panfrost/panfrost_drv.c
+++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
@@ -1056,6 +1056,8 @@ static const struct of_device_id dt_match[] = {
 	  .data = &amlogic_data, },
 	{ .compatible = "amlogic,meson-g12a-mali",
 	  .data = &amlogic_data, },
+	{ .compatible = "amlogic,meson-s4-mali",
+	  .data = &amlogic_data, },
 	{ .compatible = "arm,mali-t604", .data = &default_data, },
 	{ .compatible = "arm,mali-t624", .data = &default_data, },
 	{ .compatible = "arm,mali-t628", .data = &default_data, },
-- 
2.52.0



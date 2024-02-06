Return-Path: <devicetree+bounces-39133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E00D84B812
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 15:38:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD25A1C21F9D
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 14:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BAE2132C36;
	Tue,  6 Feb 2024 14:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="qsGMkixy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A96132C1C
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 14:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707230282; cv=none; b=fHsytyMAmVF+ZDMS7u7G6K8euWve3Dd6FGMqnMCkkjBlY2F9tMhnUleWWhi1ZgLO2KO7EWxp1X9XnO+RfUK93IMLC+XHBZANS7zRqEfMeDGhejS7surWU+M7DVGOmv0B6MRURao4U7qZ4YOu0OW14KW2bOUfCw5b9NQf1r5o9eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707230282; c=relaxed/simple;
	bh=xtB3eH2nc7TbBl5//VOpSw/2z14pXQ/9Y8lHi5/2iUE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=X0hV4n9OHJcOazOdTLVDeBgH07ySpnjBZjiWoHJ3Duw5l8oIrkj20+uDvmBKeBl+UXSMiK54vWsKvYGiwZEoKQGiHzuIArgiimd4NyirTIlJTDXUG6pSPJoUOLH1G8cBZ1esoxClTZnJoFPYcpjzaNvae7Qz2+BkzWuLvQgfu5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=qsGMkixy; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a383ea0dbe4so53955866b.1
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 06:38:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1707230279; x=1707835079; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9NBgzZuNQ3XMEUB9jdo795d+Eu/PODGnrBF33YaDmlo=;
        b=qsGMkixyaX0y7ygfx4CsJcsLyjvGJ08Hc88xHf6lCGFLwDfaX/AsFwUNISR/3u1qr0
         1wR6f6jeDs3/Ej3xenpls0RmMCJ9uiRNLzCa0Vdm18lWkl2WYNmwvwUZP+RK98+nR1qz
         pwvBBUruKviPEnWBwM7wnlCIeNKpLxf4ZLy1ELCYkb7jDRcDLbBdaSNNqhFPJvCCABhY
         fQbPYUdsUrl3FnuWyOKtPeoXSwK2ytcT4wfPjUXJb18BtOP1UHkmbrhj7fH2ZzPknX5C
         8aYItpOv3VDhK2yaXaN6AkgFDgXQW8ILbSmPswp4mS/4dNAwrm4WK8JNthjp90Mn6LWH
         VSVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707230279; x=1707835079;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9NBgzZuNQ3XMEUB9jdo795d+Eu/PODGnrBF33YaDmlo=;
        b=Grjy69+Rm9j51nsSgcge9+8nA/duJCvGrQ9uN9fmgzBMHl/qjOxd/Q/hK/4Yebe3UI
         PfdwNH+n/8r0Kd+IG2YrGRMqDyFPiynNRlwQW1AJOxYJ+KZ0hq1LzTOGDY/Nkw1nrSVn
         BCbpXaw9+3eWiPT6hhsMwguv7JQHL+vED/oVhs+Y1YbPLrkYoMmc17oL+B1vGSaRr9lh
         mhFxpKV4ZVGsYH8yA8igke16tXDm0OZ3Cl1E7kcOpksG0d9cLjKUf48bY6D2Lo0bDKac
         6w1XSgxeI81+G6/jds6AuG/A1gerQIjp3MJ9504l6DDsJIZMHVo2Tct0Nax1cExhokCl
         dFAQ==
X-Gm-Message-State: AOJu0YzyoCt/VFThCTA801tbl51ByzdHobJ4gCLCZQK0BJYe6Gptk2wS
	Pp0S794qdUWh/8hZFrzsTmLZaT54I3cZuSJjKNZnxmyoKk7R3HQVWIUlG7R9T/Q=
X-Google-Smtp-Source: AGHT+IGfDZNzDhZuGgrHFiDW0n00Aay00UsysXT9f8og4QdjPZfVrVGEK3zbMvScDpk7GfwUUzj0kw==
X-Received: by 2002:a17:906:2e8c:b0:a37:b496:f0ab with SMTP id o12-20020a1709062e8c00b00a37b496f0abmr1833327eji.14.1707230278865;
        Tue, 06 Feb 2024 06:37:58 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXg8CxjHULLVpZPgZYWeojozwzAg92plTJtWd81a+UmkuTg8Qx3/8fQJBUIPRiYarOw0M/r2WrIaR3HQHuAV/Hx4TvqSIXWRy/pfYfrIN1sbHW5GF2QtBQOxtgDV6judqjqkCBjAllXbA43szdyaoJysbOJPfjXmu/SnFPi5IcitGSrbRMco1K4ouSinHqmemKn5L5H4mfA5sZAuu0XdtwwoDa037B7f8MY7GxcJ4aLYu2Fg4R31HygCq9LNxXuIePFzbANj4TJlfaoxKnpQaIxCDkoAuXab0E3XO8/h5i39vD4p5R3Efipux3/xxnfyTf5jmTLiO4EC/stLIqa5dm/H4/llKHxmPXulRSxsOrKhVE5ZhRUtE148PwUnBKN+mi0afsVBkpnZnyzGCMNilcpjeU7TN3I0lD5hPs3HBZpurQUX1iR
Received: from blmsp.fritz.box ([2001:4091:a246:821e:6f3b:6b50:4762:8343])
        by smtp.gmail.com with ESMTPSA id e22-20020a1709062c1600b00a37585d5dcesm1224418ejh.51.2024.02.06.06.37.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 06:37:58 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Santosh Shilimkar <ssantosh@kernel.org>
Cc: Andrew Davis <afd@ti.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH 1/4] nvmem: core: Read into buffers larger than data
Date: Tue,  6 Feb 2024 15:37:08 +0100
Message-ID: <20240206143711.2410135-2-msp@baylibre.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240206143711.2410135-1-msp@baylibre.com>
References: <20240206143711.2410135-1-msp@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The actual size that nvmem is using internally on a specific platform
with a specific devicetree may not be known in the consumer code. The
maximum size may be available at the same time.

Allow the use of larger buffers in nvmem_cell_read_common() by setting
buffers that are too large to zero before copying into them.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 drivers/nvmem/core.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 980123fb4dde..6fa061ede605 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -1806,12 +1806,14 @@ static int nvmem_cell_read_common(struct device *dev, const char *cell_id,
 		nvmem_cell_put(cell);
 		return PTR_ERR(buf);
 	}
-	if (len != count) {
+	if (len > count) {
 		kfree(buf);
 		nvmem_cell_put(cell);
 		return -EINVAL;
+	} else if (len < count) {
+		memset(val + len, 0, count - len);
 	}
-	memcpy(val, buf, count);
+	memcpy(val, buf, len);
 	kfree(buf);
 	nvmem_cell_put(cell);
 
-- 
2.43.0



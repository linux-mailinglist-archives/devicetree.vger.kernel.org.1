Return-Path: <devicetree+bounces-203363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B59B20D67
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 17:19:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BD6C17CBF0
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 15:18:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D0722E090E;
	Mon, 11 Aug 2025 15:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="gPErYFnw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0702E0400
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 15:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754925488; cv=none; b=dmw1p+qdmybZD9aqo4efCHyTnYGim4PPXrxjEhTD2Ws/o6kv4y1r7UqXZ0TrgU7B3RWpRzezkS1kG2LIzfgm0iY8ms1dT7D95O9io3RL9x9gD4jweoYTiMHSsHp0PkqSVRqtZxJHr+qR32HxApFQWPPtmsJvR/OfponHx54qdJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754925488; c=relaxed/simple;
	bh=cplGFDqmgtSpbjmRX3cAoVtjixMSRofZ7eAFWsu8/iY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LqYQNnWAFiz4KX6k4uBQM7KDQrZNsppdaFNhlsttLnPeOpPJMwK5ghOtDpJLDDjwmi8TyUr/JdW7bbsAID3XkuNBm1w4KwuGEZObmfbSc/c6k5anjQuPsiH3Bzc1fMwTeBJWp/xUv0qGV/eEmLgxIAOGNLnFscR1ehjd7FDYe6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=gPErYFnw; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-6180b9e4e74so4153024a12.2
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 08:18:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1754925485; x=1755530285; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gr8F9oLlUMXE4zHvyjlznjcTWEkXwUVRTFmLoor2DC4=;
        b=gPErYFnwb5l1lGHPEc+T7tH2DFgqS/lFV/3TftgpW1vnjPPazJnyGfVnE7vGJxtq2F
         0ZQ3FwD4fIu3w/FZyj36xFptt98ZC1PHWGfhyTn0X7PGjKU2h8OjHSdwocanla0MkbvW
         f8C6ifU5L7i3eBY+bysaWbj76c+0EfsSZ5G3DaNGVxP1WOszPZdgLnale9Pqqc60YKiz
         G37ZSEKVFYuYRN0Fal2v838SbFLiuouB2W8yL515BQSsxrLTxWtbntJPpV+8UHTuvXHF
         POFShPmhH7B9oOCUgZ+wlVn5g7oXxsNnI2QdGsBtiG6aJ0PAlUbqEUDEfbCGqahKSPP3
         NoPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754925485; x=1755530285;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gr8F9oLlUMXE4zHvyjlznjcTWEkXwUVRTFmLoor2DC4=;
        b=vx5Fs5jE9BrHUoCP+1lcMCRtRVQlDkQ/5SBOXYqHjbFGnrO6uk0p6qJhES7H7jNow6
         W5SNExDbv7pS3gFCQB+A72BIGocWNMjlSqYfCvpUJyMI4umKoivwwLCPI9LV5P6sRMdV
         muuVTY5ZyZ/3Y4VwXR+8NFrSDDFCnQjVsFH2xPLI9L/wtBbCIa3C+CcARhl1VVI/jVyn
         U1RUysZ76crr7H2MrZqLokC8XRPvUaCDiNUr+YyRi/Hd52JT8mfUA59OJwRAP1dssCyn
         QV1RHLCXc0C2NB4+szVr8fvBpDMpR1FGS1QVzvE6AKXUDYoGa1gdgnSLVgpcWkfIlA3e
         vuLA==
X-Forwarded-Encrypted: i=1; AJvYcCWzJ3TB5Jkzidn72D3hJ1e3/JkErRL4Mt6Ai6WDl0sjNgo6H88N4deeGcEyM4hKa9hbISRUWP0KKO9z@vger.kernel.org
X-Gm-Message-State: AOJu0YyuDUOyHPZjUkGH4s7li+IzxGvxuqTPb6FNLKeU4SBpeXN4lsmC
	bT0HG8myATQ/5k2vPkR5w1NyTg3E5IwOckPOjzjGonJvMl2Zrp9AakqrnVQAHxDgKLo=
X-Gm-Gg: ASbGncuzAwFb9zar5zbTkK7T61MegVnxosICZrp8vXapV+UqB8nANWTDd+jwIw8ZX0n
	0YqfYSLP3xD9swaES7dWbleFSJobYrmKd1jw3SUoNsOeRpYo2dLfmlo8lvKa2r7Dc+qrS405URy
	QN5mo8/894rg+AWyyKIq7U5ppvaYcv8IR4/3/rCQYX1vr7cEhUsThWCWzfyhyJ71JZHeGdq22MU
	oKDDkK4SxMfFp4I15kt61NtgLeQLGOIDtPjdRN26KY0edLpi9oA0ibf1vVP9+wAltYdNNqQ3jHu
	7tYfhCivtFomYmLlFmNWkPoAmmPsFY/OvJsVLHcpZlEuV4Fi9ou7LZfhsBSQ3VYYxa0qV/EFDQF
	7S4Pv41KBuatKm0TazH0EN1imjx+Xh7xrmO/LmrSQLU1/5s5RRmatZoncRoaEPEA6tVQ6v7qfz1
	0L
X-Google-Smtp-Source: AGHT+IHY6hHjl0ohw0BhRb2M7W6IV/iJBLaLg4s2DYOzsYCD7hIoPswY0Mvw0fvinMbPKLlE+Q0fyQ==
X-Received: by 2002:a05:6402:2810:b0:615:a62a:feca with SMTP id 4fb4d7f45d1cf-617e2e9deb2mr11476569a12.31.1754925485240;
        Mon, 11 Aug 2025 08:18:05 -0700 (PDT)
Received: from localhost (host-79-44-170-80.retail.telecomitalia.it. [79.44.170.80])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a9113e40sm18638282a12.57.2025.08.11.08.18.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 08:18:04 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: linus.walleij@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	wahrenst@gmx.net,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	linux-mmc@vger.kernel.org,
	Jiri Slaby <jirislaby@kernel.org>,
	linux-serial@vger.kernel.org
Cc: Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH 1/6] dt-bindings: mmc: Add support for capabilities to Broadcom SDHCI controller
Date: Mon, 11 Aug 2025 17:19:45 +0200
Message-ID: <57dd103c430f1a064b6c55809e4d2be54fad0e11.1754924348.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1754924348.git.andrea.porta@suse.com>
References: <cover.1754924348.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Broadcom BRCMSTB SDHCI Controller device supports Common
properties in terms of Capabilities.

Reference sdhci-common schema instead of mmc-controller in order
for capabilities to be specified in DT nodes avoiding warnings
from the DT compiler.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
index eee6be7a7867..493655a38b37 100644
--- a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
+++ b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
@@ -61,7 +61,7 @@ properties:
     description: Specifies that controller should use auto CMD12
 
 allOf:
-  - $ref: mmc-controller.yaml#
+  - $ref: sdhci-common.yaml#
   - if:
       properties:
         clock-names:
-- 
2.35.3



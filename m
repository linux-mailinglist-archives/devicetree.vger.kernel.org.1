Return-Path: <devicetree+bounces-69874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4436B8D1D19
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 15:33:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D96531F26538
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 13:33:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A2E616F90F;
	Tue, 28 May 2024 13:33:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="XNwj5Bl/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0544A16F8E1
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 13:33:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716903183; cv=none; b=GJ17U9Ju5uLMaHM6OcHX5ciQqM6Big2XujEgNJi735MjGR1EV7xt0nKfyAj1+CRtCPadzLLqz9mguxjlhF9Kx5zelX4UP6xRxoXOBi5xrXrEVrCua9UpItyEv8SSe7wxPJc04Rxq/RAVliscXf9Bg1Fr776m7sBw+z7xOQoF6h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716903183; c=relaxed/simple;
	bh=IXiic31ZGn5xiaoNZvGY5NBDRfFO2Bu6aMdiRK86lmc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oviIiTstmqRu44IUs4pzkqo8a9Wz5O5V8qg0o0sp1zI2WoI/MEq79T1yhW5DJW7Ul6ixzXgvzrTlXs2qtDu1rQcQD+4j4LCgJlqKeqaWf1Jp3/jvpZcWKFSN/6/1FesHPWimOe487HSAjafiDLBa9E8k898U9k1yc2w8Y48DP14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=XNwj5Bl/; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5751bcb3139so937268a12.1
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 06:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1716903179; x=1717507979; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=msFCFwiwqcyL6ZO/+kBlzRSH/Up7idI6elTyfBuDv4M=;
        b=XNwj5Bl/NMQVIhWsqAZV3T3uX1o1/TSuCjHmc60VpZQTVVg6j7/xA07yq6a6lfRXex
         97u8/U22pCWr1vCW4rt4EjwophrblLpOUWoLOorhzfm1F8FxcpNH77NKTtxShy205h2h
         rfUflg5OYjgG8b30YCletaLv7eUY1pYcWPxixWQJMX9MKtPTLewpOsRjg8LANTdnaxrL
         mmKyGXwEyNHEtzsLGEpSeg6M9YlXsNXojlYboY0qUKRMc6GONJBmOc0wMNYVzubx6ieq
         ih4hfEATOIQY7pj54mK0Y1l4D1EQXrh1UmaCbhnsfGeYZnPUbGBuHPsID9yx3EqTxyFl
         +6WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716903179; x=1717507979;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=msFCFwiwqcyL6ZO/+kBlzRSH/Up7idI6elTyfBuDv4M=;
        b=NKZuzKvusQQN4EDeHXjhSJcXh4OiWcUh4q/lcHSWtoo/euAfuZwAu1iA71IuW5/MGR
         rG6jF9sLDjGD2tgeX4oEUScdmB0LokmdD/uKLP1MP/euvw3xLKrUnwI2oFNgAHHuWfxY
         SDYGs4MhIVGmTeC98VJ4/+5yUm1wJB9vz3xKFnd21nUDlZPUsef7CUNvpckBNMR1blM+
         CllXe1eqQrUUfGY7kGnZ/JJbhV6S6E8cAtHvE/QyAv9cbHI+rH1zGGbfE7opc6fJ4JhL
         YUN/CsMi9qAXuyoo30jp1/ytAfjlrB+OgYARaH+C4W+w9kKq/ar5vA1xAjrAzCRfgpDb
         hFGA==
X-Forwarded-Encrypted: i=1; AJvYcCVa3wtgqYPozy7hduMN3JA6asdd3fYXYhMQ3oNadyMgUSMxfpHQ4fg1SVt8KLLeHlnE3rN6ArTtd+djwAm0rr9H7e+0k3o+cXBq6A==
X-Gm-Message-State: AOJu0YyiBEOLhfem/pd+3z+RqGaKpx96929E+1EDCpnJOc/cIWbld9xs
	CWYpRLoS6RQV+aq9mLIKNYVDHEVogZw8oGfLtP9birLwKX4TjSGOh0PE53FVFrA=
X-Google-Smtp-Source: AGHT+IHtQeY8ahqqVRpLNRs6x2IiovKEZoNZkln4ViArMLwhSpDlpLCjMNDDdGHS+xJ3s0TUu2LfjQ==
X-Received: by 2002:a50:9343:0:b0:579:e7c5:1001 with SMTP id 4fb4d7f45d1cf-579e7c51a1cmr2278257a12.23.1716903179511;
        Tue, 28 May 2024 06:32:59 -0700 (PDT)
Received: from localhost (host-87-16-233-11.retail.telecomitalia.it. [87.16.233.11])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5785241214dsm7320265a12.55.2024.05.28.06.32.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 May 2024 06:32:59 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Kamal Dasu <kamal.dasu@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	Stefan Wahren <wahrenst@gmx.net>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org
Cc: Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH v4 2/4] dt-bindings: mmc: Add support for BCM2712 SD host controller
Date: Tue, 28 May 2024 15:32:39 +0200
Message-ID: <0f263886c0622f43d3a2f4cccaebae0c39ba1bc5.1716899600.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1716899600.git.andrea.porta@suse.com>
References: <cover.1716899600.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The BCM2712 has an SDHCI capable host interface similar to the one found
in other STB chipsets. Add the relevant compatible string.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
index cbd3d6c6c77f..eee6be7a7867 100644
--- a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
+++ b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
@@ -20,6 +20,7 @@ properties:
           - const: brcm,sdhci-brcmstb
       - items:
           - enum:
+              - brcm,bcm2712-sdhci
               - brcm,bcm74165b0-sdhci
               - brcm,bcm7445-sdhci
               - brcm,bcm7425-sdhci
-- 
2.35.3



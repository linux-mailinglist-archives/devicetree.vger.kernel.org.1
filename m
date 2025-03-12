Return-Path: <devicetree+bounces-156844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C889A5DABD
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 11:45:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A5B218999D3
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 10:45:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B8A523F42A;
	Wed, 12 Mar 2025 10:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="K2cmBkvS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E87323F394
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 10:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741776240; cv=none; b=R5ND4nK7RptMpXiJEPIHqRVnv9958O/U/rbBivLVzoIjwj+V5lxAjxxBRzGlLJCGh69gglvK+tHJEBJyKjumS7tXYn0pOcq7HjFw7mkbYMMnlsPj/xLIaHgi13zR500SHvr7yTxgYQP/w3mppwdU6H2pTKA2RwjtezEhSl4fuRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741776240; c=relaxed/simple;
	bh=0DwS99z488I3Fc/El27D+3T6XkxoLUUqA5oX8NRuukk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KM6lZRRuOsyWZhCmMFjltL3+XzYcTgMkEi7HIrINXSjwchEG1sllmOIVc2YRS54Q+nV7ZtT/lZ6GjixUsl3qy9tPjeBcvT3vtaSS0VzXWHlI54lKgbLHetYmPWt+MobxnOUghnF6rWFeVmWh153uaaY3DcO7lLJHdTyyXbo6V9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=K2cmBkvS; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2243803b776so121726285ad.0
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 03:43:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1741776238; x=1742381038; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jq9hWTh28AULQZLwRWR4IEZNtznQ77t9F1aproSHTVY=;
        b=K2cmBkvSH4sRqImh/4mGMwi1ag8jCpgdCnbfyaCPclwSA8F0MBXZdnIRTjokUI+Gn3
         0uGdhx3bWL6XRws4ecn1d3p0WRyJAr/UJmF3oDvMpaahe3Kh8+OnEMJFbZOVcHS9qXC4
         0w2CeW3lYWiWRyhjYsAuILzt6ExjagH83XXX0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741776238; x=1742381038;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jq9hWTh28AULQZLwRWR4IEZNtznQ77t9F1aproSHTVY=;
        b=TOFLrdyOy6usHQaAYRvYMZ2xtBPPVeEQoUTjByvJE/tERK+UeNUfKhQsem2940ZKMC
         aD2P9yOgOYgJdRUdmr8/t2RUJrrkeX2luWB2OkMP9QQnb4qG3RCpYnd2Wk8l3KeGjzIb
         JRiQq3YhqyrNptH/OFnWgxd2zR9wiRwJp3svm6DyqIs7L8FY3icJ8Jg+rOkxZ7YMGPyI
         W9ILQv1x7azE7qC+AfKApm66Qk1LFFR8CflT9OIdpC1go2XVvUK4AEOkHA0SKD1+aJA4
         GczlAvUeyYpC4XVAL5xQxkyl7O8BaEwZsr+cNycapf42eHt6Ietp/wWpbQ8DugvFAKxr
         S9Hg==
X-Forwarded-Encrypted: i=1; AJvYcCUhvFkwDSzqaTRmzh7sMD7XOHQX7a5GYbCqwEK+lwECrQQlOAJrK6uurz2fmaHDxVP9N1/8bL05TeL3@vger.kernel.org
X-Gm-Message-State: AOJu0YyURK2bYOoOk10CpIAkdwq5bQXpM7B3d2WQOVRWgk82u/uuyGra
	R+CdAhcBfr9wcmD7gJbNa2vCkHf3gubYLcjIMurozvX2j4kT7Bg69K02Mpsp8g==
X-Gm-Gg: ASbGncvCP/HrMnOlINdsAUKYsHCPw8jfm2FSCDXWbnsUCxENkwBNr/WB62K3nmALlIC
	pGuavqifFkeENa6w8yDyw8YMszYoyd+nBCVdTxFWAdMUWETnXqwqRVVaovtufsHxBUVPALW55+m
	gFhIkjh7Dfroj7fD9NVHt7B71Fpp81wOcDlIvR9tKn7XJJvbzZjo5YFi2KE55yt4sBSmIR/rOcW
	6QamTGqPjDGrCY7ezaFrW8Rd9dLqFxEENOtssUfRyA23/bCRHJWtQii9P0O4ILAL5QDHo90ICyo
	hgsNwQO6M/UJls5+l1/VMQvjb3I1t8tpELCn8vSiGMgToaJ5kJyrCZb9ZzjjA9w=
X-Google-Smtp-Source: AGHT+IEi3t/oRgH4tgJIjV7dZt0tXAW1XWislifFGuRCmj9fEunpdxZYOlzBA/knNfUOTDyGKEKM4w==
X-Received: by 2002:a17:903:2445:b0:21f:52e:939e with SMTP id d9443c01a7336-2242899465emr387459965ad.28.1741776238354;
        Wed, 12 Mar 2025 03:43:58 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:b5ed:b71c:fb14:a696])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3011926599csm1405675a91.35.2025.03.12.03.43.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Mar 2025 03:43:58 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	chrome-platform@lists.linux.dev,
	linux-input@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>
Subject: [PATCH 2/8] dt-bindings: arm: mediatek: Merge MT8186 Voltorb entries
Date: Wed, 12 Mar 2025 18:43:36 +0800
Message-ID: <20250312104344.3084425-3-wenst@chromium.org>
X-Mailer: git-send-email 2.49.0.rc0.332.g42c0ae87b1-goog
In-Reply-To: <20250312104344.3084425-1-wenst@chromium.org>
References: <20250312104344.3084425-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are only two different SKUs of Voltorb, and the only difference
between them is whether a touchscreen is present or not. This can be
detected by a simple I2C transfer to the address, instead of having
separate compatible strings and device trees.

Drop the SKU-specific compatible strings and just keep the generic
"google,voltorb" one.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 108ae5e0185d..49ddc504c160 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -339,9 +339,6 @@ properties:
           - const: mediatek,mt8186
       - description: Google Voltorb (Acer Chromebook 311 C723/C732T)
         items:
-          - enum:
-              - google,voltorb-sku589824
-              - google,voltorb-sku589825
           - const: google,voltorb
           - const: mediatek,mt8186
       - items:
-- 
2.49.0.rc0.332.g42c0ae87b1-goog



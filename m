Return-Path: <devicetree+bounces-272024-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPX8OG26qmmiVwEAu9opvQ
	(envelope-from <devicetree+bounces-272024-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 12:28:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D4821FA58
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 12:28:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B320330CD5AF
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 11:27:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4638D386C1D;
	Fri,  6 Mar 2026 11:27:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zae6I18X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED432359A8F
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 11:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772796475; cv=none; b=FY4H23GHDNUU9uWO3hiaY1b12Ntig4O8Woj7B0NhX0AK4/lVZoildiwL2Xl8JfKkyykivXy1ya+AWuvFvyK0zoI91gppjf3DOUt1WhAJQ31edw59xmLP2HkPlaotPVkPJy6fgg++Ndgn1Y49gcrPJdS0Jf9QiKtNZu45fVv9zyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772796475; c=relaxed/simple;
	bh=9itS1QAWuLe0vXvae6oudDfy9qSr8VqquzUD9/4XR5Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=si5hUR5Ufbq6e9laTKNeheJtjx2FvI/tr+aiViJcvdHtg7FDYZsM22G/hrpfma+bh/jCGbrponMCRzVLn2kXn+bzuhmqZvwveDFFlB7NQFP4jlgeHtOjYqGBY19W/zZi9Fxvx+4eT6Z9aIYM5Qy0VMH3pQzGNKp8LqIwYooKePc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zae6I18X; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-38a3066b68bso32807931fa.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 03:27:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772796471; x=1773401271; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wyGXUYpQQ6zvxD4ZVeCoFbT7LecnKQgnIoon7pbvFWU=;
        b=zae6I18XFyGzkepqwVU/O8CoN+jVi9elAV4krWohgXHCefrs82MhxZ4GkWxq8zEJIe
         Cn1p4sd9jspq+C6Tz8WZNyidv8uEPL2KLdI9XTst5FbqHbmomU0MQwb7GdZlD0JC+2K5
         9zFKwUrpCyxWZMUcqhxd3oN2nLvA+oX9mzqVNaeKJxaS4w5BdPmUzf9rCrc9H61vw1fm
         ZfKh5zwxHE60Dtk0/5KaFR49vbxEs6Zgls0Poh4ozZhGAdunmT3YTRF8k7V6VWrsX+MM
         6nPwEUabgE8zKWmlJO84mUPgdBJIH3bBmxT1aXRJE+2WUrePaxGW1ktRxUyEuKUB3DAx
         Zfyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772796471; x=1773401271;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wyGXUYpQQ6zvxD4ZVeCoFbT7LecnKQgnIoon7pbvFWU=;
        b=sAy5JM6OjfukPMUUVVsx6++t7J39Sv1chiksBXagxrPmv9Er7Uad3En+Oirk285j9U
         AIzmgdijiJi9ro3YSoPT0vGzQTrkykHJueo14HbbUi7Kz16yc4o17sOOfvUfgmaCeyHd
         N7zt8LHX99oosXAC7BBe2xtwiQ1RKfOsi0X5Y6QIQeHxbOHzWbscZK9dWwwURvx2LTBA
         TMuyn/EcMVo2vVhNJU0xHBiNL4KHb56E+3SLN4TH2EXrxKgeRP5Epk61KNJpjcKSLO+d
         7RzyuzcCb88tB5jCvhL/igrVvuAc7fo5XX1cT+ydf0szV63FOZoTEHk8rwdEQl6GQA6t
         +oXw==
X-Forwarded-Encrypted: i=1; AJvYcCUIlqNl2rynQ2eZSecMw2bR8B95LfzPWktEbPW8+55BHf+b05wNuPpz8sbTR5uGBu8lt6Rc+/zeLjfG@vger.kernel.org
X-Gm-Message-State: AOJu0YwrCoBklF6/w6ZFoOZLereqap+0EG46EvApd/bFJRSgDNrFCeP8
	1hbsGeOaEKO8AvNP4Dd2jSeI1NCOltzXVrPs+IUrIei8bgJNxXj5moucbRb4kf+GYKk=
X-Gm-Gg: ATEYQzypLgZusRNmVuM0jall5zs1sFc7G6gfY+0+SwJzBgruuSRE3SvSicyCvuE4zSi
	jUhTqcYk2lsqmDhPJmJKlyT8SwDXCBnaE7aoxvmsWsFV/M7JZqxHLSh7n7yBXCF+PG9MJ8Y4xfA
	XrYVE145bLWH84EgKfOLszkPea3QTGlzIkFh5ivnJDEd9rTV8Fyv6RwIh8qU5cJvG7dRwHRd891
	Udb61Q9BuNAmkofweeKL2acifna2q/zNbXq3tYuveyg3zezeb9zWv0NkyD7ySsmaIjgfYi9RqMY
	3uHXTynsms/KP/6YLLxYOz46/4YKUMU50JPWBalGwfmb8nH3nqQnHYUklONYdqjaCDrN5avPJTF
	H3Cp7MCYtWQIaHItM9LF35iUIBDNfcBD7GytnJ7R6Y0MXPJnpqTLwsgdguifRgtEpscd1SaCy4i
	fcAZKKgBqpWIYfpG0q8Cf2YzJ6SuEtgyjSp2Zy235G2rBMCNgkOq/Xngni4/ZYkcKaOtFVE6IR
X-Received: by 2002:a05:651c:1c7:b0:383:16e7:9c3 with SMTP id 38308e7fff4ca-38a40b5db59mr6384291fa.3.1772796471064;
        Fri, 06 Mar 2026 03:27:51 -0800 (PST)
Received: from uffe-tuxpro14.. (h-178-174-189-39.A498.priv.bahnhof.se. [178.174.189.39])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a41f9907fsm1891311fa.4.2026.03.06.03.27.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 03:27:50 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Cc: Jaehoon Chung <jh80.chung@samsung.com>,
	linux-mmc@vger.kernel.org,
	Ulf Hansson <ulf.hansson@linaro.org>,
	linux-kernel@vger.kernel.org,
	Ping Gao <ping.gao@samsung.com>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH] dt-bindings: mmc: samsung,exynos-dw-mshc: Make both clocks required
Date: Fri,  6 Mar 2026 12:27:42 +0100
Message-ID: <20260306112742.64235-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 88D4821FA58
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272024-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linaro.org:dkim,linaro.org:email,linaro.org:mid,samsung.com:email]
X-Rspamd-Action: no action

The current binding allows one or two clocks to be specified, which is
wrong, as both clocks are needed. This is also confirmed by looking at the
exiting upstream DTS files. Let's update the binding to fix this.

Cc: Ping Gao <ping.gao@samsung.com>
Reported-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 .../devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
index 27c4060f2f91..3e560dde714e 100644
--- a/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
@@ -42,6 +42,7 @@ properties:
     maxItems: 1
 
   clocks:
+    minItems: 2
     maxItems: 2
     description:
       Handle to "biu" and "ciu" clocks for the
-- 
2.43.0



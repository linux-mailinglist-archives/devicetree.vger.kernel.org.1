Return-Path: <devicetree+bounces-93406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 69EE7950CBE
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 21:02:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 97AD51C226E4
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 19:02:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC05D1A4F20;
	Tue, 13 Aug 2024 19:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Ac4Vw9K3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C7A19EEA2
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 19:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723575709; cv=none; b=HjhZmskpNiwWYQXZ9KfBRnZkUndFGvIAnLBjyE4Ans2Z28TsyRsd4CaK9kB6Pm6upyrDbqKN19sha9odskNpDAnn1X/DWXRVzvdN96xq+rS2COcHsOh/P/YUFuvbOGyNTEs7VyuhxCLpS6WJoFVFriTpkxJclu9r816m1WOEheM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723575709; c=relaxed/simple;
	bh=B06vCpEVkLscAk1EZQAejwdszDJu8BDjq69UVV3hPZM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HLetqJT/m8z36yOogO/t/BoNm1+Cezgg8hUjuCySvFNOIpwoZduj6e/Lo7p9XPSHcJsZ+vR7fVUUYGNv4CG+gXv1Qzkf+/nborx3du2becOV2nMfg+vdvf2Tv12vsfG30ZQwQkoTunc3qxBZTK45zWnKQia9WrhK6T6NUs/fV8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Ac4Vw9K3; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-42809d6e719so44849105e9.3
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 12:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1723575705; x=1724180505; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/bvdIz9zw5pv/6chqiDZ2OQiZvZ77IK4vNhyI9I4tGw=;
        b=Ac4Vw9K3EnkjLNI+v9Z9UL/1IWaI1scoFxfKP1S+VnVkDTCTAqEtrklgFN5mhlHt1U
         6NNVfg458rIuDylw07BCJc+p+kw1K5als6Afp/CrnJaeumohyDvDaoO3zSruZcNKRImO
         v/iZQSoiUiNRa1/ZdlXtKiBtH8rKy1n8ukQqudPMivtWigDsh+PXsLMnyjiW37KWLV0I
         1d+3ll0gpxxrmOmTU+UmFUNxllKov5hU9net3vVuHm1HshgiJMrhuLOvtWgYbALDulaS
         mDLi7MgSi+iTZf2IFvm9/K0FcklcIPAoLbJfIzo78TsI3XJcoeZikSfZdFGF2oppHrae
         KW3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723575705; x=1724180505;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/bvdIz9zw5pv/6chqiDZ2OQiZvZ77IK4vNhyI9I4tGw=;
        b=RQqhJZHNwWLZB7Q7WWgTyWMCxXugkYS6teIpGEicxLeL8sdYVDy4OwiSwBZw2+QJrc
         WBN5H+8OIPfDMcpiWIwH84d8NcS0YM4MiWYdUvWrg42pgZWofZUNjyliq6B6L14C8JF3
         NRkV6bQ/RDnvnPXDXnLf4aDESOv+KC7OkmD6CL1/zTmKtwuTMc1xRHyKXuwvG58HTIDt
         c/Yy7au2VOD58YOWKZibBYy/nD50xmTd1rjggCDfmdYHnqhIFcAWDaCeUfcBzOeHY0B7
         QG3xF3K/lk2gg320K4BaEb0TkWuhIPRBTNxeKynnx50eVhN2UEuEhHAMtxJArubJ6Mur
         lZ5g==
X-Forwarded-Encrypted: i=1; AJvYcCVW8/UtqNnej35qYQHJ0NJHfAPlwurzy1IoLDIyPgS9ADu0h2N4GqWPCeFtsP4p4CiYBkI4/jrW/jJAmHMVlgaZC9f52B10ePq1UA==
X-Gm-Message-State: AOJu0Yy6S0cW0UEYfDsKIs3Up8kn9OhyTM5XcrCHHDdfjtxW0tNNnvyh
	1vlAJmeEuTxucHJfl1PtwIEFhRUcKbcAiJ23rAi6uBablCZv/BuqMKEVxJG4y1c=
X-Google-Smtp-Source: AGHT+IHSXmOSdT9xJa1IO63Ic3pBT1N7/ru5bLA9LmFrAWiboWXekJJr2W814VAyRznK7QNO3pcZxw==
X-Received: by 2002:a05:600c:19d0:b0:426:58cb:8ca3 with SMTP id 5b1f17b1804b1-429dd23d446mr3364135e9.21.1723575704374;
        Tue, 13 Aug 2024 12:01:44 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:3979:ff54:1b42:968a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4290c738947sm234170345e9.10.2024.08.13.12.01.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Aug 2024 12:01:44 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Marcel Holtmann <marcel@holtmann.org>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-bluetooth@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH] dt-bindings: bluetooth: bring the HW description closer to reality for wcn6855
Date: Tue, 13 Aug 2024 21:01:31 +0200
Message-ID: <20240813190131.154889-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Describe the inputs from the PMU that the Bluetooth module on wcn6855
consumes and drop the ones from the host.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
Note: This breaks the current contract but the only two users of wcn6855
upstream - sc8280xp based boards - will be updated in DTS patches sent
separately.

 .../bindings/net/bluetooth/qualcomm-bluetooth.yaml     | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index 68c5ed111417..64a5c5004862 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -172,14 +172,14 @@ allOf:
               - qcom,wcn6855-bt
     then:
       required:
-        - enable-gpios
-        - swctrl-gpios
-        - vddio-supply
-        - vddbtcxmx-supply
         - vddrfacmn-supply
+        - vddaon-supply
+        - vddwlcx-supply
+        - vddwlmx-supply
+        - vddbtcmx-supply
         - vddrfa0p8-supply
         - vddrfa1p2-supply
-        - vddrfa1p7-supply
+        - vddrfa1p8-supply
   - if:
       properties:
         compatible:
-- 
2.43.0



Return-Path: <devicetree+bounces-173169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4E8AA7B0B
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 22:42:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EEFE1984DD0
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 20:41:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC91220127A;
	Fri,  2 May 2025 20:41:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bYoZQyrT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0BB1FF1B3
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 20:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746218519; cv=none; b=PUIkzPtu4diRab2IPQkWOxa1t7codns1QY6POkv73n7pa8GJ4SUdRM1jV91Fg4vpekSIBJzaiwYCEroCu8QbH0seO7AJWkfztvERwipG4NcwXNBdLK5vfLcBOrNcYZA1CIMrDc0B1YrOHkMqFS1LPL9BHQqiErjjDJw2srzBlEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746218519; c=relaxed/simple;
	bh=Gor5eZeOe95pbDOvaRNjo/pq9TyKVg+UU7vzl4dpmTg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=shR5/vP4rT73ndWE3LUCvBBNWyz8l3j18vLckos6MzY0BYpM3iZSQRrd0pE5ASzofrHUehHpQWodC4aWJkvjXQ4R7mDUq5FAfMGSuDm8ltl+CYHG26V6JO2CiYTSbXNFuoEt9KEnvK5Vpn+tR1bg8Xp75vzmO63jYhg8RUzkAUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bYoZQyrT; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-54b0da81302so352694e87.3
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 13:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746218516; x=1746823316; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vh/HB4YndctfR9aIAkHgSZCg6hCNtQ3fblG9H0OCQvc=;
        b=bYoZQyrTCvS0D/jHFsU22HGwlfzc5QrwHl8a7Nh8c1c0mEEzJMbztDxxKPofSlbw1o
         WemgjDhlDBEMjFID/VyAvpdZ33sh+OOvg5sTMrO5dvaDrzQYYe/3O5BSMUxnvQbDpldD
         wX+W6j68Q1eJHrfMdIvgMVw12xABsfPGDRzRj4scJjh82QX0wzJHpERtHxeN29+mjZMq
         Sa4GLBXb/hBLrhF0AfsLBAwob5ACFEJLch+jqD6NsRyB/g2IPftJotoM8Sh5Rd/o8/Oq
         fcjGoE5tlDjykGdKXzHzYUXeCok1FCafvAiPnby1NCRrIXeGwNLCeVsXzsWzzLxLtiRQ
         HmWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746218516; x=1746823316;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vh/HB4YndctfR9aIAkHgSZCg6hCNtQ3fblG9H0OCQvc=;
        b=qXlIVG1cJsIo0FLyjZ/LqaqDRqndIYIbUJ0a0gfrSI83TWtf+C1RUyay02W0JGZ7Td
         tpsQV1oUyEVfK+3lSBOGMvNDljn73fI6vxI3yN6b03N6ns51lEb0XYMmGaRC942qvCxm
         PauoQfo9lEhwxjePiqUyYtzdYGDSEqT3XwIBzBLa4uqKeF3RWiZS247CrmxMMhgkU9gD
         C0xjZ9gS+Qd2au8BiFDEK/fOu3qtb76zd3r63dZckP3mCdfjV2FDm4fZ4bMgg+uV6MTH
         Ya3E8t4VBtWuyvoNCbxnuNsw8diW5MLa9JsLhOiO+cV2xhIjVYb/a1tcId/IIrLSrGs/
         oFag==
X-Forwarded-Encrypted: i=1; AJvYcCVk6zGQRK0O0eji1s72SvNBrhbKeqxhIx0tbH8IsfeaQlyxdhZWs9Qu4AcDzqsoU7oXvYob8xy3EFB/@vger.kernel.org
X-Gm-Message-State: AOJu0YxvqjHxBI9WnVsw4KJuD7ATBAhadrxpN22VAjBBDgHOHO5L/33J
	aEpw5vCiU6gvfwsiTIFoXklu3II70oxwMuDCggBJhdtc30ElAA2qFI5Q+GFy1Qo=
X-Gm-Gg: ASbGnct3vfeZfcSgboLQcMFYz+vrHnkUjLUaq49rUnV7BWH0tGm7LDwNrGMcq7aAr1D
	oUTjTK4wvfSpGwTOSubIMdMMNSvgM/HQCKoTG4N2Ov0lZuP00TbSFUfw5WPOhR+EcuPCqduJ9Gk
	jy+UG5GoeIvicfU0RolPtMUMuDSINbfYg6+U7OTNuvukuQwrI5NExn8tyH/pODaVk1XCSHWnTwx
	DoZrTHZtN0BpPHtJwrgwULq3taHWe5G6QO0I9kHl3XNtVHfmFF74ZYfot5KdcBGW6+9+X8VcjIq
	Z5Cvij4avIrAJKcIP6Odz5gR2ccKhBF7yZ0UqHVuJ4F2rd0CwULTc8yiJ/TeZOBPC6y8hxkCill
	4399oPyITu6JrSd1PaktYqer9Kmx3Qw==
X-Google-Smtp-Source: AGHT+IEvl+Xcmxwi3YlwZ0zrf65PyUadsBHWXJ9yXMntXt5u3cTRlzR9GC1W0M0Y15MOFSmh90ma5w==
X-Received: by 2002:a05:651c:146d:b0:308:e803:119b with SMTP id 38308e7fff4ca-320c3afdda4mr4623881fa.1.1746218516348;
        Fri, 02 May 2025 13:41:56 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32029017825sm4675301fa.40.2025.05.02.13.41.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 13:41:56 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 3/3] dt-bindings: media: qcom,x1e80100-camss: Remove clock-lanes port property
Date: Fri,  2 May 2025 23:41:42 +0300
Message-ID: <20250502204142.2064496-4-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250502204142.2064496-1-vladimir.zapolskiy@linaro.org>
References: <20250502204142.2064496-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since clock lanes under CSIPHY are hard-wired and non-selectable,
it makes sense to remove this port property.

The change follows the same logic as found in commit 336136e197e2
("media: dt-bindings: media: camss: Remove clock-lane property").

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../devicetree/bindings/media/qcom,x1e80100-camss.yaml       | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
index 2e7455bd75ec..c101e42f22ac 100644
--- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
@@ -146,9 +146,6 @@ properties:
             unevaluatedProperties: false
 
             properties:
-              clock-lanes:
-                maxItems: 1
-
               data-lanes:
                 minItems: 1
                 maxItems: 4
@@ -159,7 +156,6 @@ properties:
                   - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
 
             required:
-              - clock-lanes
               - data-lanes
 
 required:
@@ -362,7 +358,6 @@ examples:
                 port@0 {
                     reg = <0>;
                     csiphy_ep0: endpoint {
-                        clock-lanes = <7>;
                         data-lanes = <0 1>;
                         remote-endpoint = <&sensor_ep>;
                     };
-- 
2.45.2



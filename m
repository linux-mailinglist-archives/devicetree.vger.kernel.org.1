Return-Path: <devicetree+bounces-227986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BD6BE6A7C
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 08:26:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 42A1D741836
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 06:17:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D64A30FC09;
	Fri, 17 Oct 2025 06:13:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gI4ptFeP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135EB30F94E
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 06:13:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760681598; cv=none; b=ZpEma5Z3ySxgLf0cqxmY/0bO2c4hvSxPJbJ7Ppch6mMAYXLMd3vXd44aWgf0RU1EEilAL0YRS14YV6jWeLZcMXtq7vSRqcu7vuoJC9PloWLFfaS/9cYIk6ax7JyTD9Rb85ur9FwDDYCLPVlA0Xu+fpokeR9oej1HCcSeHiv73jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760681598; c=relaxed/simple;
	bh=eF6t9Vq9NRea3XnH1BHglCTN0IeLN7yA62hWb+lXoeE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mY5DtFyTDkdh+tQEJKQn6cQziL/Xdtw1rRIqJy0HBArUI3kKxdiroma0kTIQjF6ZfOmeDIW2TVzJsD7ViG2rZmHa/5DVMscRw7M0xYX8iCVjU6UMV3cPjBMi3yXzrcUs7CbXq3od2GFsze6sVnqSYai/oIRwKZntnRCbJpWjPCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gI4ptFeP; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-46e29d65728so10518815e9.3
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 23:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760681595; x=1761286395; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RHSNJ2BDwx1sBbfCkuw18NdbM457O5a6eDYxm9b/Apw=;
        b=gI4ptFePjPd23cusxBMiooO9gPjaVXKeuVH16Sq9TrAYSb68PcoIxvuviViJjSARD/
         k+SHjLrGB17S00Zg4tuMgiNDgHHEjjz7ue1ZRQ2FGpD+yKVE4b7mgmemATWoGEdT8Fmc
         DUP1s85K/bsUFBIJNTpNjb9GNHnyg1/MP7qdMibT1hUzCI+VqE5cxpbXdlZcPVlSfTm2
         eEFOPgyzttZuLv3gN18aj2y8aQD2W/GPahATDDgV4yXUe+01hpVY5tPO4SPtvZiFdT0+
         bEdYNCX8lHsTm1ugX/cqKpyk8hoZPpLRPS7WN9YnAcrH7hSiuIkWGxi6SNkIxnDJQtj+
         Q7EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760681595; x=1761286395;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RHSNJ2BDwx1sBbfCkuw18NdbM457O5a6eDYxm9b/Apw=;
        b=QnbOLap6saKm77Yt0M0NTggF46sE1X/CxB/8lkTwbhR4l99ujdIwGXTODQFwoU4Ihz
         RDGqWt7qMM/0A1ny57QbA/YUwbApjU2uhsWJL8Q8EKKAik2s5LmLzQ84s1nCNrLkKHup
         dWENApiV+bTVeOdME2D9ZwthZ4jVBIEjz9GNag/B35HJII6LkSm3x1h9JU1RdljG/a4l
         RPN2karuB2xvWj+t5iAnbXjXtOAhQEY/q5DsMf05Vj12i2+Hnhf+UNkyyx5qazKcdmGG
         tvFsDzzhpNmZEburwsA3TCgJrhteSucMTKLgzpkgJDCCJtxxApiiTYFDAus5HJ4XHmBR
         hmrw==
X-Forwarded-Encrypted: i=1; AJvYcCW6I9NXu/kFgXWqMNqOmodlJMFsH9wVo0nuxGNHUQ4iwGdSNVep2V3ssmv8/+T1+plQDPitz0POJLeg@vger.kernel.org
X-Gm-Message-State: AOJu0YzPxcK058w5YoHVCz1AuZRAnHpmcBI4x+t+mnPx0WjMe6EagFOl
	cF0aLK+uZd/zgu0nTkDYgtf2DoqCRcn2o9Zu3Y5eA9Fz1lNhYvjOICDaPGdwxGCDTsU=
X-Gm-Gg: ASbGnctWxB5EIPNo/YJ0WdCmX/irDoWYxIE9sJ7N4y7qJcxWijYWNt2h9jcJgxWy7ds
	/Q6AZ2qaiPTWYed6Vfy1lNFBS6cwvMitvaDp1Msr0LNnkBqLmzKm5ES+b+VSp/c03eU57uqNhkt
	I6a+Ghi2heCsHcLjPNjfb0DfPo1GMWlvEXpWhLSJ2FSD+DTTlvZjA6EYl4p2FC09LzvuHUrkS9f
	sq8NqpcADHegZCcpxvKaNtzvEEBkjqb9Byc05MBhvKUhPXgWYJJQ6/aNa1NYNii9nWeDCGeOLG1
	wDAR8Qn/EZ0S0AyE/oMcbCpDMFOvPoDpMF6FhihHmUkGhI6+Q1/JI0C7vhth4igAdlYtYNwNLNz
	j/e1gAbAbZaSQb8hA9zQ7+XW4i9r/+PQLI+qHpqaTLmEh8xwlrsi1DYB3bxRYdJ1CFIRL4/NMn+
	Bml6El/g2gKxLDZnpn
X-Google-Smtp-Source: AGHT+IFi56b/X0lBjC6eoQ5DueToZROug6pRk4AZnyscKkreLGme/V1PG6KxmiRrNewDQ22JeqVkQg==
X-Received: by 2002:a05:600c:34d0:b0:471:1717:409 with SMTP id 5b1f17b1804b1-471179071b4mr16544585e9.23.1760681595439;
        Thu, 16 Oct 2025 23:13:15 -0700 (PDT)
Received: from orion.home ([2a02:c7c:7259:a00:6426:9b9b:6d3d:1da8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47114429679sm61624745e9.8.2025.10.16.23.13.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 23:13:14 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	srini@kernel.org,
	krzysztof.kozlowski@linaro.org,
	linux-sound@vger.kernel.org
Subject: [PATCH v5] dt-bindings: mfd: qcom,spmi-pmic: add compatibles for audio blocks
Date: Fri, 17 Oct 2025 07:13:14 +0100
Message-ID: <20251017061314.644783-1-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

If/when pm4125 audio codec will be added to a device tree file, then dtbs
check will emit messages that pmic audio-codec@f000 doesn't match any
of the regexes: '^pinctrl-[0-9]+$'.

Add the compatibles for two possible audio codecs so the devicetree for
such audio blocks of PMIC can be validated properly while also
removing reference to qcom,pm8916-wcd-analog-codec schema file.

Suggested-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---

v5: implemented Krzysztof's suggestion, completely rewrote commit messasge

Previous version:
https://lore.kernel.org/linux-arm-msm/20250915-pm4125_audio_codec_v1-v4-2-b247b64eec52@linaro.org/

 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 078a6886f8b1..2a7a92371b55 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -137,7 +137,11 @@ patternProperties:
 
   "^audio-codec@[0-9a-f]+$":
     type: object
-    $ref: /schemas/sound/qcom,pm8916-wcd-analog-codec.yaml#
+    properties:
+      compatible:
+        enum:
+          - qcom,pm4125-codec
+          - qcom,pm8916-wcd-analog-codec
 
   "^battery@[0-9a-f]+$":
     type: object
-- 
2.47.3



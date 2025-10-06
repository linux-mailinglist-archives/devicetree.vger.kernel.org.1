Return-Path: <devicetree+bounces-223770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E66BBD632
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 10:49:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 049991895281
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 08:49:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A36A6262FE9;
	Mon,  6 Oct 2025 08:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qNVSn+tv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9FC025B1DC
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 08:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759740550; cv=none; b=hek/563OS8fuJc9kdBVu13aG+sQK8KpXQDU04TVrcB+beNRESg6Vk0jHK+tm3ZJRy1v3ILqOVv1F3fxbYH9QJBvtnHypsMiz1fWDHDSV6wKGwfKSJYMtHSBjlLNPsSUz5p6HLPIpajWN3VklYih/RmJgJa7GNeivcCAjcOiVWBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759740550; c=relaxed/simple;
	bh=yNJrOtK/gIhrM0HawPnU/od6BicNtAz+e6fvmZWPgpY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=i2Wni9bUfv4De/pN6aKVgVsXcknABw4VGlPZA5EujN/ltiag7PKhx7wOSTIemnA4VL3UUc2DM9OdjrWqfdWBS/pjTqPhPzD1iufX0C+72xi8BM8QHAVxSBgQBf4UyUwHLL/FJjG5Aglu0hkVrXCJfUXKGQnEVssJ5uW6j0IzUCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qNVSn+tv; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-46e4f2696bdso56683815e9.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 01:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759740546; x=1760345346; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YbAT6oaiZCHuQJnaizYq2lCpZbdpU8AnX6J6JAHyWdg=;
        b=qNVSn+tvzcvpADhcXu2YdJ4ksKZ5XW3W3NqcdToHyRgJoTnsgsCeyiqtwwpOQ6JmMc
         Ef9p7kQMG1bWbn/etVqrug5+2g4CR5l9poesn1pi9EfIxj2JND7dVBdUHSa4wdQubjeZ
         jFMMTO/m8ZsqiBRqGTM45o/A/mO5kq3lypGEhWX7cZxBd5bnJy6iwv/DCcGN77EKspnH
         c2jwGo3SGBmVWqy6aP45MistHzn3Kt8YV85exUxAEXnSZTlX+UUiwJXjvSYUaNCS77TB
         JN6rk52DvDMkvGQ+3o333hwkCzQd9AMWtN9LwZ2f3Opg1mQbg2rfmIyNg/czujvLrPEU
         XOwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759740546; x=1760345346;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YbAT6oaiZCHuQJnaizYq2lCpZbdpU8AnX6J6JAHyWdg=;
        b=ucax42o1lZTl8ySVoLIxtQx5fdeKjBS4uw6jPLwo7I9RXCdiWzmBKAtijiw9Av0I5k
         tIFFNaiJbi/HEg7nZG8dIuRlpdwXVL0pKgVicGm46sMloG1j/zUtk78M65ciiWc9Ocvk
         8mjCHWEPVeXKVcJiO8QZgRxEJx2x0smr5kJ2T8K6w6QVMGTh20hX0bvrCThzXUQKpSJN
         1vS2NcudAJfQiV+z9LQgotbqYAIzqdEZOvX9esgtm0e24NLbNY6j3h/oEuwEWYlIYtt/
         ATD+LljHw3Cp+l4PH6UaHdWPiUev/BU42qykbtO7AsumYqe1ku6e5m1sZ6QjDIES052d
         kHEA==
X-Forwarded-Encrypted: i=1; AJvYcCVbmP0mFXRE5JDJyod1N0J5RXeEY23TArQwtVg7sIfvti0s1a4NZ3VEGApgS3l12CmP5WT4lGeeymlx@vger.kernel.org
X-Gm-Message-State: AOJu0YzDdfAVpHSa4ExGHwOJ+cvoI1+iP9A3PQhI+lkbBJuZLysB9BvH
	2l0poSw7O63lIJY7kMNsMKdCeMt8nVwg6pXgHf/AvzdRXoJX28xsDkrD0fNJ6qhBMIdLKdyM/Q9
	Cgj0U
X-Gm-Gg: ASbGncutoPH0nLrrGS+qAS6zp4SDBD774O7GUdaJCg8rxTnqz0YFeRsA1ira5IlWb+e
	mqHeKcU12BkPodZgLD/NUxjw8WLWRveHN8n9w0ps4JR4MZtC4Xobk5ChwMZCIA5Xx90XhYXl8rI
	xDM5gbpOuHmnCb3udqzj15i9dWW9BjngIzdJu4So4EFjNND5BO/UFexiGX4/SB9IEUYQvePPHD+
	IOPEpSJ/KWPfGYb/yqaB7cb4eZ5IVDrUfy91m+mQqSWNSgj0ErKTQpHFU3mETLKRlwPpZm0NTxJ
	+7TMZPj+aVXJV1Vrt2N0GwBIXaBTRHK0FhATGG+K4xpMLijfXRvEkBq+P2Uv7f8IK1b8iveEeun
	5bOcc2/ZESRsywXEqTGbUezMtY38njo/IQPb1esbXIq++Z9Kg6AMnOK9OEGcNhe8faNqZexmAwx
	15soLDAw==
X-Google-Smtp-Source: AGHT+IFuemcdpK1hsaVH+01fuiZxwwbiWMYfsisLLKaFVUrVIL0g0fyyl8LiPZzw6aGmFC53x8tW4w==
X-Received: by 2002:a05:600c:138d:b0:45d:d1a3:ba6a with SMTP id 5b1f17b1804b1-46e7115c136mr68788275e9.33.1759740545841;
        Mon, 06 Oct 2025 01:49:05 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e675c67f7sm109777965e9.2.2025.10.06.01.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 01:49:05 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 06 Oct 2025 10:49:04 +0200
Subject: [PATCH v2] Revert "dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp:
 Reference usb-switch.yaml to allow mode-switch"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251006-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v2-1-3249e511013b@linaro.org>
X-B4-Tracking: v=1; b=H4sIAH+C42gC/5WNQQ6CMBBFr0K6dsyUUlJceQ/DAkqBSYRCBxFDu
 LuVG7j6eT8//+2CXSDH4pbsIriVmPwYIb0kwvbV2DmgJrJIMdVYKITFT2SBB7NphJY2mIcJXlx
 nqjkT+E2L7QGtyRzWulW5FPFtCi6uT9OjjNwTLz58TvEqf+3/jlWCBMxR56ZxhVbm/qSxCv7qQ
 yfK4zi+a4tU498AAAA=
X-Change-ID: 20250930-topic-sm8x50-fix-qmp-usb43dp-usb-switch-0c84e0b5f361
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2041;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=yNJrOtK/gIhrM0HawPnU/od6BicNtAz+e6fvmZWPgpY=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBo44KAHijtiuEihEpjhyr9YUZ5lAldZqTjXxuD5uTv
 M+hnVkGJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaOOCgAAKCRB33NvayMhJ0Rv1EA
 C0U8trYFQc8ruIQYSGm7VKuXzxsiTIvJl/ojYTO3Jbgwa2r2hdl3v9q5w8Wx7HAZsXV5CwaKbR8c0G
 c2uKXK2k89qsirYSsEpnGpq7Tg0NBfLvLjdKcEWVr1WbGJVYCJItWarEK3NwASeWzEnIgk+CTi2yj3
 hn0Ut751uon10HUAwISvPyorIAS+CcZADvdKfUyXxJQYfbxUw9J4BUKWMVuuYdIzsplEqH3Hk6SD9j
 nMd1Ru8T8JiGr0C/GIm+ovxN/+gznSc3nVJ/WwNR3M7BQm3F4yqQ+Isbq6WDZGPketmUUP9/tcYnUY
 3VLWNeHvYyYOm4l3BByNmb3aOC0sEWlNPVWCfpdgVf4kBE3gp++2mV0rM0ancqbUnHSZlcscY4oOwz
 b6oLEpuy7yYFNwtGYmmPm3YEaF3Y9nKOK+SyK6StLaraW52J0dB7ZfVtQyUeoxoN4DeaKXMXOaE1Sc
 dL5A1E0tzwP09eZ8MK3iDOengOeRL90RXjCXd75gA0NZ/TYlFJQhlWUVNhlzL+GYSKFMwZw/6/o230
 Vi2LPrr95STv3dP03eovQ7qoVYzTHedxHpAd4vXbrEhZrpO5jZB/m0LXZgos9NRsMJN5Msvm77bcj+
 bH4yhGcxq8KhBF45CRTc+R9K5C4ttJr48MuUjZptyJ9Jxnar2je+HvLq7Vng==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

This reverts commit 3bad7fe22796a420c6e16b591c37ed1bd6cc2a30.

Referencing the usb-switch.yaml also imports the ports definition which
collides with the definition in the qcom,sc8280xp-qmp-usb43dp bindings
and also enforces ports as required which breaks DT bidnings check on
a lot of boards DT.

Until the granularity of the usb-switch.yaml bindings allows us to
only reference the mode-switch & orientation-switch, it's simpler to
revert the change and start again.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Instead of splitting or loosely referencing usb-switch, just revert and start again
- Link to v1: https://lore.kernel.org/r/20250930-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-060568de9538@linaro.org
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml     | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index c8bc512df08b5694c8599f475de78679a4438449..38ce04c35d945d0d8d319191c241920810ee9005 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -73,8 +73,10 @@ properties:
     description:
       See include/dt-bindings/phy/phy-qcom-qmp.h
 
-  mode-switch: true
-  orientation-switch: true
+  orientation-switch:
+    description:
+      Flag the PHY as possible handler of USB Type-C orientation switching
+    type: boolean
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
@@ -104,7 +106,6 @@ required:
   - "#phy-cells"
 
 allOf:
-  - $ref: /schemas/usb/usb-switch.yaml#
   - if:
       properties:
         compatible:

---
base-commit: 262858079afde6d367ce3db183c74d8a43a0e83f
change-id: 20250930-topic-sm8x50-fix-qmp-usb43dp-usb-switch-0c84e0b5f361

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>



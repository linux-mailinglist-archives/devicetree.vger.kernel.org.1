Return-Path: <devicetree+bounces-232135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D6FC149B1
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 13:24:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 267151896044
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 12:23:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA61032D0E2;
	Tue, 28 Oct 2025 12:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d0ctyHg1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D1631355A
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 12:23:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761654185; cv=none; b=jGdp23pFiKqm2VTi8MQ6ecWCTWumdwbtgkluY5yWqAaHsbaYRuoowzU4z4OBAO4rx7Qa/ceBOwUaoqapANvSI87mvjsUmvJGIxvwB7p5VgxxdOcOnLNfoJ1Wdz/OtbZQQ68vjoC6unrgVZIR8cRCNpJjIPLT9z46o9RZgJ4JQl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761654185; c=relaxed/simple;
	bh=CEjvF/rXJZsXAc246Is0WAGvmoGx4JsfoR3gcf5uF/A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=jxwMuuP67CONd2en4jvfTkAbqVfug9Rebh/VDUywpzN3YhTyUFqioqdzfhUmku9pMoEOb6V1ndO1pUI+5+xycxPy940r5UiRv/UwgXDRlkuDKaoXY3GFF3l77+WOubJ1o6bzo4D4enmwP8zek7E18dWaDgJTRy0FQykBmSBIgaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d0ctyHg1; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-475dd559b0bso44072715e9.1
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 05:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761654182; x=1762258982; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7AA+eU2wI/RWlo1U3OzSgcPOQwGTX/TmL/QDC7Uo/70=;
        b=d0ctyHg1gsTCnaTtNchICMBOH+FeGzh0jcUmjVXx8EnsL0EIdIwNouS2xekqx3GZD5
         juHgcFfqrxKzRgOz7pUUxHrxdsFzUAr1ghM3MVaeVFY57hPYYzNOpk+lAyctydtlmSg1
         m2+F9hXFRj6F1MgchJTadca4rtmjy/xzc9CLYpmnzWA5kY3DdgK7i92pQMAS9UweLt90
         wcJQIVhXyr8Gvw5VJolhzRJqIsbUdSHNjeYQSLneRpsgQDRRq9b+QDRf0Ri/T4JiKNvr
         tIvrVYo6giH2/OQnOmDr/zQjFwvalsGDMfq4Yjyvd2uHysx3u4TRjLN/sZi4z9X25UkQ
         x6ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761654182; x=1762258982;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7AA+eU2wI/RWlo1U3OzSgcPOQwGTX/TmL/QDC7Uo/70=;
        b=Z0Y7omgMhwl1fWwV2FcY5QDIiLK9c81cE1rQCkkso+XBCSDLfaKYymQYKC+GrCdyox
         cRVJ62M9jlKpR0Y/YEloEWVzgHjBSZuyqjM0/VqkPqLQ/iUdyoyXkea1N6B4oRRD/Xs5
         laRqFSUaZXbr/ubNoMfxGzHKk6+224auEGqNZX7HbJdTO29B2wZXDV2TBKCqz/HWWYc+
         EhXHwvJscpZBlE7MTz6kJBieuA8jvXylhj2rF8dPsJ0Z2Dhg1X3OhfA6PD82XWfuhEXb
         H6PXj2uLnyn6xURFLEP6346L8dG9Lplmx03fSLhDttrX0tzDzyCSHjaLj3s+3t1fWPzM
         fzug==
X-Forwarded-Encrypted: i=1; AJvYcCWp+GRyTFlV07almcJo4pL3FpigClaR3C23zxYPZg1yor3u9F3uamtrmaAHhZwvyvVhWhyCDhSNHjap@vger.kernel.org
X-Gm-Message-State: AOJu0YyAhG+I0rzdc3TPH/m+ziutsRvgtwXCz8Zyhb3vmJDfD3/3yRK5
	7Wq6jpIY9vkrPFUDI0dQV00EH2RJtY+qDogBHANqLqg/ya5QxzDnMhA7uATRoDGG68w=
X-Gm-Gg: ASbGncutJA/2pYjnOq+gfx3AoPNLf3axDxYqwJIuE6KEIY6pHj7c1vCAwLadoWXfGJh
	VVUufYbYj2fIW9/6lHTosymr8Zs9w+pvm+o1owFEY+qa+RjBlxAF3hpLQ+bLtDhYpuK/yBmoLta
	8S9GNzEpsmP/XGygQlG5Pi4JQ7uSqmGTtVknXNzryelXvcwGMNsumkn845P8pfB65NqfPcytxG+
	kNDIx2T9XJdqpWkKvzUnRQFTqbL08X0ZFn+dAEMXwE3oVzG6by/Psjx9KRpYa3qV3Qva34/p7JJ
	bct7nnP6OXZcBfwM1xxWBqImo/kJwlAac0dPfwHSB/pPbuXRa3PyGp9VY4XS6d3rX4aWhoQ2bxS
	DNn78xpsJdpqoiL/B60LhUYfq+1V0w7JgrBo2+8IAw1Wc99I8BQS8vo9WSTQlykBw03EDMGW12A
	==
X-Google-Smtp-Source: AGHT+IEp5j1iQ96MMXAlx70JaD765dVDYKZjqUaSOrp+MJb+kKKrMyzgoJCPGSfOUySwQ9s68QlWPQ==
X-Received: by 2002:a05:600c:4ecc:b0:45d:e6b6:55fe with SMTP id 5b1f17b1804b1-47717e75d4amr36383815e9.34.1761654182221;
        Tue, 28 Oct 2025 05:23:02 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952cb7dcsm20851329f8f.11.2025.10.28.05.23.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 05:23:01 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 28 Oct 2025 14:22:48 +0200
Subject: [PATCH] dt-bindings: display: panel: samsung,atna33xc20: Document
 ATNA60CL08
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-drm-panel-samsung-add-atna60cl08-v1-1-73123789fcdb@linaro.org>
X-B4-Tracking: v=1; b=H4sIAJe1AGkC/x3NQQqDQAxA0atI1g2MA8rYq5Qu0km0AU1lUosg3
 t2hy7f5/wCXouJwbw4o8lPXj1W0twbym2wSVK6GGGLXhpiQy4IrmczotPhmExIz0teoD3kOCcN
 Lhr4bZMyJoWbWIqPu/8XjeZ4Xa1TdNHIAAAA=
X-Change-ID: 20251028-drm-panel-samsung-add-atna60cl08-0be9659efc8d
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Douglas Anderson <dianders@chromium.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2123; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=CEjvF/rXJZsXAc246Is0WAGvmoGx4JsfoR3gcf5uF/A=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpALWfbbMRU3Ia07dT7ta2MsUExokqWb0XS4gM7
 GNR01YFppaJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaQC1nwAKCRAbX0TJAJUV
 Vl79D/9D58qh5dOtmUd/ocHKcOLp0PrQFraOGu0xPZlTe91z+FSX7UrtMZcZRygCMgrUNXn7FWp
 xLVgBXbJOZKu86PjRe7CIIfXf/4GjSTS25VMb/MwEIo6OK6vrUqX6CIz6fQ9Ild/XCoOHpDx67N
 NxranSt6StuVYDzolc9jwRpG7Ffy/aUjF4M6U1VGoEfTPHBrv6ZtaYsmBtvMULgD4QmXCwoBhYD
 LE2cyv2ZEdsstTDQhdXgAHZYwjXq6cgJFQj2ijmzIlkQm+TK9K9gGHasw/sJdeDmHBGRv9OhQJU
 5uD2j2zUd1TWXtDvl1FgEZq566YMhdxsxd+T0VwMHuiQj69ak9dUGbTIRxFuEkTX1hlOQGr/bV+
 XijWh786G0vKgGFRhOWLz5IdjQAz49Xf1Ijz8X9MQkhxZyTTazr9AFTast9nG17tjnRu6FKktLF
 tdWDT+ngSjuJHcxkVb6CZ/EAl+bzC5qwBBvVxTO5GldFCFzLrk0ab198mxdaEuB0PDgJFiv4Mt8
 18sYHPYJ1IsaP4Su7VY/I39Ll7DIvmq884qOvcoK1zSybquBzCMCfH0wOP4rsUkrL7EaJXoVYYQ
 40uXRQBJQUHVX1vOEWnwZNIgaTaGit2ZsHxlZTvvjI7EvatzAa+H3sBv/6Tuc5zyjWSvRM3rQkB
 cT7L3WWx6nYzZfg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The Samsung ATNA40CT06 panel is a 16" AMOLED eDP panel. It is similar to
the ATNA33XC20 except that it is larger and has a different resolution.
It is found on Qualcomm Glymur CRD platform.

Raw panel edid:

00 ff ff ff ff ff ff 00 4c 83 a6 41 00 00 00 00
00 20 01 04 b5 22 16 78 03 0b d1 af 51 3d b6 23
0b 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
01 01 01 01 01 01 cb fe 40 64 b0 08 18 70 20 08
88 00 58 d7 10 00 00 1b cb fe 40 64 b0 08 c8 7a
20 08 88 00 58 d7 10 00 00 1b 00 00 00 fd 00 30
78 da da 42 01 00 00 00 00 00 00 00 00 00 00 02
00 00 00 00 19 96 c8 46 1c 5e c8 00 00 00 01 4c

70 20 79 02 00 20 00 0c ba 41 59 a6 41 00 00 00
00 00 16 00 21 00 1d 48 0d 98 08 40 0b 08 07 00
f2 ea 50 d7 d3 b6 3d 42 0b 01 45 54 40 5e d0 60
18 10 23 78 26 00 09 07 06 03 00 00 00 50 00 00
22 00 14 e7 f3 09 85 3f 0b 63 00 1f 00 07 00 07
07 17 00 07 00 07 00 81 00 1f 73 1a 00 00 03 03
30 78 00 a0 74 02 60 02 78 00 00 00 00 8d e3 05
80 00 e6 06 05 01 74 60 02 00 00 00 00 00 5f 90

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml b/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml
index ccb574caed2838273e84c6412ef128e74ec3681a..f1723e9102525d6ca4a0e53033f0769b1df107ca 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml
@@ -33,6 +33,8 @@ properties:
               - samsung,atna45dc02
               # Samsung 15.6" 3K (2880x1620 pixels) eDP AMOLED panel
               - samsung,atna56ac03
+              # Samsung 16.0" 3K (2880x1800 pixels) eDP AMOLED panel
+              - samsung,atna60cl08
           - const: samsung,atna33xc20
 
   enable-gpios: true

---
base-commit: f7d2388eeec24966fc4d5cf32d706f0514f29ac5
change-id: 20251028-drm-panel-samsung-add-atna60cl08-0be9659efc8d

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>



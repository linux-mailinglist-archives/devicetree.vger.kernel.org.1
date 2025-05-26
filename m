Return-Path: <devicetree+bounces-180551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B033AAC402F
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 15:20:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7E6FF170F7F
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 13:20:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA1A81FC0EA;
	Mon, 26 May 2025 13:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ocong8TV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2BD3594E
	for <devicetree@vger.kernel.org>; Mon, 26 May 2025 13:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748265635; cv=none; b=bjlFdyQVd2IigRC21N0zOCMapwVPBnhF2iWDGopLeA7c27X0jvyXgLQlIdSNVbtL7egUHJfbCLGAFPBD90bEqbeoeR61zn/hYDUVcUd+8pt+bHgoUDKyDb8AJRR2g+MYj6uqDk5rgPYnWLBwmkYyDTsiG0qduFKW6zMYGzjgJFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748265635; c=relaxed/simple;
	bh=FA+FFymajfUy4pOqjSAWA3X/OMrBghhQSgqCnZeHplw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=OLGkmDmiiOVn0ALRljGvQhPIvSUxduifDB7e+RGLds3DdTN8uAqPVBmWSLpxCtCiFmH35GYT3jeVhOn6vQJA4tIUA5WB63LCvaczy2LSO4uTW2G+ERr31/ECKu+J5zmADjiUIGbk4zC5Y6069Vc9AS3rXFvVm1YY99CoctR6RVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ocong8TV; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43cfba466b2so30054755e9.3
        for <devicetree@vger.kernel.org>; Mon, 26 May 2025 06:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1748265632; x=1748870432; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3Ej9FiKr0JkEdWsFsmolvJ2gLB0Q5mF9UscCZJ16sQU=;
        b=ocong8TViw1zo0oNQZth390gQrSEj0zbazD8gF6dXQ1l33/36QDNm2ZwhGkiOtQZFg
         Mi8I+LcJFfkqCs7Zrew9j1PYpqDK6ot86C/Sl2mpbJlzzl04mqpo5lh7ioK6VEkyGONI
         GF9HPMrxGrbJPIipUOQJzHQMU7QHLTFaE3h5n6od7F+9Owx9mlzEyfd9CWoz1Y4uGimq
         j51hBJfE6wOJw0RyqscPJlMEVcm9OLG+W+WxvJWUs/WdOV/6oFKy+4NiGKHk4uqH1AOn
         lzqSzrIewrosoBSFUxtGCJQboSQIBpaBxJZph5wgHNCVVrpagNKe0ejW6HbDpe5Hnq4m
         ZKvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748265632; x=1748870432;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Ej9FiKr0JkEdWsFsmolvJ2gLB0Q5mF9UscCZJ16sQU=;
        b=STu02ZI3WV2zUaf7WDyhnorqn5iyNsUX8lsL/VUoiywGo+e2lyK0ECtuOHhjwv6TDm
         zQ71AO2ikfYE043oZGso/4GmIyEIhQWvspjCok39u6OrFZqhvGPU38RUMIfZy4ADX//N
         QrjFqbxJWygvot8fgwygbLEl5ljMBs2Dx/eDQSm18FPPwXVylttAwP6afArW/gWboB0S
         Z70sXmENAOPnzqqU33VMXJsS0TQZwH80SZ4rj8/fuDs9wfcN4RowDfdbrj8iYBFDkhHM
         WF0hTDyR7KUO7Mh1O0slwOqQ7y5IkljoKE7qhmF8+ehw23bcL9dtvS09gBgXBAUvQ5vT
         tmzg==
X-Forwarded-Encrypted: i=1; AJvYcCV43ITBA/5/8GTgn/OKLUQnlUDu32GQDYNCR+TWG1tE8feex47kMnApwPTf5qnO58CLBxJ4dnqBEXx8@vger.kernel.org
X-Gm-Message-State: AOJu0YykiClF33L6PF58pEjCOsVWJpNHhF85uT5s5YSAJ0uql0l0x8fo
	R6Bhd7BGEdJaqGfSMlyeyJwWfvHA8Q+hzJCThlghv7uzV90p/3JhcDW7TYwDpkJkYgU=
X-Gm-Gg: ASbGncs3qLbqjSXPNaGcaxhYjrvPn0Ecdma04T6FMfQI8+A3gtQLMwG824m6SJ0w8sT
	R+Q5yQcLQaRvML9VoU8Wj21/jI40XMGM7P2j23qUR2mf70SNc0DVfbUoLxeawcldVHi5LMOUOPK
	8VMKbSduLsorM4lVI5nTbd0LqydOjCC+SuO7pZ5qoDZj6jGpRpTG/jsaJoce3aBaRQGg/6/SjTF
	qOfByD6kVa0FSWJ4kseYkxD68Wqz3DTEL9KIQz+zQAAdsJFGmif6UPO3NaZF77WfDnl0j/PDJwS
	MQNOTneNhaX2yppYHoJOLkKt5dflPsVD8qBboAJ9NdLDup3QFv2AFIH+9K40s6WJanRnpPxckS0
	7Mt8FgVa4Yk+O8gtVGfi8dQYyzVfP6ok=
X-Google-Smtp-Source: AGHT+IEuz33WELmldIakkzi+3/fUP8upZSU2yYSV4bJxcgAOZc9F6u0AC/YiVsjAsgx/Vbe9PrzSXg==
X-Received: by 2002:a05:600c:1385:b0:43d:3df:42d8 with SMTP id 5b1f17b1804b1-44c93da7c08mr68123765e9.6.1748265631739;
        Mon, 26 May 2025 06:20:31 -0700 (PDT)
Received: from [192.168.0.2] (host-80-116-51-117.retail.telecomitalia.it. [80.116.51.117])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f7ca2dd9sm232876545e9.37.2025.05.26.06.20.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 May 2025 06:20:30 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Mon, 26 May 2025 15:19:08 +0200
Subject: [PATCH v2] dt-bindings: iio: adc: adi,ad7606: fix dt_schema
 validation warning
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250526-wip-bl-ad7606-dtschema-fixes-v2-1-9bd56d039489@baylibre.com>
X-B4-Tracking: v=1; b=H4sIAEtqNGgC/42NTQqDMBBGryKz7pQkJopdeY/iIjFjHfCPRGxFv
 HtTT9Dlex+874BIgSnCIzsg0MaR5ymBumXQ9nZ6EbJPDEooI4zK8c0LugGtLwtRoF9j29NoseM
 PRTRUWJdrRULnkBJLoGtIhWeTuOe4zmG/3jb5s3+GN4kSfSV12TllZVXVzu4Du0D3dh6hOc/zC
 8C0qQ7LAAAA
X-Change-ID: 20250523-wip-bl-ad7606-dtschema-fixes-5e6ab342e043
To: Nuno Sa <nuno.sa@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 devicetree@vger.kernel.org, Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1960;
 i=adureghello@baylibre.com; h=from:subject:message-id;
 bh=luRRUAmuf+DebA1gbJsvFSTK+6YkNQgeGlpopVKHTIA=;
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYsgwyQrikMv/5S2z+MzMnsjzXjvDBWfNPOj+XHf+0x+mD
 hprvZIfdJSyMIhxMciKKbLUJUaYhN4OlVJewDgbZg4rE8gQBi5OAZhIQQEjw2VXqcfTqnIaWWd1
 6vcW5bcv4Hqx2dpZdaPiajU3UfZPjxgZWjICNb2TQ0z/st05kPamQrNhT3rhkX2Fz7oKdRXZr59
 jAgA=
X-Developer-Key: i=adureghello@baylibre.com; a=openpgp;
 fpr=703CDFAD8B573EB00850E38366D1CB9419AF3953

From: Angelo Dureghello <adureghello@baylibre.com>

Fix following dt_schema warning when offload is used:

  DTC [C] arch/arm/boot/dts/xilinx/zynq-zed-adv7511-ad7606.dtb
/home/angelo/dev-baylibre/linux-iio/arch/arm/boot/dts/xilinx/zynq-zed-adv7511-ad7606.dtb: adc@0: 'oneOf' conditional failed, one must be fixed:
	'interrupts' is a required property
	'io-backends' is a required property
	from schema $id: http://devicetree.org/schemas/iio/adc/adi,ad7606.yaml#

There isn't any reason that we couldn't have interrupts wired up at the
same time we are using io-backends or SPI offload, so dropping off the
related "oneOf" block entirely.

Fixes: ccf8c3f106a2 ("dt-bindings: iio: adc: adi,ad7606: add SPI offload properties")
Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
Fix dt_schema validation warning.

Link: https://lore.kernel.org/linux-iio/20250408-wip-bl-ad3552r-fixes-v4-0-b33c0264bd78@baylibre.com
---
Changes in v2:
- Change removing the related oneOf block. 
- Link to v1: https://lore.kernel.org/r/20250523-wip-bl-ad7606-dtschema-fixes-v1-1-d9147fb2a199@baylibre.com
---
 Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
index 29f12d650442b8ff2eb455306ce59a0e87867ddd..1a5209139e1338f803c66ad2b4d63ad53cc11d96 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
@@ -223,12 +223,6 @@ allOf:
       - required:
           - pwms
 
-  - oneOf:
-      - required:
-          - interrupts
-      - required:
-          - io-backends
-
   - if:
       properties:
         compatible:

---
base-commit: 3964c6e5877f054497ffccc7d00f8f7add307d0d
change-id: 20250523-wip-bl-ad7606-dtschema-fixes-5e6ab342e043

Best regards,
-- 
Angelo Dureghello <adureghello@baylibre.com>



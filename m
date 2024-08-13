Return-Path: <devicetree+bounces-93271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4A595024C
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 12:20:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 80E9B1C221C6
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 10:20:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADCE718FDB4;
	Tue, 13 Aug 2024 10:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cUTLFWcv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C25117BB19
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 10:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723544447; cv=none; b=E0OZCcnP9UpF7U7eSIbiuMmFzPYvoc+xKGRK8RZVc9x2cJjsD+G+f3TR65cubmY41MR94SKXRjNky3oU62rHezYDphKOOv+pqsGzgOd4HwK2TeSuGg6oNUh7MvpLSRzSAv5ZPvxCEyYwkiB9XV3JMvd1Za2Pl6fLJuY2cS/7TYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723544447; c=relaxed/simple;
	bh=+bAE+IPFnXoXyX+IQcm/27Efz0l8mtqP+1M6sRFioGc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HxTn3OyKw7SmETgfWdSavx5HhOHpag5jj9W8/T7ukYmofDSJdLk/LEBkmrcmDXYlHuzLgAilH0JHkeotRY6KptKg/d+MOsOJRgRuYBwL3wZETDmhRc2iktPJVRSvhLEaZs14NR9AMn0P8XvL2Dpot3kvHho/LQJ0oCDtSKp41E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cUTLFWcv; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2ef2e37a171so10196061fa.2
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 03:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723544442; x=1724149242; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DX7W21Yh/mjR26O8GKAlfXIfXrqzTvCw1xoGhXjnBmo=;
        b=cUTLFWcvPaeQ/Y8X9nGKrKcAghquDQx6t8/YmrDJoZPol/qA5vcaatMCMjTi4B60zN
         fKzu786aElmJkcZXQNEe/MSm1l3vPWDZjCXP8uoLA1+VLsuYH8lUTJuAayA0OtZ/3hZJ
         V3iZ6UKz9RzVRXNaiSHjCZ4LXuzzn+YfHbdxVyKX/IYPnoKI93/ZxFBC+WS1jONaYior
         3NWaUACfJGHrPam2zSXwsUIx+UV64/tbeybK145yma3MJQ/+P8PCFyQGrrefRJFzxiqI
         htktTgTMg/9cYct5UjKJXyBorTvDJgHI7ii9OWVijvp79KimF21Lo8PWLoBqdUtao4cp
         Z/5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723544442; x=1724149242;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DX7W21Yh/mjR26O8GKAlfXIfXrqzTvCw1xoGhXjnBmo=;
        b=q12dvSG7yrnK/1QNiek2svJrJFZIyByQ55yNfqK01+HlE3h6/E733EEu6g9rkKaht4
         8vtpWHPT3sgUsEoIWnPKWIwTSLaT5Mbe9D2bZRmVhTtAv+qQ12miJsJvj0z8MIKqTt5H
         88yPHayJVKxXiJ+dVEiRc4W2pcmcpCcziclilSw42hxvuPDC3JCqZi68HRSUlx7M620w
         WRkBHCmlzeSb+boBMh8q5inyAM8tHmy2/iVx9QvKR6p0/q8clOGyeY584JQg+Wy7PdoG
         Lzay6PGbCN0xdKyBkqwAseSUMDVqUBSVRe7WwFW6pqIPb/qq3fUOqZNHlrHxgm0T+6HA
         f5wQ==
X-Forwarded-Encrypted: i=1; AJvYcCVyu28Epg+XBz8rQ8W1ZWTAN0pH++rPPb4/bbJpUIWv3C48ZirZ+15vMLIKTs2qSlnUV/PbPIXgjBAJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzD8noZflFuIACKs/ssh87J1cI3UAMBDdIYq07gsFyemOL0cq2W
	/CvaWoVNo6UAXCdHI5rQJGfgWgRNh5TSCim0j39zEQ9wVt6ZU8xB4rXo8jEWv7o=
X-Google-Smtp-Source: AGHT+IF6dTnOB3zKQmaJKOzExBpsJDPGd/M7Fo3Lc8kYvoQwyxWz1+CKJCaj/mT05eno6Myf5S5LWA==
X-Received: by 2002:a05:6512:31c7:b0:52e:ccf5:7c3e with SMTP id 2adb3069b0e04-532150239ffmr786680e87.7.1723544441898;
        Tue, 13 Aug 2024 03:20:41 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53200eb3ca5sm965917e87.55.2024.08.13.03.20.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Aug 2024 03:20:41 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/6] media: i2c: og01a1b: Add OF support to OmniVision OG01A1B
Date: Tue, 13 Aug 2024 13:20:29 +0300
Message-ID: <20240813102035.1763559-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The change adds basic support of OmniVision OG01A1B image sensor on OF
platforms, and a few follow-up changes from the series extend runtime power
management support.

Previous version of the change is found as a shorter patchset:

  https://lore.kernel.org/all/20240620124745.1265011-1-vladimir.zapolskiy@linaro.org/

Changes from v1 to v2:
* updated device tree documentation according to review comments received
  from Krzysztof and Sakari,
* extended runtime power management support, added functional support of
  optional XSHUTDOWN GPIO, XVCLK supply clock and 3 supply regulators.

Vladimir Zapolskiy (6):
  media: dt-bindings: Add description of OmniVision OG01A1B image sensor
  media: i2c: og01a1b: Add OF support to the image sensor driver
  media: i2c: og01a1b: Add stubs of runtime power management functions
  media: i2c: og01a1b: Add support of xvclk supply clock in power management
  media: i2c: og01a1b: Add management of optional reset GPIO
  media: i2c: og01a1b: Add management of optional sensor supply lines

 .../bindings/media/i2c/ovti,og01a1b.yaml      | 107 +++++++++++
 MAINTAINERS                                   |   1 +
 drivers/media/i2c/og01a1b.c                   | 178 ++++++++++++++++--
 3 files changed, 272 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,og01a1b.yaml

-- 
2.45.2



Return-Path: <devicetree+bounces-206859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45466B2DC53
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 14:25:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1476D583A0D
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 12:25:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD75D2E2EED;
	Wed, 20 Aug 2025 12:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="SQkN8BFF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6AF02D24BD
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 12:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755692732; cv=none; b=WHsRMAzN3Y1r28+d0TAHCEkaGRIRCUtngQTXbxVdFOnER5j+EV6Y1CIXz3fP8d2vusF8e3tKQWD+/+/aBIjvNfESifbmIVjUeCWvQx5bo6e/zneFJeuK5uFKmK2iCAhGKl8SP+WB/LxrMx1Tm1DN2zqP9zaz/Qll9nNq99eZF5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755692732; c=relaxed/simple;
	bh=xUgpi/yU5v2YDFQpPE4JwiRi2DdyTbCUF82XELIQqVw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=WQIIJTetyYyjJmDv08PuX0E0pjFW484YaE/gaQxJ8qRUkGIiWQKsBv/zQeGPbZ4PhmnI3QFltrQvDsPe/fIwACA5O+zzcudiuI7sqT5cevFpW3ZZ9KHBULeGcFw1+5mA5OoAfy/V6FJaT7TD3/j2av7avxHnz5CRZ2/SIBnrxMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=SQkN8BFF; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-244581cc971so75183715ad.2
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 05:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1755692729; x=1756297529; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Hx11J/6XEjmmJ7LOB55tZi1n3uqABTD9Wv6DRY/RJN4=;
        b=SQkN8BFFwJfC0QDIPBqhvebOsJJ+Pf1m+8XC1AJXqzVOZKkZWJxvVkghRE0asWsmi6
         1eWLOxC0RR14o7O/BjOqYAvht8smDLO5aRWiEpITza8bMaVRoFtO7CBh+EtKbtOIQuAw
         2Zs79ttXEsIyLG5BYuf4DRYK7FC7ovxRKU52g+FZFCHRpc8IDACgm6L6HgC6xT9bRehU
         W7G8JjZldQFJ7XN450BZ2BE3T9kcUDn19U0xQXbIUWTh50/6m7XuBH1VYjoB6A0PVR3m
         +OJxJz/kdbIW4CPXZFpcEbbE192nA82ExojesVKoV2kk3yP1JuMUDQMooabpE7N8byER
         CLOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755692729; x=1756297529;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hx11J/6XEjmmJ7LOB55tZi1n3uqABTD9Wv6DRY/RJN4=;
        b=TRUXzj0nSnF8v/DDWn7yzzzNu/28e5GMLD7j6h0Gkd1Fp4NNuCljo8V6GZFgQKWKcx
         5Hhvgxlm/Eqp+ZNoEPvv+ANc1aA4XwANszv8UORYtWdJJ5PnTAvjqnS6DZ+0V64W+e9a
         3u0yLiEEq0wUHogf5zqQ1GLjOyq8RxV7Y8KkOS1c4rcFkC/GXrXD51oa4Mo90Ij+6vBe
         egfSmFosz0kXnOt1sBIydSHV+E3daynTOQJokqF4SHzZeyZlmFU/aGytwSE9P7Id8hEA
         QmcoOPaIzJJabTPZlZ99D7NJyJ3MO0j+sOgQ3fJgJw/dyn6u/Ll7UgKxCz4riYeQ+yUk
         PA5Q==
X-Forwarded-Encrypted: i=1; AJvYcCXIn0FfvjnCGYH4dbeXJqSgfEB5/Yq5KNg3kLwNFA0eVzCvpPbAh4iD9iuoBbfxCA4OkxITa+VsvI+B@vger.kernel.org
X-Gm-Message-State: AOJu0Yydu7g5kv9ZUjDtrqioVvI69FYV6LcenKJwOAwEllb5w6yPXkRe
	z4cTDVEEmFfk7mZhXC9OrCLOdptmPr5Mgl/L4sppLed5WEWvINNyk9H8KEKQgwWrR6Q=
X-Gm-Gg: ASbGnctBMgT9iQKlOy8B8UsWLE9Uq1B3NpfYC2LXpE6BPMmFRne/Yjhp22DYvxx7OG8
	1Wez0yjgxuNkgitBtEWOXoLY90lyPQFtfNr2DuGRaY/RgmW4FvNXoNJC99MLlHTih0Q0dgSfCjs
	BnsTidw5jmjyYOZhV/nm/fDXnEg9AM0dAmrH4iiqm0IZTqClWROlnfXOar4lqyZQFVCbvUpGeZA
	hAXqH8sseXNcafo40pip5z0Pu51Si2gsvJcsAdXGbySk0+Z3mzKoisZHZgoge3Q/BY00+Ie9Jew
	V5TsDQVgFPiTrkO/iI2IVtZu9mbY/dkK1r83jP0nDSNOzTTsrrHogqgmNJLxYyE5hq1uI1B4rJO
	yJHYaHTyAJf9PsRK/gUeiJ97A7mAb32e5q6nqHSs7wIOjwGJ+WyWNTx2FhFaWOTQs8vri4A==
X-Google-Smtp-Source: AGHT+IFS0/CNO8sJaiTLh+MwmPnTL5fkEo454inx3uj8dauJbbVA8ZR4IH2KqSHuflT3Voa/ZdsIbA==
X-Received: by 2002:a17:902:fc8e:b0:240:14f9:cf13 with SMTP id d9443c01a7336-245ef278ba4mr32765695ad.51.1755692729040;
        Wed, 20 Aug 2025 05:25:29 -0700 (PDT)
Received: from dgp100339560-01.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed4c745dsm25450135ad.73.2025.08.20.05.25.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 05:25:28 -0700 (PDT)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	bentiss@kernel.org
Cc: dianders@chromium.org,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v2 0/2] Add tc3408 bindings and timing
Date: Wed, 20 Aug 2025 20:25:18 +0800
Message-Id: <20250820122520.3356738-1-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The tc3408 touch screen chip same as Elan eKTH6915 controller
has a reset gpio. The difference is that they have different
post_power_delay_ms.

According to the Parade TC3408 datasheet, the reset pin requires a
pull-down duration longer than 10 ms, therefore post_power_delay_ms
is set to 10. In addition, the chipset requires an initialization
time greater than 300 ms after reset, so post_gpio_reset_on_delay_ms
is configured as 300.

Changes in v2:
- PATCH 1/2: Drop redundant "bindings for" from subject
- PATCH 1/2: Improve description (describe hardware instead of bindings)
- PATCH 1/2: Drop "panel: true" property
- PATCH 1/2: Drop redundant description for reset-gpios
- PATCH 1/2: Use unevaluatedProperties: false instead of additionalProperties
- Link to v1: https://lore.kernel.org/all/20250819034852.1230264-1-yelangyan@huaqin.corp-partner.google.com/

Langyan Ye (2):
  dt-bindings: input: Add Parade TC3408 touchscreen controller
  HID: i2c-hid: elan: Add parade-tc3408 timing

 .../bindings/input/parade,tc3408.yaml         | 68 +++++++++++++++++++
 drivers/hid/i2c-hid/i2c-hid-of-elan.c         |  8 +++
 2 files changed, 76 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/parade,tc3408.yaml

-- 
2.34.1



Return-Path: <devicetree+bounces-124175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5C79D7CE4
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 09:31:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E58B1281C40
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 08:31:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F4E4187FFA;
	Mon, 25 Nov 2024 08:31:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="R0nYKnJH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA5733987
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 08:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732523489; cv=none; b=rvfUZAlK0+qjI+p3wIRI0Bb3PW7LGj/SN1d4t1A/KJofCZgj9Y+BmehdlwjXns7Y+qSBG+SuNTWlkGowPwuKHyEkrwxlfrIgC2rrOtuPrUkAXpAJ/4SksH8IDlgRiap8UbvFO/apS4nmi/WrJo9TrXmSlhcHDXc1hu5Miy10YtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732523489; c=relaxed/simple;
	bh=He1DTAeJIyTPOcYmAq6cC2VSNdhtBdgya1P84hM+ZK8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=SxWkehO7/WIzrzslKfzXvhBSQBDFZ4uG5Riq8Rvoe+pCEuWm5sCb7+wJrTHz0/riIZ/sBzYAPCC8TYVjnNZKoXX1jL72a9E5C9Fy5KIC8M2n1mz+2e7Nm06DVt+yEEQ7zxPeCQ8grdcUAAxLSC3rLDkwPnx4J0HvKhFopIKm4/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=R0nYKnJH; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-7f8b01bd40dso2849221a12.0
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 00:31:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732523487; x=1733128287; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=g/Vcboz9yqJnuOCvwaptZL2oHcohzZsxdO1sPf8vDF8=;
        b=R0nYKnJHez2N5o8ZhBS2IVS7ji7thAdrMTQpcEW3r5Jl/FekL1t9cVYeMc3b/Nka+n
         jURe07RKHdzPVYaI7/8WicCC4pkttwbNrvHo6CMa6FAbJRmLqbKPWuRdznOlNAVPewe9
         H1CRsIal1tweaxkb3GrwBZafxzDTcaV83+vEc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732523487; x=1733128287;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g/Vcboz9yqJnuOCvwaptZL2oHcohzZsxdO1sPf8vDF8=;
        b=U2GuTX4xeXZ5HO9LLu+b7rm3Tf717s8g7smtwPnx03TeZkY9GkBsV/4i+x60yKt4Kd
         EpsoG9oMr5lJVQd7KonHOY24snGQPybE/1Z2Y0LfAq6+APRWLt5W082smYlibdAynnFT
         FqkGmKXs8M6grr5NmdyjtpsibgNVQYhro1TEALEkiHd5UVHx+GBSI4m0by47pOP/17gA
         Y3by84I0FXSPsB/wt46LGO+O0yyXSrR8n48qJBsip2lJaOFJdvkEuX5L6dO5KhzBlxDo
         eyGeEtpwMXWFjCKz11MHvd1DpUtyJl9oUS+7XPTYmmt8Vn0ggnwQIaTwIyqThV8WV14o
         1tuA==
X-Forwarded-Encrypted: i=1; AJvYcCWFrkido/Zy2FfQJye48amO6Nl9sd/4OE1do9SzSYAnNAKHDagZk9amA0W5EBwy5jQ+WlgsoaoK/P1M@vger.kernel.org
X-Gm-Message-State: AOJu0Yxa8hFRwVbXs1ds3FEa1+Rp1OpBXlFLG/uWiPgONcTzdBUvqbSX
	hEG1pYpUm+WTmNNrf0bNhNo5GjyQbc0PCRMof02AYub6cjuWCjOYXUr+gY2UvQ==
X-Gm-Gg: ASbGncucvp5vi1N+/fEqrkIM1Zz3G35gddrinLJd8CbrQUZhkyFlbM688LEbQFmGZqk
	dOSS4qEa5Nc0dPea7LL4fQpKHjmUVEtOOdoM+4keVFgDtw5rsQuBCthvu9T0NI6fQrzrRMJ8NQn
	iCcN+38XoLis7YViZb9ZzWzbjDcT3rA4cUm1GraPUHNu5ynyD3IR4fytMr2rYXIXX6M+TPw6Ewp
	AOgN8VpITKtl0GIkYh2fQKY4oNChDjQhhxnFl6X3k/OdLSfY21ZxJs6FiI1JbIXpywZm30o
X-Google-Smtp-Source: AGHT+IHErz94EiqWWoHbBTw76REJa1NEGWWXxWddsah0jH/Nk15nl1D8qZYS9TdahVOTmzplFY3DdQ==
X-Received: by 2002:a17:902:dac4:b0:20b:a41f:6e4d with SMTP id d9443c01a7336-2129fe38e54mr183070215ad.15.1732523487360;
        Mon, 25 Nov 2024 00:31:27 -0800 (PST)
Received: from lschyi-p920.tpe.corp.google.com ([2401:fa00:1:10:66a3:d18f:544f:227a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2129dbfece2sm59090025ad.157.2024.11.25.00.31.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Nov 2024 00:31:27 -0800 (PST)
From: Sung-Chi Li <lschyi@chromium.org>
Subject: [PATCH v2 0/2] Extend the cros_usbpd-charger to make it a passive
 thermal cooling device
Date: Mon, 25 Nov 2024 16:31:15 +0800
Message-Id: <20241125-extend_power_limit-v2-0-c3266a86e9b1@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANM1RGcC/32NQQ6CMBBFr0JmbQ0dDagr7mEIqe0Akwgl04oYw
 t2tHMDle8l/f4VAwhTglq0gNHNgPybAQwa2N2NHil1iwBzPWiMqWiKNrpn8m6R58sBRFWjRXY1
 5tKaENJyEWl726L1O3HOIXj77x6x/9m9u1ipX5kTWXUqTkkVle/EDv4ajlw7qbdu+zny85rcAA
 AA=
To: Benson Leung <bleung@chromium.org>, Guenter Roeck <groeck@chromium.org>, 
 Sebastian Reichel <sre@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: chrome-platform@lists.linux.dev, linux-pm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Sung-Chi Li <lschyi@chromium.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732523485; l=1270;
 i=lschyi@chromium.org; s=20241113; h=from:subject:message-id;
 bh=He1DTAeJIyTPOcYmAq6cC2VSNdhtBdgya1P84hM+ZK8=;
 b=OLCwUcBUsou2+ABwP0UXSKV7vUZPaomRddZGrl+h86RNJ+x71QSs7oiW+L7DP3Q1wvzytKfKH
 4ENfVmX64huAdUGwGKP6ecaGmBEYsfU1426QNSxPlqFMMjHCDNGYxz5
X-Developer-Key: i=lschyi@chromium.org; a=ed25519;
 pk=nE3PJlqSK35GdWfB4oVLOwi4njfaUZRhM66HGos9P6o=

The cros_usbpd-charger already supports limiting input current, so we
can easily extend it as a passive thermal cooling device. By limiting
the current flow into the system, we can reduce the heat generated by
related chips, which results in reserving more thermal budget for the
system.

This series will only works on making it a OF style thermal cooling
device, so related code are guarded by #ifdef macros.

---
Changes in v2:
- Revise commit message for including the reason of change for this
  series.
- Remove uses of `ifdef CONFIG_THERMAL_OF`, and use
  `IS_ENABLED(CONFIG_THERMAL_OF)` when needed.
- Does not failing the driver probing if failed to register the usbpd
  device as a cooling device.

---
Sung-Chi Li (2):
      power: supply: cros_usbpd-charger: extend as a thermal of cooling device
      dt-bindings: mfd: cros-ec: add properties for thermal cooling cells

 .../devicetree/bindings/mfd/google,cros-ec.yaml    |  3 +
 drivers/power/supply/cros_usbpd-charger.c          | 84 +++++++++++++++++++++-
 2 files changed, 85 insertions(+), 2 deletions(-)
---
base-commit: ac24e26aa08fe026804f678599f805eb13374a5d
change-id: 20241122-extend_power_limit-62c2d9aabfa7

Best regards,
-- 
Sung-Chi Li <lschyi@chromium.org>



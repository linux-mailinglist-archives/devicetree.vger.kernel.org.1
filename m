Return-Path: <devicetree+bounces-15576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 014C97EADDB
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 11:20:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA91728101F
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 10:20:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8306C18C1E;
	Tue, 14 Nov 2023 10:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NwH8/HfH"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF5218AF1
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 10:19:58 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53EFA83
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 02:19:56 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-32fb1d757f7so3440800f8f.0
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 02:19:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699957195; x=1700561995; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2Y3H40OKPDCFfv2becLxXj86Eb8PKEENf7u8qtMu42o=;
        b=NwH8/HfHjZSTkseKkhivPabGUXatcWSo2XeZ+Xm4AwIG0As5dliZR7VLIy9b09N1Ul
         EFJVsDwfIUbP/I+EMpSgPIp6O595PM1Zh6dbu3LPHNeSwFEEuB4BRXLmkdgRD6UpesVk
         8HOkz0w4GVVRKbOkFOrBXGYRiT/Pnrsn98ie8e+mI6G0DmDHTACqGVQX7a5IiLmLR7XN
         ZbpCAkbr1IG0aoDsFJSrpCmJAVungSo91lGESRW38gk3wFmIes9JN11G8QEbboR/Ioec
         5FuBxaFICReE8KMtg0+1noXbdWmHNW0PgfaSFl6tgCBbynMgysAaxxwi/ALoU5ST5XIY
         Z0Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699957195; x=1700561995;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2Y3H40OKPDCFfv2becLxXj86Eb8PKEENf7u8qtMu42o=;
        b=I0vnkyvMbzK6n0WsPmVepCcoiPqyYv2tQdgoRdiLkWN+DMiuNwR0y81vWMTi5SLh7O
         jXUUDJzDWo+qXTqGhsy+tVZeE43hpS3K23Xa/X1o9E3cFrJ5qFkXbu7iXScRubnJJvJp
         61ZXMlmxjeBqNjJPNCc5FYhIEtY7FPwDUqZ0j3f6fq8jn2SZOAZyxmQc76IZf7FxI+4g
         reByMIbAQWwcwLHe+YwNbT0l8rvzfdDLRM/BZPbzplhBfG55ftIa621X4VBrhu4w4mp/
         +Ynf+KZxPLVCV29WeUdNgEiN3yh57ET3iD3Co6IGkR/fBG3xGULtGR3JMhI/NSNX+EC6
         8C5Q==
X-Gm-Message-State: AOJu0Yy+1bfaDpeAENWwLX/XXeIJCyT7pKyg8gKMtwj7iUORUwSpZNy0
	zde3ywx4fhmHulgr/E8+1cDR8Q==
X-Google-Smtp-Source: AGHT+IGNE+czp6sJVuSZ6rbZ4X7ydJSAOjDZv3m+fSTHzBughjwpl/XOaFN/IVKp/JQD37HA6m0OKg==
X-Received: by 2002:a05:6000:1547:b0:32d:939d:c7cf with SMTP id 7-20020a056000154700b0032d939dc7cfmr5789194wry.52.1699957194709;
        Tue, 14 Nov 2023 02:19:54 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id v9-20020a5d43c9000000b0032da022855fsm7419675wrr.111.2023.11.14.02.19.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 02:19:54 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/2] pmdomain: amlogic: meson-ee-pwrc: add ISP power domain
Date: Tue, 14 Nov 2023 11:19:49 +0100
Message-Id: <20231114-topic-amlogic-upstream-isp-pmdomain-v1-0-f01e6fca67a0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMVJU2UC/x2NQQqDMBAAvyJ77oIbtdJ+pfQQdGMXTLJkbSmIf
 zd4GuYys4NxETZ4NjsU/olJTlXo1sD08WlhlLk6uNZ1RNTjllUm9HHNS+VXbSvsI4opapxz9JI
 wjEPrhjuFBxHUkhYO8r8ur/dxnLdsQI51AAAA
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: Daniel Scally <dan.scally@ideasonboard.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=699;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=hayA/yrjAypiR/MWtBGlEGZQq6NxUCOHYn4lewItjbw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlU0nIseqnNcBacgt3SvDuVxdTf2VWS+Xbpk768f36
 QchoRuyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZVNJyAAKCRB33NvayMhJ0VjZEA
 DLwjW/XFbr9zzHFU7tpFiJ9W6tKchyMNqr9Gpcwv/ZfJnCMjpu+2svRAx/mOQYfkIa7giyxJimcykR
 BiV+dWCXLeN6JnddPMQ+xUjvJeFUZy6NjaoQuLHzOrUxoziM/BUF51RRdhsLbCldYQRLi+UX7uxEnQ
 bXsrX7jbRN6rvlkIAQSishqzUlqqEiHC1HLgzlmxKR9ko1NR2DY7v+07mPn9TH1DyEqoHfQqka5ocJ
 tvNNg71f9BigMkVqDh1A27Kv6c4v3E6f0hTTYWSyD4G4fW+rFOboI5z3ZG8kNNl9rDq/PhXx1/3BJC
 PGwZyqZ6i6q5tv+EE35OCGPyViry+Al01U5y4GICcm5LK0UaWoj7v3W7zBZFIGf3Rz34Zhyz2VxQFF
 k/feHqyaKtyvmpYMQXn8tUOPZbx02b3cv4STR9KYGgROS8RrZdCMahOab8K+1p/BjDlfkiNJkS+rNe
 AhwfbyNoSn4F/Ng/PdFWpRkqmhHmnod3fjJccyVD8zQj7K00VB7AtYP8Qsz7yhQMI8eUvv9n1tTeku
 uc5eviHa1Pi61IQBUp/uOAZ7ep5d4NVPgtZWt5XqrZHsZe86wta4jHkfx7AD3lER9hE7Dn8uax3CkG
 avTZ2G+9km6odo/amaOXE0EZ+fsTi0qw5/5mQqVIAFrhonVf8lpTMwS22xFQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add MIPI ISP power domain bindings and entries for the ISP power domain
found in the Amlogic G12B SoC.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Neil Armstrong (2):
      dt-bindings: power: meson-g12a-power: document ISP power domain
      pmdomain: amlogic: meson-ee-pwrc: add support for G12A ISP power domain

 drivers/pmdomain/amlogic/meson-ee-pwrc.c     | 16 ++++++++++++++++
 include/dt-bindings/power/meson-g12a-power.h |  1 +
 2 files changed, 17 insertions(+)
---
base-commit: 5cd631a52568a18b12fd2563418985c8cb63e4b0
change-id: 20231114-topic-amlogic-upstream-isp-pmdomain-f7502561f911

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>



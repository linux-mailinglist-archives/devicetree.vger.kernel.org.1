Return-Path: <devicetree+bounces-113659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 872059A68AC
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 14:39:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A780D1C214B7
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 12:39:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAE771F473D;
	Mon, 21 Oct 2024 12:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bEpk1xV6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAD97383A2
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 12:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729514342; cv=none; b=lnUl2lNL/8HrDWBP+OQDWoQFbghjAVFZbcdEw7QJdugsbez0QQaP2jJS4kjIbFUjNI6fXGV025FnH9lCNS6qbOoHKWdWqNMevxObA93xXR84iQgUnCxS4uI2SMKz/OF0T8cJ4rckS9HMAp5DzU/dAIxCYuqOxsE5pcmaDChi4wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729514342; c=relaxed/simple;
	bh=xbiPN9kMBej0CUc3+MOlT/DDhzX/SYrbs5RWCAl6APQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=olZtPvpu0c0kV4+9YHIzklDkUWAFVs9TRRXNFdWZnFsFiGrZsqK/hcPd65cyBf0CBkJ3xwCWfVJNV+6RqUzWFXp26sfhADxoEhjQl3BbnbnW+s0zJv/CG2KGXOhpvmt4CAj7kDG/yYuwtp4LGlNrXT4zt1MqZNW+uzENKuKz6iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bEpk1xV6; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43167ff0f91so24049525e9.1
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 05:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729514338; x=1730119138; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Gt4Oufi6QREK97wHLQQqnjPpOHraNivCq5dYU2DA5lo=;
        b=bEpk1xV6fZnkrE76jHPwGIFX/KZv/eYnd354vUw8DB9AzB3hUAHW3RTzK4faHRkkLP
         BEflpsw/eQiSafGshGdQMDInEgmVQUtYo98AxojrvtH4iw6PE+OqWvMmA9TNR9A2F0wg
         34fqPbC0Vvw6Izdpw7qK0kiRSlTk6CIazPhfTNh4JyyfPH9R5MY0Im5ze3aKN6/TeB94
         X7/3ot11Br/Y21hbE5ds7odUUfM1fqSKV5ZPhV70rVP+Puad+fmtu4MNeoETN1td5or9
         x6a1cMIG8FTyBkl5iW55fw0yYm19DVCEqCeL3/bDBCu8Bc93qAGUpx93dmlo20eZq9fg
         YXSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729514338; x=1730119138;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gt4Oufi6QREK97wHLQQqnjPpOHraNivCq5dYU2DA5lo=;
        b=NtrmDktd0gmNTPgxf0onNdv5o2MN8KuiHjSejWD11741NNj4SfIon+Z/Qigqp/1jGm
         VfoPogiS2mxb5E8cGyIQY/0PakWfuij6+rHWl4FqrXLuZg0DeK1mHoN4dpVaeZyN3OBJ
         CPjLf2Ti4+N9+umtUlkllznW65Cag3ruzIOTWIV0xOosvOaKCQ1KpCXzWd/3XZRO3qzb
         DRcAvNzU1CqxVHc96i8CIA9pnjCmtxCU/SGO+f1/T0cnKQ3zNwV8T2gGaaoreytZAGvq
         xDf2NxJAWWD+HTeyA9zrlfn72KGjwvGrN0wiKeOg6rGpvRNfTFPiCSIDiOhNoWln9DDu
         VGqg==
X-Gm-Message-State: AOJu0YzbORoodphVt8Q6EE6bCzUgDKwNxpSdQJdOINFViX25eeWRC914
	GYzMTrONCaf7QQvus1f3isuSIaHRELJOM4d48UPLYcj1cDmcV8n9xnAKe7Gn1aY=
X-Google-Smtp-Source: AGHT+IFMuLi35bCFXsOQNuiMgTjlhjhqobCwyl41G5NrijAuY1Ny+xN7wnmU+ymWpVEAc96qeiJOhQ==
X-Received: by 2002:a05:600c:3151:b0:426:61e8:fb3b with SMTP id 5b1f17b1804b1-43161685b2dmr81189635e9.27.1729514338139;
        Mon, 21 Oct 2024 05:38:58 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4316f5c3023sm56273955e9.32.2024.10.21.05.38.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 05:38:57 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 0/3] iio: magnetometer: add support for the Allegro
 MicroSystems ALS31300 3-D Linear Hall Effect Sensor
Date: Mon, 21 Oct 2024 14:38:52 +0200
Message-Id: <20241021-topic-input-upstream-als31300-v2-0-36a4278a528e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFxLFmcC/4XNQQ7CIBCF4as0rB0zUAyJK+9huqA4tpNUIECbm
 qZ3F5u4dvm/xfc2kSkxZXFtNpFo4czB11CnRrjR+oGAH7WFQqUlooISIjtgH+cCc8wlkX2BnXI
 rW0Rw1mjU1Gvbo6hGTPTk9fDvXe2Rcwnpfdwt8rv+ZPNHXiQgKKc0kr243pjbxN6mcA5pEN2+7
 x8Nv0tNywAAAA==
X-Change-ID: 20241002-topic-input-upstream-als31300-ca7404eb4ab0
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Cameron <jic23@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2880;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=xbiPN9kMBej0CUc3+MOlT/DDhzX/SYrbs5RWCAl6APQ=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnFktf9sWeJd1G8fC6PjttiC7RXB9h6I4vnbGFbzI0
 YEJtXDKJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZxZLXwAKCRB33NvayMhJ0RQaD/
 4jBhYKGZeK4DSxdOQu9QsbM85Z7b6ojbvSYfo3rATq/eRg2ZpPSmgGcBZ2oSPc/EFl8oNwaobOj4bp
 e4yYjwsvO5McUwhbDES9B6pD9iNPan/kq+WMo4byqZKq+tKV4pXK+NE4LLIJZD6TG+N5ubYSRnCQLr
 dhBVLRCvIzme6XWdZ/vQPA0S7UojwbmQQhY4Vyzx2E+KbKgveO7CEkNpYBXJ9y7E693x3Tpt1gxFdt
 v1zVhw/ZyMD800tnSmAPGXeOcjTMb+aFZHW501Hk2IraVMhmRwbjwd8W7xmPxvk2EgjoTDYnOv0OSR
 +7kkvdVPUVnIMrva3xqayRtLAbt6akhm01baMJ+fUyo6KMjCGXsYnzJnkfffvc+MvR2e7caajMWNBt
 mQ7SCgojBX9FM8rGgAeDR9IXiq22UAy3NTPAc/P/o83MZB61YToBaoBvJrRJ/lSsNGuWd3X5LsldMX
 4wUmzIu+7v5BJ74KdsV7EDghRq7xwagJpafd2hMPJQzIXKkaH/6OrMA7ppDEog6YsKODH7wfBI6ZIw
 gYEmyKfhgvaH1Rpjobk4WTDNyhqDp8PBE8zwpj1+Uit2IiHLdT4h0uVqW/9EWqkXx0AH52nR+LcldF
 cYEo4y5jIzNkUmKkeiSXkpNr/q9vvtEp6Kl2TteRvXa7cAZhyIC8kHUmrZZg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The Allegro MicroSystems ALS31300 is a 3-D Linear Hall Effect Sensor
mainly used in 3D sensing applications for head-on motion.

The device is configured over I2C, and as part of the Sensor
data the temperature core is also provided.

While the device provides an IRQ gpio, it depends on a configuration
programmed into the internal EEPROM, thus only the default mode
is supported and buffered input via trigger is also supported
to allow streaming values with the same sensing timestamp.

The device can be configured with different sensitivities in factory,
but the sensitivity value used to calculate value into the Gauss
unit is not available from registers, thus the sensitivity is
provided by the compatible/device-id string which is based
on the part number as described in the datasheet page 2.
    
The datasheet is available on the product website at [1].

[1] https://www.allegromicro.com/en/products/sense/linear-and-angular-position/linear-position-sensor-ics/als31300

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Add rob's Ack on patch 1
- Fix commit message layout on patches 2 & 3
- Use Datasheet tag on patch 2
- Fix bindings file name, add options interrupts, fix example node name & compatible
- Fix driver with Jonathan's advices:
  - Reword top file comments
  - Reduce VOLATILE defines
  - Move registers values next to register define and add an indent
  - Use sign_extend32() to X/Y/Z macro, dtop cast on temperature macro
  - Add als31300_variant_info to pass to i2c/of device_id
  - Move scan buffer to irq function
  - Use guard(mutex)
  - Return fractional for millicelcius
  - switch to aligned_s64
  - use index 4 for IIO_CHAN_SOFT_TIMESTAMP
  - Add usleep after switching to ACTIVE state to avoid hitting read errors after wake up
  - simplify suspend/resume functions by returning als31300_set_operating_mode()
- Link to v1: https://lore.kernel.org/r/20241007-topic-input-upstream-als31300-v1-0-2c240ea5cb77@linaro.org

---
Neil Armstrong (3):
      dt-bindings: vendor-prefixes: Add Allegro MicroSystems, Inc
      dt-bindings: iio: magnetometer: document the Allegro MicroSystems ALS31300 3-D Linear Hall Effect Sensor
      iio: magnetometer: add Allegro MicroSystems ALS31300 3-D Linear Hall Effect driver

 .../iio/magnetometer/allegromicro,als31300.yaml    |  46 ++
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 drivers/iio/magnetometer/Kconfig                   |  13 +
 drivers/iio/magnetometer/Makefile                  |   1 +
 drivers/iio/magnetometer/als31300.c                | 495 +++++++++++++++++++++
 5 files changed, 557 insertions(+)
---
base-commit: 57573ace0c1b142433dfe3d63ebf375269c80fc1
change-id: 20241002-topic-input-upstream-als31300-ca7404eb4ab0

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>



Return-Path: <devicetree+bounces-44810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 296F385FA4D
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 14:52:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A07111F24BD1
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 13:52:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7419A135A67;
	Thu, 22 Feb 2024 13:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uXIpZs7D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629BC133296
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 13:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708609945; cv=none; b=obQ2caDHLBBBZ2yDYRQgEwZKF9nJ8Jwl9WyEgNAvaEKXLOsehxx+VDG1kHd9NYX8H8dZ7JTAnVCcbIHoF7HscNfs0M5mMrsZU+e5+Bp8jrxs1AYwhZdg/EacKY+iibWRykmDO+TamcV+rqCTxWMHqnEOhf1D3jU/AqJq1jDfoQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708609945; c=relaxed/simple;
	bh=9rVzNTAAYXnMs7MfpROp5deA4r6Lb7fRQnEpmwvz2mE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=gyrmP/YfltY+h5q00Fq5hUitgDeuZEU56fGtP5jz58uSBLPOQhVcIJrZEQCaDApJCUXOoyw8HZycI+4u4WGKQMn208bBya4ozOjB/R+noniP46h/AkTyPd0TmedHu4pHEsw1GOpYu+RizFtm5Tsgw51mFlN9vmf7v7QJA3iTFq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uXIpZs7D; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a3ee69976c9so507504766b.0
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 05:52:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708609940; x=1709214740; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KkwALuuS9M9PSFBFc5tMoPkB9c/kjBr1oSlzVPQUlEY=;
        b=uXIpZs7DKUKEYQkJzFvRgT3R+GAPTYpgTCXxTRj6RnETgY0hb5LrAio2r47fI3Jd3+
         ZFvL00kR3RSERwFPdDrfw+GONx9Up80zeuc8OyW2TUB2c43NB0ymZRb0axmUPZAB9Qsb
         52BC5SOpXx9CzKCr/lLIiJ3TgpY/9YaBP9WjiwZ9eqV68mVCFmd9zqBt6rg2Y4Po/vlh
         R3B3gbBPuv0phoD8VTm482Z1HFkS4rb62X4drRlpy46yHuHXhL1SLjW1oR64diadT4vq
         KjXSwQQgXKhdUqVtuKM1MdtvEIF9fvoiOji+SmPsE65nS/CQ/kOZLaPvDgI4tBZv7Ait
         lIpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708609940; x=1709214740;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KkwALuuS9M9PSFBFc5tMoPkB9c/kjBr1oSlzVPQUlEY=;
        b=r1uVZBVHebn1TscvrRDggczoMJAyKTc8m+aJANeRGXgRIBX+LBUuz/koONrjYH/AIX
         8ao6aj7GIoXbKMVhn6QJOMfXn3yN36oxvBSMIZwzi1izdGkn2yz8I0WojwBASAArkWCU
         tG0oBOSZaePfRv+TG4EgFjLQK8SGw38ECRvHoGK7kelO1xWTqDZ6TOvB7NYnlg94WXFJ
         7nUbEFWHyXmPHj6DcabT/OP5P7Yc7E8RLHJ65/ulW+aokETM59YhsCwXmlQNAsZpVyZJ
         Cngt/CZcsUkAvzOMh+AeLjS4pWQcm70PzvD0Hh0Gltml8P+/Q8HKzfN+TmwT9VdFaJyO
         UrCw==
X-Forwarded-Encrypted: i=1; AJvYcCXjwLqxKS97RffkwUkKHR/BM/0HbGFqiwFmwCQvf5nxcmNZRuacIM9qWApCimFeM0A/zr1Y44MMp3fwCpZKRPJy6ECO2i9VycFEOg==
X-Gm-Message-State: AOJu0YzMiXo9N0N35fg3JPeTIfBQxc6QB7ZanPStCezngxJq3tUuA6LD
	JAJJWE5jOzr3h6O1EIbXoIfaDIH2GHyvcOcrsM5yfdXaHJmaEEr2CdhWbPj/fg8=
X-Google-Smtp-Source: AGHT+IEELfLxUsEw/wegIN32tw4xel6QaTJaQ7ZIgjPnVyn4Lso+bKU8EelVOd8FRy1aWXX1guCfWg==
X-Received: by 2002:a17:906:69b:b0:a3f:6302:1e61 with SMTP id u27-20020a170906069b00b00a3f63021e61mr2427516ejb.73.1708609940572;
        Thu, 22 Feb 2024 05:52:20 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id ot18-20020a170906ccd200b00a3ecdd0ba23sm3382839ejb.52.2024.02.22.05.52.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 05:52:20 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v6 0/5] spmi: pmic-arb: Add support for multiple buses
Date: Thu, 22 Feb 2024 15:52:01 +0200
Message-Id: <20240222-spmi-multi-master-support-v6-0-bc34ea9561da@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIJR12UC/43OwWrDMAwG4FcpPs9DluzY7WnvMXawHbs1tHGw0
 7BR8u5ze8oIhF0Ev+D/pAeroaRQ2enwYCXMqaY8tNC9HZi/2OEceOpbZggoAUHzOt4Sv92vU5u
 2TqHweh/HXCZuCK0G6bQ+Otb6Ywkxfb/sz6+WL6lOufy8Ts3iuf2POgsO3AelI4HwOvYf1zTYk
 t9zObMnO+OKErRHIRfckROAhN0Rug1Fa0ruUdS+AmcDhAgy2rih5IpC2KNko3pvBHmjjbNmQ6k
 1JfYo1ShCpbyVgiy4P9SyLL/Uqumg7wEAAA==
To: Stephen Boyd <sboyd@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3091; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=9rVzNTAAYXnMs7MfpROp5deA4r6Lb7fRQnEpmwvz2mE=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBl11GH+c4If4nAE5FyaKTtc/3NCAvH3/McfFiQ0
 EdOWR2irGGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZddRhwAKCRAbX0TJAJUV
 ViZ0D/4oKGeePCJ4orbhRWOkHQQ3C76zvhHTi62Jnmh/9BH295YEYcH8MfACfkUgDBlS71WKaEq
 cWDTuob8hQ4ZlSjTBmMEG9SKPvSYUIwgOKO2RQZcaJnoCtNcT1hIswNSLS9v3PnO4gjX8XWbXpW
 nGro6zGnkOc+yRDyrBw5I2gG4azgiGVdRPplw9nyj96gnGxBxkE8KFNBA55Kg8C/shBTy9FrYcO
 JrDzlP1ApPjJcknVOqjen+dvQys5DuWeTYk3W0uiXgD8OTrTCC81mO7RZk9FCOk/Ub1ehu/OGJW
 iHDUErCFD91TvYnd/hng5/w6jUPqT+Pq9ltSO8W67gpK8XMsRAaYN5EEb7D6mHoZarJdVbFJqGj
 W+347CHkmCK9OpGTheyBRNVy2+BhGj/kDfeejdR5bqQ6z1mxkswp9/s4HkvOlF6pQgQd4olkul6
 WZ9alv9v3yRRqzGcczy3iD+7r+5WS5tn+/qH19ZMKtpboUW/8PY0LEm6aarESXi/pA5n638rN56
 wRq8U0cxMV8G3P+v/wdgnnpXRp0u9IF2+Fr2jasXGVua5aky9FhmEdNdYpF2mBPfKKJDJhFsw7O
 YJ0S/7DfmcAJpR8UcrvdYzX4KXWom6yWz+goyKx9B3GNT/bAAv+eRrs6GnFWN58vFP0QkOpQT3g
 7VXgTcLlQ8TTVRw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

This RFC prepares for and adds support for 2 buses, which is supported
in HW starting with version 7. Until now, none of the currently
supported platforms in upstream have used the second bus. The X1E80100
platform, on the other hand, needs the second bus for the USB2.0 to work
as there are 3 SMB2360 PMICs which provide eUSB2 repeaters and they are
all found on the second bus.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v6:
- Changed the compatible to platform specific (X1E80100) along with the
  schema. Fixed the spmi buses unit addresses and added the empty ranges
  property. Added missing properties to the spmi buses and the
  "unevaluatedProperties: false".
- Deprecated the "qcom,bus-id" in the legacy schema.
- Changed the driver to check for legacy compatible first
- Link to v5: https://lore.kernel.org/r/20240221-spmi-multi-master-support-v5-0-3255ca413a0b@linaro.org

Changes in v5:
- Dropped the RFC as there aren't any concerns about the approach anymore
- Dropped the unused dev and res variables from pmic_arb_get_obsrvr_chnls_v2
- Link to v4: https://lore.kernel.org/r/20240220-spmi-multi-master-support-v4-0-dc813c878ba8@linaro.org

Changes in v4:
- Fixed comment above pmic_arb_init_apid_v7 by dropping the extra "bus" word
- Swicthed to devm_platform_ioremap_resource_byname for obsrvr and chnls.
  The core remains with platform_get_resource_byname as we need the core size.
- Dropped comment from probe related to the need of platform_get_resource_byname
  as it not true anymore.
- Dropped the qcom,bus-id optional property.
- Link to v3: https://lore.kernel.org/r/20240214-spmi-multi-master-support-v3-0-0bae0ef04faf@linaro.org

Changes in v3:
- Split the change into 3 separate patches. First 2 patches are moving
  apid init and core resources into version specific ops. Third one is
  adding the support for 2 buses and dedicated compatible.
- Added separate bindings patch
- Link to v2: https://lore.kernel.org/r/20240213-spmi-multi-master-support-v2-1-b3b102326906@linaro.org

Changes in v2:
- Reworked it so that it registers a spmi controller for each bus
  rather than relying on the generic framework to pass on the bus
  (master) id.
- Link to v1: https://lore.kernel.org/r/20240207-spmi-multi-master-support-v1-0-ce57f301c7fd@linaro.org

---
Abel Vesa (5):
      dt-bindings: spmi: Add X1E80100 SPMI PMIC ARB schema
      dt-bindings: spmi: Deprecate qcom,bus-id
      spmi: pmic-arb: Make the APID init a version operation
      spmi: pmic-arb: Make core resources acquiring a version operation
      spmi: pmic-arb: Add multi bus support

 .../bindings/spmi/qcom,spmi-pmic-arb.yaml          |   1 +
 .../bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml | 136 +++
 drivers/spmi/spmi-pmic-arb.c                       | 948 +++++++++++++--------
 3 files changed, 715 insertions(+), 370 deletions(-)
---
base-commit: 4893c639cc3659cefaa675bf1e59f4e7571afb5c
change-id: 20240207-spmi-multi-master-support-832a704b779b

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>



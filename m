Return-Path: <devicetree+bounces-135500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE89A012AA
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 07:19:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6C2847A1D77
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 06:19:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 235F614A09C;
	Sat,  4 Jan 2025 06:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zHa86SQY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270B02AF09
	for <devicetree@vger.kernel.org>; Sat,  4 Jan 2025 06:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735971561; cv=none; b=QMpXJ5PDOWPIyvB3yoJ0fyfJnCcV7BwR34X9M2xBee49+C+7l2aLqtqHjWZ5lvWdC5ff1H67d6SvSzu0NqZdEbfCBpG3s8GmUlMIih8FHauifdLnQoC40b7kC9a43WuiLpR16nj5wrh5SOhi5hUjE2Po03d15D7fbX7yqp+GuSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735971561; c=relaxed/simple;
	bh=Oz0H4e7GoqhxzEIBu57EARlMsG1wASXpX7bzm3iCJak=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Wed7IKYSkEEwKjPgivTikx33I+NFa7YqZ2GZZwy78TmqDnKUNcFk8ehI0pqWvw2BbIQq63IkTvxYnBTQUk386XMXSAjqFhmB4pecfsWjef1xEQmn3QzTOS9O8tbQM0+fvjyZEl7INmHDiN9ECWqWESbcbg/zoe8QMwqIuYMSZ5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zHa86SQY; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-54020b0dcd2so15028951e87.1
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 22:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735971557; x=1736576357; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3RekATTNT0K3xDrKztm4vmRfnU/FaM/rblunrkf5bg4=;
        b=zHa86SQYAwQ/OZbOwFSTHL+smHbJg+UVhwDzLvlk0/2AURQBFS1vbx88v7MlTnWj6R
         AqpeZxSZZ5Hks7mvsQEsN4E8FE/xQu/trFg7ibpKNxWY2GK305JXxOsQVAyuVtwPjTak
         nX7UIBQub6z8dKmly7ckk+WLuWdu/NVzy/cw3bIaPWOKr2O3pvniS719lkRH3y3lruvr
         wJWUuU6InMRfkn+uW94u+rMCJhVQgAetOgtf/DOHT5PlwJxiNnS283Q0hZxxEOXxntN2
         +rMamEa4FvyupT+hEFcSQIrHXaCj4zoeKzNKy/RM86zm7R/GbFo+R1xA5FkgZnDN9abZ
         V9kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735971557; x=1736576357;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3RekATTNT0K3xDrKztm4vmRfnU/FaM/rblunrkf5bg4=;
        b=Puz02DS6rgLV151UVUjbrI4YWoG9KnFnqm2I0e2v8CqfEaNHPu+ITvMmWKxyNqHkpe
         9Cd9r9zWNb/qX9/08LaVsD+vz/UxsHvpjMK/mDu9iBAPMmflqEZIxjhcYkq1Ts+0TRD2
         pz+dD74cGkXACIqV6rnl7BD08yJo596RDJvcLTlliLaNuvgh6Y8LCQeIsMAu4/XIDxDM
         GcfyHIDV2JPWKd8Ixs4jnRUpV0jRO/8UMBMN7dGNB07k9X0G5o6DeGipbcgvIl4IzuQv
         fLSq2DWiVbAoY0wXWrMQuNO52jRYoGxUSKgH31iiJn+Vf1EvxU879rC3H5+7Whdebedc
         9qDg==
X-Forwarded-Encrypted: i=1; AJvYcCWLmaS5yNCQCYAflFY+wEaQWi5SZPq/RK/LT611rgCCnkKH0EaPUf+8GGRfkiVTk26/SoE7evJuVDl4@vger.kernel.org
X-Gm-Message-State: AOJu0YzdA9mwtWuJv9/oTaE8WDADzjwE4OI3QA8/raas8XPDkGVE/19R
	O6HprQowAI8s6+2LjM3B22NVs13nykuuLgxEJ7IhyUt0OB8MWX/TECgGJBHlDw8=
X-Gm-Gg: ASbGncuY6tqZk/XiMRJ5m84hWAfQ6IJlH6lKzU5xrd53qGZcx14EeoPy1KE/41tEmMx
	zoBVXTUY5az4vUaox7uCNyoEosBtQMbaHBtcLw4SHQE5z6kVIysUCMqwXwhAOBlzzla0ig4nPxH
	mNPL3NF40bgERnVLOFA0cdiUBdZ9uK4XTnMAkfDQDdLA8z/UY6sHQ/aBA+ZjXQ6Jifj9vOhRk1R
	0QIfIh8mb3l/8ezwUZyfBw7qSbVABOSugz+zoDvI58eMwHqpCYVJf8qBH7DrSG80VfleVgf4uL9
	GHvaWGcNi8fTK2CV50iToFzI
X-Google-Smtp-Source: AGHT+IHXDr6PAmMIYv5f089ZNqXdfOolV7A0etQ7HsJWisbWnWUYgR1MuNzk75VFpFYl76zqArfGrw==
X-Received: by 2002:a05:6512:1281:b0:542:21ff:c31b with SMTP id 2adb3069b0e04-54221ffcc53mr15907638e87.13.1735971557173;
        Fri, 03 Jan 2025 22:19:17 -0800 (PST)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00--782.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::782])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223832c1bsm4261655e87.280.2025.01.03.22.19.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 22:19:15 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v3 0/5] nvmem: qfprom: add Qualcomm SAR2130P support
Date: Sat, 04 Jan 2025 08:19:11 +0200
Message-Id: <20250104-sar2130p-nvmem-v3-0-a94e0b7de2fa@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAN/SeGcC/3WMQQ7CIBAAv2I4i2GXtrSe/IfxABRaEgsNGKJp+
 ndpTxrjcSaZWUgy0ZlEzoeFRJNdcsEX4McD0aP0g6GuL0yQYQUMBE0yInA2U58nM9HatnXTd51
 SSpASzdFY99yH11vh0aVHiK/9n2Gzf1cZKNBGa46i7aTVzeXuvIzhFOJAtlfGjx5/e6SMioprQ
 AHKYv/Vr+v6Bh+Zo2btAAAA
X-Change-ID: 20241017-sar2130p-nvmem-5f856d99bbb7
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1461;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Oz0H4e7GoqhxzEIBu57EARlMsG1wASXpX7bzm3iCJak=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBneNLgeD0FoTmWNyH3RfEVZbMcU6CzfTbYsJezd
 SQiQplC0bCJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZ3jS4AAKCRAU23LtvoBl
 uMJIEACYjnoOiWYAHNRB4vH/iGe+PRlfL6lb8vR1X0GLhIYpv9Fi4l6ZmIKrq66B/RxQZO5wLrs
 WSdNl5vpot3424e1SncCR5BRYjyvvvyvaHM9zzWUwaNM/ICq4IS1B+IbIUHl1/Z+T84wVv2/Vir
 LHCArrS3sEynSvd2rAoowwWBQ5s3VX5BzI2sh3jwFapn8aiXF5yL+UTyrolkvn9Ft0TxWFsOrpV
 M26QJFlBSPsVhgrO+683KFDdCZlovN/1Av+PkQ37atH+aoAoJlpGIXhIwHS+iZC81bn6QiUYG/x
 Qo8nhBJqfCSjhGCNHtozuMe63oX+Q1SmxX5ycFUtKGoucgIz6E5YYvc18oxj9mxJUQmuR1rM/la
 gov3GmFOwAmYMexDihoervMR7Lkmn4zOiAsD/TnMjRUD5ftcma7iaDRyoODxkkrK28TCPpsWkRw
 +0rPEwNNGPBd41d2tTmC+FcsPPmx9/kmP4ptZ7TuIMiqm7vNribgKPiiq7VM8kJqGHCgRSO9C7z
 g4lokKqMm8xVdtsyr4VL5WnuPQFW3q0Swlg8ZdqpZZlfkD2BD6KXvVvJkq3HCnVRJ3ITe4iOd1L
 OC44g0P2mvg0YVZiiRKfq7LrzmlY0I66qwy5bbpTsmteupZj3uJk5kEIrrz5afMVJiynrurSBMf
 SmaEM1nBM25YU5w==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Qualcomm SAR2130P is one of the platforms which require 4-byte reads
when accessing the QFPROM data. Fix several omission in the NVMEM core,
rework the QFPROM driver to use readl() instead of readb() and finally
add compatible string for the QFPROM as present on the Qualcomm
SAR2130P.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v3:
- Reworked the qfprom driver to specify stride and word size (Srinivas)
- Link to v2: https://lore.kernel.org/r/20241027-sar2130p-nvmem-v2-0-743c1271bf2d@linaro.org

Changes in v2:
- Picked up required patch from QCLinux.
- Link to v1: https://lore.kernel.org/r/20241017-sar2130p-nvmem-v1-1-6cc32789afc6@linaro.org

---
Dmitry Baryshkov (5):
      nvmem: core: fix bit offsets of more than one byte
      nvmem: core: verify cell's raw_len
      nvmem: core: update raw_len if the bit reading is required
      nvmem: qfprom: switch to 4-byte aligned reads
      dt-bindings: nvmem: qcom,qfprom: Add SAR2130P compatible

 .../devicetree/bindings/nvmem/qcom,qfprom.yaml     |  1 +
 drivers/nvmem/core.c                               | 36 +++++++++++++++++-----
 drivers/nvmem/qfprom.c                             | 26 ++++++++++++----
 3 files changed, 49 insertions(+), 14 deletions(-)
---
base-commit: f8bde2c106663ee2398a16bf6500f1cc8f5cf64e
change-id: 20241017-sar2130p-nvmem-5f856d99bbb7

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>



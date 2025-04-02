Return-Path: <devicetree+bounces-162551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0801CA78BA6
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 11:59:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1112E16FEC7
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 09:58:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55F10236451;
	Wed,  2 Apr 2025 09:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lwYUsLMI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6782356DD
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 09:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743587928; cv=none; b=n4WJHJ6NfLD3uliugkhzxOSs+heworLlHIDSxyYf0mUqkvWwtARm9pHyV62uWfZzy956yiw1RrzUQM3x0m/+N9l3a/K1qM6blDYum0m0bILKoaxLrpZBce8YUSULbTQ60Olpg10XNw7W/rSH1wgKY/336VNOG4xASauDbhAdxmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743587928; c=relaxed/simple;
	bh=IlA4UvDfErox3kVQzczkwY1GjiDHyTr52IErFszm38M=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=gOnVAKqj3fvzBSSe1LW8S5PBe2CmF+trhMGtDgY4OPu+cxLAIh0EUEYmhRgneSxoobHA32GfhIUB9qojUMDYovqW32ZTLlszt+lyn8FnVizSYS+tLagvo8PsDD+BV3O14tKTHSf3ulSOTdwYiP3M7pa0CDVUn2fjki888ofLihk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lwYUsLMI; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43cf034d4abso71045025e9.3
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 02:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743587924; x=1744192724; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F64Bhf8JcqE2NyBcccVmI5z7F2vvtYs8PqVACVDcoJ4=;
        b=lwYUsLMIWeeYICUE4CRsTsMPqjGKHdQ3X8h8NXsnStwvJp7xr4XH2ruYrVwM+l8kQK
         I/wZ4emHf1Vep1Je/5TfNKMd6ShrbtHk+MFOshJJ+FKOWdMos99Zx7q28BJq2icSDUv3
         gjNGqUn00DS05J3dS8x7bVMXqivFLAPK8WJ44d09fwFDuPmHMXAo9vHym2OSQZq49PLL
         cLaHBygv5YVCITz7XUTbZv3uNUvhg4/TMTgCyj+aygmjbTniraoGwFqMiMds/DbTDjai
         82dKh9xzCNby/M7gNRyGabp2tdQSWCIYEh9nZQqAf16yqclpuxjua+lx5afHNPiBO1oX
         n5Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743587924; x=1744192724;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F64Bhf8JcqE2NyBcccVmI5z7F2vvtYs8PqVACVDcoJ4=;
        b=cp4xHJz5Qi3W1WhzCSF+R7Mdzo0zXUh6P6ta+yO2rkDtcpyQuYP7wbwDBbVlxuKYwc
         TYsNi/IC528TiXwQEDU2QRN1EBZzUegxvOS7n/6QRABd7EtBMYidsiyIYTnzSSvTHpEv
         lD1i3gEZ/VTjxMLeqwD6k9aaievTQvKXPfDRe1Frj2FkGXFgJlxM5zrnENs36YPkjAMh
         M1fzkaV9FKoxOFhyZm4AJ5oc5dEBFFUIdoc6+NfwEenu4rWUchwSf98eWTFlSnzerLza
         5sE9FoAZ6iyThDkhElpD9ikMqUNUi3Mq2J9B+aG+MgM++TEdZ62XNy5VG+MjZ6nrzMBq
         1O8A==
X-Forwarded-Encrypted: i=1; AJvYcCWBLKFdVJpCJh3DPxFLvT8LCEMuGU/ECDa1/hP+QAucLm976NkZC6MpSarGgPT3pXMHCHOLxzQhqiFp@vger.kernel.org
X-Gm-Message-State: AOJu0YwYGm7SusGRpLpeHsoVNcvejAe+Y8sqFDF0HwwKReBFW6aKA+0r
	8jondMmzuCNXE1p/vnbkS9rPVkCRzcK71ramZ3gmTPnoX4E8x+bhpcCTTtyQl+Q=
X-Gm-Gg: ASbGncvZQmna9DQU3eM0/YlufiSVxVkwoImMhJy24IHUBrlcivXOXy2sPeOaQf0PbtO
	yO6ZujtgT/dsHBXsXnc62k36rLcmVfZKnuVZJYcQXVqE5t5l/ZVsjY6VmiGmGBLFfBRs/YiK1xW
	letiOHP6UcXjPaiJLqTm/GgA4RhQhkv6KbICx6drCDEiDdxwK2Y9/0fqXroQCElyvZ6wAGigqmU
	1NX1qobQBRyHADOeOoI/6wAgb/OnUz66gU8QSDg12enkpY4X9HVaZK3ACXjwBlPDL6fJllG6zZT
	DqBSkJFhJPvpZPeRmNncKYhBdn8XDnAGGb30UhT1LaRS9qKumCDRUeN1XuK9iyrt9Bg=
X-Google-Smtp-Source: AGHT+IFF+LY0kUxsYN1yucCu27iDkU8fohgx1eaXgcBCwuhTj6Le9wBHGbHQPhPbt6iIdhv/R5hh1w==
X-Received: by 2002:a05:6000:4014:b0:391:2a9a:478c with SMTP id ffacd0b85a97d-39c297543b5mr1431926f8f.23.1743587924276;
        Wed, 02 Apr 2025 02:58:44 -0700 (PDT)
Received: from localhost ([213.215.212.194])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-39c0b65b985sm16581662f8f.12.2025.04.02.02.58.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 02:58:43 -0700 (PDT)
From: Christopher Obbard <christopher.obbard@linaro.org>
Subject: [PATCH v4 0/2] Add support for OLED panel used on Snapdragon
 Lenovo T14s Gen6
Date: Wed, 02 Apr 2025 10:58:31 +0100
Message-Id: <20250402-wip-obbardc-qcom-t14s-oled-panel-v4-0-41ba3f3739d0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEcK7WcC/5XNu24CMRCF4VdBrpnIV8xS5T0iCntmFiwt68VGS
 yK07x5DRZQGyv8U37mJyiVxFbvVTRSeU015bGHXK4HHMB4YErUWWmonjZZwTRPkGEMhhDPmE1y
 UrZAHJpjCyANEb3smrWgjpWjMVLhP34+Lr33rY6qXXH4ej7O6r2/gswIF0kW0kZC2OnwOaQwlf
 +RyEHd91s+ie0HUIIG7iB47MhLxn2ieRf+CaJpoHblee+tNt/0jLsvyCz7jerZ1AQAA
X-Change-ID: 20250320-wip-obbardc-qcom-t14s-oled-panel-b74fed21d600
To: Douglas Anderson <dianders@chromium.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
 Rui Miguel Silva <rui.silva@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, 
 devicetree@vger.kernel.org, 
 Christopher Obbard <christopher.obbard@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2101;
 i=christopher.obbard@linaro.org; h=from:subject:message-id;
 bh=IlA4UvDfErox3kVQzczkwY1GjiDHyTr52IErFszm38M=;
 b=owEBbQKS/ZANAwAKAWNNxPBocEb4AcsmYgBn7QpPRoqhp0uCFc1qfUTwfMlvTteUzDKNC76k/
 ZxU7VoUoRyJAjMEAAEKAB0WIQTxi9yLbCX5CqI9UXRjTcTwaHBG+AUCZ+0KTwAKCRBjTcTwaHBG
 +OuZD/4q4OrxLfM5IQZJdlfHMtgt6pBL2NUTwms3NT0YVSZguUAkuGXPQq9EaAlqyIed58qWrJ/
 44+r7asNQ4rhp96wGMY3QuiMWVcDMkz3uIy1bkOYhxNY82kt1eDE6dtusJOuoM0BU/d16gV2qSt
 9gs8CCH7cUeL0auRWoSJiZ1vNcP1QnwGXl01x9po7YUaEUe1BWAxpQPP7DWh2J+DWfjPm+ySBIS
 zibb2tgf3U6ffJst8RbEjypQZ3Bs9/mymnqUBHustX6D9vBMPn6/q5+IwfzQTngDZEnIDyZDTpQ
 D7IYQBx4OpSQfO7NZA2/z2361xC3zXZqH1+ZE2On3Yfkw4Cwa+s2voOEfPgtoswePcQ+9U7UoYi
 o1xTepR9clFspYYwzj8TH5y9YP4im+K5oBO2K3q5k88lyDDPq6v3t2QC58i/Id23zUBgxCtejxY
 Tl/ulhlDvjXe6wNSsFTLLq9wKS+s92QqjB5EeTobkVrQpKvtbbb89p7/tdUSskMz25M5NdojAxL
 SIZge2SXxTogRI3mQ1AG9IZ1q1HTL00pWMof4rfQizh3NoYInBFHvUoHz0GdrnSX1V3Hw3IVJRg
 inSMaDlt7fhnVLLTplZILt+F6pPGvEt0QTa8q88Q1jao0/iAXbDcJp1fm/qnOpYZg7F003wZqwc
 XXcCA+pNCd0oFDw==
X-Developer-Key: i=christopher.obbard@linaro.org; a=openpgp;
 fpr=F18BDC8B6C25F90AA23D5174634DC4F0687046F8

The Snapdragon Lenovo T14s Gen6 can be bought with a number of different
panels. This patch series adds support for the OLED model which has a
Samsung ATNA40YK20 panel.

With this patch series the backlight of the OLED eDP panel does not
illuminate since the brightness is incorrectly read from the eDP panel
as (to be clear this is not a regression). This is fixed in [0].

[0]: https://lore.kernel.org/all/20250330-wip-obbardc-qcom-t14s-oled-panel-brightness-v6-1-84ad1cd1078a@linaro.org/

Signed-off-by: Christopher Obbard <christopher.obbard@linaro.org>
---
Changes in v4:
- Rework HPD GPIO into eDP device rather than panel (Johan).
- Drop review tags for HPD GPIO patch.
- Link to v3: https://lore.kernel.org/r/20250327-wip-obbardc-qcom-t14s-oled-panel-v3-0-45d5f2747398@linaro.org

Changes in v3:
- Added review trailers from v2.
- Dropped dt-binding documentation patch (applied by Douglas Anderson into
  drm-misc-next).
- Dropped eDP maximum brightness patch (will be sent in separate
  series).
- Removed duplicate nodes in T14s OLED device tree.
- Reworked WIP comments from commit messages.
- Link to v2: https://lore.kernel.org/r/20250325-wip-obbardc-qcom-t14s-oled-panel-v2-0-e9bc7c9d30cc@linaro.org

Changes in v2:
- Use the existing atna33xc20 driver rather than panel-edp.
- Add eDP panel into OLED devicetree.
- Add patch to read the correct maximum brightness from the eDP panel.
- Link to v1: https://lore.kernel.org/r/20250320-wip-obbardc-qcom-t14s-oled-panel-v1-1-05bc4bdcd82a@linaro.org

---
Christopher Obbard (2):
      arm64: dts: qcom: x1e78100-t14s: add hpd gpio to dp controller
      arm64: dts: qcom: x1e78100-t14s-oled: add edp panel

 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s-oled.dts | 8 ++++++++
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi     | 8 ++++++++
 2 files changed, 16 insertions(+)
---
base-commit: b6ae34803e82511009e2b78dc4fd154330ecdc2d
change-id: 20250320-wip-obbardc-qcom-t14s-oled-panel-b74fed21d600

Best regards,
-- 
Christopher Obbard <christopher.obbard@linaro.org>



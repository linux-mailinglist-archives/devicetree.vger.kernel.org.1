Return-Path: <devicetree+bounces-201111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDCFB17769
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 22:52:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9C293BEB66
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 20:52:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFE80269B1C;
	Thu, 31 Jul 2025 20:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UX9+LNjR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D8FC2676DF
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 20:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753995101; cv=none; b=mefaEkxNIdZ1lPMZCwIzOrL4lhXIfqvkiqjW8rOOMoVb7MHRkZD6vgFVUE567Z/0pzpj+g20FdXBTMi97FtyBXXTf6YpvFYyC/2RpB+pXZBhUZBVSNHJazgJQsZKhOiUmYbMMw1Jl2cQtbIfE24dILU81K5UVfO2HJAAQtcnFAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753995101; c=relaxed/simple;
	bh=07lfiVTzO8Livfg8raQix3qM0PvBmIv/XbKbd6whLj4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=J2adK4K4ToVfAWZqqBPG793W6du50YAmX+f6op79z9Urz4LuCr1M9z8HG/vezHA1Swl3mxRQptRZeVEmyL6R19mYP8eGLPCdnfinXYP3SjRMkw+VCxRgSWl34hyoD3OkIxevTXnVK6eb+Eyn4ed5+U7grzmSsZIC3Cnwxno5MGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UX9+LNjR; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-451d3f72391so8307775e9.3
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 13:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753995096; x=1754599896; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ar6Wf1+UMHorH9TBZzw9vPO4d3FUGtgqbxwITenQBWI=;
        b=UX9+LNjRQEP0Om/aoXWcnhNy/N/CxNNTGGtGYGASgZrGuLPshYqKB9rLVzxTBbsAXf
         3hXnJkL9ICyJq5+pp4eOJCOeKblY0WH+T6PVJE3Ny+qITShoJ4OOhkf2TZul5SA7lOLV
         BpFz2Uwtc4U2wAitMIRys3dZWfraWlPMxwBdtR4Pk56Xooh9MsWGzCO6sXun0i2OmhZD
         55HUtyDr24xx5oeqZxtT4mKyyr6oxDJOqDV+RFvqYl+M5EdXujtnQZvTdR7Pe0b41X8Q
         OL9h8GQRtCMvngHJM9YIcWiMFK6784lV0w9bFLz0KMLW9QUIUTM11VI5joF9h7A679b7
         0g5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753995096; x=1754599896;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ar6Wf1+UMHorH9TBZzw9vPO4d3FUGtgqbxwITenQBWI=;
        b=xUjabfnOF+LNURmJGo0+LshtNMaArAeLFuqWlWNwNp6SStaZMNuqA9p5KXPMDL8mGS
         IJ3oHmW4LTz0c98CAQDNTZyL/sjsc1PAArA2hdNIFKeoISj3izDecp8SUTFeAt8QlRZf
         vzmtBRXchLCRi9HW/aIuE2O882vt4RUIdS8vGHn7wegP27/XElQhABxzh3j6+b2n8jq9
         uBjLHJBjJulR7qGozPhCfM/hul9pjChpSqP9Ls671d//NcFUso7Sxi7+GE/PYSHtjclD
         SMGVLY85fhHKUCq9ykdOKBYi8Ot/bR8eT6FB4qojM1JuXSmz3pjavHI8dUN2nub0br8V
         5sFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWpTckixb18IbqMHJmd0TFzQe7QMukISdbkIf+/6F2mGLMldOm2WzCxdR3jpuHY254+Z3cJ+WJlBBjm@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5LqPNk7ImiCM0RaHOEhf+TBsFPSC4wEOivwIcnqLEtH07bd9q
	eteYmNhCUjey1P3JM0hlQ0jxGa5xBynYqVV+85rAW2Ga50WrWeqGILPPRLhn6l7jksU=
X-Gm-Gg: ASbGnct6yXmTzPp9UOshFBFIaSsAHRGODfoUc4NwIEt8oJVkZ9iolddqmGqiS55eVQj
	rNY5uoyHqvnVQnJL9tit3gChGxxWwy/dTM4VH4s644MO3DybFBR3bc7MbXSanNsK6qAA8n9BlA3
	t2XtG1bxq2h/cAhrBbxBMk65U8p3QlWzXvyJ/zr6JY5cixc7zGwFfxaXiDnjhkO1LXSzlAYfDu5
	EGRdT+0LZDLOAESQcgTTKQi3Db8P5B+OOq394jT0NexkMQR+EcJEfyXrfBMs/9f/JjV+otvIm3P
	S2GYfOwrzic7UGktHPGpJ9v15KS3nB3+/ylxImM557wYTVs2oLiCf5j+FHAK5ICPwIw3rJmX1CQ
	UGgv+4I9IGv6PLI6DPsuGWbBISxc4Pq8ywfs/coUQOLCqlthRS48bHHYAgOsE0u6W
X-Google-Smtp-Source: AGHT+IFIePr5Jj5OhjHaF2q0jZu0ma1dALBYhn0dPVtkAtWcQLW31eBDUhN9HgwQFxQvXyzTDIwRcg==
X-Received: by 2002:a05:6000:178c:b0:3b6:c6b:e4e6 with SMTP id ffacd0b85a97d-3b8d343c2c5mr203792f8f.11.1753995095656;
        Thu, 31 Jul 2025 13:51:35 -0700 (PDT)
Received: from localhost (dsl-217-155-193-229.zen.co.uk. [217.155.193.229])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-458953f8e0dsm76953885e9.31.2025.07.31.13.51.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Jul 2025 13:51:35 -0700 (PDT)
From: Christopher Obbard <christopher.obbard@linaro.org>
Subject: [PATCH v6 0/2] Add support for OLED panel used on Snapdragon
 Lenovo T14s Gen6
Date: Thu, 31 Jul 2025 21:51:25 +0100
Message-Id: <20250731-wip-obbardc-qcom-t14s-oled-panel-v6-0-4782074104d1@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAE3Xi2gC/5XNvW7DIBSG4VuJmHuqw1+IO/U+qgzAgQTJNS5ET
 qvI916cpam8OOP7Dc93YzWUFCp7291YCVOqKQ8t9i875s92OAVI1JoJFBqlQLimEbJztpCHL58
 /4cJVhdwHgtEOoQdnVAwkOO0RWWPGEmL6vl98HFufU73k8nN/nPiyPoFPHDigdl458nQQ9r1Pg
 y35NZcTW/RJPIp6gygAIXTOG9+RRO9XonwUzQZRNlFp0lEYZWR3WInqT1QoNohqEbmzMsoGEq5
 E/ayomxijlFERosD4T5zn+Rc39nddGQIAAA==
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2698;
 i=christopher.obbard@linaro.org; h=from:subject:message-id;
 bh=07lfiVTzO8Livfg8raQix3qM0PvBmIv/XbKbd6whLj4=;
 b=owEBbQKS/ZANAwAKAWNNxPBocEb4AcsmYgBoi9dS5IzossHJXPMyK5mIJ7/oNr8rSeV77nuA6
 eCuTxYwEvGJAjMEAAEKAB0WIQTxi9yLbCX5CqI9UXRjTcTwaHBG+AUCaIvXUgAKCRBjTcTwaHBG
 +OE5D/444EK+ZjVRzMRSYbjvgEpcG0ePJFPavJ0ohg1DwGrFmFxfSjzMkxib5L9fkuDCdeOLZF8
 vE6A7rqUqzDN4VZieVP/1OE0rvMpKW5LhHamAbW3kBIuG52XLVg3awX9evxEOgNDuRyODAEpskW
 2wKdu8/0Hv4NX1lgJFncBCchg1YXKx6+O90zSC4xeHsOLGBCdqvoF5oAvqqVkciwvXvIe9oJjQ/
 c8S3EfdQ4UjVe0ONIgwgdRLj6Kf7Ykk1wC0wWmgPD1rE+U5Ynbe6wjxB+eUPGWDsPs5Bqt9CkCV
 eliRcAd1fbHYaKJwtkQVC0qMxwTW3axz13JnYUtXjt40YsCGyXwKp8QZCPvK+qzCetVUHVNSve9
 HrhyvB2GvhRBo5LMx0xIsCFKiTrYajvnb7Q8rtybZZKX3ktDnLUzCPQeB9htE885p7kYxqLoOA0
 XqsZWQTluaa+pLk42g8ub304J2ZopBUACUXwwpg64pBv1hY+bp5U8eTUfuLe+Xw6XQMeqyrBaV0
 IjSPZE1bZwJu1+1IqKU0EcOygVZREYoXeEXWQ2ARcpIk1D++nP67Y0eB36fDPUHezC3sBDfFIL6
 0lkJXAVeMSdPHQDU131Nu7VMX+70reQvHM3lXVeOazj4J4BGiFB8kF8dQv5Pwno+bMJslTiVQB6
 G92zNF/oqLKjXaA==
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
Changes in v6:
- Squash patches adding "edp_hpd_active" node & its user (Johan).
- Sort new pinctrl node correctly by name (Johan).
- Use correct function "edp0_hot" instead of "edp_hot" (Johan).
- Drop review tags.
- Link to v5: https://lore.kernel.org/r/20250402-wip-obbardc-qcom-t14s-oled-panel-v5-0-ff33f4d0020f@linaro.org

Changes in v5:
- Move edp_hpd_active from T14s DTS into SoC DTSI (Dmitry).
- Link to v4: https://lore.kernel.org/r/20250402-wip-obbardc-qcom-t14s-oled-panel-v4-0-41ba3f3739d0@linaro.org

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
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi     | 3 +++
 arch/arm64/boot/dts/qcom/x1e80100.dtsi                          | 5 +++++
 3 files changed, 16 insertions(+)
---
base-commit: ba94ec807b071becbed7377f8c84308f1b6ccd51
change-id: 20250320-wip-obbardc-qcom-t14s-oled-panel-b74fed21d600

Best regards,
-- 
Christopher Obbard <christopher.obbard@linaro.org>



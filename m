Return-Path: <devicetree+bounces-161349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD96A7377A
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 17:57:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A99C47A455F
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 16:56:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D13E52192FE;
	Thu, 27 Mar 2025 16:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qDt7q/Js"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCE6F218EB9
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 16:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743094634; cv=none; b=pVNm1auUlZdn8LTfcE8Ly9OEtFA7hFr5ddnmkxBAhGt8c4L3y9CR1iMh2HHNm0csRYiqOuCUumiJic9G2N7R8vDMImBOnRNNIWKxDtsoj4qIKTFWK5IjTOHXsJ8moIjClPQ5V1yLzGcE6Zb4WhIu4/hHeD2NPgIR/quLzIh7Y4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743094634; c=relaxed/simple;
	bh=r71amOuyfbTTG0ciVqmyZyygDjkrvOhR+gQqM0AucCs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=thEvQSs85y6OnVPqYFa56S9OSaspfUKLwM16NL1FxBLdkHhl0juX1URpUmDpqByCmcDGGZnwRfbIcz4sGjHC5UD24Usr51y0r5sHjjIOp5ZaBKkFiyY0NG14a/+zFmhUmIDHT11BUBSRdYcYScZo2mGF4ngP/+UGzWAPV3evPZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qDt7q/Js; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3914aba1ce4so1019857f8f.2
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 09:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743094631; x=1743699431; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eceyotKP6SWKc39dnp272H+Imp9sLNyAbSh4/382Pig=;
        b=qDt7q/JsSk2A0JRnCfz1JC+bnAIccHvKtm9QZiQcXOC1ZZCYb/2f5KdIkn2l12lEda
         fQxJQXooDX03LqyTwULnPT82uzQumNLWA6daRmZTcDtCjcbneRxIbXpIOLxqY7+TmkzU
         a0dzbiBEnER/OUp/xnyuFQaYcsFF699XINsjmj8Gd68A7sciOcZwiC2N3wIfkaCtXCAI
         EjGVJLZRfmDtdX8FnhQl9FFUlgO8nNqDUEof35jI5dqVyGrDKzadWevXcNWruWZlgP1G
         n4l/svmeUgpW7RvfEORpcr6TJ9WgYWakkCySq5R9uanUIwLshCS6//1qTPOSY2U/vgS4
         3WLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743094631; x=1743699431;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eceyotKP6SWKc39dnp272H+Imp9sLNyAbSh4/382Pig=;
        b=FMQZHCorrAhdZ4C/QAHTDA23KrGeOYSZtmm86vImjI44SZR6tgrYIbvQ+TpVSP6h0h
         eM2+EJwHcpruPjiqdH9qVg2lzdOpGFZBmjdqwU1TQw0PvhUATNhCdq3cJfhcVa+GwRuH
         5GgjXdh0sScTxjeGGNtXgdUicM51vjgZNAWjz0xNoeEA7wuMQ4/IHPqjj8iDSnHSTEb2
         zm+g7MvprOo5ZpMRwIRHs8itkYvLBBBIegFEZARS0Ye6REMxDHtLa5Mi4Xk/av01jP5d
         8nvqJkG2/hLmO0Vhfs/gZ3y9uTHz6BsX2iTL6HopBShtqgttr89XPOxcLOfPH5WvDvi7
         sugA==
X-Forwarded-Encrypted: i=1; AJvYcCX2wLe62HSyC5TEVatc5mfFkqF6G5Ow36/gLArz9s/ihAieb/Oo5c6sBQhZD1jSXqK3Qnh4YNZVdKvY@vger.kernel.org
X-Gm-Message-State: AOJu0YwgTVZv7/BpsFj4WjBEQa7vK9VpmSGc79unLZ0EUdAyJ3KJFJ14
	gAEhQ5hJq3pCkloyP+eDPwh2PpYsjlsyhZbOcvoIhwRKvxrmPS40nj68GpsJW8Y=
X-Gm-Gg: ASbGnctpsBrAPV38KfNwnyea773RDTD1r/b7vql8hxOL+lqz52IrvTXRx+40NbDSNdZ
	wvxeY67oWGCMvvTuOxfz/wSmChtkpGuUsZn6JIsXWIRJ/24qqcwDQPgQX1teWpY7DmZQsRS9lm9
	kXN9bt4uCkjsM+qdW38/UNDLvyLuVAAMngBAK7XL3XfKIG2H93zHfSNp/w+szug6SJmLd3sjYOd
	/o/GEdwy44SVHYcGzrA8VO1D9Wg8mriwAyMw0O1AkBrSP1BOlYpvOLogTNg3pec/e3WFXJijXhp
	wKq+R2/05H/ghnctILiLNarVIkQzleNXnLSK/4x+SGUzwbDFv6AaxcsHor/0ssqH5zc=
X-Google-Smtp-Source: AGHT+IGwo2+FL5Art0sA1XG2N0GmPu+lJHsTC9zLittsqBZNMEBc6/x0iUg6giIaGmY7yu/lvIMCzQ==
X-Received: by 2002:a5d:598d:0:b0:394:ef93:9afc with SMTP id ffacd0b85a97d-39ad1741b23mr3978291f8f.18.1743094630932;
        Thu, 27 Mar 2025 09:57:10 -0700 (PDT)
Received: from localhost ([2a00:23c8:b70a:ae01:9cf7:b69:fc50:980f])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-39c0b7a41b4sm40430f8f.85.2025.03.27.09.57.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 09:57:10 -0700 (PDT)
From: Christopher Obbard <christopher.obbard@linaro.org>
Subject: [PATCH v3 0/2] Add support for OLED panel used on Snapdragon
 Lenovo T14s Gen6
Date: Thu, 27 Mar 2025 16:56:52 +0000
Message-Id: <20250327-wip-obbardc-qcom-t14s-oled-panel-v3-0-45d5f2747398@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFSD5WcC/5XNsQ6CMBSF4Vchnb2mLSDi5HsYh/b2Ak2QYkuqh
 vDuFibddPzP8J2ZBfKWAjtlM/MUbbBuSJHvMoadGloCa1IzyWXJc8nhYUdwWitvEO7objCJIoD
 rycCoBupBV0VDRgpz4JwlZvTU2Od2cbmm7myYnH9tj1Gs6x94FCCAlxoLbdAcpTr3dlDe7Z1v2
 apH+SmWP4gSOFCtscLa5BzxS1yW5Q0wk/ZEIwEAAA==
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
 Christopher Obbard <christopher.obbard@linaro.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1822;
 i=christopher.obbard@linaro.org; h=from:subject:message-id;
 bh=r71amOuyfbTTG0ciVqmyZyygDjkrvOhR+gQqM0AucCs=;
 b=owEBbQKS/ZANAwAKAWNNxPBocEb4AcsmYgBn5YNhzz/2dxW57X8uzlPTVc+/7CMjWfzMM8rfN
 P74oMVnmuaJAjMEAAEKAB0WIQTxi9yLbCX5CqI9UXRjTcTwaHBG+AUCZ+WDYQAKCRBjTcTwaHBG
 +HTXEACC2cEKrGHocWdTLXewOtiNrR8tX5WSsU3WY6bUChx12yyEz7ErWw2MH12bAc5Yhb18xXz
 OUQfrmK0sy3xBLlDvuKYDu6i7fYyfl5sO8rs4AC8qVhXLkTmBvNt3MrQsVfLwBAd5IuFaGxDipd
 cgyt3E8vnIarzeDTlIkFUrvrtLoXj1NWDbjR7GDC5js+3wcMLB2lYPkhGHgF65ige3ckHiKtFOy
 fBvGeFJ/bJ4SbsgYPA4TAJdBAie0fcrbVekBVzPcfp/BUi3n/p3ZbCN2Kl+hKA+1USe3neFYTv7
 BnfwUQ/luXWI+64OU6lErH3KMZE1p2o6vwYy8aD1mrK0LZMtzjJcpe2aWFxe2hsyw6kQaptoVGq
 CDdL9Bvu/CKr9ns0Vml0gnmsT4nP0nZDAAH9hqxPSP3cKf7/E9Z/tRMgearfKPZevFlGNUgHjJb
 brNFkusFsuzfshcywWYa1A2DJqjTWFkV9hLZbzPOXsf5V7B6U5QYeFF5ywNaKFjQ9ctNB7VYuJX
 behsJdZFrdRiuN8x4CNnJqBhWEwqYoVjOhc3o1OF0iA/eXKKcZXJj/g+eJk3lVGgf9zIRXWmTyu
 dzscG94Y6WqRasH7CLqxyyu0jARd00PR+7zki5rQUdWV7fwUMEMn9+pRs47AfNScsjI121/g+XI
 X5fWZ5aeLA09O1w==
X-Developer-Key: i=christopher.obbard@linaro.org; a=openpgp;
 fpr=F18BDC8B6C25F90AA23D5174634DC4F0687046F8

The Snapdragon Lenovo T14s Gen6 can be bought with a number of different
panels. This patch series adds support for the OLED model which has a
Samsung ATNA40YK20 panel.

With this patch series, the backlight of the OLED eDP panel does not
illuminate since the brightness is incorrectly read from the eDP panel
as 0 (to be clear this is not a regression). This will be fixed in a
follow-up patch series as it does not block the device tree patches.

Signed-off-by: Christopher Obbard <christopher.obbard@linaro.org>
---
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
      arm64: dts: qcom: x1e78100-t14s: add hpd gpio to eDP panel
      arm64: dts: qcom: x1e78100-t14s-oled: add eDP panel

 .../boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s-oled.dts      |  8 ++++++++
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi   | 11 +++++++++++
 2 files changed, 19 insertions(+)
---
base-commit: b6ae34803e82511009e2b78dc4fd154330ecdc2d
change-id: 20250320-wip-obbardc-qcom-t14s-oled-panel-b74fed21d600

Best regards,
-- 
Christopher Obbard <christopher.obbard@linaro.org>



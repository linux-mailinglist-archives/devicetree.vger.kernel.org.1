Return-Path: <devicetree+bounces-97433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E79A596234A
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 11:22:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 59C4F1F25190
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 09:22:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB4F416087B;
	Wed, 28 Aug 2024 09:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rKzV8wVf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480E3142E77
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 09:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724836972; cv=none; b=mhKpnJ0kBBRCaqCpIqFLqLGbHrJsAX/uDTCI6P6ztLRaFdzyEbU4dBkosuzclb00yasaQwS7fVdoui5twdffhwp8/C+43ZXy5CwrEjC1BI1cdeiZOv+OJ4sktd+BP2JyjMFww2PQawQVdu5IA61pl9KrT/syN0UukAfh0u/N3Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724836972; c=relaxed/simple;
	bh=NcdndycIESQOX9Mj7FCc+DKu0ULe0CFRP323XsfVbhg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=YnrH5eh4XS5c2lxdbmkgPyQOmxkpMzovOevq7NtArTIuIGE5VgN+PGXUO6Te4A/SByZuBgEDpO692Y4E4DHQMS11Pvy6zr1Zq8Zlet/lT3H408Na2S9sjugvWdAYlci+G5L9mFz8JhljkJrsAZnN41TOeb4ABkmGPBWB2peaolY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rKzV8wVf; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-428e3129851so58268315e9.3
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 02:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724836968; x=1725441768; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WC0YyaWNeGaRZmj/c+pPkh76XagmEuPA1fGxZmPr34E=;
        b=rKzV8wVf6mFQ2DmvzO4ZIhfYw4WWGpSKPNga2Yk5nBE3UdqElpwUotlZOhrYM+K6ae
         5cdKZNEquwc+O2uzCdBOhoc10Lxub6GRmRPfsjmKQxbAPh2VcJIEJGbVDgtYiQ1HZv2l
         zmQDH5FZf6VQ/s3B2Tcvr2S4Umr+nQGS+nDghkVVae7PXzCfiBbrr3M+Y9zse7cA9uL1
         5IN/aZMI68aQK8taP0T2C/vRC9b8rKfD3zLRbsBXQO4JuTme+hrydzFfFW3qHx0af+qY
         XHopj7zLfoixtotzoDL/aUkIsypOBoSgqtZO+bRdsdxAwsmkpkjPKGcHfOTc+QITDHcz
         imkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724836968; x=1725441768;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WC0YyaWNeGaRZmj/c+pPkh76XagmEuPA1fGxZmPr34E=;
        b=RANYyCNIVKZ8jN1Sycks3xeiksBsieEtuhvz9kQjj8S5Pgse5WfKNKvanZ67EnK0CB
         X0lAbRZlB1CvlguSavB38hh3EbTZgj+iSTnRVrCHTPn9j78hcY9HcG1ZH5mh987gQw01
         XTua4/7hJUunyNRmtImhK+tsjMQ18p0tH8Xh2Am8iAv51m571thBdeH6Pk36uxKkNTjk
         igArN8X7MSRi/4lsgUPisOu6jeW5PdvTEVYy38wkaewOY4xuFfVMZrL+POMTfG81aDkq
         8zHLWTgCHf05v5eCtoOjVhK3pAo98mGE5vQuFlrG40OqXVDsfBcsIYTXLdq+Q3cXVNvj
         hmHQ==
X-Forwarded-Encrypted: i=1; AJvYcCVI4klwp9Tx8SZWxLlsTBUfs5Z5Kf7CLn2k/3rXgQxjWEcRm7zDc4XP7wYmoB3aDJ7iRclj5CXglJwf@vger.kernel.org
X-Gm-Message-State: AOJu0YwD1bDkMe8cd7smk8HtDbzj4Krq/XMptcAYVU3iQ/bJ1/HNPyau
	9oE173kM99d2PEcnJyMoqy1aDS77NG7JRnzkAduZbpDrPf08psznmjH8iuOY0JmVuc6gqbtrVNh
	C
X-Google-Smtp-Source: AGHT+IFX1FA9HUNp1LKGe/n4Z9bMvhLEG2OIuGgo1b76+7MtrQQtPNCYfn0O1mpiHQz4kKaPs1hLKg==
X-Received: by 2002:a05:600c:4f94:b0:426:6eae:6596 with SMTP id 5b1f17b1804b1-42ba66ab79fmr9245115e9.25.1724836967925;
        Wed, 28 Aug 2024 02:22:47 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ba639687csm15002435e9.8.2024.08.28.02.22.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 02:22:47 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 0/2] drm/panel: add support for the BOE TV101WUM-LL2 DSI
 Display Panel
Date: Wed, 28 Aug 2024 11:22:39 +0200
Message-Id: <20240828-topic-sdm450-upstream-tbx605f-panel-v2-0-0a039d064e13@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAF/szmYC/5WNSw6DIBQAr2JY9zXIp9aueo/GBQroSxQIUGNjv
 HupN+hyZjGzk2QimkQe1U6iWTGhdwXYpSLDpNxoAHVhwigTtKEtZB9wgKQXISm8Q8rRqAVyv92
 otBCUMzPYmmspba+FEKSUQjQWt/Py6gpPmLKPn3O61j/7X3+tgYKyouG8be5c6ueMTkV/9XEk3
 XEcX/VzvPPXAAAA
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Doug Anderson <dianders@chromium.org>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1331;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=NcdndycIESQOX9Mj7FCc+DKu0ULe0CFRP323XsfVbhg=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmzuxlasynx9hKB8kvoIGry6jIcn19wCT4NazNTCPX
 wq2sHvOJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZs7sZQAKCRB33NvayMhJ0QTmD/
 4iQlb6f27Ft2xA0ojZIld1xOXn7lRvII1qRGlqa35D16tzKpsi/lDpt8eRbGKWw/+mC1+YfpSTtAIi
 8T71/D6XPlqRMxvL6TNBfgO1JkRP3zE5UFMd/tPu/w/7klUxhWQZEAUTLUbf6mwCho+eCHvU8RwIeO
 YBMl0mNUcGTEPA2+inkVMlRYmpZHMSI9AyetbMKovYT0Nf+CDkjlLxuoN2Hccaz3jItvL+n5S5cNud
 lsBkSbBqyL/XoD8/G3XQ1jOUoK6ZfvxZpxv8n05Fo4Z/tyEM6HPRi1Cg8TQRUYhWfrjWAOlRUgm19B
 0GydYcbRapumLufZ1R7jGcjLkc6d7uwBb6+sobOLdZgCG+PywBvpDHFJNQunPFmCaUc3OE084J9uW4
 P0Nv4Swiaw7ifEgY0oJc8zzqDctVPPCQm6rxGwn8QtFeA4FRr/vVandDEuQXzkgUnCq5Wap/giOdt+
 F1IPoTEQwJS5x/5TlyfVtUVJx10i9XxdMlsC8ootZt17dHannPhaN60vp/eIWygudS5xhkDnXGxeWP
 xg/nzhc4+HB5NNNSH4kHckTygowuQ+6KnrIKalMcSnk5nNfn5VZ40SvwW2pP1GI3Le6NzTUSY+8NTk
 ibCuvSsfAx642c7JoPjR6tbcRZeWFsllG8wIkmQQu04J5caYK2q4tXPQXAew==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document and add support for the 1200x1920 BOE TV101WUM-LL2 DSI
Display Panel found in the Lenovo Smart Tab M10 tablet.
The controller powering the panel is unknown.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Collected bindings review tag
- Driver changes:
  - reorder makefile
  - reorder includes
  - switch to devm_regulator_bulk_get_const()
  - remove useless dev_err()
  - add comments why we ignore boe_tv101wum_ll2_off() return
  - add comment why we don't set bpc
  - fix MODULE_DESCRIPTION
- Link to v1: https://lore.kernel.org/r/20240709-topic-sdm450-upstream-tbx605f-panel-v1-0-af473397835d@linaro.org

---
Neil Armstrong (2):
      dt-bindings: display: panel: document BOE TV101WUM-LL2 DSI Display Panel
      drm/panel: add BOE tv101wum-ll2 panel driver

 .../bindings/display/panel/boe,tv101wum-ll2.yaml   |  63 ++++++
 drivers/gpu/drm/panel/Kconfig                      |   9 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 drivers/gpu/drm/panel/panel-boe-tv101wum-ll2.c     | 243 +++++++++++++++++++++
 4 files changed, 316 insertions(+)
---
base-commit: ef14a2e943460970c95f7936fb3c26fcb223f76d
change-id: 20240709-topic-sdm450-upstream-tbx605f-panel-f13d55fbd444

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>



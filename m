Return-Path: <devicetree+bounces-144203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 578F9A2D5A9
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 11:53:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 46CF0188B3BC
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 10:53:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C0D51AAE0B;
	Sat,  8 Feb 2025 10:53:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="ksHEufhn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24C313D28F
	for <devicetree@vger.kernel.org>; Sat,  8 Feb 2025 10:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739012016; cv=none; b=OUPe1aEib4oCV8CmWyGG9cRsr7Lh3p6j/xkD5j5CY0mX42Dh9IXUwoCgypYFJAZryX0y6KvhCqiK+6bgTm45fP9nnRLxA1GX75j2VmaRDFgIMmJhNr5DBgk8Xx6IRtUHhTSkhbsZEsLvCBzohx3WEDTsa/zWCCjwGWeuR8LR9pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739012016; c=relaxed/simple;
	bh=VJVK+kc+EJwO96tG8GidwV7lHP8DNTmDWpwhKU/Ynzk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=J84wAATV9Ul0eCuQsCvtsS/E+QCGOkQdog5IiuExT9vo6kAnu36++LTVSnoeSXkDHOwu5IdIRMHw6gJyeDomIcydFKdeOrw2UkZSl4hVIYkQWgUWvmcvHm6ikdEBPIAlAu4vn3DogHPXZMZobNb/K/8yezeydG057k8ApZKr7ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=ksHEufhn; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-2f44353649aso4286294a91.0
        for <devicetree@vger.kernel.org>; Sat, 08 Feb 2025 02:53:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1739012014; x=1739616814; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ifyUzZDgKebdTMDynBzlQYZwVvqMuxRcC6rov9fIYS8=;
        b=ksHEufhn/5Q5a5V3M+/8277cLXEpBiXl6qszK9a4tvbvfFPIKS98cMBPG/R9wejN6S
         Zi3F2WAepWxRL5LvPblMnPmwR0XlKCnpJnzwDt2mgohMfPJ6jXenttHnNsT1J4yvIfVj
         1OgOiiIfvTeyEr4je4vTQ7fJiCWOl1Y31NbhZy8buqXM6VOfEu9cS0TfzLe+DOt1XDG8
         wjPPW18CY4z7fgXAma+fhWDnxeF0iwzzyGbZPbOWCm130MPGz/mxfdW3wsyA0PtnD4N5
         /qfavKzkEklAO9r+7IsvPt5OrdDokMM/lTkdIYKXRn+enYpPt6WgitUBh+hCG0eUCNxl
         //rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739012014; x=1739616814;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ifyUzZDgKebdTMDynBzlQYZwVvqMuxRcC6rov9fIYS8=;
        b=m23wMC1oFYUJ5IAWICQGpeAPRNU+H9AQMzJKeTkYvtXFjYydiGbS+35u11nlsiZLLL
         BrhDgvNcUY7j8Sic4SwKbGcYIJWGciQIRpCYfEgxZyQPtQvsWpDo1RZwpiNWigfN+m0f
         FNYJFtP/u1nebl1hREojeaxPv5HM6bj/v3pbd8LIqEDLYm8BWHWAKPtpC1+v89nweizJ
         P3lyvCfobC2WdC0XF66i+9wmuwLXd6EZgrUIwByg+mDRYw4hOt7rVK0HRXG+DZR4biKw
         JH7k45nDr3DnhXboRoh9whZGDBRm7kzQd1c842d/C6JAs7DdfKCb4rbxr6+6oZ68NHWY
         J0xA==
X-Forwarded-Encrypted: i=1; AJvYcCXJkxc7CY5NgrwDIJxwvhy4ryXHRVHdbJROelZLpE/oC+HXJeP8r8eHu1vzKdjKCft6PgpVHJp6I+de@vger.kernel.org
X-Gm-Message-State: AOJu0YzGQhCpiTQgOm5radsJ4xkP/UdGXVP7gPkLZUNDc/wiJUNYOt1p
	nqC0dJLGOECg2wgT0IHIVQYw4ugTVJjGFCz43LAos6B6m+3kaNcsBNZIuiSA+DA=
X-Gm-Gg: ASbGncu113jy464Jn81O7zmMM44HHNU57KaFxAyGH3W0RCUzsbF8KabLOyFi5KcxanG
	8npsOQ7zfVpiHHY9jIPvatzR37MMQ2IuWvBVh55GthksaG8h1jraSzMhtyj7MhYddta0rxCuaFl
	/0DaSq79E6ckUzMsR6Ux9dmUo7PIJM2p/eVX3c5TqGon/xs7wPtaeildTYl1P0PsFA2RALlrDqo
	DZZNQaW/++GaL7YYz6V2anZqFzdIBl/RV1Dz1y48UzN7SqTQpnkrbI+hIAoxtfLWVnCNqIfgK8J
	GczkXzCtV0+hozZfJ1jSzHf63NtiJZYrAcxuFCI1Ym3FzEHG37xQ5rrAgjNj7/8=
X-Google-Smtp-Source: AGHT+IHy+71MYu/SjllpM7v8QcUoDCgx3OAzOTwkCu/N39mwnXIJTHVNc5qk3wqrJl8nWKdmmQrJdw==
X-Received: by 2002:a17:90b:3fc3:b0:2ee:8008:b583 with SMTP id 98e67ed59e1d1-2fa24274b87mr11174906a91.16.1739012013966;
        Sat, 08 Feb 2025 02:53:33 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fa36f185c5sm2142003a91.16.2025.02.08.02.53.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2025 02:53:33 -0800 (PST)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	thierry.reding@gmail.com,
	sam@ravnborg.org,
	dianders@chromium.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v5 0/3] support kingdisplay-kd110n11-51ie and starry-2082109qfh040022-50e MIPI-DSI panels
Date: Sat,  8 Feb 2025 18:53:23 +0800
Message-Id: <20250208105326.3850358-1-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Both panels, kingdisplay-kd110n11-51ie and starry-2082109qfh040022-50e,
use the HX83102 IC, so add the compatibility to the hx83102 binding file.

Both kingdisplay-kd110n11-51ie and starry-2082109qfh040022-50e panels use
HX83102 IC, so add these two panels to the driver panel-himax-hx83102.c.

Dropped Neil's tags since V5 is very different from V4.

Changes in v5:
- PATCH 1/3: Both panels use the HX83102 IC so add the compatible to the hx83102 bindings file.
- PATCH 2/3: The kd110n11-51ie panel uses the HX83102 IC, so add it to the hx83102 driver.
- PATCH 3/3: The 2082109qfh040022-50e panel uses the HX83102 IC, so add it to the hx83102 driver.
- Link to v4: https://lore.kernel.org/all/20250123064758.743798-1-yelangyan@huaqin.corp-partner.google.com/

Changes in v4:
- PATCH 1/3: Single bindings patch for both panels with proper alphabetical order
- PATCH 2/3: Adjust the alphabetical order of the compatible attribute
- PATCH 3/3: Adjust the alphabetical order of the compatible attribute
- Link to v3: https://lore.kernel.org/all/20250117091438.1486732-1-yelangyan@huaqin.corp-partner.google.com/

Changes in v3:
- Link to v2: https://lore.kernel.org/all/20250117050410.933312-1-yelangyan@huaqin.corp-partner.google.com/

Changes in v2:
- PATCH 1/4: Add compatible for KINGDISPLAY KD110N11-51IE
- PATCH 2/4: Add compatible for STARRY 2082109QFH040022-50E
- Link to v1: https://lore.kernel.org/all/20250116130530.3010117-1-yelangyan@huaqin.corp-partner.google.com/

Langyan Ye (3):
  dt-bindings: display: panel: Add a new compatible for the panels
    KD110N11-51IE and 2082109QFH040022-50E
  drm/panel: panel-himax-hx83102: support for kingdisplay-kd110n11-51ie
    MIPI-DSI panel
  drm/panel: panel-himax-hx83102: support for
    starry-2082109qfh040022-50e MIPI-DSI panel

 .../bindings/display/panel/himax,hx83102.yaml |   4 +
 drivers/gpu/drm/panel/panel-himax-hx83102.c   | 260 ++++++++++++++++++
 2 files changed, 264 insertions(+)

-- 
2.34.1



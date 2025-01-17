Return-Path: <devicetree+bounces-139237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E508A14BF3
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 10:16:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D73A93A9466
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 09:16:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 709521F8AE8;
	Fri, 17 Jan 2025 09:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="oIwkysxe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE92A7083E
	for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 09:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737105413; cv=none; b=PxfuHZAu3bhXWIQR1EH92LU+bqwqR7Ta22bPZA4gtdi7cy3d/EGOz8NhwPTOERuYJksZXRLAmFBifSA5wezXDjyHQ+QIa8fav69Uwa4Jh4eObnRr29TovH/1FKelpQVnHvUYnQGsLFJ5EI+ctBMlgQnpbaeDEcNXRx4VcICAHRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737105413; c=relaxed/simple;
	bh=8ntyR856fuHnSxukHiP7Gd1LGV/CIVvBY8jsw5BZ71k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VwP7ZNnhJ6pLpI3axKzVOEZa+pOsvOnJshRu5Plnb//nYtQnBb4ZUbt8GgAAfTooIh+hIAIeXl9hdZM9mwl/kn24utK7P1KknN4HMwmwapZH+8P35IAvJ+OfnIjQOugGP/CEGesAH6AUNUvM0qcItS/RvJOEpEfFxLQpfKQ/Sos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=oIwkysxe; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2161eb95317so34735215ad.1
        for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 01:16:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1737105411; x=1737710211; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/4ePeYcN434CLaylzSV66qRhHXhWDJvP3PT0WC2jlSI=;
        b=oIwkysxeJ4vRXnCWN72ZMt957yJuFZoYjAN52gG7SQAw20Ia85OkULBVGf0efevZV4
         yA/kMMGqPHFbyOcBbgPyHkSIxqbbbPRLk/77vE6aQ4fDnH/Tn+iJKZh0GLAPSsyKU7wg
         85ppW2/GeQJvuHs/kL8YTtso2OU6nS6VWz1woeYciSqNiWuQDT5mSwYKOBH5NQEQ79K9
         AhCt7uqRKYJ5IDdWh2qUbEiEKGwE+iW2s0HDQjZ4j2cfER09g+h9XuF4Mhlhj2Ax3Ewz
         NpLIVlXk/AJXiNHT+Xdl4uKGYUEF+DwQMoPZB2273ACFDBpB5hwxeiHidqEsI8vzQUGF
         6qtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737105411; x=1737710211;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/4ePeYcN434CLaylzSV66qRhHXhWDJvP3PT0WC2jlSI=;
        b=IbhUmZwLtj/9jCiG18dHpYtNljEEJpRJ8G2uIkGgfPB4PSKBkILuBzjJcVFnjquxQT
         habj/OMdg5DZNo8sgDSzKPQ/90+33Ca6dJ4nBWObFkTOZ+wL0u97OuFnNM5kzBGKf1OY
         vjpXNprBop9cwDS/GDO1KKKvL8NfiEK9JtKh4MegsFR1R5y6KOTMdrwD3/wDADjd6BuE
         /yBE90/MQQ1QANnwI9shjNEH+nPKmB8It2ApDVcMUbdxM7BLIzVizKX2rK219swWboOs
         Nhdy/VbFO0AxvRyxbBasKVuisaP9WShwES7zN2XllIsoKJE74gRs1qLafchCIyqqAUEJ
         E+lg==
X-Forwarded-Encrypted: i=1; AJvYcCUBKDdiDoJZfYQ8czc90mtc2GsuezRZ6jTDyrLZIia5HSuIJE9N8SkddpUHlAyqJEw/La8ntnqZ/QcI@vger.kernel.org
X-Gm-Message-State: AOJu0Yzx2lg5DTWAhSMzwiYpcS0Gf/igQp9a4HPr2VlfNEDpQmqFRpt/
	94BCDRpfFk0QKitEQZb3mPpUd9yZLDU1BlekXQBYzDw+xX1zojD8CjUTMMYvm7Q=
X-Gm-Gg: ASbGnct9H/RnR4oh1W9SsM7zNLdwsanr4S4oCcYMoAl1c1v6bvixppYT7oSCXKLc/qu
	hQaYiTR0DUnysfv6fRPNnm/1eZ9bVoA8nNbpOk94Eb5o40FQ5UKcI/eBFkd2iPLk/c8J+fRK/Cc
	KezG+lTitxm7Z7YdDCqzKv4Yu453GPytyH7IZNwKGiFEQ93zvG22ga0FeI5cda+1O76sWSPohw9
	RfZovMehaJ4uzb4BCSIOSrC6YLuECB5HImJoxAgTqNUEY44fmsROqK8vFGZL263/JN2nwh6tsPD
	cKT0u5gddfvObDr8jYfzTlX26pDV
X-Google-Smtp-Source: AGHT+IHxjWxNuocSB51L3iM4hFQX30KabrZ22jj+dQeQ8clRXiy+xEMnoo0skqlz3YEsGJVarQMwlQ==
X-Received: by 2002:a05:6a00:189a:b0:727:3ccc:25b0 with SMTP id d2e1a72fcca58-72dafa9b030mr3428746b3a.16.1737105411269;
        Fri, 17 Jan 2025 01:16:51 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72dab815bccsm1421548b3a.56.2025.01.17.01.16.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2025 01:16:50 -0800 (PST)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	thierry.reding@gmail.com,
	sam@ravnborg.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v3 1/4] dt-bindings: display: panel: Add compatible for KINGDISPLAY KD110N11-51IE
Date: Fri, 17 Jan 2025 17:14:35 +0800
Message-Id: <20250117091438.1486732-2-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250117091438.1486732-1-yelangyan@huaqin.corp-partner.google.com>
References: <20250117091438.1486732-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The KINGDISPLAY KD110N11-51IE is a 10.95" WUXGA TFT LCD panel,
which fits in nicely with the existing panel-boe-tv101wum-nl6
driver. Hence, we add a new compatible with panel specific config.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
---
 .../devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml     | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
index 7a9f49e40e75..c771f517952d 100644
--- a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
+++ b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
@@ -34,6 +34,8 @@ properties:
       - starry,2081101qfh032011-53g
         # STARRY ili9882t 10.51" WUXGA TFT LCD panel
       - starry,ili9882t
+        # KINGDISPLAY KD110N11-51IE 10.95" WUXGA TFT LCD panel
+      - kingdisplay,kd110n11-51ie
 
   reg:
     maxItems: 1
-- 
2.34.1



Return-Path: <devicetree+bounces-52865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FBB88A472
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 15:27:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C69C2E5068
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 14:27:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FEC112B159;
	Mon, 25 Mar 2024 11:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s5PdTw9L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F78816F833
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 10:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711362979; cv=none; b=Qxbiqrys1FfgBga+u6KAZbigrZSHmfnys0MfC16B0UgUQpy6uH03PXOV0/IseGtDuCeajKQzVMvFoisoyN7oCFQzzZNRpd42EIwGWVD1CdOgoeOkmuF5jpsygfI4ia16e63DyDV7LPpdceIivRYlXg92XJaEb/nRQRkx8rZsOBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711362979; c=relaxed/simple;
	bh=o8FkFMcnGCkErGN46EocDqCxv2FUm77R00EJGlA+8Eg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cTpP5XiNNzZB49+pF3huRQDwlwyy+sM9JJmGL6gt2KpzclbM3Lbc/6SN0GYulOe0w+I22p7pGKDWPzsj+SpDycqMg+Pzlfi8kih+xkOn7Y743EoMUeaugyYJVzClTu9PF1hYoS+oQsl0jOkKMxBsPNYdJOzzFHy9T2Ja4Rtoje0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s5PdTw9L; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a465ddc2c09so231970566b.2
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 03:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711362976; x=1711967776; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W09M8JIJtZCbNBhGe/AHRCcrRIGkrBwh+HJVwKRzmpo=;
        b=s5PdTw9LBvuIFiOkT/K7o3zSBFrUtD0G3ZXzQWlZ7mrfNVBTJO1pPB6P3XvqKI/UOV
         e2UqS9lGLz4j+G5AksmHUiIrCSN9mG1DfPaXeGuDzyNkFyoko4I3m+ZazSOy6k2y8O4L
         J55nz9Dp/e6zAn1nIEpGyc5K5ju8b+njndP0t1EDa1wvwzlyJBuXDpgJvcm3AojqoSak
         9hVCTE/fhekwcyBveJn5vvT9k2tzXO6HyRdQae9kEqqrvgYGgvnPQ19Pl3Lzt6Q2dgKQ
         rIh5Ncuow1sUd3bzJt0c/Y+h2dpJyJOzRSlxaxw699KXNJsPXuJMVKbmNBweqoq85bOJ
         0LgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711362976; x=1711967776;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W09M8JIJtZCbNBhGe/AHRCcrRIGkrBwh+HJVwKRzmpo=;
        b=XbZanKH2twW+Ql7VB6WMYK46yDx931YZXasVpOi2FGuo1kC5op3gy06pH4PyJe5wFi
         8CsjxX55v//49iPFeUadDjcPL4VTXxBawIvgWYkUMG/LKYSrTB0uoiPXSVdZXPBYHRXD
         6OrbSv6GapoWjbjUCa2OOZ1rEcgRpUUEaQHwZLnv8U+6YCqu/zFqUp/SPDbD+gyBc78y
         6Wa9+QnE7TlOJEE04ciNNbmM5EP1PpJA54tSf8fEWR+jq039bMxOzp6WjPy6Py4X91qy
         n7zW4/hhSiwpEz99Z9GjtWp6jQ8Or0lZecIRU+f6RgTj6H9MW51k32fZAe8EFEBN0GHx
         ulSw==
X-Forwarded-Encrypted: i=1; AJvYcCWbZvPv13+QWFssoI9lp1HGskQqIh/M4IudHMlnL/wCso/6u5jJsWt9FzGGWa3+htDM0RmYJbDZ88KJfFydn/Va8V8YwgKZMudqug==
X-Gm-Message-State: AOJu0YzZQG/DtwQxtgvyY5qE6JP9SoFoF90rk0FqWejg9riZ2+pcFOrp
	5q7lyGGSpZkkuz4oZwTRB1L13umuJm0pNnFq7idE7iZJ5s37az9oC9xVMg6eatk=
X-Google-Smtp-Source: AGHT+IHmQpcP4djMqJlgyZNdnJK2o64l+ykSs8j6DoMBtPxwMAnnBzvrwX1Qg9HlK4MmGrHDb/DTZQ==
X-Received: by 2002:a50:8717:0:b0:568:abe3:52b2 with SMTP id i23-20020a508717000000b00568abe352b2mr6048218edb.23.1711362975826;
        Mon, 25 Mar 2024 03:36:15 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id dm28-20020a05640222dc00b0056b7ed75a46sm2827319edb.27.2024.03.25.03.36.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 03:36:15 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jianhua Lu <lujianhua000@gmail.com>,
	Del Regno <angelogioacchino.delregno@somainline.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh@kernel.org>
Subject: [RESEND PATCH v4 2/3] dt-bindings: display: novatek,nt35950: define ports
Date: Mon, 25 Mar 2024 11:36:10 +0100
Message-Id: <20240325103611.28240-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325103611.28240-1-krzysztof.kozlowski@linaro.org>
References: <20240325103611.28240-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The panel-common schema does not define what "ports" property is, so
bring the definition by referencing the panel-common-dual.yaml. Panels
can be single- or dual-link, thus require only one port@0.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>

---

Changes since v3:
1. Rb tag

Changes since v2:
1. Use panel-common-dual

Changes since v1:
1. Rework to add ports to device schema, not to panel-common.
---
 .../devicetree/bindings/display/panel/novatek,nt35950.yaml     | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt35950.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt35950.yaml
index 377a05d48a02..7cac93b20944 100644
--- a/Documentation/devicetree/bindings/display/panel/novatek,nt35950.yaml
+++ b/Documentation/devicetree/bindings/display/panel/novatek,nt35950.yaml
@@ -19,7 +19,7 @@ description: |
   either bilinear interpolation or pixel duplication.
 
 allOf:
-  - $ref: panel-common.yaml#
+  - $ref: panel-common-dual.yaml#
 
 properties:
   compatible:
@@ -59,6 +59,7 @@ required:
   - avee-supply
   - dvdd-supply
   - vddio-supply
+  - ports
 
 additionalProperties: false
 
-- 
2.34.1



Return-Path: <devicetree+bounces-185146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3BBAD697C
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 09:50:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 10CB1189FBF7
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 07:50:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90BE8222593;
	Thu, 12 Jun 2025 07:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kI2y8v4P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A43A2222CA
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 07:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749714571; cv=none; b=G+BK/OzPFn0hk6u7C3DrteRKJ8huWYn1WglDOT3brXTH/DPq3IJigPJXuObnhK5E9fP+ianlo8vgTEWioDAk/ur9F54bgq0YSWv8fMI2mnvm04B/Zusc3hMs7/PPgT4VpXZRYA8GqP93pRV5E0V5sJ5QOx1NA0ztzqX/p4qIzQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749714571; c=relaxed/simple;
	bh=ulJwcQBy9dMgYWG+wUZv9LjO7oJNNwU+lvBcQcMNFb0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LTprbeyJ2iZ9Go11INgeUne2P9UextwlCGrYyHEU8XcQfCXIiudj5zHRZHZTVOyoAkdpmkW067Xqsi6cau0HJeXUU5GCaxtWvoFrMJ6XKMDbKzEfyMROct9/zGgzRXLgJt+xOArAx67KU6+Sd1YlWbD3iQGYG2SP2DtjsRWDZas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=kI2y8v4P; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-235e1d710d8so8268275ad.1
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 00:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1749714569; x=1750319369; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7XrR9Z799EQOitdhyIDhq08g/G4OghhPor0uKz260cg=;
        b=kI2y8v4Ptw5rXnR3ZiDliznPO1KWcegPU1dtOnbvcmkZqKy+v8Tt5ddGhahZP3xjPX
         zsJYZjhRDcF5XWpXNhX/uaIjUV3zmvzJENNKl3ThwQTv413VhZ7yOhLLNflC00S209az
         co2En4gSZPBj9Cbva8tYx8Cfr4qFFyvxjZqkw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749714569; x=1750319369;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7XrR9Z799EQOitdhyIDhq08g/G4OghhPor0uKz260cg=;
        b=VR0Nbofgs7NYQYobDf0JAdstR/MmaL+llsXBfyLdg30kQIbzlm9w8mWzJp3AYdeD4J
         slkDiQO4Ost+8eQLbLrbu99UXeNGWSWahmYfs//OPHkqatqwoMtHEaoLqbqdTwQNeh/t
         frJDblq8QRl1V4keGNfZMhTBMprrrggC2eIqVA0DRYgxqy3HOftImZ266TbxY3POIGfv
         6NNexkoDHCJVBVivYZ6GUY4x4A9sIXgZqoYNibY6TvcW+21OAo38HaDojt0gqO9cQMO8
         LtgIl5j/2ZJSjSpXMbs0QBwWzJzp1oNyw9XtVOxI1DUA45OUWyTBaS6fyVztAXUafWfa
         IH9w==
X-Forwarded-Encrypted: i=1; AJvYcCUygztCPr03UeqJWaZ9hbVmNKSvhiIfEzSWcI7iGVbUqRT1jRDkHQjze+g0epp9axRhF96LVwWPtqli@vger.kernel.org
X-Gm-Message-State: AOJu0YwywlweoiTDwe4+bTXvI3Vgb4R5T6PIF7uo/GMD346sPLnQyKed
	XkiVlx+O/VF36DMdxD7SaBdEJGbSgLhidj9ThtsMIWs6g3FqdvU26J5UCaeuSHfu1w==
X-Gm-Gg: ASbGncsGDX14+lIl1CLkYRXMtQVBZk326PQThcKgpAmo3WWelwG7uhPJxdQqk94XpNQ
	HxRFnLXnNXtwGqnZzLrmD7sF1dLw+L5yvjIgGR6QPuFRkQJP2gEeOvDQPb5UgzLJvXZ+YxeeGcB
	8sSCeOduIOJSuaNUR8o5qmMvHXvfzbLaqPtPeVvOLClew9/YSR7Mzz0cD4TvJMmKTeUwnN/lUf+
	C6mwutEcQx0TZV1MqHn3WvFg2eBGFwO0h5UAvyBAGDchmcjl9FGjLg9YOUdy/Z+j7Xs3IK3DFmM
	yDFzq857I/vq8f7okINJsyX/U5GhKTAbOKHf5+aP32udhC3HSU/Evms6sixCS02Bd/8h3a9krvY
	NiqsBRaJtfZgXgw==
X-Google-Smtp-Source: AGHT+IFE5DvvPsxXV+bi1JEfMtSwm9K9UZ18IP94fohAyoCbLtffwhmgBBALXCfno10M7kxbt6Y0fw==
X-Received: by 2002:a17:902:d54a:b0:233:ab04:27a with SMTP id d9443c01a7336-23641b3fa11mr102085905ad.53.1749714569502;
        Thu, 12 Jun 2025 00:49:29 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:5b9:e73a:2e58:5a47])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2364e63d42esm7893295ad.74.2025.06.12.00.49.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 00:49:29 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jiaxin Yu <jiaxin.yu@mediatek.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 5/9] ASoC: dt-bindings: mt8192-afe-pcm: Allow specifying reserved memory region
Date: Thu, 12 Jun 2025 15:48:56 +0800
Message-ID: <20250612074901.4023253-6-wenst@chromium.org>
X-Mailer: git-send-email 2.50.0.rc1.591.g9c95f17f64-goog
In-Reply-To: <20250612074901.4023253-1-wenst@chromium.org>
References: <20250612074901.4023253-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

It is desirable to reserve memory for the audio frontend.

Allow the "memory-region" property, to be used to point to a reserved
memory region.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml b/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml
index 064ef172bef4..8ddf49b0040d 100644
--- a/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml
+++ b/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml
@@ -23,6 +23,10 @@ properties:
   reset-names:
     const: audiosys
 
+  memory-region:
+    description: memory region for audio DMA buffers
+    maxItems: 1
+
   mediatek,apmixedsys:
     $ref: /schemas/types.yaml#/definitions/phandle
     description: The phandle of the mediatek apmixedsys controller
@@ -95,6 +99,7 @@ examples:
                       "aud_dac_predis_clk",
                       "aud_infra_clk",
                       "aud_infra_26m_clk";
+        memory-region = <&afe_dma_mem>;
     };
 
 ...
-- 
2.50.0.rc1.591.g9c95f17f64-goog



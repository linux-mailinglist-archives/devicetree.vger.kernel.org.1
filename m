Return-Path: <devicetree+bounces-10949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C887D3992
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 16:40:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 941001C20A37
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 14:40:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 822A114A84;
	Mon, 23 Oct 2023 14:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Fhzi26z0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E00A79F9
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:40:25 +0000 (UTC)
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com [IPv6:2607:f8b0:4864:20::729])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17726D6E
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:40:23 -0700 (PDT)
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-7788ebea620so228520185a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698072022; x=1698676822; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k7PS6ahcPaPVgkaLyfG2/5fLxZhHFw2R9jMfOoRovw4=;
        b=Fhzi26z0I/oSeWepZTUQMtohE8gLKcMIOiQn++1QQtF95KyRBzN5agWIljC1nJIeRi
         WvvXW4ONu5tj0T5rljv4h3Vmq8JbPcxwvxIFbpVFH5rD0Jbzn9w7ej9Xi+xki6L8DPi5
         1x3xBGcSL/iffAQaDBhsKrIa1CHzRdoZOP2jMBKeY+6S72/e70NrGUIT2dXJhaRLGr3X
         kNtCRy445MlJdyNDFRIRv+stmEve2dJm4+fgtrDFiCJ1rAnS1FcxTfmhvJYSHa+cDP/1
         J725tgKwCUcC6y9Th/vkJHCc7GCrAdY8SI+PTBHXLx7d2tRNy1MD49nGkZh2h+Y9T9wp
         DtsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698072022; x=1698676822;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k7PS6ahcPaPVgkaLyfG2/5fLxZhHFw2R9jMfOoRovw4=;
        b=Wnx2B0V9Vntqwq1lCx9C7gyv8q+9s7hX1C3Uhazv8kdhGIQMzNOABIw4GJdi59UYxi
         cdY+jhG6t97UvNbBa0J5EeMFokVjHq7rFc0hyfg+2fuiS8KZQ/xsN4Y6TAgIiftSwVz8
         5cUQaQHo393TqfJ3NPRAV8WYCa3Il4x01+kb3WbN9FF2rDaotUHyENhJzpF9h0+xlEYJ
         3gAlm0P73xj2JM9/fddRYTjj7SeVLyh3XZ2AfalEh1OtyEudPUjZn3oAXxqkF8RsRVoJ
         eWBYWfPpcW8dol9756i+/ff9zgFo7H1EWXst58kdirltDttjc4z1tBpYoaLsqCCTbYYL
         1Ckg==
X-Gm-Message-State: AOJu0Ywm5z0sb+2WlclxdWtqxyY+f3MLDo0Gm0snceXIZkYqClDBefls
	sNMZOJjx4Y7mIXNxkKMRZ47ysA==
X-Google-Smtp-Source: AGHT+IH0nODYbrvEMwbGxVa26dTGc2msGtTG34VMr3BZQ5GiO1cLSJzBEsMmNuRzIEAMQXxLVf8RPA==
X-Received: by 2002:a05:620a:2451:b0:779:d1a6:ee76 with SMTP id h17-20020a05620a245100b00779d1a6ee76mr5162073qkn.37.1698072022214;
        Mon, 23 Oct 2023 07:40:22 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id f1-20020a05620a408100b007789a3499casm2725020qko.115.2023.10.23.07.40.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 07:40:21 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Mon, 23 Oct 2023 16:40:01 +0200
Subject: [PATCH 01/18] dt-bindings: display: mediatek: aal: add binding for
 MT8365 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v1-1-5c860ed5c33b@baylibre.com>
References: <20231023-display-support-v1-0-5c860ed5c33b@baylibre.com>
In-Reply-To: <20231023-display-support-v1-0-5c860ed5c33b@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, Xinlei Lee <xinlei.lee@mediatek.com>, 
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <thierry.reding@gmail.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=924; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=Ui729mTu13aA0ns8kExm+eoWD4rbfjwSg3rfyfGgZBs=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBlNoXOcFzr25uHjdnQfeDxVFE5X5hyS8aufQwwKFCN
 G43v/POJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZTaFzgAKCRArRkmdfjHURa3LD/
 99DHn31961gfxqzckKqZvja192V6gfiNXzsC6hHBBZ8geTJi8IPYTSVbFQxhFdyZ+auYgAjFP5m2xq
 BemZnwKfzObqDIyzohgIPuAu9AlAR2rG1N+HlnAtyqdooBQfywPdJds3RDO1TcMU/8HQ67qtPTa3T5
 9vDOBdgqAb3x5IF5ZiWOd/a9M9V3UHmSIoTL4KQBea3kynTtsw7AE7yrjJpgqv/jBfAq5FhDh1B8pm
 vSv35urioNBPCXdjyegst5HBRzIVnUqhK7c5xwnLaZmsJVXlgWdfkLwQrV9KJS6y4nc8/gmqQLOQIc
 MJxYUXah3PdpvkNr+YfECux5xjQztcI3oHxmpqL6hG/PQmrA5xgK8d76w6fLbXy9T+3N3PjLU+6l/n
 dubODhA5S/1uBw15CbmV/WsA6UKYerpl5W5kkIgSWAgz2KFxcb4AnOBdfwXN1SAri5BMeSz3wGzL/W
 j5teR7NaRxFwczR+3MYebDqu+7sWbcxmAECe+JpDB9QyNhme2SgQ93rYOx3hyMrR97nVPOhDvGmMIh
 gxB8/5AXXSSeqR9YIuNZfCvNq9R3FLFNQ5rAt4WLIexZnWX+vUxROE0pqg6FbrswpRTzcpJYsYOPfO
 nh5gp7N0SCNp1bdgVDKrQHGD+5Dsm8j3ZoiQnMgoOhNBa1lxOGzoY36JBAPg==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Display Adaptive Ambient Light for MT8365 is compatible with another SoC.
Then, add MT8365 binding along with MT8183 SoC.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
index 7fd42c8fdc32..840b48a878ca 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
@@ -35,6 +35,7 @@ properties:
               - mediatek,mt8188-disp-aal
               - mediatek,mt8192-disp-aal
               - mediatek,mt8195-disp-aal
+              - mediatek,mt8365-disp-aal
           - const: mediatek,mt8183-disp-aal
 
   reg:

-- 
2.25.1



Return-Path: <devicetree+bounces-126095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 897169E033F
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 14:22:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F0612828F1
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 13:22:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBFBE1FECD0;
	Mon,  2 Dec 2024 13:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZyBCBioK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573631FE457
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 13:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733145730; cv=none; b=nyL4p3CtK+wd1UjVHk1KjPoiFbn7umvl23ay1tJgefHtBr+9QOXCIxi3fGCkE6MBa7pYvAoI1I69ZuPTK/0XPl65V33wVjEgnBhX8cQNLQ2XJTcVzM6kgkiooWYTU7eDWb/HMV5Oi6RxSVNRyWKXBHR9RrRzfH8K1eDm1ratRzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733145730; c=relaxed/simple;
	bh=P3xlbBVIYaahMLJdT3ms3ufz8FQu4DZlI2toWyFc35I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=deiaV7j+/p7qa8LIYmOJU8HoVabWltj2eN0JQ/U5bV7l7JdIWbl5Q8cV4a43Bm2jSUkdNVnGmXB5zuf3owJ/6OpsFGfbtbO2Z4rVSA92JFoHDb6WjDsczptb33zUFlyZguK3e1xazC/7l0eDfIRqJmf20/I8ORqAcmkCuOxWXWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZyBCBioK; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7256dc42176so1072891b3a.3
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 05:22:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733145728; x=1733750528; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/S/18qSCPNYCBqytbcS+B8eVVggQ3UXdDJZibS2kYVI=;
        b=ZyBCBioKf8/+DgBaLqloUoRhxnqJqkcwXpgvtewI+L+/xnXQip21GEDMGwjKrSHHs5
         i8kCzgrVE1oT1Rm4mNSCEcMlawEbeR38werHD2pbDBeUEqGAifYPuhfHrQGiWFeXHB2S
         /AH9+hNzZp0xEPbFY+eRrdl0XMaTlJTMomoe/FSlcR8T2M9j05++St4t6W9zq3nV+VFt
         orixEKCaobGPEYBZM7M3GffbnzM0XN6yTA7d7fKDdE63/oRLNu4R2jjwSvqPJ4vbyW0q
         8vKe8cYRqmXDFSFf2jPknMVwNo68o8B/iuIQkPGr6AIVOwQSBBeHej1a3L+8eY84nVit
         0WJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733145728; x=1733750528;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/S/18qSCPNYCBqytbcS+B8eVVggQ3UXdDJZibS2kYVI=;
        b=CIkMizrLv5x3YpJdlYF/RwDeyn3Z0qOW+39UW2lyfXHT0H5fnsid6/qjBQErg5eHvw
         qbQ+NVTDUnyN+uE3GYdFFpM10fNmNFYcut3BSa7Eb+QC+gBKjvfutdZETMaSdNljfdAP
         zfwHI1FjuiuPc77g9XHC05RsBm6DTwl0QQ14ds+KQVc2pDNA/p7YorVmuSWhmFgbtFEa
         bPaEJUZBWh/4TvH/rzTBpRbeEgp0VlSI3sSjeGg4Brz5mot0VIzg3ijaxLdq9baUp6J4
         dF23TgGH8ZiA0OlO8p05F+VmOxKi5rlu5mXif8R5BPqW17oTzbB89NzJYjs0nOz/HXei
         121w==
X-Forwarded-Encrypted: i=1; AJvYcCW6INuvzh7fW9ma9V27oVKX5/4Bb994vI2bev+a1kZ3DbC9lfxZJLd3nuiw8EbGanubYFTMTqRZRWxy@vger.kernel.org
X-Gm-Message-State: AOJu0YyIFOhkZVAmnoGo4cXcjCkGBtqMuBEHNqUS6sx4Yz8j3MlWCaz7
	s/7J6z8eKdZuYPLv9njFVURbkmWD1qNVxhWLj2G2SHPt0J5wk0ao
X-Gm-Gg: ASbGncv0IyKdzP0RA2nSvq/wWW60dJMdhbSyYLEg97v91PpH4CEWE4QBsfV9+AvWYMc
	43zvUE5RCE90DHwp80gFABheLMUtotY8dRU22IEQqRwAdUXbWUPhFQRkGY60HFeX/uCaf0++baW
	NWifSPPFb7G8Qe9hnrE4RwdkJ0spZoHlR6H6tI7xgMPub3KV3AiDUFj7EoE3uVr82EvNgl2v2HY
	w0wIJRK+ffvf9dD5pf8fL/HQfNwGkHtcbH7wNEBRJyUq5ElNkPqJ0GmxCMiXw==
X-Google-Smtp-Source: AGHT+IFVrLiQ0GbbGVPeRPip/3qkcT3X4QdrltTQzaVD3+6Zz3D+wWICEQ4CTjCk9X2VcX8s2YfS4w==
X-Received: by 2002:a17:902:f54a:b0:215:4362:bc76 with SMTP id d9443c01a7336-2154362bf24mr211766295ad.54.1733145728199;
        Mon, 02 Dec 2024 05:22:08 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:9b87:b3a5:736:1fc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21521967290sm76476535ad.142.2024.12.02.05.22.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 05:22:07 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: robh@kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tglx@linutronix.de,
	daniel.lezcano@linaro.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH RESEND 2/2] dt-bindings: timer: fsl,imxgpt: Document fsl,imx35-gpt
Date: Mon,  2 Dec 2024 10:21:47 -0300
Message-Id: <20241202132147.587799-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241202132147.587799-1-festevam@gmail.com>
References: <20241202132147.587799-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

The i.MX35 General Purpose Timer is compatible with i.MX31.

Document the fsl,imx35-gpt compatible.

This fixes the following dt-schema warning:

timer@53f90000: compatible: 'oneOf' conditional failed, one must be fixed:
	['fsl,imx35-gpt', 'fsl,imx31-gpt'] is too long
	'fsl,imx1-gpt' was expected
	'fsl,imx21-gpt' was expected
	'fsl,imx27-gpt' was expected
	'fsl,imx31-gpt' was expected
	'fsl,imx35-gpt' is not one of ['fsl,imx25-gpt', 'fsl,imx50-gpt', 'fsl,imx51-gpt', 'fsl,imx53-gpt', 'fsl,imx6q-gpt']
	'fsl,imx6dl-gpt' was expected
	'fsl,imx35-gpt' is not one of ['fsl,imx6sl-gpt', 'fsl,imx6sx-gpt', 'fsl,imx8mp-gpt', 'fsl,imxrt1050-gpt', 'fsl,imxrt1170-gpt']
	'fsl,imx35-gpt' is not one of ['fsl,imx6ul-gpt', 'fsl,imx7d-gpt']
	'fsl,imx6sx-gpt' was expected

Signed-off-by: Fabio Estevam <festevam@denx.de>
Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
index a2fcb1e8e74e..9898dc7ea97b 100644
--- a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
+++ b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
@@ -21,6 +21,7 @@ properties:
       - items:
           - enum:
               - fsl,imx25-gpt
+              - fsl,imx35-gpt
               - fsl,imx50-gpt
               - fsl,imx51-gpt
               - fsl,imx53-gpt
-- 
2.34.1



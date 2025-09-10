Return-Path: <devicetree+bounces-215157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7355DB50AB9
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 04:05:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1AD20461E6D
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 02:05:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AEBE214A9B;
	Wed, 10 Sep 2025 02:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AkJvL1E7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D8420A5EA
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 02:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757469950; cv=none; b=OpoLB5QEN/tkw0p0IU2NoURCePoKyREX0r9iTCWLQH+jAbvt9WUXDi/LUR9H/Ef4wMBMfn8BIziIZi7qWqO+usrBXF5g1E5rykk3h/nF5VJOiirlqTcRDsWgk/jq88F+9D9+CBHp7llMzH5bhhy3POtdv2UUTeyIdd8kIVXHzfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757469950; c=relaxed/simple;
	bh=xkJEEW5j9QHyLAqxT0upkCjVdPeAqyjifvngrl3OIJo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JRYFbgCKQEEo/0MfBeb+D8nkXMtWOqXqGEVq/bN+bKFKH+etDGZd7OQvOIkKQvYypqhmwhcrPEpotwZq170PLlYrOXP5wcKJ1ALVtCEaLxp0oVJPjiBOYDr0nMuCD8RpOdLF7+oUmeJ6xxmGrhuw7RNUAQY6tsnOQsiU5KRVXzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AkJvL1E7; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-24c786130feso54589285ad.2
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 19:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757469946; x=1758074746; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zo4VEbVAw3LffR1rR6U74a6Y8xtKLk5HFuoBic2yQiI=;
        b=AkJvL1E7YN+tcErwrBBhYOF1oYarx4UZAuRkkV7QKW3RU0JN2Q193/nTqa6+7ZB+Dm
         D30vflyhQLGCjWhLkV5AvwXXNyPoUxS+rngCf8EO26lHY9U9MAiVbIbhO9O1oUiSWnTU
         ytQ6cctLBejMH9aO3mas12UU7sacAt5LlHxya1KtWcL2rgu8kasgvbL+sSpZXhP8ljts
         soTr2luFi0OmnYTgtnU7y6qoDuIxpf7p+0Fa3dCZqYwNJYVnQoWrIjYQYY1iv5apgYUK
         3s+L1Ae0ErkDjAvIG/GbgDrizP2P9P2l+62RSurEJAhvFBpHRF7L+w/C8H1ZHIGGu9B8
         rawA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757469946; x=1758074746;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zo4VEbVAw3LffR1rR6U74a6Y8xtKLk5HFuoBic2yQiI=;
        b=rXaqEUaVSc+e30P/Ejcpecoy294JOeMOGAWbm3XyUMaFOHWyRj0pxHpMas9eWtv5li
         XwCF6gmwrgEs176upPo+Dc+KC1WlsuMQkJthdrJsrpuxynUg0JveIAqbLxKebJvmUK2i
         UYE9I03gHnCFTpITQc9VoZTOK7n9kDpcyqXFN4xAxkDPKFKa/hRBQjrijZoFTe3T2Ofy
         pNjk6v50ZgzsruMDCrpVV/JpybPIvvd8pLDG97fVbu4APwmpwTKiaSvP1LcwlBw2X7TJ
         QwBrFVOLGqsmyF3Av9zr4x9HvTNntUHMEk5vV8lO7bWq0zwT4Arh/RG/OVibjharQ/v4
         vLcg==
X-Forwarded-Encrypted: i=1; AJvYcCUGcfW6cLtUGQf2ii2FZi4qChaZBUZLx2LTxP4ze6EATH0f9Rgf7nrEflYWVBJHz3vP2MXi7lHqt9nk@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0jVpZro5g5XpkEclR5/+XRK7pMH7m3Pu8Ym+FzPkWgh9et/dp
	Lecx9CS2djWWS3fJRhNy1OU0a/B6JhGQsp/cNIu/obg0ST+DipisVhngf8KQpA==
X-Gm-Gg: ASbGncsCS55n6IbZGvfyQI23acWzbdCpu6fcUz5zU0IRPBK4Lboyd6MTOUKWtRgj8SB
	2vc+5tk3tS1/5CSRl6tTox48oZMs3dHYmwEssUlu+/4rwEx4IrdgUyzIOQyTmDaBalaS4j/5NEA
	K1kthnd25q1Sqb4knrZ/KPf7yYgfW3ItxXV/0ojQy9Fo5PP7r6jKyL+pCEM+Gip4Ee5F6sGcxqi
	MbnfR3t8Sk+0nGadH5VZK8276mXg3ye2RMPGe6k2ZAgeV9LjX6DwS0dqM5dV5CIdMFgaDZhtWl0
	MVudCVvadKxYTWGpRN5Hvd17QbH4zXCeDMn+TugEgd7yAXicH0qf3Y2SmCDVGQ97tzKvo63ukUJ
	mOhWhV9OyKCGTf5S8FEpaHC6unWY9EywjjqNtFW1E+kd4DBEO0rYhvZXpNA==
X-Google-Smtp-Source: AGHT+IHwgIhELapLj8nq9Y1ltim4kH1wGUB2p36Co7UlpgEMhsiFminC6HNAiT+4BLErxh/4zd/+aw==
X-Received: by 2002:a17:902:d4d2:b0:24b:1f34:a64c with SMTP id d9443c01a7336-2516d52d12bmr169999525ad.10.1757469946427;
        Tue, 09 Sep 2025 19:05:46 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:58b2:c9cb:20c8:e698])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25a27422bb7sm10607735ad.30.2025.09.09.19.05.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 19:05:46 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	kernel@pengutronix.de,
	Fabio Estevam <festevam@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH RESEND v4 2/3] dt-bindings: lcdif: Expand the imx6sl/imx6sll fallbacks
Date: Tue,  9 Sep 2025 23:05:24 -0300
Message-Id: <20250910020525.342590-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250910020525.342590-1-festevam@gmail.com>
References: <20250910020525.342590-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

mx6sl.dtsi and imx6sll.dtsi have the following lcdif entries:

compatible = "fsl,imx6sl-lcdif", "fsl,imx28-lcdif";

This causes dt-schema warnings as the current binding only
allow 'fsl,imx6sx-lcdif' as fallback.

['fsl,imx6sl-lcdif', 'fsl,imx28-lcdif'] is too long
['fsl,imx6sll-lcdif', 'fsl,imx28-lcdif'] is too long

The imx6sx-lcdif programming model has more advanced features, such
as overlay plane and the CRC32 support than the imx28-lcdif IP.

Expand the imx6sl/imx6sll lcdif fallbacks to accept a less specific
fsl,imx28-lcdif fallback:

compatible = "fsl,imx6sl-lcdif", "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";

This helps keeping DT compatibility as well as using the more advanced
lcdif features found on imx6sl and imx6sll.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index ce31b873fb95..d665f3241e97 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -23,14 +23,18 @@ properties:
           - fsl,imx93-lcdif
       - items:
           - enum:
-              - fsl,imx6sl-lcdif
-              - fsl,imx6sll-lcdif
               - fsl,imx6ul-lcdif
               - fsl,imx7d-lcdif
               - fsl,imx8mm-lcdif
               - fsl,imx8mn-lcdif
               - fsl,imx8mq-lcdif
           - const: fsl,imx6sx-lcdif
+      - items:
+          - enum:
+              - fsl,imx6sl-lcdif
+              - fsl,imx6sll-lcdif
+          - const: fsl,imx6sx-lcdif
+          - const: fsl,imx28-lcdif
       - items:
           - enum:
               - fsl,imx6sx-lcdif
-- 
2.34.1



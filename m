Return-Path: <devicetree+bounces-129402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8262E9EB7D2
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 18:14:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 69A55162BAE
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 17:14:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43B0B23FA1C;
	Tue, 10 Dec 2024 17:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Oum+znJo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9DD232387
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 17:10:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733850650; cv=none; b=HJcHmpHJhFIwpbujDL2dY9oCFU+RwZJlioVVa/U7wJaCIqyD3jSme3ONs0nfW9Ig2Gk8OmmsJirY2t2lo9awb3xUjfdkbW3nBLXMjQ5uf6Nr4WF6bf44B+PZN7iFvxp9gUSnepI5pO28wJIIqUtFIiagxxdYFaj+T0iJXJFDKqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733850650; c=relaxed/simple;
	bh=NtVph11BLd+x3z/1Zok/7JAFGIkvZxSriGpx0rha4FE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oF3dIyUciFsA7Jp0rUpydPYXN9etGv5Pwin+VsrulHC72yoSsDZiVgH6g/ZcI+QLzIe9ltu2Nyfxy5pOiijRi8iRShx66XAoSUDyeY/YKw5t1gG5PRUZAKyrfYojk34xQOspbURsaHSDbnuWRPRHrG82y9AGASYJdNZ99sqCzr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Oum+znJo; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5d3e6f6cf69so4956423a12.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:10:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733850646; x=1734455446; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pzloo09Dgg4guioxkvLZOvAnsn9Efhp0SVwyR1byrx8=;
        b=Oum+znJotR81/GL+s9X3RPKW5dG7Pck33ayCgAliJEErevbuKFkHniF15QcQxdR1Lu
         vF3o8AhuF6Ny7cyQFsEuNwdPc6trLk/EWN7ujzUcFmQaHysDSPF6A1ZhxolQstOajJiZ
         ZnKbRxOk3roMK3Rz+yycNhSsGq6SJ3gksF1ieic7eNUH5/N3IdtUd70i8hCLfbbCAcfJ
         k80F0Quf6lF3FZxetKrqqw0wS0zJMxdVFKF3jdUSgL1yV+xE9tpT43R43DsKI95fJPvs
         EC4e4vq9x+nXRpvQaTgPqeslzokVL1S2fr6vO7ngkTGvpUSiVxsz5w+aWIRSQeFrjF6q
         SB6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733850646; x=1734455446;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pzloo09Dgg4guioxkvLZOvAnsn9Efhp0SVwyR1byrx8=;
        b=xVQBzYLr5dy/8Qd5RjOJgSefNcsDJmFx2VxCdnP3/RBYDbfKWZZiWnK3x2nz967gkl
         8ePEx/AUd7BBzhmHQL3iCIrRApE/2YtXfX31fHkysw7gzljFTqOPMJ7B8hsCl9/udpTk
         iXww9qoJk+j6kUn75LYwMEvy58v8/qq8/b+xqrVYwMs00ER30zCUODa/nrU4veu5+Ba9
         em72OOshtUZfNTk7Ns++qghjwH6P2Wz7UH/0LrwgqUfhJIA4C1KXIjCPAkaFM8qcA5e4
         ovzuH4J3ZYnMpbbyIZ7pinVgRUqiNvBNnZ78/oa/hcGHHFX281qb5RdcVSW9HBrluvrb
         QL8g==
X-Forwarded-Encrypted: i=1; AJvYcCXcpptSz1vjs6bwF33jNIK9LFqYKCoUNopS0i0hHnv19jyPtHlulFGQo+H8j28FODVUA06Hrmdcu6XH@vger.kernel.org
X-Gm-Message-State: AOJu0Yz24lPXH+w8NnOmkIrC4KkLaCrT8OAHflglHIh+bNUglokM0efI
	wfLaNIiL6GCmVfxlrxBlWN7xgdi3zt4sOKeRszxo9appBBEeXHAsAkiyc1L6w3Q=
X-Gm-Gg: ASbGncsUOc89erYPjAnNAN397b3k4Gg4os6ZnnupKXP3txlAB25D5YFkYK0WgQNnFMS
	iqc9BRkKoumRZVy7215osOkb4jMi6HwGsk60SaWKoOLzzouhGluVVKqNF+8nICE14TE7JaqX92w
	ydsQ2Mae0cVXTQOnDS9oKih+l0iOI+8QUArwONk8ZvCpj5BLfOvuL7tFZfnzO3yXG0aCdWDU5cy
	ky9KPq4guDMwvSKe9ZquBAQiJ+v5JmjN20i1q7VJFjUwZeMg9+E9fLA8/qwoBdta520YR+Avy9+
	M39zLrX5Kpk=
X-Google-Smtp-Source: AGHT+IHu+/x+M8u5QIMjQ6egtfsihnsclgAo9NZ4IQV+C7GzhzYxCnvnX8xs1AndpKM2ie6VGxgEag==
X-Received: by 2002:a05:6402:3591:b0:5d3:e45d:ba91 with SMTP id 4fb4d7f45d1cf-5d3e45dbbfbmr13230055a12.32.1733850646516;
        Tue, 10 Dec 2024 09:10:46 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3e7936581sm4853124a12.56.2024.12.10.09.10.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 09:10:46 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	magnus.damm@gmail.com,
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH v4 18/24] ASoC: dt-bindings: renesas,rz-ssi: Remove DMA description
Date: Tue, 10 Dec 2024 19:09:47 +0200
Message-Id: <20241210170953.2936724-19-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241210170953.2936724-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241210170953.2936724-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Remove the DMA description, as it duplicates content from
../dma/renesas,rz-dma.yaml. Additionally, remove the MID/RID examples
mentioned in the dropped description (this information is already
documented in the hardware manual).

Suggested-by: Geert Uytterhoeven <geert@linux-m68k.org>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- none; this patch is new

 .../bindings/sound/renesas,rz-ssi.yaml         | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/renesas,rz-ssi.yaml b/Documentation/devicetree/bindings/sound/renesas,rz-ssi.yaml
index f4610eaed1e1..5b42eec864f8 100644
--- a/Documentation/devicetree/bindings/sound/renesas,rz-ssi.yaml
+++ b/Documentation/devicetree/bindings/sound/renesas,rz-ssi.yaml
@@ -57,24 +57,6 @@ properties:
   dmas:
     minItems: 1
     maxItems: 2
-    description:
-      The first cell represents a phandle to dmac.
-      The second cell specifies the encoded MID/RID values of the SSI port
-      connected to the DMA client and the slave channel configuration
-      parameters.
-      bits[0:9]   - Specifies MID/RID value of a SSI channel as below
-                    MID/RID value of SSI rx0 = 0x256
-                    MID/RID value of SSI tx0 = 0x255
-                    MID/RID value of SSI rx1 = 0x25a
-                    MID/RID value of SSI tx1 = 0x259
-                    MID/RID value of SSI rt2 = 0x25f
-                    MID/RID value of SSI rx3 = 0x262
-                    MID/RID value of SSI tx3 = 0x261
-      bit[10]     - HIEN = 1, Detects a request in response to the rising edge
-                    of the signal
-      bit[11]     - LVL = 0, Detects based on the edge
-      bits[12:14] - AM = 2, Bus cycle mode
-      bit[15]     - TM = 0, Single transfer mode
 
   dma-names:
     oneOf:
-- 
2.39.2



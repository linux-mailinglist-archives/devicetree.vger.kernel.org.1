Return-Path: <devicetree+bounces-66971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBE18C5EF1
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 03:48:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 789661F21F1B
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 01:48:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 583013B785;
	Wed, 15 May 2024 01:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="V4klKIBQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC8D32C69A
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 01:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715737642; cv=none; b=bLiDMLbolMksZ/CS0eABJHC86yWNngz9xBWazTOUeG1PfHxRH8Xk5MVlGVi36aGdbM3O3KQUd7kV+uVM5KAT1AEUSCcV40eZkuxzE15D/P8ZYwsRKCwjMe8QEV/0Ng0R5i/bpeD6o9nTrUGRr9gHuDhHFXPs8ZRhCpUzEVE4L9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715737642; c=relaxed/simple;
	bh=vD5NEJHovUlYkpXmH8dLxEhNKLmSiL9kQI8cQs32bJA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=FfMwj1a3WD11oYrDUdX8ziVf9chuM7rCMHWOKzG+v6IINW63FjspZ+pRdLShQrYyCNE1FYy3k7tYzZu373ekTr9kkKreEjgH01DeuaOs5K4pL0KPx6TJ1JslojQ8y+JbetME+VpLsMDY8fdVsmLbuh5Ruc5UwugD5YMRzYL1X3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=V4klKIBQ; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-61aef9901deso4549376a12.1
        for <devicetree@vger.kernel.org>; Tue, 14 May 2024 18:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715737633; x=1716342433; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1O2w+j7oF+If/RyjWtMiKcWw/CJB57vGrA60jH80G4s=;
        b=V4klKIBQYtj1ydZMfRpcO8fuRi8y5H31Ax8lbUN83kJ/S8PxBTUUDPipfY1EERh6lp
         rw05hR4Gvvl5lL1fC4eP3kB3qk9dpS0WxGspKbsVwD+WYx1I9SuAJPASGck1edcfUKrD
         2SBfvIPDsSBcsAGHDyt0uPNmM885Cb63Xaz/HEHA5RE28iulzV7e3jksz/RAFWRGXzNC
         b34Qiw+R/4f5GhoiOjfDb3W+cZmJPeEC1ZYGW+iDe+Q9t0ZGDTZhUKBnfOy/1QTECcND
         dBHpXyzAnNKHPspMh2aykZAz8cNPXVcyZ4+rzeJ28jcho4rx2c9yF2Xzj8FbT8rmPRAu
         bsrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715737633; x=1716342433;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1O2w+j7oF+If/RyjWtMiKcWw/CJB57vGrA60jH80G4s=;
        b=SisM9qNPW9X1RIRA7dojUMzloVYD6prCK6URTDhcYbHHmfTD2Hx2dW3yN02TZ01DC/
         RpAo7uEIcGF5evjjqfa1d40McKU/x0UDsn0CFCewxuKBoHmpTSiKXynkPE3Bf4A1tsDF
         dSpYvrycdZY0hbFozJZnlrXiQLTSX58TMxNnstOON5i0azFlkSkTtfSE5GX/50OStJc/
         YcG5crXjx5JNRRjK9gXanOEOmcyIk5jZfgsP94csG+4MWW2I1LngX0g7CNYHmv94sVN3
         PCbfdVztFclLGJtS63YIWo4thTxG72oLjhO6sLPgK3gBR/8mdjrS3Lv2KjRpsFI0zq1Y
         EnPA==
X-Forwarded-Encrypted: i=1; AJvYcCWUCC3dXfsexR9DXGI1MtT8G2NszAIoxv3iukSNp1wOZLL7vZTCe4bnvpHI4MOLAILiREuLY9kWkuWIK9US2j+NiMiKPRoqvK2meg==
X-Gm-Message-State: AOJu0YyaFyqVJL/6TEii+Wxo2Az+OLLkwGMxPtwKCLFPAAaBUxJh4Agr
	PJDdMDWrA/OTS4PaNM4Qu5lklnJXEzT7GFuWRp/wQwpRsMt0y9+jA1LlY9JEkzs=
X-Google-Smtp-Source: AGHT+IEtB4CRNoYlNU8a2N2xb8vVK5N1RMyfVtjB+ogMObqYoH2IHATftuTVgtI5S1tCKDolbYvLJw==
X-Received: by 2002:a05:6a21:2781:b0:1af:d057:af9a with SMTP id adf61e73a8af0-1afde1c5d1amr13050610637.55.1715737633524;
        Tue, 14 May 2024 18:47:13 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ef0c1368desm105582145ad.233.2024.05.14.18.47.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 May 2024 18:47:13 -0700 (PDT)
From: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@chromium.org,
	linus.walleij@linaro.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	airlied@gmail.com
Cc: dmitry.baryshkov@linaro.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	xuxinxiong@huaqin.corp-partner.google.com,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [v7 6/7] dt-bindings: display: panel: Add compatible for IVO t109nw41
Date: Wed, 15 May 2024 09:46:42 +0800
Message-Id: <20240515014643.2715010-7-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240515014643.2715010-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240515014643.2715010-1-yangcong5@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The IVO t109nw41 is a 11.0" WUXGA TFT LCD panel with himax-hx83102
controller. Hence, we add a new compatible with panel specific config.

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Chage since V7:

- No change.

V6: https://lore.kernel.org/all/20240511021326.288728-7-yangcong5@huaqin.corp-partner.google.com

Chage since V6:

- No change.

V5: https://lore.kernel.org/all/20240509015207.3271370-7-yangcong5@huaqin.corp-partner.google.com

Chage since V5:

- No change.

V4: https://lore.kernel.org/all/20240507135234.1356855-7-yangcong5@huaqin.corp-partner.google.com

Chage since V4:

- No change.

V3: https://lore.kernel.org/all/20240424023010.2099949-7-yangcong5@huaqin.corp-partner.google.com

Chage since V3:

- Update commit message.

V2: https://lore.kernel.org/all/20240422090310.3311429-7-yangcong5@huaqin.corp-partner.google.com/

---
 .../devicetree/bindings/display/panel/himax,hx83102.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
index baf8b053e375..c649fb085833 100644
--- a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
@@ -18,6 +18,8 @@ properties:
       - enum:
           # Boe nv110wum-l60 11.0" WUXGA TFT LCD panel
           - boe,nv110wum-l60
+          # IVO t109nw41 11.0" WUXGA TFT LCD panel
+          - ivo,t109nw41
           # STARRY himax83102-j02 10.51" WUXGA TFT LCD panel
           - starry,himax83102-j02
       - const: himax,hx83102
-- 
2.25.1



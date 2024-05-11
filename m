Return-Path: <devicetree+bounces-66410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3118C2EEF
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 04:15:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8062E285631
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 02:15:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F14B3A8CE;
	Sat, 11 May 2024 02:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="paGTtbpf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6745140BF5
	for <devicetree@vger.kernel.org>; Sat, 11 May 2024 02:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715393647; cv=none; b=D+zW7FzzfHNp03t4dWEFFLhW1b4zvm/FS8xFEpr4WwF7L3jeoBwYenei+hMyVbiDxPjMQl4pJFzpQn5Z6FBZcIxcduCdjLUqUWtffSlCsnLR+M/EaIqp2UqM6nRMKNhm7udPBh7XQ1HLOCi4QcMOQxFx113fHZg0MjZZ+6DpbAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715393647; c=relaxed/simple;
	bh=ErUqvhhZEPiaGGFr5TpTmGZyBY5YYzifSQxB3H+sU4w=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ddQkeJKed1z/TB2YXQ4NOXZ+9SRfKfKWeiqBSaUvdBsCuekKXzWRr5E2+4ElWNmHfYDu1LbeK17xw4Ivg7kzRAnYyid4IxSGMM6eudoanjqYceL9WptcUjtF/iH+dcAd4PihZcxA0+lFpSYTMGjNb79z8Tgz+deZ7JR0E/RGGks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=paGTtbpf; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-6f4603237e0so1830011b3a.0
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 19:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715393637; x=1715998437; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=buSGGfA578U0qsElcZ/pKHG9pDlMNRoK5dVeaixkId8=;
        b=paGTtbpfqWFM0aQinq/VM9WAWSuOYuN0B9vqcjjtl4VS9QT1QbaSBBTvtd4lZLcEhd
         cIOI4DXgHiHfsnZpw6zx6xnXGa4CVavqBQeaOZMND3++VLhTXPGTw2GdKTYhJfnmklbo
         777WmJmSdb31nBMisx3Zw2YO5kZz9Cfidggx49xb2s5o4P/hJAKm6EJhO2lYFJ7SxLVh
         J6gDgQDDOvMYnsGFskB4UOI4AbN4oZBWc4GS0iCtxP/yxv0FyCe42mDhCPE2DEE+3omQ
         JfFrAw+qya5EDeP7YwbALVcBCaF9ZaRJiHs4YdT91KnychQ62tXsNvRzFFhx4NO58A0F
         CRsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715393637; x=1715998437;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=buSGGfA578U0qsElcZ/pKHG9pDlMNRoK5dVeaixkId8=;
        b=hNrhqIzd05H5k0JtZqr57qteCt798EmVqBDGvMopESkf502HsgwqQMqGjVw3bQP6Jv
         f5w6CkQqr94h1HU9qUEEF1ZmcvZYrg7qK7cPF8eD1oM51HQqFOIT5eHGlIVwVCo/lBRL
         5tDHQ7nIoDVyqihgwhmZZl+y0aQVyJr4O5G9qzHYw6jRHM1BVFDHJFklWeYtKTcqxznQ
         OTdLvCGPR/s61I2uveGy0MqOmfqNlQgsoS8xSIqWDmeVN1sckL18/wdeNDqNB/jMsY/V
         vxqbqOEM9BDQYtkxpxDkKT6z+wElyrt/p1QjgwhKi8Y/t3r4sXX8fqOmQuYTdvXimjwe
         62QQ==
X-Forwarded-Encrypted: i=1; AJvYcCXtYcqw2boc783PxqHnzFZtiY9C7yTbYTL/IKOgRcZ3wxWz7PMmJsN35e1EuXEiPfPhkXEWUD3raKP2jKb2ihLYgmjLx9ZKEjjLrw==
X-Gm-Message-State: AOJu0YwNkTInQBucpiXx2cVpXRqka4+xnnrxTmL2dcylapdwGq8ZpvfM
	50PxKWyejy89Ugi2reo5HTM5LiNxyPDxIH30U3tUn0oZ2P6dMkN0n1TP8zDKkGs=
X-Google-Smtp-Source: AGHT+IHaDoWAAKehP+RA170JBuXHI0YWJevK2pZ3NDo17cxsNB8HHsCuonhvsfus8qnqVKaezmsR3A==
X-Received: by 2002:a05:6a20:8411:b0:1a7:a644:4485 with SMTP id adf61e73a8af0-1afde10f892mr6903617637.18.1715393636997;
        Fri, 10 May 2024 19:13:56 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f4d2a9d9acsm3680340b3a.90.2024.05.10.19.13.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 19:13:56 -0700 (PDT)
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
Subject: [PATCH v6 6/7] dt-bindings: display: panel: Add compatible for IVO t109nw41
Date: Sat, 11 May 2024 10:13:25 +0800
Message-Id: <20240511021326.288728-7-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240511021326.288728-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240511021326.288728-1-yangcong5@huaqin.corp-partner.google.com>
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



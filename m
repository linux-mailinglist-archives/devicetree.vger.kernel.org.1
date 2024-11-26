Return-Path: <devicetree+bounces-124561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8553F9D942D
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 10:22:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B6BC283840
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 09:22:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6612E1D1F4B;
	Tue, 26 Nov 2024 09:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="pR77m9w4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B25EF1BDAA1
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 09:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732612880; cv=none; b=SJ1F2czySEdEd/LDym0qBmJAeoIZCsiH+x4ys76ce1fLn9g8ZyaQz9sTGyAFjWLIe0LZQrsjpj67bPCgQYOLl0KSlvBH8OIoMJxHHB9M+xBqMPrjXXv/mPgmfMg6IzcOW9KWBQYb4UQIrDc4nKdMITxP1REDs2We7HYzNtUTtko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732612880; c=relaxed/simple;
	bh=lMDTraku/x7/L+HfQFFu+VuQD5cryMGir72e5kDEJHE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=QZCF5bFUOLHBp2dpoOU5lpi86s/SrxdhwiOGO4JbnuKMQbK9OkbxkcKgDKDThQO8twfLq2/c4WV8YxzVZ0J8fDQAjm2GB+gdNNmxg9N3Z3Kh8sVZsIK2A1Q9usalNfGOkMOrTUi0VgIhnh0/cKnb3AaL+o0i1nepLDmn8W0DQyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=pR77m9w4; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3824aef833bso3901487f8f.0
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 01:21:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612877; x=1733217677; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DWc+F6Re5lYpUThTPl2Jyvuy/tQl0uxdBQ2YGVSL9kM=;
        b=pR77m9w406KSH80pqt+Rw6/mp3tHCZZNEafG65Xyl92uhWFAujhH0fhEOiyG0O8qBR
         fT3sNtG/pMXSSjkZ6jgF+4c4CBVtxY+RTCfuK8trH5gSbwEIapgP4HYa41DWoqBNd3Vb
         BiDdVc/p57SwlGi1JLopl9iZ11ITRfbsPSouF2xqkz4ZvXh/0ei+4SWY78vK/KPdscWZ
         jqaCYZBmt8X9fUgO3BJvEhILEY2b0ucpVV9iaCvXa0vnIdDZFyzvYU9kEilMvD/cypRl
         WQQnJl32wXtcJb+pn9far95lOTpZ3LrTNx689T2PDlzchg5d6hnOo1vFDhsjx9IQA4S/
         nvAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612877; x=1733217677;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DWc+F6Re5lYpUThTPl2Jyvuy/tQl0uxdBQ2YGVSL9kM=;
        b=f41GG19pSE+PhDDls75UNYwIgF9LgZl1THcehbkcRA5IxcRxB8z97H/esShgyX+DdI
         NvMAifA1HgRC7nUXUSZRUAMLTBLayaU0Ckxb2Gj5ViQx+qSdnutmiH+fjbnsuWZHI042
         dDAZKl0xYvmjafBvzC3Cf82Ux2UmnWBCVlzBJLp/zR3kICGqtlaMLJ0oKSfGR20Ohi8E
         wnFawn1Np1aD+txeB3IUudJdDoSgx0Bp4ZuzViFlzQDbqEonFxGor0S8MmBknrrsMQAm
         J5jTFtCA99EdMG5DsbLiMr0QvChsu5TQjxbsXV/kRCmQlm7xELwwlpURR1++qaqZv742
         arvQ==
X-Forwarded-Encrypted: i=1; AJvYcCVEJ1FkPVhNPxdVYX5tp3V2GH8ZoKW2VghXU3lA0DBTcTTvR2EN4xyc64acEu9nNhU0wYeQzpQM3U5v@vger.kernel.org
X-Gm-Message-State: AOJu0Yx255fzG4KvIXPnuP5Uvy9UPvnmbZrhcXDLMzQXQ0JyzVrQ4VEe
	iRiEOlyWwCqfvPEN/rpimfKYuipgrFkPVkURP1FNzwM051JksjKgJasc0jMpQVI=
X-Gm-Gg: ASbGncsMX+hkfo7+1TrTsL9XAip6gUg5XrXxoWIFLFemihOobSbHTWTBvIZKCfERQA3
	/lEgUq6Er2sn+6CrGS3nfr18GkWhgK3s89uAC61GuG3nw3pxerRwxQT5drRQaNgZXGqMT4yzycO
	Yz7h8TH0KIuZSbslzFsP86Krj0I6NOckcDR+WLydpJpMfrfzlAQfvuyqIKjSZHCVSiAEf10zEPG
	brXhwYVbRY73TUx9qhxMg5GQf2psoloQnEmNarLeBBnvkRUKciS355q1CVgKqomK684XyXNxg6j
	rNE=
X-Google-Smtp-Source: AGHT+IG3dGq/ZJlhJq/NurIWM/G3VWbjsNdFTR8iP7hMyFJIs0S9/bgfBkT4zkY71Su/dQBJNJTAFQ==
X-Received: by 2002:a5d:6da4:0:b0:382:4115:1ccb with SMTP id ffacd0b85a97d-38260b45f98mr11753556f8f.7.1732612877138;
        Tue, 26 Nov 2024 01:21:17 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:16 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	yoshihiro.shimoda.uh@renesas.com,
	christophe.jaillet@wanadoo.fr
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 07/15] dt-bindings: phy: renesas,usb2-phy: Mark resets as required for RZ/G3S
Date: Tue, 26 Nov 2024 11:20:42 +0200
Message-Id: <20241126092050.1825607-8-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The reset lines are mandatory for the Renesas RZ/G3S platform and must be
explicitly defined in device tree.

Fixes: f3c849855114 ("dt-bindings: phy: renesas,usb2-phy: Document RZ/G3S phy bindings")
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none; this patch is new


 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index af275cea3456..2babd200bd98 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -105,7 +105,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: renesas,rzg2l-usb2-phy
+            enum:
+              - renesas,rzg2l-usb2-phy
+              - renesas,usb2-phy-r9a08g045
     then:
       required:
         - resets
-- 
2.39.2



Return-Path: <devicetree+bounces-111815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A929A0195
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 08:41:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F7E6287FC4
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 06:41:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D59B2193072;
	Wed, 16 Oct 2024 06:41:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wz1aOAe0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8A8F1AE875
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 06:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729060881; cv=none; b=YTPkU/D/6zXD48WXS6VSnveSyONxBmHa/gjx9dvr0gSsRiR/Oe1/G/rGl3IBXkUTLUs9XzlSDRSV3EErR5sAMEmJU4vhQanHIiLfAab0/Rpz1xi0SfwB5EGz93hUe63fdBGJuo/ttJCm8rjvrO1ROZ8Vo1hbzRmNRdZ07Dp9UQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729060881; c=relaxed/simple;
	bh=Mj0Md9I4fSeyKwvAtuvSLDQzprkv3qQPZbes+ROMVbQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=J16CC2L6PT+TyYoj/7itkxXkOBv321fP+XBO6B2lIIOrzqxC7/W5bmIfjRh04PcFKx4w7gvZsZYeeQnvFVggWFCmSIT4Xl8IiSn4rl3AQe8o9L+ASsKP/3p9KDHoTdeJZ2x5OVPkJH9cJ0C7NHDri6Ey00d7lnChJXhDHaaVPRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wz1aOAe0; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-539e8586b53so491092e87.1
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 23:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729060877; x=1729665677; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hFgpgpsGiP4+DQBthLLgLzgemSHp+0cBH1ixssAB0HI=;
        b=wz1aOAe07PnrsF3grKpYh/Aqe9QQgxKss+NthB04FbdJmLcoo03BVcUp7LFnX01ueX
         A96rNPGYdMlXGmDCa1EUU8lrfgD+ngBbupXuES5HgLXljuWQTuXQPzqpfCPuuj0cgFgv
         McghzuUinQd8hJOmVLTk+2AtbUDocEqVNT795STY18mjvV2n0pTxbk3LdQui3aDBR6jJ
         yPhzX/yEbHldXwoHwpFHlzUVx8XZfRlvrLCdi6L972YDHZm3sR6NPl2T+uEZM2zb7bWG
         Hb0dXftRVm+7q9SKr2doeF2ZnKCSJUw4PK7jVn7QlzGdMiRDfLhLoYiSn5d4VvfT10su
         I/9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729060877; x=1729665677;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hFgpgpsGiP4+DQBthLLgLzgemSHp+0cBH1ixssAB0HI=;
        b=N3ZHXT7HEv8IWh8tqfejUqrI+2WKfqPgciU2YzFWIUVzyHWZ4aVIB76idTrmJ518Xk
         URxF2KsA7aHyy6nqVdut6KqHeXRmHzddLc5TsgWT9nKcAgotJSY6s7UcdKLg2tAdnFyh
         9BjWoYk9Qi9Rcd4ED0+NGacE0DdDabW+789UVqA6q4HCtnN4SmjW27cbmfTxg+gtOLxZ
         1wvFobkUip6k9bUM8XmvVxyNsYjro6gLY8Mf51vknKP45ZZ3PnkTi5l4DEO04sLggR08
         FVacD1Y9JVtvEL80/yL8UlApLjQcOsTIpI1FIFRM2oPkIeIuANXEfBhaFLL9bN9OdwXA
         tS7g==
X-Gm-Message-State: AOJu0YwJ+iw/sqF/l0tOg0PdmjlkmyJ00xAQdDOBfS5TBrgXHW0kpDAF
	aIhS9gj5kWa+COleY0jLUW4LpbxQ2gDVrac23In9bmoI6NwA7XFkClAAhGWNNpfPdY98OiE+sLO
	Q
X-Google-Smtp-Source: AGHT+IHPijTbw1Ile15FsNhFh7LGc1VKad2r/labDe/V/6ubAVX+wXP9wTKEnlvFzbpNAdkhTeKO/g==
X-Received: by 2002:ac2:51c7:0:b0:539:e3a2:3a25 with SMTP id 2adb3069b0e04-539e3a23b81mr4818043e87.18.1729060876922;
        Tue, 15 Oct 2024 23:41:16 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539ffff3a50sm357455e87.144.2024.10.15.23.41.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 23:41:15 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2024 08:41:07 +0200
Subject: [PATCH v2 7/9] dt-bindings: vendor-prefixes: Add Genexis
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241016-genexis-xg6846b-base-v2-7-6a7cc2ee57eb@linaro.org>
References: <20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org>
In-Reply-To: <20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Benjamin Larsson <benjamin.larsson@genexis.eu>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

Genexis is Swedish/Dutch company producing broadband access
equipment.

Link: https://genexis.eu/
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index b320a39de7fe..43d936361fdd 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -567,6 +567,8 @@ patternProperties:
     description: Gemtek Technology Co., Ltd.
   "^genesys,.*":
     description: Genesys Logic, Inc.
+  "^genexis,.*":
+    description: Genexis BV/AB
   "^geniatech,.*":
     description: Geniatech, Inc.
   "^giantec,.*":

-- 
2.46.2



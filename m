Return-Path: <devicetree+bounces-222342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D388ABA8338
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 08:57:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5AE033B97AC
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 06:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D4762BEFF0;
	Mon, 29 Sep 2025 06:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OsH0QbCq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 973E924E4A8
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759129058; cv=none; b=fwBT58AEuJkhJb1r0F11YroXMLzG19JkSLvdraUAh/DGaP1htts2iUxuWEOmHRoeFrMlHgUmvjwYJcZIdjiQepf0A2GWyxuTOKomeVSVHooXxwIjB/oRn6081/URNHPAOXXd2pVMjo7s5tGlmzpL/5d4QCZ73JdCVtBEasqvK5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759129058; c=relaxed/simple;
	bh=MkXy8B0HvDpu3XB7QRokGYJw4lWQNt80EBtTGcgIso0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=peEiU+a6m2N31pfgnF5FALnZK8xbQyPthFwx9v4qJ7D5Sg216l9Ufu5P0CJT4dWQCnUofkIq5hB9wbqFmfRrmtbdNPnqJ7CsUABtvd3lEgEAxNCjydRNaA6ugl4NATTwsWGXmOYLvsfJi5K4Gfe+M3/mhtz+WCYRJzvKNZF7iMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OsH0QbCq; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-782a77b5ec7so927644b3a.1
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 23:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759129056; x=1759733856; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hzgyK9PV21LUzCc3kELjlfdCuadwZ4YNSm8kpUWXn6s=;
        b=OsH0QbCqM9VfA3L6Q2MXi8CDbIvAsi8P5xxklr5vSQ9qD+gaPoyLAuY0LwzA2biB8S
         SGquCGCWlrMsE6sONWoADao3QMi93cay+RgUXmb9GcGnyaJbKn9og1PMrs0DI/86F7CJ
         6TQmuItEQKGBp7QitYkgayxxZVGax7tPfqo91sPnrtZRpfkqewNBOb9mU5FD2Bvl+JiO
         FgZDa7g01Nd2PchyOV45TWBPp8ebAD17UNycs4x0qwGXlAdOGiHJhP7BLvSKoX8nTz5e
         o59aMidehSoN3l4C1zUFxvbTsX0ugvc4Kg3H1Kcjt240nGRmjO6rWUj8O4h1abhBukbo
         +rlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759129056; x=1759733856;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hzgyK9PV21LUzCc3kELjlfdCuadwZ4YNSm8kpUWXn6s=;
        b=oNrYrzeqU6GhuBrhloJRq5sL4jyR+vYLvdxUYSR7s2x15+Yj6CGtwsVV8ryRA4ZvTa
         W5GfWq2ffemo4VKGHW8YiV/y4g5BLxKXI4c49HnbEsdmmxpNVUqyMYCDgEUd26HwKcBf
         agMHO6CE4XdVZQiaJH93FUqcu0oCd6AvOxur0briYUNbsiE7OgDgmALNt4MOvrYk20Me
         FXj9oAV6P6eZYcYiLcnJbgooqrJIGbrSnLXPDbXEaZhV6NRHM85qNZnGKseMr7xEN6Tk
         i0SawhZOFEsHWwNoKoHX9iWpjPn7X9G+J462jW8mE5qorOrx48s71GjJb+u4NcS2VOWW
         PCFQ==
X-Gm-Message-State: AOJu0YzZBtDsOg3rKe7todhfDUlDxEoOyvZ6+mPribXH/5DNvLr+nfkX
	v4DADyYez22ywVV5NpLe4kbgkpD21w2TaLNPQvDe8HdIEAHttgC+15ZS
X-Gm-Gg: ASbGncsIyK8kES35SSe2C2mL7FXBXQsc1VwYKxhwyyF8Mc9N7EXWjzVm/lAE41t8hSf
	zud8RpVJvvj6MM0rRNr2J5ltAJhDuECMoeVqK2SyJ34MEe9p7ibXt9uAQK8BIdOlkGDsCdSuwPt
	RAerYXGEprfauKsWv/DT0d02RuqD/UI7PlwfPyhxorWhVz/RK18dRziojCb9RXD/rLUm2b/SYYJ
	HOHheP8dbveDJwDp3kGGwFDDyz7dXjs34BQ2ODw1+dteQDqRTK6VlMQtg96dJYKNqw5eZw+wnG0
	ZBcyOO+OJwZsHzz1P/Amplpsog8sLTT4Ul4seCX9rk5rMmADT+vMdsbi+DDjxi44O0dwmvXMPpM
	66SeIiHxkdNR9sCjMHQNdSHYLkl32iv/Mhbjsb33wSQndDOURhWnvZ6MD2r032sAm
X-Google-Smtp-Source: AGHT+IH4i8/G2t5oPtUqYoiiGGusyxmzE1tEeQmVVpR1IWJ1EkiDqJkPlsoVlGwgQEV5FUFAV7yu3Q==
X-Received: by 2002:a05:6a21:3397:b0:245:fb85:ef58 with SMTP id adf61e73a8af0-2e7d184ddcdmr19240666637.40.1759129055820;
        Sun, 28 Sep 2025 23:57:35 -0700 (PDT)
Received: from localhost.localdomain ([120.229.16.251])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c53cac77sm10549595a12.17.2025.09.28.23.57.31
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 28 Sep 2025 23:57:35 -0700 (PDT)
From: Liangbin Lian <jjm2473@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	kever.yang@rock-chips.com,
	naoki@radxa.com,
	honyuenkwun@gmail.com,
	inindev@gmail.com,
	ivan8215145640@gmail.com,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	dsimic@manjaro.org,
	pbrobinson@gmail.com,
	alchark@gmail.com,
	didi.debian@cknow.org,
	jjm2473@gmail.com,
	jbx6244@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Document LinkEase
Date: Mon, 29 Sep 2025 14:57:12 +0800
Message-ID: <20250929065714.27741-2-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250929065714.27741-1-jjm2473@gmail.com>
References: <20250929065714.27741-1-jjm2473@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LinkEase is a company focusing on the research and development of
network equipment and related software and hardware from Shenzhen.

Add vendor prefix for it.

Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 9ec8947dfcad..db496416b250 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -873,6 +873,8 @@ patternProperties:
     description: Lincoln Technology Solutions
   "^lineartechnology,.*":
     description: Linear Technology
+  "^linkease,.*":
+    description: Shenzhen LinkEase Network Technology Co., Ltd.
   "^linksprite,.*":
     description: LinkSprite Technologies, Inc.
   "^linksys,.*":
-- 
2.51.0



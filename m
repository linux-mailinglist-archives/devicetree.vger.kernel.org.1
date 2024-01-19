Return-Path: <devicetree+bounces-33351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B57FF83307B
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 22:53:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6E1B128480B
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 21:53:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 572CA58200;
	Fri, 19 Jan 2024 21:52:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Zu/UZCN3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F343554FAD
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 21:52:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705701179; cv=none; b=ADjlAZtVgp2575PzUmv/ANO1X2k0RlnrzeZTgwL946k7Z7BAXes9eXbSC1n7F9HPLIeqmBurZnDDEHW97IGOTjXtFWHr43Gujw6R0WygdSDBqGw6ZyM36MMXQ83XFy/S3ythKq7XV4IcSpeI/nwRCyUWAhBopUF0aPwld9fHomo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705701179; c=relaxed/simple;
	bh=/xM3CxxStXNfVbtIti3hPNUhtIkdy+N0iB3TKZ0N+T4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WviIMbCIUv+4s1Iz2teutxRB0E2y9+n2JyUPeQLUGREAaoewQ4UGP7Jnl3JudMmJ4nr/RzWPsg/mDMar8rcYRrWFtNU48luGijmdUCCX18zCn4WpOcek3oJ4bDNyyuHk7KTzNqQ5PntG6mKDMCXqPDp7sS0RLVfDKAzGeDkgrwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Zu/UZCN3; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1d437a2a4c7so2371585ad.0
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 13:52:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1705701177; x=1706305977; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N217XVlRe7wezGa7cLIHEh9nINk6p1K3qXyyPi/NC88=;
        b=Zu/UZCN3svB5T+PFRtWIsFp+lG8YrJXo1n6CHM3f8gXN3YscWQBJfM/7mvZpIATzr1
         6odpxLPAG9jirJRJI3bUpDxobUW8Os+xMKGvIJAs+jyCjAfPO21nkHfVM1764+h24Xoc
         uLNw676y9LV+ye2gTt2+PoZZ2Z6o7nBu0XuPo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705701177; x=1706305977;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N217XVlRe7wezGa7cLIHEh9nINk6p1K3qXyyPi/NC88=;
        b=k7hBleRzbxvVBUwGEC7IuCq9EfXVdUGb7zmbeJTB3wBUMUleISFs/artNLLGvQ/Hiu
         vDdIL/jN2kiH7WI/y7mOu7hI0e9Tx+6+xfd9w7aVCNgYnKGpp6m30ORJd3A0XNqVVBnj
         XY524IQP30IKwWXQUGE5fYAMjXcz/IcpI4wo39Aoiil3YWcBxTidoBig8ryx3s2fqyOt
         SkaiSMkam3xUwwoOBRcOXh0hV9nh09y2zUYXW6tPPGjgo45iZKtl6R/bDC70W/lOcN1i
         gADgrVzDob2eREb40vYYUD5nlVe4whKa7JZ+IEdX1K7ok+K+/n7/YRImDqMJ7/YMoq8h
         nwOQ==
X-Gm-Message-State: AOJu0Yxc9XQPCmMKw08mEY3dvPewOR+a7SlqDS1CUlMAAuN6NV0tN5xC
	QdsXz/29KJhOAhiCFtx9Pc1va4FZY42yJXymrMDDUzfAHUzK5VDvM3+waxFPLQ==
X-Google-Smtp-Source: AGHT+IFhDy2klXhGvwip9TXGOtburx3s5umqsFvs9szrk1bgN/YB9slmMQFsl0NveV3GANwSB8Jlkg==
X-Received: by 2002:a17:902:ed44:b0:1d7:4e2:293 with SMTP id y4-20020a170902ed4400b001d704e20293mr1099816plb.0.1705701177248;
        Fri, 19 Jan 2024 13:52:57 -0800 (PST)
Received: from lbrmn-mmayer.ric.broadcom.net ([192.19.161.248])
        by smtp.gmail.com with ESMTPSA id b6-20020a170902650600b001d5ed020153sm3563541plk.224.2024.01.19.13.52.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 13:52:57 -0800 (PST)
Received: by lbrmn-mmayer.ric.broadcom.net (Postfix, from userid 1000)
	id 08170894; Fri, 19 Jan 2024 13:52:56 -0800 (PST)
From: Markus Mayer <mmayer@broadcom.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Markus Mayer <mmayer@broadcom.com>,
	Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
	Device Tree Mailing List <devicetree@vger.kernel.org>
Subject: [PATCH v2 2/5] dt-bindings: memory: add two chip-specific compatible string
Date: Fri, 19 Jan 2024 13:52:25 -0800
Message-ID: <20240119215231.758844-3-mmayer@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240119215231.758844-1-mmayer@broadcom.com>
References: <20240119215231.758844-1-mmayer@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add brcm,bcm7278-dpfe-cpu and brcm,bcm7211-dpfe-cpu to the list of
acceptable compatible strings.

Signed-off-by: Markus Mayer <mmayer@broadcom.com>
---
 .../devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml   | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
index e2b990e4a792..3f00bc2fd3ec 100644
--- a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
@@ -16,6 +16,8 @@ properties:
       - enum:
           - brcm,bcm7271-dpfe-cpu
           - brcm,bcm7268-dpfe-cpu
+          - brcm,bcm7278-dpfe-cpu
+          - brcm,bcm7211-dpfe-cpu
 
   reg:
     items:
-- 
2.43.0



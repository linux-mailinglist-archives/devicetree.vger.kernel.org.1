Return-Path: <devicetree+bounces-187801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C904DAE15F9
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 10:29:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7754A1884980
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 08:29:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF64123FC5F;
	Fri, 20 Jun 2025 08:27:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="ibSon8+m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D576523E358
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 08:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750408078; cv=none; b=ENIQr5Zo89f5nX6ARttOTLapxA5/ejxDBtexxWO1FCjClnpvBLcxNq8HKhvlVSC5uqF5e3Yza2IB8fhVSXAePGC8JVZt52PmaZ35qrHmg99DPhDTHGcMD4DVl6eNJCha4reJQoBth4L09WHntxga9NDadv5IaMmG+4pZaqiZxdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750408078; c=relaxed/simple;
	bh=qquhulnSka10pNm4KMhunBjcmITpIZB5yNczgEe4vBQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tbVcfrN1W6ONfu4G6etCCS2Ake/gRWkrF6HmkkVg2KK0Vht9j5uWWsbjc588wPNhurVSfjuG0/0ag8bDidxFB31js90OcuhyfuRUqZIyTeGYbHRW2+Dr5mdd4YOIYX7IjaUzVVJssfsKExUCC13n957mh8Jvkm5TJRBp7KCSKo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=ibSon8+m; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-442e9c00bf4so12677955e9.3
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 01:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1750408075; x=1751012875; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dkXssJqSMw9SFqIqHIUe8n+o26XtmSF6lvIk+oX9miM=;
        b=ibSon8+m4s/S92Gorsm7XP4PZhSqChJfLk3GY+t9pxAk5IE97k6vk8DvweuVA6GLOb
         F97mKOQR61Zl46JjfGx1Jv5mPlRx80OLxHbNO1rzBtjcvjqUMMLrEx9sxcPkhYYUV3Mz
         WLFdK1uocoyooqPuvoJ43f1KSCBxMdIe1CjsM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750408075; x=1751012875;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dkXssJqSMw9SFqIqHIUe8n+o26XtmSF6lvIk+oX9miM=;
        b=bFmRAeU9KCXZ5jzjbx4yA2j9nOyWw09AL8PmlwMEHx4ZA4WsFLN2bRxSvAptvBkH7g
         /Q8zeioKwXCv3DPrA7ZOfHMi+sx3MkdTbA/mSwz2Y29aUsd16m4O1lYAb0Tnc/0eIAMa
         THGeE01xJFYvdnJnmQQ6/4SR8/JOVaCsFYnuAQ0nXef0En/vw3XrEAYXmHfvklwNL6Ke
         5m8I/Kiz6L9PYxfb10+C2gVgb7OIigYcIJv1M8PeJdNMndsbyEk4DUqD0ElVv7yYJtWs
         SIYhzV9+26pVE4+zrFLmaozfCKYYgGGf5w4dPu5ugn/zAy++HlN5ziCTMwcGgP9FsYVm
         Jaug==
X-Forwarded-Encrypted: i=1; AJvYcCXaNvKauJGgbAVDEljCdqnnEyv/g/tBRAaHLsL7PX/g5PxFM6vpcnGkZEHWYpd9vbMHbAnMDiWs6I6B@vger.kernel.org
X-Gm-Message-State: AOJu0YzwQkvHyxEzfpeu6Pakh7Yf4w1QYcciWw3Q7Ss3T+iIzDZ9Sg7b
	QBYhsQyOFhDUwmWCpPWWb63CIPuLWnSMmRAbED8h2czX1gcCfZSQ6ovT2JN4QjWI2qY=
X-Gm-Gg: ASbGncsXVIq9hQqnUuUn+COCnjnf2TgjpX9DPhTvYdp4/UU3BbBuwAXKy7kqfRT+Kq0
	LdV/0gjA65X6X4o/0PZoWqmonkxKG9cYZekd4ynWW5hN2Y6HP/zOCUlolM1ndjOvKPKJ1V3AmdQ
	zNEq6c2xXTvO8qq6jZKBoGXWqLWio75MQC5/2RC5Aqm8owFI5Jxolg1TVqbuuiT029iNwfWyHNQ
	Dbhb2yGuKWxS4uGV8yqHqfamezZIKC0tBqremjolIW0sVCBnOhcoSuT2w0I+AfhZkJ6BIj9SK0i
	ogryeOxaX0jdO1sd253qG/Ojxm36Izr2rFB5NivVKtBzvzpQcG+cqft2C3v+aqlE5KSYWD3BIfB
	i+DKfc7ChnHFgeMOJevagPkdos+u42ZUi1L0Twkdwk2V0tbA1eT4W
X-Google-Smtp-Source: AGHT+IGFQMl1hH2r89Qpci7PZ1CRqOy0ferh+83VseM4EtuvEjdNqgh/2GHc76iC4jrluumTPDNsrw==
X-Received: by 2002:a05:600c:3acf:b0:440:6a37:be0d with SMTP id 5b1f17b1804b1-453655c3d4fmr17572335e9.15.1750408075178;
        Fri, 20 Jun 2025 01:27:55 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.43.224])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4535e9844a9sm52274285e9.12.2025.06.20.01.27.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 01:27:54 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Matteo Lisi <matteo.lisi@engicam.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Frank Li <Frank.Li@nxp.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Marek Vasut <marex@denx.de>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Max Merchel <Max.Merchel@ew.tq-group.com>,
	Michael Walle <mwalle@kernel.org>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Rob Herring <robh@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	devicetree@vger.kernel.org
Subject: [RESEND PATCH v4 08/10] dt-bindings: arm: fsl: support Engicam MicroGEA GTW board
Date: Fri, 20 Jun 2025 10:27:12 +0200
Message-ID: <20250620082736.3582691-9-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250620082736.3582691-1-dario.binacchi@amarulasolutions.com>
References: <20250620082736.3582691-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree bindings for Engicam MicroGEA GTW board based on the
Engicam MicroGEA SoM (System-on-Module).

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>

---

(no changes since v3)

Changes in v3:
- Add Acked-by tag of Conor Dooley.

 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 58492b1cd468..99ff7c78544b 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -773,6 +773,7 @@ properties:
         items:
           - enum:
               - engicam,microgea-imx6ull-bmm       # i.MX6ULL Engicam MicroGEA BMM Board
+              - engicam,microgea-imx6ull-gtw       # i.MX6ULL Engicam MicroGEA GTW Board
               - engicam,microgea-imx6ull-rmm       # i.MX6ULL Engicam MicroGEA RMM Board
           - const: engicam,microgea-imx6ull        # i.MX6ULL Engicam MicroGEA SoM
           - const: fsl,imx6ull
-- 
2.43.0



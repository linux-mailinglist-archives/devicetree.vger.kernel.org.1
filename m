Return-Path: <devicetree+bounces-183466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D16E0AD0C2C
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 11:35:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1672A3B1099
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 09:35:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F1B9221574;
	Sat,  7 Jun 2025 09:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Y+l3m40m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C74220F54
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 09:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749288842; cv=none; b=cagND8zCeyksZ7F732yyHlK0D4KXYWhxpUN64BeIpPoUeUQSp+/JAASHqoAVrvyK1wH2mYJK6qhTo1KeZ5hcKYnaDnUXm7jJijzRqFoXBvF96k5QKojLxs1a6r9L0vhQxOHw2evOShUkRvb8ZGSeywvl8wrem87/T7CNhk/X9VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749288842; c=relaxed/simple;
	bh=Yqcf5TW8YfhX69k3zXNVG5GmujWRH6hO2eu9bkjbyko=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YSQcFn+feSWinrWywg/KP21O3Of/BnJ0IUx8Jq6bSfNWjbi5ZLcND7nd0ZrapQkUysmHRRiqYwzmTsk7rrRi8CTc/HzJ0PWcnV5Q62Zr0n06Jbx3MhtmIbPd5YAJxSsNzBNfnfWgHmwAR8+KvQsh4sCDaZIZHpr7ejZUc4s2vaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Y+l3m40m; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-60700a745e5so2567843a12.3
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 02:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1749288839; x=1749893639; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RxEd2AdkeiCCeDSCFcPyL7zgCyiOfRVYJlDF1i2IoUo=;
        b=Y+l3m40m1koX5tcv82yw3gJu9lVFoOxqmPU2bNqBfiD8ukaTJolDDv6AXhuWSPesP0
         87tc1WSDwqYAZvhAzpPj5aeDPNf4yeyc9zgyJ9ejpBZNPKlrzk9eEwsuoI1iUEB7tKRg
         uEoQ5N5eTzmToy2Tv20jV0w6pKUlDkifamhXs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749288839; x=1749893639;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RxEd2AdkeiCCeDSCFcPyL7zgCyiOfRVYJlDF1i2IoUo=;
        b=eSrcaKD7/ndhz3d8RtRn6mwRQPUMS+4OQihagRvwuFeCGyXLnys8vQ1ZQTXaFLn5KD
         EZBQPKPP/S/c/7RnqvBTnRunuKB3NQhWExONaHK59OTXw7h6pBvWhsl3d15sx1mgF57U
         EFf3TGYp1mywzbn7WZb5QjXRurai2vxSGNJMsa28cBF3x91fSDsXea+Kz1dOPjoOetMw
         tEYHim7zo9U868BiT4x9ux5dv1oJ7ODkpFBdTQ3TfJr5s+K/k6XyIlwwRKaOKvcFQ5Hv
         y6c3vSoskQ40lMIr7qr0XxLTjfdhxFOZB7fwXhePtbdAwFgmuuoG4CwNBQxy4f621kfV
         EXHQ==
X-Forwarded-Encrypted: i=1; AJvYcCVL/jBjksnhc1vQUvMTLbB07bvo8Un6bXMi5Cl9x9ms0HiLXquHrxj4h9heWCkpv1PHEhd53NArYnzl@vger.kernel.org
X-Gm-Message-State: AOJu0YyxXFBa9DIZQbdTc0ymEBwyY/ZwTfFbKNL/KD72ZFvN0qqqQGHT
	3WkcYKfRct7O/BL6edlDfTaUVMlfN0R8IpKxdhS2jQd+tixHYj0ehPSGB6bpoONuL50=
X-Gm-Gg: ASbGnctklTf4R1C9C38nC7AZH8AgJbjI5XwuFY1rMk/jibg5lvoR/H2c+VkjkazkyNx
	IvYEhH2fA9ucwiLOZfKtyZegif1PacK8WLMhnic00kS5WjXEyCQQk06l1L5EZfKgMQosPVayEi2
	zv4D9Z2AnrouaZB0CeoZPVJRLoFd8CG0JS9zef6+F4n2Od0unXEPZRMLtnhLsOSk8S6EFt5TATS
	TjCFdP9A2lpwcLTY55uguvxrtlknMYd7ZRbXTU+V8QJYtUfRGRALMvOg6qGdfps9TdbwiX8yD23
	cIQ2EK2FzFJjuNKlWL+tOlOznwO9k9emEyWJ+fMagHC7G/RwW85ClEsPyEdWb4E6C0qBny2e+pu
	yaYtkzFElluI3L7yeAvIfgcZlodo3BoaLDLtJjeo8EKcABt/TU+hTUUFn51QTy0QqvkeiuQaKtk
	0rfH2EEwc95uM/
X-Google-Smtp-Source: AGHT+IGYbydEgnGk8F6YGGogCA17omQe2S98dizXcs3JVp65SK75LQ489PZTWGPSh2pDxfdX41g3zQ==
X-Received: by 2002:a17:907:97d6:b0:ad5:c463:8d42 with SMTP id a640c23a62f3a-ade1a9164acmr631030366b.12.1749288839580;
        Sat, 07 Jun 2025 02:33:59 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-87-5-95-99.retail.telecomitalia.it. [87.5.95.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc1c316sm251541066b.98.2025.06.07.02.33.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jun 2025 02:33:59 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Matteo Lisi <matteo.lisi@engicam.com>,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@denx.de>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Marek Vasut <marex@denx.de>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Max Merchel <Max.Merchel@ew.tq-group.com>,
	Michael Walle <mwalle@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Rob Herring <robh@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 08/10] dt-bindings: arm: fsl: support Engicam MicroGEA GTW board
Date: Sat,  7 Jun 2025 11:33:20 +0200
Message-ID: <20250607093342.2248695-9-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250607093342.2248695-1-dario.binacchi@amarulasolutions.com>
References: <20250607093342.2248695-1-dario.binacchi@amarulasolutions.com>
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
---

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



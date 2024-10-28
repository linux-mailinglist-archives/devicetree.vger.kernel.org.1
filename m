Return-Path: <devicetree+bounces-116418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 038859B2CD8
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 11:27:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BBE28282B6B
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 10:27:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D7141D86ED;
	Mon, 28 Oct 2024 10:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Jcze/9VI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A4F1D6DB6
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 10:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730111181; cv=none; b=f4XrNsx99kzuTNYmL0YSSsMa6aAJyRfYaT8B8rMV1+qkq0Gcb4boGqsTiyxYXc8PqL9OwmbImF5EsBkXkpsjwxB5wsVRwB5j5pJAuzWtMN8539uk6l+rRwJSx8SbqWsOE9YtcfBrF0x4RgHWF6iWcNv4ILIWB3qUkcaNOogi27g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730111181; c=relaxed/simple;
	bh=3psXIgjRnV7ZKnrPL1AM2s1fm8oNKskaRog0kOCOv3g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RWLtHAnKlLPZt4EM5w0HhfyILX9e6Up8tWGluJ/WL4znUjr4iZa8iwkfnoAUuJcrJnTVtfMnmNs5uFPeYzCJNfPLvN/ooEpNrWtlm1q3n/k5A16OJaFY1zwwZ9FyIxdbZhVJX+lkz2RMhwkPJTNEPOLdJDpnxfhpMCT83EMU8mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Jcze/9VI; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5c99be0a4bbso5686600a12.2
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 03:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1730111177; x=1730715977; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pgo/k+HOa5AvPj9A+1CCmgMfc+PmvaON+Q6yQ1cAi7o=;
        b=Jcze/9VIjsysLKdcTvUcudd8yly1ZVSzLHJhka4apu/+gMJCh2UE0MTOb9ktA26Ak8
         07su8D6Vasdax0TORKywYvsBSw7eSGccvgagmjVkdKNSFjZNDTc5QkxV5FZFs8R+gIsf
         hxImFQJ5Dm6oL9ccg7x4Dz0X0NbAn0b1Rugkk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730111177; x=1730715977;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pgo/k+HOa5AvPj9A+1CCmgMfc+PmvaON+Q6yQ1cAi7o=;
        b=cCcaWc9AGYLpqULXVVq6o6sWWwe5uC11Vt9zd7dkWzW1/qoqIMOB2iCHDZj2pal2dG
         +VivB/GNHWyPm6uErQpokm1YkvM2FvjTVg5Rqq5ZjBlm8y+dHgN+S6m9s2zZ8wlrQiyq
         fXpXTWkQj/YWtevyPVlH3Ux63NdGSWtcalEqaUmL0l0zBsD8AGbJk43cnAYRX4EE5gYY
         dTGD/GMqSm3QE4CD98BN8b0NY24CuWos6SjLeTvN0vkfHrzoe2SPmI67RW8ooTCfVNAp
         jvlTYuiqoQzsaekoaHTmPLe/Bo4hGjXaiaD1L4ASe87YmIJplyT299eQsb7MNzwfc/CL
         kAgQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+/7rgOvLl2S0B4cUoMmCtZo1HgyXgKIJhz9L8E1bUW8ZoDVqwak6t1gOAJ79ru3/hK3J0Hqxlh3TB@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3P9M1sFjPTg/f+Y/mckEo8LkWCnKIX8WVtA9PbkJB7WSUH3HA
	T/rc1iXyPM/ZxRxgPMJd7lHFs1OxdDFe8TTFGah96cz4/qypybO0NUwJCc45p4c=
X-Google-Smtp-Source: AGHT+IE1qExZyTeDCcsOPLbzeTHr0FDTO0+eG+29GGN1U5BkMPni1pRPTaIjSGyhvowARpdu2dlhRg==
X-Received: by 2002:a17:907:7292:b0:a9a:d23:f8ca with SMTP id a640c23a62f3a-a9de5c92bfcmr611522566b.13.1730111177428;
        Mon, 28 Oct 2024 03:26:17 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.41.121])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1f297b04sm363613966b.134.2024.10.28.03.26.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 03:26:17 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Michael Trimarchi <michael@amarulasolutions.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [RFC PATCH 05/10] dt-bindings: display: panel: add 'syna,boot-on' property
Date: Mon, 28 Oct 2024 11:25:28 +0100
Message-ID: <20241028102559.1451383-6-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241028102559.1451383-1-dario.binacchi@amarulasolutions.com>
References: <20241028102559.1451383-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The property states that the panel display has been initialized and left
on by the bootloader. This information becomes relevant in the case of
supporting the simple framebuffer.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 .../devicetree/bindings/display/panel/synaptics,r63353.yaml  | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/synaptics,r63353.yaml b/Documentation/devicetree/bindings/display/panel/synaptics,r63353.yaml
index 2fd6e0ec3682..987fd6f8b866 100644
--- a/Documentation/devicetree/bindings/display/panel/synaptics,r63353.yaml
+++ b/Documentation/devicetree/bindings/display/panel/synaptics,r63353.yaml
@@ -25,6 +25,11 @@ properties:
   avdd-supply: true
   dvdd-supply: true
 
+  syna,boot-on:
+    description: |
+      The display has been initialized and left on by the bootloader/firmware.
+    type: boolean
+
 required:
   - compatible
   - reg
-- 
2.43.0



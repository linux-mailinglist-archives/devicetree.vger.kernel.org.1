Return-Path: <devicetree+bounces-220449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E2014B96570
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 16:41:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E0B331899692
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 14:38:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA7A625949A;
	Tue, 23 Sep 2025 14:37:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="LvNmLokf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E7A921ABDD
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 14:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758638273; cv=none; b=YuV4u+dwv4yb7SzL8dbTx/l/foFj3LLUcQbpaj17szVRwfXO68PCmoDjTGVSWJIqUxHjd+nyJawu+zP+OLKCyPklPUDhpeq/EZEwKBO7G+oP7n9aoWOopia+EvEFj/y9S1qpf6G5b6EnQfYibxDmLagq34fLDbDSqxXyQghZxUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758638273; c=relaxed/simple;
	bh=6I8cNrAL5aASSx+Mq693VRQEuVTbmLc4kgQcskbdlXw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=XXoMsjXQHSNw0VcWz9C1KgF+lUmdGe41BZInciwacaaMpHn1M6DCNlAls7d1eZgHw8qTys1+En0Fz/uQs1plf52WCRt1oGa5kXBLRlA6UbOBp6zmsEMUrV+w/Z/CR0feXh00jLIhFtQtgBAZU33eMyla67G9sxRTjdhMHQtrjfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=LvNmLokf; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b07c28f390eso1035729866b.2
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 07:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758638270; x=1759243070; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dGN9wOEKVu6Y0MkI62rSbl1+YeaRDVK+dO7uXaWW+zY=;
        b=LvNmLokfI31g8NI5TgZwt/hZeM2rgaJrnHzKofxablCCFDLK36NsDMTSxhT7TgdNoM
         sP+EIRPf6h9U+w230bVh8ze+KnNdZJALMGyur5PgIJaxxXZ4y5Pjdro3wf2vFaZ4yE72
         DFEjQqDBXEkPEaXD2c4vJEXlU0tGeqxU/7k5Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758638270; x=1759243070;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dGN9wOEKVu6Y0MkI62rSbl1+YeaRDVK+dO7uXaWW+zY=;
        b=qokZGiHBQ5mNpkKpF5WHBq5/au/9bVKimV6w5PzIvrNjromzjIT00CuGHyYJ5bD+Zw
         8DXF2WB0j8N6j1QTXCmr1C7sNYl8jGDOfFKCsjHL8ADMnYcXwCMoKzM99meSJhZBf0Z1
         N6ZfPZF67NahAiJYhdkdv604hQeImPheyHvgpHIvRy2d3k6/JPEirq7ZKCD5APq9CZV3
         7tMEsiS70TbTWvaNsmrMoRi336YXuixZUjUW2TAen8Za30PXYGCnmL3eztI028nHs7sO
         XbnZw6XLqbcJXDbIPILwzBf1m9QJFglvI5WUWZovJXWa9ZP/BpZlH2IV9g1AftEyUlp3
         +fUw==
X-Forwarded-Encrypted: i=1; AJvYcCU7YTvdCfujYrMiSX1ZVUI1Tj9z3mzSToxPBewzaALIcNXpMm/ozFPAVMQ6pQ//m1VbJua8A2xkDgy0@vger.kernel.org
X-Gm-Message-State: AOJu0YwWxZ0mrF+ZaQEkhzrDMnOWtWITkcotKC+KFIkqy8Qdt+rHrDQ/
	B3s1Mqngra1R7dLtnSFRr88LM2UsYbzKgetFQrbRZHRDVEge23uh0codVwnlNAuRCA0=
X-Gm-Gg: ASbGncsCPlkSdNY3cEX6bkKzylcYeszRREYLS94MNAS16d/1+jAjmOJB9+sQrx11a5r
	rLOrRAu9LyfMfh7mx8jRv1V/zAdWikQYLwrh9I7Nx3vaHSYBN3MUYZxszfw2BdvoBdeVX3q33KQ
	w5iQ68ZnWK2mdO8f8LQimra8tBsgtHbKLCoPeLK8zsWXIqliTWKl3bBcHC8/HqK3cIw7ZHdsXJH
	S5yTRQX6enxO12KV1GeUPNzeHLHxLW6b3tg3btq/pQ+qNyL1c7auYAuMp6vEzqQfgcNOPeB4MjQ
	l6HoeHT4/BpVm82L1Gv/gS/X7FeACYWv0LO9bYs/Mw128PsNHroueTzCJEZDUbFeYT9lNCjtuKU
	Og7W/HJK1+xks4INcHagZcKAJ/nHKcQuwa4Fu+h0yGI5m4jw6aqZ3XnJv30qndEJmI9NK4ZYNhH
	pSgRDRCK/peWnd0CrtR1UELHfBhaxIvn0Xzr8vXDFCX9aFB3NuSp/rTyyDZHOgPd8TqrejnFHa4
	IgQKrOLqZ2pQb/f3pW+VA==
X-Google-Smtp-Source: AGHT+IFwttb50sZUcwgmSz2G3CQLQR5bfVABRjQhUNlQEOt6l2vdv9KmhVHV1IgxO1W1paqY4PecbQ==
X-Received: by 2002:a17:907:2d11:b0:b04:a1a4:4bec with SMTP id a640c23a62f3a-b302bd129eamr273054866b.58.1758638269935;
        Tue, 23 Sep 2025 07:37:49 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b2a2a5f6c7asm665204666b.28.2025.09.23.07.37.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 07:37:49 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Frank Li <Frank.Li@nxp.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Haibo Chen <haibo.chen@nxp.com>,
	Javier Carrasco <javier.carrasco@wolfvision.net>,
	Jeff LaBundy <jeff@labundy.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Trimarchi <michael@amarulasolutions.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-input@vger.kernel.org
Subject: [PATCH v6 0/6] Input: imx6ul_tsc - set glitch threshold by dts property
Date: Tue, 23 Sep 2025 16:37:31 +0200
Message-ID: <20250923143746.2857292-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The series allows setting the glitch threshold for the detected signal
from a DTS property instead of a hardcoded value.
In addition, I applied a patch that replaces opencoded masking and
shifting, with BIT(), GENMASK(), FIELD_GET() and FIELD_PREP() macros.

I didn’t remove patches:
 - 2/6 Input: imx6ul_tsc - use BIT, FIELD_{GET,PREP} and GENMASK macros
 - 1/6 Input: imx6ul_tsc - fix typo in register name
even though they were accepted, to avoid generating conflicts detected
by the kernel test robot.

Changes in v6:
- Rename the deglitch property from touchscreen-glitch-threshold-ns to
  debounce-delay-us.

Changes in v5:
- I didn’t remove patches:
   - 2/6 Input: imx6ul_tsc - use BIT, FIELD_{GET,PREP} and GENMASK macros
   - 1/6 Input: imx6ul_tsc - fix typo in register name
  even though they were accepted, to avoid generating conflicts detected
  by the kernel test robot.

Changes in v4:
- Adjust property description fsl,imx6ul-tsc.yaml following the
  suggestions of Conor Dooley and Frank Li.

Changes in v3:
- Remove the final part of the description that refers to
  implementation details in fsl,imx6ul-tsc.yaml.

Changes in v2:
- Replace patch ("dt-bindings: input: touchscreen: fsl,imx6ul-tsc: add
  fsl,glitch-threshold") with ("dt-bindings: touchscreen: add
  touchscreen-glitch-threshold-ns property"), making the previous property
  general by moving it to touchscreen.yaml.
- Rework "Input: imx6ul_tsc - set glitch threshold by DTS property" patch
  to match changes made to the DTS property.
- Move "Input: imx6ul_tsc - use BIT, FIELD_{GET,PREP} and GENMASK macros"
  patch right after the patch fixing the typo.

Dario Binacchi (5):
  Input: imx6ul_tsc - use BIT, FIELD_{GET,PREP} and GENMASK macros
  dt-bindings: touchscreen: add debounce-delay-us property
  dt-bindings: touchscreen: fsl,imx6ul-tsc: support glitch thresold
  ARM: dts: imx6ull-engicam-microgea-bmm: set touchscreen glitch
    threshold
  Input: imx6ul_tsc - set glitch threshold by DTS property

Michael Trimarchi (1):
  Input: imx6ul_tsc - fix typo in register name

 .../input/touchscreen/fsl,imx6ul-tsc.yaml     |  14 ++
 .../input/touchscreen/touchscreen.yaml        |   4 +
 .../nxp/imx/imx6ull-engicam-microgea-bmm.dts  |   1 +
 drivers/input/touchscreen/imx6ul_tsc.c        | 121 +++++++++++-------
 4 files changed, 96 insertions(+), 44 deletions(-)

-- 
2.43.0

base-commit: f975f08c2e899ae2484407d7bba6bb7f8b6d9d40
branch: tsc_de_glitch


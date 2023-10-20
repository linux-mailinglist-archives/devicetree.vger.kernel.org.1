Return-Path: <devicetree+bounces-10437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF5F7D12C4
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 17:31:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 07FA9282535
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 15:31:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 390C31DDD2;
	Fri, 20 Oct 2023 15:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eMjTu/tx"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B98741DDC0
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 15:30:59 +0000 (UTC)
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8747110C6;
	Fri, 20 Oct 2023 08:30:50 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-533d31a8523so1389176a12.1;
        Fri, 20 Oct 2023 08:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697815848; x=1698420648; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IL8HZiwmVhdWE5hm7NrbI6LgVke1uLnyHzVBiA5sVas=;
        b=eMjTu/tx9xX5FNXjJER5W/ZQqkxAFeUdWDKYGYVGL5o7qoBfyRhWaL8d0sQ5h6NKvm
         2YY5HuV+1tmxc9yFD/q1Eb5x/H6ugC/ckBP71siyVNztc9Nh+fX+aJ9+hrnriKmF29he
         JAfMbpoWHc2iZOFb1KjBPDG4DOxnuwAtVZi3mDZpOMNtSsQTHGeWQ4R9zVCIFkPHcjqk
         5gfZzNxPWGJTUksBazsD2L2tbj8HCTr2AOXZTMGIExRUevVl4kpCsaERZMb5Rp9lTpQr
         rsiHK+1mGAuFy5xY1bwInNaGr71AIAAck+Xt30xcI9dUFtBYNxWqdaYa/gzRdElB93gk
         J5sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697815848; x=1698420648;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IL8HZiwmVhdWE5hm7NrbI6LgVke1uLnyHzVBiA5sVas=;
        b=JFKueHzLeEF9+W4vE3iqFvU/AqYpgYefWPkj81oLhtVdfYUm3Yo2RZ0U84eclGwHc9
         fGww+Jz4qVL0oHJ0Y8gJXFi3mj/h6do7f+YxKWFqkS4yFAGCYjsc2dNW7TwV+W1UH5n2
         uB0vve8ZpXcyCv+wo9TB+G1qzjWu7CzQvtbTj0XzZXTaCFhxnoPXzj2DAznkLyx+iCFH
         0LDMCLC+BGa7x5VjcOcBKKIvJlx7AwauAffm43jB4S0Elyd86L/Fevg0Qs6t0U+KFz2q
         VjLAmjkJcDRctJ9r2+god1UVChoNJGfs1yWSajRNCt+0LQwlqunfmYpDWV8/lV6Qvp+J
         QzxA==
X-Gm-Message-State: AOJu0Yyss568ENoWDUcONJ9EWhPyYQ28B5YCygSrDe1VAPHd+Ps5K/aW
	tADsdvFaRu9vpLkfW8u2DE0=
X-Google-Smtp-Source: AGHT+IHroZSrA4jSsRdNgcBqSa9LqABxJyJYA5ann7sZ1MjzCPmQKJfJfvrT5a/kRCkWCib6RhJPhg==
X-Received: by 2002:a50:ab1d:0:b0:53d:eaf2:63fe with SMTP id s29-20020a50ab1d000000b0053deaf263femr1552580edc.15.1697815847963;
        Fri, 20 Oct 2023 08:30:47 -0700 (PDT)
Received: from andrejs-nb.int.toradex.com (77-59-154-235.dclient.hispeed.ch. [77.59.154.235])
        by smtp.gmail.com with ESMTPSA id if5-20020a0564025d8500b0053f10da1105sm1631199edb.87.2023.10.20.08.30.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 08:30:47 -0700 (PDT)
From: Andrejs Cainikovs <andrejs.cainikovs@gmail.com>
To: Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Andrejs Cainikovs <andrejs.cainikovs@toradex.com>
Subject: [PATCH v1 0/2] imx6/imx8-apalis: add can power-up delay on ixora board
Date: Fri, 20 Oct 2023 17:30:20 +0200
Message-Id: <20231020153022.57858-1-andrejs.cainikovs@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrejs Cainikovs <andrejs.cainikovs@toradex.com>

Newer variants of Ixora boards require a power-up delay when powering up
the CAN transceiver of up to 1ms. This series adds mentioned delay for
iMX6 and iMX8 Apalis SoM variants.

Andrejs Cainikovs (2):
  arm64: dts: imx8-apalis: add can power-up delay on ixora board
  ARM: dts: imx6q-apalis: add can power-up delay on ixora board

 arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora-v1.2.dts     | 2 ++
 arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.2.dtsi | 2 ++
 2 files changed, 4 insertions(+)

-- 
2.34.1



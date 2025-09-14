Return-Path: <devicetree+bounces-217065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C377EB56C39
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 22:39:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 27935189BEDE
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 20:39:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1374A2E8B6A;
	Sun, 14 Sep 2025 20:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="AUEv+5RM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1D72E8887
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 20:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757882316; cv=none; b=QtjQzrHMJ6JpxTkbhEYg6JUJ8HPkQL7yKtJdMZ3b1rsPA9qB3oOoF8GrukJv04Lkh2Mrnwj4LeRlOPIShX57hbtB1RDZLAGXvLo9blDPoPp6suklh9KF5D9D3likPFpKU1M2xKHHtKYNAeS/oZswtztp+Y2yiit/WvoS4U6qfXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757882316; c=relaxed/simple;
	bh=/oqsdERk1dOnIz7pgCq78P2/eMnzdLETqpsc7c8e0Qc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dbslFGAPiU4BUuhdkJRMu/ue/uCwPcSywaRFmMccQcjdpAQxWRzH6BT0XdIBY06ZarTwVzPhir9egDDhAuXzitO0wVNAUKiOC4FmpVUGVJNafLP3XIBnsZUNfAo0vxHpjzQ7AxyS352Q8lSSgm3TNw7pk+CssCG17mTe3PQTWyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=AUEv+5RM; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-61cc281171cso6153676a12.0
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 13:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1757882313; x=1758487113; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WRNP/ea+IMU+WtlCpH1FQlK5+aG3ehZbfYI0GGMGE9E=;
        b=AUEv+5RMQRhL0H3Xl4vvaCxpsYA97T0AUZxLK2E3rtq/Vmz+qWJ5G3w6mBAalpePcx
         3mOozxtcmp71efraIK1sebaI1Xb6GeMQV8Ra6b0h+ZYJycIE+bNGiHyCNMtf1wWCek5c
         utnz3Znd8hOSnx8/jnmC1g04rC/ow/YgPKHHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757882313; x=1758487113;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WRNP/ea+IMU+WtlCpH1FQlK5+aG3ehZbfYI0GGMGE9E=;
        b=kKq7ddWrpj28y5lunaUy/cIO9Iz1z/xnQUdqEMbM7E9tGxVq/NiTXEB6yla7vCSC/u
         CRqihH4CrFlQ6fUI+tb2B9Ej5gtFtKcXrx/PZYW3RHN2uEriOUFAnsiGFy8Kba3pb/gH
         gZOZCfJ68f7uBQZ7Efso59JfCxj7DXGDi56hRliDlCcwCM5I9Wk1mU6ewkEnW9gCZGTy
         BZ8ULxM1yvWgM5eYwDrLh/LmSLacAm6ilNzffX57st1yFuUJVuXJGDSTo5NKocnpzD/W
         7Osq/t16AKpEx8ULavHNIHHfF+r01SFcNkk2DAUMYfEmd1QYxSAVyHDN2A0quaELuZlF
         44jw==
X-Forwarded-Encrypted: i=1; AJvYcCWZip02O2gwMO0GdC/oIlAxrv1t6ZwcSXdak2wi7Ul0fJkM84/8YcMSwwfTuENirOzPIoA8n5jgiUPw@vger.kernel.org
X-Gm-Message-State: AOJu0YzS0gCEe0a6r+tbPtAyhxJH41tjphsiSWnHvSHFjSuRD+8tGode
	8NyaPbw0DPwblK6BUzt7qW2LoPYxyDKMos/o0CJdkb4bqBAusZsCj0zhqsmFTPJ9J0M=
X-Gm-Gg: ASbGncumHxNNK1olIUC7upsAdZioE8Yanr4heOrr3Iql3kfjtRU2q8BKdY5XVykwxXa
	7mEnM7Sxfx8H+Y11LT2moxidORVYk5Zg3KRCSGl7E25DDEQEgKXLIDN31L0uyBqaTwVfV5dW+Vf
	AcaUpiu8HDoYWtyg/lJ8BzlKZU2tLUmw17lI0977AfGO1rs3irRe7AcjdPvJl7a22g0U8ZGMNno
	/79jszmn+R2enm4iYcof9rlnGcGAJm8EAl1QRw/QXBsRr8NHBZfZb1m9iI1BsCw89NPMKLnC24k
	6+bbeRp9FB1U6tskC77BzjGJNHxMXx8sPWk+wvuf0zg67kFgG6Hd+DMxHQ6/sV/bBJOi2pD/jVu
	HWIP7zU62yRZueLZsKCMn1RxqidFWQTMhZ1hGhQqk9RpZFaVSuPKQV49KI63pj/SqKqz+A8ELLA
	uSjEa+y19mZO68YE0hOTBaCJRee2R6SIKlSg4Vzxrv/6pmuFNdT8XVC7CjvPOC2r4dRKc8CCmcF
	94=
X-Google-Smtp-Source: AGHT+IFmx1iKDCMnVdGgKnBLwcjUK2UHcFgx/Uomcucd/BtDSvIuEp4t1zmwRoy2VyM0EaarmQA9Uw==
X-Received: by 2002:a05:6402:2348:b0:620:d826:b4c9 with SMTP id 4fb4d7f45d1cf-62ed69ab473mr9494870a12.0.1757882312803;
        Sun, 14 Sep 2025 13:38:32 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62ec33ad242sm7803739a12.17.2025.09.14.13.38.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 13:38:31 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v3 5/5] dt-bindings: touchscreen: remove touchscreen.txt
Date: Sun, 14 Sep 2025 22:37:56 +0200
Message-ID: <20250914203812.1055696-5-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250914203812.1055696-1-dario.binacchi@amarulasolutions.com>
References: <20250914203812.1055696-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

With commit 1d6204e2f51f ("dt-bindings: touchscreen: Add touchscreen
schema") touchscreen.txt is no longer needed, and since no other file
refers to it, it can be safely removed.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>

---

(no changes since v2)

Changes in v2:
- Update the commit message
- Add Acked-by tag of Rob Herring
- Add patches:
  - 1/5 dt-bindings: touchscreen: convert bu21013 bindings to json schema
  - 2/5 dt-bindings: touchscreen: convert eeti bindings to json schema
  - 3/5 dt-bindings: touchscreen: convert raspberrypi,firmware-ts bindings
    to json schema
  - 4/5 dt-bindings: touchscreen: convert zet6223 bindings to json schema

 .../devicetree/bindings/input/touchscreen/touchscreen.txt        | 1 -
 1 file changed, 1 deletion(-)
 delete mode 100644 Documentation/devicetree/bindings/input/touchscreen/touchscreen.txt

diff --git a/Documentation/devicetree/bindings/input/touchscreen/touchscreen.txt b/Documentation/devicetree/bindings/input/touchscreen/touchscreen.txt
deleted file mode 100644
index e1adb902d503..000000000000
--- a/Documentation/devicetree/bindings/input/touchscreen/touchscreen.txt
+++ /dev/null
@@ -1 +0,0 @@
-See touchscreen.yaml
-- 
2.43.0

base-commit: df86f912b45c20e236060321c85fe35437e9325d
branch: drop-touchscreen.txt


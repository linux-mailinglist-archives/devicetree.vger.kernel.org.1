Return-Path: <devicetree+bounces-219181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 97497B884DB
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 09:58:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6182516A64A
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 07:58:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F3962FFDE9;
	Fri, 19 Sep 2025 07:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="ZXyVQWmP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B17572FF165
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 07:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758268712; cv=none; b=fP5e41ZOIWi77GXgTIPhzPiHeARDEquP6r7UGbhKZDYb/JlnvVx7NVMdtQDgfBvUkkcL1V3RYhOwstl1SW+yhISGPUwPVWIADq8tH80w15lllCIyTqpuwChHt/2/e40qu1aolr7eiP5NEGOCp4AsHblG6RCYL6lZgL5Sokxqdi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758268712; c=relaxed/simple;
	bh=l92OkncAkN7CQH5Yv/FMs4byey/iHXNBxiKHSxhWJmg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=R/0XdaLLSzZeDSF8EnpKXMGaPvtMWainqLc8Bb24nUr28If+jPkTDN/mDCkPuMPnuNH0FaJlY6wC5VvYL70dyDSlFRdVi1oaYNO6MZZXX8ihGI6luIx7EfZ1DafFiJcwiiMf4GR3ghiHxUYraswJ8KCdYtje0rw8vZjWjzCuDpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=ZXyVQWmP; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b07e3a77b72so415353766b.0
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 00:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758268709; x=1758873509; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c/F5R/2NOqkoymo9zvAsteuAQQNJ4xYdq+NdFZB1zNk=;
        b=ZXyVQWmPavnwHO3frbL8P+xuZUywheVdlZZrQQBwhMfqJTXyPYPKVmP/+uObnHk/Zm
         XWoQp7Y+tT0l6vXK7jsKjP/pO9le8YpmiDZGaYgczIyc+6mVDCkrTp+NwBf77IsfEGTM
         nh7BVORtmrZNC+GKLfapW7Z4o5D/h0mekxv5g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758268709; x=1758873509;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c/F5R/2NOqkoymo9zvAsteuAQQNJ4xYdq+NdFZB1zNk=;
        b=wvH9xoRnL32tlapBrSZnWyEMnbjFZS5BphofyGdcWeAYg4dZIs4mX2WXsNUX1M1smg
         KSEYbn5FZQRzw5q29HXFh/KJO8iORcxn3VOBXNfiSq1o8a1UCsFShurbDCUZxkCtJVTL
         v1B/ksfT+YQAjOtPjzzwMF0lfZMPercwRP7QrpJ9buXBZsdVjks/eGZHB5gZTo3qaG7h
         h/skRUReY7H7ZKNVNrqZLFSS0o7qg5U88B2LmfTsvvvzsZs0xv5eTLgU7oFTdVpkwab+
         2g8eDkUBWR8a1ZO04KWRjbd6KzL9xXCb5S2bthiHdHNS+wDKqQH/8YON3nhhbXqQL2X4
         JkCg==
X-Forwarded-Encrypted: i=1; AJvYcCVTXoL2rsEZ0BF+LlrALVWmfR/aJMt6H+2iaFroNwV2CJuewlDKZcj9PW3DXknFGFvwae7ihvhKo0je@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7lBQAisQtoMbKZrIrWTBRW/e0JVM7EeJ7olFAmwREpVqKcXZa
	yJV8txrfu3WWcqty/4hMfD3whHXjVd98kdQT7QQtNE6lEh1kJ23/hA1loGvPWAJvlHg=
X-Gm-Gg: ASbGncv9NrDqvz3Us2teJar9pxIbVVqQwDH64+rMwBpQmJQv4lIq6Ns71uLSlK/Ap16
	c+/V2jzYFKaxgAoie+WRwe/tcT7GEa2FFn3LAFWP9VWcPDKaHvO3j+rub1Y4ivF5VDaktb76e1c
	IyAXODE6NLMAn5TjYayoS6Yfk1j15bNLVkoIfKUrPFAYtfJMOPGt6JjTtDwH42BOgL9aAefG779
	uAyvpc1FNEgWPRI8KhVdjUVqBh3RrR476mZEdKEeIDIdEmP66SdAFuqolPL+9uvkPgpacPpv9Vl
	srj69qNmU6iKSRvRlwBWJTobHGCNIJ2qsmY17XypSR6CVy78oHKDvrdzmNwgQ/kiWSnlbblu/Zn
	m1DsdbeYrF0ds+Hv3JyEI51jBsMsYT1jgVVZ9VDWeKfNr/e74xfnh5EndASUrJtTY0yG0WRo6HI
	DgbjE/t+oAlft0N3x2HRNxuAb4kyqLvTsu2rPqWzYWJPYx9vsS7ST9r4Czfgq7aXwW
X-Google-Smtp-Source: AGHT+IFWBJ0JF07xrrg1AEfrd/lNei6bNWfdewxHUBTlYbJy0+2ZBEssQAE3DyJkSIWh4hsDeA90Kw==
X-Received: by 2002:a17:906:2e8e:b0:b26:40bd:66fd with SMTP id a640c23a62f3a-b2640ccbdb9mr72789666b.10.1758268709023;
        Fri, 19 Sep 2025 00:58:29 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fc890cc98sm384693466b.49.2025.09.19.00.58.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 00:58:28 -0700 (PDT)
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
Subject: [PATCH v5 3/3] dt-bindings: touchscreen: remove touchscreen.txt
Date: Fri, 19 Sep 2025 09:58:11 +0200
Message-ID: <20250919075823.2557865-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250919075823.2557865-1-dario.binacchi@amarulasolutions.com>
References: <20250919075823.2557865-1-dario.binacchi@amarulasolutions.com>
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

Changes in v5:
- Drop patches:
  - v4 1/5 dt-bindings: touchscreen: convert bu21013 bindings to json schema
  - v4 4/5 dt-bindings: touchscreen: convert zet6223 bindings to json schema
  because accepted

Changes in v4:
- For rohm,bu21013 bindings:
  - Drop description from reset-gpios
  - Simplify description of avdd-supply
  - Rename bu21013.yaml to rohm,bu21013.yaml
  - Add Reviewed-by tag of Krzysztof Kozlowski
- For zeitec,zet6223
  - Drop "Phandle to the" from vio-supply and vcc-supply dscription
  - Rename zet6223.yaml to zeitec,zet6223.yaml

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

base-commit: 8b789f2b7602a818e7c7488c74414fae21392b63
branch: drop-touchscreen.txt


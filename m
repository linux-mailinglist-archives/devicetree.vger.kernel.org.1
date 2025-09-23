Return-Path: <devicetree+bounces-220424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C77DB95E86
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 14:58:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5FD612E6AEF
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 12:58:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DE7C324B1B;
	Tue, 23 Sep 2025 12:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="js1XnGgq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AEA323F63
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 12:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758632271; cv=none; b=VrDBW0zllT0cXVDYcKj/1XoHf5PPLisCLQgYXn8zRQYaeaitQmTGKRiSIYdqvOV6iS4mNBe2d7M2VJUVTbOL0dqvQc0lLyLwNNQPZEitBckYKgQAQneS3VEhScsoDeV/v9XZFDSeGnVHd3hWACvHJ6+M/2UcVrlWoo78nueqfuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758632271; c=relaxed/simple;
	bh=2OimLc4Q0N4DdlXJSrIcFQzy1fFQeu0NoYdwgFDUiXE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gTivhX7PYnnHQysAA+aVHrQ2A289I3sS8zKQUDlI27dnYu+avZhJhm9++DQlGQjxmchspyyXXfbSbf3yPXw0MkXqot4hZsmyTB9DrZ5TRfWsP6hg9cTZKJJj19kRYylrkVX31ynr1vr82XkULh9M9gthHU3GADS2vGq02rCnZf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=js1XnGgq; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b2e66a300cbso324997266b.3
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 05:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758632268; x=1759237068; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IBAyBOapRa+Zm3M5mNo1qzi+GFdGcs+c3cJBwbllCjo=;
        b=js1XnGgqPKYj3Gpp1/XPAMXcZ2L3pjn8vQ2NCGcY3M+j8oyx0dcbKdWCDMELoyn2JR
         jAXfYdjEMEHkIc5Fk78I7TuRoZ5vxVcZTShSjKCFMR71TbE1VDXWOtkDtTUkTMEEo0bH
         yZNlFQjpz/PRLXaZo8Uo/cMHJOpygXX8eO5Qk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758632268; x=1759237068;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IBAyBOapRa+Zm3M5mNo1qzi+GFdGcs+c3cJBwbllCjo=;
        b=dh4oYrz8iMpXTJKzJZPEdNSZBvYWCiZEwzAoeRRWLgsmPRNEoEtwAFyMbBZ54Carp2
         Vtusz5ZsgQTmUkePugvTJ2qR8pkRbd+6WKGDe3xDkkoGa/Rk55s4m8xWOqr9XAjnU21T
         KJ9uJFB8M/T+cq3JO68l8msnwPNnj8k7Z2Tm18HN7KhJssDd4WXOqpqmbx0YCw+4LPH7
         GHTWhP2Vo8UCwRC7vhtX0F+3Z7aaE8mfUaXFC3Wy5MxNx2YcEO2vsifjGlvEVHxEiPRi
         4GjCvScKbMd1cKk8mj55R3I9cDNiPzj+0TrSB3IHp2XBE5RSk0DaVq5ViwXsldZyk7/O
         /xog==
X-Forwarded-Encrypted: i=1; AJvYcCU/0RgUZ6AQPtNzTUogfty7DegFandXtXSFMgZFr8gmTj17fRS+Pz+K4eKCfBg3/mbIIocJzNCa/mKG@vger.kernel.org
X-Gm-Message-State: AOJu0YzyU6GioNsPBIET851ZxdkmFW+aQPjSVTCSXAYOdBOryTl7ah9a
	pCTJhdL2V+tlJBQ48WQUok9w8Q3GpEygC+Qz1w8tUlBiPu6Njlm4psE01MXh4q4o78A=
X-Gm-Gg: ASbGncth+ZRUakGnjskJwqk9d90H6HKPwmmGq+wcs4Ogj92lwy4ohMW6IKIcKWGtlNz
	/kn+cm5ulNhTFSA78AanzVZH131wPAbDL56RDC0VimF2C51Q6rp16Tgxn41KMAnKn+ySeBTdXTr
	rV9/ytngpqhX2BeETt0ZomH5+zKotJ+b06WmqOK7OIA1NLKeMUy6sLZMvIRMLFZnzXWoS1Xbzw7
	U4tEcbiW2NnjOjAm1BZPuwqn4Ag71b3VCYrmcJgftdkK35KtgmDZwlVbtzzy3FiTv+RFvb39VNT
	E8iunBdmjiK/BqdF7isy7KFOWbosfFhFvfBuDBKmDLCxLBoqltdD6Kwo1YqRo3CByz0YN34F2rD
	Z04661XHsme4yh0hwx2vnQRZ49M2sm3iz3w2EpP0/ZVxfUDybKQ6Pn0bGCLQQslZX0SmPs50kM5
	jhZCoT6KQKDOQ/wEKa4z38SE4OFO9QRE5Th7agyew91F4sGT3Bsgqyong4P+0H+f9L
X-Google-Smtp-Source: AGHT+IGkBo7ePlcrBjyjhfPlFj8UyoEuC0eBBzad91WGQ9VxfKcKUAhYdekOMr1X/VM1lHEw1ZgcJw==
X-Received: by 2002:a17:907:7f1a:b0:b04:9acf:46cd with SMTP id a640c23a62f3a-b302b50c259mr217771366b.42.1758632268538;
        Tue, 23 Sep 2025 05:57:48 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b2761cb532esm872331166b.67.2025.09.23.05.57.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 05:57:48 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	sebastian.reichel@collabora.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v7 3/3] dt-bindings: touchscreen: remove touchscreen.txt
Date: Tue, 23 Sep 2025 14:57:12 +0200
Message-ID: <20250923125741.2705551-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250923125741.2705551-1-dario.binacchi@amarulasolutions.com>
References: <20250923125741.2705551-1-dario.binacchi@amarulasolutions.com>
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

Changes in v7:
- Add Reviewed-by tag of Rob Herring for eeti,exc3000.yaml
- Add $ref: /schemas/input/touchscreen/touchscreen.yaml# to
  raspberrypi,bcm2835-firmware.yaml.

Changes in v6:
- Put deprecated the properties added for the eeti,exc3000-i2c.
- Drop the example for the eeti,exc3000-i2c.

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

base-commit: cec1e6e5d1ab33403b809f79cd20d6aff124ccfe
branch: drop-touchscreen.txt


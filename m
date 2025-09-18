Return-Path: <devicetree+bounces-218937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCA0B85B4F
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 17:43:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8329F188754D
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 15:38:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BEEA314B60;
	Thu, 18 Sep 2025 15:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="nQCh3sjg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DDED313E1B
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 15:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758209803; cv=none; b=SoICJ/b8AwemgxgFEXwq3+aFbw6vOSS6fEEg+kMch4258z9IMs4tQdmOhR2/ZriMHSANdPI0PS+Nqko/GB/zUoUjPZxbk7TqWfiLtQlqL2IQXAU+Qxjlr5w4hksPkIEOtqOI22n+tS71VLQj5EF0JOYQzc9w73YweZakp+aP7zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758209803; c=relaxed/simple;
	bh=+49SRGaRIxmipz3ICarmrQvVbL7KzASPcS7C4Boj4ck=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JZ6LqjAlut+qMd4oo78xc1d/YVUGfS1+MdRNzmx0J3Z63IoAt/vzJGsbwyIpnhcZ07G6LRLlO3IJkBfLcB4XIO0D85as7LzrglEQPhXgyH8St4d2jjIQc0J7Ov5KTjg922iQUDJp27Y8G0glyQDcgAiekNs3aUDJzwOTeETZaBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=nQCh3sjg; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b07e3a77b72so317332766b.0
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 08:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758209800; x=1758814600; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uNO/I2yItTXLiDSbQlltWztaUTi6rNx8Ylu9Dt/JXIk=;
        b=nQCh3sjgMTF+hR9c9mSPdRxBkTXSzRYyUenWhRdAPG2b/9AkB7/+2hQQHPPBsSk7vY
         CiQTYtwmpqRasZc7uFyeUaXH7a72F93SZn1/0oTHcI/YrHI8vgSkBd5in2rWH39VIUqT
         gIf3vEdRVgjlcVJ7mUmrjp0hcj6M3AeAmtXH4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758209800; x=1758814600;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uNO/I2yItTXLiDSbQlltWztaUTi6rNx8Ylu9Dt/JXIk=;
        b=APs6yavydnWot0rzrDglXqdGVBkTCEqsiJOXi1lOKthl6KtgJ/ib0eV6qipy34xqnd
         dxFCMPJpxJqm9tAjH+YmwVIxwdm77dVc/hkoq08ZblNTVnoe5uzOsrmLW9amouFjxb/C
         /nob+w9BZ/IUEuwzU4JQ1lOk9c6bLFZScqiSZnKGEciiRa56q2D0z7m/rzSIZ9mOLQPE
         FF5gr5sIe5JNgRJAko0q415rgaL9zmTkJHBftNW/7K6juqtYERGM2eiXoBlJzL3kaywC
         v9joviet+4yrNe6VhTe2EoVPQH8AWa8amr/PathXxAkWjQYE2JQyiA9BRfJ8tTU/x1gP
         ByHw==
X-Forwarded-Encrypted: i=1; AJvYcCWIskvmdaUzLE0NajpOTc3bLpBiHM2wjaZUjzV1VDG1U62Fhk1GoVC7YFPLe8Hvn6hFHuAvKkezRnMh@vger.kernel.org
X-Gm-Message-State: AOJu0YwgFLQMLjSCt6h+eoWWpxmiOz+D9PXuQ/YEDC+oi1gqnCE57FT8
	g0rHjfY+mfjFCOuRP4wZ8/q+vXBErwHcJ8EWfbLp7WnnjDGYvop3hgn96iN1pPRXQ2c=
X-Gm-Gg: ASbGnctgJV0IqUyc3cYneUsh2tw7IqLlrWA9wtPfGVcJ/G6+2UD5xsih4H+XtUibJIn
	mvC6h/GTP1yDI/d183ZZ3SrNeGxtM4LIm471x5LrXIpl0KIinhl95UPHKsaa4M2njaNOfFuQdlL
	bOBhmrYpvoSRo8jkG8f3E5i6g7/F7uGv8tWQvi5DhwMULyTwwgKdOhVxY3tLZLU5KcczxIxOBmd
	1yE0zcT7MHlbgkGF93MdIov2m1pbv/D28Bc9HpzmQQTcGkk5hCKxUrYzz37kX+Jqx9xSvJ0/Q6p
	HOXyxiD2NX88FaallJtp2APs2wlXtYdkNMIz6Boah0BpD0YcXMm6wWfXSp1fvZ1ILUQQQwO0AUL
	5/0mhEZ0se+WX/wvYG3hAFeMx1MJMTIHO2cxsRvG2Aqr54uDgXYeRQm6RILNC5grcM5GI1QHFrI
	/O0y6JLvqrfNBLigT3N3H/KdnOF9IQ1vDUs/mJkasg/6LemBMk28149W0jUgVz8MubDelKROKhR
	79+JhcHXeMufZZ3m/MoIA==
X-Google-Smtp-Source: AGHT+IHHoXU0i3krxfj/ayKHEAuFsB7LewUpC+X2Hw0TTk9jlaDxf33gzR19IirWjjXDnMMeOUQg5g==
X-Received: by 2002:a17:907:60ca:b0:b0d:95cf:2eae with SMTP id a640c23a62f3a-b1fa8359440mr456702266b.5.1758209799966;
        Thu, 18 Sep 2025 08:36:39 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fd272026csm212430766b.102.2025.09.18.08.36.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 08:36:39 -0700 (PDT)
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
Subject: [PATCH v4 5/5] dt-bindings: touchscreen: remove touchscreen.txt
Date: Thu, 18 Sep 2025 17:36:10 +0200
Message-ID: <20250918153630.2535208-5-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250918153630.2535208-1-dario.binacchi@amarulasolutions.com>
References: <20250918153630.2535208-1-dario.binacchi@amarulasolutions.com>
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


Return-Path: <devicetree+bounces-254708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E98D1B1F7
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 20:59:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8344D301F5CE
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 19:59:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 576A536E48A;
	Tue, 13 Jan 2026 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fRoTtbzF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D56A36E467
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 19:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768334393; cv=none; b=TOXIY2AqAWfE6W5d27khOENhnbeVAsOLVSYBE5RIRv8mq8PcO3F8GE+2bxxiPSJoyiY93bD/pnCAEPYMarLvtl73avCKlMCjN+Hrw0TTmxCMOEiyHTxTrnXvSZQ+DFj1MH0jp8YFs/BXjeDrwnHUkI7fO45LpHzIEu796NXijiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768334393; c=relaxed/simple;
	bh=7IUISPZ0nIAmThdIbp8/zeCRC5tONe3yojO1ASQTWpE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jiOVlD+fZBGKRRVWlBwDYmr0mn7OXDOIqesVm+/tU/Pp6vtHXQnquZXEhB0xyLv/JFyzrZcaC9g2pQO6Vd8m2BevO4KzT0WhyJ0d7QyO0jzF8ndqNZpo4alldYz/bLRHb5/Z0qOqETJYf6eVCSrB0qTPQnlqqJhzcgxYDmJpOq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fRoTtbzF; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-7c78d30649aso5552267a34.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:59:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768334391; x=1768939191; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c7BnGb+oB3kbI4HRBgeZdx4kG5LrqKQKlKTO5o5vGDY=;
        b=fRoTtbzFDC3/lA9TuWADbu9kRbMJonZhFnliswBunVG2Wox88XK2esQjm+KKCvBfrB
         jR7qM+CYcHkuBZBA7N2HqRQIVh4LqAYYpvdyi08wsvNDW0iUEH91K3ywG+M8uC66B3R7
         C819IuR59UxPe5NkVTuCWKNXLW7e8adCKKOrSk/Fk7kp/lBEZT6L9ooBjf4lVtpxUJCb
         +lplvAU4G83swe1ISqoJfQQl1gMio9jI8WBtNdNCbkti+4mlrcbnpQbzyJ/kniJyU/Q/
         DeSVt/Rf3bPCjwwyaXgKSka6mX8CsKeV33t9TSc9sK4ue+jaLrp0W9gH5Durga6u3OBe
         9hDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768334391; x=1768939191;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=c7BnGb+oB3kbI4HRBgeZdx4kG5LrqKQKlKTO5o5vGDY=;
        b=qLwZURRw8v8r7gq11tEpZLfZA7heO8KeOgyy9WZ5wZU+gYuYV192SAdDCMvIKNNivj
         1NY+Rjp+AgyUJtwaBbV3XFi59Q93aWE1melrOUX6ytJ7o9zYNBHGGEDjqD8g1SQbAEtk
         Vg2G7WkClZMzmUGZe33sLKPwhdDg4WfbmALZQF0qknKjsO5WYvX24zpqvo1MPd6pmYuX
         p3LqFUtxlgi1qh3KfU1zyF0FvFYtIVlgGwshosTaaY/XcrpwbF9YAJFL8XePnOrF+rtq
         idyG/iWHPZHJit1h918I51fhoR1curZiu/ptmoHCDZv7p1kXzMsWi7zEEer4IxrwuXxL
         t4Ag==
X-Forwarded-Encrypted: i=1; AJvYcCVck1cG51OnID6YeiFxphcSaAZiCIkvBwEcneEgjpuu/VbNzI57jaWcxkHf6L9KcSOcfrIpDHmrWneC@vger.kernel.org
X-Gm-Message-State: AOJu0YzXpprsFNrADclBKiSn9OllS0fWv0/NohsKIHf0Nw1PQ99Ci0is
	Un0OmWMLA1iPiQS6Wj3Iy1T6691jhMikmLLV9IQVp3+d03qZhHo9tzpO
X-Gm-Gg: AY/fxX4JGTaZdUmoY4cLGJEDY/51vPQHiMqkGnJZlWo8kj9WYMb8D8toxEQyju4pS+d
	hyDc7+vzghccz1byKrHCWIgYY/+KwJo0KGa349DUUmbRsNl/f/IDovoI4vm/d2+XRakPweRRSJg
	I74qnDRpXS2mEYnlF2GA91VeC9QAdbiBxS87oRCST172t565d4Za2YLF27Iv/IYljx+hN3frlLn
	52CN2Y6OSEn6U2zgcuciUdqWvYV2rEzqKE8HJZBmgPjxw8npcS3Iw0eycn24hFjsnCWTK3Peoms
	JsRHcfbe3pFKb5fVqx8UKjjC6V9P3OMn7qsxtmS3akU3QfmmR3dy2q0IcI/Ny7XrBq/9aUAmzZf
	syOlU2xJAF036d6V/0MpcC9Eg+uJx7StOTMZ9q6irnniG79Hw3Kd2qn+8fzG/nYvJQbDtUy/u97
	ZM0bFOoKD+
X-Received: by 2002:a05:6830:4119:b0:7c6:a2da:ce4b with SMTP id 46e09a7af769-7cfc8a31752mr227469a34.5.1768334391060;
        Tue, 13 Jan 2026 11:59:51 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ce47801d4dsm16221119a34.5.2026.01.13.11.59.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 11:59:50 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	dmitry.torokhov@gmail.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	jagan@edgeble.ai,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	aweinzerl13@yahoo.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/6] dt-bindings: arm: rockchip: Add Anbernic RG-DS
Date: Tue, 13 Jan 2026 13:57:19 -0600
Message-ID: <20260113195721.151205-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260113195721.151205-1-macroalpha82@gmail.com>
References: <20260113195721.151205-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add compatible string for the Anbernic RG-DS.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d496421dbd87..4398f576e47f 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -60,6 +60,12 @@ properties:
               - anbernic,rg-arc-s
           - const: rockchip,rk3566
 
+      - description: Anbernic RK3568 Handheld Gaming Console
+        items:
+          - enum:
+              - anbernic,rg-ds
+          - const: rockchip,rk3568
+
       - description: Ariaboard Photonicat
         items:
           - const: ariaboard,photonicat
-- 
2.43.0



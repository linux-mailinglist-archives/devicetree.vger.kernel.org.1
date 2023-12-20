Return-Path: <devicetree+bounces-27530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FEB81AB4D
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 00:55:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B6111B228C7
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 23:55:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AAE04BAB3;
	Wed, 20 Dec 2023 23:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UoatwZ4i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F97B4B5C5
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 23:55:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f49.google.com with SMTP id ca18e2360f4ac-7b719f05b11so8679039f.1
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 15:55:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703116510; x=1703721310; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pRvpMTwdfOti1O2FiABGEbKxnsSHcyKdzfu7EEJhob4=;
        b=UoatwZ4iml1hN1QxLiYWvS5o5aZ8KsYbpWuj2St8UO820yw4ti1xYKe+M3+hWqXAWG
         E9Lq3PNJgEWxozl3VGkcaxtNTVTEtbJpL4KYN3BoTCobgrm2vj2HIblbGIJ//Se/MGvQ
         hh/WzI4eznFLsxooAHAgtzZNl0Fykkxb3GLcQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703116510; x=1703721310;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pRvpMTwdfOti1O2FiABGEbKxnsSHcyKdzfu7EEJhob4=;
        b=WviPg0+NywhrXzvOnujY1UYAVcc+QBt+Cz2EOXgGbYxLvJMgU+mL8jxi0Ek02BNAix
         PNhlNLVDTW03INcvIA62NPBL0juqqLh6v8NzKKKkjrF+w2rXuIKj7cnMauAk4nHAOp51
         xQt7afG1zo+PYUrX4TZcB3fNmDUmwjtIqD5hDwGZQl0lyeqY3SijHd3TouCXhJkJb3/J
         DMysbkYVS7fkcQ8BwzEk0yrLCfKZ22UNoc+fwsUUsqtZPgrXK11ZzsCXOWF2ndgRxxbb
         riFiG0gcffZ5YlYp9uMrN7WffYvzFuRZV5vmVYKNwhSVM5bdx9bzh4TI73JVRLSuOziL
         mQoA==
X-Gm-Message-State: AOJu0Ywfpl2OhoW2xcp04pdvxczOAx3DsenFjwUfjad0v0h3+2+Yyo4Q
	7tAxYzWX0B7zhoji/C6UcgIkaA==
X-Google-Smtp-Source: AGHT+IG+XWPItl49/At9uM5COVFdcWHUAZiiVDu/MVuO968/qb/IMfBKb9s1EXBx+2bgz7sUHvkYUw==
X-Received: by 2002:a05:6602:2bed:b0:7ba:86c3:d975 with SMTP id d13-20020a0566022bed00b007ba86c3d975mr151496ioy.26.1703116510370;
        Wed, 20 Dec 2023 15:55:10 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id bp22-20020a056638441600b0046b39a6f404sm177805jab.17.2023.12.20.15.55.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Dec 2023 15:55:09 -0800 (PST)
From: Mark Hasemeyer <markhas@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Raul Rangel <rrangel@chromium.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	Rob Herring <robh@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Mark Hasemeyer <markhas@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 03/22] Documentation: devicetree: Clarify wording for wakeup-source property
Date: Wed, 20 Dec 2023 16:54:17 -0700
Message-ID: <20231220165423.v2.3.I1016a45ac9e8daf8a9ebc9854ab90ec3542e7c30@changeid>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231220235459.2965548-1-markhas@chromium.org>
References: <20231220235459.2965548-1-markhas@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The wording in the current documentation is a little strong. The
intention was not to fix any particular interrupt as wakeup capable but
leave those details to the device. It wasn't intended to enforce any
rules as what can be or can't be a wakeup interrupt.

Soften the wording to not mandate that the 'wakeup-source' property be
used, and clarify what it means when an interrupt is marked (or not
marked) for wakeup.

Link: https://lore.kernel.org/all/ZYAjxxHcCOgDVMTQ@bogus/
Link: https://lore.kernel.org/all/CAL_Jsq+MYwOG40X26cYmO9EkZ9xqWrXDi03MaRfxnV-+VGkXWQ@mail.gmail.com/
Signed-off-by: Mark Hasemeyer <markhas@chromium.org>
---

Changes in v2:
-New patch

 .../bindings/power/wakeup-source.txt           | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/wakeup-source.txt b/Documentation/devicetree/bindings/power/wakeup-source.txt
index 697333a56d5e2..75bc20b95688f 100644
--- a/Documentation/devicetree/bindings/power/wakeup-source.txt
+++ b/Documentation/devicetree/bindings/power/wakeup-source.txt
@@ -3,16 +3,20 @@ Specifying wakeup capability for devices
 
 Any device nodes
 ----------------
-Nodes that describe devices which has wakeup capability must contain an
+Nodes that describe devices which have wakeup capability may contain a
 "wakeup-source" boolean property.
 
-Also, if device is marked as a wakeup source, then all the primary
-interrupt(s) can be used as wakeup interrupt(s).
+If the device is marked as a wakeup-source, interrupt wake capability depends
+on the device specific "interrupt-names" property. If no interrupts are labeled
+as wake capable, then it is up to the device to determine which interrupts can
+wake the system.
 
-However if the devices have dedicated interrupt as the wakeup source
-then they need to specify/identify the same using device specific
-interrupt name. In such cases only that interrupt can be used as wakeup
-interrupt.
+However if a device has a dedicated interrupt as the wakeup source, then it
+needs to specify/identify it using a device specific interrupt name. In such
+cases only that interrupt can be used as a wakeup interrupt.
+
+While various legacy interrupt names exist, new devices should use "wakeup" as
+the canonical interrupt name.
 
 List of legacy properties and respective binding document
 ---------------------------------------------------------
-- 
2.43.0.472.g3155946c3a-goog



Return-Path: <devicetree+bounces-67715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B478A8C95DF
	for <lists+devicetree@lfdr.de>; Sun, 19 May 2024 20:42:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E68111C20BED
	for <lists+devicetree@lfdr.de>; Sun, 19 May 2024 18:42:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DCA46EB59;
	Sun, 19 May 2024 18:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yKwztwGk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A876D1BD
	for <devicetree@vger.kernel.org>; Sun, 19 May 2024 18:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716144160; cv=none; b=DhKtkk6NrvHyEu5BEXc0C3PWkIZFnNIKfqEZJ16SPHubGj6EMkd5Nrywo+qJoZoe88TyL1Ps/bYGbQejFT6Sel9kmpPMfI3r+y68nEME8po48J6W+duEs2YMqbDpvBcsC4xZsHDNjsDkWcy3cS28J9sNnt1CHmANWC9tMuudlvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716144160; c=relaxed/simple;
	bh=EqrHKI7VqbulYVlL7ynNasI0rcDDscSlOl3m111YLJk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IpdOkDmnTxbXXku5QEyh2gvwsDxnS+SOREg/wq1PUWpXukFPbYR3YfcAChi/K0YK0HzXS8hYcJf61HmWcoUVXm0JubmQrgeqQ4+OTQ7vYSGGj/jAYs+ZgXjvt8NY5yT20qVVWxxW2xZ/6FbHrA32IfG4/o9lEVrKev7Uycd0hRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yKwztwGk; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5731ffcc905so7595172a12.2
        for <devicetree@vger.kernel.org>; Sun, 19 May 2024 11:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716144157; x=1716748957; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dpZwSG8AUDPUPcQ/cg7yOTW8I5h5fbBcK+XT13gbyOc=;
        b=yKwztwGkQvymsPkrF3CYlmde7DTcvlbtm6FB5fx0xX/eKt48mVXzfBbjJat/xXNh5A
         e+zlOUGrZOyS79K2VdUAe6tGr7WkQDheuMh65R6QCmS+hycNMhbxANEL9JXzETr62SOs
         QxFKkmNRz8ubbgk2pKy+HkGhvcGeT+wGhsPBzxCPYx2KWy0QsnKd45+KeGuzHlMvSuX4
         UYz3J84P3dSQhpfo3rqtnj5mHAr/XbjhumvChzwy+nC4kYQtdgdQKbWYe09uLlh3gLVT
         354YzBIaG/ZviSpnSbu1yJl7y4OUCN9Ra9oMyKUvp2HWbUMnjBSd7brVszkXmo9viI+J
         etUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716144157; x=1716748957;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dpZwSG8AUDPUPcQ/cg7yOTW8I5h5fbBcK+XT13gbyOc=;
        b=IegHRTkycJqwWHNCOQpwVUuUt2cF9A1Q7mJDi6dp8+yyKIxjGClYPbGUj0wM+fRfnj
         30CziQ8uhAtIUq6gdGuCBO78TOTFtgcrRyNocbMg5dxovqxRwWnFcnTUbTjo1iBeeBb7
         fnPc56AoOWi45ebKT/ie7G9/BkyaBdsciHXv8KqidngQLZXyrhHYXSENOxjeIA4ZHH67
         Hb8uApSBQ8qpm/cWV2vIcD5eJJnEQusZ3Sws1XalbdvgUs5lNRBsbRb2m4mbxIHlPxz0
         G2O8K0cN81JhB6bE8fmVm3106gXaCeFvX+YyCq+ICagKCiy5zpdcPJJtVgt9PmXoW6Yf
         xwMw==
X-Forwarded-Encrypted: i=1; AJvYcCUd84XzxC/cAd2BXyCQ/3z9yzGyTrbHPL1FXhm7t8Os71Fapm6vCHj4KI6Rt55BQpjuYM9cTPTsW6akH4is0qyGJCL6RhL62B78rA==
X-Gm-Message-State: AOJu0Yx5Wapqh1hJLsByeHFYtMrcADxbrU8+/n2uf74nT7OOYQBPlCyX
	wlzglnZCrpO1MWfwuyk21S39ROulwAB4AR2A4cauZXKcWDB102fiOXtmuqX0l5k=
X-Google-Smtp-Source: AGHT+IGq5QA1nd3Au7MNo1HsMLjHK/fKiObB5dGcnX8+/eslrDY+fDV6uC0IXG4Am+hQUeL97oiW3A==
X-Received: by 2002:a50:ab47:0:b0:572:9984:1921 with SMTP id 4fb4d7f45d1cf-5734d5bec35mr18573696a12.17.1716144156802;
        Sun, 19 May 2024 11:42:36 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-575313d97desm1789397a12.41.2024.05.19.11.42.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 May 2024 11:42:36 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sun, 19 May 2024 20:42:16 +0200
Subject: [PATCH 1/8] dt-bindings: mfd: syscon: Drop hwlocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240519-dt-bindings-mfd-syscon-split-v1-1-aaf996e2313a@linaro.org>
References: <20240519-dt-bindings-mfd-syscon-split-v1-0-aaf996e2313a@linaro.org>
In-Reply-To: <20240519-dt-bindings-mfd-syscon-split-v1-0-aaf996e2313a@linaro.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lars Povlsen <lars.povlsen@microchip.com>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>, 
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
 Nishanth Menon <nm@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=798;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=EqrHKI7VqbulYVlL7ynNasI0rcDDscSlOl3m111YLJk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmSkgQzbjNRKze4/tMYsq0YCrgQq1HylGQx0Qnm
 fqs4ZngdWKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZkpIEAAKCRDBN2bmhouD
 17QrD/4qpVSOIgs2t0h8pAjNveQargz+qOiw594JnIjDv6W9T5TOx98Bo6TUfs4/dOlgAY5xYli
 0FjQ6Ci8fX580v6LBDTyMzc+nVynHVOmYzmYpvbh4QxfD+Qxra17DEBwcB7F5fg52ZtQGz7lyvh
 rT3LhCwP0H/dp6BAqZRx5X8KCMt2Z7S2w+hbeEMJg6SLOQlIVrS9Uz1kOVGh4hie4ul1I8AXgEr
 PU2JfdPUgI2cRzZyU24CdOD8r3OVy+G+tPKAdU7xcOX+s7C7DpzIt8j1eh9f9wqABaSbUr49cLy
 /MUV00fMYeJD6YUqdtDYuRQdHv5fCRsrb5aqn90Dr85Q10QVChqIHOK5twXFpbodDbxUC2Jm/BQ
 lOfthfNcBxd2CO8POoeiZz1ngZ6ImW5XBCuird02ojDd8Zr8ZQ3KCCnR3AHoIdNCSEpNScROLJY
 SlLcUXAZMj2tCj0/T+cezMOpEsEsUm09HCPuHF1JOOxwth+Ie1zhC8zyxCkEx6Hju1fsNF29jE9
 JK2y1Q5XbOIPL+yOy53hO1EyI9MudcamsNusJ69cRtxodgzP3wJ/IKIyWRmUyc/p+OToz6hDAt4
 SDCiB7zwL1QcJ/K4g2cOnE2bxDuzmviGpLpyoi5X4/+57XZWhBwMDmjr9JyLNoQXLcXABaNQ7U/
 y86LmG1E/OCfb4Q==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Apparently there is no in-tree DTS syscon node having hwlocks, so drop
the property to simplify the binding.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 4d289935c08f..622ea0f1b08e 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -141,11 +141,6 @@ properties:
   resets:
     maxItems: 1
 
-  hwlocks:
-    maxItems: 1
-    description:
-      Reference to a phandle of a hardware spinlock provider node.
-
 required:
   - compatible
   - reg

-- 
2.43.0



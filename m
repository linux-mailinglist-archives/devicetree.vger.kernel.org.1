Return-Path: <devicetree+bounces-104441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9781797E68B
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 09:28:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5925B2814AF
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 07:28:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CA8C482D8;
	Mon, 23 Sep 2024 07:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JhD9whSj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACEF8219FF
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 07:28:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727076531; cv=none; b=HMQ0vDanErp2MMgTyVT/VdK6w9odWUHp57eaWhStRlbHysJoTMUdxuYykqgcdqvc5UM/089RGwg3je0FtfxLRN4Y0BkRIgadCNwXs1lX28Rv4lqsWJEw1UcNa5Gt+73X7/qsyRcB+670A/ckzyNw7HoenkGltAiMc0U1+rnHQHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727076531; c=relaxed/simple;
	bh=GBMFCVl+ruvmgzgbNSb6DVZkgbBRw7so53piTEK9a5U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LR6S0PxN6ed+PLPt5vdHASDzymxNIUnZJCG1bal0qYN38utVK4zZVA+QXeNny8ks6hqpaCd+NJYj0MNjhCqvX0vwLrIfW0kJRf0ePKoY2el3BkZvXv12BI3U2gPY1tMJo3U/YeJrwSuP73zU9NItSu969utEmydjqvIlacXiLfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JhD9whSj; arc=none smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-7a9dd6ebb80so40748085a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 00:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727076528; x=1727681328; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=maw1oBqUG9ivn260TxPL193386GlYlgFX49DQWFXqUo=;
        b=JhD9whSjQqvMaCuPhhgpEG4HUIyA64MRoxWpeQ+mJqmaUYYJpLnDMRjLA5siO9x2F/
         lcjNch7c+3JUrV54VBfmKfdIbBbOWLwNwBsy4J5S7IrxsRJCdgTuYF7JyIbWSUJociLi
         Dljvv1hlxDTd971Ko6HzQM4fNTKNIJ5EBcnluYOURb6hlhfZDFX/6t4B528ebV8KrvE6
         l9NvwXmTenU4XHRmBlK7d5tr+NUlvh7pWq0qhQmNh+fDaR1v1P+6wTeCLbRTihspHYuu
         muRUHF9sB0BW5ndaoTbreM1TIVSRKsAxE4o/4iDkQJAoIA/cv1emiOLB55j4lKAdohL5
         PjVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727076528; x=1727681328;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=maw1oBqUG9ivn260TxPL193386GlYlgFX49DQWFXqUo=;
        b=ZHBmyhyqjsbO43j9DATKKUrYbHvWCymyywZsVAYC6CHka6js5hPiU32SZwIOnOWlN9
         UV2hAV48VRZpSbN/vAdBPLp0+PHuRaXtC+SCdIEJM7Log9YjcC7QUE6IpmuRKwGSnm4d
         XwJie73FfT7nHoL2zusP0v6XQJPICgU6LrTqTJJlfIWqlqbWjuKB56qk0Tq1u5d6eueL
         kFiUtda6BFQw+DlLm4e++roMxBXC6bkeAftdd+aic+banWmZdb92/zB1JyQ1rzKrOCUV
         PACuhe0+SAiNh1xqOrS0sDaNAJSOw5bPpYyQo+uayoCWKrdcLy1Fy7ZPdU9kbolNvZDb
         PyQg==
X-Forwarded-Encrypted: i=1; AJvYcCUkB5poBgdrOnKVjleO9hq2vmNHgZxXF9nbypzvoeOMYX+cR+nSUp8pjWl7WwZIh2XrX9DHoQqpv4Hq@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/iFXOP80KaxWdoVlNbGRioGGEckiP9g10yx0aSCDHdNTCUh9D
	oqW/8AI5ZA1fB8QushtlspKK2cmWWqteHTt6q8XNwGbbpVJFSbOa7rE4RqQY52Hhk5pXesqkrWz
	aVKI=
X-Google-Smtp-Source: AGHT+IGMQTpk8PsrjtGdpvNYoG5v3NFi43gXQPbqmuM1yklKXWCnLOKh3RI5wEGdd0VSPBkYk5XAGg==
X-Received: by 2002:a05:620a:912:b0:7ac:b8dd:3b03 with SMTP id af79cd13be357-7acb8dd430cmr582547185a.0.1727076528642;
        Mon, 23 Sep 2024 00:28:48 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7acb08c182dsm452872285a.75.2024.09.23.00.28.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2024 00:28:48 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/6] dt-bindings: media: qcom,sc8280xp-camss: Fix interrupt types
Date: Mon, 23 Sep 2024 10:28:22 +0300
Message-ID: <20240923072827.3772504-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240923072827.3772504-1-vladimir.zapolskiy@linaro.org>
References: <20240923072827.3772504-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The expected type of all CAMSS interrupts is edge rising, fix it in
the documented example from CAMSS device tree bindings for sc8280xp.

Fixes: bc5191e5799e ("media: dt-bindings: media: camss: Add qcom,sc8280xp-camss binding")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/media/qcom,sc8280xp-camss.yaml   | 40 +++++++++----------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml
index c0bc31709873..9936f0132417 100644
--- a/Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml
@@ -328,26 +328,26 @@ examples:
             vdda-phy-supply = <&vreg_l6d>;
             vdda-pll-supply = <&vreg_l4d>;
 
-            interrupts = <GIC_SPI 359 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 360 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 448 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 464 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 465 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 466 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 467 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 468 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 469 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 477 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 478 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 479 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 640 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 641 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 758 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 759 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 760 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 761 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 762 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 764 IRQ_TYPE_LEVEL_HIGH>;
+            interrupts = <GIC_SPI 359 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 360 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 448 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 464 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 465 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 466 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 467 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 468 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 469 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 640 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 641 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 758 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 759 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 760 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 761 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 762 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 764 IRQ_TYPE_EDGE_RISING>;
 
             interrupt-names = "csid1_lite",
                               "vfe_lite1",
-- 
2.45.2



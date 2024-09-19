Return-Path: <devicetree+bounces-103890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 042BB97C88E
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 13:22:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1B4A31C24812
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 11:22:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91AD119D09A;
	Thu, 19 Sep 2024 11:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="eixflorJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C12119D8BD
	for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 11:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726744931; cv=none; b=bsLW0+5k6u1ae4qRFnJW6kzSBGXLb0R9RQ8XBfFsEr9x8ZyoivIXQsQrnm/xZsnNgEcR/Q/ntEi/isQFQojXrj3p9E960NGSEJwwKrPc4mjkfm8UAwzD3F+Me1ydNv45OrO0gjdKzLGOYBJMizR5aq2ZxzuRDiHHY7xP5PrVTXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726744931; c=relaxed/simple;
	bh=sKoAjOs8rD8K8GFRKDaelO9zPYv1akfq34sYpYLjJf8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iqu4HgNkKFOnJGteTgXl8RBcZmDYy6hgY+pJwuXTZtixf71djxoyC3rPb5dfXir1agCN3hQmqjhjBvviL6m+iXfTTos0aRsnkl93ro6pvyqNjQoudFVej1Thd3E+0MT1mtDjDlpEamZ2fe1+VOfWlSscbWnmPR2PQKQtLl0ikuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=eixflorJ; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2057835395aso8998885ad.3
        for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 04:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726744929; x=1727349729; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dMIeIkBw/sEwhttTsHHImWJDak9J5XbBMV3Q0L0EynM=;
        b=eixflorJzdiHWNAwYWP8VMHwclhVhoTUpfV8sZg1x0f8SxTSYxQtaLcF9OJgq4/tH1
         tqxGk+GQ76BBnXAW+Eox2hQUVb2s5hLjsAY4lmeSqwq4Qux6SLIjqP64i0UoXEoNUyAQ
         GJb/jS8ED8dwxNKGAPmgz5T078brg0HeOjZuQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726744929; x=1727349729;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dMIeIkBw/sEwhttTsHHImWJDak9J5XbBMV3Q0L0EynM=;
        b=Te62pgv1hFZUNgatjRPpkIyGl1zdD8Emx/q4DX5y5nE61uUS1tGmUgyqEYNRuiQ1OU
         OvgbieachRwT0vinOpMMJO9nrPLIFVwA0FFuIvQA7i2qoz2daqqx/0+1HU02ByGyI5gZ
         WPFxQWMSwWp8Fcj5clRU+txy/jv6Ok2Req56X+etPu5Gi9tiTAy+z1TgcY3tpyTqOXkh
         M8NOP2HguYMM+YYqM1kIOuJ5EMp1nqK95VAasMrQV+gksthU1uqptFDVnQh6rEZ0i/pU
         jowK59Hr5zvZfFTGSLc14Uxv6LJsre2eH7eo09kT/psG6m+q86t7R4CmzmTft84UZn5L
         U2Cg==
X-Forwarded-Encrypted: i=1; AJvYcCUiDdDqluOy5Ul6ewRiK+ic0fnXoMNfId31A71W8dlYzgAKUh3Q+oZnzI6nNxHyQ7ePqPGU3qTbXck8@vger.kernel.org
X-Gm-Message-State: AOJu0YwjQzK3tsVl6WsSikMvZsF4fxjNdDflFuKKpEeY/TUc9WvULWpg
	PMYw3+b9qVfU9MY9a8d2HhGQ5q+HfW5vJ9rE13Q57cIKTwL0Qedl+oJnrF7Pzg==
X-Google-Smtp-Source: AGHT+IFk5QDD/1gNzdKSfHXjASXaeXEteAWqOOFjRzNyDZr+9gLzrRtZ1AYty5vAcEPcBwRhs9emFQ==
X-Received: by 2002:a17:902:ced0:b0:205:937f:3ae3 with SMTP id d9443c01a7336-2076e3ea569mr391568935ad.44.1726744929503;
        Thu, 19 Sep 2024 04:22:09 -0700 (PDT)
Received: from localhost (117.196.142.34.bc.googleusercontent.com. [34.142.196.117])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-207946fb724sm78146305ad.200.2024.09.19.04.22.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Sep 2024 04:22:09 -0700 (PDT)
From: Rohit Agarwal <rohiagar@chromium.org>
To: chunkuang.hu@kernel.org,
	krzk+dt@kernel.org,
	ck.hu@mediatek.com,
	robh@kernel.org
Cc: linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Rohit Agarwal <rohiagar@chromium.org>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH v2 2/2] dt-bindings: display: mediatek: dpi: Add power domain for MT8195 DP_INTF
Date: Thu, 19 Sep 2024 11:21:52 +0000
Message-ID: <20240919112152.2829765-3-rohiagar@chromium.org>
X-Mailer: git-send-email 2.46.0.792.g87dc391469-goog
In-Reply-To: <20240919112152.2829765-1-rohiagar@chromium.org>
References: <20240919112152.2829765-1-rohiagar@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add power domain binding for MT8195 DP_INTF that resolves the following
error and many more similar ones:

arch/arm64/boot/dts/mediatek/mt8195-cherry-dojo-r1.dtb: dp-intf@1c113000:
power-domains: False schema does not allow [[55, 18]]

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202409102119.AYvaTjUi-lkp@intel.com/
Fixes: 5474d49b2f79 ("dt-bindings: display: mediatek: dpi: Add power domains")
Signed-off-by: Rohit Agarwal <rohiagar@chromium.org>
---
 .../devicetree/bindings/display/mediatek/mediatek,dpi.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
index 1e748ee23fc7..201f1696854f 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
@@ -90,6 +90,7 @@ allOf:
                 - mediatek,mt8173-dpi
                 - mediatek,mt8183-dpi
                 - mediatek,mt8186-dpi
+                - mediatek,mt8195-dp-intf
     then:
       properties:
         power-domains: false
-- 



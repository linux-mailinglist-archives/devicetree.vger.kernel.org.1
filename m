Return-Path: <devicetree+bounces-59138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F9A8A444E
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 19:04:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 81278B20BF0
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 17:04:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B93CB135A44;
	Sun, 14 Apr 2024 17:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iYC/inkL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591F81350C8
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 17:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713114273; cv=none; b=AbEEsGnjIda09SAgN3QaQYAJlu+zuQg3GfpBu9oMd/cucreeoR07pvrsg/Hn4AmqZQaCpyPQ16YAZvtIZJK31Ln/9XR0EtofnwXe8lQRs+0E1VaWuflO/2Bv/+C9gsT6Da4A5URuQGdHu+ujOYbkQgTEGg+fzFlcLWuIJzyBxXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713114273; c=relaxed/simple;
	bh=YXEhGNpa8oVZCHl0FfxNlp2mxTKh3u0+yGXfKdOS484=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SrcNfvsChDcsa/EcIHGBT43964JDKv0oYTQxNS1xQ2DWXibaFH6n87GRbAUAby/t9/Th8Ky6QZI+/lS0qI2acibuo+s1St5i88Zfxwpsjl0DCa6O1NfohvL35Vf0iZD6SxoOdMcaIRUGH8GYUVDItFwzAgMNIcH6b2H8QhbNdh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iYC/inkL; arc=none smtp.client-ip=209.85.160.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-23319017c4cso1793983fac.2
        for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 10:04:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713114271; x=1713719071; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ObHT27lXyT21SeDfjBZd+Drh/cmeSjfTZH9a8XBTyDk=;
        b=iYC/inkLYP0dwrmki/52w/8cG7seOI1EJ7FKYpjyG/y0WvUr9ahIYFWjrouOlSVsTJ
         01u1rrE6Q6eaaj8Ix38uNgS/sb/N0S8dhOj9vuTOjI32XneMTQqk0nQe5G/DeiQx2IjJ
         mbSnebQ0rq0neGQUEa8n3kYgzG4C9jXx0WnpjtVl8Y3DVyvydd5U+jxu3TWYtDnaNz3T
         rgEX1zKQIsmU8Iq6YKc89uLgwEBKs9spgdVtMZTs0oQUIX/iW/qRR2USFPdEwsJGuwCY
         6ySVNMmQ0HGIdw3Gew7osgl8R4O7XokEYurx1c1/NEnBbRXLhBtAdhFwjeooK2TDqeVf
         aCjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713114271; x=1713719071;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ObHT27lXyT21SeDfjBZd+Drh/cmeSjfTZH9a8XBTyDk=;
        b=fxpM1N2KfDCFbtmCV3O/14LrnEedhTap3EvZzIOz1hyD+hYSp5spXXwdfRkGH+AuSm
         E19Z2N46TAcMw3/U3d5CisoEApSvSjei16N2wdK4lUZdejO4lb4Q90V9dghcOYOf2kOv
         P/sFv+nkXmfYltd3lWz55u6lOvcHLfrokE6C/0erN7ZZankdlDRC+Sjv601MuCWlRqe6
         UGAPBPggBTmzMLM5fpTXw4yz+m2PPtA7qAEYS3JeMZhfQWLYnYN1lw/3V5tIy4ecUQSe
         xeR888iU4sNo1cJxjw2McQmQ9KWJiihkgSdKc1ZVqkh5oJ15f2V+yzCvSnbENalFrdyh
         jnZA==
X-Gm-Message-State: AOJu0YwtYJfb1giCCdJSMFZQ/fo4b97KIUD7E3b1iYudM9sA22NJqLUk
	GOUvrHMCvEw8sAyP9R1tHkTKQXwC3+7QzPknIZTGUSNuB0vwHRe6
X-Google-Smtp-Source: AGHT+IGulgtVmD+J6yZHBmrF/AJ2RUPz+S9JKsazKmLP1Xptfx5fMuizk6xi2AeTV6L247wkQ9k4ig==
X-Received: by 2002:a05:6871:c418:b0:22e:8868:af8a with SMTP id ch24-20020a056871c41800b0022e8868af8amr5348022oac.31.1713114271359;
        Sun, 14 Apr 2024 10:04:31 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id mv5-20020a056871d04500b002338e2146f8sm1585305oac.17.2024.04.14.10.04.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Apr 2024 10:04:30 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	mripard@kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	ryan@testtoast.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/2] dt-bindings: irq: sun7i-nmi: Add binding for the H616 NMI controller
Date: Sun, 14 Apr 2024 12:04:23 -0500
Message-Id: <20240414170424.614921-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240414170424.614921-1-macroalpha82@gmail.com>
References: <20240414170424.614921-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add binding for the H616 NMI controller. This is necessary to handle
interrupts from devices such as the internal PMIC.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml       | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
index 83603180d8d9..4fc8b0320a31 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
@@ -32,6 +32,9 @@ properties:
       - items:
           - const: allwinner,sun50i-a100-nmi
           - const: allwinner,sun9i-a80-nmi
+      - items:
+          - const: allwinner,sun50i-h616-nmi
+          - const: allwinner,sun9i-a80-nmi
 
   reg:
     maxItems: 1
-- 
2.34.1



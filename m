Return-Path: <devicetree+bounces-196247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB6BB049F1
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 00:07:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 180FE7A81BB
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 22:05:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DF69278E6A;
	Mon, 14 Jul 2025 22:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=scandent.com header.i=@scandent.com header.b="Drj/GDRb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0A826C3A4
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 22:06:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752530801; cv=none; b=g3BEJ1PS3so0+51yn0YPzSWtsY63aqYMas22bZTqjMLgifpCKGiJBhSxWguo4SNYa6/RSccsoTNNCaZZDUeNF78h8IOBMIMl+8FvQ1Y5mnH2ujnM+7z4QaBiZ8uCuFUsleGVc9ifohb3fwBB2ATBlkECg7FN8tnzUoqettneqfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752530801; c=relaxed/simple;
	bh=YLR0dTVZfAu5LlRsEWmmg9empbYzMLHU1znVEa4gBwA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qKAyDWTmSIvHJzsnG7zXfRwCq70wC7yGJbdKL9alep+zgvE7VnKgPEpGAgTOP6ElbemswEoMj2EW2sH0epuvWu2TOc4tbTyY0b73wwMmy2No+4vHkEXjCFSbXl/oekOpjg7jGoeFBpKFwaChc7bIvo/MQoBAPwvstl5twYyTS3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=scandent.com; spf=pass smtp.mailfrom=scandent.com; dkim=pass (2048-bit key) header.d=scandent.com header.i=@scandent.com header.b=Drj/GDRb; arc=none smtp.client-ip=209.85.222.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=scandent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=scandent.com
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-7e3142e58cfso94128585a.0
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 15:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=scandent.com; s=google; t=1752530798; x=1753135598; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ouMuj11MjFvdwjVughz3WZjGk79DPdwniSFwLLOcIJQ=;
        b=Drj/GDRbMB/pnmbhAGHXQvMXI2q+VzQ8QqfosA7Stp/ivXsHkgrr/N2Q0DIJ2Z7Zbh
         wcmVksCSa8Ij6oqxICQ2J6GOmLVz1rg2+WcjGTgot+t1NFIQ6NWIT1w6LElQ1yqUoSoc
         /r5VfE21vsryCIPp4+N0fg0fCdJAjFowAlLXsU6XKNmG7K7dLO/tQDW/sRFhRfM3LlXt
         reA1rsf4JMlMiFaHZJo4/irSh2HGoBWg2Zz+QMnIdOPlJ7teWWN0o5FcPFryPYnstoq4
         5b8hKpu1b9EQxhma8Ycy6zvdCL+Omx74V7WMtCd/1q31AkH9hpw1xSan3u1Cnd7+ugwm
         jEgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752530798; x=1753135598;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ouMuj11MjFvdwjVughz3WZjGk79DPdwniSFwLLOcIJQ=;
        b=X97kG+YyXIuCaxpLt8F1u22YcfYoV017bOlj0XRNacqKcAkmPw5QKcWjszDhy+4r4B
         0h75LrMB/UDI2w7rSs9fBKGjCPudvhczxRzUGCYTamdBvmtLeXU0FU9zc3377Ow8w2PY
         wlekYWOQ8OriBHiwfzxHnwWXjWO9WxNJb/Oafhigf4dUqTH8cm4jq8Y6o4XTlFFFGSp7
         uojkYOGryaIynX5k225kd9qqMn1iCSdjc/WVJyKoIPiBBemCn4ha/clhFcH4re+C4tP9
         2swgGd6ELaBlwFLgsItdP/v6BJCiisjQis1vB18dZuIBpjdeHqlprRRD01naD5xVvjc5
         2gig==
X-Gm-Message-State: AOJu0YwwofSwDWISotSars35qIctclMt7lgQEUTsoK5xCbbHwWq4OnTW
	06KVDlsS0l5ZUhR7u+5HQv9Nl5XY1wiZ+/HZxm1/jP7UtsaND56Oq0fIDFv0DHawS9A=
X-Gm-Gg: ASbGnctRtIUuGp/1fPxQDz19PxAAyLkMDpk5Bz2k5C22MsHnTaKyV38BXkVRS5XGE+D
	bo3EWm7sQEUVtg3FmsERp/AVSXiIN2wztsnCPLvaXvqhrkwgOL+Al93+9ld8kGCrKcVfYRUJdEx
	1cd7+RstBQK8X5jyvLESNx6x+TuXO/ZMqDZhNY9zlM/UG5RJGpnnTt1vrdsKN/ZkqelMFgKnD8+
	fdm8ECCXchxKv8eGEDwZkt+6fH4JweqjTGrqCb/9sBUH87Unn3YxuBXEjcCdOFKGFn3hStKdN3r
	9Z/f1n12h/kFN1lvtGi95ayvJyZ+hpdYq8xBdLPwVeDRXIBVor3Dke2u7a+CjA1RFY0EoykOsb6
	MRrGo2TA6OxyNdTWfGMyxKiYFrPZrI7uhvca2b32t73VSXgk7
X-Google-Smtp-Source: AGHT+IFbfaJcw3SFtnMOWSqBCz5MGWRuuy5GYZFNtKa78qroYRmipTX+6rdHlkckVU5P9OSxGJ3ChA==
X-Received: by 2002:a05:622a:120f:b0:4a6:f4ca:68e8 with SMTP id d75a77b69052e-4aa41562eadmr195005671cf.48.1752530798043;
        Mon, 14 Jul 2025 15:06:38 -0700 (PDT)
Received: from vserver (ool-44c5118c.dyn.optonline.net. [68.197.17.140])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ab6fdc7731sm13137311cf.40.2025.07.14.15.06.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 15:06:37 -0700 (PDT)
From: Richard Yao <richard@scandent.com>
To: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Akshay Athalye <akshay@scandent.com>,
	Richard Yao <richard@scandent.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v2 2/3] dt-bindings: ilitek-ili9881c: Add Tianxianwei TWX700100S0 support
Date: Mon, 14 Jul 2025 18:06:23 -0400
Message-ID: <20250714220627.23585-3-richard@scandent.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250714220627.23585-1-richard@scandent.com>
References: <20250714220627.23585-1-richard@scandent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the compatible value for Tianxianwei TWX700100S0 panel.

Signed-off-by: Richard Yao <richard@scandent.com>
---
 .../devicetree/bindings/display/panel/ilitek,ili9881c.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
index baf5dfe5f5eb..28d5fff79992 100644
--- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
@@ -21,6 +21,7 @@ properties:
           - feixin,k101-im2byl02
           - startek,kd050hdfia020
           - tdo,tl050hdv35
+          - tianxianwei,txw700100s0
           - wanchanglong,w552946aba
       - const: ilitek,ili9881c
 
-- 
2.50.0



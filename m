Return-Path: <devicetree+bounces-130059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DA89EDCBD
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 01:49:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8FE7E2837A8
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 00:49:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBB43156F45;
	Thu, 12 Dec 2024 00:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NkPNBuvd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED74414B06C
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 00:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733964470; cv=none; b=pPymn3JLuOOcNwXihT9sAwzLVGfQFvVbVqmJpCQYuPNZ9fNXumhxMc01uJz4bxjRR65br1nmKwnJxV0UlstGW8Hk2jgtt9jv0KEn0NRp/pQ+LXoHq8RqNzbqFTVYdH7JxfYNPGbtV9JRoq4KBRbXbewFVDkodLQ17oIpSsMwCIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733964470; c=relaxed/simple;
	bh=g17b3O9IJFRR5zRDTOnqHhNU2ufwtjxg8brt+E441NM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oQwrDdzusAsrtZFAfbgKrq2gWbljvks9rugaU6ZXYwy2hgbJ4wvcx70CpUh5kEW2u55G8unq1Xxpf1fUZBsDbbefPbdr9Wv49kei9sJN1tMtnPsacSYfhQF8rCeMWa6+pYNONog/gA8U0bGn2xhT6EW2T5Y8z7OtowDzXDHW8A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NkPNBuvd; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-434a1fe2b43so374535e9.2
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 16:47:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733964466; x=1734569266; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qQQpmK66T3MqtBJyloGmYZGt9Ctq4U4XpvYTcWnQiLM=;
        b=NkPNBuvdbLTxDo78CR62d4PkCVlBDmuq/swC/C4uJ+M4TkpZl0bJRBzJk+g9kXkJVf
         Ul1gquHMFYBncmaIC2o1CpPticO9a7/8Ilg1Kg5zg0z0QhieTJEzLVgyrUa3a69FsxZ1
         aqWiGk82XMRPAh3rYJORi/BRc7zFJbUFqlfLkcCcSYe/SW0jHRzS7evOf+z/YO1FKhfs
         x5Pwb+ih1gSH1Lq/E4n/kstFY2YB/Mvybbl69v0pzTAW8/iET5AynoIt4lad/AC3uZK5
         fjOzvCIdkWxOLYOyiNtLep/bfyg/B1JlGDEArtmUboN4tAghrKIDdFiMv+dmySaB3WTw
         WRHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733964466; x=1734569266;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qQQpmK66T3MqtBJyloGmYZGt9Ctq4U4XpvYTcWnQiLM=;
        b=TABlboEAPXRmScvCioCLs1h+OuTPe4vkYMSXWmZlRS2ypWOuD6BDNAoWO7USbzk5dF
         MbqeLzkM0HDmeyx+rCFo1ZF+C21NvyqU+t8fI99DFL+MsEY4/0XoGgeiddYHAiq6XFMz
         972341jxqXFk3hquGYXJyrTD/OhFqw26O8zA4yuB+PNkK52hXfY+2au6qcPN2Zua4Egu
         2/k+/bAefp9bsYftYtfseWrPOVF5phvT0c1MFIrXQkxAo4NnCW3zaTTCgFziGaDvyb5z
         UIe9tLUsdXqLyCJsg+DXbUEaKhc34tKu6MaQlqaMsNo6Na3rHezV9meM7jd39VL6RRs1
         /2ZA==
X-Forwarded-Encrypted: i=1; AJvYcCUDqUS8og7q+gs16Bvgud4dJkfz+Jek0a9LkWg1yGhIY5qAsibqVJpnbIXJzR5xz6hW/duk+JZ6Dbze@vger.kernel.org
X-Gm-Message-State: AOJu0YwSvCHYAl8IvGJic5GP+ts8VEWIGOOJL8MzG3sF853EaFGKBOjY
	iaiT17XK3mHWAiPAQOxpK1rnXAaNwUHnh2QdN9vLqCK2sF9ScdDdO9P5JT8WAt4=
X-Gm-Gg: ASbGncsB37Jpa7IcGLyGJeMfo0z49zhRgNDMNFxG7BGWBhlzgntrF2lOK4Dvju+gGNf
	pXdi/NUXJJCLSRX51iRGyHz/V4+/SLBeKdkf2v1YlvCq6KMtUW7BSzFT/0v0DoHCmMbdI/Eoqi6
	XN3OoG7Y5ZSavUYOGSe0Kn6Nv140nzHcRj5BZ3JqnSIudLBjnDSFKvveQqKuugvFjlHS0KF/KS0
	olvOm+ZNfRZU8ppkwYoCAYKhsmEEH29jXTeHGm+rw/xWFpLS/HU0kXZHpIdKi1jyemCyhp7
X-Google-Smtp-Source: AGHT+IHtzrN5lCLtEOpZ7wN6Vwiw74Jy/Nphl9EoXdDE0Dvq2P8eavVUVGJHmfyFsPMVjXn4QnbdqA==
X-Received: by 2002:a05:6000:490a:b0:385:f996:1bb9 with SMTP id ffacd0b85a97d-3878768e743mr1113391f8f.23.1733964466297;
        Wed, 11 Dec 2024 16:47:46 -0800 (PST)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824a4ef4sm2459660f8f.39.2024.12.11.16.47.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 16:47:45 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: broonie@kernel.org,
	konradybcio@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	andersson@kernel.org,
	srinivas.kandagatla@linaro.org
Cc: tiwai@suse.com,
	lgirdwood@gmail.com,
	perex@perex.cz,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dmitry.baryshkov@linaro.org,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 08/14] dt-bindings: arm: qcom-soc: extend pattern matching to support qcom,wsa881x
Date: Thu, 12 Dec 2024 00:47:21 +0000
Message-ID: <20241212004727.2903846-9-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241212004727.2903846-1-alexey.klimov@linaro.org>
References: <20241212004727.2903846-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for qcom,wsa8815 and qcom,wsa8810 names to be recognised
as a valid compatibles.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom-soc.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom-soc.yaml b/Documentation/devicetree/bindings/arm/qcom-soc.yaml
index 2ea6d3f65478..ebccafeb13e3 100644
--- a/Documentation/devicetree/bindings/arm/qcom-soc.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom-soc.yaml
@@ -23,7 +23,7 @@ description: |
 select:
   properties:
     compatible:
-      pattern: "^qcom,.*(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sar|sc|sd[amx]|sm|x1e)[0-9]+.*$"
+      pattern: "^qcom,.*(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sar|sc|sd[amx]|sm|wsa|x1e)[0-9]+.*$"
   required:
     - compatible
 
@@ -34,6 +34,7 @@ properties:
       - pattern: "^qcom,(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sc|sd[amx]|sm|x1e)[0-9]+(pro)?-.*$"
       - pattern: "^qcom,sar[0-9]+[a-z]?-.*$"
       - pattern: "^qcom,(sa|sc)8[0-9]+[a-z][a-z]?-.*$"
+      - pattern: "^qcom,wsa[0-9]+.*$"
 
       # Legacy namings - variations of existing patterns/compatibles are OK,
       # but do not add completely new entries to these:
-- 
2.45.2



Return-Path: <devicetree+bounces-151450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 834FAA45D0E
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 12:29:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1315B18933B7
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 11:29:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 840D72153C5;
	Wed, 26 Feb 2025 11:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UWJoRuqt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8F6C215171
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 11:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740569363; cv=none; b=YJC/DTifkVDvuBGKBPFii1BfHGZaAahb8UNAe1mRm/wQ976Y6VE6a8TUv+/6311NxQJm2zCXzr0jRZ6tE4O2ATxmzSVof5mQ54O4Xy/l2u4tdYfKc32aWV7aNfaHl0xJVhehUXXO4W1KBFrQ7aRE25p8Cfb7ByNXvZ4wGIwswQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740569363; c=relaxed/simple;
	bh=aKWtbob+2RSm5JyDWJSTEd1XNxeI/gXvLID19u4dptE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AZJwLU822O8VOAmex1a3/6rciDJ7qPa45XePaiz+Jwqfmc8MjqrUx50WVHbWOGeGGBWf+GxCaB9BgHjRJfg3scRb2Rx/xpQrunt/kclvepM+CBlRv8uBMyWchuCPk1wAkgs9lIelXI4sTvzneXMhLwgdKgj/RHyfvLjyWVtxnsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UWJoRuqt; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5dc191ca8baso1586881a12.1
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 03:29:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740569360; x=1741174160; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JQWD29wnrAJlObQ2+b6JbHQHIRXSBf6Z16/xLVUUT5k=;
        b=UWJoRuqtpufSJ1eEwtIyOqn2Ffii8q3WfxUQoiW3l8eK1jfy8sO7ZSqSwzU+mewwwN
         YNtCuoVEiQVFZLeH/a5zy3/LaQ13c8NVi7/429F7iSlAOXqTy0IPyPnjblh1a4blN8SB
         b5sWXJgsFucLibb3IDcTiYsMaV0HAHplVBiLsqL2JLzbg35Q/ufYdBldLq0McgO6Za4f
         7+5rh1Ihoszr4Hg9AMyBbjd/M54uOmWeWRvpPFfQXxMdepwv09zKFB7ldlpZtMKFkwbj
         tCDmT29rjbw2WyHEBNi+n4xyX/HO33y0k0UVlgj2IHuTL8yl5gyYWloOkznjIxjCDl46
         GDkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740569360; x=1741174160;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JQWD29wnrAJlObQ2+b6JbHQHIRXSBf6Z16/xLVUUT5k=;
        b=tKO/2HJJwDLiE2s82ZOrfHNxb3w1nl/uNmu0hpMTuATIFHQJuXi7BJzGF26LTUSvvw
         SDKPIjNObuAbqlbyI7L8pKQ4GIVjl73zjd2DPL5zD8lVIAUZFcFNc5FqMtQo8cJA3s7S
         Ef0NFpL07x5voeseJqg3oJMXEhp+lI1pU3FKHXo+tT55Cn1UboJz6xN0oLa8T0HzMAKC
         NSzlD7IIOxRaMuIKcVxDuvHdHupu+hM9tpf9AD24G/DKphRylaV03yEl+bfLxkN2cCMF
         nhod3LYkkj6bLkykyUSvoV1iMd9XnAQw6sbZF2Bi7UIKSEqsNcx7JA60BsEfNLJHf9Hr
         rMaA==
X-Forwarded-Encrypted: i=1; AJvYcCU3dH4JnnYZKqrOyUM6DGPihOkXejwEWPJsA81cvQbc+Yc7nMCR7p3oBX7zvnS9JNUPGru7yvXnH7Ba@vger.kernel.org
X-Gm-Message-State: AOJu0YyoW7g+bc2XvJ3DSGuELCqliTWeYvGz8LNLk3fSPfg+NG+/o+hB
	7eUqNd+cxAYqdYsMaETmzfJGyJvP0NFBiKB3J5u6dnW3j0ZecfHySZgaifFL/jg1h134jth0oWc
	6zT4=
X-Gm-Gg: ASbGncvfhMqRp92pNr08ceVpVNfkn0nIv9IlmBqRCbm7TXLRomoY3pbgTmiQP/K8T58
	cXLIVOjpi0lZGNmzBhFChOK5t/NrvGNo/XZSVOzRP+/0uQXe9AeoMrLnekn32ka8DKeyeYvWkqk
	05s9bgknxIvT6w7Jut3gG1sx7pB1qHiOkKDYvSZK3v6XjC62gJAdkaAAw+wlsNMm9Ho8Mf5yCW6
	YhT3JGmIvaPaKuyvqRnGywTtkFkQZMMNFJNv6/pgzAw8X3EUzOlaRa9zO1M/4xUxdtpPsIEKPl0
	X2lYJikNZ+nEW06Jm0Pds0UrP0DQp0fkyzmp7Dm7M+fu3rKq0NB6JBEYp/Qvhdrxd+SmDsS05DU
	=
X-Google-Smtp-Source: AGHT+IGUGEs167MMU50Z/gsJMetu4k7d/Wn5NbBN1LtAChUhdquWuXdeMtmsG/KUgqB4AhKanou3/g==
X-Received: by 2002:a05:6402:430c:b0:5dc:7ee8:866e with SMTP id 4fb4d7f45d1cf-5e0b70dadffmr7109591a12.3.1740569359899;
        Wed, 26 Feb 2025 03:29:19 -0800 (PST)
Received: from krzk-bin.. (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e45b7174cesm2610049a12.34.2025.02.26.03.29.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 03:29:19 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
	Mike Leach <mike.leach@linaro.org>,
	James Clark <james.clark@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mao Jinlong <quic_jinlmao@quicinc.com>,
	Tao Zhang <quic_taozha@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	coresight@lists.linaro.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	stable@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: coresight: qcom,coresight-tpdm: Fix too many 'reg'
Date: Wed, 26 Feb 2025 12:29:14 +0100
Message-ID: <20250226112914.94361-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250226112914.94361-1-krzysztof.kozlowski@linaro.org>
References: <20250226112914.94361-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Binding listed variable number of IO addresses without defining them,
however example DTS code, all in-tree DTS and Linux kernel driver
mention only one address space, so drop the second to make binding
precise and correctly describe the hardware.

Fixes: 6c781a35133d ("dt-bindings: arm: Add CoreSight TPDM hardware")
Cc: <stable@vger.kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom,coresight-tpdm.yaml | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-tpdm.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-tpdm.yaml
index 52ba5420c497..74eeb2b63ea3 100644
--- a/Documentation/devicetree/bindings/arm/qcom,coresight-tpdm.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom,coresight-tpdm.yaml
@@ -41,8 +41,7 @@ properties:
       - const: arm,primecell
 
   reg:
-    minItems: 1
-    maxItems: 2
+    maxItems: 1
 
   qcom,dsb-element-bits:
     description:
-- 
2.43.0



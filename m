Return-Path: <devicetree+bounces-56949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B9589B2DA
	for <lists+devicetree@lfdr.de>; Sun,  7 Apr 2024 18:24:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF492280C17
	for <lists+devicetree@lfdr.de>; Sun,  7 Apr 2024 16:24:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63F5F3B7A0;
	Sun,  7 Apr 2024 16:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VotZmg7p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91A983A1BB
	for <devicetree@vger.kernel.org>; Sun,  7 Apr 2024 16:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712507027; cv=none; b=TLCwfN07JvWnTTGoYTnSG8RJcHHoQegmJwKAK+WDSePZaE5C9mOVmGQ01IFujneXyvUJIhXqG/YCLV6ZuPKaMAMrJs+FwqYRJ8tCfN7YvSucFLg/5mg5ouVqZA3RSSDpiXqLMsyW+N+vD/ecKFIkfa8Tf5/ny8i3inbxAPu8C3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712507027; c=relaxed/simple;
	bh=f1k2/XtnKKT0QabjDTtzy+0Tu+D0+1BkiYHMuQzuNWI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=i89GcKA9UPXqGlsqL+mbKd3VRFIglcNqz6WtLNJJ3r5T4WdvsZu9XQppCT0MqyniXD72UFOrQxD/O1vzV5b2gAaC1geJSS0WlNtysa0Cx83993qkcDwyJGx5WbdMYtKpIOqSBRFgX29kgRkzBjmi5oKgb8UeckAgWh/CCX009lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VotZmg7p; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a47385a4379so864870766b.0
        for <devicetree@vger.kernel.org>; Sun, 07 Apr 2024 09:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712507024; x=1713111824; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8lYudh1XGipLZp45Ed9irT2kjTBzp7nX6WUMRhG9/PM=;
        b=VotZmg7p6gA2qZ6KULVYyC8KxTcWKhhFBZIVFUD9JdF7OtyLDzTqJ3NKMv9WqQvJDP
         wdRDOCodtQlvje4PdNKt/8pV+DRrU7D0Z5QXsjNaMomxZJC4MGBd7I+/mASaSYgUcIL3
         kdZjX/dLiWj7yz7lS3AUaTcw1vXyfuDSZWWxMJVR6WcicSE/jPM0FFAI37Uoo9NxPdLx
         REXixIAN1f8y+NHtTh1UUieU24ghvHNdgVtvab7m5VasnWUEI3Kj670jsd7K1H7qJ8tS
         qihV1YrOySdNIpIhxKgKvcPN2UrLrQEZEcTOd1YUfxa70tcVvs90rul3necjyr4Souey
         L3tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712507024; x=1713111824;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8lYudh1XGipLZp45Ed9irT2kjTBzp7nX6WUMRhG9/PM=;
        b=lB70Mn7eriH9waV0vL6Jjxx3lGQT0q9kjeoET0lvHVu88aSposxQHV2lKuiFuABTjV
         Zb+yF6LKJEdu5JcW6IIEU4I0GIQbpBxQ3ESri5wjg9DiSFQPDOR5udFcjGbuZxo78vDq
         VvvtCDNosWmqrieSlbmTNS+IBMT2WHHsbZWppgOiN+povfZbpsQGZEhjZIIOeUTXfiy8
         0HGkK+eaHwtxrMopTgUqQ8X3b3T7Cxwe9dH6U9QjPIvCT31q+8Cr5akBF/7pjk6v7qhv
         A0854AM1dY6NU2CcmkzGgHRgoe++divCZbjFpwPIt5O3pvNyYprTHMegoCIRM1O25QfP
         Qp5Q==
X-Forwarded-Encrypted: i=1; AJvYcCXsgqcBpoJXN/ZgG22oTci0RvqgsfVbJ56WTla9x0WesL1RROkQssKG66u6NFkjISPI9yHbnl+I6dvAWCcMmU5cupZD/RJeSTN59g==
X-Gm-Message-State: AOJu0YzcvKsE/f34pd/pwjYBEI8kvUytqQuizAiiR7P0m2cg0hhz0H3S
	D38NSSW7q0wmS7obu77ndvGT7Af89qb6xl1+6InxIloXcwDVCzWkWe9dLCXMv5U=
X-Google-Smtp-Source: AGHT+IG0AkCZSMmS2Shl9d8nSs/2eGpGUav3paUeGvD+v9WFbHkTskXsEsX11+oPqTjTyn4PFFndIw==
X-Received: by 2002:a17:907:72cc:b0:a51:c311:8199 with SMTP id du12-20020a17090772cc00b00a51c3118199mr3500827ejc.31.1712507023717;
        Sun, 07 Apr 2024 09:23:43 -0700 (PDT)
Received: from [127.0.1.1] ([79.114.172.194])
        by smtp.gmail.com with ESMTPSA id qs28-20020a170906459c00b00a51bed388a4sm1811626ejc.139.2024.04.07.09.23.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 09:23:43 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Sun, 07 Apr 2024 19:23:22 +0300
Subject: [PATCH v9 2/7] dt-bindings: spmi: Deprecate qcom,bus-id
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240407-spmi-multi-master-support-v9-2-fa151c1391f3@linaro.org>
References: <20240407-spmi-multi-master-support-v9-0-fa151c1391f3@linaro.org>
In-Reply-To: <20240407-spmi-multi-master-support-v9-0-fa151c1391f3@linaro.org>
To: Stephen Boyd <sboyd@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Johan Hovold <johan@kernel.org>, David Collins <quic_collinsd@quicinc.com>, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1023; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=f1k2/XtnKKT0QabjDTtzy+0Tu+D0+1BkiYHMuQzuNWI=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmEsiDgoBJu10bDGjkOQlKiFUR111JqKL1uRRLf
 +Orxj0NzwSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZhLIgwAKCRAbX0TJAJUV
 VpuFD/9xdy5gdxKjuK6+FBvj7w9TUiK3bvGSdZfyhJYT4IETt5y9sQWDAPeewM/RVFWmv0a+3gs
 5e67bCsLjPLbGIoqsEvwDhvPazDDlY10RZ4vGjiY3W5TRNA5eETaj44FeY+HlLOpX/Bvqia63UU
 w9oJsDq+eFDj1HVl3lekceaddpU0OewBWyXlzubTBQQpYk/xd4N4jdy1GDclQeRhN6Nfa/VeTMR
 vyhra4UDl6mXlPa5BHT9qvTXP7pVF0zB5dyobZizK9YjRsPigYS+LX3OmOjV2m7ti5gC8iwq8wn
 KIZi86jwYArLO0U5wjbHn6zaxddpd1lveGBk2IPRt2E0o5P+5jnYJuSjoICp7AGISqiBAG7AxLR
 p7Jdz4hNRH340QueE3OD/1VrnG4vYNBy83kcFkTdBipe3j3nUsBSZoTaOgs9gDhAlf/qn7K1PrF
 ccNgxTWKq5byQofdhdkCQH2QIFXLQ6/Fl18fQndw3cSjCmkoPcZkqKdinfJIPLIeaB4+LDPIiuW
 ewtzleOdG1yjZ9m3OlJkdHE1nTSeyMENyZSr0ZuhenAVfLebsoOakxnENYyAUxLscr8UVAo6aQF
 BXemxECrdwsZOoWJJlq+yUz/oO3s0bSt1tLivZ2mOImaxLHVatvOR6djmJENISR0BGLQiIdmx1o
 7ZtdFW9QbkbTqiA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

As it is optional and no platform is actually using the secondary bus,
deprecate the qcom,bus-id property. For newer platforms that implement
SPMI PMIC ARB v7 in HW, the X1E80100 approach should be used.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb.yaml b/Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb.yaml
index f983b4af6db9..51daf1b847a9 100644
--- a/Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb.yaml
+++ b/Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb.yaml
@@ -92,6 +92,7 @@ properties:
     description: >
       SPMI bus instance. only applicable to PMIC arbiter version 7 and beyond.
       Supported values, 0 = primary bus, 1 = secondary bus
+    deprecated: true
 
 required:
   - compatible

-- 
2.34.1



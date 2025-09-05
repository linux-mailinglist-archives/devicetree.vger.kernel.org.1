Return-Path: <devicetree+bounces-213398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 384B3B454F9
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 12:42:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0AF0E1C86D82
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 10:43:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33C0530BBA2;
	Fri,  5 Sep 2025 10:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Q0hhARJK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D059130AACB
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 10:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757068870; cv=none; b=A/zEPzRDM/U84wedm/b4mKthis004jclKqo0mj4mbbkawgVtU59Pkbis1JU4NOvf1FjOuhAEIdDKE6Asm1kqCdF3idzqbgsAg5kVPJJrJ91q6gzYnNmJJemRxNIMknJvq7SU0rzfthNokijpXKAV0oSa2IAVSu/VtvyFppGqLPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757068870; c=relaxed/simple;
	bh=xEZQ2DP+0xmVOtTUyk0n7mNgFjGNQdkHGCz5TGjrLY0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=apJNQuedV6l9B72q24buxsmnn8tTgtOnH9q+vmEFQtVT2S/mvavEJuJrLxUjmNVyuYdKmTb/M/+gkBsA42P9HB/y6yEDSmTJewNuI/Wz4HxNKOjVJ5w0XUoPkyXcs0HQQ21SDHvEPkaEn3i4UqlzwaS7C2a+zYRkQJ8zS7fr5Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=Q0hhARJK; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45b9814efbcso21822395e9.0
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 03:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1757068866; x=1757673666; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I1rvQZQxLwmsRnPml37c1Lfi5R0CJr98kBiMU9gyfu8=;
        b=Q0hhARJKtDduuOM++E9K8JShdedFgklsuGWTdQ8S+72wPzMCiWwXFUFmFY2ioGS5S3
         1ApB3bKmcqftSDgwo264haM1Nh4HLbthC8muLPMPpzrOVwGg79YS3qArGvrZOEp26U2+
         sUiX0BSY7MA7RCsCJcAMp8nymUIZDZzyMo6poflCTQbHZJv0ahLBr4q33j79d1i0UZ3g
         jKpAO+7J+tB7fuh79PMK9hC0jtw+/hvEyoUXlBy4gAKbpEJOeJkIGREwxc1V4CRZ1LwI
         wceV15QnwEQgg4POUN+Wnm8tStou0bL1RjdXLlih+JB10FCQIc70pOuAd7pCRforHZC+
         amBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757068866; x=1757673666;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I1rvQZQxLwmsRnPml37c1Lfi5R0CJr98kBiMU9gyfu8=;
        b=vtvGOiXKHDkT+ctDP1oMAVYPiYRdp66NqZxpTLjy2MPXLvc+t8NiIdMNcsXjdtnElD
         46fk41M8i1bbIxGl4rX9U1JVPvDEJjHsv+suYGPeI87XV1Sr0bC58Ome7BIHeIFLIlab
         /GBGtbS8vmUgZbDX+Xc8g3zCp5phcicATixqvDx/ziBhfnGId1oU8ALnFEHw9k24dbst
         L2YgqNEDCrcpZiv+8PR5B9AbqYW4UWzYMFNSoE0G5YRDYUpN9xzZGdINAqGVIu4RnqeX
         cMz/LnNk3rzMUEifTDH+xeAG2nNb6DLZ8IYKLqfEPK9OiuBfV38jyykDywdGbS2+CCRC
         vYEw==
X-Forwarded-Encrypted: i=1; AJvYcCV0thu/Y+eanIsU85PU4xXtHJznW0+e7DwFlHAnGeBGJT97J/bkbvh4K4KezqIsJD5B/IzE0fL1NzG6@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4xNCQcitGUhc22wwkVSoTFy+5s5ugEfMLEKGkY97v81xHsnLj
	1mklbp3awR6Em/+luPe4xmOvU1T+P3T0FLr/sbLS02fBLUEG8eakHkeVPE8BvOaRf5s=
X-Gm-Gg: ASbGnctQ8sHBDz3P5orNjjwKda/mu+VB7yJ8P7O/cqVMf9hcIv8+85EG00Se2SC433r
	cH7ThYUnon8qOU3xtOjkvcnqkaNsGAuu0XQKZoBX9+BxdBbs9PkqjQ9vqAKzL59LECs6C/CsBza
	Jq8naM5NuOU8J7HE7zD8mfWA0YdWzoMACC7+0SS6Of9R5vunuQzpl6blKEXhMQLGVmhnbePqO7l
	r2cQAB+x19vLDdc17iopOf6RaO4aN41d7dF5Oyl7yp1UEdpEd82cmrdVVP/6chpHUMRqY4/OawI
	KXrkb0Lz+wayny31Ro4WKCLO0w300OKoLDl5huBZDZlJLKSPB+IBQrDW6noRKfOlJ/owHgJ8OHF
	h9+/4YYsxxAcrpS6Bq/qtfKa74LSj6OnOPg5n+gGz0+DRlaBdy5+OMmzGJCPnCSh161UG4Y0gZr
	VSTnJkHlCkD5Bxnk8VK9Umt8UoWaS/Nw==
X-Google-Smtp-Source: AGHT+IFIuk0QBVF+N8cmk094clxzhJ4H7q4AzYcSgacFq2+ob1IqwwEgeaHutExdzNR3cASZWiUeOQ==
X-Received: by 2002:a05:6000:288d:b0:3dc:15d2:ba9d with SMTP id ffacd0b85a97d-3e30463df0cmr2266019f8f.31.1757068866016;
        Fri, 05 Sep 2025 03:41:06 -0700 (PDT)
Received: from [172.18.170.139] (ip-185-104-138-158.ptr.icomera.net. [185.104.138.158])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d6cf485eb7sm20990738f8f.3.2025.09.05.03.41.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 03:41:05 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 05 Sep 2025 12:40:34 +0200
Subject: [PATCH v3 3/7] dt-bindings: qcom,pdc: document the Milos Power
 Domain Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250905-sm7635-fp6-initial-v3-3-0117c2eff1b7@fairphone.com>
References: <20250905-sm7635-fp6-initial-v3-0-0117c2eff1b7@fairphone.com>
In-Reply-To: <20250905-sm7635-fp6-initial-v3-0-0117c2eff1b7@fairphone.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Vinod Koul <vkoul@kernel.org>, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-crypto@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757068857; l=891;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=xEZQ2DP+0xmVOtTUyk0n7mNgFjGNQdkHGCz5TGjrLY0=;
 b=NjgjfvDq5UjS7i8ksrCpgumVPl316Un9DA2C5ULUSAe79FSyGV164Wjf6IlnP0bB3sye3THyL
 vPBrwd2qGQ4DqkyA8E2ISIlwJ///87lFFBwCUWBWF3YyR4N0p5Tq7p4
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the Power Domain Controller on the Milos SoC.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
index f06b40f88778929579ef9b3b3206f075e140ba96..3f90917a5a4dd9d068ec472565f5009690ea2c5b 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
@@ -26,6 +26,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,milos-pdc
           - qcom,qcs615-pdc
           - qcom,qcs8300-pdc
           - qcom,qdu1000-pdc

-- 
2.51.0



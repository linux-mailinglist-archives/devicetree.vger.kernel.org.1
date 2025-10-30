Return-Path: <devicetree+bounces-233104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6CFC1F1D6
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 09:53:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 77DF24249DA
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 08:52:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BB91340285;
	Thu, 30 Oct 2025 08:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LskEaLen"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB5333F369
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 08:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761814274; cv=none; b=u4qKyzUEzFmHNUSGIq2RnH36r8uefI0YFga2dpQ0Ev5QVattqEOhN+ep/1v87dNU64OVqzxuuznBVJb1drXkqv5I4xQnoRL9pOU+TTLzzp1rYsQKRhH3x4qpRL62xVJmv4ez2PG756mYv0y1ufb64aONfy5DUGeL2L5tDJQWw+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761814274; c=relaxed/simple;
	bh=7Dm1cKJIxCD/PBcbNfHJdeVdCA4kz8qIU6RUWVYBUeE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=s2ztEl1y9X70EdKZZxUY8cGnmD0yhQC4TPUatgaUBmqsXe3lEzF+GZyfLW5B4ZSPPLlTlLM+fOn4Ij7lakYC+cUQEr5CKdBzmdPhnxTRVIrT8yCLOWQpArkhVrEDrzrRO1qmenaq+W682CNgbtaATFprIm/UeZ/DfutU2cNIDkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LskEaLen; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b6d955816bdso13654766b.2
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 01:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761814270; x=1762419070; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yGHA5HRjs4Btsu0mCkOEE3FkhLAuwhnBzyAkRkBijfk=;
        b=LskEaLenQUr71oE/pAxyg2eIBeJIJXICRFgrv5+zdoJoxVpBDFKY9djm5hZAcxEcpD
         6P2sPrrkIVo8KqgB8ISPixNXtN3zU7icqK/r6YxkaOwgurFSFvHl49LxDKb60nB6jgpm
         5DaHtbI5UtdPos10t1uhECy6dhIVa4mMvzCVdtHC6qeTASBUeDFI0c+tMB51UCYgmxNX
         SJxMtb7ZkCYLjGypoVnbaE5VcERM7xi8hjsqFtPA707ukRA8An8xN+9TADONiTZywImp
         XcpN1QutqsuWeVkWcKgPuoSTWCKQezp5KMSfra94Fj/azD4pcrQdD1LFmzT4R288I75Y
         k9HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761814270; x=1762419070;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yGHA5HRjs4Btsu0mCkOEE3FkhLAuwhnBzyAkRkBijfk=;
        b=UNRVMhzRlif1BgqEWPEd1kVR+4DcbblEpr3+XBil4CUEXYNbIxm23MWLHW24DoEK4k
         H/cxXPta8qIiKn8m1f/VufETCdVwBz+yxDHnrOHWvixPB5Z3xITsQ0PWO3clgVGRwLOy
         5kaSjHx2gzgHwGhGukvmXGieOi39AuNnwmJPY4r3q4aO2aJJRTdQi3d7uNqHnLJaHkdM
         n90jhUaNr1Vw7n1+GBweDhDme3rDZ0X8RvXVSni/IoXou8MQ5aJROl+Px0aDK0Cu9mxW
         ArEBkzvNIgPrWJ/TQDiOYHHtJGmb8dat6g9mzBs6TbK8A8gDqgc+2b44yQ1WxOoj8rb9
         HuJg==
X-Forwarded-Encrypted: i=1; AJvYcCWpBzzX1DrmNtlzKX4aCr/MzDQudPsygkanttKmJOWx5DE/XCtgfc+wTQgkEVYoxqN11yBrOfGGMLcX@vger.kernel.org
X-Gm-Message-State: AOJu0YyDL6k330OYXH+1PfawTe3shKXyqdkDf4mdtOy1LYWvl1jYEkAQ
	sy5rBwGB81/Q8eEbrQNPQxhtsEo9rB/Mj/tsRvNR4ZgT5jInID3k66ze+KE3sOaEqYo=
X-Gm-Gg: ASbGncvZ/R6WZo+WQtyqsdlM8ayDQEDuH4ah8ai+3SU4TI7LkHBUjaXs5HRGzSCqgse
	dhTjHzXCQm/zKTZbTFw2dceuK7e1aKMxN8OsFFa7DxbNiDFrHB9Bkp33+XsJrFFA6KmvqqKEAoH
	yhNsO867USTrFh7Nd0Cn977kG/yqtwABAZCwfaRP0QCkG03a0z9mliFbIU8iuKkdY+yCLOnwbSb
	s96m8InfdCZtKC5A5h9yXCroE0TilniQgrBC3Df4g2+K4ooMc5NoYyvEd4/kb3tu2+M0EJH/EDL
	LJUqFqbt0M3pErxEimR0P/HdAmunbYmds+twiag1DLeOIJgZWhqU0Tnxn4gETf5om6rHjDr5kaW
	UAa/Xsy99hFNAwOKphH7UQL4bNCpQk2zCXvJJ72fclcgTb+8+In4Hwkp0eTMW8bQQRqoKzqUESF
	15znHVataOiHobm1jIhoyaoZ2+cQM=
X-Google-Smtp-Source: AGHT+IH/mWz4gaa43V4G0cLGkKq4gXdzHfDKioNJx2ktWDSidm7FFl89ySot8I+Qn9jHh97wmOXpzw==
X-Received: by 2002:a17:906:7947:b0:b6d:6d44:d255 with SMTP id a640c23a62f3a-b703d2c6e4bmr378066566b.1.1761814269434;
        Thu, 30 Oct 2025 01:51:09 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85ba3798sm1691789366b.39.2025.10.30.01.51.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 01:51:08 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 30 Oct 2025 09:50:47 +0100
Subject: [PATCH v2 4/9] dt-bindings: PCI: qcom,pcie-sm8150: Add missing
 required power-domains and resets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251030-dt-bindings-pci-qcom-fixes-power-domains-v2-4-28c1f11599fe@linaro.org>
References: <20251030-dt-bindings-pci-qcom-fixes-power-domains-v2-0-28c1f11599fe@linaro.org>
In-Reply-To: <20251030-dt-bindings-pci-qcom-fixes-power-domains-v2-0-28c1f11599fe@linaro.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1088;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=7Dm1cKJIxCD/PBcbNfHJdeVdCA4kz8qIU6RUWVYBUeE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpAybwIxU4aL729+DPoEzPQca7M7DtoSMVu4Fqa
 NrAKeo5OfOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQMm8AAKCRDBN2bmhouD
 15H3D/9drszJ1UWA+Vdu3l7QRe1xSGR4muez4M4jyPfT0Yv27pT9BfhQWdOAZYN/6QhgUq25rAu
 WbrTsdgq9yks8ef6W4h21oC8S/ul4nEecWjtCBAEllIyK8Jxih2P25XXi+1tvAGo++fczy7HjEb
 +sDTzjfj6V6RoU32ZAhPUVBq+depD5CJ7nZIY+mg1ZzkwOHcWmVZgcS6d8zDZD7oKW1hGSLtiyZ
 AioejUePVauqySfOpepPEqTe8XovBws4kyD29Zq0/Tw7qDmN2H4JD6tMDWe80SQx0tJG7K/sXpp
 mf6RRpwqh1/xFv3sdFjBKaUWttYVrcSmE0ewcGJMXDKaLfZynomh9wk2oeGhkPaAwvm4wbTsq6Y
 dZ7RLYTTqWYY1Dtb3jfw4HkM9ZoOn1vvGHIVRWlB3db2I5ZoI8t2IFJXpTYfeZ0vz0BKuxo4Ux0
 a+crlci/mQ3sLxlX0bO9R8B8HEm8tQdACckHMrtRcBhraM7yCZu3zVsfwQbtYldEdmySUkOAqfc
 3m+3ibYng8lbui9ZN+o9zdhwwv5CgoirBpf95FkDW+EDNhreXnKl7+zTzc5DX4skdYB7vveU7b2
 D61rRP7tRFNJDrUHeBoEhhO9zeF/y0CDigralwqkcx9poY25ndzPWmZMgNtPXwr5Ipt2+WuvhA2
 W89Q4QIsbhmODPg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Commit 51bc04d5b49d ("dt-bindings: PCI: qcom,pcie-sm8150: Move SM8150 to
dedicated schema") move the device schema to separate file, but it
missed a "if:not:...then:" clause in the original binding which was
requiring power-domains and resets for this particular chip.

Cc: <stable@vger.kernel.org>
Fixes: 51bc04d5b49d ("dt-bindings: PCI: qcom,pcie-sm8150: Move SM8150 to dedicated schema")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sm8150.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8150.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8150.yaml
index 26b247a41785..17c0d58af37c 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8150.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8150.yaml
@@ -74,6 +74,11 @@ properties:
     items:
       - const: pci
 
+required:
+  - power-domains
+  - resets
+  - reset-names
+
 allOf:
   - $ref: qcom,pcie-common.yaml#
 

-- 
2.48.1



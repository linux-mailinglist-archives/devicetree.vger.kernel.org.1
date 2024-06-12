Return-Path: <devicetree+bounces-75203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1038E905E16
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 23:59:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ACDA82867C8
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 21:59:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89EEB12C530;
	Wed, 12 Jun 2024 21:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n8yaKvTd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A947712C46D
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 21:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718229524; cv=none; b=ZpPz4c1Wq0/H4x1QWkgYBFq4cbENVrR2SJ0Tb5uyPZU3ce5EUmuENESyw9/iicY3bVLU8sNnjSd3b4rcQgfBKdA0hN8oehHCpdxf9tDnn9J56hRGd4FHBXyt7iJOWoWb3+FP6sagRCjCTfVzTfApvQRRv7hclDJGeYwFAiRBbYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718229524; c=relaxed/simple;
	bh=dRJQXpuNfWftb3W3qA3CUATXBvxdgS0HZjzKXC3BAjI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cwn/CuPiKUe+wmEonELOPEyHwUkEfbfkLRzqYnxTHNSXHZ9KPa1dwIQ5xXyAawpDAHiZL+V2MORXSGRRnS2wDCsvUiTX/uNaa7GzZMGD3uybj6JLLWg1NJsBOJWc9BKO9wD7zWrjB0rgn1jvt7NwkV/V62CK1QglV+8LZ7WaN4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n8yaKvTd; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-52c7f8a7d39so42588e87.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 14:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718229521; x=1718834321; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uTK6gLkmnGddWvLLwerXfzxCfdwuRIBphM6xZzGbtJk=;
        b=n8yaKvTdQWfDBCSpYMVpQodIJr7De4HVMOmnqsEmHSFYx7tD6GymcA9/HCvS/y5Qi+
         01SfvbFTAYDGsd1Wp6v2MdA7vmw+Rjg65hz+23ZfAxoWZ5H3d97xbGizsyWME/PiQ7ps
         AhCdvLALp8yjoEvHVbanZcxe0+YfzvAoDG9eFysTEin2NTYSAFfv/amnAlxt7Ylgb2vL
         gNJTelFxgNqFH1dwwkw6BzAiHadmxP2RZnq2oudLxTEfOjJjXPGr9EfZGce+zTsmeHv1
         7JoIM6Wr5agmWLcqMVik5xyTNgK4KskKXuR9pSw7RyudA1Dha6TCswgnW9ARodg4zW7B
         g1bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718229521; x=1718834321;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uTK6gLkmnGddWvLLwerXfzxCfdwuRIBphM6xZzGbtJk=;
        b=oooiRAviw1kRB6HO7s69UxcJ/xQWrtg8q2bBSzgJz7xLNdK/SLjgKYj17/1hPFR26H
         uo1Z/ZNKM/7qY9yYi9g3ISNvPQ8kAG2yUHvnn/xIhbe8eyw6Q5b1a91eAtdsHqB+zt2N
         9+KSWtocC0cZGz8TstFth8Zvh4v/CuRKtmEu6FuQRqs11Anc05SO1iODXyGLi0VXEke/
         kE2UckCy0VV9vGZaZRfwWgeEryR/TS9oYwng5WyPET1QRzUuPUxJNqQlfTkt945y0iKR
         qHohf+jxCREriJc1HiO8uTYo6LhgJ1GINjmpvndrKmKsDLfJAaBLyImmIeoo1zSNxWC2
         FO2g==
X-Forwarded-Encrypted: i=1; AJvYcCW+8fRm24lMBnIbx0bQbYkVgV4VSeKGwEWGYY9QzoD6LMr5Z1PTCjSE+ay6GdKQNalK9UBkM88dEAsL@vger.kernel.org
X-Gm-Message-State: AOJu0YwCTNDLun9+p2H6OnSZq7UN1ilQm2HYH7367LSFUVQO5VTtIwSm
	sZXDSYIhmKbMLjVDeuMyY02BCyAb1w/64Qg8B3g34+wPGqPAL7tkaTm27gckkT8=
X-Google-Smtp-Source: AGHT+IG/aN6wF79yyV7Ie1QQm2qTQp9x/TOQZ7woUzJoZUWa8PGBe23IueN4ExTkqQzlZTDdsblnEw==
X-Received: by 2002:a2e:2ac3:0:b0:2eb:da20:7b3f with SMTP id 38308e7fff4ca-2ebfc8e5aa2mr18922201fa.1.1718229520971;
        Wed, 12 Jun 2024 14:58:40 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec05c179c5sm57011fa.67.2024.06.12.14.58.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 14:58:40 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jagadeesh Kona <quic_jkona@quicinc.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Loic Poulain <loic.poulain@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-i2c@vger.kernel.org
Subject: [PATCH v2 2/4] dt-bindings: i2c: qcom-cci: Document sm8650 compatible
Date: Thu, 13 Jun 2024 00:58:33 +0300
Message-Id: <20240612215835.1149199-3-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20240612215835.1149199-1-vladimir.zapolskiy@linaro.org>
References: <20240612215835.1149199-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add sm8650 compatible consistent with CAMSS CCI interfaces.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index e5c4b20446b6..c33ae7b63b84 100644
--- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
+++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
@@ -32,6 +32,7 @@ properties:
               - qcom,sm8250-cci
               - qcom,sm8450-cci
               - qcom,sm8550-cci
+              - qcom,sm8650-cci
           - const: qcom,msm8996-cci # CCI v2
 
   "#address-cells":
@@ -202,6 +203,7 @@ allOf:
           contains:
             enum:
               - qcom,sm8550-cci
+              - qcom,sm8650-cci
     then:
       properties:
         clocks:
-- 
2.33.0



Return-Path: <devicetree+bounces-167361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 787FCA8A080
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 16:04:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2EE981701AB
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 14:04:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1FCA1FC7F1;
	Tue, 15 Apr 2025 14:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G9Dq7qdT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D09161F4627
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 14:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744725834; cv=none; b=NEq+0zdSlMBzPMpcbPZ9CjaUj3iHfwIjTC/EEvYDraSeyUdBPcc92U0sZbsYGHUG3vjRguQDAKG3fiwTbdLxJmgFazDbj33pJ/dRxP3OdzcA1zIkdzQDaQTKrCzHis7NgTxcu0/3P1NhiftJn2w0/lBuOBn0twQodgYDb1il0cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744725834; c=relaxed/simple;
	bh=+pO3AVN/aeyYjGs/uvZL9/pMlGhMaUlro2tVrwsvVAM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hgiC0OqXY0pHqcJhucY1msh8pWyHiH8fazQURyYK3yE41GohfLeg0+lw2OTEaplYCCkTOqYUgqdMVNOJxvLOus9ZnprWk2xJnsX3CDy2qFF/KmUv+EiuELbcR+uC9+56fazHJI/e/6xZ43k/0TMSAPUypCwvuFOX7939txtxB2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=G9Dq7qdT; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-39c0dfba946so4093865f8f.3
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 07:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744725831; x=1745330631; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q95IvwcYDw3qW8njoHdtEvuzlSDB0gpbkfP8uQLrrTY=;
        b=G9Dq7qdTtj+9ILZH40N6d7BVjpFgGlkor+pfJbGGXWIrP0aMVOLCjtZ20TnB/5bFYY
         SdB1c3p4IImssY77rv3oY4pORbKs1pBE3x58RkPrnra7BvKbdFJR8VoUdhVeLsIcJJfd
         BpOjkestkbd9/PgwJQf16gmWKij+xEh4sgtjhv1GEyY4wL5l9lgU109Lj4EGFITOSzS7
         6bCqwuX4YNhRUFF90HB/CsHdkH5FE5jIlB0f7xuctOs0RisXCO5/rAbaPyYkBrbUAuFc
         xUHRV25sTT0yNC/athYP8Wd0KX/46bWQQFm912/aQZStEOW8FAQc5aUNdBbEgF+/NNZ0
         gL9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744725831; x=1745330631;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q95IvwcYDw3qW8njoHdtEvuzlSDB0gpbkfP8uQLrrTY=;
        b=jhb9kJrmUV3xc37FchkMXTe+59NzeA8AI1F+qxz1zGU9t5JXN/Zxd4afcMFbFEQvBE
         DPmGSbyPuT7/EaCj2mm8KZuje+tQ0bprDyXnqJMQIaxkHYnrwg/BVq0rsmh+hEPv1tIm
         sVpLk1CnXsAPy8NXzfNBjboDe87AQu6qyRnH73oKcVQTGncvmBnh6I2aEyWCYXQkRN++
         RT6kxb0NYWLdKBfPuNh9hPa7ICUr9YqFfsfO51URNVQSD80kNWT6S4QCnJh/FHqyG6eb
         SD61YgSZ1GSTIRsECcomRppONhaq2Pfu44VqenMnrBAS6pIv8BAtnvzsRKGtjfpe1A1d
         4/OA==
X-Forwarded-Encrypted: i=1; AJvYcCXYBJSB58PJ3UbLaUweqtgpZsb8DvuPXlf0gTyg/3hSlgI9S+xzJYdjVAeWJMT2iRdwVZwrrtZbWcf8@vger.kernel.org
X-Gm-Message-State: AOJu0YxnCZdmiJIqhvWZX31p2u3FbOPzyS1tFAIRua6xRhEvhsEq/CcL
	TvUdoXr4dx0X3M5uQwjbMfGJgqqr2wj3pQZpxCyioIeGPepw44HzaEiohnRFV4Y=
X-Gm-Gg: ASbGncv+p1GoHXlOmqoLE/1noKlgb2Qi/rBM2czP5KDzA4eSU4V40kPim4nUYQz4DSQ
	S0m0JBg4K9rYYRdj4HYCgE+JG+prVc+Nc0N28/7u5ZPL7u2lfpxGpqF9ZfUMRqheUhn1CCkvT88
	z+KlGpag5DAhcDqpjablPDPf42N2HL+/TVIZScp3uqdYgeiuAxQYZA/fUekdpCXMgOj47jriJRA
	ypCFahdOlUtmmjFfLhbeAlBf13YrDWrb78kP96x0YNcSkAXYtsHNyJLZ7immz5RudaoEgabCVTP
	yyY1+Z54npR7itUVQ4sQHruHGezZCDTXfM3JWUjLU2iS6qkd4MCThSPxHUknY0ohR2dmBIH+
X-Google-Smtp-Source: AGHT+IGi/ESeerSQ2DGJb+UnnMQR30IonApFkItZ2Dh6XzmHMLQt1Aw87lW6Udmaph1B5TLutLSY2A==
X-Received: by 2002:a05:6000:430a:b0:39c:1257:c96c with SMTP id ffacd0b85a97d-39eaaecd7cemr13341716f8f.56.1744725830935;
        Tue, 15 Apr 2025 07:03:50 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f206332d9sm210480765e9.13.2025.04.15.07.03.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 07:03:50 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 15 Apr 2025 16:03:47 +0200
Subject: [PATCH 1/2] dt-bindings: interconnect: sm8650: document the
 MASTER_APSS_NOC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250415-topic-sm8650-upstream-icc-apss-noc-v1-1-9e6bea3943d8@linaro.org>
References: <20250415-topic-sm8650-upstream-icc-apss-noc-v1-0-9e6bea3943d8@linaro.org>
In-Reply-To: <20250415-topic-sm8650-upstream-icc-apss-noc-v1-0-9e6bea3943d8@linaro.org>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=755;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=+pO3AVN/aeyYjGs/uvZL9/pMlGhMaUlro2tVrwsvVAM=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBn/mdEAzYk06meqRmEKdkOkx1Ei6+UXDzusTOmUEMI
 fm5qt7CJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ/5nRAAKCRB33NvayMhJ0UF1EA
 DITfk6b+D9ankrJUBkpb1zN/U0dvdlXISKYPjoRDZxS5kGibAEkWtWYrCD3ABoho8WtHpQAUkdUUtK
 0YmdSlRKDE/FQWQ9o6c/FRMTEjW/FGKavu253rCPi6k614UmpL9WEEBJay/35clfza7B9KgUarPJvT
 5wesQvQ137/8uM5zVlAUd/zPAdfYkVeDagOobGwJ2xIrmTGJ8nxZaoCBCaZzszoMu8vuuvkR+1XpOL
 P88vvR1GTsIbOar78B7rmDm+5VqrYpPuLsbr+jGmJ5aHRdp/KdR7hQ4QYE90RS0g9b4MV8WIYH7w9S
 8G2VLXFyt1HR6Qkg+T0S+Em6iweK3DXPT75drPsApXJqgneAIo4vprNBhsyQhfL+gnvQTXKi0XX9Q+
 cT7VG10wDckvOXwMeCVmSZSsJ34eVe2uooN+1sApfB3LH+JD69pd+V31TAdeeHOAGeGY4kko9WaabI
 Z6FiQLT3NVQ3YJeUTx77Gj4279k6jbxBa3XoADLBeZm8aFyuWIHsS50BEi03tpQ75LkQ9U3fTuHd/f
 BcjP6uFIjYULZtQmxBzb0r7MXvRTlEM6LIGXV3y0puiAmDj4ZQK1NbBf1ZGFb3GatuUHHQf8GKrJxj
 qzKxmCb2/MQnPeEehYUMccWBr74ExlzZjPuxyW7BkvQCqV+rKFnNs+qjkc+A==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the MASTER_APSS_NOC interconnect node for the SM8650
SoC system NoC.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 include/dt-bindings/interconnect/qcom,sm8650-rpmh.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/interconnect/qcom,sm8650-rpmh.h b/include/dt-bindings/interconnect/qcom,sm8650-rpmh.h
index 6c1eaf04e24103c9b82ff28811c058e5203c4079..1216aa352d55e095a9cdbd45102725768b01e78f 100644
--- a/include/dt-bindings/interconnect/qcom,sm8650-rpmh.h
+++ b/include/dt-bindings/interconnect/qcom,sm8650-rpmh.h
@@ -150,5 +150,6 @@
 #define MASTER_A1NOC_SNOC			0
 #define MASTER_A2NOC_SNOC			1
 #define SLAVE_SNOC_GEM_NOC_SF			2
+#define MASTER_APSS_NOC				3
 
 #endif

-- 
2.34.1



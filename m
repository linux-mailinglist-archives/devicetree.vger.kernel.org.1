Return-Path: <devicetree+bounces-60408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 841F98A935A
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 08:44:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3899E1F21C15
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 06:44:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3699538FB9;
	Thu, 18 Apr 2024 06:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Yn6qPEkC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746B42D03B
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 06:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713422669; cv=none; b=f5ghglCi6j0+W5YxqTHJCaDq4sRCtMHeTjr+ETfh1FSnX4wK6GMi4SRRqjAtRMvpV1we/veQdUoFnv7hRlN1fJnv5UGJeZOQngbhta0JnwC4QwC5aoFZJRgetpPWuQFZ1F0CZxhoFWXxnuLnUdKo7JXbDn+pFfzmtp2BOpwVCDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713422669; c=relaxed/simple;
	bh=r8vctPywC1RRJmAROhjpIk4v3tiP0vu7hQUd52hivdc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=S/xxo4NqdYOG/UZECB8I5PWWWuhmcxO4cT0WUt6KSakeFFxIJLzXWtguyKEyIkkXXjOf6ymylbf/w59RXlEP4u7ohL3SYB+okF4Zh1C1HytSgKipTomzVGCrAgWOFSu/+J3AyUpYEESgurR/A7mffa8ozyk1a46aZuVUgpVwXPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Yn6qPEkC; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-518a56cdc03so510447e87.1
        for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 23:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713422665; x=1714027465; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uPKZ8QFhMImI1wA5rRFXaLeujd6fvl8+1/Yti/zr/2U=;
        b=Yn6qPEkCL0n+JR/QKj/Fws+/qcHZTETVCJFvct7aHKUN/GREsrHX492sr5fFSK3pu4
         vDllmCxMr5Esd/4PutnQMq+2bXnElYA5685Epq7fX2CZ/QGyUUcB3LdlyUFo3EXc1NWj
         wj3mQ7q8EUFnnIQN/u8hq7+XwKvnXKtXQLu+vNc62nfPVdVTuOQVlhDsrWNm7jwTciXm
         4qOF0c0RysUfKCsrYpVtqxqlO1uipF8NzUOY30qu+9UO07+NytmmxJ7HOQJLCmUCgjqF
         vQbxCtIU3DFUPb7XB8lcvvA2GLTh9fnEjY6FUM3L/pFbIbt5jN4EClWpJjsu9AXzWHaM
         uGgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713422665; x=1714027465;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uPKZ8QFhMImI1wA5rRFXaLeujd6fvl8+1/Yti/zr/2U=;
        b=Dzui9kTggZAzjmdyh750/7ZsBao2tDYR2C2WZZXNO+Dk8ERcuzyy0cSsMftreOydeK
         SGQK6+o+MpB/XV35MBe7vpW+Rj/UUC4ax+2wRzmM+0QR3/U2NDfcKB6gBiMJpCOH2KHS
         JcLuq28xlxt+DZLM9u2WY7UwQeUPcegT9+MbxPplnz2HJK687H19QKyNW9vR/32J0xq3
         4wlN/1G+AUR+qbpFuqy8Jf07V6U2s6zCdfV0+zzhKIwUnKNEYqyOYEjYe/UjG6f2IKI1
         oXZ4NkvUsffl3sfioUYQnJsbx4POoCmEm9A+mGJMzECVoHoYRz1V0oIbe2kkrRo2cTqo
         zDsg==
X-Forwarded-Encrypted: i=1; AJvYcCXF4+zsCirFUmTegEswsdNe3CwEaJRMMNSCa/FgvrhyiIUup+5dTg7SG1i0Sgie1qFLXq41TSJ5XSvXbcPkp/qZMT4zbQEJTNip8g==
X-Gm-Message-State: AOJu0YzzFQR7UU/WM890rdFSQd+CPOTd6+5RRq80zrOPZc1/qBiOQGWw
	AIetor6UyQ/Eyx6WSmqovi382qQaWfk5K8yOLVOvXANHx34FKDnLQhlYQy3oIN0=
X-Google-Smtp-Source: AGHT+IEnK8YkU1ecg1o+dm7jL6v0xr4B8aLJtBG+JY83K6r0i9OXopsiOKioEk5iCJu7L7rkckqELw==
X-Received: by 2002:ac2:532c:0:b0:516:d47d:34b9 with SMTP id f12-20020ac2532c000000b00516d47d34b9mr735096lfh.22.1713422665597;
        Wed, 17 Apr 2024 23:44:25 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id b9-20020a0565120b8900b0051898448680sm122122lfv.261.2024.04.17.23.44.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Apr 2024 23:44:25 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 18 Apr 2024 09:44:20 +0300
Subject: [PATCH v2 1/3] dt-bindings: remoteproc: qcom,msm8996-mss-pil:
 allow glink-edge on msm8996
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240418-msm8996-remoteproc-v2-1-b9ae852bf6bc@linaro.org>
References: <20240418-msm8996-remoteproc-v2-0-b9ae852bf6bc@linaro.org>
In-Reply-To: <20240418-msm8996-remoteproc-v2-0-b9ae852bf6bc@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=884;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=r8vctPywC1RRJmAROhjpIk4v3tiP0vu7hQUd52hivdc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmIMFHOeh8LlJA/puCaIkycWfl0p1SAytWtnOqf
 RH9qDDgaPmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZiDBRwAKCRCLPIo+Aiko
 1U1WB/46AaP97EKEBNJsFDTV8BfBF5yZ3TnTjKNlSIZ3aoRZUxV2CeXMKWgbpNnN2jZaslQq5cq
 pl9NGk6JlONs6wu1RWjbSJkXOSxw1l8xptZD89jWbgGD68wMWiDlURxusEKec+T9BnyQUM39URC
 w6uFNK+VR4SIOhkl57ojxqLxoQ3quCIAefjcabU8Y6iJ+5syG9KK5nFm0BXjyNDGBNU22e2BKWW
 e+3SSI3iON2I5ij1plb3eIE0kdk/eHEWQDCWZvWPwtPUNef+whAkDqUDFBbq1t80dJlGxXPFi+M
 gzp2c6Dj6rSg3EuwrVPcmB8DtgGrMQUGeKOxlL8mTCG6tnFQ
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

MSM8996 has limited glink support, allow glink-edge node on MSM8996
platform.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml
index 971734085d51..4d2055f283ac 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml
@@ -231,7 +231,6 @@ allOf:
             - const: snoc_axi
             - const: mnoc_axi
             - const: qdss
-        glink-edge: false
       required:
         - pll-supply
         - smd-edge

-- 
2.39.2



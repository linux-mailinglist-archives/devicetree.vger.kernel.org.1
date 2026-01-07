Return-Path: <devicetree+bounces-252216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D513CFC810
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 09:06:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0AB353024261
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 08:06:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AE9D287253;
	Wed,  7 Jan 2026 08:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="yOUquAeM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29283283CA3
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 08:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767773181; cv=none; b=B/clWqSpjhhMgipQbyZW7cxRrBr3/S46ZfO45IHDlhWQHoZekeLBYkRRH7bjgKg3Go2wHmNiRiNsikR2sUvxR8f42kjx8gIopiszuqWwOcCGTc37d+pZsMeKwSIC1FatGZ9MOyFA43VGAD8peQ01dUtaIYXkiEtAufYpd3t6qdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767773181; c=relaxed/simple;
	bh=L7zFGJrpp7R/1SPywgnVmhsEuokhe1Ahx7lfge1c7Lo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dXXvpin/sKHWFcKlLBjUz0t+W7rnWGbzRLAEEjwkpVe9l5I9EV4BevwrboLRMFQM7b6M90XYAs3/2uiD7T1tmiAflNyP+ask7Mn3ssdaL0K1Vc6WUhxTDSc5ZYRCRdSQxGTwJpIWAYjwiKgWwEEfbjClwDswMViJFCqJoGLJBBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=yOUquAeM; arc=none smtp.client-ip=209.85.208.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f65.google.com with SMTP id 4fb4d7f45d1cf-64b7a38f07eso2672938a12.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 00:06:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1767773174; x=1768377974; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UL8Q3N/uuYGWCPQc/j4tS88zUzpRBU6RKL22PZGfA+c=;
        b=yOUquAeMLkJU6uZY0YiZ34jH0yuh/C6Zw6cOkDeHep9aB4S6ONvm3ntE4MsenvHf//
         eWAAipHCFEUecfM6GQ7KccmGJT/i+S3SZB2ORrr0MrzRLamvqRhCMOYfl5SC/spxYPIb
         bjuEAumSmu4PUBVtcblX+DB2+QQbbUDbbkkheXTOHS85B+Bum3MGSBdPV4rDEs4UNqL+
         Nyb3TaepcMTp0+XnM/2yL0EATTYa7spQCflMjfhLn9mp8XYceVqWNkGKBoto635yJqxf
         it3Yrd7wOz0W/+chFFPNVKEI+2Gd6suS9cVe0emF2I8YnnrJhLvQ5i50L4d5qCtfTHwH
         1Ieg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767773174; x=1768377974;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UL8Q3N/uuYGWCPQc/j4tS88zUzpRBU6RKL22PZGfA+c=;
        b=YmdjLbxaXbKcKNJ4xQn5AzZaEZ3NXTN//IZP5V5Uc34UzJBy5Xdmraw3IVLxGzhD6K
         MTyT8fRnEN6iKRrwioOFMLfkCni4OwEFZiUNEBQUFjBKtyVrIsAIepKfJYWgwbP2I1jK
         cu6QwBQd9RDjyAJ6zGVYxUSvOm+R8ZE5Tfnvqcda1AOEXOLq6kN4vbV6hCBd/j5jJ8R0
         FzNh90MvijZd3/hzaGfmvVbW1F5qE365SPNzqLJ8tcyLC565n4tjWmWfE+vZeDvATGU0
         e89r6ll2G+tnqsE9C0sKpmbVH9FZ1N0rplSNoCIXJtPyDFSmH09ORlKubdCwEu2fevty
         TklA==
X-Forwarded-Encrypted: i=1; AJvYcCUDkTIe+u4djt7dVvnSyBEBVd1BucNG9dIhau1YzWMYzdzS55KfDFV8io0Vt/BFH8Tir6qXJjcpFs3b@vger.kernel.org
X-Gm-Message-State: AOJu0YzT9SYS5ZkO+mFLiRQSfkOYarrEDbvZrCC6nWJKe6kg5v7UkEQd
	+3Vtaq2MPpGTA8ksFHf1KFAs+yNhzs3XP0ytbiiWkQ5QQhfS7sO+LPo3159wcdCEdWU=
X-Gm-Gg: AY/fxX4GvT7XNLMEHbotsL+bj3HXQWsDOWNi1zf6ve87a/FbndK4baTazaQa2kz75om
	EJiaowEJ7FQ0QzHYJIzxzTI201nzOofyQIIcuRmbpz0QkRHJWIng3ys+4Hugfg5ae9AhqO2Tmec
	OJUOjofPsuobDyHNpm5uTNH6d56zI9r9vm0X3gjQTxKDMWL3ge0hUBF6kLKnRGv/Lw+NFgEW3Bk
	G4RPYhgna8I/wRG5N4pymOkkt44RxijZbWyB+agY32Ww06BLpbO1sjMCRWRFRVbfLcmLJT8dnPr
	mFbU73yptFZTyOIzqHn/r6SlLuX6IeD7CzMRrIspEN7mn3k20uapRt235OzaGxf9Qp4wd5mHJqh
	CcndfsYfPrxj8xSEW8FxjUc0eB1i8dVnr1vq3YNYHW5T8vXesQRdJXSIj7GSHhkV0+PQzqBZhYa
	7R6DETaoalvgBEvmu24BZGOyBR6A==
X-Google-Smtp-Source: AGHT+IGoNwL2Ad4Wf5/kMZtYwloqDC2nclTMDNUXOI6+OkN3PNK9lgubRfkIS9pWfU3l7el4uXNpgA==
X-Received: by 2002:a05:6402:1461:b0:64b:63f3:d9ac with SMTP id 4fb4d7f45d1cf-65097e50cf1mr1240312a12.21.1767773173934;
        Wed, 07 Jan 2026 00:06:13 -0800 (PST)
Received: from [192.168.224.78] ([213.208.157.247])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d5absm3941299a12.33.2026.01.07.00.06.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 00:06:13 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 07 Jan 2026 09:05:53 +0100
Subject: [PATCH 3/6] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: document
 the Milos QMP UFS PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260107-milos-ufs-v1-3-6982ab20d0ac@fairphone.com>
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
In-Reply-To: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767773155; l=1131;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=L7zFGJrpp7R/1SPywgnVmhsEuokhe1Ahx7lfge1c7Lo=;
 b=Fe5DRXgl1tVzMTAcH+EEUjx+bRFHCdB8IT+CJt8zvyJkZSSz/OKPkBx4UBM89cvHuO6GsOvMZ
 RcQEkaJMVezCF+L8auF0yI4aw/Rt9ht6yq2/Dx/32t723EUyu9KDJbr
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the QMP UFS PHY on the Milos SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index fba7b2549dde..0b59b21b024c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -29,6 +29,7 @@ properties:
               - qcom,kaanapali-qmp-ufs-phy
           - const: qcom,sm8750-qmp-ufs-phy
       - enum:
+          - qcom,milos-qmp-ufs-phy
           - qcom,msm8996-qmp-ufs-phy
           - qcom,msm8998-qmp-ufs-phy
           - qcom,sa8775p-qmp-ufs-phy
@@ -98,6 +99,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,milos-qmp-ufs-phy
               - qcom,msm8998-qmp-ufs-phy
               - qcom,sa8775p-qmp-ufs-phy
               - qcom,sc7180-qmp-ufs-phy

-- 
2.52.0



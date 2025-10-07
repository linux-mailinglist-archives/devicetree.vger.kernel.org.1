Return-Path: <devicetree+bounces-224242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 322FEBC2004
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 17:56:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 232F04EED6E
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 15:56:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C65F72E6CBE;
	Tue,  7 Oct 2025 15:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sdKVsF38"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F053B2E1758
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 15:56:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759852594; cv=none; b=A5xNcxQUMA5bwqw54Fus3b5n6vlaopIWzmgsoKHRyXaNd/UxKEVBLH+6fiGa+5z8D2G4s1DGeq3QcD6a9g76BQPyvrjoKZdLkIpXiAq0kmsy5l5WFAyQLQ/JjWXx3QjY7O10AV6haY4OKAYS7K78ytaCyqJm3aE9/dD98tEGmPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759852594; c=relaxed/simple;
	bh=2PS1aw7dfUT0k1FWYcqJDnEg5AxccGVN6SkNj7bMjuk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=M3rCZ78sQhWsQG7w2wXekVj+i6rtqdX3q5lJEXaOSlwTnoo5XZTuA0/pDP24SaCMubRrkXzwElT7mNq/cabzN2gBA+ZrUm8fvYGjbLKiGg4gUtDwYXjxyhhSjYCG42F/dknVdOhKy2a0rI6OMrfRsraiOiDQ4YZxy35HPuhxuE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sdKVsF38; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-afcb78ead12so1166150966b.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 08:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759852590; x=1760457390; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9iDWqoWfueHqY1DQn3UROh93hmAu+K7Xh14JdQEHAgE=;
        b=sdKVsF38Ma7o1AOyikRtEwA8eImsPDpkB88ySDa1JN8y0c30RaLgBb5bhN+5FI85ti
         eid11Q6jko2Gv/gnNGDDbfKYA7po0Hu02nS+DifzwG3HT11aiXAiYBY/FSICZYkqhHwN
         KMbpeBB423fyJyYPmf7PJ/SzLNARdv+xGpbvfxjOZKPrcBDTevX3/YMcQwQDvuhv9Znm
         jcaL9OoWC/u73gzA1Oh3DK7IdNmaUSoU78mRulf7w6zFijzgyZrDlhSAl6a2Q/uhEKMA
         2TE1C3QmlggFORyvVCovJ+/1X19B/NDcfBlfyhBX9gsbYmqBJathGLvTmU2XNxzVGh62
         RhoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759852590; x=1760457390;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9iDWqoWfueHqY1DQn3UROh93hmAu+K7Xh14JdQEHAgE=;
        b=oXuAVoDX/ccP+Dz6Qy2fvx9mc1yTNM8uLc6zh9sCPd4F//xsN8yiLKQLtwa4sm5/lb
         mRGsHu2sXybL+f8POqF1C2gOtb64WxVR5dx3jVhF6eY6V9BvMVa6fNIKt02jnCSArJew
         vhiEOoOVPEzWvKPeT30FeuqZ30Rx00KAwOz+24DiA7KFjYw78j9UQhFm1Dj5v6ei04ID
         dl0sIzJowd6f20lnFkpcABEEwXX5cDjPFqubv0zpEEeFwkrZZLh+eRe1SUYizHtt/Lvc
         VaX/4MalmiQCvWSGi7Y+MAJcwHFIIMgMGLBExa0dMks9yCqAWULKHZmfd5EKMP8ubCv5
         F2Fw==
X-Forwarded-Encrypted: i=1; AJvYcCVu/lpSEbgLaoCcVogDc5xVXE44bWbpfumy7b2UEHR0oeuZNTHiA8IE/QjDOM5WkZNVZmYWLuDHgnwo@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0/00MQMAe11TySGdLEmpyLTim46hYS5GpmLJGEzeUdWEAUQNZ
	4X5gI3hg4MMMoh31imMqIkTyeoUVTQeRqngUccUzgHh8lxHJpzLW5KO/S75l86h03cU=
X-Gm-Gg: ASbGnct58gUMYyaoACc2Nmow80y+0tZ9SLOBP8qg8i3sts7JAO+g4usRU/WN6vExm5Q
	IKRz3bvrHdujApXeV6pXtPFqobgF1emAVpX5nnQSPuQeIOTpgr9shPDYzATEx3zWo+WCll7/4fu
	ziMUfPE8IwSGMx39GIyzzUHpw2afD07a/h40VWa+5PWwOINlCx+oVfBgZnZBpL6jNNvqLEJhnLa
	0gOEmb5tq67qhZ9Ik8zxCR2BkjWhdlk99yrHoXhJUggd740DkH2tUiftfdHBC4n5MxT7n82h9u8
	vCJGCA4ySMHmSeMXFv44bYdQztyRM8mYOAJplVozuQUKeGFOqTJMiqqRSPKGpvjdHAX2dU7SzHV
	iRVv/Stl1VWD1wK+IG6eQ1RJW46F138RH5vtjfdzi2DEegjeXrlW4mq3+DLpjadhZvHwjopgMB/
	KGPw27V/CL0ZycCdknO7zSYJrQqEwVooyIWVjdf/Wl
X-Google-Smtp-Source: AGHT+IE9IcJVSPedWcpAGpdnmJW4z9APNCOE9dq2vD2s6GXK/hxjPEw6IveEriVdGAIUqOpPhoFZSg==
X-Received: by 2002:a17:907:934a:b0:b48:730:dbb3 with SMTP id a640c23a62f3a-b50ac1cc3eemr13165366b.32.1759852589395;
        Tue, 07 Oct 2025 08:56:29 -0700 (PDT)
Received: from puffmais2.c.googlers.com (224.138.204.35.bc.googleusercontent.com. [35.204.138.224])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486a173a5dsm1428820166b.85.2025.10.07.08.56.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 08:56:29 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 07 Oct 2025 16:56:28 +0100
Subject: [PATCH] scsi: ufs: dt-bindings: exynos: add power-domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251007-power-domains-scsi-ufs-dt-bindings-exynos-v1-1-1acfa81a887a@linaro.org>
X-B4-Tracking: v=1; b=H4sIACs45WgC/x3NPQ6DMAxA4asgz7UUoBVVr4I6kNihHuqgmF8h7
 t6o47e8d4JxFjZ4VSdkXsUkaUF9qyB8Bh0ZhYqhcc2jdq7DKW2ckdJ3EDW0YIJLNKQZvSiJjoa
 8H5oMnx21HLxv491D6U2Zo+z/V/++rh/PMByuewAAAA==
X-Change-ID: 20251007-power-domains-scsi-ufs-dt-bindings-exynos-87d3ecbb3f4b
To: Alim Akhtar <alim.akhtar@samsung.com>, 
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-scsi@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

The UFS controller can be part of a power domain, so we need to allow
the relevant property 'power-domains'.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
index b4e744ebffd10aa237e01a675039f173e29c888a..a7eb7ad85a94e588473eab896e48934cd5f72313 100644
--- a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
@@ -61,6 +61,9 @@ properties:
   phy-names:
     const: ufs-phy
 
+  power-domains:
+    maxItems: 1
+
   samsung,sysreg:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     items:

---
base-commit: 3b9b1f8df454caa453c7fb07689064edb2eda90a
change-id: 20251007-power-domains-scsi-ufs-dt-bindings-exynos-87d3ecbb3f4b

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>



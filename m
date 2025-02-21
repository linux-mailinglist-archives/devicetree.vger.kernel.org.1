Return-Path: <devicetree+bounces-149503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4A8A3FA82
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 17:15:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D7B1E441AD2
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:09:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 122951FFC6F;
	Fri, 21 Feb 2025 16:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DtksPI8d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA6021FF7B4
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 16:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740153791; cv=none; b=kTn9JK/cd/zu6jy0Kt4uP667Wb6d2QtpndUIP4gsKfZKhUcvVdEcTI1yNcm4VqWFEMWAnVNJPtTv74CNkcyTG52WF1ncFCmnKzaY2ULcgSz7ueYHeiVLxRm2sEIk5/wExeOVvMdUIEykyRxQJrsSDqX/n2W5TSKivJr/+o74tB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740153791; c=relaxed/simple;
	bh=jNpVKLpJOZImpyW3PpLBE59YQPImFyESp7Aep3FgeYc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tLr4d2oEFWQ6Q9x4TZrgzaDPX/cd75x5MRK9KF0t1IZUBb9+r2zitrI0E+1fFZ0gp1dLv+3PzHuomFn8HIKW7f7rSqhEqFWB1NcDCTJwjdVjOquWDGGnAgxHNU++fFpnfFDzZhHEDOejANF1oX+FPDHKOAdHIf40fl8P1atJ/eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DtksPI8d; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5ded7cb613eso394455a12.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 08:03:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740153787; x=1740758587; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4OXcF/TG2PCFERI1SWimzKBOweiSs1ZB9MJg92lP4jc=;
        b=DtksPI8dHyXYI3s8/lSvEydMFfe1Ml0RKpZXT9qDgs/XJbs+PrPqJzY5eEQljcQ1yq
         jkIpdnxGsPPsDxaLEK8t3ylKrCX2nJuuhcuPj8YYyFaTYR/+vU5ylpUaVN76ck+KBx+A
         fAzUfz7YESVaN7xCiDUNZ2pCB8Epg7QelzWians6hJUKJN0ezGNcA2eE/cOKctmmd7te
         0o0Cz/vNUoBdmG/LXzcjtJuYZcCzh7MAcWajWtjkD6rbTBT9M6HqUlsb53eAdkI8jFoN
         WojTZ7JCLrLBDTkoih+dOtJmhOZ2U4G7JlNpm48UCtY3nTlbDZtXGg/hLwLQGWDgVHIk
         z3ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740153787; x=1740758587;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4OXcF/TG2PCFERI1SWimzKBOweiSs1ZB9MJg92lP4jc=;
        b=lvSSe7Q0Ca8BuJz11RZhJr1JBYL5ngEVoIRybnI1zHMcqsWxIbT93bWIyZc32Gjc6C
         0MYToao0OSxLI8x4DPDj6BjOite8SDrmUexF+6pAlspR+AtD7OfQLG9huXfRcjMT2enK
         /kOjEYMgLuZX+Q8ZG3WfwflmmFRYhlkTxEXDvuC+6m+OPlxynj9i05kHHIHOH+hCjlBx
         JJ+SexY3hqOaPPGtHYeYOYpObmKH6rlfmKEV2kWXZH8njLcvMYuMqVzHJzTOQM/cAM30
         asMZf63k4zrpFdx44CB1icYmiDkkE5u2oUFQh+yyf2vsfrtfLV4zjJXI9co2DUsv1ry3
         55OQ==
X-Forwarded-Encrypted: i=1; AJvYcCWpeRmhuqluW5HGQTwA8+0t2buz2/HgYV5c4XP7GUCi6IxKjaa5TW1NehJG66dnoWfcCCwdndq2WLWY@vger.kernel.org
X-Gm-Message-State: AOJu0YyFhbUYhlTL2fwlyq6tsEdTfhIvN+slJ56V+UIwUN331+pJBrR8
	Iz7PBGyDtGn8Xp+cwfDUwQrDZKXtCjxjGqS+ALHWScnVk4iGDBqICSIJgRVIZ/Y=
X-Gm-Gg: ASbGncuAPcmj1Tdo6lI+2dXqWjXkfmPhrm9JNpceB8aWTMYd1YtWq8vU51v7D4Ihfsv
	E3f9ipmHbq+dV8JfMWxzRfkXOddBLM+0swjC3R92r6KqxMvu9/z6bYESmCzsrP6yqyPUnJhXSUQ
	o9ERssYkuE0pybkrCpeUHHea3kOW6i2GeMcmgphlX1MOn1SuMxMQlDLU2qr2ZelwGi3ONsiSbEr
	TGL9gu3N34LKelkdIkDoN4ad1jQ3dmV1sFm7LTnEy5oA2C+PIdt7OvLjGIjKlEhg91AgU4ivHKY
	TLdFKLHmnqcyS6JQc2LCaO0OcwjnjVw8lIiYT7iMjH02JbTzQzNzH6OO6+H2OANnkbMhzTxfYr4
	=
X-Google-Smtp-Source: AGHT+IEkEFcjqxp6Jb7RRhAg97Jh8Ki4FzCRDMhO8xX32MsiOvuIBNnukhiVmbZ0l7ZZyA6t7WA3Rw==
X-Received: by 2002:a05:6402:4406:b0:5e0:803c:2440 with SMTP id 4fb4d7f45d1cf-5e0b72311b3mr1279503a12.8.1740153786941;
        Fri, 21 Feb 2025 08:03:06 -0800 (PST)
Received: from krzk-bin.. (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb98640619sm1040782766b.54.2025.02.21.08.03.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 08:03:06 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH RFC v2 2/2] remoteproc: qcom: pas: Add SM8750 MPSS
Date: Fri, 21 Feb 2025 17:03:00 +0100
Message-ID: <20250221160300.160404-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250221160300.160404-1-krzysztof.kozlowski@linaro.org>
References: <20250221160300.160404-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add remote processor PAS loaders for SM8750 MPSS (modem), which differs
from SM8650 by lack of fifth memory region for Qlink Logging.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
None
---
 drivers/remoteproc/qcom_q6v5_pas.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index 97c4bdd9222a..c34b7780f786 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -1409,6 +1409,30 @@ static const struct adsp_data sm8650_mpss_resource = {
 	.region_assign_vmid = QCOM_SCM_VMID_MSS_MSA,
 };
 
+static const struct adsp_data sm8750_mpss_resource = {
+	.crash_reason_smem = 421,
+	.firmware_name = "modem.mdt",
+	.dtb_firmware_name = "modem_dtb.mdt",
+	.pas_id = 4,
+	.dtb_pas_id = 0x26,
+	.minidump_id = 3,
+	.auto_boot = false,
+	.decrypt_shutdown = true,
+	.proxy_pd_names = (char*[]){
+		"cx",
+		"mss",
+		NULL
+	},
+	.load_state = "modem",
+	.ssr_name = "mpss",
+	.sysmon_name = "modem",
+	.ssctl_id = 0x12,
+	.smem_host_id = 1,
+	.region_assign_idx = 2,
+	.region_assign_count = 2,
+	.region_assign_vmid = QCOM_SCM_VMID_MSS_MSA,
+};
+
 static const struct of_device_id adsp_of_match[] = {
 	{ .compatible = "qcom,msm8226-adsp-pil", .data = &adsp_resource_init},
 	{ .compatible = "qcom,msm8953-adsp-pil", .data = &msm8996_adsp_resource},
@@ -1474,6 +1498,7 @@ static const struct of_device_id adsp_of_match[] = {
 	{ .compatible = "qcom,sm8650-adsp-pas", .data = &sm8550_adsp_resource},
 	{ .compatible = "qcom,sm8650-cdsp-pas", .data = &sm8650_cdsp_resource},
 	{ .compatible = "qcom,sm8650-mpss-pas", .data = &sm8650_mpss_resource},
+	{ .compatible = "qcom,sm8750-mpss-pas", .data = &sm8750_mpss_resource},
 	{ .compatible = "qcom,x1e80100-adsp-pas", .data = &x1e80100_adsp_resource},
 	{ .compatible = "qcom,x1e80100-cdsp-pas", .data = &x1e80100_cdsp_resource},
 	{ },
-- 
2.43.0



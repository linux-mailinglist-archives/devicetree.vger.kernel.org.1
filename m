Return-Path: <devicetree+bounces-208050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B798B316F2
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 14:06:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A10911D006DD
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 12:05:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 012152FC029;
	Fri, 22 Aug 2025 12:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Mj4Fu+G2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A02E2FB99F
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 12:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755864276; cv=none; b=h0PmYMm4EfK2V8l8OEW4b5LsC04qo9MlIfaXPOIKPTH+0U2H8ZN8s3KkcLA8hpBHCOBlUh7VsYbUFfsQDE9iEBDBpHgNS3Qm79obArJZK/peAtUOl0Yj5iNuQjL4an8MUWllhkMbytwcn7Swfto8KVA9AOjs76a8IMSGKix2mMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755864276; c=relaxed/simple;
	bh=znOD+AvgM9F1/liZpygSOlh5OSQoyBO0bA9B5q80Btw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IBEZBPftz88JW2I6OQqcsHatYWkETxNzJkNWdrp/M/IBYL+MAen/O1Hnx1JIXhCYDVLZrJ25Lh+1BgnlrHSbdNnQU1pkZHVpOODPxv/DtQnx+eDFsZQyBK89hrsHqUHiEVRy/TsOGCujr/4NpySGtx9inl9gBWxq33J97fL7DP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Mj4Fu+G2; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-61c25ad57ffso58098a12.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 05:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755864273; x=1756469073; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EZvZL2QEx5a6VhfqhYR9WENPbwwPNoIFgoVWjAoCaFk=;
        b=Mj4Fu+G250ooJTi+QDkf3Pdf4KEqbWG6SdNDrMEprT33wbkdodDp6h8/6cf57l+PrQ
         cHBNY+dP0VBXMf6VujCjXdAyOVAlsOmxY99JiXbei3cOIy7p3YujxzVZs0exr9cEwqdR
         MSty7/7mNLQXj2vMOf+4lRkm/KRQ+VgjzQgBQt0hquCA+7uGYcGWk5GAfTyYgNnz3e0S
         k17jmphOqq7bMlm4EzLD7trFaHbMyw+ItbAXqmVpwATSRSCw5uDlsz/WxAiO+mO1rSkl
         7RcUdiVHZpUZ3vTTLhTOjPQwR8N9ZyhG1JLfGmZjU/0L3n5bHwPJpfMx0+whTHZTUB60
         AyNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755864273; x=1756469073;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EZvZL2QEx5a6VhfqhYR9WENPbwwPNoIFgoVWjAoCaFk=;
        b=CmmpgsyNO+lKldz6xMwDnLNUMR8yKXL8u5ZXJtf57+jgtj/fyfXnWySgbTcLmBklKz
         ziC7SzhISv9sD/aUH9TgIHuFE8ZP1VVcO3+4NWZ5GAlTBkmctSEtotn4doROGTQMauff
         n4oL7PN//ftc2MtDl/O76Jm95Gb3VMDgFRHXieHT6pj2pcbH9XK8oCVOhEEtpXxphK30
         61SaQhm+1fKeGcUebqpre+eLhIbNJKOTcgrrY8ed6T/kovzEN1WjYNpUnrXyop6Z+7A6
         wL+Gv3nvoj4+jG1wXYpQK/jaNusZR3cd68aPTzpBkk8QQZDCSOGQnbNUhTJVLtg1xoZC
         4Zaw==
X-Forwarded-Encrypted: i=1; AJvYcCWs+ADLq6RwLOrCwK87rrQmwcfPyAEnj0My0qcxCnvdh8ELodfYWBzKD6QUp8bR22FVbYWl/+f3dOCr@vger.kernel.org
X-Gm-Message-State: AOJu0YyOmbfH+89/iUE8RXvzv3nE/hzvPCFz3FG7kGDcG4XV4uHeFqlf
	l1d7Lb3ZuFNnsPFo5oxPQhJ8SMTYSJQzR3Vok4hobCoYmnBqUkkg0ZFA4ftpi+Oy14Q=
X-Gm-Gg: ASbGnctAgAoeeFuODoDnNNXbnz73uIVt+spZIWu6DjNT/KFIeNZrVwxQb6EsyknKJCE
	lEBdFQ5OsElqZUdGdfl7AhCiMAURfimvOsQkw6/BN8PwBPn5D+Fp7f6YVbw9c8Hn9YPW9eI4YwL
	befBAdnUOxd6kHJcb0fkPfS8Q8M1VC7Benlvht2oxk2OHK+dr1Vt6/GCEjjZkpFQFXZD4dWiXDp
	yscb5xlGYHm4TUNDd0Y/+zuESzCPfL2nUtzNZ7COvQ+JyPDJfEGBjy3qz0xylZVccaV0tRBw7vD
	zJ7ErW0ny5uBRSQmNWhmhUSHGPxRUOzahDh60sd0fFgNhblCu76YkcBAS0xEA5O3O9luecFxkBa
	laGTOtLaUYvN/ifcRQgngyPcYrfJdtP/Hux0cGKA=
X-Google-Smtp-Source: AGHT+IGGem9ix4mwAU+b1B3eKP9Faruw2osIkbM6mfFggqvmjsTorzc1f0Jd6WLIba2+pptbwbqzyw==
X-Received: by 2002:a05:6402:2348:b0:61b:6c51:3ffe with SMTP id 4fb4d7f45d1cf-61c1b3b8e86mr1300919a12.2.1755864273284;
        Fri, 22 Aug 2025 05:04:33 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61a757b9b39sm6690444a12.48.2025.08.22.05.04.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 05:04:32 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 22 Aug 2025 14:04:05 +0200
Subject: [PATCH 05/15] arm64: dts: qcom: sc8180x: Add default GIC address
 cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-dts-interrupt-address-cells-v1-5-d54d44b74460@linaro.org>
References: <20250822-dts-interrupt-address-cells-v1-0-d54d44b74460@linaro.org>
In-Reply-To: <20250822-dts-interrupt-address-cells-v1-0-d54d44b74460@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1384;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=znOD+AvgM9F1/liZpygSOlh5OSQoyBO0bA9B5q80Btw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoqFy+M7Xz8B939PmNYv66navkdu22J0eliNIAL
 J67vvcH70KJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKhcvgAKCRDBN2bmhouD
 10HsD/wIEh7GPspfN5cvO8b23Zp8o2uumKzW8a27LqxDKcPPnAY1NNoYyShy2W4FDhlc/F/Tl83
 uxFV5ej4X9lH6NZPyAOsGhVm+jRHyEuPFrqsTXgG23QcNovwXDOMFctH3f8IWR6BQPduwnZgVWV
 yFmdgvaBfN2T4KPvlvAjH97ygbgqYUPb6nF/PFhUzwMQ19Xvjz+/d1JWyDLhD1nDOt5w1MsFHxK
 ykbx14ZDLDX/Oc1CA/fIv437t/xzm7c8tPKoX22p4pYo8MA3ulR5qHiB3XgMxIvER6bhqQeE0Uc
 AzYPfa0qrKuZY3S/0a7JA7pfT81xpH0JyuSyLAkRbdYhVGVNvtD8IlsWZkjez8CD922k5GUNX01
 RojJO37pYFJMeELroTH/M3ZQswep40+GzqXItSXzdQ5hSXvIhgY7e09mRVfszc6jDgX/hkCGRDW
 HEZkwSHZcUMYctako4HkPPfZk1veFxWluRjAS/g3mDuELumAfTxlUlHCJQ5i6NcpP6x4A6xOcN+
 6Oak7rxK3l3/jU+COSL8zTCAEkzUFNRyDL9Ozxra57MLdKHRMRYa9fi31dfjiZ+xLfF6z+11FEM
 YFOn2ONeOaEtcmrUB2nmyiFopdb+qNNXSWej8tACXf/IwJ9PhOc9iVbvgbbspMA5SRPPURbDFN2
 L3KAN8cllfTw3vw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add missing address-cells 0 to GIC interrupt node to silence W=1
warning:

  sc8180x.dtsi:1743.4-1746.30: Warning (interrupt_map): /soc@0/pcie@1c00000:interrupt-map:
    Missing property '#address-cells' in node /soc@0/interrupt-controller@17a00000, using 0 as fallback

Value '0' is correct because:
1. GIC interrupt controller does not have children,
2. interrupt-map property (in PCI node) consists of five components and
   the fourth component "parent unit address", which size is defined by
   '#address-cells' of the node pointed to by the interrupt-parent
   component, is not used (=0).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 836ac94551478fd728b1229616bbc6494cee336f..15a75def6204a35d5852e73d66fd3052e38e7863 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -3721,6 +3721,7 @@ remoteproc_adsp_glink: glink-edge {
 		intc: interrupt-controller@17a00000 {
 			compatible = "arm,gic-v3";
 			interrupt-controller;
+			#address-cells = <0>;
 			#interrupt-cells = <3>;
 			reg = <0x0 0x17a00000 0x0 0x10000>,	/* GICD */
 			      <0x0 0x17a60000 0x0 0x100000>;	/* GICR * 8 */

-- 
2.48.1



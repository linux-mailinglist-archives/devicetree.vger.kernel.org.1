Return-Path: <devicetree+bounces-172724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA821AA6082
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 17:09:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E3FBC1696F1
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 15:09:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00B86202F8B;
	Thu,  1 May 2025 15:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lndbCFql"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EE61F130A
	for <devicetree@vger.kernel.org>; Thu,  1 May 2025 15:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746112187; cv=none; b=NXFiBnCKQ5SbQ/TFCWTih+MvLCw9G7RDa6/BFq6TdwthmcLebliKfmgkr18yrJs0DwL0viYil1lcuzSMd1mqsl2xf2NWVDqJREqcjYX2Bg/iYCey6NJVWknc4cuMoJSDVi1MXAtwERkdyXvdaf3deC8PGAcDiLykWzxE0g7tRuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746112187; c=relaxed/simple;
	bh=o0mFM3KPvJj29b7OqZXgI3yIHXSqUjqJjdi9iKbTvSc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dNvPDpl6L4lH/aaV+xaqq+nHsJOy2SADuUZOWgIu1LTYGK7a1Lxa+ib+jNyWSWZYONSBUk9QuD6EJpPs9MREoobGU7jMkBOZO7Kk37H8QUUrbs9W/39DGgNaNQU9dw0F/bcbLMHf/gCsXyw2Bs2VxfP5v5WzXMGTzdTe9zlAW3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lndbCFql; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-4794ab44bd3so647141cf.3
        for <devicetree@vger.kernel.org>; Thu, 01 May 2025 08:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746112184; x=1746716984; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aLwuYc7It003bwysv0PNlwd8jw03NkQ5TfiWML6syFU=;
        b=lndbCFqlxfRFzIZh/zNFaSpqKjd+hFDEYXyM/LlnBC6GeA0erfldFujfco9TrxNZGg
         BJZ4HiMHpqnI0OPf36aHgfVlegpgeyEtKKFHrVPZV40q8W/Iul2MfLyQ/0ceTT5kMqC3
         3qV0I4QtutE0DQUV/qDlIoIinIo7l+wJidtYDU7XFsYsex4eaGbULuurtiRH+CSe5oYV
         eRDY77nxqqS9ddCdso+s1wliAQn4Fjdl4mznCE4T4uCbnZCqqkCycGv59yVERz9YRr6z
         TYbq1A2qbybj8Azngy6ua06h7/xioO7w0X0enMIJStvZdnWmoh9fysmZEi4yMH0E228H
         EbaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746112184; x=1746716984;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aLwuYc7It003bwysv0PNlwd8jw03NkQ5TfiWML6syFU=;
        b=D8ydm90csp9zXLSRrKisttV2WCRoSAGb/B9ZCO3omus8eMto+MHuP6TkymWzsaa0jy
         lxhcluPUhtUnHYdVH3sx9WiZhWt6eP68Z53srJjC+MojchT/JVHQeoETEDFEsdzhm1+q
         tnhLWxhal5WNWHwKBWzOtGSfC7BgN8zGXmQe4zCEaqybDIZ+cE18CA0Y0wAdhdkL2M42
         CTURqtso2EW5iLe9LKpPDpeNXVdTXuYvH+PCvjqAXMi7n9bXrwsBVfOHe01eL60t3dhT
         n+zULL5/Ep/GPYgKjZQc5QaGOERkVOVmFN9B7ZcSqYHoLA1DRt3ml1V5bXaqlvxzSkHb
         FOaA==
X-Forwarded-Encrypted: i=1; AJvYcCV636i4Tiap9Cf1xQ2uxxS5kINofuGeAx+1dBGfBfJreopt11enOZRubaTX7fwZWcyImXjd6NB1Chob@vger.kernel.org
X-Gm-Message-State: AOJu0YzljgPC4o2pEssHixRjZFn5kQb+Sj2W5XFJdGfMGUpA0QQjAb8P
	/I9QLNoutRHVZ8vKW3iGnT/y6kU2ZNXGO7PM9y+LE/vveX/AS1NoS+dCiZO+mCI=
X-Gm-Gg: ASbGncvv/Vcpj33SXKKec7DlsDgSqdc8FEac/5ZWlfGCO99d5vkBWi6+alUogGNc6jN
	dJE2W3ym/5E7+FYS0/5Eq01HMY1zuBLrbsRYnO0ujJn2fuG+Evdvfjzhe5uTljcStssCc9SvoVG
	e5V6MI94ajE/aKXwxEreQPAGd+tqxxONHrTq0kBpnG6VCnuJs+CdGDQDu+Rz3blCfoJA2PG1e8Y
	jAcfxrw1toUrgNfb5UaL6JMTeMrgGd/5kd5DyYdVdZXdGmZ3uDD2l9Dk32njhAcX086nxmM2TrH
	sjuOa6Hq3ydUf1GvF1TEM0AgN+B6hroBohTn/t4tDuJaVtZIGg==
X-Google-Smtp-Source: AGHT+IFwzDvqjjYQbokpYoEpoOfxhemraL9OuZyJRAg02iJ46vQxTMMnmYAwRIcFYB/qENp7C1Sj5w==
X-Received: by 2002:ac8:5701:0:b0:472:1ee7:d2d with SMTP id d75a77b69052e-489e44a96bbmr41320511cf.1.1746112184011;
        Thu, 01 May 2025 08:09:44 -0700 (PDT)
Received: from kuoka.. ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-48b960cf655sm4823621cf.12.2025.05.01.08.09.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 08:09:43 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Mark Rutland <mark.rutland@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: psci: change labels to lower-case in example
Date: Thu,  1 May 2025 17:09:35 +0200
Message-ID: <20250501150934.77317-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3146; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=o0mFM3KPvJj29b7OqZXgI3yIHXSqUjqJjdi9iKbTvSc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoE46u+AUV/cMeTamwXDlrrGt9g14Off/ZwsEGc
 /72wcMiMHeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaBOOrgAKCRDBN2bmhouD
 122/D/0T1UN2DmvxbeprDE0n7AayOOT3RWXYKsZ6CF4EzLtW1IZlH84dWREalIV4nbVz8tH8Nur
 BFf2lMT/ZbXYhEXF2XQHMRV/T27zID53PZZ1k81Vtlb/uZ5AggOungzQ4TxSJjjPjHjBP52IQnY
 MtG9aWRD3WV12fzwXUIoEDY9UT5XCvcRaGksMMFoeIHtJ3uABYHK7n3mhl0dE8UU5emFZgmHE2n
 N6fc2KPYtM8u/ZZlBUSVFS/4sxEk2jDOYbF6DJ0F1BAfTw6DFNWdkVUb7r+HKzXJl2XiqT+5wy/
 7/xfniHEJneBSfqakxQMzkRFmFlFLDkfAYZByY7haUK7R1zlZD2guGv1VkNmJp7xG8ptTTLsK2H
 PGRdMyTgD/bW7+2NKQOexiC62NW05R8fA+mBqlZLM8jzHFjfXtSPeVVJ/jTr1xELhH2UiInUZ/u
 y9oouhCDsohhUpqFs/vGCFAtX4FhdaXKBH6WCbTxClEcY78D6lBQMVNSLkJ3B+hiU89Gknt6KI/
 8R6lrAulgLem8d6yedfmVnBC+d1+mFhTx73T2FuXNBpoQXlP9jkDtLwukLb2iNDcC+FGq1+7hv6
 yneVaGVPhn3y0evOLAPyVhpbInIW+GFBWDgovYnwvj6FdtI6wcMS+tAhUiESBQNUjmTkH4H651f nvp6i1D2Z/o7eyQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

DTS coding style expects labels to be lowercase, so adjust the example
code.  No functional impact.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

v2: Only Ack
---
 .../devicetree/bindings/arm/psci.yaml         | 30 +++++++++----------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
index cbb012e217ab..7360a2849b5b 100644
--- a/Documentation/devicetree/bindings/arm/psci.yaml
+++ b/Documentation/devicetree/bindings/arm/psci.yaml
@@ -191,27 +191,27 @@ examples:
       #size-cells = <0>;
       #address-cells = <1>;
 
-      CPU0: cpu@0 {
+      cpu@0 {
         device_type = "cpu";
         compatible = "arm,cortex-a53";
         reg = <0x0>;
         enable-method = "psci";
-        power-domains = <&CPU_PD0>;
+        power-domains = <&cpu_pd0>;
         power-domain-names = "psci";
       };
 
-      CPU1: cpu@1 {
+      cpu@1 {
         device_type = "cpu";
         compatible = "arm,cortex-a53";
         reg = <0x100>;
         enable-method = "psci";
-        power-domains = <&CPU_PD1>;
+        power-domains = <&cpu_pd1>;
         power-domain-names = "psci";
       };
 
       idle-states {
 
-        CPU_PWRDN: cpu-power-down {
+        cpu_pwrdn: cpu-power-down {
           compatible = "arm,idle-state";
           arm,psci-suspend-param = <0x0000001>;
           entry-latency-us = <10>;
@@ -222,7 +222,7 @@ examples:
 
       domain-idle-states {
 
-        CLUSTER_RET: cluster-retention {
+        cluster_ret: cluster-retention {
           compatible = "domain-idle-state";
           arm,psci-suspend-param = <0x1000011>;
           entry-latency-us = <500>;
@@ -230,7 +230,7 @@ examples:
           min-residency-us = <2000>;
         };
 
-        CLUSTER_PWRDN: cluster-power-down {
+        cluster_pwrdn: cluster-power-down {
           compatible = "domain-idle-state";
           arm,psci-suspend-param = <0x1000031>;
           entry-latency-us = <2000>;
@@ -244,21 +244,21 @@ examples:
       compatible = "arm,psci-1.0";
       method = "smc";
 
-      CPU_PD0: power-domain-cpu0 {
+      cpu_pd0: power-domain-cpu0 {
         #power-domain-cells = <0>;
-        domain-idle-states = <&CPU_PWRDN>;
-        power-domains = <&CLUSTER_PD>;
+        domain-idle-states = <&cpu_pwrdn>;
+        power-domains = <&cluster_pd>;
       };
 
-      CPU_PD1: power-domain-cpu1 {
+      cpu_pd1: power-domain-cpu1 {
         #power-domain-cells = <0>;
-        domain-idle-states =  <&CPU_PWRDN>;
-        power-domains = <&CLUSTER_PD>;
+        domain-idle-states =  <&cpu_pwrdn>;
+        power-domains = <&cluster_pd>;
       };
 
-      CLUSTER_PD: power-domain-cluster {
+      cluster_pd: power-domain-cluster {
         #power-domain-cells = <0>;
-        domain-idle-states = <&CLUSTER_RET>, <&CLUSTER_PWRDN>;
+        domain-idle-states = <&cluster_ret>, <&cluster_pwrdn>;
       };
     };
 ...
-- 
2.45.2



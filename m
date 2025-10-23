Return-Path: <devicetree+bounces-230247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B112CC00CF6
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:40:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5E226358BD3
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 11:40:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 774E630EF77;
	Thu, 23 Oct 2025 11:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="P1jE2uct"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D49730E0E9
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761219619; cv=none; b=PpPWCmmUd5qsayAmO3kuJHA9D7ZTTpcGk4QWom0kzv8Cuc2+BfsuRkm6FiPUogbjmU7ebmC04QNC4uV7ue6cBm2B77qGE3gd20c3mfiQkQcHfrqG5wKy8FZddOcZIVjW7qmvV0U5pBRE3efChs2vmy4BO6xzMS2SqpOb74hlU7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761219619; c=relaxed/simple;
	bh=p95Yod17aguDEQvaEd9jFzyjpv3eP0LhnfZGpsw/x/I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bK05JjKwuOpNBWzzl6wqzEhIwJ4mS6dmtlTmwMiPVgt1C/cphYEX6GCCRoJyaCWzy78jl/soWF2LDJo/dEiYVdxk2HB/L64CM6O1XhBzFuvdAbx3Zk3UMClMZy//3ZGRTUhvm24ChLN4XLOE4Cd3kITLqCm26/Zp4l5OEUYABBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=P1jE2uct; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-63e12a55270so1034125a12.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1761219616; x=1761824416; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+b9aFICfN/XZyY8AY2ox+ovxPQcHAuzzYqvvmhyVWUw=;
        b=P1jE2uctxGdO+kePUc/sjbLYT+tCK7n0+p+K8mTdBxutivs7zkU+ZmgCnHuV8NofQQ
         Dk/VVd/uCtHDATVwRgQlsDPdYcQWMETAJl2UJi3XJTfDNDOXB9y8oqo4kWtaUL042X1E
         YNPPWnnxHllHhA4McpymzyaZ9TKRd6kMyjOLIwHgL84uWkrUdx3/m4X0uyXGoCF6kuxl
         AsE3midRPo2JOsU/SV38sjyAuzZlje19lUcdsDb3xzO8d9SEIcPReJSdQMauAcYqvlid
         RXysQgXG4P/usLZuB8GnvOf0LEESc/CJ7o6Slt6SFYlBABU3Ds6ifJ+4e7rIYRrTJpiu
         N34g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761219616; x=1761824416;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+b9aFICfN/XZyY8AY2ox+ovxPQcHAuzzYqvvmhyVWUw=;
        b=C0YQczXtcoEhdsZgugYgRo07j+adJAM4ABN4wq/HXgouh5vAva6WPTl8KRaHqKGdmW
         RYXHnrYjWJtFmvfs7O9zOMwxpnCSfSRcWyxY3RsrWJ0jQ8bqkWpj8+ik3GL5LXbb/tun
         CEbOy6ARbONcxND6xbju1AaWU3/v1Y483j7WPetqTS81xgy/HSP+QXCxhWgwjY1HE+3T
         URZTeJg8GP3QeLX2jTC/xFskzPV6oQ6LvaGgdzh0eLs7eZk588T80qpmZ3/Y5zjiNl7m
         wKvWAbxldk0k6uJzxiiV67bG9T7yxp/d///dsKWDKjhwbah2U/qSciOoEoVPNbvgqbIN
         L5mw==
X-Forwarded-Encrypted: i=1; AJvYcCXqCbU3m2n67taqyUpNtsXQ+BJmnwJ9SaHO1anY1Dh7zN35LWVhJSKMEMiKPi9okYmy/fiXLlKEE6pL@vger.kernel.org
X-Gm-Message-State: AOJu0YwZnG0dKQP0903NJxyDLsJktUPH4kqre/QA8ki8A2UO68kxcRr7
	zn7+bs3Nyiwqnphj8UTRd5xx+z5sqlbqDtA3KZPUdVU2g6VWHdMTjB1mLSZZ34lESV4=
X-Gm-Gg: ASbGncv5oseCd548ecoqvpFS+senBVFY8qo3n+0aXUqXnIbnQpOCbfAyYpv+kPiVfHN
	zNL46G2180rRNOOr7Rp/aHPETqX0U2MOsJ0qO1Pt49qoKbKnNq6upcilgXnxvmQy65nHPpaUa6b
	vIQO4/yppLmRJD5zPbPmDoNWwT/aIuW8wbyhdgmDrKTN7iCZH0zVMqy3gSjETa0XEQTRzxb7Mo9
	aTFNBPEaIDFriEea9HDlsRrIlu39BWt9Jl7bPkouq9pFNXecQD63aGZSU3Aslg+4iG/NhUya1Ee
	C//rEvWc/swoCI+CW7IJXYZyC3PbwN6iQ9UrZGNTgQx/DLKMlsSnOVTvKo1oCSb21FRtynBstRE
	RHFn9VQs1P0kLXtcsgg+1uSHBKnIGqgCHdOoX5vTMCEYonm3xzR/njL0YcHgU5Vuhr2MpnQKXEo
	OdY/2rYufqRHZZu6Y+gkY0IhnkIydWeFq0FHFZhdmvKJr0hQ==
X-Google-Smtp-Source: AGHT+IHvDD9XJ1vRSH3cXt3DI3SdXcHBMF1NFxrmnD8Bb/1OzLxNUSC4bWEuB+gxH+suooNl8D/8cQ==
X-Received: by 2002:a17:907:1b15:b0:b48:4966:91a5 with SMTP id a640c23a62f3a-b6474439497mr3315552766b.30.1761219615642;
        Thu, 23 Oct 2025 04:40:15 -0700 (PDT)
Received: from [192.168.178.36] (046124199085.public.t-mobile.at. [46.124.199.85])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d5144cfbcsm192518066b.56.2025.10.23.04.40.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 04:40:15 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Thu, 23 Oct 2025 13:39:28 +0200
Subject: [PATCH v3 3/3] arm64: dts: qcom: sm6350: Add interconnect support
 to UFS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251023-sm6350-ufs-things-v3-3-b68b74e29d35@fairphone.com>
References: <20251023-sm6350-ufs-things-v3-0-b68b74e29d35@fairphone.com>
In-Reply-To: <20251023-sm6350-ufs-things-v3-0-b68b74e29d35@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761219609; l=1043;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=p95Yod17aguDEQvaEd9jFzyjpv3eP0LhnfZGpsw/x/I=;
 b=287cSFqIZpBinFoMzW/Pd2lFwLD4usbtB6bd6jWXziSDY0JCm4sfCEqMwGA3nCItJX7zjP7Ef
 J91UNtGS+N8CHwYp4HrQfTP5sIo5AzXnJ+P/BwWvV/ljlpPM7o9ijaR
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Define the two NoC paths used by UFS: ufs-ddr and cpu-ufs.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 30e77eca4c02..01977d692755 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -1178,6 +1178,13 @@ ufs_mem_hc: ufshc@1d84000 {
 
 			operating-points-v2 = <&ufs_opp_table>;
 
+			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
+					 &clk_virt SLAVE_EBI_CH0 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_AMPSS_M0 QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "ufs-ddr",
+					     "cpu-ufs";
+
 			status = "disabled";
 
 			ufs_opp_table: opp-table {

-- 
2.51.1



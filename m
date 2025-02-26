Return-Path: <devicetree+bounces-151532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0E8A461EC
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 15:11:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 92F773AB0BA
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 14:11:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45257221F02;
	Wed, 26 Feb 2025 14:10:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="MxaouGYJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5137D221574
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 14:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740579041; cv=none; b=ONXf+ji4S+OuZbTRlVSAYMhhLcdjH9VjWAA6iZVmihvF4EzfYDbOz96oGmL/f8lu0uM5wqFUeGHclNd1OV67SN8iVrCRqUt8U5TevyhyrevgRExsnsEe+Czma2KCL3bclscSq2semxmhNNoym76eAYRLCvA9y3i1oK7qbm6BZ08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740579041; c=relaxed/simple;
	bh=P7w9OXQiQrKC5xuGSyYgTs9k0mD2TUTs1hwUynrSPC8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gd24bmVj0utvyz06I5WRTwGQ2frTbWxoG9vXy4aZXlu5D5hWd3JjjGfPz0UMRUy+i2HD+roiiR1bA0eQSUadpCEozaqptXvsUKEpSw6zL6OR8Q0+/Qy14FVVcyyckXBfilW0zBzeS6WIAxiTDT5Z3HXemhpMdH5/AO/vF2iZV/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=MxaouGYJ; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-38a25d4b9d4so3900899f8f.0
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 06:10:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1740579036; x=1741183836; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mJ9yHxHTj9hXoq8ESuMoLUnH+h1yWDXZJ3MZuCpqRWI=;
        b=MxaouGYJEdfbeIs4mLifJnIf/UiqCok4NBWKZi7lbtX5Z6EZvh8XMKlO19NEAahmcp
         MW5S9VCd1Ocnr+Elp02Y/S9rWJGLFKVeJu9LxouTTTgq7AhlxC/W79/KBk5OC85gmKZU
         M0xMdgzIJQ+4sXXzzw9TB0NvWPPnNc//cPlp6PFR+FxxdAutXdcNU7XbvcUve4XC4od1
         IbAZi5THxDKhT/N3uKVy4afDtFAt1pRcqWLF2QlrQtDudZzJdo9oqfxftmvqurQ2lB4A
         AGtIYQ31kccN34l5Un30vJfsSATwZ0Byvc8/AEJbSQciFIYxqc7Do9jPWpbNQu7dBaf1
         OSZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740579036; x=1741183836;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mJ9yHxHTj9hXoq8ESuMoLUnH+h1yWDXZJ3MZuCpqRWI=;
        b=N5PJqDNuq/UjNiETbTNCjeGLBvxH1jbQA08HsivFMZYNrHDNB/K3LhS2N6aosxx/s6
         S9tf+WBpLeZUddfEd3/R4EnrdienXIVHUVdFqHFoRVa+vvfgEu/p7I8XMWZEAnDW3Uw4
         /nm0fBIkPwkY4AB08z+ECVU2NxJ9Dpcevx+eJUlqySbWLNYUjGx4Dx5teA/DqaJRDNun
         JqjWFC1+MAuKRRON173/KRjVeNFpbxYpLB1UwgnzeAZZSF56Sw3Z+K5iXKd7WBlkVcTJ
         CW3s4IbwJ/RgGJHIYtWkJWADmkxvvEowpgdmkYFx+hPDa9kzYZBk5S6XkwwnNWHOKHaE
         Qomg==
X-Forwarded-Encrypted: i=1; AJvYcCXWBgtXsNc+XrdWJKzcl/eFjMn+IdailvnyNWBNnKzzEGs+nOY74C4un2LA2cjc+GmguzaOid2tQBLI@vger.kernel.org
X-Gm-Message-State: AOJu0YyRsOQxyw13vmKnsJFqgCIyvn4C+eB/UHK+4X8MAuLGiZyjdcJ3
	BfQcBjdkaijfTfY5HJaAuPAxVyuNGWvhCl660/R5NZrC8K0pwiNkeOkmhk3tYC4=
X-Gm-Gg: ASbGncuIVDcNYymcertfolGF0qUzHhOJagJLn7SnvrpAErWVX1cIsy9nv/U5+h/P6bv
	SSuFL3Ri8mQ8LP5w2FDCIytRBraZYXMhv8vS8bFFm1zcuxwFOirWBWRFh+prfbN9tpieas5MqBE
	frJDkPUumqh5TkWtnHUtjWu/cJOOXjjLCfr4viYhHDHX6XsVsUzbEMZZ0mJzu+ICecL/8i9KZ7X
	JTSDY18Q+N+SaVirUw5X06w17HsERuG4PGjMvHiXibFb2Ei1UEWkYIu3USRUUqFqF9kg2H3op/h
	EeR7WjleSHusONkbhIlLDIuvQJUcG2f7OJGhhvAJ61OoaXLJId4qY2iRcRgqk5kkG8Uce/E263A
	=
X-Google-Smtp-Source: AGHT+IHFry1L5wTMtQdP0z3fvjIAfQ/KnpnPkdZsEzieuHFdzyw77DYAj9YLwJb0jc6fKY5zmaQvyw==
X-Received: by 2002:a5d:47c6:0:b0:38f:3a89:fdb5 with SMTP id ffacd0b85a97d-390cc5f6d66mr5664563f8f.11.1740579036576;
        Wed, 26 Feb 2025 06:10:36 -0800 (PST)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390cd70be4csm5755889f8f.0.2025.02.26.06.10.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 06:10:36 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 26 Feb 2025 15:10:19 +0100
Subject: [PATCH 2/3] arm64: dts: qcom: qcm6490-fairphone-fp5: Add OCP96011
 audio switch
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250226-fp5-pmic-glink-dp-v1-2-e6661d38652c@fairphone.com>
References: <20250226-fp5-pmic-glink-dp-v1-0-e6661d38652c@fairphone.com>
In-Reply-To: <20250226-fp5-pmic-glink-dp-v1-0-e6661d38652c@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Add a node for the OCP96011 on the board which is used to handle USB-C
analog audio switch and handles the SBU mux for DisplayPort-over-USB-C.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index 3c134d28e0c1965de55356af9c19c1331b029669..b3fc37dba51523ce5678ae6d73f7d835f8b26d9e 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -750,7 +750,16 @@ vreg_l7p: ldo7 {
 	};
 
 	/* Pixelworks @ 26 */
-	/* FSA4480 USB audio switch @ 42 */
+
+	typec-mux@42 {
+		compatible = "ocs,ocp96011", "fcs,fsa4480";
+		reg = <0x42>;
+
+		interrupts-extended = <&tlmm 7 IRQ_TYPE_LEVEL_LOW>;
+
+		vcc-supply = <&vreg_bob>;
+	};
+
 	/* AW86927FCR haptics @ 5a */
 };
 

-- 
2.48.1



Return-Path: <devicetree+bounces-224829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DD603BC8337
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 11:09:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CD9EB4E3331
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 09:09:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5A762D480E;
	Thu,  9 Oct 2025 09:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D4JWBZHY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2176B2D3738
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 09:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760000857; cv=none; b=V9xm8z4c8fXNL2tN9IfLjP8QoHMi/sbEAAV1KckKfTtDYvKJ/6l9UJ7VMWOCIM7AYXYa07I3d3AQroQ1RuR8O3fDdQ+cmVH9xH9DWBtaM2BpUYCodR7s0ZnXqr3nNOzGBHusR7udrIr5gnivnCrm5YEqQ2E1xjIq6F09FZdZTzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760000857; c=relaxed/simple;
	bh=l5mhbycfE08ir0RvnM0JhK5D+99iA9c0a12NXel/+9Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=m3WuTR2w6zz8gcIeybaEvSeqnNbNii/o4b55LeNYrWHHn+yoIGKRTdHs5L024JW+SMqgNqCfREGDP49AmqY3gnhteGMj2kpGP7od+6L5wt8Fy02pGSiFd9HIfIuP/AIaxhXK8CFFb8YInXbldvt44nKb7LGJCu64u67p4SrSE1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D4JWBZHY; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3f44000626bso556485f8f.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 02:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760000854; x=1760605654; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o++CZcgphHqNF7K6IE3hm++2Mw0o+yR/xwaMs5XLwOQ=;
        b=D4JWBZHYqdm2ziFSOORrkqglUVuHsHrCMFMNEF57QyL37+73OQIqpszZPw9vZmDAwF
         6mVc24aUD0RhKZ88yvin5yJ7nUyfbakMjWnEflTtoJsgra0vddcMy8PEZLTUpEN/6RWK
         g2LB+r0VqSZ4laKZrwCgEZ2Uy8BGsFCQS8m4wvqfbLpOq2Gi0OAx3JCb8oWi3IR/2mqS
         BXaj3DMcKHGCd3/90byjSqmvk2knKSMfcDArZTgApYQjzPTKxCY2QLuWQK0IwtdvWgsR
         u8AnRT4eqPJhOn5/Qm5eYSOpoCt3ZxR+wZ2N6q5CWl9e9M/5lIEI6QHazT5tQZa34/EE
         SYWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760000854; x=1760605654;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o++CZcgphHqNF7K6IE3hm++2Mw0o+yR/xwaMs5XLwOQ=;
        b=GKMM6IoZWNnaaBAOI8KlUJe8ttkCraZdYBody9wNLRu+Ijety9E/PAUThCRXO4gYar
         mOf9+yMQ3SGc+EnAuxkwYIvg5QkGX06c6GQTRdNZglGe+SFCkXpPcc/INv7PJHCRxVgq
         EwCnTeJJDNnglzaWKJQjWvrE/2X6RM5ohZyLRbkm5Ld9n3O7E6zijDUupP51JW2rYmm9
         wvz9RM7m7ukcgRkloOH0tvE39Oqar694TqO8DRCIqNB5Zg2pA5rPr+gI1yyC6FKcwyVB
         OIEmBCxxbjuNv2hycxO7ASo8a9ecPjAb4mNGVuMVBZrg2qKWKfut2HEGwvKuoiQaiDL9
         Hshw==
X-Forwarded-Encrypted: i=1; AJvYcCUZqhgEJv1AreXks5yJYeegZ9zVZ1Pk/mMXPep4a0zvAPo+X/o2Rfr8N10jo3TNWywgQJjpJX0j9yp5@vger.kernel.org
X-Gm-Message-State: AOJu0YyosWTJcrSyCJ4Uf4dTfUGuv7PHyEvBXPky94ltgxgS//e1r1Ds
	CkuNJ3P2Kb/MWNcEAjmyqAkjqUfZI+XKjLQMXr5GfwS09hNaJKy2MZ+E
X-Gm-Gg: ASbGncuOpFtdtKvVzjolfPTT8lXX5XAvo/ZDt9mB0L6vjaQsdNjJjCJRUu8zHEuVSZY
	8LdtM9JjwhEANpj8o/59PCBp47Zrtj0jA4/P7pdTGIWYXIhRxtqPtF/MuaseHnr4PLjRvEtyvzu
	gVBfQ17Akn/fcs7uv+7ZJoD5j8Bj133tlf3Aek1ZE4YRVIxEV/JQKfEFzdrdJoGAi1GkLho+RGU
	EvBheSaSYNn9OYq8tPrl1QRGklxnlqwtJlQB5TatLsiDny7FamoROKZpGeOTilw3r4yf9QgS692
	41iI4wPJ4b30pQ9bwtU7UuAanPj679lPq9e9o9z9nxjO1qhnquBsDZ8wn+kVReG0V5C+Z6meH+u
	ypCufhQkhdujFV+GDLLprg3Lu7YpbGbR0xP5wQe5dhCWak8vOYJuwNzmr
X-Google-Smtp-Source: AGHT+IGBpxxND25HGKh9Sv2Mhu71Rly/5HWjAPpRDKzQyqiB0LzVgVcpNLpNCoV5w5wRUa+5Id2Npg==
X-Received: by 2002:a5d:5f83:0:b0:3f7:4637:f052 with SMTP id ffacd0b85a97d-4266e8dab04mr4638469f8f.44.1760000854292;
        Thu, 09 Oct 2025 02:07:34 -0700 (PDT)
Received: from T15.. ([46.175.113.10])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8a6b40sm33872761f8f.2.2025.10.09.02.07.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 02:07:33 -0700 (PDT)
From: Wojciech Slenska <wojciech.slenska@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Wojciech Slenska <wojciech.slenska@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: qcm2290: Fix uart3 QUP interconnect
Date: Thu,  9 Oct 2025 11:07:17 +0200
Message-ID: <20251009090718.32503-1-wojciech.slenska@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The config_noc interconnect should use SLAVE_QUP_0.

Signed-off-by: Wojciech Slenska <wojciech.slenska@gmail.com>
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index 08141b41de24..746c49d6e0fd 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -1302,7 +1302,7 @@ uart3: serial@4a8c000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				status = "disabled";
-- 
2.43.0



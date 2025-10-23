Return-Path: <devicetree+bounces-230240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E92A2C00D4E
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:44:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB80C3AFB04
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 11:38:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E7B830E839;
	Thu, 23 Oct 2025 11:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="elvqjNP7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ABF927054C
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:37:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761219476; cv=none; b=l4JvZOg7ksOptgUCz6+Db1zo+oc4abWtGVPAjJvRsZ6HiqP++IYoA9HTVob4krVf3RIFBgRSd86Ye4LdbVdaIq/aRfsXsF14PAP7ZPnbDjNklQF4QSaE8l9uBe89Ibhv4GLMH1JDaIyH7ixxhvpzQ4lMkCNxJFOYLgtpM39mW28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761219476; c=relaxed/simple;
	bh=7oXf51m7mBPucNidESq9CXB9+ksqBJvy/yJfCr+VnSk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XjWC4BE3EwUaLTFHK37SCDIsic5p2FozIXgORlO2z1X0QSQR+PzB2RgvUqrKMTPsGiOYqW+Rmt0iM6oBp7K+SyniP6PC5tl5ovfrv9qDG0QkTcbj99sA3rM/oG4NZaSuiERhFfYT1/ick/Z/WZwTIDFWU4dr70SMiN7siqAuovA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=elvqjNP7; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b5b823b4f3dso133669266b.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:37:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1761219472; x=1761824272; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y8kmVxRSYUQArl5tDapoiE287uiuzt8v/x5S0PTvLP8=;
        b=elvqjNP7Ekc3lmFjrFFuw3OK9UKWaIB0Y+0RbrgmHv1kFufut4ZcCQcfahv2U2YhNm
         NEzXJKpo1wi1c5PqfeOWebAWRv7EGXAlOmulpGNzdYfSt4rZIDSI0Fq4DlKgtslzQ/gj
         Sh/IwLXZWXugDnFSB/nj98VseWxwQUJXOcba6bT3nPfLJOuCL9W4N05xd10DXlu9JvTp
         Kkw3GT6VZhrqUi4QYS2A699UoTFjig9is78ZZyObY6bZWKE4hfk4c0S/saHJWMLLkdJn
         vPNjitSxFMPFD3khc46Kly2UsMe2FgncfNxO+AYyf/2XUKnfyy0dRil8i+Qaqdywh+Rg
         sXIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761219472; x=1761824272;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y8kmVxRSYUQArl5tDapoiE287uiuzt8v/x5S0PTvLP8=;
        b=Ypz0ScfbFid0LSBFDT4AZlpkKVC1SObETDmJxgSc+F7AndTEfWBKTSuONjkZcZTHGj
         Oa3Nlw9M2f65K4U+gKh7WxSuVCOaksHsmhlnJN1tlz3AOxrk/x91xGmYgJNOTYpPL/Hf
         QQKXsffkozoeI1XMWd9pPh9sKCMLcNb8RtiyrW882ek34z7Bdt2KBpcmH9kwRYGFDnGE
         QbEqjvfFtVUB/QkO4GFIHHnGDvmtru5+hoJP+SKSK8HxwZi0kPStkiB2d9nfI629xQg1
         Y04UHCBmaipAIkAnlwwdfDrofaBr+AgeM31yDYRWjWDLsGqqRlEP3RkUwFPxZmmIS+yn
         /qlg==
X-Forwarded-Encrypted: i=1; AJvYcCVBFqkha0diyu8pUn3tdbgXZ+zJeAaizqHxuLdwdFozan2xMDXxoUd8HDsXe/KgydYcnRdmKCBwwpnZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyOhh6wG2HJTtGsBMIyrlk67xg4c/WD12Ug1iRZxzSutJ5N66pm
	KmyVkGbjakqMe+WaxsaQBqnofW8nVaSst7dLs5jTHZM7MNcXFelYQclbGLzoGg6E1TM=
X-Gm-Gg: ASbGnctf/x6kT0Tu0yqEFQWmZwFR5GvtGAZq7YPogj1/HEat+XBKzc5SdUbLqk6PU9D
	ngcKS8a4H/1B3i39NPpQL3SpsyjRayVsRK+8JW8RGmRanzx8pIe5Kr3TAHpTT5nFN+4wpTn8w7d
	NwgR5RfF8O384IZyNx3fwSeS0jey26ngShgIGNyH/xSYZ2JV+/D+miFPZ8rw0+RkG1+dzKCC1mX
	Wl0ZD2eNMJ/E+0het0sy1IIN9RqLIkcQekjSSX2Vwi7akKUHR+jVDyd5abnA7sGr+hx8otTVhhG
	EB56gP3b2Hd0HhpzF2/icCXeXIWbNUM0yu6F7R32PhpPLwZvzuhwhBk2Ue/kQTokjH/mpnWnAYI
	ubEV0vI4bz5Jo/WSnna+r8Ic/zEqSDyV1xssP+O+XuOh770RvO/gmcAXbVlrY96Ptqq/992DPwb
	XSK8P7cD7458m8U5FFYjHRmoqHYA+2uj51s56nIckGMkrtQQ==
X-Google-Smtp-Source: AGHT+IEzcSqbV8G27b7RK+JXHjk+tt6rrpOdAaKPcwm6vc0BDCjPnkJCoc2TFrnWl+dB/W48T0b3nw==
X-Received: by 2002:a17:906:4fca:b0:b50:a067:2d85 with SMTP id a640c23a62f3a-b6473242850mr2602673666b.15.1761219471693;
        Thu, 23 Oct 2025 04:37:51 -0700 (PDT)
Received: from [192.168.178.36] (046124199085.public.t-mobile.at. [46.124.199.85])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d511f8634sm194429666b.29.2025.10.23.04.37.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 04:37:50 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Thu, 23 Oct 2025 13:37:26 +0200
Subject: [PATCH v2 1/3] arm64: dts: qcom: sm6350: Fix wrong order of
 freq-table-hz for UFS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251023-sm6350-ufs-things-v2-1-799d59178713@fairphone.com>
References: <20251023-sm6350-ufs-things-v2-0-799d59178713@fairphone.com>
In-Reply-To: <20251023-sm6350-ufs-things-v2-0-799d59178713@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761219468; l=978;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=7oXf51m7mBPucNidESq9CXB9+ksqBJvy/yJfCr+VnSk=;
 b=oXxHWyHCtwNqMCb25Ee7HIvzFWo/1Un9PghwgUi78155t7dSqhCLDn5o485ACX9xKDx66k5I5
 wHE14dkIjU3DFqmmpgw4UrtEb1U/qUWEiJ5KlLNG6Sm6iMSRNaPXsjd
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

During upstreaming the order of clocks was adjusted to match the
upstream sort order, but mistakently freq-table-hz wasn't re-ordered
with the new order.

Fix that by moving the entry for the ICE clk to the last place.

Fixes: 5a814af5fc22 ("arm64: dts: qcom: sm6350: Add UFS nodes")
Cc: <stable@vger.kernel.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 8459b27cacc7..19a7b9f9ea8b 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -1180,11 +1180,11 @@ ufs_mem_hc: ufshc@1d84000 {
 				<0 0>,
 				<0 0>,
 				<37500000 150000000>,
-				<75000000 300000000>,
 				<0 0>,
 				<0 0>,
 				<0 0>,
-				<0 0>;
+				<0 0>,
+				<75000000 300000000>;
 
 			status = "disabled";
 		};

-- 
2.51.1



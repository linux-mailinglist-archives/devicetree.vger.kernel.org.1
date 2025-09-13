Return-Path: <devicetree+bounces-216736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EA2B55EF9
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 08:41:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 59CBDAC73B6
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 06:41:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F1272E7BD5;
	Sat, 13 Sep 2025 06:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YJQZunZz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A42952E7BA8
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 06:41:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757745695; cv=none; b=fxiwUIHrTg1dAnqHmg3A/GoWX2zdOKztzGv75HRxDlYB7OJHp+thc1ysoBuaMHwqkMTHufhyTjKBqrZZ7flJ9C4BvxcfWKJNHzfrT8eHUGOdNWlb7TzbarKO12tEI6al28Bu5Lgrm0zOlp4CnAMU68JipPJMOjrMFudAslU896Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757745695; c=relaxed/simple;
	bh=b4u/3r8EbbEWIWFxBt9+YcYVVzC+/qin113CQAU/g5A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Xgb5uMUlm+VprgCX4s+sYkJhaf4Gz7x6PkyiTegrgEbb792FOi0fnWMugyfLzWH/LuZ7hbCyVCS6AkXEHF1m+eLcaOk15mCb/0HEvyCXdU5nkJrVWQJ2F6Ax1QsAolL47Jl974sOigg0Dc+d5CLK7/r6NYYbgz0bxNQ+4WZjCfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YJQZunZz; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-244580523a0so26730745ad.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 23:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757745693; x=1758350493; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I+9gSbQhTkyUKu4oc46FN0yP83tgnQ9EveENpBOiA0w=;
        b=YJQZunZz+Z3KjLKM913jEadZLnOuK6XkCvNGtjDKJYuQvXCeWyAKlRceC/SYVcLBTC
         ha4La7ce1PBvnhIYrt0puzT97DoAIE0VSdpsiXCH9swN+4qjCAseUl0boKlUPfZakSvT
         6eD+cVH5PJQANKcq/55jWe4zGvhC5RwAisRKw/CcGt6YHkLmyFcrT03JGiPEsonvSS00
         IqH7RnBkeua2QRM9ZElQ99/o6BOEj8joeMqL1zzeuCWY/qw5vQ1nTLVPnGPFqO6Dx8vX
         7b1NQmlrqXQwDvNIa+3E8Gsyf/mC7jGn7FSdCipkLjyzJJJtxiRR16UIpANndrLHJBhC
         vQGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757745693; x=1758350493;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I+9gSbQhTkyUKu4oc46FN0yP83tgnQ9EveENpBOiA0w=;
        b=Dur9YfMDRMKcdE7ZQn2YLIsSoeY0tcvXmHtfbUBE8RnarPbT/P6tCvmCDOpitpI9IP
         AtRW1mm6ZnKs0RtJonbRu5Lk9B6sEcuQ94HvqZ/g3v872zCzabyU6fTYMIZeuq1X8Z2C
         wY+e5iqKW4fR5f1ZXj9In47ESK/9n34zX1poxQjDFUo2c8p4vdSRuRHgFpfdzIZhJ6EY
         fb1h1sAy6s1BdVC+SWx4eqqrG+902Gph3Ast5HCDssfu3fNIhUdhRkg1xXrIymvJxkG1
         ZTHhBSQy/VEnp31ObpITNuQ1aibq7QdkCgfOfbv/WIEDQtXyEa2pKzgWk1dbinE1Nqg9
         lZiw==
X-Forwarded-Encrypted: i=1; AJvYcCWQ3ka9swlhh2+PLQvOODzTn45Y09DmvEk1A/6OzvWJ63TNEBwB8Jde/2+Ks4fahgYHtv2Uf78Tdttp@vger.kernel.org
X-Gm-Message-State: AOJu0YxYHRrMUTV6OoasAsOkOeLk4USM5rjikmSamOnOOXkB61vXEJIk
	g8sUQPdC3WOLbtl36OTKuK6HrlqBipYZZo6KhNy4Rpdc/b+xiYJLh2ae
X-Gm-Gg: ASbGncuv64TqwDvWANenr/Q9jz/GiLepDVd9HTCgqBUAdawIa/a0HX0RA2YCKPMYYM5
	uInU9yIFLNoZjuw8auQscF9VBGm/pIuJW1+vpObbDAfD5XPzBSBgbbdb2ABx6teT4hBizonu9u5
	u/aGjRgKy+ZAahMsL6f3jz6gS3gLdr/TWEWjvbBWDUBhfDuBQl4epMu1Jt7q7UO0omDc0z8I4nP
	M+k1Kni53rKkYB+TpwA+mLtLbrzlTDFJDHsc63V8dJcSJ2RtBU8/QXqg+Yb6ylOmuGefnvygwBQ
	muBp8vxs216JrZ6xh8NNk79Mvhv1kHuCF+ta5uNRf1sI/tUbjD00AbIrm4SN7dQICfwOpHuhdqH
	NIvSCSMv7Nv2BIAWm2rODeTQvugbyUU/+Zl1IJP9J8EyQTercPEN5v70l57qh72/0DQ==
X-Google-Smtp-Source: AGHT+IEPMOXqhtSRG3ommkdDyK73YAd9aNroh5EmvYiCkuWeEel+Gu02hYUJwz3pnEOvbev7iIXNag==
X-Received: by 2002:a17:903:1666:b0:261:cb35:5a0e with SMTP id d9443c01a7336-261cb355f8dmr13755645ad.57.1757745692902;
        Fri, 12 Sep 2025 23:41:32 -0700 (PDT)
Received: from fb990434ae75 (ai200241.d.west.v6connect.net. [138.64.200.241])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c341aabafsm69525245ad.0.2025.09.12.23.41.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 23:41:32 -0700 (PDT)
From: Tamura Dai <kirinode0@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Tamura Dai <kirinode0@gmail.com>,
	stable@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3] arm64: dts: qcom: sdm845-shift-axolotl: Fix typo of compatible
Date: Sat, 13 Sep 2025 06:39:59 +0000
Message-Id: <20250913063958.149-1-kirinode0@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <Message-ID: <2d41c617-b7c7-43ae-aa90-7368e960e8a5@kernel.org>
References: <Message-ID: <2d41c617-b7c7-43ae-aa90-7368e960e8a5@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix typo in the compatible string for the touchscreen node. According to
Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml,
the correct compatible is "focaltech,ft8719", but the device tree used
"focaltech,fts8719".

Fixes: 45882459159d ("arm64: dts: qcom: sdm845: add device tree for SHIFT6mq")
Cc: stable@vger.kernel.org
Signed-off-by: Tamura Dai <kirinode0@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
index 2cf7b5e1243c..a0b288d6162f 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
@@ -432,7 +432,7 @@ &i2c5 {
 	status = "okay";
 
 	touchscreen@38 {
-		compatible = "focaltech,fts8719";
+		compatible = "focaltech,ft8719";
 		reg = <0x38>;
 		wakeup-source;
 		interrupt-parent = <&tlmm>;
-- 
2.34.1



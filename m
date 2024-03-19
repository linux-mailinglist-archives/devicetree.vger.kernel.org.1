Return-Path: <devicetree+bounces-51714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B1A8801BC
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 17:16:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 32CFBB234E4
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 16:16:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD91D84A3C;
	Tue, 19 Mar 2024 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PoVgTN7g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B7383CC3
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 16:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710864833; cv=none; b=BojOW5mCe9bCoYafywQv8Z0TTeLABiZpsUILSOv6xBO2jod32dIvlx8579i7BVmyJak/1dSslQZyREN4MJy7FQ9qt10ka+41ESht0KUEG2RBY1EJntXEHtcaA/LxRmWo1hxacHH0UbRJD5mKu5GtKFtfcF9qgJNOeH8mwKukqro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710864833; c=relaxed/simple;
	bh=u2xT7Esby1J3RKYeYjNslw3blgBjT8SrllnP1vANh1g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W92f2i0T7wBE/KQEfAJPYM7MPgKCftAMY9sfzswFrt0NVV2dFTb04CQARQm4R0ehJmUi5rCDwPPVNzdxXY0E6XwgBnz69my4NfJ/EFhox9fgff+6GszKDYSb+OGUzFkVgY0CDrms2KA/Oq5jtuGM3vn6qSmOcmPh1Xx3yDX1Ys4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PoVgTN7g; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-513ccc70a6dso9874713e87.1
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 09:13:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710864830; x=1711469630; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3s72ROV1TY9FQ/rR1vBGeAP8Yy4vPnMBh3DjvW5n6Dc=;
        b=PoVgTN7gLvPTvkmKiGX8HGjMFMT16ZNOqLfHC5SogxN5vRvcElJFfXtfKetMUlhPhR
         HFX8/e1BUsqVHoGrFUBqEWGuZueeWmgsGUnAOHJJeUK9N5/6RoVlQtF1Hy+/LP8CxWWI
         qJRBH6WRd6dXGELE+g+/93nOEDAqOA3OGxr1LGn9b93scTkInp1iCXNcTD50KdvlkXpK
         0kIKwergdnwcPwpEV6v22gxZNZSuEfeD+X0xsUIlnevN+zvajk6pkH2FbEZFmUczkgac
         i+fR0wn6O4u9T5Tp8T9LpHqVool7TdO2JG5UPWMmsR9J9RRo+kELX9msL6BeDeqWVkdD
         iU6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710864830; x=1711469630;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3s72ROV1TY9FQ/rR1vBGeAP8Yy4vPnMBh3DjvW5n6Dc=;
        b=batrlMaOK5lvmOeKG9eKRWGgF+QiRlY9jO70FxnbRgmDc2S+UhnyJkJcwGovFhhDjb
         KKv1QF2671Xa0Pg7kzUuoD5lSv+5Zp2u+q7acuHKpNHaLlVrDOefe+Y14yaOTovYNjMF
         VJw5JW0JHJ0BssZpIJWlqqz4CON0/XP9UChaI+NHlunMf09kma9KpJ53jhvkuk+v4p/Y
         Uwu4p5LV0box3dN4+2X3YuwSzbWXUePJPN/f3yJhOHcTTBUDToDTF8ukt4sRQlJyWTjY
         KizOhpTe6jbqwNVF2BUuh0V7wPxXN1Ge2vREGiKGr0cFp+wniIaaH3VWSPKSTIfg1PlI
         EIpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWM5SoVXi1Ah9zB7fcDN7UwaCbdSIR1GCVV2fKI5/ufYtDGlzXeIJ9FmeUZqampc6314zWLCnQsKDjY5sEouspjkHUOncU6NnOoEQ==
X-Gm-Message-State: AOJu0YyNYRP/2XQ7Rr1lOAB6fw5kp9v8dwaA1PIs5q6Z/WsTcRYTkEP/
	m/yzqIAnh3dbZPwKyL8P+NDCuyueIZsCdRhmu568rN3cRPwj09gp1+mzpClLBAg=
X-Google-Smtp-Source: AGHT+IG2XU3dXTL/HMZ0wjyShkm3yq6aj6ltXYMlCGV82MQ6syYCRqDz2EHkP3M7StASoKKBNwcBjQ==
X-Received: by 2002:a19:8c56:0:b0:515:7686:6068 with SMTP id i22-20020a198c56000000b0051576866068mr1917610lfj.55.1710864830033;
        Tue, 19 Mar 2024 09:13:50 -0700 (PDT)
Received: from [127.0.1.1] (netpanel-87-246-222-29.pol.akademiki.lublin.pl. [87.246.222.29])
        by smtp.gmail.com with ESMTPSA id dx9-20020a0565122c0900b00513ee207982sm607686lfb.198.2024.03.19.09.13.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 09:13:49 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 19 Mar 2024 17:13:41 +0100
Subject: [PATCH 11/31] arm64: dts: qcom: pms405: Remove thermal zone
 polling delays
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240319-topic-msm-polling-cleanup-v1-11-e0aee1dbcd78@linaro.org>
References: <20240319-topic-msm-polling-cleanup-v1-0-e0aee1dbcd78@linaro.org>
In-Reply-To: <20240319-topic-msm-polling-cleanup-v1-0-e0aee1dbcd78@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.13-dev-0438c

All of the thermal zone suppliers are interrupt-driven, remove the
bogus and unnecessary polling that only wastes CPU time.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/pms405.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/pms405.dtsi b/arch/arm64/boot/dts/qcom/pms405.dtsi
index 461ad97032f7..afa3bb469870 100644
--- a/arch/arm64/boot/dts/qcom/pms405.dtsi
+++ b/arch/arm64/boot/dts/qcom/pms405.dtsi
@@ -11,9 +11,6 @@
 / {
 	thermal-zones {
 		pms405-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&pms405_temp>;
 
 			trips {

-- 
2.40.1



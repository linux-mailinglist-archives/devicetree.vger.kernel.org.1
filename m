Return-Path: <devicetree+bounces-132977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 745FD9F8E5A
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 09:55:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D1E87160F48
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 08:55:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A65321B415C;
	Fri, 20 Dec 2024 08:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="DLtSAN0o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B76F91B6541
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 08:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734684905; cv=none; b=iJ2eF2hlxVrF6BUsTH/0LjSrFWNvjP77F6TjeNhSD4Htj8XBwzIYUBsy48ulNDJZr4HMHTLG0/91IAKJA+YSHr3guzCXA7wde+h9ieOUa4z3ZdUFv/g/O3N4FzFWreS47+Oh/Lr6vpiUK0dXw87rKHuQXBHGfq/mVFvqnvjdC4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734684905; c=relaxed/simple;
	bh=RBDW6pIiESDvWThJlMdAfXLNct165Bn4CNYmU057wrA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=PeKUfI0WnS8/MOu9e2EmpbeT2bPYBOb1vUA9y7t1RqmDEIyGwOhHl8iWTBWae+pmUAjoT6Dm64vnW2R8+KRGJctb4LifjGg6f3U+1SDVtBFnS6y1EW9yOgh0Ukdko2Mu3gWQv5rgJ+XEQ+3jBhB49G6un+IUH3bFuvEq4/lkZvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=DLtSAN0o; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43624b2d453so17380655e9.2
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 00:55:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1734684902; x=1735289702; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=x4bX0y1U2uj3LXkaRKY3Bj+bT7kkfpgx6oJ7MVuwDAg=;
        b=DLtSAN0oFwmLXoI+MeSlyJCDC0zBvYGMKrqqOaUvAF9bItzelRb2Bc4OcNw4F3HsQW
         caoHIMWEz5UMjjM+18T7JYuuQpMJ1dN8VEmnkCV8N3roHRXGGsSJIbcdGq7uJ49TI1En
         ohAim1KGFhKDmuolyLA3MVXiUsXocmLo/2QCR+Sj43BcpaXFC7OZTUtIgwIsE8jEk3G1
         DKJCeHQIFGfjSpNkosWQcLGgm1OtH7Qtpcnczw5i0o3IE9qgm1aZC/tD4p6G443Ng9k4
         dTYhnJ2fcBxVL9hzNfRv7VDIQvahL0GkHOTQ1aKZYELLyfHSyQS8BWwLhMmxS9gcwciD
         aMzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734684902; x=1735289702;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x4bX0y1U2uj3LXkaRKY3Bj+bT7kkfpgx6oJ7MVuwDAg=;
        b=TVvMywvPYoR669gSW93Hi7YZyFTUffUoAMZyWjQaTpgEIScXVXFcZbYG62bUaCBiXK
         CVN2otkETLgbr9JE/VfbEruOCuNjbaFTmhcWwlH5LPe6cGA9i8vjxNF5mhFquj05hNya
         uWX26pTkE3Ke/KC2KnZF7uFJaJYo1tvKG/aH8pJ1m13IGQ8huDNEoZUg1pl1QJAGGK0U
         Hf7VqJM6YQtUwzSsfXkqZrI6Wx4Y2NOWfCL+Hr3+YR5kd54MAxXq3jpBUJAav6ZC/y7H
         P56LcSkR4JBWpf+Ie7onzRceUgYYLBmWdNpYYR8f2s0Qfg1GWPzwiJwCfc7IwZxRj029
         gVrA==
X-Forwarded-Encrypted: i=1; AJvYcCVPPL1T+wTZeK7hmhDcuzFNBxbGfVJZWJxABGAQL5e/G1l0zAnUWCJpJ/gcVJABCP4yNjEb8s3wd9eF@vger.kernel.org
X-Gm-Message-State: AOJu0YwTzkCrzPTrHqUC8tJJ7rTCvrfqt4QvxHdqQh0NiQkavPr1ddGI
	JtNE42OXP6WKeumAMTdRtIwux2m+XfawJbUY59BlB8WXaZRPeG0ZYsArZVpx1V4=
X-Gm-Gg: ASbGncsldcOFvBHAZNyeDwZM76RoQl1ovHNWzE0/SRKgvlqW+FKdu7Tv5C+YDPNlGFb
	Dml9ZK8nX38fv/z23Kp/zKGTDx6xee80X3JhNE6jzXE+LPl5EZub/t46Xs7Tl7YyUkEiiFaesrY
	na0IQPlAQeXccbrnjZ7Y4Eq1jyEoZCocubzUqRJ0Cy/AhRGHqyTQjYEuDrZL2clVuEOYnNrlfEZ
	IoHaGR0bYx/uDia8LC7S8heMY5qKWHwmLP//+OvOGepfdEddXDsg0xHqmhHxU4b5awPi+Mh1RdK
	aj/UvvmJy3u4tSrutjzYEdkXioXUmg==
X-Google-Smtp-Source: AGHT+IEYiNsrQEZYY/R6oX1gs6boqSiZAfgrH8ynuQCvryGC8V4E5T2j2oWTo6VitrE0P5xEju9nDA==
X-Received: by 2002:a05:600c:450b:b0:434:f586:7520 with SMTP id 5b1f17b1804b1-4366835c3a3mr14506175e9.6.1734684901944;
        Fri, 20 Dec 2024 00:55:01 -0800 (PST)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43661200abesm39815225e9.18.2024.12.20.00.55.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 00:55:01 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 20 Dec 2024 09:55:01 +0100
Subject: [PATCH] arm64: dts: qcom: sm7225-fairphone-fp4: Drop extra
 qcom,msm-id value
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241220-fp4-msm-id-v1-1-2b75af02032a@fairphone.com>
X-B4-Tracking: v=1; b=H4sIAOQwZWcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDIyMD3bQCE93c4lygsG6yublpmpmFmYFJUpoSUENBUWpaZgXYsOjY2lo
 AyFQXelwAAAA=
X-Change-ID: 20241220-fp4-msm-id-c775f68604bf
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Luca Weiss <luca@lucaweiss.eu>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

The ID 434 is for SM6350 while 459 is for SM7225. Fairphone 4 is only
SM7225, so drop the unused 434 entry.

Fixes: 4cbea668767d ("arm64: dts: qcom: sm7225: Add device tree for Fairphone 4")
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Completely dropping these values also appears to work when using
boot.img header version 2, but doing this change now would mean any
tooling in the wild for packaging up the boot.img using header v0 would
stop producing working without adjusting that mkbootimg invocation.
---
 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
index 2ee2561b57b1d6c7b0f40c93de62df47faaf95ca..52b16a4fdc43212e1ca1986361b01f47d36445d0 100644
--- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
+++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
@@ -32,7 +32,7 @@ / {
 	chassis-type = "handset";
 
 	/* required for bootloader to select correct board */
-	qcom,msm-id = <434 0x10000>, <459 0x10000>;
+	qcom,msm-id = <459 0x10000>;
 	qcom,board-id = <8 32>;
 
 	aliases {

---
base-commit: 8155b4ef3466f0e289e8fcc9e6e62f3f4dceeac2
change-id: 20241220-fp4-msm-id-c775f68604bf

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>



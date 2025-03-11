Return-Path: <devicetree+bounces-156424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BEAA5BAC5
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 09:24:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C300E171266
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 08:24:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4626F2248AC;
	Tue, 11 Mar 2025 08:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="sRPUNWMS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703A022257B
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 08:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741681464; cv=none; b=jVgy4R+XtedjGJ+7qXwvaYhMnRO6NGtil0z41SObPm21YG/DSSDNyHWbUlV5s/4DiAHumCZW3jEa6KxZSD6pmzSUKWUyUCONBYxaCSp43O5UKbXAAicaqPEpTrG7pO9aA3tiPaYr+KECpP7jb91U+iCZ8FCid2+7W1sVd8vlJQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741681464; c=relaxed/simple;
	bh=xu3zP1HoofD6juWhjBldyocKjaXNqT0I+Ivbyr36UBk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=PTjWZ1UebH6d7ccD9ZbvI3UYhVs327+PDMEhxVtVXrzZ0Uibe1WJSYZkbHZasFCtBVphxr+zlNduT4SVSYscKCh//kwW04aTk5J0wHUpiGBUHcyXuNQVJxcPsXbq94DqkFcO862tLNJqncS5X33jtTre3XVUGPUMOWGDUp9CJtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=sRPUNWMS; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-39143200ddaso1298972f8f.1
        for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 01:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1741681460; x=1742286260; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MkuwlZJMUyuJz7nY/CVS9mePyWOIvMtEr4YIIpcR7vI=;
        b=sRPUNWMSVCVA33WWr3T+aN6HEboHPmysl8eDIiLjY71lRrzl9PhVLh6+yEtIYeejjR
         nsSsuNDNFAiic1lg12XPDRxEzsjI79f0/Qjg8KdzFdTkWz1AdJ0Qs9pJbRQIIt37zYGP
         +ns/gnuwHufskOB+rINsa/DtIijImFioQubkppvCV7FvWwKdAE71YwzlJr8d9PRs3yMw
         I3IMrPrw/68wkDm1vNfBnlEAzsoizbePairK6aB8wxZcXXcI2D+UnZ9wQ4ks1k2qeWLP
         XOkOWreaBfvSu6ZH1BhzGQ/B45LXbhh7BqGDse8Oyc93qRHIAKFA2IukarzhsRSMip/9
         JnGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741681460; x=1742286260;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MkuwlZJMUyuJz7nY/CVS9mePyWOIvMtEr4YIIpcR7vI=;
        b=jZTx8Z9uPnjZHC3jxsUjIX0gD8dn7Sp7oXbIATqESx9zQbU9Vf4NSaoEgF+syeo25v
         uHmuL9w7J2IIrA97bVLt0YH9lH1xYqjmuujMuw4umOMGcetQHFLuoMkR10A710C7oqoC
         MkBe9/GmTMJ02OqTwCDCSLXwXIpLaAEJrO9GckMrZSLZBqRsjcZbs92nURJUmqC2Ijvf
         44IZC5gynVIfnNtO8QmdZOnLb1e01wsn2Thh/zRfs7kpuCkiwZFOSZT3oFm2qKvlYlDv
         9XeUtDWeIaZaV//URMbU+Rtwj2SJbPndqUPskGmKWWXoywk0A7wLzqVUyn/HK+YDIW9H
         ZyWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUc891kfCaTdguo55wO2ivGh0+Z1mxJBK4p4NMzikU488wEWbSdacb09aaWb8y7q2ewPwG8KaQKZkR1@vger.kernel.org
X-Gm-Message-State: AOJu0YwbdvgHUNTvqSUWfDaD9Rnx4xATlRDff+nhCL7DfC5O3R8ecEbw
	dX7cG6Dyw/5y63iTxIod/2wtlXz7uNe72iCyo7WWwkCB8GaDx3UwalfFBtUkFqF7R3dcc5hi7pG
	A
X-Gm-Gg: ASbGncs+bjugmsSRWmnMUbUhTGkHfDJZXcIZM60Qk+8FeHX+gVdUSxc7K280hD8iT8L
	vYFks/q5jFRiNt26YibvwNuvV4UPgiN1CgLLw9UDy4q+QZn+9+ILzEJrfNwiIg+kEC96m4XqiYt
	nKeZ9RvBBflfcl6Bm2olj0PnXjIJH+s7wFjGR+7a7zoF8Z9UYmo6po4y+455Nr2gCjovpmpD+l7
	nNxc3uJ7A3EXfg3VzrlEbmzV5rPI3q/IXos3fGVgE13ohr0Dx8+xUxc3jQIg507Rvtj2k6BIY5U
	5i+UnFoR6RkLu5e51NAm++TnSQG2vh6A+nz6/bjLkoz4Z9bUQwxhjSxNlw4H1r4oqgX7r/nqDvl
	5sVdv0TjEtHYzPkIzkA==
X-Google-Smtp-Source: AGHT+IGcMWouoW5czhBbn4yWMxCe7rFrkdK1wII/1naqJaluMq6AQhQYDYrv/8Bujg++Ac3Li9uWDQ==
X-Received: by 2002:a05:6000:2a3:b0:390:efe7:20fa with SMTP id ffacd0b85a97d-3926c69b312mr3431264f8f.47.1741681460573;
        Tue, 11 Mar 2025 01:24:20 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ceeb5995esm90826545e9.16.2025.03.11.01.24.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Mar 2025 01:24:20 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 11 Mar 2025 09:23:39 +0100
Subject: [PATCH] arm64: dts: qcom: qcm6490-fairphone-fp5: Add touchscreen
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250311-fp5-touchscreen-v1-1-4d80ad3e4dfc@fairphone.com>
X-B4-Tracking: v=1; b=H4sIAAvzz2cC/x3MQQqAIBBA0avErBNMK6irRAsbx5qNilYE4d2Tl
 m/x/wuZElOGuXkh0c2Zg6/o2gbwMH4nwbYalFSDVFILFwdxhguPjInIC8RxGmWne2s2qFVM5Pj
 5j8taygcnJb1iYQAAAA==
X-Change-ID: 20250203-fp5-touchscreen-cc6960134dab
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jens Reidel <adrian@mainlining.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Add a node for the GT9897 touchscreen found on this smartphone connected
via SPI.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
The series adding support for this chip (incl. dt-bindings) has been
applied on 2025-03-10 to the input tree:
https://web.git.kernel.org/pub/scm/linux/kernel/git/dtor/input.git/log/?h=next
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index 356cee8aeba90e21c11f46df924ed180bfce3160..35ce9dfca6f092a88d8873673ff57b591e210b02 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -1069,7 +1069,18 @@ &sdhc_2 {
 &spi13 {
 	status = "okay";
 
-	/* Goodix touchscreen @ 0 */
+	touchscreen@0 {
+		compatible = "goodix,gt9897";
+		reg = <0>;
+		interrupt-parent = <&tlmm>;
+		interrupts = <81 IRQ_TYPE_LEVEL_LOW>;
+		reset-gpios = <&tlmm 105 GPIO_ACTIVE_LOW>;
+		avdd-supply = <&vreg_l3c>;
+		vddio-supply = <&vreg_l2c>;
+		spi-max-frequency = <1000000>;
+		touchscreen-size-x = <1224>;
+		touchscreen-size-y = <2700>;
+	};
 };
 
 &tlmm {

---
base-commit: 93498f5ea4d0415cb5a95680224335651580cf08
change-id: 20250203-fp5-touchscreen-cc6960134dab

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>



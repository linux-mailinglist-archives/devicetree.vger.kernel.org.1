Return-Path: <devicetree+bounces-189376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E2182AE7BAD
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:11:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 984803AF0E8
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:11:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8513288516;
	Wed, 25 Jun 2025 09:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="LA8l7xCC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B77227C863
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750842703; cv=none; b=QposY3qlNKAcKcIj9u99xVZunKyabHOUOs4YPy7mz67PwlW2V450lEXb8Lz8LsSQZoYJFeYLTRtl2EU2fJc0diYaZZZhDgRWoLK+GzcujfP10NSUovbr1qO1wh4ltBGj0Hl3Zbg0/sdj/xfoEOwEY3i5MBlTJrepM3evHBUta+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750842703; c=relaxed/simple;
	bh=20OgU07hYw0BKvki0Oaix0JpyTN3z8RUI0obpczt4ZI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=czoTPwaeuE0dnU+WJE4Qa4+931TkZUUZVXXe+PtRCx7ZGlwsLV6QrBxkgCEoz+dVxzOoLxL0IPkMxCVAOwT+Ubw16oB9fRlgvB5yQzNe6+eTU7tV/19XgkLeofmVdh1e925wenV3KQthABuXj94oKaotqru8d11BttyovF1YYRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=LA8l7xCC; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-60c5b8ee2d9so272619a12.2
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842699; x=1751447499; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uMKYOxxD7UdxTP/ee1363S4GDcIjdo0gX+UMgMSM07M=;
        b=LA8l7xCCcO9COtBMNSD+0HzPlMsC9vYezNo01bYnblQcNA/yCbIrI434lsJidHFI8Y
         Y7OhoTnd4TNZBOL4BO5UFhv/foxW/3kSTV2J2UjQqpyg7jdCtsPKf45y1uOj7aaIvkbw
         ezs9VH6Lp2woTb3+/h0F7EB+aENYptXVroPkLD9v9jVQl3+V+9rJYE+tcpxYI0xvUNil
         AwpWximdECgYzl5yFGKngL6/tGQSx303sBbgOUUP2iWV8zv0OL2HjKTK2MgxcnWBYqFl
         B9Dm7SqufpC2sva7t7vHQmxQcARIQLwNZC0oMM3wQ4o01bEMcuF6Bijljmcfg36CNRTo
         tIEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842699; x=1751447499;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uMKYOxxD7UdxTP/ee1363S4GDcIjdo0gX+UMgMSM07M=;
        b=SPMDXwUxEKwSRAKPbZqAwnMM3sM/BiZsb1tekItUegpn5u/feGakMKWeOlkOHSdX1v
         kP5P4pBsL5l9SKt3as5dopGujaYNTA4kAu1aPT0E1dmhNNGPZVu151aVb826fRfaLXLG
         yiXaJYISVoO35sCHaO+UzgH1gYYx21qDbHDrJG5JR5z3O7mTeAMOgyM+AM6Ot7SPjDJg
         g7o1P4YArTh6KeeLCGmnTgFDyi/11FGY4AjxrSVSNfmiphNrYL+mBh+p/qc9dNBVCo1H
         TB1f/6x930weqUhf4SYBwLc/UD5yY/ouDCpk8q5NbWBzbjL2gSDz+HdAUJogpaAVO8es
         a34A==
X-Forwarded-Encrypted: i=1; AJvYcCVZ1jZcgtAQp9ccIBdc3IOjValDfosEBHml5xS7X/RsgCQwlMSuIphlWGWc7PfJPAWc+TKLsc+OnfM1@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8In3IT4RpVVMxI9yMFybZHgMZiYVvRS3oKbweWvrYI1JEm+qq
	T4vvo3aZoHDE6A4kJjULVeoRP6ujEyw3nnqK9JRWv5+6daltJ3Y5GQeZpr0l/esi2tQ=
X-Gm-Gg: ASbGnctmZoI7WEuZj7J8q0LQ0eBoj4J0eccuX43ivJy9S7Nm7gGi4UCkBEedwcVtsnq
	gCbM/9gxCkFZGdSjfaTePjMVya5RQLSFcfmZcJ47HaY/6aLiaRSRYHsz+GS7rwvmJ/YSuZ3pzRu
	yjFYDCIKcCyELTrBpz6mMWTNzpsCld95EwNfmBperu+N3W0OuoEymNMn0ORUzYJdRdaAI48KUZW
	gpP+vYAD8ImcCNkWHRDyBesDFZfF2Dh0mZVLYQ1Z1cuCT7WxMtCVF+IBTR0X4GKnuySLVp919u0
	2/8VW5jPZ5Yqtb6Kl9eab0YYpEEBCAJNo29ESnbnSfG1twI72sCG00XUEJtVSyu6cryQcaaRyMd
	XvSs9ad8K9eGocGj9ugi+t7eCZt/xIktt
X-Google-Smtp-Source: AGHT+IEc7/hN2f9cmghjg+sMULShIBvhh5KvCrY+8l12A4p/2NB5EXrD1TehNzU0qc52lkbGcpeGcA==
X-Received: by 2002:a05:6402:2b95:b0:601:89d4:968e with SMTP id 4fb4d7f45d1cf-60c4ddc2ec6mr1441560a12.27.1750842698815;
        Wed, 25 Jun 2025 02:11:38 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c2f485d0asm2167101a12.64.2025.06.25.02.11.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:11:38 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:11:25 +0200
Subject: [PATCH] arm64: dts: qcom: pmk8550: Correct gpio node name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-pmk8550-gpio-name-v1-1-58402849f365@fairphone.com>
X-B4-Tracking: v=1; b=H4sIADy9W2gC/x3MTQqAIBBA4avErBswzf6uEi0kxxoiE4UIpLsnL
 b/FexkSRaYEU5Uh0s2JL1/Q1BWsu/EbIdtikEJq0UmF4TwGrQVugS/05iRUzkhS7Wh110PpQiT
 Hz/+cl/f9AJE4wKNjAAAA
X-Change-ID: 20250623-pmk8550-gpio-name-3fa2e349d567
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842697; l=992;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=20OgU07hYw0BKvki0Oaix0JpyTN3z8RUI0obpczt4ZI=;
 b=wdifaQe+6/HlEDQF8LAH/wkqmOA1J/D1j9RVM28OKGvP2EQPBSEIw3ic+R9Uf3/dOocYrdNGd
 OSrCrGT94wkBZ+fFM6Wdza3osAI0Fsm92N1CGDGA6RUbsmWs90PSKxp
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

The reg for the GPIOs is 0xb800 and not 0x8800, so fix this copy-paste
mistake.

Fixes: e9c0a4e48489 ("arm64: dts: qcom: Add PMK8550 pmic dtsi")
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/pmk8550.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/pmk8550.dtsi b/arch/arm64/boot/dts/qcom/pmk8550.dtsi
index c7ac9b2eaacfe6e8363448d9d2ffb4ac8f5f4dd2..583f61fc16ad570972ac166aef12183382ebb4c5 100644
--- a/arch/arm64/boot/dts/qcom/pmk8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmk8550.dtsi
@@ -64,7 +64,7 @@ reboot_reason: reboot-reason@48 {
 			};
 		};
 
-		pmk8550_gpios: gpio@8800 {
+		pmk8550_gpios: gpio@b800 {
 			compatible = "qcom,pmk8550-gpio", "qcom,spmi-gpio";
 			reg = <0xb800>;
 			gpio-controller;

---
base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
change-id: 20250623-pmk8550-gpio-name-3fa2e349d567

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>



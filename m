Return-Path: <devicetree+bounces-101052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B596970237
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 14:51:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1AEC9B21B32
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 12:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C3B4481B1;
	Sat,  7 Sep 2024 12:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ilUYbhCm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE06481CE
	for <devicetree@vger.kernel.org>; Sat,  7 Sep 2024 12:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725713492; cv=none; b=b6KZMiXFt77Xl5Gj9MZhrPb7fIac5Y3ftAi+s5DzMXXHtyszeFTDWNJHzw7tLRUOx6NRIbb+XVLZAfXV3USTU5kblH+PhJ0Xp+9GaZNEBFC2/tLr07tycB2+ijIEZwM/bwEMtPdLIMdFvnNGh/UyK+cTEo2/LBCktU+r3SJ8YBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725713492; c=relaxed/simple;
	bh=EDAXLCTGPPctvNYAbbxm7Me0iB8kQf85A6o3WySte44=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qWoyvs1MVc2zvfw30RzWS1IkJ1djGVIDKKv5G7yZrecrj/F0cV6MD2gGwfaQZiYyHo9KQGHH80Wvs122ZGEim5akpf8qYt8Td0ej4QSBTty/UELEeCCbg4N6XK4L6UAy6oyCn0X/iZR3k5ErADxc4P6VZqAs7sBU8YcWRRSTCuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ilUYbhCm; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53661ac5ba1so144901e87.2
        for <devicetree@vger.kernel.org>; Sat, 07 Sep 2024 05:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725713489; x=1726318289; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ovDRCBi9iSRtbdH6fDiVUosmGhlKDzrTgtDNR4gXIlI=;
        b=ilUYbhCmQCgTZTqfwMLj+j/vDiRbimucJ8YLzR1VEHUprkHWL5Aiy0QWOyPw9f3wkg
         rLGkGgBzD4tRXfBFHY4JNqqIoYE89S+ftOsYVOYN9+K/mzvDVchsQR2sP1hAc4Xuxp84
         fd17sg0UoWCKigeNmWBgbUdaf0/ol66nxvE8K+mK4jekzT9YnWrXJqthJYw8wgvC98zh
         uzucPfy4llqJcR0mo1iI7iIrVJklbpAeksI9rcOtHCpsiKXtGFdvuy7m8RMoTckEgqp0
         m6QKiBt04tWlLWm+InHZ0n4Ps7GPkc1+3G5Mk1HnC5IwMDV1no4WUU1BJtMF34jVEWOP
         yPpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725713489; x=1726318289;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ovDRCBi9iSRtbdH6fDiVUosmGhlKDzrTgtDNR4gXIlI=;
        b=nWKC0RbL3gf9Z1JHgXC8wDqmPCyzZqdmZuuegc01lJcumYUIaRr1sgAfeWeUfstRkG
         50pJiwtl7YqunDVvCUP64G1qyydDA1uZ+lIPAAZ6BZ8ak453Ixw8IsJ6z8i3v47HDLNq
         rzemu6W9epKJMmJEJeXtz2I/r+/50M4XACIPYs1wXOLfM1zOaB9jAGPklUZ+FUhpTDl7
         N3dds6/pdkuDGvto7ofOgYYqzVqFJUgWiK2i1s9DomefpsfPo/yVV1HHswvrD5qc0IQz
         bXl8CUKXMlyeH+GTDdgOvjA5mNpPGCwiwKRz/SL9Yz1yzLOqn2+848/LmUfF73LhtxBB
         QSBA==
X-Forwarded-Encrypted: i=1; AJvYcCVcDnDnnrR1YgHHAnHYOeDnSP+tZQQg8NM/2JiRQOos5Kj+OVquUmQyAkchga8nRFJsEstseBkX0ynu@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/pLmNAJXf6YQTeeFyboeJ8rfVhhTcoM/Nt8amRR1QcAUis/16
	NKhx3blh8Y3/bkiyVzKpfMvz4oaXoFIO988WkASJA5oW0Tw1UJcXi1gt/8epvJY=
X-Google-Smtp-Source: AGHT+IFRLP6B4nwWLei4oiZ9eJVykUHiF61kCazDdU+Lymy23QexZJLmiNTHXHHfeRqcK/qMfKZiPQ==
X-Received: by 2002:a05:6512:108b:b0:533:526a:cd08 with SMTP id 2adb3069b0e04-536587aadaemr3979874e87.14.1725713488509;
        Sat, 07 Sep 2024 05:51:28 -0700 (PDT)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5365f8cb76fsm143273e87.177.2024.09.07.05.51.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Sep 2024 05:51:28 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 07 Sep 2024 15:51:24 +0300
Subject: [PATCH 1/4] arm64: dts: qcom: qcs6390-rb3gen2: use modem.mbn for
 modem DSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240907-rb3g2-fixes-v1-1-eb9da98e9f80@linaro.org>
References: <20240907-rb3g2-fixes-v1-0-eb9da98e9f80@linaro.org>
In-Reply-To: <20240907-rb3g2-fixes-v1-0-eb9da98e9f80@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Komal Bajaj <quic_kbajaj@quicinc.com>, 
 cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=865;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=EDAXLCTGPPctvNYAbbxm7Me0iB8kQf85A6o3WySte44=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBm3ExNSAb8ooJvGwtsasu/bAtl5E4plsGYfi9oq
 STuYdYhAzOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZtxMTQAKCRCLPIo+Aiko
 1RelB/4xAmEY9VpCP3yhvRhZxxAumpIxblm+ZQ3B0d1JhgGZ0FxPEfcj8b+QxSb8KOCvAcD3V27
 xtPKzJRe23eFzSNHGOnpMNfn+ofRNMpq1Yp6b1lR3kNWQtWS8g74GjjUO5yAAVBEDn4aYnV2TI/
 BxP2YE0PWrLdrJoIW0Pj27k4BezOIIuRv0prTJ9mflsL/ukuocv9T9lBytJXh6o7OCc1xyysngl
 qGJI6A7qvSF8Dm2KGWYouXrsXi/pmIFvd9vAOgOVGQzOyAIzlcSrEGmZiYP2R86CJHVRuwwX7Yh
 Frk1B5Ym3ZRixKENHxuZ/8Fk1sESDFVuf12qCTGEjTcaWyrG
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Newer boards should always use squashed MBN firmware instead of split
MDT+bNN. Use qcom/qcs6490/modem.mbn as the firmware for the modem on
RB3gen2.

Fixes: ac6d35b9b74c ("arm64: dts: qcom: qcs6490-rb3gen2: Enable various remoteprocs")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index 0d45662b8028..5d0167fbc709 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -707,7 +707,7 @@ &remoteproc_cdsp {
 };
 
 &remoteproc_mpss {
-	firmware-name = "qcom/qcs6490/modem.mdt";
+	firmware-name = "qcom/qcs6490/modem.mbn";
 	status = "okay";
 };
 

-- 
2.39.2



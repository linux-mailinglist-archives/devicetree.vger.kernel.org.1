Return-Path: <devicetree+bounces-222802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9853BAD1DD
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 15:57:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 78F2A1C7662
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 13:57:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8851C304BB2;
	Tue, 30 Sep 2025 13:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="KO4st/kh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7903F4FA
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 13:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759240642; cv=none; b=rtpazXqIAXmwAzTKYpHBDRmuS059VAI5KIaif4r6bTga2pqRRU2Px30xeJNYA7fsQW3x1UlgpiAXw42qnNvm3YoIU9Jrk2NL41Bt5HpzoT4vA7YCxGphtDdEycY2gOdc1R1Xj5fDESOi2TlEHblQTjuCqdoOshrjvaTJdw5wg60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759240642; c=relaxed/simple;
	bh=1x84MG3B6+rIyLmlzbvcHx7tOGONlCSyAvhMbbN0B1w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mCwdbkoBuFXHw4y8iPRDjeDCNxuDs5ugOeW7GlPrlP096AQke44y6VBnTS5ysxcmvkBTKLqleYx7hQD93rNriRO55BFtuV1gielmFP8hgVKI27qGUdw+mxwPSYMiEoTcWwXOA9GY/VGNulBI2z+VSxlvd0zAE0mN2cFzdBQqIqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=KO4st/kh; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-6349e3578adso11313581a12.1
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 06:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1759240638; x=1759845438; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2xA4DauDgUbKo1WZQ953ToPUo77YTzWkhKxmPQMFvMQ=;
        b=KO4st/khWCNGzcSTDyQTFXvDYGQqP4S9fy7EoRTzrbUFs2wX1rxRGMDN2bTGQoXokW
         IKYZlYT78q9zUnteoMyk02boAonbSZoXhTo8b3zjBxH4AoBZBHkediqvV03X0a4G+jT9
         VA2cPqxy/ENKm4E1pygY88hqQ1JkG+p0MoYrMYjUFR3okQluhDXY3XCtSFzGPeEv1p/t
         WpH3K9ISTfK6ACJQrKcF/tPkJLCH2//W57MauxlaGW3+cHbYDLb3k/JieoCrRwiaUraP
         /6THhp4rsj9S/Jfof5GSIouL495OO9zYQMAZYFWZgO7VxOJ+CHCLpWa7HMEXPUcML/xt
         egaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759240638; x=1759845438;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2xA4DauDgUbKo1WZQ953ToPUo77YTzWkhKxmPQMFvMQ=;
        b=VgV+rHTK6JHg9+TxE0pNfQMHYH5svKDxtyG14/SCBzHOqyBI1citGb3i0opxHDEBDT
         9usMj7xvEGtZCLjw5pmVod+0DyToD8C50kH3Fy8ia8gnBnGZlkUXmMxrjk98NTh5F1bx
         R4ErDsqLKJA9zqc4hZd2xcXmLzxp7dlzYdgU16azmkG75W3hMQUuYT30Nm1+bnUpn2lL
         aWt6XPqBAD/RdBpdq/3MjfzJbFXeklfxXGgBq/GNJmXl+M52Il/r/guuRCOZP/wrI971
         +GjIfPHapOX1Qiu0kMuHKyGaTyukIcNlYIuM950wdi3NSC/HlVeaslf82D1s62VLpc+J
         gQcA==
X-Forwarded-Encrypted: i=1; AJvYcCVGfFjYlTcGCueOHGVr0kk1OdzChYeqyVN8bWNQPnt5tnUIltmE3rlGW6cAt4e0vOv5mAOdQQkBAbph@vger.kernel.org
X-Gm-Message-State: AOJu0Yz60cs7N2fKevSdwF9Be8mdyJF6O4ttcxJrZQUgduAqUM45MkZb
	zwaPximreCtHyehykqF3cztk6KvrfcJk5RAIDuSXZFgURF8TYinAhJSj3cSnW9zspIVsaH8lKj9
	E2ZQ4kfk=
X-Gm-Gg: ASbGncs65Yj6v1pMa+Xv9hyKuZfT+F4ZLjEK80IEgsPMkGF1Y5fCwaTnrmp21NwrCpl
	gzj07gyHttTEOO+rOeZFXllHeeM+d0DuTpS1hkpDu5031o8+sq7+BDbEkyEfSGByCR4sMVBQXiB
	869FmCl4WXdL/R73Zfnxg1ygQyBXhsUVHDuMWazvSqDwehETy90ouRkx4yrc7fKu3JBw3kL8WRK
	6WWq0vAsAOlzBOwZtl2GeEHLO6qou8P9KTNmeUR82uzt7PWHKcgV75OaG/RIl+6nzMjRdsMfASa
	UUNGvPTTvzp7vpOpr+Fg/joRQRotp8QlBFLLvk0bRWQn0cnJFOJ168Z7uu+BfMq5p4y+cf0uhgD
	tWlM/LLVX4bDapxMYGaDZ6yJ8qPQ7uLgKm0X4Y6EJNVDnMlUssGEHm6ux/4ojcMZ0o0TItQVOoV
	Ch162uMtHhaYvt6lzWsA==
X-Google-Smtp-Source: AGHT+IERKslKjdq0BrQ1VOkSh4EKFusUKWtXRtHjmXAW75SqlWpqvYfjUSZtYoVl8r+DZg4tRIiZLQ==
X-Received: by 2002:a17:906:391:b0:b3e:151b:849e with SMTP id a640c23a62f3a-b3e151b86d4mr767458966b.10.1759240637785;
        Tue, 30 Sep 2025 06:57:17 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3fb818fb90sm370234866b.63.2025.09.30.06.57.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 06:57:17 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 30 Sep 2025 15:57:02 +0200
Subject: [PATCH 2/5] arm64: dts: qcom: qcm6490-fairphone-fp5: Add
 VTOF_LDO_2P8 regulator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250930-sc7280-dts-misc-v1-2-5a45923ef705@fairphone.com>
References: <20250930-sc7280-dts-misc-v1-0-5a45923ef705@fairphone.com>
In-Reply-To: <20250930-sc7280-dts-misc-v1-0-5a45923ef705@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759240635; l=1168;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=1x84MG3B6+rIyLmlzbvcHx7tOGONlCSyAvhMbbN0B1w=;
 b=lREdBSoS00W8KHeYcIcLaMeAqfjHbVEtn2/Jd1CozYTiGlPwi9VXXkojQmraOODDAdyTDjxU8
 vLr9Etgr9MyCANvti2k7FWCn7e+pmM83++TnTyiW7tbMIOqoktosrWv
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Describe yet another regulator-fixed on this board, powering the ToF
sensor.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index 36d5750584831d66b4c2faf6042e4cbb3274eca7..0a64e5721e092d1f3e4bb7329335704eee567761 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -195,6 +195,19 @@ vreg_usb_redrive_1v8: regulator-usb-redrive-1v8 {
 		pinctrl-names = "default";
 	};
 
+	vreg_vtof_ldo_2p8: regulator-vtof-ldo-2p8 {
+		compatible = "regulator-fixed";
+		regulator-name = "VTOF_LDO_2P8";
+		regulator-min-microvolt = <2800000>;
+		regulator-max-microvolt = <2800000>;
+		regulator-enable-ramp-delay = <233>;
+
+		gpio = <&tlmm 141 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		vin-supply = <&vreg_bob>;
+	};
+
 	reserved-memory {
 		cont_splash_mem: cont-splash@e1000000 {
 			reg = <0x0 0xe1000000 0x0 0x2300000>;

-- 
2.51.0



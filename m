Return-Path: <devicetree+bounces-66489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9628C3463
	for <lists+devicetree@lfdr.de>; Sun, 12 May 2024 00:04:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1BCEA1C20F53
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 22:04:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEBF0524DA;
	Sat, 11 May 2024 22:04:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AhuKd9+f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3A440879
	for <devicetree@vger.kernel.org>; Sat, 11 May 2024 22:04:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715465055; cv=none; b=mqABsoFljR2IG5uxJp4O/k3wRUn8urb6d1kCzcGbYqK+JIqPk1q+gcZ6dJzuHYLl7/M4dUQ894PXwCaI/zN7vn8QPonOM2u5FQlGkUjcBDPgKn5jt8WEuG/r6nZAOqmo8sKvXFmfnarGNr+6HLwkwPSUawDVTXYt+6NlAWLIzz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715465055; c=relaxed/simple;
	bh=Xo8om8fumEXzQduQdJPKXB6VlSeocBEHT34qMhggAXY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YED8TuNA3r7ocxCPADkIkYoumHuA3VC4XkShGll8QJxw1lcM0ejTjHEnmkzK6349XLbvM4wbu8BzY1waarfGXoubKkHOnNtcIr3v2x0K2FiEKtKFi1HYdNSxGmSQOB9GbUfVUVzBpg4bgzTb3w6Z7qOo79WeG+nLZ/s/PClzmUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AhuKd9+f; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2df848f9325so39108691fa.1
        for <devicetree@vger.kernel.org>; Sat, 11 May 2024 15:04:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715465052; x=1716069852; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MrsH65DwYWxyDnZ5BbfeeZHd24rKgaZ9n9wSGTkNhQo=;
        b=AhuKd9+fxDcCH6rAHt2j/8FRCDZOJWDB1eoFK0VYxQwtcaQfmlTnsYrbFJEEr2B8nD
         dCSjOo1mhnrrNLqXiBdRQw/kFAHS6KF8eQO/SkGvFjWeYuO+wWdqVEtD2vd0V1MHUVvm
         D1XfEWMy7j5GaLyOHaq9zSJ6yveMWXiokbDREG/n5Sol37uzKwZtDh3welLWRs3iFbf6
         gxP9B8ip7UgwdqOXIeh+qgRsb7MWpCCD4N9lt17CgNgbnlzFNwUB+TfdqaXoNpEPj7Uw
         TkXPO+LOoZnPsN1ZWI/jjpcb7vNZNGgBS+vNcnmRSLawYV/xZpVw5OD1ePiGWcpIgqsl
         gi1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715465052; x=1716069852;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MrsH65DwYWxyDnZ5BbfeeZHd24rKgaZ9n9wSGTkNhQo=;
        b=DpVUJYAbi3QnKV7JhjJgLLrSpHYRP3i8UCF18wbZJLJuU8kRBDH1N8BQbSZLvRHHe0
         myIXRGvbskORZXiYruRAo8qmKcA59vOz+Dq68WMQWpJTAYKP48gfGXn/c4eRxvmdhkKq
         JI8psyz0WgfV/CdRV7DqXP7giY9FrDC31vtyOcnc019vxDYjhNwN/bFVd3/29LrhQzfG
         wYdhmOgRmmY3fJddPalarJHREX4VeSIxjpyOqhR9THx7GsdrIBE86YxVLBr6goZsO8yw
         HPfpa9tovNW545hgFWNDj5DpKmxoU2iAdxt1Am3f1dqz7PUJ8dAELLYezvSJSvECH4M1
         6oyg==
X-Forwarded-Encrypted: i=1; AJvYcCXtq2jpIH9gWorY0iUQxtmuW/2rp6g4q7Dm/0Bz4ZFnaRKlBclo3hb0YerwKDtbRdCH3R66lL6umxjLTHvOivMSHwKMr0sLSVgvdQ==
X-Gm-Message-State: AOJu0YxH7xlR5jcwIfhIsJmTo5JkGOBJxNhKimybtKEypuTJP1atL/T6
	EJcrLe4LAiQ1vAdNT2mFiq7jEUnLdJcnKV3aPgLphKGQqZrkeMAQm/H4nqePNLhkkJXVId3lo0f
	3
X-Google-Smtp-Source: AGHT+IGUcG7vW03nc51RQDeLFw0/xkZ0bMFI1L8KuazvRq9S5oLPJZcQz6AlXOr8Zkm2KQOvKbxWXw==
X-Received: by 2002:a05:6512:230a:b0:51c:c2c1:6f58 with SMTP id 2adb3069b0e04-522105792e0mr4383287e87.55.1715465052358;
        Sat, 11 May 2024 15:04:12 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-521f38d878fsm1123875e87.206.2024.05.11.15.04.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 May 2024 15:04:12 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 12 May 2024 01:04:10 +0300
Subject: [PATCH v4 4/9] arm64: dts: qcom: sm8250: add a link between DWC3
 and QMP PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240512-typec-fix-sm8250-v4-4-ad153c747a97@linaro.org>
References: <20240512-typec-fix-sm8250-v4-0-ad153c747a97@linaro.org>
In-Reply-To: <20240512-typec-fix-sm8250-v4-0-ad153c747a97@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1441;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Xo8om8fumEXzQduQdJPKXB6VlSeocBEHT34qMhggAXY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmP+tXW+/CoPXhJA/c3bUmPBgDWWtWm2M/V3BIJ
 IM0Rr+SRhSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZj/rVwAKCRCLPIo+Aiko
 1UwTCACZcbgmNbuL/Au0uU1oPANifmAuXU3huehfMv1ymeArCeBOuR3o6/8LaH1FIWBOIBRzk76
 LkcQ+LF7tVRP4wcH+DeanZi9+O3vGyWpriYiXaPZxJTnn0FwMuJV5MTRxRfGYckklbDHKn7j9wD
 AA2v89rJmjbXAbAMEMR5+BsC97EcozCsuRUn9hm+fpVG6yHEoQJdVr1Ukn8ggT2ariGoTkWQonv
 53LCQ1/BRKhVyKUeYhi8j6PbZ8FHLZP6krIXsLMvrE7759uSrrW2TeeFuCjRxTR3Oi4DdOyrvN0
 2fWLyaxvz0DOT5ohoUzg1phw/ATb9/7D8u84zOosPwzuu4R6
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The SuperSpeed signals originate from the DWC3 host controller and then
are routed through the Combo QMP PHY, where they are multiplexed with
the DisplayPort signals. Add corresponding OF graph link.

Reported-by: Luca Weiss <luca.weiss@fairphone.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 24 ++++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 0ec473ceb3d2..d6c8c6c2eced 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -3947,6 +3947,10 @@ port@0 {
 
 				port@1 {
 					reg = <1>;
+
+					usb_1_qmpphy_usb_ss_in: endpoint {
+						remote-endpoint = <&usb_1_dwc3_ss_out>;
+					};
 				};
 
 				port@2 {
@@ -4225,8 +4229,24 @@ usb_1_dwc3: usb@a600000 {
 				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
 				phy-names = "usb2-phy", "usb3-phy";
 
-				port {
-					usb_1_dwc3_hs_out: endpoint {};
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						usb_1_dwc3_hs_out: endpoint {
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						usb_1_dwc3_ss_out: endpoint {
+							remote-endpoint = <&usb_1_qmpphy_usb_ss_in>;
+						};
+					};
 				};
 			};
 		};

-- 
2.39.2



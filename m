Return-Path: <devicetree+bounces-32167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CEF82E7AA
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 02:52:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1F305B208A3
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 01:52:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1749B210E9;
	Tue, 16 Jan 2024 01:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X9SQounu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86C9820DD5
	for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 01:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-50edf4f478eso7149623e87.3
        for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 17:11:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705367478; x=1705972278; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dn3ssfHj6Am73X2yQSvVvrWK/i23VzGIzNntnpF9EZY=;
        b=X9SQounuoXFT0cvALid6fQQ/SDveFx/KF+ZDCWfIBBM2ckEi0XZxbFvF/oxgWYTvsg
         BOvusHVOKj13aPAtOVOYBNKR5RN4AsK4h0VqO1uGadt/l3kID6EbkN6/1Xwbe4fvFRLv
         U5mrz6BEmTqiVsruHwsz4eyVAPWYQ4UrRfCaIo7yjnOHUxTwmEnWXk0zW8Opggl5i9Ec
         rcuIMm8F6qXCEY0OYXea4ItCDVdsSU6piMwmJ+9WmARcFqvmU3+8MOa9Oo5K5hKE5j/a
         hE4RUv/5EOqVoJLErjxYbOC/WsdkBfguQq2fXvlkCSSpflhBholc3Cdu1UqADzWqcy/n
         RS5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705367478; x=1705972278;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dn3ssfHj6Am73X2yQSvVvrWK/i23VzGIzNntnpF9EZY=;
        b=AVraKMzW7idx1PHMy3sgBErQYH0EOIqzpw1fRgTf0ArXvoh48c2Lw7VDoOb3Z2EXNI
         1XXuY4p7oI/ebD5VrKckFGRx2gY7hsrtLbNL4UC1BME/IfwtrrCh9wIpmVpGUS1DVuZJ
         ZK/rGtU92Fc2KM1k3zQP6m7/PtNMpANkb0Hc3snyuvrgXjkLZ/LqvjuB9ktPYaRiglwI
         c8cMZWl53sG5Xii3or325CIxhFJA9tRC32wM+ZB4H3p7E/3gEt/5ifnANqfwgCGfP56X
         agNpS9A9Mrm6iDdBNVvjKxY6rfvKky4FbddEzOSBdVisT+B0viu9ougtgvsb8lV+3oH2
         HTyQ==
X-Gm-Message-State: AOJu0Yxsz4FtKIGJFrTdNeuxjUm4H57dwMKToxi4/Stc5UhN9TVaSVHZ
	a7V1+ywGGioaOmvPLOL+un/mfh/3ferAUg==
X-Google-Smtp-Source: AGHT+IFH7WgFoPCVlV0SK521OdMnDlNIpVmLRMpQSRhjATjhMK359lIBg5UXvE5dQyxaUCQIB3MD9Q==
X-Received: by 2002:a2e:8007:0:b0:2cd:63e4:75ff with SMTP id j7-20020a2e8007000000b002cd63e475ffmr2923703ljg.35.1705367477770;
        Mon, 15 Jan 2024 17:11:17 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id q15-20020a2e84cf000000b002cc7a2f7a9asm1513414ljh.98.2024.01.15.17.11.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 17:11:17 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Jan 2024 03:10:58 +0200
Subject: [PATCH 4/4] arm64: dts: qcom: sda660-ifc6560: enable USB 3.0 PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240116-sdm660-usb3-support-v1-4-2fbd683aea77@linaro.org>
References: <20240116-sdm660-usb3-support-v1-0-2fbd683aea77@linaro.org>
In-Reply-To: <20240116-sdm660-usb3-support-v1-0-2fbd683aea77@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=988;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=QwGWMzQp8Pf2pQC4KMxafaFpJfYGFQD+YP9PO5OleRQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlpdeyqOGeyzaNbEhO66EY0plD0VtAkdAjeQbce
 VdTxSbGCnSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaXXsgAKCRCLPIo+Aiko
 1bckB/4uYcH6UyIitNmvQh772NqkEnb3xAHfkpz8IQJ56vdLm3Lv4DnbSwvVygzQhDTj82EdhDD
 w1p/jGwRSkFT+4mdpZL3yUSYjCUwm3AhGGmd/msf0AfNk/W3Yz60Ce19KUd5Cjo8FFEdS1oUtDN
 Y8w0pUHwVP6SfZ51/7KandzHJhYlfzqSEnTuxK0qWQftxbiy7TcgjVe7NnYXmFfDRyGBMFTRLJB
 8XIR7BgZQZ6PCwkZlbrQll2VyNw5P3pFSNMXGzBdzc6FsxlxJjnMJkQUBDP2WssdxbezHwqA+lf
 9Db1c7w39EJhWx1w+hG0n/Z/sQuiFCZuOJzg9+C5oACnzbPg
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The Inforce IFC6560 board actually has USB SS lines routed to the USB-C
connector. Enable USB 3.0 PHY and SS mode for the USB3 host.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
index 90118f133961..702ab49bbc59 100644
--- a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
+++ b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
@@ -454,16 +454,15 @@ &usb2_dwc3 {
 };
 
 &usb3 {
-	qcom,select-utmi-as-pipe-clk;
-	
 	status = "okay";
 };
 
 &usb3_dwc3 {
-	maximum-speed = "high-speed";
-	phys = <&qusb2phy0>;
-	phy-names = "usb2-phy";
-	
 	dr_mode = "peripheral";
 	extcon = <&extcon_usb>;
 };
+
+&usb3_qmpphy {
+	vdda-phy-supply = <&vreg_l1b_0p925>;
+	status = "okay";
+};

-- 
2.39.2



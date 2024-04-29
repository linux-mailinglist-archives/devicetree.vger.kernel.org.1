Return-Path: <devicetree+bounces-63602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2B58B58E9
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 14:46:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7C4F11F24F0B
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 12:46:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED77F7C09E;
	Mon, 29 Apr 2024 12:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Zqfb4nt8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545C678286
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 12:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714394636; cv=none; b=NIJrxszvVgYgsccDccxqZNSHOPZvUG6aPDI7fJe2QZ9tgNz3goSZoXlsjF02GlEs5i/BIkLbxcileKJI8YXV4KOkfHPkLOatOLFQcGCKC0Akta4bf8Mq/nkb13gxgPPAFc8p5D5HoYpuYZSoNyOjhD3c8zNGzl+MiJomX0aNIok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714394636; c=relaxed/simple;
	bh=jpLPvcnaiJtFOhYzxmrluAjCdASp4Pcd3OYik5xfALw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mDv9SLajkGN61ZZQkm23sp/SLqG9PPduVtK/OOYyUGMl/uen/MVZ1oINncnbwEgaBXidntcBNdW3lZzPiLSz63yQzLk6iG93OR5PcIa4RHV6Hwa2zJILRQKbAdPOd766jYBbFnYhZj8xqYXc9ZLJifoklt9brZRvXn/lfpADEiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Zqfb4nt8; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-516d2b9cd69so5207212e87.2
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 05:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714394633; x=1714999433; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C1zN9ChEBlTW8KqQxahC7RH01jDIvsFbyzebamCLZHM=;
        b=Zqfb4nt8ynTXaX81yFo13LmnM2qQH8u1fOe2BbxTlotmmjEzn10Fe7tiVGs23RLlXk
         Eu/gp74JtUF/id3MfcyHvtGtYQ6L48Oe4o0s8WoouuCLSwZmuwW23NiyHKbapc3sWzXs
         /l/5ZxRiXUZqtxb0I9DewCCrbn9tYMpsYM4RxdRXgpxIzQ67FxtEWwkKLiY24dYelxEX
         4X1H/SlCMEkoOnvfyp7qhRbt6nYKjoeRB6NugVt6IbzG2F27iBu8owwnzAaVkdQ31PZC
         7EpFR8IJK8lq6cIoJIsFIU2HoxvaFgi7IW+g3N8AzpgtvwhA0NRmUfR8u2uO5bo5XDP9
         BZaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714394633; x=1714999433;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C1zN9ChEBlTW8KqQxahC7RH01jDIvsFbyzebamCLZHM=;
        b=vs9V86JifexJER5ON/o7wa1EGyFeSLpr5GxWfvcD3IWRU4BAKDaazLhgsoufEoTbUH
         H2qYcaASrOx8YpjwE+rah4KnBMkPFnG6/ar8PwAdRZZxfTnjRaDhRyCz26rAaPeAP9Y0
         ydBOs+zYh4AU3R8pdYwsLdgRsOmAYuUjQMQzbw4PpD0YjNnDyFRjzLo3NIfGeu0MyGFr
         nIXjViDCyIkPLgdooX07mHJN0oshz0Y85Ad77ASX92kuZdyYYiLEqiYIH63+/8hcRbMM
         0CwtD7n3m2BMjy9BCHQVljF/hb+7KXkp6l4vseGMEFu9Q0aXs9zw0cFZws2OicNTwJgu
         M8eA==
X-Forwarded-Encrypted: i=1; AJvYcCXNq5cGGg1XjQRXuUUeYvAT7t1JC/bJBJsy8Ov/vvZmGPu+LvW7scSwkVWKPQJt8FHa/5go/TbpxC7ZZCeXfXx+sbDw6ntqv0Jk7A==
X-Gm-Message-State: AOJu0YywcymZODXr3r5QPOYXlUHVH2tmTIwW+jxM5bvJldEzvqUEpVrS
	xCKkod2pjvfASt0nq3YNHKspjc0AjV5zLEdRMpEXlNqFBbsazt91jlEqmTm8F0VDK/Itg+lMjYR
	n
X-Google-Smtp-Source: AGHT+IHkn4xOO9GIqpCtMbB/YgjfQ3SotcznHDG5EAQQkWNG1yGoHZKAmkjFUNBLjKSZCJDu+exMSw==
X-Received: by 2002:ac2:4c2f:0:b0:519:63c1:6f2b with SMTP id u15-20020ac24c2f000000b0051963c16f2bmr5103721lfq.54.1714394633432;
        Mon, 29 Apr 2024 05:43:53 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h18-20020a0565123c9200b0051d94297380sm467538lfv.241.2024.04.29.05.43.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 05:43:53 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 29 Apr 2024 15:43:46 +0300
Subject: [PATCH 09/12] arm64: dts: qcom: sm8650: move PHY's
 orientation-switch to SoC dtsi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240429-usb-link-dtsi-v1-9-87c341b55cdf@linaro.org>
References: <20240429-usb-link-dtsi-v1-0-87c341b55cdf@linaro.org>
In-Reply-To: <20240429-usb-link-dtsi-v1-0-87c341b55cdf@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1206;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=jpLPvcnaiJtFOhYzxmrluAjCdASp4Pcd3OYik5xfALw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmL5X+XjsxS7nH9BzKfJjz86HMhAVFMVC8uDlk7
 SM58fyKemaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZi+V/gAKCRCLPIo+Aiko
 1SB+B/wOd9d6CjI9nlVyvH1rzAUnClf5fNFH3j/tXgQP2oXgm7c65FaVp+1TDGs7EveUAQytasg
 I11HxoRKfQekCDe+m5Ygp2VRz3f74Mnqmcgy33DryMrxMDbOIhUAxmfKpBReLHb3cFHcA/tz/Bi
 hMGN2RSfi377VFlMNJfqwDVZuSrcAJQ7H7myouJovGJvT/o1xLD0l1i6gxZL3UkEp0AvSwr0s7b
 yKw6h3gZr2LZMb5ArNsCZyugGvaSjRLPA/BfTrRhBW9S5KzV1PCUW9J2IjfDlRE7+7jkadTez5H
 ePQtg2OMq1hUZIEZ/qstmEaqjtBxGjBvZNfuIGiELdFpiUd9
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The orientation-switch of the USB+DP QMP PHY is not a property of the
board, it is a design property of the QMP PHY itself. Move the property
from board DTS to SoC DTSI.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts | 2 --
 arch/arm64/boot/dts/qcom/sm8650.dtsi    | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
index 65ee00db5622..f93de21a26ad 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
@@ -1223,8 +1223,6 @@ &usb_dp_qmpphy {
 	vdda-phy-supply = <&vreg_l3i_1p2>;
 	vdda-pll-supply = <&vreg_l3g_0p91>;
 
-	orientation-switch;
-
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 4624ea4906d9..9dd66c28c588 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -3751,6 +3751,8 @@ usb_dp_qmpphy: phy@88e8000 {
 			#clock-cells = <1>;
 			#phy-cells = <1>;
 
+			orientation-switch;
+
 			status = "disabled";
 
 			ports {

-- 
2.39.2



Return-Path: <devicetree+bounces-162552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E95A78BA5
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 11:58:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 787A73AEC7D
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 09:58:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCFF7236A7A;
	Wed,  2 Apr 2025 09:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HkbYJSrI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD9A236421
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 09:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743587928; cv=none; b=X5nkyW0+GEh6/vPhYnZkoGKZFqZa/UGwmYCzzT7PXoHQGcjnBpQ85xv4MendsCfN8v9cA6hzBO5VEJq60u4vh1Y88TcRgQxUdhzTHY+9iYDW9YyHIxjNdrEN06voRbVsZMWlgbQ2ySgcPv8VCLbhC1W28YgDBlUyPSdBgTjUZDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743587928; c=relaxed/simple;
	bh=hotZmPorZb9jdirRsPwukgzloHcJkty6Am+HrOSlUd4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=duyQPGdEugnYsgcdM/lLEyO4abg1QtgFOJ0b3D7FqPIJuyiwEQO+0PlbwDUGv+d9sZhMpuhY903z37gQ7iGYIsi27Uy7EX3xXJ8N7WrZXyFdb05ycMTZPr88hFNH6alCBnyFFNNp9tOa9qhZ/LORcqp7P9H15LO0nyc5b8woobo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HkbYJSrI; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-399744f74e9so4253341f8f.1
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 02:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743587925; x=1744192725; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=utN0oqIDcrT2zxK1IDRytgewtc+C2bsT6oGkn2JxGrw=;
        b=HkbYJSrI1hpgC8f8uG8QS6Vvt2lLuYMlykoLecNnNpycMO7I9lIorqoRCczjP/PWMw
         nR7TPOuh7A0D48BnyQmqNG5ldG+6TxM9C5MbRIhHukKW7k82cGS9tV5Jhkpj8rtDsCSH
         QlJbW8YlvRqf9Vgk3SQR7a9FZEtT+83CYu/snu34cBklc9uHEwJpczjr342EevBmFetP
         5RSwoRgP2UqtNzBCtjdy/RdvdPeHv5g7qITcdYACJ+Q9PYnQ7Air0HnS1B+tTUZUQJW7
         dW1eDFbR7rnDapCDaJh+kjxRMcLah+nCD1G4EkuLuUPyfIQI5CzIp1zDdSK7zMCzh1ie
         OW9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743587925; x=1744192725;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=utN0oqIDcrT2zxK1IDRytgewtc+C2bsT6oGkn2JxGrw=;
        b=aUZqDv9evxFw5TCUly+hn9H5nkazWFwj1XL1WWZxALV1mj+FGECrWscRpBWaBi+2GP
         xrbpbynkDXc77mIAMBbb2l5YNqZ/YSKwG1IKcDT1TdxfLy9ZNsJn7feu6++lSVxNK6Iy
         Dk7Sp5AjS/5VxmAyvn7cprP+ooML8fOmv6Ul77ln4LePMZmj9DcqA2CZXfn1Y1MYDEg0
         IgsJep/BC2p+oq9jx/0J3uCWpqZ8HK5rrqyk0J4n1kUFMnkDKLLtfHD13AboGIlw8Kep
         CEQVvdy+XcdGAzt9ZZQo4fzolkF4VokefXUhCmg/O6nOBokIBDf+sy8D6lqcIlL3YUw/
         19VA==
X-Forwarded-Encrypted: i=1; AJvYcCXdDpOfFTecrN8xC2VxowZFHunY1Y5sjmypqS+/foJeXWFrNvVtoWCWGZYtz3DbAb390ibELepod4LN@vger.kernel.org
X-Gm-Message-State: AOJu0YyaTq4MbYv5j8q/tBfGPmGD1OBEodN3tvVgZ0pWkZ8IxFu3PpHT
	TjLofwgXZGndpofx0rXoS8vb/T3saQwkDTXpZpbadtCiW1rqtTlulrlvyuMeFIY=
X-Gm-Gg: ASbGncu4moQNW37BvNzbLqEeDvFCp8arkz/u6XnQXAcuMmq+VL0+NH0LoM1XAozhOm+
	UBHCxtAaCeLX4rM5Z80mToYs0Ij+8hHkwa6y7247lP7BewbuXDQnTg9b6sXL97W9LtQOZmvo+Ot
	UaRyR400KT8iHlnW+FEo5HFvrUYt80FQ/3smYYiINHNrQaQvmOLXFSSW2PWfaCqu+gD+aOGuxKA
	v3y9T1wOLh7oCZpFzS5LBiUKL0YlBN60+A+/bcR1ZP6bIV6OwLGyuLkcnA5nd4SDELxHk20mcZh
	rIFo7NPvCL7dGk71enR06ArhhLWRzw+9B9GosX0YjJVtjiKci1spjiP5
X-Google-Smtp-Source: AGHT+IEOQi872DGX/BWG/7PZr47mmBBiyqaeCfOJjhbYXULx0/oJQFipZz6WgGJyguMaUHkybYGruQ==
X-Received: by 2002:a05:6000:40ce:b0:39a:cd84:a77a with SMTP id ffacd0b85a97d-39c12113939mr12073691f8f.37.1743587925158;
        Wed, 02 Apr 2025 02:58:45 -0700 (PDT)
Received: from localhost ([213.215.212.194])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-43eb6190bc4sm15563475e9.31.2025.04.02.02.58.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 02:58:44 -0700 (PDT)
From: Christopher Obbard <christopher.obbard@linaro.org>
Date: Wed, 02 Apr 2025 10:58:32 +0100
Subject: [PATCH v4 1/2] arm64: dts: qcom: x1e78100-t14s: add hpd gpio to dp
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250402-wip-obbardc-qcom-t14s-oled-panel-v4-1-41ba3f3739d0@linaro.org>
References: <20250402-wip-obbardc-qcom-t14s-oled-panel-v4-0-41ba3f3739d0@linaro.org>
In-Reply-To: <20250402-wip-obbardc-qcom-t14s-oled-panel-v4-0-41ba3f3739d0@linaro.org>
To: Douglas Anderson <dianders@chromium.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
 Rui Miguel Silva <rui.silva@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, 
 devicetree@vger.kernel.org, 
 Christopher Obbard <christopher.obbard@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1276;
 i=christopher.obbard@linaro.org; h=from:subject:message-id;
 bh=hotZmPorZb9jdirRsPwukgzloHcJkty6Am+HrOSlUd4=;
 b=owEBbQKS/ZANAwAKAWNNxPBocEb4AcsmYgBn7QpT8Rj3nswbju+q78Oxs8w0VOLDQ283LKUHD
 N8EVUpv5Z+JAjMEAAEKAB0WIQTxi9yLbCX5CqI9UXRjTcTwaHBG+AUCZ+0KUwAKCRBjTcTwaHBG
 +D1EEACewDpImJIERkGTNf8Tnlx96rG5Pmvg98xt6EJOnyPnqlDKRa4HQyl3oFaMClcdGiaqX2t
 m5r39NWjQf65zxUHfI6QRF7zQx0EfUQfcJ5ZQXexn/spNZoWHown39IqGkKUIjMb5rMuBx1nHF+
 FknHSf9P0QcmzIkg1x08qwCgsYPbwOOyCkPcojYofZpCsvPExKsvMvY2QGnIsEP0xUg4PpY3wND
 jZ1AuF9FEpZ1TeXFwjq5gQ2iWg+20JXaJXAYRNKZJTamRE1LgmfFfwIl/0KliRKxI7MgIqzSQVK
 Qxxs4q0V8tMlkmqCBDl5A8PFtPsS1uKSSBS4yN56c7M8PaaZJjgJ5gfoCkjwWdAn5y9KVWx9rI/
 RpeXHeTgNGQOaYZzG479n7xeXnMevLNqovQwPaqdTb4o8ybKkMv4pJt1o+MOJqXUEKLMETmlt5X
 yJrFBkBdCRqnjCQ2GFwu/25fff5O0FaeBPKoW35Ps1HEXSEAIf9FCqxXI/+2GZ4E2miyr0qyuwI
 25oA9fCTOjSQ/9vHBd3AYryIi2VbKj454jGcg6PoOheT106Fje+HkI+PIl24fyy2I9vJ2FAmHqQ
 pHi5CnWJcObu/sjaK10OyMimQ+br6QMZs5rdjuWdnlEJ/B11oj+D1oUSPa/eP/oKP1mCEb+I4fN
 jD8kmL1/70sY8pA==
X-Developer-Key: i=christopher.obbard@linaro.org; a=openpgp;
 fpr=F18BDC8B6C25F90AA23D5174634DC4F0687046F8

The eDP controller has an HPD GPIO. Describe it in the device tree
for the generic T14s model, as the HPD GPIO is used in both the
OLED and LCD models which inherit this device tree.

Signed-off-by: Christopher Obbard <christopher.obbard@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
index 962fb050c55c4fd33f480a21a8c47a484d0c82b8..b0dbe4eaa77e5a6f862fd0db2a3c91db2aab5030 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
@@ -975,6 +975,9 @@ &mdss_dp3 {
 	compatible = "qcom,x1e80100-dp";
 	/delete-property/ #sound-dai-cells;
 
+	pinctrl-names = "default";
+	pinctrl-0 = <&edp_hpd_active>;
+
 	status = "okay";
 
 	aux-bus {
@@ -1215,6 +1218,11 @@ &tlmm {
 			       <72 2>, /* Secure EC I2C connection (?) */
 			       <238 1>; /* UFS Reset */
 
+	edp_hpd_active: edp-hpd-active-state {
+		pins = "gpio119";
+		function = "edp_hot";
+	};
+
 	eusb3_reset_n: eusb3-reset-n-state {
 		pins = "gpio6";
 		function = "gpio";

-- 
2.49.0



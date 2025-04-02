Return-Path: <devicetree+bounces-162625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D00FA7914E
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 16:36:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3617C16E4D4
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 14:36:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98AED23C390;
	Wed,  2 Apr 2025 14:36:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VXV9b6f1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C228B23BD01
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 14:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743604602; cv=none; b=AoKxVP1/uc4le+yhWtMrOfYjz+pa/Hb+xJIRK1pOtx5a3A1n55smvUGpUtH35Y0ASp4Da+lSxRwf8f2gOnbqratug1Si6FCqo2StfMaZg2++Oy7uVYo2mQTMHWqWbbBBJ0eZu9rsM86zOg3a0KnVpicHB6/k16hOyMk6QhVVmDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743604602; c=relaxed/simple;
	bh=lYKcS/S64jaBbWA7VwCFB9G+w+RBu3krRD7r8H3WqDo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JiG0lg82OvWp/enyB5CZ38ky3bkdwDNvabX/Yu+H63L89+GFDZfHj22PHhbTGazeil3iZSc3wbeDi9xQIgtFNLHN1e+As7zNcLNZHgOYdh9s0ym1kBAGyJkqU6x4j21aJHLGlM8RPIAx5axbSn0Peh+Af/pexqpZeGFsFLX2gzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VXV9b6f1; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43cfecdd8b2so53560195e9.2
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 07:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743604599; x=1744209399; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Mh4boQsSW/1gwg5sSN4EStVan8aEzJn/qzxSEcSDKHI=;
        b=VXV9b6f1FZmej/UZ/71ccoNsPbnIdn4YXrBJ6/l0hkD5/L5vXFf2cf2wyg+lxCVv9N
         VfbbD7FH1yu3fJyDcrDGD5UmcuzamwL3C8WcDf5P5c868qeBV1FC57IEYswvQ6fM6kJr
         bP6A6XIrEsaTaFnSrDHfDFuFkY+eWWegKcAQbNTGWYaHjl8nnsHJtsdl3/Js3dZbSSGl
         Hq0uhMvnPmMXNvL22gu7rcrnt5vDqjHKDkC2llEGGGS/MrVj+KI9cIM/VsW1bRpYo8Au
         SQl4XEHv4udqPBF2Rvj52ZJErPwemrCi2bgaA834vb4s8hnZ+RYo43SfAsQdWRN1PdhL
         BOnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743604599; x=1744209399;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mh4boQsSW/1gwg5sSN4EStVan8aEzJn/qzxSEcSDKHI=;
        b=XBx01WJTrQnsWZTRkvz4v2MfE2DkdIbah6g0MpCDIXxDBi+NVn2PWujoMxtwQbpM7A
         qoKui2wnSidKcrF6OWCthzc803hUmYowUd27Beo5WMs5vcqdci4nn558I+CFIjmcPk0p
         H7JvIvjjQwu0C/Eb4kDWhNmwJODNk6udo2lpL7FxW6HloLfj30MY0IK/x/s3R1Hyy50/
         +Z0lEOnzTpJKd3X/VlIBLiZqHlpMzG1BoX20ZZJ2qAW3gFx5HErDVgpwjQfo+ln62Ato
         OQDduQveqtqm6JKkKwOH/2HxMsqTkjotA8Os9dmfxn81ZBZs8g4nJ7zJws8tmYCSNBJ/
         gByA==
X-Forwarded-Encrypted: i=1; AJvYcCXf7FGjDWQ+mrjKWg2xH6YsTCR9U5uteaJGUWT8Wimr23yvZmX6n71HUw/SJCgqkhrOUtMSmTwfJOTd@vger.kernel.org
X-Gm-Message-State: AOJu0YzJuxKutZoZ8VjKV86het5G+aVsnFiTQrDE3orKzr7CY0kLX3q4
	+NkW5ibAXwHDrGtjKKbGtSvsZD66jX9bDSz2Wnj3l0OUcRIJi3Eh0O/+e2Mv7cQ=
X-Gm-Gg: ASbGncs5rssCQj0e7/x7urZJahtVR4yEP0/MhvBOie1J5deGfq/WGrew06XYsrRmvpw
	kCh1TisTlplC+WI4PVqQxNHMjYvYET01Mb0NhCv2fs1KW5mQt84DcO+0jeef34xevZS+5D33OTG
	EhsZYoFbi/6ADbpnyPPF/EtP2WuVZHOwOTtY8t9+CTolP/wMiKcnY0/iXbGYcYuto9yTrq8TUvx
	l5Vto5njFPeXDB6sTtF50xGG4TJwOh2cHxIolRaR7PLm7IA9xv67T0SmidFpRpjWTSPSyVPjOpe
	XmsaLyFvmqy8YDGDYFexXIi6ZgfQR5b2dFWvhbtwPffLPVZAEvaSMu3n
X-Google-Smtp-Source: AGHT+IFNQUUyB8A1bTf4Ij5qY/HCNx5j9z9iFYAzAYi1EJMrBAvFa5jrSvb56dJD7kXugebXVJZV8g==
X-Received: by 2002:a05:600c:3507:b0:43c:e70d:450c with SMTP id 5b1f17b1804b1-43db62b7b59mr118985945e9.22.1743604599115;
        Wed, 02 Apr 2025 07:36:39 -0700 (PDT)
Received: from localhost ([213.215.212.194])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-43eb61b6469sm22404065e9.34.2025.04.02.07.36.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 07:36:38 -0700 (PDT)
From: Christopher Obbard <christopher.obbard@linaro.org>
Date: Wed, 02 Apr 2025 15:36:33 +0100
Subject: [PATCH v5 2/3] arm64: dts: qcom: x1e78100-t14s: add hpd gpio to dp
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250402-wip-obbardc-qcom-t14s-oled-panel-v5-2-ff33f4d0020f@linaro.org>
References: <20250402-wip-obbardc-qcom-t14s-oled-panel-v5-0-ff33f4d0020f@linaro.org>
In-Reply-To: <20250402-wip-obbardc-qcom-t14s-oled-panel-v5-0-ff33f4d0020f@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=962;
 i=christopher.obbard@linaro.org; h=from:subject:message-id;
 bh=lYKcS/S64jaBbWA7VwCFB9G+w+RBu3krRD7r8H3WqDo=;
 b=owEBbQKS/ZANAwAKAWNNxPBocEb4AcsmYgBn7Ut0+zTamMU6afHjzWIHKk1AnyJXEH2d7oI3f
 zEreawG54KJAjMEAAEKAB0WIQTxi9yLbCX5CqI9UXRjTcTwaHBG+AUCZ+1LdAAKCRBjTcTwaHBG
 +L8UD/sFmaJoyYlFHncItTgKvQT+7iy/a24yOrWQrSW+Jzsa3s4pz+KcXTd/wyhPL+f1YDcWVln
 VvWRcMV6o1XdUqEOScDVN1iQIspnwC5hZZZriTHQjqSNA8XAHcteCpcBCyT1me4XTIDnk8e9cHa
 +j/qmFo24hpuxawRQVMolmGdO0/Zrtp+tIq2kiY4NiMiHyI4QWRNjKdQXEuN3v7+gb8oc4eR6G6
 j+vWangFowfOnVpgqOu0plaYGGfGcWS9FirjyncFkDdt/GrS14wURsQhoee+MqpHDO7ypas4jaV
 la+8O65p5PcjXoOojtEjs4cXbdXdxVSflTlFOVHOIsbGmUQeiiCTM1dGz5yyfwhYvwugvd1OPDf
 K41MaX9SyBJ7r4ks9WafACMsjhDXVpXkul2qNIo6EiUWq9vJjHVBn786BtTKWDZA3BgbSgR0ngo
 F+WLVw/xeEmykzvaEQEY0urze+apugdNN3qA4ach3mycH+5mRXfS4ZOneTOoCDGOayutHZYbGwi
 A8+BzbvsiWq2C9s0V23lN0WRey5KoTyBwO2If7KkqS6SB613tU8+y6b8DzlUWY9QnqVyKkVR02Y
 eUaORjv0UUw/KXCpclIhKgsmDHKdhzxTluaMJtdnOFByMdj5cYU6MtlDWLFiOtTSay9zQoOQbP3
 ayNgWCIzO0Hwslg==
X-Developer-Key: i=christopher.obbard@linaro.org; a=openpgp;
 fpr=F18BDC8B6C25F90AA23D5174634DC4F0687046F8

The eDP controller has an HPD GPIO. Describe it in the device tree
for the generic T14s model, as the HPD GPIO is used in both the
OLED and LCD models which inherit this device tree.

Signed-off-by: Christopher Obbard <christopher.obbard@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
index 962fb050c55c4fd33f480a21a8c47a484d0c82b8..bbeb2e6f039957e443f0f6d16dc00fc62b012425 100644
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

-- 
2.49.0



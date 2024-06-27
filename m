Return-Path: <devicetree+bounces-80765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A2891A5E3
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 13:58:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 52E5B1C2410D
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 11:58:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AAA115A84E;
	Thu, 27 Jun 2024 11:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DqRg8g0P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90D80158A17
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 11:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719489370; cv=none; b=hZrtJHVBYtt++RQksYXnRakhfy4z63Hd/RYvG/VLaf5sTmaP5CDi8y6BJpBCvSU8J3DDYCfLuVbtUpboUAiROIuN5tMD1U1jxF9rCjCOrVnnQnLROR3KPibgP5HXOQClFiwhmkF2VloOhwugDuWtjkIxmd0NOCdFAMrgegUzFsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719489370; c=relaxed/simple;
	bh=fhOsLuyqrBwQUqU3KeH1GRGhl2FQpbGrlcG9u9+rBVA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=otXL5Y8rzoPJcj8TR/ggEgN+l3Bz0mNYvkB+1dEfCsMgINC8ByPzFYW8nmc2xL1vE6kKlCMGWOCrPWIBgxkAFgP38P4Zc6SimYGCiKhPJ2QM4rFenSN1eSGyvvDC68m5F4xw9etSziKG1UdrIRvxy5YG9uNxThjZoHIknSe56LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DqRg8g0P; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52cdbc20faeso7550043e87.1
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 04:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719489366; x=1720094166; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=piU6dixVwevEMvMKFVjdM2+dDBv8tkHRGk2Ym1RU0bw=;
        b=DqRg8g0PZjbzU30J8J4pKuH5e8zectryeA2Veej7sfuTtcqtQ+zaLeAwaVq5IukZz2
         7wC2yFD+HhYk2A/1y38DPmrLbPaVo9fH53/SE/a7cTLvobYtn7nG4ce+QfSdJBKaSRtn
         QtiWnQ5k+6H9SCYjKEGCt3LW7HvirEhmi0A4ZVRp0WcnqYF55ngBwUdmYCpdsL1QhyXB
         iKryQ9PKtUhRdblnvFVfP4Eq6Iqn7vnLgwNL5B0XIU9059kfDzjIU7NVlOuaCFYbH3xc
         kyWjrQ8CAQbkt8aymv3IfWRuph0xlurbKxQesEuvulVS9exdQpuPGkR3XjlLIz9kqkNo
         VZlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719489366; x=1720094166;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=piU6dixVwevEMvMKFVjdM2+dDBv8tkHRGk2Ym1RU0bw=;
        b=TSIC+My2w+VnGuxt1cfIgtmKAsCFX5rXt5JvqVAmur+z1LzA50Umw3GjrfIxOXCGvD
         YfS7kAjTGjoFcqScz596hepBdMImFCfpNYxcDg8IYKiyHos/+l4ouYjKjuaR3JGjQ6iY
         ymxsHwvdQsGu9RjYRdKFRwddtGjhXtIex8f/sxorTOLeXD6YvBTvpNKkCGts/Yw37/ZS
         DWrM7shcD64DG+t4lAISwHR8W4Z4eq/pHweSyRI4TjuiKNnk7JXBtGjX8fcK0sYdtLQV
         pfuUG3vw5ktdFVrJrFTJPbcAT+LX3stZ0IVL6MwLPI9xMvO1PflT4d9sd5eLi24eZrof
         Bs2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWUtI/3QjVgVfgwnUN5oAjAMSgQrk5xxeC1MO4wIcO5WrGE3SPF9OR0+cDcm4+xrX9Mb/JZG9WO/CtKRxxVj44yMccFUIT14Xfv1A==
X-Gm-Message-State: AOJu0Yy+KeyY93GT9IUNSZqIDZLGEbrVumuDlOc0+VyIn2E93LpuLeWT
	d27TB4L1+K+Gw9mRLNqgBo0gnut4git51axEy5netb4t80hEXevhYwF5rcX28QY9jjjtAiv83dV
	vgow=
X-Google-Smtp-Source: AGHT+IHrpS4FaO+MLa+HNiW45CgkKJteDWyaEAeg1DQpUOW+P5vfLDvcO4u786fvHvXTXhgmUZujUg==
X-Received: by 2002:a05:6512:3091:b0:52c:e54e:f84b with SMTP id 2adb3069b0e04-52ce54ef9fdmr8943991e87.14.1719489366398;
        Thu, 27 Jun 2024 04:56:06 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3674369980asm1597552f8f.80.2024.06.27.04.56.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 04:56:05 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Date: Thu, 27 Jun 2024 12:55:22 +0100
Subject: [PATCH 6/6] arm64: dts: x1e80100-qcp: fix wsa soundwire port
 mapping
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240626-port-map-v1-6-bd8987d2b332@linaro.org>
References: <20240626-port-map-v1-0-bd8987d2b332@linaro.org>
In-Reply-To: <20240626-port-map-v1-0-bd8987d2b332@linaro.org>
To: Banajit Goswami <bgoswami@quicinc.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, alsa-devel@alsa-project.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1208;
 i=srinivas.kandagatla@linaro.org; h=from:subject:message-id;
 bh=fhOsLuyqrBwQUqU3KeH1GRGhl2FQpbGrlcG9u9+rBVA=;
 b=owEBbQGS/pANAwAKAXqh/VnHNFU3AcsmYgBmfVNN8VJANE2p5q7a9tQElvD/J+6BThXZJo1SY
 JISlTpiwtmJATMEAAEKAB0WIQQi509axvzi9vce3Y16of1ZxzRVNwUCZn1TTQAKCRB6of1ZxzRV
 N9nEB/wLOagPz2MWymeyiPZmgmKPaDEpckmNiW48ztjNspLG+XaXC/0zZDNJaNW4yBaoDFolpp6
 fU/t9kex0J1DPRyOltkiJ2CIkbyAyNCYOICpax+aogY+C4eFTrNB9YNNRolqlLY3qJ/P4qpgvSJ
 hyyjJxY/Aqj1TB3p3CWzLzMAmlUY10GMZ87Juje7Rn4TisWat05KCZCrQgY67mQWuraYApVY3Pe
 0qwNcqae067Cc1MKITj6GWJC5OFyjvumStp7sn4Syr6kyYu6MrDSlAaXC+HZd/lmTYj3Z3BWlzZ
 SqI6SNQ/hJC3sveXQrErHVC3Br9w9UBRZM7Bk/qGm1BiD3U1
X-Developer-Key: i=srinivas.kandagatla@linaro.org; a=openpgp;
 fpr=ED6472765AB36EC43B3EF97AD77E3FC0562560D6

Existing way of allocating ports dynamically is linear starting from 1 to
MAX_PORTS. This will not work for x1e80100 as the master ports are
are not mapped in the same order.

Without this fix only one speaker in a pair of speakers will function.

After this fix along with WSA codec changes both the speakers starts
working.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
index 4edec3212dde..79563ae34890 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
@@ -749,6 +749,7 @@ left_spkr: speaker@0,0 {
 		sound-name-prefix = "SpkrLeft";
 		vdd-1p8-supply = <&vreg_l15b_1p8>;
 		vdd-io-supply = <&vreg_l12b_1p2>;
+		qcom,port-mapping = <1 2 3 7 10 13>;
 	};
 
 	/* WSA8845, Right Speaker */
@@ -760,6 +761,7 @@ right_spkr: speaker@0,1 {
 		sound-name-prefix = "SpkrRight";
 		vdd-1p8-supply = <&vreg_l15b_1p8>;
 		vdd-io-supply = <&vreg_l12b_1p2>;
+		qcom,port-mapping = <4 5 6 7 11 13>;
 	};
 };
 

-- 
2.25.1



Return-Path: <devicetree+bounces-48674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C618B87307B
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 09:17:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 82558286960
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 08:17:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0E795DF35;
	Wed,  6 Mar 2024 08:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V8Xw7+SB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D552B5D8FF
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 08:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709713017; cv=none; b=d1CtD/ljQ+Wej1jnO4R0dTaZSoEw14NdHG/Qvyu/fsYz2MHmgBxtx2Th4RGf05QLliM+KpileYJTHxaOTCWfiZI6zHaE6vzvRJP/zUGKo74/i3z6uJGsgkpOXhnY8wEVMqQKyhaE9DiDY+qg9lq/6srmnPIQ3omB2KT7dND/y14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709713017; c=relaxed/simple;
	bh=IO0G01fjeFoKQavHxljn+OxdA/fMRHWzmgJlyEYmCss=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=M3u0TP+52CsEcjRJbANdQ5Vy9Y8RHZY4oLF4RIZc7Di8ksq4YC5ajS2P8/mPlZNXGVXGR+h2S6N6dzdYccOx4Szo16flBuUgIrMgBnjKiihXKTmxL+MykT7Xn3aGWRjb1Syt/hXbwzREga0Xwo38T9CjWhfWXOtyDa1muFik0QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V8Xw7+SB; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5134d7e16a8so768812e87.3
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 00:16:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709713013; x=1710317813; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hUMpyp+aBvT4jutLW9xk5zk3hii55n3wtwwHJLBpTrY=;
        b=V8Xw7+SB23pJyKpCdTZAeRVql212f62nSwBHuLQh3ydXJY7VxfHp2CLmcIBfSjJbrG
         bzSKA6PouLSg9mYQ1ccNbWABwOlYnvjLeVB2QkStlICts6r61j/ClorgUS764TrFVsN+
         dgpibjqM47ORFx7AU7auk575kgaWyw79KKoqxoY6+1jB1RmTpgk306ko8ewiQCAnvmO+
         bt0SMkEhwUbX6zZl2StvyJg+WnOfqGyc5quxq9nV4STDIRmWGy+JCf5kw2sODaOod0nf
         My9Lf3/4Mh3Rl2nxY3W7WOmqKz5nyp6bbnY8liuNKJ6QjIsJVreaigiT2qyq+IWi8Ey1
         6trg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709713013; x=1710317813;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hUMpyp+aBvT4jutLW9xk5zk3hii55n3wtwwHJLBpTrY=;
        b=IbHhyo9h/0IXzvntIO0TJ8iav+Dia1AGCSbMturt4jXmcsyV0SwhyFUk/U5DLEWoaV
         ATIVT/GDG6Mtzxw9Z1olfMm585/HZWgzPf1J/fglYNDg5V5ExhieVUfppbYVD2D1WemV
         suW+DpwMAoPx/PS83aNffrmPxML2Bc9u6s8CvicnhHyaShIV9Eik1yExlL9H5HYrE28w
         nWzQCT+KxbeC/9r9lLcZ4Chy0pGG6c4TqpW5AXvicqzsHHAZtqyYG2oTdyvPtOhVd3QD
         1XedsjnlIlNIHBGj1AuCmED7b7FjFuRDuSHp38OENqwXcBFieaX8UoEjSiNuswbCHQ21
         0S1w==
X-Forwarded-Encrypted: i=1; AJvYcCV/AGjx0qttC/sxy44WF6mWFeLCd0ebr1HXR2sL0skWYgHDx9Khv+tSYnVFMOjYO8cRE89zgMVrKT+AwZgD+4zmpGLBRYqgG9LP8g==
X-Gm-Message-State: AOJu0YyeJXa4QgQqFqOKAl7+6J+pXOUsyj99ql6RZHUumuC4C87ZjkHk
	/xtZ0xYpkFaLtbf0VR6WUqd53yNqrHdIH+66eauD4wcn3n4reD56H4CaigdKgd8=
X-Google-Smtp-Source: AGHT+IHbn0SM7E/lVjSCZHRZwzRi0PDead5ffXoCFKJOGbm2VuIzaa+JgNKuc9Hp6zth2I1J6rcUHg==
X-Received: by 2002:ac2:5e64:0:b0:513:4b90:aeaa with SMTP id a4-20020ac25e64000000b005134b90aeaamr2501286lfr.51.1709713013133;
        Wed, 06 Mar 2024 00:16:53 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id s9-20020ac24649000000b00512dc23bedcsm2162366lfo.99.2024.03.06.00.16.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Mar 2024 00:16:52 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 06 Mar 2024 10:16:48 +0200
Subject: [PATCH RFC v2 4/4] arm64: dts: qcom: qrb4210-rb1: add
 firmware-name qualifier to WiFi node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240306-wcn3990-firmware-path-v2-4-f89e98e71a57@linaro.org>
References: <20240306-wcn3990-firmware-path-v2-0-f89e98e71a57@linaro.org>
In-Reply-To: <20240306-wcn3990-firmware-path-v2-0-f89e98e71a57@linaro.org>
To: Kalle Valo <kvalo@kernel.org>, Jeff Johnson <quic_jjohnson@quicinc.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: ath10k@lists.infradead.org, linux-wireless@vger.kernel.org, 
 netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=788;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=IO0G01fjeFoKQavHxljn+OxdA/fMRHWzmgJlyEYmCss=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBl6CZvOTjBZtoSgh4NQNDNl/WX7IZ1W1x6/faq7
 hbuBSPc+SqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZegmbwAKCRCLPIo+Aiko
 1Ym/B/9ldUzS41jpPNUz625gZyscZqqwqmBt0uegSJU0zgfAndVYwH6MtJnzQoIibGDzAZm2fIH
 tpv7wOX+cp/LpxjYrpgSGgzENGZGSpZCqt3mBNpyOP/ViRa6Sr/LtaiyFIw+0HuXRsTSr8BdtPE
 ZpM613MAZjUpi23Cy+nVIEzjIo7A5i9euFCcr2mYOte34axrup9IpqSR/3L4RRRNhbedY+jQIKA
 KSjMbF1IWUXXEvrxHCp513J/jI6oUqS+UrPM03AsvSCS0NrteHdt/RslRVRHZtscgW6sbrpWo4n
 W+ETw/zQGAvUBdCg3FrWC/RSBr+3wHuXUCJRrf7mQMsYG3GT
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Add firmware-name property to the WiFi device tree node to specify
board-specific lookup directory.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index 7c19f874fa71..cf1d8d6f1546 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -632,6 +632,7 @@ &wifi {
 	vdd-1.3-rfa-supply = <&vreg_l17a_1p3>;
 	vdd-3.3-ch0-supply = <&vreg_l23a_3p3>;
 	qcom,ath10k-calibration-variant = "Thundercomm_RB2";
+	firmware-name = "qrb4210";
 
 	status = "okay";
 };

-- 
2.39.2



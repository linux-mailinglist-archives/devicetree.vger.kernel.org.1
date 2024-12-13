Return-Path: <devicetree+bounces-130837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DD29F0FFA
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 15:58:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C842281294
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 14:58:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 498981F3D43;
	Fri, 13 Dec 2024 14:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xeWTUafc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E18FF1F2C42
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 14:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734101697; cv=none; b=VcT2pMoBAalueciWjmf7fhYRSeYjRYeG0L+ev/Eq7RF1CIG1xNywn6YLY2Jq4XBK49Bv2pkt0fBjNHnSVTQnubZaa+aom5lp2B5RjXh1egFS8PRvCXGKijSFXjfnTwsdV3gcWCKpRIEYIpVJR+Qdn1CjJsyD8rkGzGk0Ia27zeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734101697; c=relaxed/simple;
	bh=TbHlMdWDbh+udm1eEV5kveS9te5ak6OhnhlUSegMb6E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FyX4odC+Fpb0x0tfPv8Y/7/CFeK/ZT6sXi/IP4IEzYC5DLpDkHlvHmEvotwv/XbBlSQI0++utQrNa3G6BGwSRJRCo3dsjC+X/pHpUKPH5KxRMaqNvrSIapx8yuEA77ofxG6N1rM8BHklYHSKF2Tl/KSjPsLuIbUTriq2JExmsUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xeWTUafc; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-436284cdbe0so1703995e9.3
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 06:54:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734101693; x=1734706493; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1PGh5NFsA/7r2mvIfUSdrK5+hBRX+q+43rwMtzht8l8=;
        b=xeWTUafclZaFv9WllUFioHUTkLkzZNPoddT/eXrDBaHxfycHBbf9o0lZRbHpdMdd0v
         xYhR7x+gO1WomTOWhT/OhUY7ieKooLWE0d3d6SIvG/qkOtjFlQpmVTkNvzM964sppAg6
         0AEC/5V5abygerc6VZCeO9VFQqTcIKlMOIejw8y13NdcBvI28BLj6TzXoVn+T/i456jc
         M4n9nMOjrT4GZbEsPH73nAoQ2CZTMFo4MzxEv4tgC9kkvfpG/BHX5tK1BMuDu4CloJKX
         CHs5uOg0vBrvGV199F909HOS71Sxz1I8+lFpfK8mOJy6i92DEIcStXvOUaMntnOHivE0
         G4Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734101693; x=1734706493;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1PGh5NFsA/7r2mvIfUSdrK5+hBRX+q+43rwMtzht8l8=;
        b=wkPR2Bw5Atov4y+ay23t353UbrU0pAK6e1xJROfMMUQWou/TnVvjawp69htQ1wxxbf
         T0/5w9YmVvYE8MzHzbQqc5EwDYbphOGRnqAmx4VADfrkY0LIkYsjo9+WAbeO3E1cIB84
         UD06T3nATjCLx+9g0/XIqCyRavfqI1D8rkLDrIK+9i44o5Q4zodDMuN4bsOR2XReu5OC
         SFNr7F3keSEpN/MlycfYOrz09Grt1GKciR+Sb7fRRm/nEmLN6LGBnP3/H6oI1lhaP7+8
         70YwxOKLc96awwbC5MTC5LbozTDHVuB16nuJs8lxW5FbNYtDqfarqYfpIfEUJXzOhem7
         tTpA==
X-Forwarded-Encrypted: i=1; AJvYcCVHWhE28QnWgsAHrL5Nd48Jpljqh7s5qTwbdJ568sHMfpCQxqo2QqMX3D3ubyMpEPa63t7CO4KPurfu@vger.kernel.org
X-Gm-Message-State: AOJu0YzHhERK3Hp71FnmS4cDsVyqsnasuUxViABcAKwyTa2PXnUfQBQx
	96XXgSv0mQjPy3+tWLojw1pou7GGZe26LFiid42vzghnEtbnufpGrNmTPtAq0GA=
X-Gm-Gg: ASbGncuO0FR29HKh9bCnsibUNoKkBEXQ421LXnpaUrH17bGaPO0LDkblVxtTa9IhTTB
	M8/I/Ps2s6KZOO1nLhxKMXDCEjAATDMbVj/0lImKeLJCU6iljWdMIEaAvxDiaZTmuEvmEL0hdSW
	fNj63azOBwx2wOHhR0RIOBeO9yST8QyhehB1IN7Ya3S1mOupxvOZGzyskotwdBfby+thYKfjPp+
	pL42EdBYB/5o766fMPvCn+1gyk+3M+od8md183pikmWYhxASfdeZedTWw0xT1VYrw68WI8u
X-Google-Smtp-Source: AGHT+IFPatZYku8qpZTyMf/jMFQzLn/kwGK4ykaqZJW7bv5cD8mn9n3GGV0fiyFpeKgBPyxBfj5n+A==
X-Received: by 2002:a05:6000:4607:b0:385:ea11:dd8f with SMTP id ffacd0b85a97d-38880ad88e7mr655188f8f.7.1734101693283;
        Fri, 13 Dec 2024 06:54:53 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436256b42c8sm51547305e9.29.2024.12.13.06.54.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Dec 2024 06:54:52 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 13 Dec 2024 15:54:08 +0100
Subject: [PATCH RFT v3 19/23] arm64: dts: qcom: sm6375: Fix MPSS memory
 base and length
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241213-dts-qcom-cdsp-mpss-base-address-v3-19-2e0036fccd8d@linaro.org>
References: <20241213-dts-qcom-cdsp-mpss-base-address-v3-0-2e0036fccd8d@linaro.org>
In-Reply-To: <20241213-dts-qcom-cdsp-mpss-base-address-v3-0-2e0036fccd8d@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1398;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=TbHlMdWDbh+udm1eEV5kveS9te5ak6OhnhlUSegMb6E=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnXEqYdxB3IY0o+mHCIn9vNLlVhXirfDqOQSs+/
 QT/5Y3pUoiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ1xKmAAKCRDBN2bmhouD
 145QD/47UIajzjcJ9GNZsC5ZP4BvVZbxGcqfHBjBtnUGNebwZFeTrt2BSZ9NAykXdPo7LVVzCBX
 1OoiiBomYdm5R9Q3/TX6AJdaA+UR/ZhyBrWoj/9qX0JFWLTt4qyCgFeLvu4NwVSs/RjTF1lX3ev
 U3E4CzoR/nTtoTesyx+ma/OLtEAb9+z4wCTukBJ8EyzNvOsDpNo2kMGx0enBGh+yry4fFv31C0S
 ZzqWdZJHPd0VMWQWFeT4me4im68zIgh8yukwTgJvSkYE2sYrdc4/QgS5K7wc6cK+lXyt144WJ2H
 yJ1Ua50O48si6hyn6PLIj2o3RbpsQM2chm2dyeqovayhDIwGfSo5/zrhlqSYEftAPrZhr7TIusK
 oHUD4dfIQVqOeEpDNnrW1nyV0P1ESbW0rfWGjwmVq4v2kwESp5+obyjg2Yz8Tbrx3cTuk3PootC
 SgN1Rc92BrSgZWBRHQAU/8XEPfKAzV44Eo/SThi56ZKBK8nEjb2HINENzF9plkR2da7oGYpSCg9
 kRVjHM07V+G6vTMMxZoUF8FTG3BR1msG6BG8yUAxxWN4rHYNrTi686eTUjoFPhCLO5GeV2iVlag
 9tC5k+ysty/rXHX1YpNG3CBcdSl9ehXtUCSKYl7WybQUb58tMLrbBM64xQtKf3fq6ag4wokPYd6
 D7JhPXAxkgBf23g==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The address space in MPSS/Modem PAS (Peripheral Authentication Service)
remoteproc node should point to the QDSP PUB address space
(QDSP6...SS_PUB): 0x0608_0000 with length of 0x10000.

0x0600_0000, value used so far, is the main region of Modem.

Correct the base address and length, which should have no functional
impact on Linux users, because PAS loader does not use this address
space at all.

Fixes: 31cc61104f68 ("arm64: dts: qcom: sm6375: Add modem nodes")
Cc: <stable@vger.kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6375.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6375.dtsi b/arch/arm64/boot/dts/qcom/sm6375.dtsi
index bb6511cb451b1c45ed2669f208fe3ed00848b481..4f1d4b233697005aa48dbf80700fb28980d88cc8 100644
--- a/arch/arm64/boot/dts/qcom/sm6375.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6375.dtsi
@@ -1516,9 +1516,9 @@ gpucc: clock-controller@5990000 {
 			#power-domain-cells = <1>;
 		};
 
-		remoteproc_mss: remoteproc@6000000 {
+		remoteproc_mss: remoteproc@6080000 {
 			compatible = "qcom,sm6375-mpss-pas";
-			reg = <0 0x06000000 0 0x4040>;
+			reg = <0x0 0x06080000 0x0 0x10000>;
 
 			interrupts-extended = <&intc GIC_SPI 307 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_modem_in 0 IRQ_TYPE_EDGE_RISING>,

-- 
2.43.0



Return-Path: <devicetree+bounces-128603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B349E918F
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 12:07:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A14716561E
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 11:07:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33586224899;
	Mon,  9 Dec 2024 11:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iotEnwaz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E063E2236FD
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 11:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733742182; cv=none; b=kOhzmr2QrxvFjtBUPXDzTFmST2TYt6JSCocrxM2nwiWIfMOwl4u5YMadbgbpVTSoeyeZVombtVirOFHVZL50HkuahLN/veZS1tNKQgODtRPetwnRzxAJpLiZghfenTaO+mkY+VlvVd4B79bdPk6vVbYpHWFWX5REpkD9JBl5pVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733742182; c=relaxed/simple;
	bh=kkscAfqjZ1iO8Mt1cf8ePp07BRkZZiJewMrsa6+GGrY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=icqODKG39bpH9dlbK7x+YvXMsBDXD2/E3jH912BbzFdzJiII8I0W0rap0KsTnq9j2AvH7AfkZbBlPKko+usV8PO52zE+zRYgmQd9YMvaz2Wj0qKeQeLoMISOgo55fModkcq9Ov9o53sSQaJTnIlCBSEdfvI1SqRNMybrlO22iZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iotEnwaz; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5d3c1f68ef1so493005a12.1
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 03:03:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733742179; x=1734346979; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6BnGnc4auB4BfoL4yYa22p83zP4f8oOwWvOviDPs2/c=;
        b=iotEnwazDox6w2q+/mBEWG53COFiKt5MYREZK/LRtvThJX3ma/5xg/jUh+S7wv0/u6
         et0x9LJ4Ni1PymxX21HyC/55RXo1WwCg5/p9NMZzGFGPlGy2N/MWYS8esvky/LOpLOw+
         w9Qy8rign3LFfApqNbKplY4fbKWakfvS/a1990haFhAFGQKps2SMftBoGvwvbCYlKuwO
         ZbRScHKWGJoqpDbCI7a6A8kIJPSD2J07oEL96A1z/yuOFdyWCoC59C3gC44HER3PV6mo
         XYosGF9oFvL4zNFSg5EgSZrodqeCoGTb7TdQfbnVelDaxglZtf92WCb4CE9JU//ZM3mK
         wwwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733742179; x=1734346979;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6BnGnc4auB4BfoL4yYa22p83zP4f8oOwWvOviDPs2/c=;
        b=dx2QaWoWlwrsF5fvmSIjsP5y/YhTe3d4TVmbz4pPl5hrpGNfqrCtn4D7FWhcm1MO2B
         H+uhljU0CsnJuDxQZkxiFR4DoqJvQFQ1IBB3VQMg/4RpthnKqgZu50TGiBEZxwpK6vId
         dgPV44rRS5m/qpxwxBiUkPmFnQIuTR+0c1ql1HsV/bV0BJzRH8OCJeu6oSMdQgWBpa6Q
         crnsvfALPphCAIQghpaFkS7Pl5L+qJkqosmXHuB+dXXkXP+Bh9UoHfqD2Pp5J9joz8UJ
         FVLKgWrIMlrBKWSfoqsQyXbE5AydjuYBJYNv1CHLuHON/E0gbIg0jWe73NVSDHgkZ20m
         SFew==
X-Forwarded-Encrypted: i=1; AJvYcCVU5TgakaKHFa4D57qFGANPSrZT/uT3wEx9A0fUDkDO90u7woTFeMEWWEPiOju3WyXIXriAO4A+Mfsd@vger.kernel.org
X-Gm-Message-State: AOJu0YxG8S76uBcnDtRY3GjsSeRbRtsxtpHPRFLDzBeXbPGvN5b6pQ1e
	O3OggnwBG/Q7PzA+23vmmZgJ1n/cQTAnsg9VghMm+vg+WDQzm9X8rUiJysOv/rM=
X-Gm-Gg: ASbGncsBB4ewWVAuAFim3FYU878a4qXXRc2f2tc4dzV4ZoMDRKUQO68lqM9i4+edLp6
	gccm6oe9wUyaInQk3iaoXk6qmMC60Mt8SM/rjBa9p2akK6O/ZecjBNiHOlkc2yxhTi1DGrYQwKc
	eosth/raUip+wgujorhj2XxJLDHqKrk6yBdPcx2ZJqZJabu0Vz7l9HZwyYM81FzX1b3/+i/Zene
	MF0pbxFedncsWAVkYH5Rj46emNFggC2V+LnQVx6DN2X8rcsBJy0RVMIgavjhlAaQyY0/w==
X-Google-Smtp-Source: AGHT+IH7EELxQs80QyCSuZaavUzpWJcBmhXoqeXIuQsmrPemkzCku7T+TORlq3iIC82ob4ryxScjnQ==
X-Received: by 2002:a05:6402:1ed2:b0:5d0:bb73:4947 with SMTP id 4fb4d7f45d1cf-5d3be4617d1mr4584309a12.0.1733742179153;
        Mon, 09 Dec 2024 03:02:59 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3dd4f641bsm3348818a12.51.2024.12.09.03.02.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 03:02:58 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 09 Dec 2024 12:02:22 +0100
Subject: [PATCH RFT v2 17/19] arm64: dts: qcom: sm6375: Fix ADSP memory
 length
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241209-dts-qcom-cdsp-mpss-base-address-v2-17-d85a3bd5cced@linaro.org>
References: <20241209-dts-qcom-cdsp-mpss-base-address-v2-0-d85a3bd5cced@linaro.org>
In-Reply-To: <20241209-dts-qcom-cdsp-mpss-base-address-v2-0-d85a3bd5cced@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1182;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=kkscAfqjZ1iO8Mt1cf8ePp07BRkZZiJewMrsa6+GGrY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnVs4/2Aghy4pKChxm/UqJrFPMv3acSQKLaaiCM
 QjRhALTJOiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ1bOPwAKCRDBN2bmhouD
 1+wUD/0aBKf9pV9+46CJ+CPEUH0MqSz+4dJK3ZLuYaXKUcYmNJQ08hBsC8TPagO+wdK6rNSptnh
 PNYMso0GEmS1gSvqsBOkzI21xz0TZUHlzo6JDEaXMx3IYrVWHzzHJOU1xX1qm6YS2AOMX7FFqhm
 AXyKBVv/SWtZFbJum2MDPTGlYYmB1ST/P6IVQnSdWsZCuP+EwhvkJp3ij3f312kszVccgTbaSOK
 F7zvI7QaARG2DafRJne5f2wZd/H75IWQ0s7bRgO+j3eg1bT3UiKAJR7SmJubYh++utmm5ofjSTM
 7Y9/UR//dW4zWwH/4X+bDuq7+Cod1qt5BVEUwwqCuyGu3rKmGFbf1dVQ7UevR4/VcrNM/6oSoeL
 Ce7CxwlsNcDnkEVM7EQdfx4zJC+ZiofULuMWyUdC06mcu6wuuLAV6Pp+oP5qUcpbKpdrbhxmwKL
 A0TxdqFR9cxP7QtUvOxKEU+6i/pJpxbKRZwgdpxlbFd3vl/bTGjGV3W+M/Vz+NIGSbSva+gq35n
 MFopqkCcLNcaMKLKYBVqYtQsAvnlSk7qlx4iCvbqSKArgv6AH83+zdo2nY75t6eZ1QDlcPivv0k
 e17U0Ds/Mj5ZFqLNYhNikSbD9FKK8vwiOfGby436Vo/nzvOIKcESrYeQJzDPSTiuv+lhXkcsEfY
 UnP/1+l/R5p606A==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The address space in ADSP (Peripheral Authentication Service) remoteproc
node should point to the QDSP PUB address space (QDSP6...SS_PUB) which
has a length of 0x10000.

This should have no functional impact on Linux users, because PAS loader
does not use this address space at all.

Fixes: fe6fd26aeddf ("arm64: dts: qcom: sm6375: Add ADSP&CDSP")
Cc: <stable@vger.kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6375.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6375.dtsi b/arch/arm64/boot/dts/qcom/sm6375.dtsi
index e0b1c54e98c0e8d244b5f658eaee2af5001c3855..613319021238a1fec44660cd9740a980edeb3f10 100644
--- a/arch/arm64/boot/dts/qcom/sm6375.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6375.dtsi
@@ -1559,7 +1559,7 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
 
 		remoteproc_adsp: remoteproc@a400000 {
 			compatible = "qcom,sm6375-adsp-pas";
-			reg = <0 0x0a400000 0 0x100>;
+			reg = <0 0x0a400000 0 0x10000>;
 
 			interrupts-extended = <&intc GIC_SPI 282 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_adsp_in 0 IRQ_TYPE_EDGE_RISING>,

-- 
2.43.0



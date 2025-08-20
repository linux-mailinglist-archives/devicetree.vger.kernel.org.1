Return-Path: <devicetree+bounces-206899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEF2B2DEE5
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 16:16:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4523E176CF3
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 14:12:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9A8926E704;
	Wed, 20 Aug 2025 14:12:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N6HT4GkD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80A8021E0AD
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 14:12:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755699163; cv=none; b=p4SPgouR9GmK5olCFTcllAdqEZzFbv55iknvNdC7wHJZqJOo0enAkMegM79kZpGLUW14CRH365dHY2WgDxuYcFroP+lN6Dfg+NihDe56UPen9zm0FRCMah5VcgtvDeZO4Z9DgowrMSLWOdFo43+SZCdxoXnynMTsOHYrYJVROho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755699163; c=relaxed/simple;
	bh=H/RTJDY9eM1acY1XItQorh6/fncB7JYm4MnQAbwNEWM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=T0SqryThDCvGZ3VMJsv9891i3XuFWjX8t/3tRGHPfUXtA5enaqrqeCCuJymSB6SbX2mC9xGGquj/eHOtIFmQqMGN4BW9/ZgnKbMmeM3bq0COw5+eh7DKPxn9pjPXBDrrcC2OCcraSVMY3eEwJgE9rVtuRx72USQynDNsxP2+jog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=N6HT4GkD; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-afdf5843940so6650766b.2
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 07:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755699160; x=1756303960; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6DicCiRUfEBKSVE+lWissFYluUrOy+BhCrrkg8D9e0s=;
        b=N6HT4GkDW6x50HId1dhpzKCUm2ciomRMESX0PQAX1wpKK6kHNPJ4PaZtuD1Cfy+tcH
         D0CyHuBKDVu3ODxVb4agi8canKH6mpO67BbyJl8+l9OEmcJ9RUG7kYymw8dKlj4N6VZU
         pJyD9RvmjPUHVQB+woJIIRI8FzUctB/SyfXGG0asbKTTi3GaG62mqi24elFON58BtK4h
         S9hJS7pZskzCQ3kaIBssM9Lartj2QkAoLPJnEBaNRiCBSn1UYQasfPAj6+CGZ9dTfKNi
         B/jfKPvLRlon+wTEDXjHUQLsFKi1CYG9GM9LEOJzW0noAa0nd2X0fT5iBZYFGqgIIqlT
         Nkxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755699160; x=1756303960;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6DicCiRUfEBKSVE+lWissFYluUrOy+BhCrrkg8D9e0s=;
        b=Nwe74yJGEeruKqzXtx6RlimQJub41DS/Ha/aet+oaBNezhl9uJff5NGZQb6c0MbV1D
         XV21NF/sUROlPcLUhs1qK7iDFT2PRp+e9oXIwTCCNENWYu4Y1ZYuSUpY2zA9Kh/f5BNM
         Q5bBiT+Eh2+/M8ds+mgpk/r4DrtiKHy24r7X5xa+3OToWQbFAECozZ4s6w/quQMoDCHq
         2IHf7w96cBEzq7DlOF0bFMuaFUunnOLlYkOGVt2H5MHkuaV/XvLFnnzoeqxOkkb/dTnJ
         i7p8Nm49QRGTw9qe8ujbWcGjBxPw2BTNiaM18DDBJDT/Ar8n927a5Oq4G34z2+yr1goB
         Jlhw==
X-Forwarded-Encrypted: i=1; AJvYcCWhENtQKi1w2xTZxRpF2WtKq08Jm1pYUcBu5h04vdZn6hqXPTexe3uC2jQLXqkKipYqPRLxVBBM060m@vger.kernel.org
X-Gm-Message-State: AOJu0YyYuRIyfyCy1m6gPPG74NUXoQI1dM8vNC6c+CA0tDjlGcBqdBYw
	e3/eAWD23Ycj5qof92xbnRvYIxpie4CFEzH2+6nX0camN07IB0jxOy088v5jWKplxrsq6adkF2M
	JWiAx
X-Gm-Gg: ASbGnctZE1O5aofpQz0Q+J5INz8HF5p81J2tTm3aHBOw3rTU4lk+kDqgS0u+1/9t3cb
	oxLTvAD6DDh6C3Z/0i43v5tx+TgNH+BbEc58Y0AREzve007F+G3O3HYdXs7KFeOkE83gaJ3eSxg
	dsXRBGVZw9i4+OEg4Lat8NQrXbQaHuJkTMEb8c4RZF+rv/q2ONCOd41OQDjr6OcCPPnLY+s0KIs
	3S5V46caBQgzyo+iGG6IhotCb8HgZJVPHvMPyfsuX3uMa+lAhZZ24dXGQRKC3XXRNWeb1v9Gzz6
	s7XlP3KYVYNy9B1irG8iBUlD6ljuwBzs+xBDVltf05AzvOGPvV+6iyrgFw/KYLXuWGN5uNe1m7N
	XxCz6VBO2bK0RfhcjYDubtKWaPZsaw6lklg==
X-Google-Smtp-Source: AGHT+IFqzeaOsHYkCFi/BajZxPmhBjlCcFnmT90BtcmwpVY7GgK8f0nIWHXUb+iwDk/ynDENIjdTXg==
X-Received: by 2002:a17:907:72ce:b0:afc:ebfd:c285 with SMTP id a640c23a62f3a-afdf0099fbemr145741866b.1.1755699159726;
        Wed, 20 Aug 2025 07:12:39 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded4796ddsm186181866b.55.2025.08.20.07.12.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 07:12:38 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: sm8750-mtp: Add speaker Soundwire port mapping
Date: Wed, 20 Aug 2025 16:12:34 +0200
Message-ID: <20250820141233.216713-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1495; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=H/RTJDY9eM1acY1XItQorh6/fncB7JYm4MnQAbwNEWM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopdfRWuX0u0X8hZ2BPrL0udyUeXVspH2Ux0Uuh
 flmJ8NRBGmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKXX0QAKCRDBN2bmhouD
 16q9D/9uVUFTPBjlyNVgd54pqVKud6L/UpgtrUwAaKJpF3y3vYUQoVMQUNLyz23vUue0om/LiEp
 nMKrCDF4tDiQiuNEHkmidSRPzXnNsyZXkjxgZ9dizGmQ3/sQQ35s0iaUyvTwuLXZazKa+Ritlab
 tAhL/Jk/smDckQ1X9zIFfzLtbzdyjhmw8ZpLUZRqnt8mIqsd7HrQqGjzOEp0hYmza8mCAbmpfn8
 sWrzclE3RtCureai1hRCNWpjwHWpUFpeaa3J4lY+1x38f/Q/aKaVJtOrrsc6ioX13UKxaQU7P6H
 v+8VcUUG3ETqNhij49+9BFSsh8w0sfK42JkKZbXikJyCUw5MM8pLlv25n3znZhOKkDABM85layq
 YXk5QW/Ka/EGhoTFS8OCaha/Az7OQFD0UNQLkmDEPnKU2O6YGSgtZBveQV1UI3pzfmihfHKwtXo
 fv8PwzHkO1hrbUFLo9PJ0gc3GarUYo3qiQrHQceFg+jA9nRX6rpV2sM8ZeEgvyovYRPbj4429TF
 /Z4BORZBp0euajixvfqCEeywBi0F+Extfxd2LFAW1NHk0mapHFs7f6+3DYvPWHtgFjvwd71A++s
 tkwwa4LFtcxoAlw74kw9d55lYGq+y6P9HSzuz7MoMyNxpTAwiUr4usrGNG6F9TFZPgTLwR8/q3y w5HsiS9EGRYcGjQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Add appropriate mappings of Soundwire ports of WSA883x speaker
to correctly map the Speaker ports to the WSA macro ports.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index 75cfbb510be5..946ba53fe63a 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -938,6 +938,13 @@ left_spkr: speaker@0,1 {
 		sound-name-prefix = "SpkrLeft";
 		#thermal-sensor-cells = <0>;
 		vdd-supply = <&vreg_l15b_1p8>;
+		/*
+		 * WSA8835 Port 1 (DAC)     <=> SWR0 Port 1 (SPKR_L)
+		 * WSA8835 Port 2 (COMP)    <=> SWR0 Port 2 (SPKR_L_COMP)
+		 * WSA8835 Port 3 (BOOST)   <=> SWR0 Port 3 (SPKR_L_BOOST)
+		 * WSA8835 Port 4 (VISENSE) <=> SWR0 Port 10 (SPKR_L_VI)
+		 */
+		qcom,port-mapping = <1 2 3 10>;
 	};
 
 	/* WSA883x, right/back speaker */
@@ -951,6 +958,13 @@ right_spkr: speaker@0,2 {
 		sound-name-prefix = "SpkrRight";
 		#thermal-sensor-cells = <0>;
 		vdd-supply = <&vreg_l15b_1p8>;
+		/*
+		 * WSA8835 Port 1 (DAC)     <=> SWR0 Port 4 (SPKR_R)
+		 * WSA8835 Port 2 (COMP)    <=> SWR0 Port 5 (SPKR_R_COMP)
+		 * WSA8835 Port 3 (BOOST)   <=> SWR0 Port 6 (SPKR_R_BOOST)
+		 * WSA8835 Port 4 (VISENSE) <=> SWR0 Port 11 (SPKR_R_VI)
+		 */
+		qcom,port-mapping = <4 5 6 11>;
 	};
 };
 
-- 
2.48.1



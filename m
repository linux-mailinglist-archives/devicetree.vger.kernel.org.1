Return-Path: <devicetree+bounces-80788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ABED91A672
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 14:20:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05564284C81
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 12:20:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A6B715688D;
	Thu, 27 Jun 2024 12:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xe2TlyK8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DC3E15574D
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 12:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719490823; cv=none; b=nZqUtQZL9BosvK9r/li2t2SBjaDoPsT02rtSY0p66JRG/KN78Wo6PauZnoYSllMabUsi7hr5UaqwcjOphJ9/0V9kR0sT4in3FWMvrUIdfXihDM/mplyA99B6Ffq3aNuiouE2KvJu4xFWtkN09j6QsfY027F4r6B7Au4ILn5hrMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719490823; c=relaxed/simple;
	bh=qNca58iBYx4/YKuEF39ubRjoZFVpXO/dT2i36hZSDME=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WdbTUh1Tosf/Zpkufk307JRDL2whpcooPQ79R5rqXg7299CMJrBfJN08PVIs4M6RSX/0kFzJBhMBTKwrZyTCkQxpFoefyQFxi6SxuCBQbnfxB4ptU5W+BP/sBFrvlbdU9Fizr5jRUqhUOF0zmhUdiGGSg8pPUplOIa8e0cxTO1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xe2TlyK8; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-425680b1d3aso1215735e9.2
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 05:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719490820; x=1720095620; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tLaPa6oLv08wfG7ztRt+Jq8bw49dbPOID7Kl0obvBh0=;
        b=xe2TlyK8fS05RHPM6fBBTFNlk6SLuaEiojqImZS+mXt7KcVoRN6KM32T3KQuRSMCNW
         L71WjpWwuoD7k5MP+D8O5gHgEfkgfBXadXQxWSwjWCqyJs/t5CBqxNbO5F3eTVVERkMz
         M5IFLBBAmYOZuLFDyuOzI4fF4vz3SrOLmKD4lmnv5uHdogjkznOMcjauDxQ0MZLWXzqa
         s4N9XaLXQov2ssN/5+H92IwdzDuZBvX+3jTmoDWNWP2atO5D6b6Dr0aN7MkHb7kHUH1Y
         ZGjpFYfvxrXzMVv0Fz/NE3xc8GQwTmQrPC1vKdr9vSTnAVF3maS0xyKq6t+CcCrljB7x
         TcIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719490820; x=1720095620;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tLaPa6oLv08wfG7ztRt+Jq8bw49dbPOID7Kl0obvBh0=;
        b=GcpA/3D/MPs+FZeIuhz4pihkuK8/bGIdQG8UClKNkb4PzX4Vq7VnCviUhIRMaw753l
         dHeiz7NGfqp/pCJm23g79s7o7ulopIvwSRvbwX/2P3Rqph9YHpdn4eyq5QFdiqdZ4EjQ
         Yj9kIBMM/XesWorIK6/ULPIgYGDQ3/ti0vFQqKEKHTfSJwoC0Ow32GgLctRqJTrtx1uG
         pa822xD2TOwCGDxYBMxZhFb7T+3+YYR0Y6ksynPc+uSNJ+iqfzrE3n6MxyrbRvy9xxDp
         EuyLt5EtxGgXT3jUC3GgYgbyPqvn8CBonXFdB/fCIZosp8VoHN79nRk2You3A00eDJL5
         okug==
X-Forwarded-Encrypted: i=1; AJvYcCUq+yqs3DKVbu50Vf1o9ujUyehHf+RFVm7r81SYg6O6L7plqWKmA7ySfmbN4ZUzXaxYY3dYjlq6MOyFl6KBs9uRJXYbPMHVn4YACg==
X-Gm-Message-State: AOJu0Yxx4Hl1FxvBYpWndymPvEIaPuWx5J6OOVu4CqYEYLmb4hzHw6ti
	tTU2hvojDqxt20AHwPbpGd+N/M/dJ68vQqKzjY+hR+fDk2eSVLWcL2lhSj2rmes=
X-Google-Smtp-Source: AGHT+IF9LyXXslFdXuXYv3RM7YBWaD56RzK0d5p9amICa6hES+d2oxb/Wx1KOpMAgRTDRs+UDqUtrg==
X-Received: by 2002:a05:600c:2d91:b0:425:1335:d7ca with SMTP id 5b1f17b1804b1-4251335d892mr39769075e9.36.1719490819993;
        Thu, 27 Jun 2024 05:20:19 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424c8424b43sm62692885e9.32.2024.06.27.05.20.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 05:20:19 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/3] arm64: dts: qcom: sm8550-mtp: add port mapping to speakers
Date: Thu, 27 Jun 2024 14:20:14 +0200
Message-ID: <20240627122015.30945-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240627122015.30945-1-krzysztof.kozlowski@linaro.org>
References: <20240627122015.30945-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add appropriate mappings of Soundwire ports of WSA8845 speaker.  This
solves second (right) speaker sound distortions when playing audio.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Bindings:
https://lore.kernel.org/all/20240626-port-map-v1-3-bd8987d2b332@linaro.org/

Can be applied independently, if bindings are fine.
---
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index 26dfca0c3e05..ab447fc252f7 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -842,6 +842,7 @@ left_spkr: speaker@0,0 {
 		sound-name-prefix = "SpkrLeft";
 		vdd-1p8-supply = <&vreg_l15b_1p8>;
 		vdd-io-supply = <&vreg_l3g_1p2>;
+		qcom,port-mapping = <1 2 3 7 10 13>;
 	};
 
 	/* WSA8845 */
@@ -855,6 +856,7 @@ right_spkr: speaker@0,1 {
 		sound-name-prefix = "SpkrRight";
 		vdd-1p8-supply = <&vreg_l15b_1p8>;
 		vdd-io-supply = <&vreg_l3g_1p2>;
+		qcom,port-mapping = <4 5 6 7 11 13>;
 	};
 };
 
-- 
2.43.0



Return-Path: <devicetree+bounces-156896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C287EA5DCFB
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 13:45:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 028951791E5
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 12:45:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DACB24889A;
	Wed, 12 Mar 2025 12:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EVqGMg5Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626EB245012
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 12:45:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741783504; cv=none; b=fTXrB1Y9zWDoqr/X1obenpOqWvQFT7rRFKvfHbPTkrs2aZdxiZI81bGospYRPqq5pjudRfJ62KBVNjVRSLB50b9pkG7Mu1gqfAOphniJTaQc2XnfDsBXlJRjaDOjLwJXt39jw2PX4sjgz40hADZHiOHEuEZAlx7OHDC+EEPrYX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741783504; c=relaxed/simple;
	bh=zkWxc58AATnS1F39ut/pLhdJJwwAOHmg2qN754Tuyu0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JoZD5rL3uFIMFdES60QttQ6DEpLP4hPIGqh69s8m1RR250CYUaPsubq4bx+fNFCj8ENvfVRovji9D+G1tPRoCFHVMXvrNl/Jk4bv2tJKivA2fya/psXjOFcn5u7sOfjH+5jaw6RMcge0sP2PqP/FxzQD+Z8PQT+AniVgSGKCuIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EVqGMg5Q; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ac1df33123cso90554066b.1
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 05:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741783500; x=1742388300; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LXN2WSGs1UrSQsfS8ukQuBeuOIY0VTA+DMr2dFmybQ0=;
        b=EVqGMg5QVWtql+EPvWu6Ij+3NCHjTYpY8EXaBSQewzO8ccKI2bIcGQWoWs7GvyZn+/
         uy8X6RygsrjLVbRt4YTblGBO/AVArNQ7IiGNg/Ix4pFMlYCldoF0aBFQDbv+qImsZ2g0
         9Z648wHXjwlEKoTjm+/gokmITK8tGpdJZ0oIOaLzA4xGNtFfF6uztGEec+U4681QzlLb
         r9XLI4fx7FoOmEXmrFuqqoHBFA1fh2EsRUus6QkFkuohvQv+zdTnrS7cTsny6uz/hU7X
         I2695SlX4pMonth/KIkPKZgCKasIV7mGNmar8r6yDpV1vQ3uQ4JNyTG9gQbX0PdoIRJA
         PQLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741783500; x=1742388300;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LXN2WSGs1UrSQsfS8ukQuBeuOIY0VTA+DMr2dFmybQ0=;
        b=DndxeuSPoMobgWT4A4g4n5n2tG9o58/EJaqZDbqdBuM4Q7YHLB2uaVoL5ifjjWmGzg
         jQiA8MJiYZ7btYo24gL0yQfmer7I2fJ/rE1skwu2so6JhoOtSyJ0MA+oGRoVj14RJpcb
         cSGKVBpVaJCvJLkj9mCcIpVau8x1lQul2xjpVdiHUEH8VApYnnepZ59DuDaofvSsGWxM
         +lxwIxEre0UiI5nU1AVm8frVxXvpOcdZgjzguh1s2gndmPMRRqGxvSgIrtc+th8NUhYJ
         90ClUevmPnzm3iq4NRCdNtRiUpGZ+bkRd09e6OnCNcI+AaBzFTIXpG+XJfa8JlcVVVd2
         Lv+w==
X-Forwarded-Encrypted: i=1; AJvYcCUhlK2jQqdMXNjpqZg31vIF4SIJXhpa0yUurWby2K6xYCCT97QcKibxWNOwpq2uS6ZRVa8GUn46AVro@vger.kernel.org
X-Gm-Message-State: AOJu0YyrB1YSp5UuGhd9I1XENNrXYkrLzfZOxqGg3s+hbXcuaFwszZVL
	gD5wm/fyBSt6PFhjUMzmpe41OXUITQ1Go1wbZOujYT+H+9QCAiDDeD6Hab1Bf6A8Qf98dhxZOhn
	I
X-Gm-Gg: ASbGncvoS1wyIDV7HzdvPvsJuU2xtEILRt0pDN5hoyWYxge5N2HtBw6Ebr3Mw1OKy65
	Y+/AI2SZHRYK5TfMNgI08UsftJz/J/oPhLMmN1GoyVs6bNBOPLV4Y/vV2ppmHUCuZeju6U9aAmT
	4NAW2Hs4TDgm4q8ocHJqZzUULnlOOlvxfddwDicaB5y4x71Y7+gnWofUpNdFhTMT0CawmHY96gn
	0dihHgBS0zEJSAOCHRGYZZSaJO7CVhnqurFQmYxpmgcW0o0KwCI9I5l+0UqZu7WAvTHOys88TTi
	37YS8uMSsBbhDccSTTSFxXTNKacJEbAxob3Uy2KhwVE8e2yxOyxt95YDs8A=
X-Google-Smtp-Source: AGHT+IG//gmKFakH68Ym/u3UkfwwsrWj7SdGCVuyLc0MN8ESyV97CBxEak/W1PVtI8h1AjIZxo4YlQ==
X-Received: by 2002:a17:906:a897:b0:ac2:e2bf:d440 with SMTP id a640c23a62f3a-ac2e2bfdee6mr107408666b.0.1741783500350;
        Wed, 12 Mar 2025 05:45:00 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac287653d1esm628955866b.125.2025.03.12.05.44.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Mar 2025 05:44:59 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 12 Mar 2025 13:44:47 +0100
Subject: [PATCH v3 3/4] arm64: dts: qcom: sm8750-mtp: Enable ADSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250312-sm8750-audio-v3-3-40fbb3e53f95@linaro.org>
References: <20250312-sm8750-audio-v3-0-40fbb3e53f95@linaro.org>
In-Reply-To: <20250312-sm8750-audio-v3-0-40fbb3e53f95@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Melody Olvera <quic_molvera@quicinc.com>, 
 Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=938;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=zkWxc58AATnS1F39ut/pLhdJJwwAOHmg2qN754Tuyu0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn0YHE/hTjAZYMfM+NkZjUgCK9460wjNdgvUqhO
 a2CjG4cI32JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ9GBxAAKCRDBN2bmhouD
 1xikD/0TthD4Yfmt58JlYe3XUGpZFidBfbVRGCIn9eUTuOujGKMu9j2HJOmg+L4tWEa9LQ85Ul/
 zOPy2as7Uq9DaHFlCSrvEdupqpzQ2jzePLEVAgJvrmPnrstvH0IQ5tzkJBjPWN5RhY31f1u8mo/
 NOYL0b/eOJ+tX577x0Jht0BwOHwp/At/vdQ/x6qBimYpLNoZ/Qib2Hh1R4xZgCiYu+OxNBMWN4K
 T7P2y9VHZbRKD69T7i86Qo9OA4Q8DC+p25COCiuopZfO3Aq8M9c7/JoT1IweoE2WYc+S8KPUdvZ
 K3HloKshov11RW9JMrVMlrag2xmxlkTUlFwuvqSeXCBYCmxlvlWKFquTnIFm9wzhf9Jhgv1cYrK
 WKIvrd8iONmsd5rtKlXU/hZrJb/bdrILor8iCu887cUUHblthBDA8xcHdPdkJU5NRQIMQ1exzGy
 Q0Onn4KeH58jlGIeRjgYlNHzBevpwucyyq0KEz17G2AO7Hn0lIqTx+/HnFWyWbSgAxnnaHQROgJ
 TiX5ahzjESym2fHGnF3YC4fwgorefrspGTqKJF3tUFI//pznxYXI2cccRmYQCKvMt3Aa2mhzqsh
 FksV5Yenr8dGvTQ89UQlGbfRUrrx0QGkCYc9bA2wUbYCM6ILLKoB5lk5mhqy9ZlCLP+k649q32K
 WzWyM9eggZvGxdA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Enable ADSP on MTP8750 board.

Reviewed-by: Melody Olvera <quic_molvera@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Firmware release will follow up later.
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index 9e3aacad7bdab6848e86f8e45e04907e1c752a07..8eeed7f2f7766326cfc7830002768087e9783b9b 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -784,6 +784,13 @@ &qupv3_1 {
 	status = "okay";
 };
 
+&remoteproc_adsp {
+	firmware-name = "qcom/sm8750/adsp.mbn",
+			"qcom/sm8750/adsp_dtb.mbn";
+
+	status = "okay";
+};
+
 &tlmm {
 	/* reserved for secure world */
 	gpio-reserved-ranges = <36 4>, <74 1>;

-- 
2.43.0



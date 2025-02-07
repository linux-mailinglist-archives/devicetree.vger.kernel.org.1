Return-Path: <devicetree+bounces-143898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9BFA2C09B
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 11:31:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C70387A4E09
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 10:30:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 254771DE4EA;
	Fri,  7 Feb 2025 10:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SA7Gs/la"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBFEA53A7
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 10:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738924286; cv=none; b=ECBO36DYhyg0OwEBDTFf225KLET4Z5LTrVRLv97CXc7D33uEEhKkyo6vjk3R9VJRPvsqCCkhV0RkDl4pb5ufXWXrSlsvUt3uTVDuanK/Ss9pf6/MKS2+vWvBpZYu/yf9U+4jd1zY9wraIapf7wzB+KrtWxYaI7PshMFWQE4NFuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738924286; c=relaxed/simple;
	bh=3p98QG4ex3N8/Po1UNXvmhY6FROi20vCqKEYtfIsfcg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=k7yKnfobeNZfZCryVCtSToKcPeEJ5F/rPZdbgP19qs9TaTThOKPPISEzdJ/vd5DWAN/MvW1CcU2cbYtOEgRiP+FW39jLeeA6yrqRhSAny26xAMk9FLyBoI1/48R9R60RbhVYMQQ58BCkACKpTI1Lm0lQa6GC4GBdt8cUxa1p3dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SA7Gs/la; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-38dc6d9b292so392293f8f.2
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 02:31:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738924281; x=1739529081; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YREpSrkrflOlNGwP6NH/gAIlpHPiGAPOJ6ZNf02lLZc=;
        b=SA7Gs/laVeE3XwSlO0v2aFjlrkibqdYZ/dJ0iGQMIZaipeOYnZthCd3JxnfAssmRet
         +af4MCVGFMgOzZ3ysZ+i1x9TU0kWEOmhrRD8UTfXDLhLb17tGMFTCZm9ukQUgwcIDON0
         ZRq5hbGSGZE9rDAR/TehhPCih5zlRzMcKugMGX/1P5YS1TZxfPSGlYChemRE1A5lX+Zi
         jh8JatGLCSgxzkdkI3BB1lgZN0gHYHwMtv+OliIyTKEpDDgaq14htFUEE4thrScvTapK
         tUnc+chdAeIpHy/pCv6ucPeDj6BAtuWxTiSVymSJTSYU7CHztmjORt7ihl3EJRApdu6N
         fTcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738924281; x=1739529081;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YREpSrkrflOlNGwP6NH/gAIlpHPiGAPOJ6ZNf02lLZc=;
        b=kQsqx6io0Vnq9TINml2e6e3ST6ilLmzMhcVVgnWV8f1SxQDJ2lQXQ9Sywa50WgUjuy
         gWl984rlCQ1PssEF6GMZd/17PrNBLwPbycWp4DKbM5lv/dzW0aAo9kKslGr+lYrU2PGD
         wT4nXxkyOWT8cW0QAxMi6nc8Z01TjCMfimnYuoxoGRbMqIjJYcbCQZyB7BoMQDmVAF07
         ukor1rhljU1Wlb9/Oen8L55msQ+wj7n07NEazjy59VwdxSOvTUUg2Lh27DT3Q38ggQzk
         0GJgmDTpXeFWrDtpd8rWlaFdZnBDZ+jdRczPF8auUrgbg7ovZfWkDZbUO3vvgJDs4Dkx
         8jAw==
X-Forwarded-Encrypted: i=1; AJvYcCU5KSpicPBVMOjClWdmhZBE7AqK898V2HMH0jRSICS+fD20HnaMt1q5z/MdNZz5iko4LMW1DZRU4v2O@vger.kernel.org
X-Gm-Message-State: AOJu0YwdSQ4+YzGKDI3ox2cscSb7IL+dQ/TE+tt8BOmTS/TN9FwbBYf6
	5lMcwn3Y10KcQx6YrAlWuOZdlvfpbSnhuxSPD3cYJ7jDfYddOmmvXskWXVeAVrM=
X-Gm-Gg: ASbGncsfzBEWiEJ149+s1l1KsbYN+U12Bg6CnpysILyiGwGQpdFCIA4A+uIuhv5MVQM
	2RG/QVdSHLZWD8zZj5MmKDw/UhJ8S2MCT+SZW+FI3jwr2wFhGVWNWtHh0UYRvKXBuK5COFD4GL9
	nZrvyIaDaPa8uJH23uw2mQXx7c7gKHHDnumF7aHs8aSTSJxr678XIiX2xIeXvL7yX12J8Oci6Vm
	V+P/kIsz3Pnh87SeoFL/jweS6G1rvHLqCByDGnYGZ6peXfW4Jr9QH6Wq73YHo+lgItNW7Ybt783
	jxgoLNxYOFmyzU+WiwZJojRGUDp9BrU6M83/
X-Google-Smtp-Source: AGHT+IEQclQ19QnwTTNLog5fe6aJupXgXdsoBvU42wl3/jA+8P+NFpayzk/EhLSa+4KzOBZeL8IJng==
X-Received: by 2002:a5d:5985:0:b0:385:e30a:e0f7 with SMTP id ffacd0b85a97d-38dc932dd45mr1506939f8f.22.1738924281136;
        Fri, 07 Feb 2025 02:31:21 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dc2f6aeafsm3170442f8f.20.2025.02.07.02.31.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 02:31:20 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/2] arm64: dts: qcom: sm8650: switch to 4 interrupt cells
 to add PPI partitions for PMUs
Date: Fri, 07 Feb 2025 11:31:14 +0100
Message-Id: <20250207-topic-sm8650-pmu-ppi-partition-v1-0-dd3ba17b3eea@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPLgpWcC/x2NQQ5AMBAAvyJ7tkk1oeUr4lC62AM2bYlE/F3jO
 IeZeSBSYIrQFQ8EujjysWeoygKm1e0LIfvMoJWulVYG0yE8YdxsUyuU7UQRRnEhccoqVtT62Y7
 WGO8gRyTQzPc/6If3/QDFv/yscAAAAA==
X-Change-ID: 20250207-topic-sm8650-pmu-ppi-partition-1e9df8b877da
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=696;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=3p98QG4ex3N8/Po1UNXvmhY6FROi20vCqKEYtfIsfcg=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnpeD3/DNjPZBnMlj8uYjKDfeSfkIeDzBE7PEzkPJs
 cUUFQ5aJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ6Xg9wAKCRB33NvayMhJ0Z0vEA
 CEZym2xl2EQc7+1fyt2NUWgOjXp9Y5rVxsmvd5XJzHKKKYh75dWkDa0sN9yJSXKgdP61oFqfMsjSJ7
 ZaeHO8MYejD/5N+RDrLU7ymEQJZfu1m7z/cepaxgJNBfsEvdJceeEFUwcU+GA+AH67PTu9pQp+AmY8
 6ZLD2psOmwJ2npqRwvixi4hnmF6P71KaX2im6kFST/iHaHuuCp0+dMf5vmYqcEBRko2vRBvigPyKMa
 xaIxmJUT16mZ8pcXs3tnhXIHME38UcQuplXZLRBfjBEpjbgL7lgiMwpp0ehzmpa7o5Z2Lu0P6jGyIF
 1G86QXmwHOH3NU/AaPD5KLQh4C/qQZxdHbKp8DlxbTwb/v2kdS4at7sMWMcGqPEveBz9bOc1+bjxbx
 LG0swFnJaarxWO5/zZut+xv/0G85FGyGAUr2kZ/+eoEKmH7CrJ+PhZrmcfsefJYsPJrFgp+2dRgA6L
 HB8EJ1ziVYKra+5742LJRY4MNiVU34tMxlkchJHS7k4DfRZOfSy/UX/zaCiMl/3PoTj/oBoCAOV1xi
 48P6LlTsvSjaBNtCptBlMW7ROEKIWuDPvzeOvA/vDmuBVsfyya0VNv24yG52I0USQdmv+womWHezZB
 E7/WLtR4nrb1VjJdLzaM6lNuzweTugXyAtEWfE5DmZxfcWWCm93vPy8pi6eg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Swich to 4 interrupt cells on the GIC node to allow us passing
the proper PPI interrupt partitions for the ARM PMUs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Neil Armstrong (2):
      arm64: dts: qcom: sm8650: switch to interrupt-cells 4 to add PPI partitions
      arm64: dts: qcom: sm8650: add PPI interrupt partitions for the ARM PMUs

 arch/arm64/boot/dts/qcom/sm8650.dtsi | 556 ++++++++++++++++++-----------------
 1 file changed, 285 insertions(+), 271 deletions(-)
---
base-commit: 808eb958781e4ebb6e9c0962af2e856767e20f45
change-id: 20250207-topic-sm8650-pmu-ppi-partition-1e9df8b877da

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>



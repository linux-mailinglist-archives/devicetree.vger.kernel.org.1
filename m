Return-Path: <devicetree+bounces-25370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 766768130F4
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 14:10:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A63B1F21009
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 13:10:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8460524D3;
	Thu, 14 Dec 2023 13:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TtNVA4Pi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73F71118
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 05:10:21 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-54c67b0da54so10307645a12.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 05:10:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702559420; x=1703164220; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AUIDfecuT3CPgdXD9xs9nBICujuqZFrFJljrYUStf5M=;
        b=TtNVA4PiDYtLuFLRTcI7YwiGX9MV6OC+xM7vWbEVgc2QYsR43j++JwA8OAmVN1+JP8
         I5qeDPtLSqclF60lK7nx4ycMVpGwgMPIcdvq6t2mSeGLkXp4MjM8SYvTSrFL9sfdI6+3
         6kkCV2WEVaRyI0/XJl16x03WTnqzwsbqU+n1bNJXTb5s1XS85SWtUM1Wy1jw/MenNeUQ
         VRFkb6OpRlLxq+6STt99wcZKHwiI+TllA/gQ4Z/ndem+owOn56QHHFmbhsZNZAzBk4zi
         HOImXyC4wD8bMU7XJ6kNugiss0K9g/4bc40UHCkL47LMa4FJqk3HdDYgv4laPTHtp3Re
         bIlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702559420; x=1703164220;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AUIDfecuT3CPgdXD9xs9nBICujuqZFrFJljrYUStf5M=;
        b=Q9iyLvblGaIwutk5zInWEvE/U4FjgIVW/EIUhsJ26kD6I9C9edPjqvKOyIGJogfwwE
         /R8xQPlCSxjcfpMwPcA6dZ2Bw5G50+eSFjA0HteNIKJpKYUvA7dDKpXE9V/9xySfSWtE
         FiNwDEx+bVarOPwZ1Vakbs2LbCs8oZspE4oVvmnUt3WkpviAW/thceAG4Gpa4yTVgXXw
         r6BuMP3UiBycLiNJeQZG+xGOdK74bwDvrzqrKt44p1OCRvYDfeFapCkrpiZ0UmxliDkd
         yXUrVf574fOfAWI2iNpwh8uYObqHcHWe77C9898M5EaqG47XG06rjvIZkYh9vxmSnu2D
         /N/A==
X-Gm-Message-State: AOJu0YzIOiMtm170h7SFFbEw7m2xS4L51KpVUEnraBA9S8TKzyHLtZn9
	4+o71lSa++kLn76cxTSgTaXP+g==
X-Google-Smtp-Source: AGHT+IHcI+CB3dbqOBHc6gZyiSRJLCh66jgUkizSK5tB7H8mSiwkIVstbwBUz8Ca/NrqwqFnQQ219w==
X-Received: by 2002:a17:907:2d11:b0:a1f:60d2:f0af with SMTP id gs17-20020a1709072d1100b00a1f60d2f0afmr6420294ejc.70.1702559419956;
        Thu, 14 Dec 2023 05:10:19 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id vq2-20020a170907a4c200b00a22faee6649sm2547776ejc.117.2023.12.14.05.10.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 05:10:19 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/4] arm64: dts: qcom: x1e80100: audio support components
Date: Thu, 14 Dec 2023 14:10:12 +0100
Message-Id: <20231214131016.30502-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

Still not complete, but most of audio support.

Dependency
=========
Depends on:
https://lore.kernel.org/linux-arm-msm/20231212125632.54021-1-krzysztof.kozlowski@linaro.org/

Bindings were already applied.

Cc: Abel Vesa <abel.vesa@linaro.org>

Best regards,
Krzysztof

Krzysztof Kozlowski (4):
  arm64: dts: qcom: x1e80100: add ADSP audio codec macros
  arm64: dts: qcom: x1e80100: add Soundwire controllers
  arm64: dts: qcom: x1e80100-crd: add WCD9385 Audio Codec
  arm64: dts: qcom: x1e80100-crd: add WSA8845 speakers

 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 132 +++++++++
 arch/arm64/boot/dts/qcom/x1e80100.dtsi    | 311 ++++++++++++++++++++++
 2 files changed, 443 insertions(+)

-- 
2.34.1



Return-Path: <devicetree+bounces-200510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 565C5B14FD7
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 16:59:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B97393A90A3
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 14:59:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BA6C288C32;
	Tue, 29 Jul 2025 14:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="liorL59I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75FCA287244
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 14:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753801104; cv=none; b=tivSB3ijHCVoqoSFedDVfB5BqBJ+greWfC/TsxWTm9WIZgqjn+xTUAN1KyUnmrrt6wLJYMf4FkmENTkt17QKwPazt4zlrYataVe4JlJzFIpMFx/Qu0kjVEY1CmhZgMpVDnHDH6uNT1J1dtp+eh3pCI0Mj9MYbJ8c/V6WHZuVmB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753801104; c=relaxed/simple;
	bh=5DLEwBkxqt6s+6OaagrlrYbcvqyOtrkxlazUFASdP28=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=FDL/xpzlXtrCUTCv5vYObIYU4EDDGHaiNVua5XlWsFDOBLyfxfGLiMbRViyk5asDRb5UbMPU1NRHel961ghfaHqB9m/1epuaUECeKMIb2dPpLUtfLKYTN33ImLzu4uOfhJwY7yGnkCPYQPdlNboJN1UkZrVRpddmnoeP3+UEQec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=liorL59I; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3b78d13bf10so1034770f8f.1
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 07:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753801101; x=1754405901; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3SG72+1t7OUfNAakM7d1Bv7bt4/O0HHuGB6qfh+9EcM=;
        b=liorL59I/yZekMS/7MkQspbXc/dId+0ZL4haYsRXTE4pk3laNC/l+dq9qe2tZmrcfZ
         QrR4tG+/PB6PSV51Tanm5shAqVayQme2uKFuwrlFHDC86Bt/hoKfwfCAAjSX1tG/bN3z
         lYuGscKoe8JYqXqHbpDsOZvjb9bkr8f0wNMH3JuU8bybypofy7KErcTObqFj3RqF0EqC
         kzYSLe2iuuBXLgUCWMY6iDY8oL3ZtCIB4idFzbd9YG5EYnjd+UniaesEOmvvLhjL8Io6
         1OGU+d00LC+vrfjoHbRC21kZGM6QSw/HbJ4kkY2Vjniw9wxWsKdHlYNHY9BhdoF0sjWo
         4KNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753801101; x=1754405901;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3SG72+1t7OUfNAakM7d1Bv7bt4/O0HHuGB6qfh+9EcM=;
        b=eGVPlDFFGaLOJdX8exj2xfGzBxCgI4LALJ+dIJnf+0sdXEiQl6RIgd+H8PYT79vovS
         8R4tHCSNnzrxGi3TNpXb8CNdWPcpuGjYzQxYEh1O8EktuXbBd5PaHwivyb0UrL5EWrBX
         dGu/L/GduSyUvJ2WMK4O5/Uaox1A6Sxz6cate99RpP3PZip9MMbwXWp6fk4yO2JGcAfV
         cS5/yosv4w+S1s8wlzsc5Ae694M40+NEQqVxzrtoJ6JRIr09uZUDU6OPyjGX15FtNnTW
         JonNg9GBQ0yMXW8PTuvN4M1obUa/f11CA0GY1HMj1jguIPj7It6QB31ClAcDdnZ8cNul
         4oEg==
X-Forwarded-Encrypted: i=1; AJvYcCWdScjLmW5UqifWe7oA1v+ZeoVoHmU9kG3aefBbTo/InJLjFcwWhVZcdF0A+YEGrQse3ESGHwH1/IXB@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5RG9jx74z2DkI1KYPLxt3nFwJAtkN1oTCLtoEj3DF/iU1VnD1
	IC5O9X6j1CsOQdWDI+V4LjPz68PI1hW8uhsGgqivaYugGLk6Cynt1J6/6KDV0YM7zHzt4qFkZED
	vv78K
X-Gm-Gg: ASbGncsujj0Z/C54OCT/plxscEcEA/ZewJays4vgVuqzk3z4af+O8O1FHY3nbFkK990
	KSWB7ft0G0lsavlTmyq7GzVseZ6DWt93La2Fl/a/NwoQEyxQ/RSbgtBqS25727jaKOV0cEPzoTW
	yTJx1NSDaCKpRqrBrF2ZJkuNScOPMsxDtQCntI/dcUy6fS7u+JJ15baOl8Ry0xDtgsbsUcXNuk/
	lEWQcFX9mc7eGYf7yeTxuDbOxPIG240tGO1f2ae51QyPtUeShQGwU9bUwf/d1V2rdxzclDMEB+d
	qPvZY3uEJrlR6Dph9Wm6TaCetcXqTQVXuR3v+lmtvm4A/uL6xKxVg9kkC63o3n85Gp7SthxgVGg
	T++ObV3QqP3T1r3om9wz6Nd7mq8vO4TqN9UJXGKX1Vj4=
X-Google-Smtp-Source: AGHT+IGvLb6PF+iuDs4axF9ZaBfC5kZF3UzJPyMeyWZMnRRHfA9P4AmXhgZ7gteDJTRvpSeyBjgLLw==
X-Received: by 2002:a5d:64c3:0:b0:3a5:298a:3207 with SMTP id ffacd0b85a97d-3b77678d462mr11828738f8f.48.1753801100760;
        Tue, 29 Jul 2025 07:58:20 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458705bcbb7sm210294075e9.18.2025.07.29.07.58.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jul 2025 07:58:20 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/2] arm64: dts: qcom: sm8[56]50: flatten the primary usb
 controller node
Date: Tue, 29 Jul 2025 16:58:16 +0200
Message-Id: <20250729-topic-sm8x50-usb-flatten-v1-0-4be74a629136@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIjhiGgC/x3MywqEMAxA0V+RrCcQK/UxvzK48JFqQKs0VQTx3
 y2zPIt7b1AOwgrf7IbAp6hsPiH/ZDDMnZ8YZUwGQ8ZSZRqM2y4D6lpflvDQHt3SxcgeiakgZ1x
 RWoKU74GdXP/1r32eF686tDlqAAAA
X-Change-ID: 20250729-topic-sm8x50-usb-flatten-0e030f2f3650
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=876;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=5DLEwBkxqt6s+6OaagrlrYbcvqyOtrkxlazUFASdP28=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoiOGKCnvV+b8/ScA2TuTuqz6WgSD4xwnr4sqRLi16
 jr4gEVWJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaIjhigAKCRB33NvayMhJ0XuFEA
 CUdERSi0IZc/Fo7S1+yg1Z15DnPkEHo22YQQio+yvyhX8GtcVGoTJEouMTGao16vm63qOqjzJs/zOV
 YdSkg6Xp1/L/zt29jRmkB0F/ICYpUNeKSJSY4ObwislY385Qwcx4eVoLQ5gc90Rp8f5rvflhmjsIUZ
 lC5gEykyF6WV/boOdwI+Nrz91UkN1zhfH3/g+xXm71OMp5EOen4q7F43xfR/251R37Gu18aFlVJRk4
 UAncIgT6jrejnetI+HQIfK4dNbo11izg4qxiq+tnTCbyRg9lqGVQfNBuElqGGh6ISVgk0HedEvRhWt
 6TLbjx01iBiZzYApNSPRiX7Q3OwUWHZhpvnlwhrrpUH4l78hJk9olwj/yyF/L4KVV5BwQ+LTJtAPD6
 SQ7WZxbu4PG1OBzVeghVgHhic8sWwUcK+xD5/hC72+8ltAWDy2vPTuuNaPnAdm22hsohMBkSVkvybQ
 9oBGp2F3C2jVcdgq7Vu/0Kj+ma7d11390XvbFXP8wBBhCbOoBg4uK3493rrAKIiTrVFNk0/iqM5bun
 cgSMuC8Mv4m+xviJPsljYejkeqMqVW2JK5kYRZ18PNGCGph4yiBRcG7YnVHX426ehb7Rk2ZImbTNjW
 RdwuJJI5QiwH+O8WZHZ5U77NEkLKPR/TGPxo5lpkgXk+8YI6bLVOBoAb/K9Q==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Flatten USB Controller node on SM8550 & SM8650 to move away from legacy USB
Qualcomm glue driver and make use of new one.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Neil Armstrong (2):
      arm64: dts: qcom: sm8550: Flatten the USB nodes
      arm64: dts: qcom: sm8650: Flatten the USB nodes

 arch/arm64/boot/dts/qcom/sm8550.dtsi    | 84 ++++++++++++++++----------------
 arch/arm64/boot/dts/qcom/sm8650-hdk.dts |  6 +--
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts |  6 +--
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts |  6 +--
 arch/arm64/boot/dts/qcom/sm8650.dtsi    | 86 +++++++++++++++------------------
 5 files changed, 88 insertions(+), 100 deletions(-)
---
base-commit: 54efec8782214652b331c50646013f8526570e8d
change-id: 20250729-topic-sm8x50-usb-flatten-0e030f2f3650

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>



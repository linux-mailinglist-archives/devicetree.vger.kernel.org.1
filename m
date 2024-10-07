Return-Path: <devicetree+bounces-108750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8BC993B45
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 01:37:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5FE011F248C3
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 23:37:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB3AA190055;
	Mon,  7 Oct 2024 23:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ywIc46sL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2491E18C00D
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 23:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728344229; cv=none; b=Pet78daHAhOvYgORYKddxVt+qKM1qaL/IqWBngFMZjVvR8Y/CpO+5UczB9W3O/yGqsxW34hCoMHesOssjeKLTVV2YXzgTmtcPRaNGtETs8Rn6zBJmGwMnUYIljPWe95Oi39v9Cj7dNUxZ3T6e2P6k5CgWWoFe3ihAuKYDwR2WyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728344229; c=relaxed/simple;
	bh=o1k0wd1xsMtQeGmlnJ4QiwL63SP7QPaIFJFOs+lOBAA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ST1oKQ55uHeDsbWxvE5It2cuW9gs/Z/BZmigVUy757wOfV40nRWFYD4oCX+5hybg5EGeJtj99IDnSXpsDRs+IizfoufW150voMoX2OB9/EmA7T7U+yTPmSnyKzBn2hlRbOqOqneijqSqu2NxvpwxlBAtLhlWURGX685kVA09tk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ywIc46sL; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5398a26b64fso4887104e87.3
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 16:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728344225; x=1728949025; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1fSRcSeGkRbRggdwy/ysIZu2Q9Wo+gAgEeX3VDGQ66A=;
        b=ywIc46sLoCcTVSaGer6KLoZkc5ezJGGYQshV3zkYGAzBKHYuy3ro2yfPDma8MrM3NO
         P5WbwgZcaqpBiQX1WKxVQ7ej6okoebKqp8L/DU2lNlWFPFODvLxYGHFcY3GEGucIQu1W
         ly6job15zPGL/v32onQcAXVO5JkO6YdD34IXbXM8gHHKJBWJ4I/uf4MHmDQKMKnFATcg
         esELc/9yUbbUahPxo727npkahfhUsLCnEqUwZx+EyE4pJy8DHhcz7gWGpieZIg84kv6P
         0uOVv44zaxRNNypq92daaNM3AoXhaUZ25/yju4DRELqnhnES8p1b9plb5QEQwhsypC5w
         RGvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728344225; x=1728949025;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1fSRcSeGkRbRggdwy/ysIZu2Q9Wo+gAgEeX3VDGQ66A=;
        b=cKXCJqhSmA23IPZr4OGJJlJvuP7YljhQuHuRNHISzjTP6vegffvO1zXeMVLaz1u5zm
         SJ5aWPWYKFNvGJu3nQSwFyqbAk9BB72e5PgnekdDDWBPn0BWvzn2UiTJKkDU/DNwiu3F
         P274jp1YWWiQL1FAkzfZu5KjonyE7tCrD5eWtSYSgk3lbuPVestK8libyLcrV2j9Nomb
         iKWKFqb9upzGIkvcBrB4f6k1KTv6xsHbhsmG7wiU6Op7nUeuj3U8a/+y8kraZf9hPZ5S
         Mp0YA6QMeesPkuWWGqCSwl6SlFEuRKFO/425RP5bOuSllxx3cMCmJY6lgWLSK3o6QlmE
         hC4g==
X-Forwarded-Encrypted: i=1; AJvYcCULnzQp/S9Fc2k75rmDWTkT2yoH7v5rc8DB868P/rKp78IevrxdifPn6PZP8FoT7ngQNpJomLBPvs4j@vger.kernel.org
X-Gm-Message-State: AOJu0YxwpR9+5rBg9yB2p74D9ITwDdJb3DFwDK6G/i9ULpmY/ODG5ucg
	N4+nLZ/lZ9+BCTlANFKFDKCkz5K3xR57i8BZuyFIsN/jMG1BnOJIx/2/+Iuhkdg=
X-Google-Smtp-Source: AGHT+IEKBnRIH5K44aS2nOdoaBpOvH88lb5K3oEWjkImbVEnflhPxXCkueBLYqrqC6/zh6K6cy9G1g==
X-Received: by 2002:a05:6512:114c:b0:533:4477:28a2 with SMTP id 2adb3069b0e04-539ab8780damr7036857e87.16.1728344225277;
        Mon, 07 Oct 2024 16:37:05 -0700 (PDT)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539afec1300sm1002256e87.17.2024.10.07.16.37.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2024 16:37:03 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 0/2] arm64: dts: qcom: sm8[56]50: correct MDSS
 interconnects
Date: Tue, 08 Oct 2024 02:36:58 +0300
Message-Id: <20241008-fix-sm8x50-mdp-icc-v1-0-77ffd361b8de@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJpwBGcC/x2MywqAIBAAfyX23MKqFdKvRAfRrfbQA4UQxH9PO
 g7MTIHEUTjB3BWI/EqS+2qg+g784a6dUUJj0KQHRTThJhnTafNIeIYHxXtUxrotEJM1Dlr4RG7
 WP13WWj87e/9iZAAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Rob Clark <robdclark@gmail.com>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, freedreno@lists.freedesktop.org, 
 stable@kernel.org
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=961;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=o1k0wd1xsMtQeGmlnJ4QiwL63SP7QPaIFJFOs+lOBAA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnBHCe/xZ7GoUUEaJ/JKl6meVKRt15m1nEqLN9a
 bj4GdKb5+OJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZwRwngAKCRCLPIo+Aiko
 1YkIB/9WbnPRqwRo0MjW4kelSSSk1Wuay9knh6ZTdgMzkthGbE11d8dPHDo2WXt4H3W7LWG8G5k
 H4urwAcS5IDqOEM7sYe3YFAe1bQrVbvKaHCsDmhPFBp5eAKCoGYHS4iKZEY2ROVQ5X8Hafa7hDz
 IWA13An17oOcwZOek7Ejo4v4keG11f6hXB9ZQGeNj8q/2Dt/S36MrXLZ8H/Vdl+7+q/nlkpOKjv
 ba61V3tL0DKIi2Cfn8M76FE4/Rsfg7nOTSOggdPhqJTxaN3jNzq1WQFa8IEcGuf9Sh/I6la4f24
 I43j2ZGs4Q73fFlX4pi2audZOoyq7IOlQs17mKZ4dlJDsp78
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Both SM8550 and SM8650 misuse mdp1-mem interconnect path for the
LLCC->EBI path, while it should only be used for the MDP->EBI paths.

This kind of misuse can result in bandwidth underflows, possibly
degradating picture quality as the required memory bandwidth is divided
between all mdpN-mem paths (and LLCC-EBI should not be a part of such
division).

Drop mdp1-mem paths and use MDP-EBI path directly.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Dmitry Baryshkov (2):
      arm64: dts: qcom: sm8550: correct MDSS interconnects
      arm64: dts: qcom: sm8650: correct MDSS interconnects

 arch/arm64/boot/dts/qcom/sm8550.dtsi | 5 ++---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 5 +----
 2 files changed, 3 insertions(+), 7 deletions(-)
---
base-commit: 58ca61c1a866bfdaa5e19fb19a2416764f847d75
change-id: 20241006-fix-sm8x50-mdp-icc-138afd0e083a

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>



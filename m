Return-Path: <devicetree+bounces-153528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A409A4CED8
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 23:55:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD4403A74A2
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 22:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FC7023BFA6;
	Mon,  3 Mar 2025 22:55:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SQCu7DmU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8005D23A9AA
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 22:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741042537; cv=none; b=Pvlmr/hMkKjiRpxUe345Xylgs9ZAWvTJl4oU2OlLSf4bPDIntm/4f9FjTVtuQAJny/xvoJSw1gC3TaMLiz+l+UHHPVTBZkMytCKS05Qltr4ZM0Dr33QKhcVcDAvqW4ocqW1X0atCDDmP78WX8LlGQ42F+norwVvnO1SAWTUGkQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741042537; c=relaxed/simple;
	bh=cFE6qDwi1fJylD2s+lQiGN8Qez/xInkZpe/71LGwZvg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YqiONVfNRYvlDliwd7S1+QtHvOKfEvU4OkkZLrbn43NCNe3nhA3GXQVqvmlxV1Or8lze5AiH86oPZxvXRY8OMdpG9NC8PBjG8aq3vnwMVhMAWuL6Xh9LoRK5U5vS2uDfh2WtPA51mgdTgjg+K4h2pXiu7NjZtvqIsah0i9Q7yac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SQCu7DmU; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-30bac96af3eso3555661fa.0
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 14:55:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741042533; x=1741647333; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=msppfnamUUGgJpFy91ELuhvjtms4xYNjAzSexKS9iEM=;
        b=SQCu7DmUyoW66aZC0hQmREmKph5ZHXoiCbBagqpaGQ2uDwwoS2RjR2iYEfnuXqKOaa
         D4oiRbo5LKedtT+1VHCeh2u0PKxpFOxJ50IFj7mRfidSsEM1XpS4ABqgRqgNImmyzy8F
         +/Lt2Yq6Z67tK1OtY8bUhtCVBLx0an4dn2lB+uzVcvIjIhkROQXc+KjhIopPRsDA0VSL
         fcBkoBt2Ib+ieCUAk6h4lLFY8Ywhoqy1bK3QYqWCCx4nSHZPDwtS9Xe41Gw/2J229f8w
         6+DuNHCjlrJqt/peFDYm/8Q6O8JJNpsou+ihTjBWJ/N2KX23ekmu3fP+oBX4T3sY2s2l
         NIwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741042533; x=1741647333;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=msppfnamUUGgJpFy91ELuhvjtms4xYNjAzSexKS9iEM=;
        b=nD5PtuOWFE63q801/edclMICoMMCqZ2TkST2VIop2Oz/bEivrKlPib3VPXjLAhFZl5
         CqgjbIg31J40dHi0Rvj9Qf3dXAInAPGYb7wb0JUE0isfwdr+kmAtfGzSL+SxScfuBh3i
         2kLjeWsj/bSpDCGmbaeGP/XOv9yN3QB8dEH+95y+0w+WYDQB6wscDk/aUXlYs3ipmAMU
         cboIEg77jknJNt7hD1qNReTzxbqmw2SCsvRdFChhjgNEe1RVyVmBLLNbJdK12hm91UzY
         bBN18NezlmF0KOzXjdr9hvwEzvPgJW+HGwgpPqDlvjyvTVi8hzfjXXCnuOqQpfS6ZkFy
         ZchA==
X-Forwarded-Encrypted: i=1; AJvYcCXFaLmk8Pm5dzPhPqAhCmVNMfAnJRUWgNSrn3BEmAg3HOax66yEcIHy6Xdzb0Tg8EQMpsmxQ1Ge3EL2@vger.kernel.org
X-Gm-Message-State: AOJu0Yymt6FzlmdMyFJEUVEX9Bt5wCFuBH2i/ceBMBKIhUq0DAfPGJbF
	3xc7CJ25/Yyw6SVagNBDtMXtiFi7MeD3y9eVnJbPWnyTdO+7YEYr7Zt0VhjZlls=
X-Gm-Gg: ASbGnctP6J90Gqa2rILXfWeda8EKqMBBlOcYcpahcZPs9cmBd9mrL26CN6li2B3ZAnA
	5ogrOuJkkkok1xZyo99CuTgwppizS1tHcGCAxWVcAMItNrhxxPppHiBIrPmmkNBLrwZrIh/BKlf
	nyVtzGRmol8rpYg9lz32S2SUxF9s8eld12XrsXE+ov/EdujHEwn5gSAAXdk93YVGA3O6LCEpv3F
	gsus6kngZzUEev/URrxfT+P25T1Y40Ns6Mc2mzDuQwafI+GYTb5nsaVe+1mzDZtjg8mm1QAOJOQ
	6hWji2Xs5+6mHJVG4bmRTvSFk8y0sV4CeTNHIK62UATTYrvEVTxu1ILG9azJXeipqWfmbtqJ9QN
	a7povKeW4KnCOEqSBqyDjXvnPQVSQOK+JMQ==
X-Google-Smtp-Source: AGHT+IFIz9OgAP1Nf0cMNCjQ5eIctZ65Z5mYLBJRd33pRm/cFHeBwdUYbtthRjYfB2mhF2ZBPgxgFA==
X-Received: by 2002:a05:6512:b0a:b0:545:bda:f22 with SMTP id 2adb3069b0e04-54975fc58aamr78263e87.8.1741042533524;
        Mon, 03 Mar 2025 14:55:33 -0800 (PST)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5495f630cb5sm662059e87.212.2025.03.03.14.55.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Mar 2025 14:55:32 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Taniya Das <quic_tdas@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: [PATCH 0/2] arm64: dts: qcom: sm8550: camcc: Manage MMCX and MXC
Date: Tue,  4 Mar 2025 00:55:19 +0200
Message-ID: <20250303225521.1780611-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

It was discovered that on SM8550 platform Camera Clock controller shall
manage MMCX and MXC power domains, otherwise MMIO access to CCI or CAMSS
breaks the execution, the problem has been discussed with Jagadeesh at
https://lore.kernel.org/all/a5540676-9402-45c4-b647-02fdc2b92233@quicinc.com/

Since 'power-domains' property becomes generalized, Rob asked to remove
its description, which is done in the first patch of the series, see
https://lore.kernel.org/all/20240927224833.GA159707-robh@kernel.org/

Vladimir Zapolskiy (2):
  dt-bindings: clock: qcom: sm8450-camcc: Allow to specify two power domains
  arm64: dts: qcom: sm8550: Additionally manage MXC power domain in camcc

 .../devicetree/bindings/clock/qcom,sm8450-camcc.yaml          | 4 +---
 arch/arm64/boot/dts/qcom/sm8550.dtsi                          | 3 ++-
 2 files changed, 3 insertions(+), 4 deletions(-)

-- 
2.43.0



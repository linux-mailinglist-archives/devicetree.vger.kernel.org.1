Return-Path: <devicetree+bounces-208305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C2DB31FF9
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 18:03:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B04017E5A7
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:57:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61AE823F42D;
	Fri, 22 Aug 2025 15:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CoUO/Jc8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C130238C3A
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 15:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755878221; cv=none; b=rtbaK0schzJoJ6VJ9Tc29Z+c63LHVabKd48jXKeLJ6mJ7lbMuaHnifDUsXBvjhl2TjoVV3UcHZk6Ugot021liER2C30q38KvDAb43MrhJYoSZL2G3FjTmCM15QT8lTIHwq+yiQoWEsibatp6qmUOrO3oEXq3l7ee4Zn7JjpXHMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755878221; c=relaxed/simple;
	bh=w1VZqVZB4tsSvRFPjcFON1TkRO+UIqwQJ3G42TS9+0c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Azn0kHPTPptR90L5SVPrxBzwcPKOm7sb/LFWR/rdvVsBCMGZ4mtQk8WhKMHgw1O/Uri8og4SqH7Fg0zNW2z8QXg4i7dhpgWxlE0YgB6SCAnxEmQ8BennHON/f3wjqcI2Wvf068nqaIzXI4V0iuztRz1OH7HAA+JwOr+L6TzA6SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CoUO/Jc8; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3b9d41c1963so1251490f8f.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 08:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755878218; x=1756483018; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GLNjFnxfd0fsnNGaZyEi99xhqnfoLRLL41xepcgfytM=;
        b=CoUO/Jc8folbxPDMqndYMBBsUqDazOXFURFeQY4/z/Q2FkHMxUv0h7REc53P4/OZzl
         afOUt6No/BjVggD6fO/vmZ3cVIcokxemcgtohLYvIJjFAz409ulOidEmz3hS5pSU28Rq
         2Bzljg1VZdXVEnOeWhBEel41uFMi+66zhNHeDZtmHIfaptF19KHes4GxLcE78gDkKf+Y
         nt7VSO2eGMyCx3IoJ56EvD8cLtmUTFtuvR1aKknToIIcQBJGFvJpCSiGz3P5YDOphcSw
         8p8xKTwHj29fQ5a4L8AjVNfSH9IU6Uh16BzVS/SZjcD+KML9ZkGUycv+HbqP5jDWFCeE
         nvpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755878218; x=1756483018;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GLNjFnxfd0fsnNGaZyEi99xhqnfoLRLL41xepcgfytM=;
        b=wgJQNY4KSA9gybFpzN6wOlUZ7tmqjUO3Ra/cQEoNE/3ed4FB+9AgatGXh7kv46DS+m
         3QeM5vviy0oK7Jcp+BeZiPOGNUzISDmAI4wWiaQWLoe1rTP1EhCIciJ/xUgVRvap8s2P
         G7GVbfNI7A0Bq+2xyRSwol2K6lVVDTP7hvvNHJFQZU6RO6BH5aC+rJjdOig0dqXFEANt
         f5+ZqFg/wQmytYQqtPxz2jh8D5lLeY8qBOWBE8EeWvspdc3AumQglitTAEAxv1DFfaFX
         fP85lKfwrFIwwptsyTf2QYjsk+gup1KvS644Q++6GXPWbTD6YupgUWdZB3Tu+oQjQchQ
         j6xw==
X-Forwarded-Encrypted: i=1; AJvYcCWZx2VzJPhhRSjvPeAHW4sPbhcdJDdx7BAL5EUm/lZ+GCPa6wEoncGZh4t2XLU/eTM8s/PTlTIyJiDx@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1FzuhP1gbZCxV37vrAywqsLLvbPc5fQCaDzvwa7uoMHM5rvL9
	CEU4Gj1Poi5LXn9an/2kBB4MeajegiyL+44kRVQRLPkhpEUZqVfSJrFGq58HmnAtCPs=
X-Gm-Gg: ASbGncsrtA/19l8fQIQ+Sy3aiM5QCJVwiLfwJKRBtxBgsgFM2RdzLZ927z3rCNVlIRr
	4fzHfkJBEaHVJmQKsMcToIjEfJsBuo1PMv3oMR8XRt+HK5RPR6eJxdMEs4mEqvnV7KPmWyuxbVv
	59iedIzAFpUuQK1cgXwrHPQaBPsFmwhlrceWaKMc5SYdnV9n9pAZzw736EPre2kQ3owOl4ZjD76
	6c7NrYNU1/AZFeZDZlRyqYJLWvjSnyQo+WJSWEmPYhBfKQk6l55+76m+9Z8h57xqs+yRFW+agKn
	mOxLwPvegkfcVWUSbBd7/4LPJwFRlDEH+8YkbfPxpIAZ7ot1JwyZALsoAYgX0vgUz62Mfzzqgyb
	xGH7PaX9zLrff2LBVD+7nBHsjrYlv1qf0SEZHyJ71e1zYdOcZmi5Rpg==
X-Google-Smtp-Source: AGHT+IEmFm4+ceTHHTKE+fyS80PNvEs2hq8lv91bfxzNojpH1C6IQ9irqwAiOQCJFolcVtJxlRJB1A==
X-Received: by 2002:a05:6000:2313:b0:3c3:c280:d43b with SMTP id ffacd0b85a97d-3c5dcff5d74mr2404818f8f.56.1755878217619;
        Fri, 22 Aug 2025 08:56:57 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c3c89cd4d4sm10095765f8f.42.2025.08.22.08.56.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 08:56:57 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Aug 2025 17:56:49 +0200
Subject: [PATCH v3 1/9] arm64: dts: qcom: sm8550: allow mode-switch events
 to reach the QMP Combo PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-topic-x1e80100-4lanes-v3-1-5363acad9e32@linaro.org>
References: <20250822-topic-x1e80100-4lanes-v3-0-5363acad9e32@linaro.org>
In-Reply-To: <20250822-topic-x1e80100-4lanes-v3-0-5363acad9e32@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=724;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=w1VZqVZB4tsSvRFPjcFON1TkRO+UIqwQJ3G42TS9+0c=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoqJNEHPXOuGvx5JN8cuE1YtPOfX+b700koEJW/nL4
 4F8U6g2JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKiTRAAKCRB33NvayMhJ0WOCD/
 9YwkM/T0OKDcnApMF1AErStMU2LfD1vvp5oI0T+0orIOBrCBOFuBy5mMduiNZQTWCjyt+2Kzwtq+wV
 ApZUHUx8Cs5p/NGRQjgwvf6Mm0AnlVmTnO54UXwckwgXgarNoREEynzqPUCgsyZ6b7mncthQC5JaN6
 QbpxjLj2V0zdp/Y+/Sc0x7X8p+SMX6nm7dPs0M6GJocruffAYToBHT1dmbuKmmxThPNZJ7Q89Eve0B
 jWX5oGENeV1KK2BbfjQkIdsWy8gh31LfDT9oZi8Q0KjiSsW+AAbpW5JarVc//fBIZeoYQ1AEKUw99F
 HS5cTzSitIo2PufXW1ChuK9JvLCkQC5yDJNOt7jOtNY+waoFteJtdYPKzPZSiAN/1sjOyIg4dn0TQN
 pXj0CLgrT0mvJd4ZQNLbg1hYmSnjz+2QL1mXeGbfS3BYg+HeQ2jP9XNYP5DFVAVM8/E0FzQKCks5Ev
 h0GsMWqUnAJReNVJT+Py6cCKnKeVrqugiu5AGAfTvwFk27LEoAjrfmQ7lgkOr1wf1iCgjLx3NjWoNE
 RWtwbW+96VPiCNjS2oskqdV+D9MUmys4yDWgk+Y108BbT3jprloIgBS2LO/bKk8p6Kz5rA4L7H+xbI
 iGM5VQ4FUS95QwHk2m/UhNsqE2a+ceHDfjrLUE5h8yPc3fxOh8urJ++FCNAg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Allow mode-switch events to reach the QMP Combo PHY to support
setting the QMP Combo PHY in DP 4Lanes Altmode.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 38d139d1dd4a994287c03d064ca01d59a11ac771..0409ae7517f239171a89bc0ba7bb47bc9e7fedaf 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -4051,6 +4051,7 @@ usb_dp_qmpphy: phy@88e8000 {
 			#clock-cells = <1>;
 			#phy-cells = <1>;
 
+			mode-switch;
 			orientation-switch;
 
 			status = "disabled";

-- 
2.34.1



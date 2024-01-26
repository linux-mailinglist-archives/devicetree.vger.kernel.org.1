Return-Path: <devicetree+bounces-35517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D7783D9DC
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 13:02:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B9E3281A7D
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 12:01:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDEC818E25;
	Fri, 26 Jan 2024 12:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PMljS02p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653511802A
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 12:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706270512; cv=none; b=gUvn+sVEdyCVYzDuZ720rvAX8MMrEZthcMIIjpSX1vobG1sY5VG3I4AJP2SdqhJVGid9uA1itEwXBGezFz2gaz6fRSj5RGknvhJqK/IdKuq56nA/71Dnsjq1oURpZyIvU1jUNZV1yXxCXpxChGPiyjmYNTUMgvxF5BJkV4uNvBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706270512; c=relaxed/simple;
	bh=kShe0DR8dUkgLXM5V6sGEm+PEs6rP3fBIoBIPjAcbZg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UqCJyqQF8oi87f1stOmeCpHhKFnebLCUJ4MV21YNgbmJiAqPdvIsT1LlMRGrz5KE0zyKGoEJVrUZW2Xymz75q9WzIVq++U9Th0JS0JKqncPu538jxZN9FY3p7aXUHB0CG66Fen6V5gEkwZ7K2br1UORk8GxvoqqYa2OWlqXIP64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PMljS02p; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-337b8da1f49so380609f8f.0
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 04:01:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706270508; x=1706875308; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J+Pi2YmSmh0tvF2dcIDzb/GRIdLqeCZP6pnn7Oxmq98=;
        b=PMljS02prBnMtZudnzEXUH0bZR0Bb7Gwu/CA8vZM/YNcavFFe9cFGFAiViUigrHwZP
         r2xZBTy7FZ3vbwrr5wsSr8y03kiiQmaH1nPlaPJDNCJPM7/sq0+Jct0LuUbA0Tx+zNy3
         kncPfMcBvUNVj80vSDE8ZxTQLNZumIvhrAAx2ceelj8PEJHTmnB/9wElsh/4MABSF4TU
         RoxVGSZjOo6kt+jjbaD675FnZaND9IRRx7nYnR6bvz+fXhulkydH14CFdmCERbCBxmKI
         UFD81Dsrh4sOYoBVma/ikE1BH0Lz/PW7lmKzL05+0K3FPO1BmBP2k9WXXH4dKR19P2MX
         RCSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706270508; x=1706875308;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J+Pi2YmSmh0tvF2dcIDzb/GRIdLqeCZP6pnn7Oxmq98=;
        b=fVv4UJ3nhqHd09bvBqS+VAOXsH7H57RKS3TQTueEGeylWtoZdGWgw3RGuDi0KMItkc
         4soMw2lIEjm3Y7y9H8MM+I4xiJZ97sl1wGUMqs2Bf8RFhvxpH/fi76wgwxzkiReGvKoT
         X/LORWWkiEDmwvoEi52s+ln13etyKvpwhenvyPnjHqLozI4Wc/rGm23tGnnEMuE5frtV
         Oa+3iRpIQpR09ma2UpLiE8CxnV71cE/F6C9H/l6hpHrrl0AzP6OSmkNmL1gJkOt3K/Gm
         mG0Mc4EfcPwVxEGw5KoLurm8EwDV8ZM/5LgDdd9rXnCJf0fOCFF/KVPvROQdZk1N656s
         Hkow==
X-Gm-Message-State: AOJu0Yw0uWicW6mAzhW5tVFfYJQwuKU0iRO23g8ui/ex4Bq20rOEIrXJ
	JbalR8dLp/DcvLI7YUwsvGUfxe2lw1Jg1mV0GjnbHXHfPnQTOQCxJGH4rqRND3Q=
X-Google-Smtp-Source: AGHT+IEmxXOASS0axvOu7+6RVFmpWTwW27YnOeCzd/HHx1xonmd2dr/AtGzOQl4fXJuA7S8D2VezUA==
X-Received: by 2002:a5d:6e87:0:b0:337:6d95:da5d with SMTP id k7-20020a5d6e87000000b003376d95da5dmr647325wrz.90.1706270508701;
        Fri, 26 Jan 2024 04:01:48 -0800 (PST)
Received: from krzk-bin.. ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id ch21-20020a170906c2d500b00a317346a353sm554207ejb.123.2024.01.26.04.01.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 04:01:48 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com,
	peter.griffin@linaro.org,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-kernel@vger.kernel.org,
	kernel-team@android.com,
	tudor.ambarus@linaro.org,
	willmcvicker@google.com,
	daniel.lezcano@linaro.org,
	tglx@linutronix.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: samsung: exynos-sysreg: gs101-peric0 requires a clock
Date: Fri, 26 Jan 2024 13:01:45 +0100
Message-Id: <170627049274.55566.6787133378915980124.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240126115517.1751971-1-andre.draszik@linaro.org>
References: <20240126115517.1751971-1-andre.draszik@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 26 Jan 2024 11:55:16 +0000, André Draszik wrote:
> ... otherwise it won't be accessible.
> 
> Update the schema to make this obvious.
> 
> 

Applied, thanks!

[1/2] dt-bindings: samsung: exynos-sysreg: gs101-peric0 requires a clock
      https://git.kernel.org/krzk/linux/c/38c9ce091a4bd0ff272438131424e98ea0e3906d
[2/2] arm64: dts: exynos: gs101: sysreg_peric0 needs a clock
      https://git.kernel.org/krzk/linux/c/ca487bc2776e6b2465fcddb0a0fc121c0ff7b118

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


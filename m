Return-Path: <devicetree+bounces-153466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A410A4CA3D
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 18:50:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F265617C4D6
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 17:39:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B513E24FC04;
	Mon,  3 Mar 2025 17:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G0KstmVA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D5B24EF6B
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 17:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741023065; cv=none; b=U7IukNwC+6YSizNGf2uoHinpywrQcw76rFuEUECqgcnndqx3uVzKiOnPyrhII7U/Z+ariV8axP1MV7DNOUvC4/tIV6jlvtUMphQmIi4lsekk0GJaxPr3XAfN4jj5LAVV2o3jbv88Fz7rssLyxRpVnXYeEo5hkJxSNyuUcRA9kjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741023065; c=relaxed/simple;
	bh=EwUNeYrjXw4Abxl4Ekempi49OOEBziqDKshlyOT2j2Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=de9EGqg2Tz5Ku8OuV2rwvKk3WQIqDZ3VT5Lw/q4WCNLQgTmIfZOPBdXHP6bAQvVpBgjA52zAgU7jYBgcRGwqHb0+BFXpVGUI07cuKc2jPRzaX8HBFbzhWxZ7YOAE0EFYVR4Pu8N6P2zzkms1l0XzkPu/MvXxMM9aPjO4DMJqy80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=G0KstmVA; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5e535d16180so2127898a12.1
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 09:31:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741023062; x=1741627862; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7tn2H88qy5fJsuv2JITum7avWFZmr0OiLNZ9SxsUWXM=;
        b=G0KstmVAT1uQfwQA2OGbyrUwar2gw8eIrzzaL+AHm7pohGGHI+1kv6IWw7arrPfDXq
         hBfZXvYc6p4O+QOIxs5pGiTMKX7XvUhsRSdN7PRR92yNMzdL8/B2YyiBosgjRwRQTFb/
         mOzokQDIz9670FZzJtz6d8cIL5EFHoAp1kmbS+82DEirEeYb3ZjhSJgD99UwmOlmfiZe
         ELsTiY0Ytp1RXFQNoEmp8M9xKsJ2mu7yHRmgm1glygffkgogdxi1UHhajfoOUb+/ouJ6
         fTP9Qwjivo32xCT91bfHM4pDTW/wtPXmgr2z9CsmZAhZlXtMfCWws61duuTSZgyplc4l
         ec1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741023062; x=1741627862;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7tn2H88qy5fJsuv2JITum7avWFZmr0OiLNZ9SxsUWXM=;
        b=Nm2J4tbxcfdj37il8aGfuRkl0kt3TbsOhprBMgvQpxkJmxZcvnWnLdl7/Wmiil3e8j
         8vLIPAlPYXqrMQsoWh6drhP2tCZ7GDpuQBuTKNx/QnSefnTxK8KS5zTxwZZKLdFnruz+
         qFOcuyPmcc4REiz/pdLg9PSaGsVVqJNdoSZqdKoSrklWQDpkjklKxUHtz747SBILmmm0
         IusZ8GH8AgQqJJ9yCBLHxTq2hKeJlm+3X7zlN13uqsCneWIa/8mGXWqVrfrI/0W703Qv
         3woKwQ0BffO5U+ipytKy24s6qcjkwwHUa1rN8WdbR9NJ5P4dw3X5Sj4xGD3N2Q+wAhqc
         3fGg==
X-Forwarded-Encrypted: i=1; AJvYcCXN4OmfHUsangHXT8YBSKmdZGNVnhHI8fUgvpwV0rwLXNKe5xEdf7AsR+28KVLfX1VEy7gBc6rWCaw0@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+xrDWiE0y1awMssiXx67I3/sc/xcFSuX4RCU6s0GjjK8VHtiu
	szB5PF1TPebXGYtZirtQwUgSNFSFDJLp7OnYrQqsxtXEiRjtLPKo8MNAdp8Wx8s=
X-Gm-Gg: ASbGncvo1ni5DZCnCUUHa3HoicSP4/figeF7FjzOektzYu9xaaw5zfgcRq1gZfyTMru
	FvFlq/Rx4Zwb+Yt70HIuigTr92WirTodCNnx8wtkbAec4DwWR0IhXFZg9C1z39shmbH8E7/zyYq
	JMovAF5vrn71nVfRnpwaV2XH7BJMXqLmL5xB9kN6R4nRlTi2rHqO2Pqx9vozFaqlKkFa5JNi5m4
	iiWFEpYROEXl9ZXf8gJ1QA1fLSXsAaIZBKF/jcFv7SJCPPARyc9L7SqcUoz4+pMIICTUS/493DX
	Bebnxm3x553nOOaswSrsH1OBnnNqSXMMfovmvR9ebq0=
X-Google-Smtp-Source: AGHT+IEDCHbXJFeVr35xZXSASXjjlWalAgEpW0iSBToGQqWlsuonpEUcEGYcVr4M4CEdy1EY0ZamnA==
X-Received: by 2002:a05:6402:42c8:b0:5df:25e8:26d2 with SMTP id 4fb4d7f45d1cf-5e4d6ac58fdmr34237245a12.5.1741023062067;
        Mon, 03 Mar 2025 09:31:02 -0800 (PST)
Received: from [127.0.1.1] ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e4c3b6d26esm7085355a12.20.2025.03.03.09.30.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Mar 2025 09:31:00 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Marek Vasut <marex@denx.de>, 
 Stephen Boyd <sboyd@kernel.org>, Shengjiu Wang <shengjiu.wang@nxp.com>, 
 Adam Ford <aford173@gmail.com>, 
 Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>, 
 linux-clk@vger.kernel.org, imx@lists.linux.dev, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250226164513.33822-1-laurentiumihalcea111@gmail.com>
References: <20250226164513.33822-1-laurentiumihalcea111@gmail.com>
Subject: Re: [PATCH v3 0/4] clk: imx8mp: fix parents of AUDIOMIX
 DSP/OCRAM_A
Message-Id: <174102305899.2928950.8837177294161174759.b4-ty@linaro.org>
Date: Mon, 03 Mar 2025 19:30:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-dedf8


On Wed, 26 Feb 2025 11:45:09 -0500, Laurentiu Mihalcea wrote:
> Correct the parent of the AUDIOMIX DSP and OCRAM_A clock gates by setting
> it to AUDIO_AXI_CLK_ROOT, instead of AUDIO_AHB_CLK_ROOT. Additionally, set
> the frequency of AUDIO_AXI_CLK_ROOT to 800MHz instead of the current
> 400MHz.
> 

Applied, thanks!

[1/4] dt-bindings: clock: imx8mp: add axi clock
      commit: 2471a101938b0d1835b1983df08daeb98eef1205
[2/4] clk: clk-imx8mp-audiomix: fix dsp/ocram_a clock parents
      commit: 91be7d27099dedf813b80702e4ca117d1fb38ce6
[3/4] arm64: dts: imx8mp: add AUDIO_AXI_CLK_ROOT to AUDIOMIX block
      (no commit info)
[4/4] arm64: dts: imx8mp: change AUDIO_AXI_CLK_ROOT freq. to 800MHz
      (no commit info)

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>



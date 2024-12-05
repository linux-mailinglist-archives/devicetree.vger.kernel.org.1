Return-Path: <devicetree+bounces-127329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B099E52B9
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 11:44:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C39FB284205
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 10:44:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0C55206F1E;
	Thu,  5 Dec 2024 10:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M79Uz546"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD7CF1D90B1
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 10:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733395331; cv=none; b=s/E7/aaQKCKj33NE+g+qXEukTrjfO7EzccKUBpamrZ7XnOb/WinLEij2UahKFtTyQIJJqVDm7OoAuHDCntygsm4bMNC8GBwCQ0vpeDbC40nPXfxgM41uPxqO6HQWd0/XwO98D7n9/VP2uzy5kuQOnpwd4t5Rj3sLLRQ9OVhQojg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733395331; c=relaxed/simple;
	bh=InyyJ5b3p+cMV6PwTAk19hDK9hyyw6Af0BJu9ci/YHs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=DFMPx965CT/HYkoEo1dW+8iCsLvjWY2/EMb4XYfg+mc6Z2d7e/Q4QwOMPPBFIs0QAsuWzKYO8TK8Iq4GuvVJelINe2X3DLI620s/LLIohHuJI+BOSVikIgt47OxlC/45w2jDwA7DkZ+PvPHLKjBvRpNRM7rljHOnkIs4+DoSMTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M79Uz546; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4349c376d4fso1062855e9.0
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 02:42:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733395327; x=1734000127; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8KIDC3qcWfMKcz6d3c6ytjMEzqjSJwAXK2JJVWX96Zw=;
        b=M79Uz546CUBxrXyRUh1HooIXM0NGWphtJqZ/mJU11XlhM3L09z+7XJVxqk2s6ljBZQ
         sWW3QoP99PsZu2bY/fMSVmGNZnQVtdE9bsuOO+JDh4LJbgtSAirYMLTu1Scb7QkJ38SL
         dZMhgNlpDHv/6tEmk3f3STXLrMDhrCpbxhliyVArOg0PYZWtGIe9WO6TdeY79xWZaC6c
         lcyF4s9PKjKwEt2ZfeJMU2GZeiCf1swSQsjioH8t1XPFL6bwMBOj4Y235NvdMysG2p3Q
         DzC1bZXP2gxOOSZVLoyTY0iP2KJHqbE71HVEr4Q/WPSG2VWOeFmFUh19IAqQkWkQ9TvC
         SEZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733395327; x=1734000127;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8KIDC3qcWfMKcz6d3c6ytjMEzqjSJwAXK2JJVWX96Zw=;
        b=mPOQGptIXWcHMh5vFTjGxKXW/2WFtw9kVXayvIPK4pwAynPHzt2Jmonh3xgKYsPEOj
         uxH3lu0W2Y7w4v25Ygy9jLucOidfA4qMZLRxokdDdq3XmUoda/R8khzsVk74GKTWEfHB
         pK78Pn8/RKSQWErf/anNUeT4Ou1O1svQ6c1fzg0WeNWROAnoyjgdCjv0Lq9iqC2jsuq4
         ojDNrEvlImj9XkSeUjJGyb2Wb2hUjkvGvOPLZ5JhKUPqYGTFRE37zHT9d8HnlP/ESquL
         OmXa96j4o/zPqZ7MmtGrCCMp8HDaF2WikDL8w51AY6DKGn45yW9jJouwGQjpaaw4Lnmg
         0JFg==
X-Gm-Message-State: AOJu0YzAj3/MaFIGeJQps6AnTwN1kbP9PZUGLtBPuELSWxk26nP9FYVp
	sGPBIr646bCNCnCrT93Yl4Ujct7oAJEZG3jl+JSKpMHsSkXLN0RFFKsQu22LaocR9lTxFXpRn25
	Crsc=
X-Gm-Gg: ASbGnct4dcMwZz4+7bV0q+xQhP9o2HAGGbrvc227YFSvaPjOfXYttqP3r8qHVpelmHa
	1SCMFD1DGYA4+7+VWz4elrbgeF8q9NSuu+pNrntx+Na71SdDvJGpz0QTdYUUnl8XnjxtL3t50P4
	xPTAvJ3vZ2MKjfYdDmgt2q219CHn/jbmXUfCQLQegr5qzvr/rrB2wDC+WiTSTJhqDZHLff9hp8R
	Q5HztequyV0o6LQWG7jJ9crk45YNxHTkxmfp/dAcxcF47Q+NjsZB57odDhXtGTUkA==
X-Google-Smtp-Source: AGHT+IEIGJejMyX78O7Y5nPwUxTR92b8MmG1gEAzs8vepMTJTKVucanlx+rtoPz82m9AIVr178e/lg==
X-Received: by 2002:a5d:6d02:0:b0:382:41ad:d8e1 with SMTP id ffacd0b85a97d-385fd42b9ddmr3240841f8f.14.1733395327461;
        Thu, 05 Dec 2024 02:42:07 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3861ecf406csm1662701f8f.3.2024.12.05.02.42.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 02:42:06 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, 
 Stanislav Jakubek <stano.jakubek@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <cover.1730918663.git.stano.jakubek@gmail.com>
References: <cover.1730918663.git.stano.jakubek@gmail.com>
Subject: Re: [PATCH v2 0/5] Cleanup Spreadtrum/Unisoc ARM64 DT (part 2)
Message-Id: <173339532634.70936.15343238064427564768.b4-ty@linaro.org>
Date: Thu, 05 Dec 2024 11:42:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Wed, 06 Nov 2024 20:05:19 +0100, Stanislav Jakubek wrote:
> This series continues cleaning up various issues with the Spreadtrum/Unisoc
> ARM64 DeviceTrees.
> 
> Changes in V2:
> - dropped original patch 2, as it was split off into its own series [1]
> - new patches 2, 4 and 5 which fix some issues found by Rob's bot
>   and/or CHECK_DTBS=y
> - rebase on next-20241106
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: sprd: sp9860g-1h10: fix constant-charge-voltage-max-microvolt property
      https://git.kernel.org/krzk/linux-dt/c/367d31471c3272b87a7e842355b2aa4bc688add8
[2/5] arm64: dts: sprd: sp9860g-1h10: fix factory-internal-resistance-micro-ohms property
      https://git.kernel.org/krzk/linux-dt/c/e864e215ce2197cd5d5c0e9229b4bb83379a5186
[3/5] arm64: dts: sprd: sc2731: move fuel-gauge monitored-battery to device DTS
      https://git.kernel.org/krzk/linux-dt/c/ec87fd9f66bb8196ce4c80b6f9a02a8fdb452821
[4/5] arm64: dts: sprd: sc9863a: fix in-ports property
      https://git.kernel.org/krzk/linux-dt/c/a34907f484949e3a550a54a19d71e8616d812d7e
[5/5] arm64: dts: sprd: sc9863a: reorder clocks, clock-names per bindings
      https://git.kernel.org/krzk/linux-dt/c/49f4ad82f031ac390ea4571a5bf7d58ee27ce4f2

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>



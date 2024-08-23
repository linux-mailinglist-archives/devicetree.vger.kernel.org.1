Return-Path: <devicetree+bounces-96017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A17195C6D8
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 09:43:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8DBDA1C2349D
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 07:43:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A64013D8A4;
	Fri, 23 Aug 2024 07:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZIky/JPq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D71213C9C7
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 07:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724398975; cv=none; b=rtFEg9RWui894nO9Zxrz36LZqn06DCSomsWsYXqPOP/bHcBHt76Y0U+c2HLGJkJJuZPcbP5i6BfAL3r6SGuxkhwdm8Sbr4ur8CSEtydhEomm10v47BnrUIv/IxEG13rrhox4IOeIcqHSzgqwHLyJY78E6gBP6c9gAXMJghDELmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724398975; c=relaxed/simple;
	bh=Dfs/zfxcGMkwxgbZd+pHVglQP7ao1LGjN3pZC7mWY5U=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=X/CoLp0lkM7XeHOq7spA1E5teicdXgRl61bnjnHe58zVTskxJdWGBe0B4LiWm6NO8uWC/Ed3uUZnXqMgp/xCTqpkpeaFln8uK3YNXmnl+mtI3VTANhh7SNA3royBdRDjibQUUUwwxD59Ho4uRyyQiYfA/hnWKJXfd3OidLChQZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZIky/JPq; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3718ea278a8so251056f8f.3
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 00:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724398972; x=1725003772; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GqJUdS/YXG5oCOC6ILbFIKEZvCWARj8PtvC4FGtqr8A=;
        b=ZIky/JPqCdOJdyH9MqTB8l9IgLjr2pBZFbb9fDh/Ql7U5N9C78ZpFyqp61oFSILvGR
         QEM2uS7DLu/TPJLcnNpREc+BHf1pTrNFbK4pYJsrpkyriBxXfmPUtU+uDSF9B+llYpNu
         iNiGD6JTVaUx1uZOubXJKf3jbwlFJ7SWEvRs0MktEB8uJgkhf+iy09iFoptkz1rQPjA5
         XUyKwqxQgo7bCEDWMoyvGs/OhlTAU+2DHFF7azZqPK9uP4Tj7NMDwjV89HPl500nBVaz
         u0/IwWZaMlYQnwX/sEi7t7gSkhtys0SZipBO2Xw6FM6gJs5hwum8kjubbUMG1pSPfcLa
         U7gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724398972; x=1725003772;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GqJUdS/YXG5oCOC6ILbFIKEZvCWARj8PtvC4FGtqr8A=;
        b=ris+FGnA134M+Q+fxo0Km65ojUwe2nEI9I7A5nqXBxl7/vaRGDaoARcizbXfCi53L/
         gst+mLWnNd9ZrI9pCkyRdAt2gI4aTA+w/qHsSQqMp4SoMKDCdMmW6LMxe7mPIU1G8B+s
         HzYeLofHreV3j1YGiHz8Ee/Wmhepm5SlsRdgawLKnf5sGMo0gNandsBaIZqPyqeFqbfL
         KZZDG9PvmadwSX+j2InAfBAd3TGyIJI6VKlQnZfpMADJsvUgw0l2DB3OpzFgI5DYOL1z
         Dd9U5lft4Id4MqKa9rz+Qjaur/eBJk+IlXGDMq7MgJbXS0D36XWEnLFrW+hYDNH8H2wC
         FufA==
X-Forwarded-Encrypted: i=1; AJvYcCWMMdUda5vATdNQcza3itIJNatOH1HXCWxJiMc61eZjyUPCbWQeNWik6tt6TZ92pV72ZXr3RHjbbieH@vger.kernel.org
X-Gm-Message-State: AOJu0Yxh1BxxcEu2REV7BRcTw5jg2pOoKxClqEJQue4280FKHs5hdf+K
	vhUcRWeWypYB3X4vaHDgsdb+Xamla684QeA0pukcaiyuwP0QDMcXHdGqR2cT0C4=
X-Google-Smtp-Source: AGHT+IHPO9pzchQq/4wYPhxpZn2P65ewO77zYxT1lc5yBLDSswOdkRIe+0dRiChQLRf5edZYQVcqDQ==
X-Received: by 2002:a5d:59a9:0:b0:371:8d07:f84b with SMTP id ffacd0b85a97d-3731191519cmr555784f8f.7.1724398971726;
        Fri, 23 Aug 2024 00:42:51 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-373081ff63esm3485541f8f.87.2024.08.23.00.42.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2024 00:42:51 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sunyeal Hong <sunyeal.hong@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240821232652.1077701-3-sunyeal.hong@samsung.com>
References: <20240821232652.1077701-1-sunyeal.hong@samsung.com>
 <CGME20240821232656epcas2p2fa72bd9565570c26616aaa640d75eef3@epcas2p2.samsung.com>
 <20240821232652.1077701-3-sunyeal.hong@samsung.com>
Subject: Re: (subset) [PATCH v9 2/4] arm64: dts: exynos: add initial CMU
 clock nodes in ExynosAuto v920
Message-Id: <172439897024.16898.14647845127210005969.b4-ty@linaro.org>
Date: Fri, 23 Aug 2024 09:42:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.1


On Thu, 22 Aug 2024 08:26:50 +0900, Sunyeal Hong wrote:
> Add cmu_top, cmu_peric0 clock nodes and
> switch USI clocks instead of dummy fixed-rate-clock.
> 
> 

Applied, thanks!

[2/4] arm64: dts: exynos: add initial CMU clock nodes in ExynosAuto v920
      https://git.kernel.org/krzk/linux/c/4d06000979cda26e914552d486e5364248025fcd

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>



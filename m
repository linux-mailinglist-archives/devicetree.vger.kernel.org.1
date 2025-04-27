Return-Path: <devicetree+bounces-171313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CD80BA9E46C
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 21:25:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C259C1899AA1
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 19:25:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49F441FECB4;
	Sun, 27 Apr 2025 19:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="anwnZ3Km"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03211FBCB5
	for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 19:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745781924; cv=none; b=UTsP8zQBPNF2ql4gYBrUyIcsbQkRHcq8dGn4QB/WQCi4hF3ymh08wYjQJ5FO9zoGQiJV5IShLYXL8x+MQ6esIP/uJmgPizPEEVn2qmtLTs17wTnY9QoLYj4zYxFvHR59ug9I20fkBPcCsI8e6X3rcvvqwpOLKTpX2q88Sl4XiRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745781924; c=relaxed/simple;
	bh=oqNJUtcxA2wzhZf6garDZ3ErXC9syEnMCc6vEkOAKs8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=T1eqy/ILYJclyFB+11L5w0/W808NkIj80DC+NN+wX42IRcV3zblhgGoRyXSkLUQjPfqguN7uYethZmk4AAEXdsbfH/HOPiZHG5am3F9hj0DH/Q47z5JVz6fIZ9mbT7Ba5r0Ll6TJIJ2LCxTqudc478fkwIE3+h/dFuYM+7ugbYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=anwnZ3Km; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5f623af283fso436507a12.0
        for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 12:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745781920; x=1746386720; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XXPUPYVAVNB4fLB5qm1IDSC7hT2U9okvZDPKW73jm9c=;
        b=anwnZ3KmhkjpC0v0ICoKY5Z9jNyopWD1KbbLkm1FYyV4QCzFfyWQNEec1tHpFqPSSK
         slagBxEodl3r8+1eM9V922jiaOYf1EuzRGSyK6xUuk25/QiCvDhh7IkW6HUQicNHNJ8C
         +bBj/tadXD75HeLwaJrUx+9YJEjjgCJROzN/ywmsilPBkpjWHlanRnfrGLp19eA3h8mj
         KfKdySDL2kq3UAjYoeN4aG8QVV5b9Ge6eNVhPy/9oqr5yV+dfL8KkDWMaHK/VP9gw22v
         6McRvvhGftBGy85JFk6tNS23CZjO0H70ifRU2h5jvIQAuY32tsDFctUUfrQWqt1BgxQN
         Eyhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745781920; x=1746386720;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XXPUPYVAVNB4fLB5qm1IDSC7hT2U9okvZDPKW73jm9c=;
        b=cDucbh/Y72SKHnP8TPXd3+Xaf91boPyvUD3rtXDK5BSBOQs4c9on2aCucRnDk6+z1F
         PqnAHIIzT2pbBWHgIAsMAz38cyXmcMFLnkPqQpFbleOGlxGI3TcBcW23xKaBvoAa2vr0
         UUbklZ1pnYyleeAuZtXnIOE1ObOuAHio+GGsVC68ZnQUqoxI2hv4HgWINVnN6DNkT9p/
         KW5GuS7X+L0KYhbbFXVYh2gVds4zHp0+DiTQD/ZNgSFTc4NN4HL6Erg1iMQbD//fu7Xi
         T1k72vCGD8G3b8xkJLCot5oxJd3fhOvKPgaYiaA3TxPuSeBYHX1MpRxyhTqBjY/OXawh
         7G5Q==
X-Forwarded-Encrypted: i=1; AJvYcCUcEFzG81XsDskgTsJ/h78yaFvHDAUH6mHwF24QvgZ2qv1SlCwWmuGGl2cRPlnq/UQ7oqxhdXX+WZF0@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/DDLGPf9ISv1rlquYCveAp5h6fB9B2NKYbRABwE6NiA0Ozr5U
	eFDx4QOp9VNEoc1QYKTsIgOy+ZpZCi0zkWxG75XoRe3M8rICATa/9klfOpLuIBmX1tSZEA4/MAQ
	o
X-Gm-Gg: ASbGncvBJYW7EA9ajhjJlBvyk49QbfhmlX+ndXoDEyxEo6AaV4vjI55U9d/WnhiuM1J
	TsSFbs2RXo+tVlNCJO82m7Y821DET8UD7uFP+f/hNXjLYVVOhI2kdoE4+g8fJOg6DOp1ZsY0qax
	Wc7v+UKxWpJRlydPrd5VAMaJtfpJZ8i8lYaWX+gPYBkq7y9AEZMrey7LPVa9AsR2C0f+De1nWLL
	BXdB3D2w1wReLk1mar6KbJ0Lh3t+K5bMQExxTzsjqYOqbSdEQiuwY1JZEzqC+2piXP5akDofxG5
	dNFyLSuJ1ae4dY7VgAnDKNWuLPn6GOruQvi0y5UO+B0PLrjkb4zfeCgOrqg=
X-Google-Smtp-Source: AGHT+IGS5DVAmpRz3jszdp+B+4sEGv+C4WCZtJdnPRD2i2v9FBIXA2OGY5+agSN2zxioxrRcy2x40A==
X-Received: by 2002:a05:6402:358c:b0:5e4:d192:86c5 with SMTP id 4fb4d7f45d1cf-5f723a13a94mr2562484a12.9.1745781920166;
        Sun, 27 Apr 2025 12:25:20 -0700 (PDT)
Received: from [192.168.1.28] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7016f66b7sm4650196a12.46.2025.04.27.12.25.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Apr 2025 12:25:18 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sunyeal Hong <sunyeal.hong@samsung.com>, 
 Shin Son <shin.son@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250423044153.1288077-3-shin.son@samsung.com>
References: <20250423044153.1288077-1-shin.son@samsung.com>
 <CGME20250423044159epcas2p3476aede31ffc8de8a9169584ec8a3d78@epcas2p3.samsung.com>
 <20250423044153.1288077-3-shin.son@samsung.com>
Subject: Re: (subset) [PATCH v2 2/3] clk: samsung: exynosautov920: add
 cpucl0 clock support
Message-Id: <174578191781.47282.17074973176100225448.b4-ty@linaro.org>
Date: Sun, 27 Apr 2025 21:25:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Wed, 23 Apr 2025 13:41:52 +0900, Shin Son wrote:
> Register compatible and cmu_info data to support clock CPUCL0(CPU Cluster 0),
> this provides clock for CPUCL0_SWTICH/DBG/CLUSTER.
> These clocks are required early during boot for the CPUs, so they are declared
> using CLK_OF_DECLARE instead of being registered through a platform driver.
> 
> 

Applied, thanks!

[2/3] clk: samsung: exynosautov920: add cpucl0 clock support
      https://git.kernel.org/krzk/linux/c/59636ec89c2cafb54d33be4e288f953b0876adef

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>



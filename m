Return-Path: <devicetree+bounces-35500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B8D83D947
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 12:23:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DCDCB1F23A04
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 11:23:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 859D314288;
	Fri, 26 Jan 2024 11:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uX9CbdA2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF76F1B94C
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 11:22:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706268158; cv=none; b=pF4pxsugfoXlGB5bK3OqF1e/tc0Uupl6jL6UqHYcWljamNzZbrAYBJTUIzKYgH+0gRAsSLlwesiLo/yrUahdqHdDlUIyW18Yjduy/K9GeMP8/J+eBrt/cspIouUuT/cqH/NSesCJPlE8SqImaPbMc4SJu2HbLeONkaFZjXItpuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706268158; c=relaxed/simple;
	bh=mACbSjLNn43qQIDNya9zDgNcOnXMiY4Me7YFeN+xW90=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=D65z56vuOzU8/HVkw1bqbykDlRoFkeASKgAsC7ib15wkuxF2Yt5NbsH+wty76+J4jhnYhp4o4vNyLiwMDrDiYJru7mELtzSDup1kpGCcUNtR2Dvjx8Ds242Fs5rJhR8oh4wG6Ghoj7Na+XjU2N7+dY4iv1A9kXRZECBQTrwjVYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uX9CbdA2; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2cf3a04ea1cso3201231fa.2
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 03:22:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706268155; x=1706872955; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xS+dLyse9Mmq2wfzYg8MWhXB6r8382gdva6ZXhQz530=;
        b=uX9CbdA2f154mzB9e9wWeSQGAr+C/EYKhIg7qMk4d6BFTcC1GOWguths8zg+WY3Hc0
         QAN9QA952fa8OThthu1tr7w6NfktlA3tJPRQgqw7xjZqqUflX1mnruHD083ADA3Gn6+Z
         O7wqzUOw/Mhy5nlxw/XDeqjQJ1SvmHXQUsypGmWrUHKFfhG9Nm3sUcPpapt6XOv8C8AG
         OMdbSHMO72169SlxrCuiIJnzV8wXEEy6BZW2zf8gbTTSnfk6oiVJke0po3U8JG2dLB79
         Rc22tSGhUsPf5kYAGrrvIykQBBFwqNhNDsbIksdecdCa/Ez8E9QmcahLddI5XAVvngtl
         /XCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706268155; x=1706872955;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xS+dLyse9Mmq2wfzYg8MWhXB6r8382gdva6ZXhQz530=;
        b=rBnDkUjdmI/I3ldjOmkPOvhqislFQ+GBOb8euhN2FM5VNLhMAT+OOI4j9nSji5Vn/o
         Ix0mGJHeIZIQbCTRVFMURuqUpqrp56fFNU1IKyYD96c+7uaUS3o1bf2dZ5Wp0hI7fmrE
         aAIYHH+Uhp7bNRtkZ3ArusC+49cdydOmHgEj6x/T0M0fGG1R+tS4iiVL/SsUWERXhVUH
         8Qw18L+md9KC91JDEmEqfWzal2fQLHGXkXwtuceF5Yqm341GLI0sHcIXYGwpn1uSVPva
         iJynGZR8cSp6ISb0ioSl8mWdY7Umj+mrKz1F/2FHnjkH70rzYC0lavFy3DjJoMHaXVqm
         YloQ==
X-Gm-Message-State: AOJu0YypKThJAdeyOd6ko4+kujw7uvTEr5CzZPaZV/hbRiCQKEQLve47
	o3GUpsKY8Wkfn5GdIxzUtgvLUNG2l44gAwfP/OBTE0+uUbDlXrEIb0Eu6NeATao=
X-Google-Smtp-Source: AGHT+IELkAMgyLeASnVJbzwF/GxPRN+LTezHRJs3Yv64SVBtFnuO5FEPoJYjpDpoE3SWJYzzKI2Wng==
X-Received: by 2002:a2e:b5b8:0:b0:2ce:d23:ec9a with SMTP id f24-20020a2eb5b8000000b002ce0d23ec9amr655114ljn.104.1706268154619;
        Fri, 26 Jan 2024 03:22:34 -0800 (PST)
Received: from [127.0.1.1] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id h1-20020a0564020e0100b0055d312732dbsm469202edh.5.2024.01.26.03.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 03:22:33 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 =?utf-8?q?=EF=BF=BDipraga?= <alsi@bang-olufsen.dk>, 
 =?utf-8?q?Alvin_=C5=A0ipraga?= <alvin@pqrs.dk>
Cc: Rob Herring <robh@kernel.org>, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20231004063712.3348978-3-alvin@pqrs.dk>
References: <20231004063712.3348978-1-alvin@pqrs.dk>
 <20231004063712.3348978-3-alvin@pqrs.dk>
Subject: Re: (subset) [PATCH v2 2/4] ARM: dts: dove-cubox: fix si5351 node
 names
Message-Id: <170626815309.51665.6755169978488848085.b4-ty@linaro.org>
Date: Fri, 26 Jan 2024 12:22:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.4


On Wed, 04 Oct 2023 08:35:28 +0200, Alvin Šipraga wrote:
> Correct the device tree to conform with the bindings. The node name and
> index should be separated with an @.
> 
> 

Applied, thanks!

[2/4] ARM: dts: dove-cubox: fix si5351 node names
      https://git.kernel.org/krzk/linux-dt/c/2df26223650027602d017368f4e8dc1eff90404e

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>



Return-Path: <devicetree+bounces-161207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 92977A72D7C
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 11:13:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 24C68163DF9
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 10:13:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8863620E039;
	Thu, 27 Mar 2025 10:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ne0uzD95"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B98E71F583D
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 10:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743070392; cv=none; b=YkgltI0JiJLAuAwvxT3r7M0vdjm0FINpREmwxxp1ff07JWthPcEm4F5SUsGBjPwJ5OBC7dFBtTriDGR7mrL1yAM+FdJ9YPse+nSPU2cxHn3nVaoMutNzAPxyfa89+GgjXg6IDJxh5tLZX+So+PT0mVebr5EF5CvlSEAtcmcYqmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743070392; c=relaxed/simple;
	bh=HqYxxVPtZO6/vDTNll1yUhXaMFK80Ex8e3/ECvl+j+k=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=PTdk/ZrSmx3E9loI+KWt+WoY255PobYCtIljUcwFxAdfEkXyMutw6OA2wx5jnqYY5nqat8hCdl/BNSYSLnqsXY6tUYjiYZHaOgFK5WthqSl2LxmuRjqu/Es1CP/JUaW2p5GuoUP/4Jqk0ltWSje6pfpOD0X4SPhVfZfKuwXs5a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ne0uzD95; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43d0359b1fcso4766295e9.0
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 03:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743070389; x=1743675189; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xo7iAv+9nI2kaufsKds/53FFNGXfbLXPYtYZ+pjxKuE=;
        b=ne0uzD95tEg3U35XZioP51rXJr9xvpWc1veQT5lh0ufoVKFXwQt1zn0aBDMrJ/qt8q
         4Y22Y0MkyFC3TvDfdd0sJaMTRvOOjdJq5+Rd+xx9inNYv8gzHHxMYKV4kVyN+CncnH+5
         wfK0z3eNXdIF2/jor06yFkFmo3YKwBy3Gt0a+PW5MESvDkVHFfRHsqBhgOtuq7Ww9CDs
         m0YotQKa7fgQ2IoM2JGU6T+ekVca45FRg0SqixFDxxfPwwFeNZo6hGl6y48WJX+cTpWh
         eEdZtnW1MYxZnpNlr+7Y1Vube28p1UyrJFLPTUoIjH022a+OoTQc66cg1lmKu0GFDujk
         Ej1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743070389; x=1743675189;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xo7iAv+9nI2kaufsKds/53FFNGXfbLXPYtYZ+pjxKuE=;
        b=WUQD4JlnpC97dYmq4Oqhz9xBlA80jtVuNTiiyD5ZT29ZmgrPB2vqSimNacD/XygjmN
         LvaRCkJBv5hJqzMFCd3UPZazK3wc5qixM/qiMO14rEx3ve1PliIxXFv/E7cINGycP7kd
         UXDPhXgJA5YEzGfnkc53ch/t6bNIl7zaGAEpztNqwx8O2NZoSwNZHRTVxnIf/2yq8MI6
         yfrnjuc7b4QreNRJNGAgKCbN1XnDe1SdRANQT9cAGWKVcrxkfONTo4q37PlLJ9EOhkfX
         afG1Z+6GntaYnDQXz2xXpCrwljYH2jkw/bI0uYDOGwzwqQbNcmBtkTUKY/nD966TUOxy
         EZbg==
X-Forwarded-Encrypted: i=1; AJvYcCVVQWMR9sw3xKhm0AhmmHA+tFB6ePi7S1SIZz9NHZOSCCc5Np9mavqHY2NZYORntUwIricRKdHq5C71@vger.kernel.org
X-Gm-Message-State: AOJu0YxyyQPxYSIx3GSUQSDw5CME4hPrlbNfm1ht/aya62vczcMrbZoE
	XAYJ4vBOMM/jGqzM1DljFd7t41yne+4qUl7hay1EEnB19msyJTf/+A3yDyxbsCU=
X-Gm-Gg: ASbGncvUi7cm2DqL3ire5cKmUWDC3Me6MnnWuhrengDyGCWWgCoj5L+PcZ8bZBahcsj
	+lVGwHDKZqrxKp8WRsAxgMETNQmxcmnrJDtMWOVmr4VZBOtRoHv12sJE9O0rkCd+mlPP4q0K8Wn
	w60ljq+yh/8RpCvCFXLm6LCdtuasMELzh4BP6966QwRZzP5MnscidItlKszLVBnJ8jtknM/y/T0
	VAyvJxtMzn2Q84ehkDbJlnb5kSfZmXWOCnFzg0qZHRvyNn/XJh8u/dTB66VZVaUbVlMe6Nic4aK
	LTuoHIc31nakJQeeovRQ7GGA0VyqdqAI2YUtskiW1CLTA3b4tTFtO+lMtQbHB5Ct9A==
X-Google-Smtp-Source: AGHT+IFz+YPLrvTgN7jlfBOiq8HZmmXGzvYjXvGO0VPFIOTzfMvVnsPizrlTsSXhwRlZyW4HwIgm6A==
X-Received: by 2002:a05:600c:4f0e:b0:43d:1bf6:15e1 with SMTP id 5b1f17b1804b1-43d8465f999mr27131955e9.1.1743070388941;
        Thu, 27 Mar 2025 03:13:08 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d82efebc2sm32345205e9.21.2025.03.27.03.13.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 03:13:08 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250326-pinctrl-node-a4-v1-1-8c30639480f6@amlogic.com>
References: <20250326-pinctrl-node-a4-v1-1-8c30639480f6@amlogic.com>
Subject: Re: [PATCH] arm64: dts: amlogic: a4: add pinctrl node
Message-Id: <174307038828.3221991.15446720184220513001.b4-ty@linaro.org>
Date: Thu, 27 Mar 2025 11:13:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Hi,

On Wed, 26 Mar 2025 13:17:16 +0800, Xianwei Zhao wrote:
> Add pinctrl device to support Amlogic A4 and add uart pinconf.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.16/arm64-dt)

[1/1] arm64: dts: amlogic: a4: add pinctrl node
      https://git.kernel.org/amlogic/c/77fd52e77d325aac301601a18f7cf06de1565a72

These changes has been applied on the intermediate git tree [1].

The v6.16/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil



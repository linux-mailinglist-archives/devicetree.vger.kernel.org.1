Return-Path: <devicetree+bounces-215249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E66FB50FC2
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 09:41:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 27C5B7BBBDF
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 07:40:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FF5430BF6C;
	Wed, 10 Sep 2025 07:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zsMuhOs4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E0C3064A9
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 07:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757490092; cv=none; b=ZsbejxQHaa9eRI3daTqqBksSC2AEmkQl19yyramiOzvhYmELVpnkdcx1QihI6z1D3GPNfYdRiIE/vcsEnHE4QwYls9WQn2aqmjRMOwm/Rkq4jgjayuJulUSKsmD2/kWG0dndEhHzsAXWgEZU8X32wgfOldnIPkQRcixSnHyQ/Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757490092; c=relaxed/simple;
	bh=CotyJXbDDaVtypUTi+fk/6usAJA01exLYgBV/w6bIr8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=kH8B/dm2RwV1CBoPaPhZ2mOCHr2Sx/++79HRC6ASDAT5o5in7hMy2cI1SFdUHFfXjgWkz/CgwZiOnVcajTHqFoLzDbdrBkrVZBzvUnorboDMQ1AB/7/EvQGtZ7hd/Ck0uSbM+ZsRi92zC1sS0G9XPHZ3ehyiWoWL0r+EmnvnX8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zsMuhOs4; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-45cb5492350so42119695e9.1
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 00:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757490087; x=1758094887; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YQINu9fJW9+xt1bW69VqgmZeDthwxC6ZybeJa/0e4HM=;
        b=zsMuhOs496ivnIDNEh2ZkoXBypZ6AhxDqYG+D2ubtiycKAUFWImHTgwIYQVKKq5wkS
         +Zja3rDMG0C95z/9aeq7aqtTgMKHEuOqIA8p8FGH8aF6vUwMIPLBi+oTSBoFgKID6uwz
         9h5ajSmuRuVEM12BSh3vB5hcteOuGM1x+WMKgwqIs0q7ToYRhNHLlXiyR4uKqpBoczfF
         1QtbNQgOuywXG+OBDe5ysulvnpxOwSH7sPJuInOMPr2XkA3SxvPu0ycsgXeCxCZjRxRM
         Xbn42BGhPKvxBntXe6DK8qzrWlhLE87xtKe7qZ2tcb2hrNZvLXd/G/87h9TqD4iwNc42
         iDdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757490087; x=1758094887;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YQINu9fJW9+xt1bW69VqgmZeDthwxC6ZybeJa/0e4HM=;
        b=Kh1b3xCkGNvjYfzaQQhgiY7qpdQ0ObS3Lb1P6Mx3BQy1cAyB42KOD2ljaEJGLqkrdY
         yeaOhGW4ZutvwOBK61i1YFR/S+X/dJ3gJmntDxiHfX6gR0HSUyoqXR48JRrH2O9BCXMV
         AD/AQfvH3q79wGGXIJ2J41H6n3Aj4sXHj/Jalv/RXsxJmesNHPpTfyur5ZAHm6aWyFTA
         jQfbhSSl8gdHmFhfeEL9BQfAvyQtkEfHV09mWcXVBv3pzd8iU7097BtqA/UzcOSkIUBw
         66TvJ5TQkGqO7UupIgTYZga4UO1fKHs6iYVJNampvyGTElZgfuDN0DXOqDH8RariJ8jR
         3rEQ==
X-Forwarded-Encrypted: i=1; AJvYcCVi1IdCFkVveR0wTGiWYWm4TNHERebMGy9V7WAumAl/9v/Dq0HJDVq6wOgYJC/RVLyzEPuwyS5S0kuK@vger.kernel.org
X-Gm-Message-State: AOJu0Ywj+deap2LlEBg+sbAYFKtFiShLrt+F5J8MgbIakSJLV9SaqbR3
	0GBuwOw3drIKADW5jS+dYirDk6XckHYtLq21uMG3TzS2oJ8wudGMp4O9mCKwiCwfQnY=
X-Gm-Gg: ASbGncs4F598+piYU+ctVTuWf/1CnarI1zSMfBkKXzJetWgPuy+qBlvBao8ijd7xANU
	eWQdIDwCDsovu5h67/vVEhqOvsvb+klHo4IIWNR+ZziBFgPS/Va7X0g2g8pLFJsDpK6APTzA+/m
	Ng8w9tkjlspejRNDOmWORLA8ouvpyC4AFAdR9i55TbGu8u0Yx2JVeUBh88RZXfIrUwtktHCCxVG
	cL705Sgpstt8H70ajGYDw9+hkMBI9p3oZdIZEjp7QFYRHYjjeEmR/BbnD8zZYdXhbhJcJ3p6gmD
	cxoJdd1vKBNLhnpUSz3aoiGcVdTF2fD3wrC/7NeInWkm24YpzPm30jKPhcuw0eCjRoONBozVHQM
	ywLBbifLsfe4E61fCf3wVB48ts6RXT74H8E+j92SoCaXCLC8GqW6YZA==
X-Google-Smtp-Source: AGHT+IHFrHs/AQbTtdmpcTDbnBfFFNqmYeMTeKOdyAzndhMB+Fk7gzlF81CDMGzg4BTKrAQ7R4nr/g==
X-Received: by 2002:a05:600c:c177:b0:45d:98be:ee91 with SMTP id 5b1f17b1804b1-45dddeb8f1emr124260285e9.9.1757490087519;
        Wed, 10 Sep 2025 00:41:27 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45df8259cb1sm17003035e9.24.2025.09.10.00.41.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 00:41:27 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chuan Liu <chuan.liu@amlogic.com>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250717-fix-pwm-node-v2-1-7365ac7d5320@amlogic.com>
References: <20250717-fix-pwm-node-v2-1-7365ac7d5320@amlogic.com>
Subject: Re: [PATCH v2] dts: arm: amlogic: fix pwm node for c3
Message-Id: <175749008683.1189257.13747268542905887474.b4-ty@linaro.org>
Date: Wed, 10 Sep 2025 09:41:26 +0200
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

On Thu, 17 Jul 2025 17:29:54 +0800, Xianwei Zhao wrote:
> Fix reg address for c3 pwm node.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.18/arm64-dt)

[1/1] dts: arm: amlogic: fix pwm node for c3
      https://git.kernel.org/amlogic/c/f8c9fabf2f3d87773613734a8479d0ef9b662b11

These changes has been applied on the intermediate git tree [1].

The v6.18/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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



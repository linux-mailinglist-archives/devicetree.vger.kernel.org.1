Return-Path: <devicetree+bounces-257231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C1547D3C33D
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:18:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 844DE681F29
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 08:53:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0D493B8D70;
	Tue, 20 Jan 2026 08:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XsuXpM2o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B65A3904D1
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 08:53:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768899185; cv=none; b=uo+K51DIZgQSpI7aJcnJqfFH0AeNTbJB7z4qy09/BkSus6Yn5X3DwzyxMNPgx2kutUMkWqKXizt2iVn/q62d9EDxaADHvx2noNuEdg07CoOnnGJwwHQnkGGdYSUc9hr+A9FIRHwoFTV5KnsVo1g6x0h19D9pXewPFTRoMfbfAwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768899185; c=relaxed/simple;
	bh=7LqrBItjVQjD8N5mmKjTNEbvpdLlfw/uLtOmX/ONeeA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=WDPR0COELaDvnhrCAcmpmswRPeK48Tj6kDH6a/8Tx7McqQMQvFcpmjtCQbWTW7KNq26PuBofBBMljWX7I7BhJsekEAbZvAl6c27T2932AitGkPLGPmhlpN9WZqbFH7EqPT5wPJjuLknRr8je38E+yNgLuAlz8hXY4FHTNMaVOTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XsuXpM2o; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4801d1daf53so34997315e9.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 00:53:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768899182; x=1769503982; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C/zzCLz7EhPTekTyUs9lCQwryZmkiSO5kNovzXM9TrY=;
        b=XsuXpM2omi4ZtfP6MoBWFa9gSAnfWgU5bmizgxkATcPxOTXjRkHNHUOzhUJmcxisa7
         /sti6SZgEkq6HbvEUnrCkqhLL+eO/1KGHG5yXJqBEtWB6QQWUQT4J6o97WcwV770/hmd
         3jZ9uZkwTxn8clicUQ99QsLoiyjG1WFdeGGpC188kqOhC7X/WnCPlOqjW3Z+WuXC96Od
         YJQhmywHSKh8SrFCg8KCEMoH/X3vLyzUSsHXJbgO69It+F/NNvmWz5UbQK9mf3grF/By
         v3omlct38xuR4ZtfEoUcpfujuoI8nlmrNE6KHJ1Og434GTogxkddM5BA8Ul2pLUVEXlk
         S46w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768899182; x=1769503982;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C/zzCLz7EhPTekTyUs9lCQwryZmkiSO5kNovzXM9TrY=;
        b=Suu00c94GVTCqlunSeiFtTiKvHx0bQdqbIdS+2OaSpUBZyGwXmiSqd8SetN6biPT8G
         GhcgvnJll3YukOPr1TVL46XsbHwbfaJoBOFOM6xSJsMDHyduHti3l1DKhhKIm6aND40y
         r3HR4+/NB80CH5AWR2SMPudWh7tAijFAF1FfP3xl2Ih6p5b1vysthxN5x2kWzgM8WWHg
         F+fa5+40p5vAoTUZ8Arql7Ag5QqCzWH15F95LDjdKO7wyzwgWFPL8x+KRMR2PQii3u+u
         sOX3MSP2CAbbzJQZjo5Hjh956vgutXWLshQCGAJQMtBQPbOZRSg9pp+oc7z0phQ2AxjG
         eQ+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWDnjoNviIekVEMh+Lky5aJv/0fYhvKy1LXKSD0puYWiLQ4nLRZpSfBJFGy+qpEcrxdqqIOr2fc8836@vger.kernel.org
X-Gm-Message-State: AOJu0YySeTWfJc+ijSuwYUzRC3Sk5YQ8CioHsxFjd8YCvr70/tkVd3el
	lR+OWNlD4yFej2o1oL4NVUt2XTrEHbAtMq9o1UfIObGSJNhj2WyPf36+VpXUxqlJCJ4=
X-Gm-Gg: AY/fxX5vIpaoxGu3FW13MUBG00ghJEmkA5XdDCMDarHCQ3VnSKfrW0kYF7U26wsIrs9
	SvH7gFyWmH2qTvoQcdahrEUty8cpfedQblkbr8LLcZmGYrgJIgmGI2jyJkdnAHHganJvgfoslT6
	JwKjQ1LrCbS+RoVNAzsyZqJ23c7Ifly6Jsqo6kINwuHGlG88mvHqmVZt4CPUhfYVPXdPvLX9ItG
	1wcvsdxPyW5tzlxAvwEZ9qVHyXRI9/ucVDeUPByDz2wxwZ4t0xUnQjhm26lGCmJpM4nWHD16lI8
	OxF9GyLEbez1q84rdMh3SSSKaD7rYmdSIXIZxu8U1qvUGGRgjVzadW32WaBW75oDQ4+JvKKfbwv
	QOITbDT6e1iOb7wdMLh5ciBPBdGgOkucOMWxLRVMnWqSBkZ/4TnDnHwXkDMyZO3qgyogr7l8V9T
	G6URVeGKBxeCvhi1EHYIkrosHGURt7hEo=
X-Received: by 2002:a05:600d:644f:10b0:47b:da85:b9ef with SMTP id 5b1f17b1804b1-4801e2fef40mr153071285e9.16.1768899182300;
        Tue, 20 Jan 2026 00:53:02 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43569926ffcsm27597335f8f.18.2026.01.20.00.53.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 00:53:01 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: khilman@baylibre.com, jbrunet@baylibre.com, 
 martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, Nick Xie <nick@khadas.com>
Cc: krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, 
 xieqinick@gmail.com
In-Reply-To: <20260116023611.2033078-1-nick@khadas.com>
References: <20260116023611.2033078-1-nick@khadas.com>
Subject: Re: [PATCH v1] arm64: dts: amlogic: meson-s4-s905y4-khadas-vim1s:
 enable eMMC storage
Message-Id: <176889918151.1477585.16889853639398545363.b4-ty@linaro.org>
Date: Tue, 20 Jan 2026 09:53:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

Hi,

On Fri, 16 Jan 2026 10:36:11 +0800, Nick Xie wrote:
> Enable the on-board eMMC storage for Khadas VIM1S.
> 
> The VIM1S features a 16GB eMMC 5.1 module. This patch adds the
> necessary regulators and the eMMC controller node.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.20/arm64-dt)

[1/1] arm64: dts: amlogic: meson-s4-s905y4-khadas-vim1s: enable eMMC storage
      https://git.kernel.org/amlogic/c/1099b3b6ab01e481c5aaf6c74e9c8892c9636fe6

These changes has been applied on the intermediate git tree [1].

The v6.20/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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



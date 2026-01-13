Return-Path: <devicetree+bounces-254318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0DCD17271
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:02:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E52CF301A327
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 08:01:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 562B3321F27;
	Tue, 13 Jan 2026 08:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QxGxbZQR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183193203A5
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768291290; cv=none; b=jcq9q9s/mLGu4PuDzKRhptScD6oZkb8fpEhjg1JGevrC11q6JC13MaJsGWpBIy6O+i/CzOtBog258BDGaSUPKFDMbid9d2R1oi/k9Ol9uT2+17rb+9ocsdsFp9z2I5XWnNAZ9C08LhogyQkVb86Ckxgt+7L48ASwdcS+/1jpoAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768291290; c=relaxed/simple;
	bh=MB8bKjekjjuHlG5OmrtAZg8IrClyPw/W1y2JaYy20oE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Iek/UCWkOdfcSokDWMl24UbyBvhY9SFKgfCcg/l4hZI4FyqROas1jl8N/hq+NE7TJJUQ1GpJWt5E9mgou+TPZ6alzWTX0ZR5Cp2IqRLcJfPxNd5jfwZjmOyQCIkYVQRjqv69c7x/k9cFqvWheqGhchX/8Ug0vgfFY6gXk7gvv8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QxGxbZQR; arc=none smtp.client-ip=209.85.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-477563e28a3so40176005e9.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 00:01:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768291268; x=1768896068; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h4XBvo9hLhqjOo/eKnVRLKDXh9Sql68mRuoY6ThvJY8=;
        b=QxGxbZQRBZMolNV44IAL3OqgG4QsoGtMtC0Aqom63ck0SBnqE/04Rl5Nn4MdOTKQvr
         SuluKyQYpLntWHW9785SYV+IVMqr59alinJy4gx4YcQc0dgM42M5b+3g2+Ij2ehGTXcn
         cXXYCRgaMTH28jwNVwhqGVd/ff3aoIFHGHSGQ8GGh2iadWE62YCVPE7ntWvHbbPEyev+
         fRABOYUsmMGps58Dg46jtprmYZIlxco/dAX0k9nsoDM9pqBTNdN9rVV3BSLhWN95xkRl
         td5zB/LAkxg4vl4Qz07dTQml/kq+vH6v+EvwJ3Yv9q++0YgJHGGTd1vkllBaCyBvuKv7
         MhXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768291268; x=1768896068;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=h4XBvo9hLhqjOo/eKnVRLKDXh9Sql68mRuoY6ThvJY8=;
        b=YyzngHjpG1nB82yaGf2SMM5HRPcSAP6UXLnpwg7ujpVbMyISW3kSTir0wzkpyObALG
         X+/xNArZIWwdJiRPqiS8aifR1+f4yDUxX89tqqK2mJDHuZXsFw+/lRctwjheHlwcFdhl
         Pid3jMqNqWUSaMZWODhdB0Sps+3zVPemvqEqSzC7NHJnj7pfPYvw/7q/iu8IuEv+NWb2
         RY6tVqaRE0lUPLKX5Fe9wz8npbcl20S2hehJ2MM2peK8kA630yC2HgGqB7yQTMFiGnV8
         +iRq29OL3W9+lHluPnxRKm7AVa8XyoFBq3B5MCbygVY8vsuBBSH6VQLMto1ztEDxw0YL
         79ng==
X-Forwarded-Encrypted: i=1; AJvYcCXxjn+1mfYCWXAGIztfpv3RIjjrA6dtZ99EdB6k/b2p0PbZoQlIYOJgxOYIQCEBwvCWOjfgibSqDdy6@vger.kernel.org
X-Gm-Message-State: AOJu0Ywb+UurUU5TxgSg1P3gf6OkumCVLyUF7G/TmWQ1FxQyVSZDQUoj
	qThiHJJnkvM64cI9C+JzAtLXbv/UCK4khvtmv8tt4yM4UDy0B3FG7qxpaeukvMfdMaD1F1lsrID
	rWIF7a9ORZw==
X-Gm-Gg: AY/fxX7Vx3Xbg/F6eaNOzg81um12OILV9mhKJjX6/KVWpm4dxqkX++n/YV1d+omTJkI
	ZEordYeGnDu2jErprPAy9g0FBYfuXl5iEBuoI3WYrul+ENaJHwVHInK+hpQjHETyBD2a6P7vOL9
	khxGcQgcvt1Q3uj0lTwimeqV2tJmmQDGT9cIPncGl6F1YzomieTi+nBz7shp927LmCzMg8fgfor
	CRvdJ80fLO+AyzQyApP7xFCulTaTLqIXve4DJk3A9DvZ4Yi9gN6NWV8BVcXSe8os6Avy3awJ8mk
	CGzmBoM///DlxcxzhXWdYWFOTfFvqE95usXizHYj3PWQjVp8Kbl1bW7Py/35p7uU7WuZ3V4EEhW
	gX0oTPf78q4MhPmAbJZagLYcxrk8s8N/SntM07V5nIR1FknnGVlxse5W+ybYuB78xCDcWq4wHIq
	2dGukU/O9II9V/0X57ErU=
X-Google-Smtp-Source: AGHT+IEfNL67lDlJu2bZvpORWFuC/UNgw2RJDGC9kVaQZva+lj1qWcsb+L91+Qwff3hAYzlXikNsrg==
X-Received: by 2002:a05:600c:8b44:b0:47d:6c36:a125 with SMTP id 5b1f17b1804b1-47ed7c2afd2mr23274545e9.17.1768291268239;
        Tue, 13 Jan 2026 00:01:08 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080::e97c:97dd])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d8384646fsm358516415e9.15.2026.01.13.00.01.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 00:01:07 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: linux-amlogic@lists.infradead.org, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20260109210217.828961-1-martin.blumenstingl@googlemail.com>
References: <20260109210217.828961-1-martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH v2] arm64: dts: amlogic: move CPU OPP table and clock
 assignment to SoC.dtsi
Message-Id: <176829126747.3571714.16601287953745000295.b4-ty@linaro.org>
Date: Tue, 13 Jan 2026 09:01:07 +0100
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

On Fri, 09 Jan 2026 22:02:17 +0100, Martin Blumenstingl wrote:
> Move the assignment of the CPU clocks and the CPU OPP table(s) from
> board.dts to SoC.dtsi to reduce the code duplication.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.20/arm64-dt)

[1/1] arm64: dts: amlogic: move CPU OPP table and clock assignment to SoC.dtsi
      https://git.kernel.org/amlogic/c/d7b70ebf2bf4a9983fe64b8c221db55f15c4c56c

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



Return-Path: <devicetree+bounces-255441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 964B0D23032
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:09:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A09C6300F5A0
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 08:06:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF16B32B9BB;
	Thu, 15 Jan 2026 08:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SfMgf6xQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B6831355D
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 08:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768464382; cv=none; b=Xf9sM3/bDh6H6L8lEM2mof/Z8mfW3QANbYcEBIaHKrUJ+reiG/YTHvqhvGncNrbe5EuPsCQoFLKWxC8TAkMp4MxXMLI888f77GnEX0sQzOZcphHBGDgrtVy1+4S7CAu5wsoVmB7IhQZlwR1QmzQv4zz1QQLHndxfGtPVXxKunnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768464382; c=relaxed/simple;
	bh=/mQujRpKxOvBN6TRAUy+Q+0epHha8LYqsmvHZhgNsbo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=hi9i4iSVCNKtCQDn9CRQlrUbvjzxNNgWlaV7yX233De5jr5Kviij2m63igkjFE4ENSHp7hG7l4suz1jb6b4KJOh5t8bPSGv/CFeskDninCdcTw7gdahPZ1hmtok+H+av0LzMspjAwX6dAjd7v2LsEQKD5xVsP4aEKbx2BbtLCFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SfMgf6xQ; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-4801c1ad878so987505e9.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 00:06:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768464380; x=1769069180; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MCWoEpw3wp1QWWzaKGJbbw2SnqJBwo7ssboWE/GLIgI=;
        b=SfMgf6xQXvWlh45+SReh+bMcQmcc6Xlk8XTKzHhbqLfb+pFuuzDDU53WC/fFcP7GKW
         B3PIfyNB6aMA4YfxI5YFCA4yLIrLVb1KSBFfBi5ggIp5g5xjjvyVd3lRpGCEupuXCmwn
         o+/4rdcIP943TCzTp7lfpqPkSS0Y+Jeb9dkiC7M+MdYcZlrB2YWiLGpFkpWKudTfjqqZ
         eWxegs28UhNAixKxZgcWToHTf6LxH037j1YPcV/3WybYvbBQbT3ggR5Bo30Oq0qey/r8
         sybXB55IkJK7MmF4pifFwonCjEUMSt1a1H1gGxUwhpQ4mVnK4QNCQbRKofj61zZf+Uwr
         j08w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768464380; x=1769069180;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MCWoEpw3wp1QWWzaKGJbbw2SnqJBwo7ssboWE/GLIgI=;
        b=TKUcFUPgQ9gFvUyXawArCTpBOJzPKEV8pIneWHkYiSDaUNdRJ36xHanu18J2M4sAh5
         UJuD54nwG+8RpNko7SL4i1SwdGSw56JS1yh5rc9IsznDb4wLWl44EmM6nyJi1lHkwTp6
         HVf6XPZnS9N+O3zeqdPuuGu7wCD2dGqmdwIilOSphN4wc4pORGWd6JwM1UM/6fGG/Gan
         AB0g13lIwlewBvz4kCmb26QLnHpGnc91JMApOZ3rhU1M2NsQagQlZ1IZhDp5RR6HWjGJ
         eiDlWGE0McsRaNUg8AscxJJBz6QqEYjF8mWAxhtNFQ2FfZhqTkA0AIxcuC6hZdat2y7s
         aCig==
X-Forwarded-Encrypted: i=1; AJvYcCXGER9IDIxwg6FL2YMpgGmlqN6+M7/fkrlAA2v1ZaxHdcZwH4IgUx99scdjEwQM83mavvHXbr7+FtNT@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2vnKr58gxbD4Rh3VCOQSFjehRS/11QdT3xevtIdC94GNY3MJD
	Yh/rRWt5Vx8oHvhS0tlbtVSz+chbup3b7TG7xGUDAA0RUZKLwgvdLY1nPIvAu/Gbt50=
X-Gm-Gg: AY/fxX5RorTuvT4IvdzHBKMfsg20kCZFaZcwEZP0sSoyBwaaYULMMSJO/U7G9xdrdLi
	g51wiad2t2KSkz+zS302b3cP4GCstIgn8Uro4zRz9iM+oomPV/yYecys6Rh/TE3dvl5tSSyoghZ
	axzhRJ4fq48QdJmUg5NSkqXnLgP4XfEyfN48lOHrjx3PSnPZcva051yzKmTW4/zidvdOyNMsLLH
	xiKvd2IT/OW6ggQ0mCUw35cPQf3Bq63kSSIaM92YBlJmfkPw/W3nl3Ir0OGrE1hOk1FFjUmzcVg
	NgRkeGYvkG8ozPPqlnT1bEJJ/jktqXD0cW8o1EbYWMcs7IxY+UeiJfuo4RMj4urr54I7lR7+PT9
	KKCFpkZFKohxgcnegRjLMZaWHZ3CACL5OiCJSE8IjsTelj7TlX/z3Cwfnac6wgJzvdqA5aUBtbA
	JIP9ZxHuEYHUdkUX/RLnCGj8D0oRl6/xc=
X-Received: by 2002:a05:600c:3556:b0:477:7f4a:44b0 with SMTP id 5b1f17b1804b1-47ee338ed50mr52682695e9.33.1768464379529;
        Thu, 15 Jan 2026 00:06:19 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47f4289b789sm32875245e9.1.2026.01.15.00.06.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 00:06:19 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Xianwei Zhao <xianwei.zhao@amlogic.com>, 
 Yixun Lan <yixun.lan@amlogic.com>, Nan Li <nan.li@amlogic.com>, 
 Jerome Brunet <jbrunet@baylibre.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260114-amlogic-mmc-clocks-followup-v1-0-a999fafbe0aa@baylibre.com>
References: <20260114-amlogic-mmc-clocks-followup-v1-0-a999fafbe0aa@baylibre.com>
Subject: Re: [PATCH 0/6] arm64: dts: amlogic: assign the MMC signal clocks
Message-Id: <176846437874.1204537.16755777734370082596.b4-ty@linaro.org>
Date: Thu, 15 Jan 2026 09:06:18 +0100
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

On Wed, 14 Jan 2026 18:08:47 +0100, Jerome Brunet wrote:
> The amlogic MMC driver operate with the assumption that MMC clock
> is configured to provide 24MHz. It uses this path for low
> rates such as 400kHz.
> 
> Assign the clocks to make sure they are properly configured
> 
> This fix has been split into multiple changes to get the Fixes tag
> right and help stable pick up the change.
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.20/arm64-dt)

[1/6] arm64: dts: amlogic: c3: assign the MMC signal clocks
      https://git.kernel.org/amlogic/c/69330fd2368371c4eb47d60ace6bca09763d24a0
[2/6] arm64: dts: amlogic: a1: align the mmc clock setup
      https://git.kernel.org/amlogic/c/c6ccd0d9a253b59125e5c625139799b41f0de3e0
[3/6] arm64: dts: amlogic: axg: assign the MMC signal clocks
      https://git.kernel.org/amlogic/c/13d3fe2318ef6e46d6fcfe13bc373827fdf2aeac
[4/6] arm64: dts: amlogic: gx: assign the MMC signal clocks
      https://git.kernel.org/amlogic/c/406706559046eebc09a31e8ae5e78620bfd746fe
[5/6] arm64: dts: amlogic: g12: assign the MMC B and C signal clocks
      https://git.kernel.org/amlogic/c/be2ff5fdb0e83e32d4ec4e68a69875cec0d14621
[6/6] arm64: dts: amlogic: g12: assign the MMC A signal clock
      https://git.kernel.org/amlogic/c/3c941feaa363f1573a501452391ddf513394c84b

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



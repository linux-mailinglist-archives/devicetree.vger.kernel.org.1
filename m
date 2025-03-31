Return-Path: <devicetree+bounces-161923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E846A75F25
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 09:01:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5587118892F9
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 07:02:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65C7319DF99;
	Mon, 31 Mar 2025 07:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X2c5YDhc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 757B91AF4E9
	for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 07:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743404505; cv=none; b=BBCvvfHFPdqdf9vuffY1Isv/aKf7Tq1bSAY+fyFRTbNxknhuvJ8ypcTcg3u0m9cOptucuyXSNZIcL3gKVuEuCwGDzwWO5VHhaqiiGyQzb8fB5Ql3A+kzcSRJnn1w0e4HRyV59qneQB7JgmTo3/q5fFjIUitxLrBF9Qso4MK97L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743404505; c=relaxed/simple;
	bh=7g7XpeFPKnrmIx1uYLTkdCXecsltwr9673DmFSVJvIs=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=QKZM9CHxsaSSG3W4OvJka+S1gcPfGT4+uCghIL2oVI5L1XDGntVFdKYSPbaHIQO0uYNOXDZix5VEwqCGcEw8oRF/MaojkN/B1TDvjseXN/yCfp+KXpiDnXe8mMYPDzKsISc7Sy4qTRyIUIfDiPD9C64hsSlzNEy7abyPY2Ph7GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X2c5YDhc; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3914aba1ce4so3525274f8f.2
        for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 00:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743404502; x=1744009302; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oaZet+achYItbJKpiG/xx1boWkF1GMxAKa+bQtO4ts4=;
        b=X2c5YDhcf/C+PslJP16Ub+L55uyKfGXzy6mqpkYz06sFJnTcK2FZPosNsHl5+Qw/VQ
         job39QOZgIPNIiLaTfgEchphr7ZYN+AyIDnNHU7840hI545yCa3+Jf2oWoVqEOF2Z4z2
         1wZj5/BJDBNEtmPPMpcIiJNln6iq8BmvOPQCInbRs8ufkN++Z+234Nh8/zDrsMo+fS3V
         D+5Mk42YtKb2uaosXmV6bAD8CSkFvOU+Tey7sg1T/8HSiR/dSaa7mCoTLJWOXHVfx1AF
         dWmwe5dOjKRV/ysUOsufkD9BD4zWE9I/RPJY275Y6QVMOnbVtzRnwT0CgIjrA5Uo329A
         WVig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743404502; x=1744009302;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oaZet+achYItbJKpiG/xx1boWkF1GMxAKa+bQtO4ts4=;
        b=vKmeZmeXgZaG6ektZ751Hdj5yWl/znM77fJi5KbVNR4na0+tZMswcK+IWNgXqaBGmp
         Oyk8gWeD/NQv2n5ERNlewvGfe1WzNxGOxxsaEFw72avxkU3o86XqhubUvXuibwow8cUN
         KNz1YLsDytHqcoMlTG3DXxhfJpV5EALwdjf3K67S+O7r7kjj1ihD4du3iqRCEw2Qpw6S
         PVQM2fTWbkjNIYuKd29/hAWA/KBqk59OZPjxiv4784wrPkJf2y1bfPhaGlfEhcRvpiO5
         9Y3+EBwJ8LLrUt1U7pI3ZSUPhJcSSd01VkzDBadIrnbwb7xwDmxCpEwfCsKb7voKGXeD
         uDFw==
X-Forwarded-Encrypted: i=1; AJvYcCXmUkK3acRcNdhNXcd0RAFgQ5yFWx81rLuwg3UbSiTJBrzGxogJErm9bRPQ2vHMUtTBwuk8fE5eVtza@vger.kernel.org
X-Gm-Message-State: AOJu0YxJGHTsUuYMA4SEhpEwQDGZ/oXsgtXvSAcZpKZrRNDtvlVIrTim
	sOERnXvpmOBqzvFyAWVHrCrpscWhHp1dvKHOuzNaqqE2DLdeebwB4Xm5bbUhF9s=
X-Gm-Gg: ASbGncvCUGx6bsOCGZt67BxudukTkw5w/47RYHYP0RjWyB4kJf098lyuNvGZr04pQx7
	p/L0P+/vChaKRUbpDWUZ3frkjG3e2sW+atVmQjwlSFnoe9fzIRchDrDBg9ibxw7rcWi58x2nvFx
	UI3EcNhbk+EahTZYXZS7DWCZPALT3i3hC6kErE5Wg0ldNGCIIQgEZkT/r8uahYZ6bUJmnKqJWJt
	EEuAE987F5q1w4o3kSiZudcT0qD+TEsW3BudFsXISYr4udVwUgxwc1aVIx542xoTVgAoxREYukm
	firq3m75QBZ1N2fcGbtIqs+H4MCGTBWxj96b08Rg9zSVLkj6fYrPpUgqmT7R5Js/Rw==
X-Google-Smtp-Source: AGHT+IHddxB5k0FnXCNZBeNjRDemX9kB1JsqOq32EQuLUtsmc+/DgPdv1Z5DHh144VpkY69PlzIWUQ==
X-Received: by 2002:a05:6000:420d:b0:391:2e31:c7e1 with SMTP id ffacd0b85a97d-39c120c8df3mr5450139f8f.4.1743404501733;
        Mon, 31 Mar 2025 00:01:41 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d82e6ab48sm158442325e9.10.2025.03.31.00.01.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Mar 2025 00:01:41 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <20250330143254.3159519-1-christianshewitt@gmail.com>
References: <20250330143254.3159519-1-christianshewitt@gmail.com>
Subject: Re: [PATCH] arm64: dts: amlogic: gxlx-s905l-p271: add saradc
 compatible
Message-Id: <174340450091.221709.5889306683742068023.b4-ty@linaro.org>
Date: Mon, 31 Mar 2025 09:01:40 +0200
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

On Sun, 30 Mar 2025 14:32:54 +0000, Christian Hewitt wrote:
> Add the saradac node using the meson-gxlx-saradc compatible to ensure
> MPLL clocks are poked and audio output is enabled on the p271 (S905L)
> board.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.16/arm64-dt)

[1/1] arm64: dts: amlogic: gxlx-s905l-p271: add saradc compatible
      https://git.kernel.org/amlogic/c/cb99bb034123ef8b8dd533fc4c42164b049515a2

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



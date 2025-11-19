Return-Path: <devicetree+bounces-240272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6900BC6F6D4
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:51:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 662182F00F
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 14:51:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68F1E3590B9;
	Wed, 19 Nov 2025 14:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TmHkXOB/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9598A26ED59
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 14:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763563673; cv=none; b=KUmjFMD7H1ntPHzR18gpnshCfLLyd85tgMQM0hNAxVmN7NTZNGFkWWRB7er991YQPKD2nuZUbfTGEis1wbmM5l5uc5rhjeEofEfPaoeiWKqMG0U1h2xMLFK0eF6yxTrzKgg8VHo3eYS4Go0dYzDdrToSgdilDurLiM/PjyKN58k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763563673; c=relaxed/simple;
	bh=uhzWM/qGYZFfhE1HvQD4WizdEvAfuuSn/VMnpLmpDRA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=B89v5DFvy/ItnZDtwHhvM3bXPPh8hsW+JyO56n8y6pLl445NGarYzozkRoOfd87WIxgXUTMDld7141CNa9RyM8JqBdmEvprBd/hnPlKghWTW9h1pFjO9f4QRMIplnkcPc3p0+yUNDHcTzgxJM/sL6bbwa3YomhwwNrszov2aDcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TmHkXOB/; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4775ae77516so74499195e9.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 06:47:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763563670; x=1764168470; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QeQ7og2zIf2WaBP3fNWtUSnP+euy7z4uHI8eX0I9W/o=;
        b=TmHkXOB/vHGhDJDAS1B4eJRyx+moXvkG+CYKBlrXmEy3q6j6XwrA1239xvOmSVDkyT
         qlaqCU9fp3QcwnY+ZGs/0Vhxu6qMqQNpmEwbTBg1HKCOE7b3PngTAU8aJQJjrI0bZu4D
         vy2l5unEflzClsGqKxFmPbdsUCI3wKBVgM0ha+XLSyaD91hJuf/U0cf7EsEuXqFJjVAT
         i9TIzzse+wUf0/p1ywWlh9dX4DctMkg+hSBSpQU5DRMoNn/9ThEV63JeNQkhv7BzX1Gs
         2FFnjIpNcfNciNMHgqJzIHQQ1B75cAUe2tqrMN49gqZ2ybfCF1/34XcqQ8+C5fZz+uNI
         68Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763563670; x=1764168470;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QeQ7og2zIf2WaBP3fNWtUSnP+euy7z4uHI8eX0I9W/o=;
        b=stDxecSNCh5qC1xZl3I5pc3rWiEEB7rB14bJK3AXlZ9AgBq9CDB7h7SxlTA0TkZNtZ
         QKpVp5x6os1hkdEjR4zpbSCs2rehKGQsMeLdSrTcqt2+jIHgH2bkNJ+Kk7dN9ejgUIBr
         aG5jD9gx8vyZyXeOHtlJYZzcXFK2FSq5d5hEUOlWKGNfjiPJxz+OMI+h9RaAQijtiocd
         mAlozFIhdHaGWlveqE+W1HD498leBIT4zlIm91aiqHzbvKR/aqXfn3tyVlzpiF1JSI3Q
         Oin7JE0kku5gmjqIxoeuqFw97XK5uIHkBdwP8jGtzStcsE4H0fZ1eEEGAM+Ego5z/+hk
         WTHg==
X-Gm-Message-State: AOJu0Yz6cFeBpqBFTDDN56VCbEvapBHJ5qbRZRu7x8Jcpy3hOGUc4PQ3
	VhAyJEQkRgqJ+qOXzOEXCOga9QrXE9ldt6aGZ0R7Jo7n3ZchvGqunbminFmSB9guPNA=
X-Gm-Gg: ASbGncvD8OzK8/FvsRDEhE9jF8VxTSr13CZ54CX2viTibSzsO0ZqiLpVB2ajQM1y+Pf
	UFpNr8VSdARypxpVqWWd4QTi8JrPiDPePwF4hc5zXQ4kqPUIFS5jKSHP3ge/2Hu0g4aC6kMjGp7
	vtksPrxXWOmK5zMBAvHeqpqludHej9x0TRLGuLKdvV0Q7oRS0Z6VLZuqYL/qpSNwVjnjumGC8be
	NZkKphlM8WK/b+5tC2CrcIucgmN3PKiDUaGIA/g/YCjmDoAAkAS38Rnf/xuKva2geR51URZLMVg
	60ixZ+/3JsuEag7lTdmit1elPrTW39RCjNd0Z9dIa+Fv3OQg4pUz/FZkRd4YwPf139l0Bs2fXfI
	Cnk+B6QU6R0FkspW+lwit6QRiKYwnXh2AmGi3FCBDDMvVBa3CCv4ih3HNja2Kferkxr6TI4bvc4
	uvpK91T/EIAiqfCWHNMUrUDz32yS1A5ew=
X-Google-Smtp-Source: AGHT+IE+tE828EFZZvZOt5BSe3ijLR8pMVOobVWe9YorjUhOAYJSEIXeL1tJpdukzaJzd5dVtgQ6Mw==
X-Received: by 2002:a05:600c:1d19:b0:45d:f83b:96aa with SMTP id 5b1f17b1804b1-4778fe51e63mr185910855e9.7.1763563669904;
        Wed, 19 Nov 2025 06:47:49 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b102bc9csm53729505e9.8.2025.11.19.06.47.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 06:47:49 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20251119-soc-info-s6-s7-s7d-v3-0-1764c1995c04@amlogic.com>
References: <20251119-soc-info-s6-s7-s7d-v3-0-1764c1995c04@amlogic.com>
Subject: Re: (subset) [PATCH v3 0/5] soc: amlogic: Add new Amlogic SoCs
 info defines
Message-Id: <176356366923.77927.3381277328480983792.b4-ty@linaro.org>
Date: Wed, 19 Nov 2025 15:47:49 +0100
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

On Wed, 19 Nov 2025 10:52:21 +0800, Xianwei Zhao wrote:
> Add more Amlogic SoCs info defines, include S6, S7, S7D.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.19/drivers)

[1/5] dt-bindings: arm: amlogic: meson-gx-ao-secure: support more SoCs
      https://git.kernel.org/amlogic/c/1d80bed4e35710287c584f998e51980a34fb3a4e
[2/5] soc: amlogic: meson-gx-socinfo: add new SoCs id
      https://git.kernel.org/amlogic/c/ba8abbdfd09e64f51ead8b86afc6b586505919b4

These changes has been applied on the intermediate git tree [1].

The v6.19/drivers branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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



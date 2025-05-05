Return-Path: <devicetree+bounces-173657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A17AA935E
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 14:38:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 93C181888942
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 12:38:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFF961F5434;
	Mon,  5 May 2025 12:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FL13yfSU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEE7822578C
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 12:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746448721; cv=none; b=ZopTa1v2md/RPuo03Kv6c3zQta2LRWhFLvyt4FiGtCWjRbaHyn7KQ7ycfGpjWpS0yeiksGbxZy17gxxy6aPaaZNf15GYWo6FIPqlSY5hVJF0pX1CLTbXKDcldrCSu/eT+mQvODIv3dxCi/JtNQW5wLCl/B5dJKKKrSQ3njq7YO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746448721; c=relaxed/simple;
	bh=i1ow5HamyQ6uUmgMTVN2OCl6RT8FtU4Bwib3PgVLTe0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=QmBmzYohMsUGW56hseNDQ9U+unQCHwiZ26Rd4pV+9lcsEh5LJe2Xo/1GxndU5XZgXBOfHn0JcBHpMXGfMJ6oD2pIe4diAEU+CCfKWFyHslBdRLzO9EefXORz72rRsv3TEzTqxHumQ60Zu6adGAamvfGmXIjou6qE1hGXEI/dchs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FL13yfSU; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-39141ffa9fcso4675200f8f.0
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 05:38:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746448718; x=1747053518; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rl6spdFCta6JXs9NjzJlT+z8o2YUBT0Kre+VTf+/vXs=;
        b=FL13yfSUaFeyQCbtJ73Zd9/EGA9eo2k8YvhYPE9hCZszdH0GuETRiKTsUE6xYS/iJU
         lieF3zD+55s+bpC7KfFhV5Nit13UH0ENWSz1VkYdVHBh/I37JzmVA634UB1to+xY/nIK
         1qcCadEwCqZeT5ek9hlg5Sq5zAb9jtGODyaEX6fXzDxwlb1AiCLlIoeozL9AIyhyg4zv
         cUsW6K8Ians4iwRavVbRAN6P7vbH9WxTyCETJPAHJrFxz6lqi+57g/8d2BlV7xv5aC3H
         mBQahh2y23DL0IPjY1Z/HDlSlY0AV3+lbi2LHfVw3B0g7y5gHPugkucbbrK3UJj3SD52
         w7fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746448718; x=1747053518;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rl6spdFCta6JXs9NjzJlT+z8o2YUBT0Kre+VTf+/vXs=;
        b=TTu1l1YpRI0XnibCSEO69rlPPvH8cPZq9c5POS0Nx98i0iofmAy5abPw7djQOUeqtj
         v3Xh1HK6FlwGTSwWe0ibWePT1kIKJrBieFYCJo8FtZEOLxfZSXIF36rvntsZ9UtmA6zA
         EuzX1BhsZntpjuewgr++VdsGxPQJ6ZlVUjo8F1Uxg9dKL5y9dWk6u3EOErO6r0ZksAY/
         3jDjDUymC9WB07v8q8Soep6m4GBjdb5e329a0IlWJuNJW5RPT7+sukRAUGclFZ7XiXEv
         FEfEf6kTd3AlsKVL/tPsWsivDoTNABMn3I7fW0+3q1MYug8fQAk8zATnz16Dz7dx1PCj
         A+7A==
X-Gm-Message-State: AOJu0YymqaD+xAgmLiF563ep2RG4+2c3dkWJeA8StWN4qKYl/LHMjoIZ
	4SrWoZAqmXyWIzcV364paDag5xWWaVPhPx7bIRU6EyCh8N2OMsmToaRfQLoW1Bc=
X-Gm-Gg: ASbGncuM3bCr+tEIPyZ9IHeGC8j7o8jdcQVv2vFrVmQF6TNc09vtRp5+4C+uBixRQ8q
	i72OSDQW7oxZm0RNJGWCEUsQSUjbMBQimagTVw5KnCJpQlPAJ14aCAo+L9lImHa3wT5P1fpVw4c
	0QYuZvT1mbJ5sllQ7wArAGWt57bgeuLpZp2qqWautPhw/9fvdbng04nPnSVybLZZbUNUtkv/ff0
	lt5pnh8XmtsJP5WmgOXM6fEiIS2vGrQAzOqwY8G4Fj5HjWG+3PZAQbna+Os/TCjd19o6EU2iQ1Z
	Q2Ftlv4G+pdOBGQF3+l2W7Hcq8N0JFOzMqhzBwwUf2FLTpxUkHvgRF4gBkS0iw==
X-Google-Smtp-Source: AGHT+IEPB1W6TKe5pDLjaw9rUkL1i4ZzERHI8wMQEDvQTkA9//qDganu2o1wcLoboBW4dB3iaby3zw==
X-Received: by 2002:a05:6000:1869:b0:3a0:8c45:d41b with SMTP id ffacd0b85a97d-3a09ceafb06mr6167004f8f.20.1746448717806;
        Mon, 05 May 2025 05:38:37 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a099ae0bf6sm10416625f8f.18.2025.05.05.05.38.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 05:38:37 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Kelvin Zhang <kelvin.zhang@amlogic.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Zelong Dong <zelong.dong@amlogic.com>, 
 Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20250320-a4-a5-reset-v5-0-296f83bf733d@amlogic.com>
References: <20250320-a4-a5-reset-v5-0-296f83bf733d@amlogic.com>
Subject: Re: [PATCH v5 0/3] Add support for Amlogic A4/A5 Reset
Message-Id: <174644871707.1393229.7222540687542026901.b4-ty@linaro.org>
Date: Mon, 05 May 2025 14:38:37 +0200
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

On Thu, 20 Mar 2025 17:42:07 +0800, Kelvin Zhang wrote:
> Add dt-binding compatibles and device nodes for Amlogic A4/A5 reset.
> 
> Imported from f20240918074211.8067-1-zelong.dong@amlogic.com
> 
> Changes in v5:
> - Rebasing on top of the latest upstream changes.
> - Link to v4: https://lore.kernel.org/r/20250313-a4-a5-reset-v4-0-8076f684d6cf@amlogic.com
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.16/arm64-dt)

[1/3] dt-bindings: reset: Add compatible for Amlogic A4/A5 Reset Controller
      (no commit info)
[2/3] arm64: dts: amlogic: Add A4 Reset Controller
      https://git.kernel.org/amlogic/c/946b51882b84f0cbec2acd203467866a7378abac
[3/3] arm64: dts: amlogic: Add A5 Reset Controller
      https://git.kernel.org/amlogic/c/f0911f29478992f37e91c208fe44c2ea5b378b61

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



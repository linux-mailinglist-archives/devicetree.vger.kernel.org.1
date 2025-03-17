Return-Path: <devicetree+bounces-158036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4E9A64416
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 08:44:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F17BE7A1325
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 07:43:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BEDF21B18A;
	Mon, 17 Mar 2025 07:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oktUkdgO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8352521ADB9
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 07:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742197447; cv=none; b=lrKQem3tiMWtItdxKmCTamUiSwscKR4oQzG+y6tXGgvSEMabUjDNMuQCVw7jCzGmbuVjzTF0XJ/jy0TQbyT/azQ2OedU742t5hCOEfB7vaNNVjtnXEbNxk0DWku1lhARUhEFaeuCtgoYUGxI5TETdwu9BTz3U1B3Qm5XmTA50Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742197447; c=relaxed/simple;
	bh=+Bz07UXdpN6p7ZSP+UTNiKARdB0qLDBd2Muoh9FtFzM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=aTLn9uvQUX0RNhNPnVbr1Otka09TEXjhMtgwDzYI395Q1dUiu4q7hWQTeQOkLtNE61fCck9QHuZ0K5vOkKI71klyhVpXzVUv8OXiIvmWTAhC0fwyu/1ZUTbI5cM9uXgs1If2C6kVKT4dauPNN60bXo2d7+1RGBcY+TKFqB4SwA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oktUkdgO; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43cfdc2c8c9so9545805e9.2
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 00:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742197444; x=1742802244; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H6W/dMc1fq8BYuaZ4P5+FGSA3GCwNFxk1dxYVKldZLQ=;
        b=oktUkdgOxDIS62NG/vd4ZiJ1kSphIxu4PrYvQMXi9mNwQun7IL9ZF4jd9hCXTJ7DcH
         1QLzYf5N+8hQ9SzT5XTO9Q+EmpSG5HRjY2a+CcpmoW3Fvh+yrJ0w2KzEEQvBosLzLw9b
         ierJ6+QO4/EbxV27FmqTDpaaLncsyF6GIVHR5yYr0tW58OZ2/He6qQ+Ro28BW5EA5HH0
         fFIRL0IOMGPwpmt+RR6Co5NJQFRBH+FpaY2OYmAkmyHRsU+uWjK0rjCe7qwWu1jWwAgn
         WnhFskdtFBQ9F5xr6FcXXsf8L8SsL70AGuXJy67F9O6ZeRj+gbZri/r8jmiv0REbSp8V
         v0iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742197444; x=1742802244;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H6W/dMc1fq8BYuaZ4P5+FGSA3GCwNFxk1dxYVKldZLQ=;
        b=bqbIx+AUTsndDzt9aiWtZk6vgAvW1VtRjfjqsVDQUYTFOiM0Hop8tsIQB4FozSZhpF
         CB4IuFnjTIlLCDM7NqZh5Y5nbzO4c4riuSgYMNcxGqknIWtpoaDGLo4cEOEUM+GooQ4/
         1tw4kUucf6AdnL6RzDz10Os1nBZ8JYe/yDrQrIqXv7HIMRLVqEubYfZwBHsa/XlZPuUn
         hjgME08d4bIx78QuJNps0qL6U3qnDuP5Mn0i+ooMSfwjPL3+BBu2gRnbQsKSy5ydf+Dv
         /nU2wl3bNgMneccEJvFsT05jGRkCdPJ9nD0FrHS6pTRxYrc8VPaBKXea+D8i6BtNQwpL
         UYcw==
X-Forwarded-Encrypted: i=1; AJvYcCUpwKpFyaE0aGd6JQrBtkLM7cdFpPF/sViuUaBf3GWXpcrY9KSzZqc/VvKiAuiKuAyl+8GXU0J49Mq3@vger.kernel.org
X-Gm-Message-State: AOJu0YyByPYyJP5Fzz6RqjJSnf71RxRcJNmCfXI9miVsT6ICrAlxyF5k
	rGBmSm+q9FlikX+cwNikYs5gGC8KxQWxpWk2b9AEZAgZDSl6y87mGHpsWGhisnpSug4SeO29ATY
	N
X-Gm-Gg: ASbGncu/jKxKpvMHOAPMibn9n4PRVKtxxe2AzFq6UnG7ljU2PxPBGTPtM2MtDRX88Fv
	BRdGO2bsRqwT5X8cytifI3CWaFbPh0FLqIblfymtYJLlxyPFlwf9ON79v5gTYPhS94P03ceHGDJ
	BEQUUudq9BW21Iz+O2C3wlGyvTy21uzK9qpnEtLxN+J5oiRsTXcrBreKApPoKlC9rJOH3Pbl7i7
	DELaSVqylxfXJuTrd1y67uZuX1vKeaF4g6MvnR7xetgv6VJLTXOKGDcXHhNjw3Li2qjcXW6Awe0
	49aetk8N5bSVXP5wgl6RL5+glqfyLUsEJ0B+ggBYr4C3TzTCDSYe/J6fjzFAYKufFg==
X-Google-Smtp-Source: AGHT+IF8C1yneD+/k4sqE9utzyQLZCEG5Ohlgyj9HQOMGPJSnTFjDN3R9yA40oXN4+fpAPxC9TTs5Q==
X-Received: by 2002:a05:600c:214:b0:43c:f16a:641e with SMTP id 5b1f17b1804b1-43d1f0a3aaemr102869895e9.6.1742197443707;
        Mon, 17 Mar 2025 00:44:03 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395c83b6a32sm14376503f8f.33.2025.03.17.00.44.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 00:44:03 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20250311-irqchip-gpio-a4-a5-v5-0-ca4cc276c18c@amlogic.com>
References: <20250311-irqchip-gpio-a4-a5-v5-0-ca4cc276c18c@amlogic.com>
Subject: Re: (subset) [PATCH v5 0/4] Add GPIO interrupt support for Amlogic
 A4 and A5 SoCs
Message-Id: <174219744301.3089961.6347213266646956468.b4-ty@linaro.org>
Date: Mon, 17 Mar 2025 08:44:03 +0100
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

On Tue, 11 Mar 2025 11:08:26 +0800, Xianwei Zhao wrote:
> This patch adds GPIO interrupt support for Amlogic A4 and A5 SoCs
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.15/drivers)

[1/4] dt-bindings: interrupt-controller: Add support for Amlogic A4 and A5 SoCs
      https://git.kernel.org/amlogic/c/40f4152442f72748ce883ca53ca80961e433701c
[2/4] irqchip: Add support for Amlogic A4 and A5 SoCs
      https://git.kernel.org/amlogic/c/bbd6fcc76b39502767e213ad24a349205cf75e96

These changes has been applied on the intermediate git tree [1].

The v6.15/drivers branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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



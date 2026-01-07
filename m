Return-Path: <devicetree+bounces-252382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C68CFE270
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 15:06:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5229A30028AB
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 14:06:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F276324713;
	Wed,  7 Jan 2026 14:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mbVG6R73"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF2F315D23
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 14:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767794800; cv=none; b=UIw02ZI5jQkfiaWDyOyyeDcQ24V0XoTde8245m+k5BrD7PwiTMV5XduItzPyL1qME5NSUncVPedyVYc7MR2R5PU7hVUPT64/gGFHDGJ3V/Ich458EnQAMu3NJQqGX9rV8JyWwwMahdOPGmtIyhINnBgqhBlvNXxlTLmOGimgHPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767794800; c=relaxed/simple;
	bh=sVgIFV5OaloedJAgFQSTQKJcQ+P4UMFml8A9Z5egtIE=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=l7MYbr64rH32iKuoZUeK6kNvaT/shjX6A/ZNmBVzxFzv8e1sn6amS2RJ0DNEivc6shcaUrQ3jiaCCjBcDcV/7vHxo+SosBtBL//x2Jclo+RU6DiBqAdzFBh+0Tmdfe1xLubeBU76ShkgtcyTQ+mEk/lRCqTMHXmMhNuuHiPd9yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mbVG6R73; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-47bdbc90dcaso15381755e9.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 06:06:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767794792; x=1768399592; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uPpS2fnpM+6YueRvKfiaJ+0mjmZ9bEndFXFtCoDO1IQ=;
        b=mbVG6R73R+NYFe/RmdlC3HqFjuF/qYFtrRfPxPDMh1tBBO/+2Tj+aAygsHbC5sJ5r/
         fL0oV7R47/31iZRE5oZd0EniYGvrFZEVsIim9lh4GiESnae/MMpWVM7uRaEKqIcpRb+4
         /99CLkwXfO0WmLkp+hFYQUfFonMpdFOh5zSg5WlhNzNN9aN8jK4fREMza1GFsvoiDgJd
         IyRehG3x4y03EQsd4BGkE8FMa7CqL7q3Dp3+RNB6KCphYvkozItTR4Xot/uO0AKKF1di
         jW1EcY7R/V3dsqe573JI5+QxvVSRmzgOAJ2sPZaZPKGuTyjcVRO0r7aUh+Ch8PXCseNY
         XYtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767794792; x=1768399592;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uPpS2fnpM+6YueRvKfiaJ+0mjmZ9bEndFXFtCoDO1IQ=;
        b=KPWthr9+w9x4s7M+KQFId6FQ29XdYKjSNbMssTPkmdkCxd9Br1LAetN7d3DaiUALXg
         KnByaHk8satqPIc0ufrZsSKPrl10GzwBUWDWv9aOA8FA0mQvQAkUcinRTgxt1mGYUxiT
         cJewkcdxoOgfKvXsDwhbCVw3xLPgfZzPOp8CZ3s2z1HQEPvRYDdjt3FTRN6bB1y1Ik1D
         4PnYZ+SQKfwevSjqvIq96X5ChO12tFIF7NsuEcIeCkPoFet5LgNjZaXFeevxdQ0wVTEj
         OG5mBZsvQJzVJqB9I5RHsrbiRKZpXbWeQYydgKrJtOJZUhXHbzDl8ijY4ctJwnHyjkg+
         5/Iw==
X-Forwarded-Encrypted: i=1; AJvYcCUYnN7YkiHU0F4qDhDthaRKmg5jHHjr/McKvd1FdBtGhgCmNCtlqx7XdWcTKtRhe7+rDzNewPR9Z6zw@vger.kernel.org
X-Gm-Message-State: AOJu0YxpfPdTyfJBws80N+wSmrMbHfgHywQ+cKgQZS0UOwHPco1soSwR
	mCqYpgKVkK0e8f8ZWxDvySsI72aQyZ/ITZnJ1dIN/G+vXtnDOaxgJdqGQt4ifWMIbkA=
X-Gm-Gg: AY/fxX7LugPkklhhgK9Pt0XlAwk46WwyFWpyoIeNrvgjWOCpY34TIt1Naq0OOuiIULA
	v1oPOWeTf8lGNIceNhU3CcUGwcrWmQAPo6hT2L3gOFyZRTuv1FgEYP7YCskCdDNx+P6jDYqYLJF
	Ygk59lCqo8xZYkjr7E6H1ERq80qTfVzjoffOW0fNo/XCXte7Knr7KpbvIMZyNulI6oQac1Ab/kf
	fPhios2+jJZ3CZYCkXTB9pmOn5afUXlrwHmWY0/UrqgZqcUdoYZXZo97M3Vucb9FoOIRTyHKy9K
	IihlecIRBeRHklCUhVYaFE+ObE1XyxnKEroVYPdz5n3xLx+WdvtvgoLVXqQqfPD5K4bZr+NVsnC
	dnZW3YVBGjg60tpsea/uCxwUSY5FzXrhNQnG1TnC4GmM6DFSmWLm3HXm59U7Zj/XpmNc0UU8Mc7
	BNZ1Dw7vqmVoCZOJTUApPSL+2kl2NEdpU=
X-Google-Smtp-Source: AGHT+IFKKkF2rQrNfKVm0xBIrXitMatKB3NKMQ4oAhrZw28JMRyqxQxPGMYW7R/yZLTYz1Z5w5dWTw==
X-Received: by 2002:a05:600c:a08:b0:479:3a86:dc1f with SMTP id 5b1f17b1804b1-47d84b41012mr26925205e9.37.1767794791482;
        Wed, 07 Jan 2026 06:06:31 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f41eb3bsm102686685e9.7.2026.01.07.06.06.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 06:06:30 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20251223152510.155463-3-krzysztof.kozlowski@oss.qualcomm.com>
References: <20251223152510.155463-3-krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH 1/2] arm64: dts: amlogic: Use hyphen in node names
Message-Id: <176779479041.1564227.9998045080717551889.b4-ty@linaro.org>
Date: Wed, 07 Jan 2026 15:06:30 +0100
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

On Tue, 23 Dec 2025 16:25:11 +0100, Krzysztof Kozlowski wrote:
> DTS coding style prefers hyphens instead of underscores in the node
> names.  Change should be safe, because node names are not considered an
> ABI.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.20/arm64-dt)

[1/2] arm64: dts: amlogic: Use hyphen in node names
      https://git.kernel.org/amlogic/c/125c3ceadfe02cd4917c5e0bb6707b37870449f2
[2/2] arm64: dts: amlogic: Use lowercase hex
      https://git.kernel.org/amlogic/c/7bcbedd64ecf5624583140faebfdb0e2e2f6b43e

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



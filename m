Return-Path: <devicetree+bounces-43310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 05ED0859EDD
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 09:54:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9B32AB21717
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 08:54:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 483C921A1C;
	Mon, 19 Feb 2024 08:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NM3ls2/7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C95321345
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 08:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708332875; cv=none; b=CI/wOEdFvNy52ci+mZVua29c0MzW036hi4bqZ1m1l8EtZSY4YI5D8IX1PTOYQAe0Q24B4FtTnHsjraUeyFU0eweGihMTBHnk5z2RFjTHgZeU8pQGlDyjL2jPYZNcYPo68e0MzsGijhW0HsYGzzRzix4ouEVY+Kesvk/7PRr/EU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708332875; c=relaxed/simple;
	bh=nBg4A06R/OUY1p3joIBcI8CRnrxw0fL2LoZhv/OrnSI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=nYQ+kSG8r9arH1nIG4ezaOcfDDDuzATpLdGp2lg8b2i3wIXBSraYw57iDs4m0f2yjmvBaxQ5YaWI0ZrFQ4vi93oGSyxlsAB7b4mArggjE0grL+Gt29T3DpeUBFgXlbpqvdig6PyxmHrlw7UTWIEkM8gd81I8XzGsXUNZTKehbGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NM3ls2/7; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-512bde3d197so76331e87.0
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 00:54:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708332871; x=1708937671; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Nbg2AjR83BKRqP6eesz1VFg3OuGIvtb3xMqeLGeGpU=;
        b=NM3ls2/7U5ir/2iheWhhm+vnXsc4m4oLuWqadAG+w/bTlhUTvcMYKMexA12nS0LmDn
         zdAeN89Sf91dNKyu9kArUf+eodsRYG6p8TRk/dRf+UxUVCJyeVxTKVuAH6np+zT/dABy
         3M8AJ5rVBSYJN3+XSJXF/H/xQhI+NEzVNjiattD7gjElI4hu5EUsuEmRGf3u+GMFy8RK
         4L/G2Yn97y6uw5HNOPqaTnHUN/Q/CjSBXhvt4sVAHIoW0J+Jbno6pg/eDH6GNhwmsOU0
         +HdrGhgjghBVIXOdI0PGi/v7UyfINPArGJRFDV6EsRJsQayV6SnHo9Pf6Z9djOflJe+b
         de7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708332872; x=1708937672;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6Nbg2AjR83BKRqP6eesz1VFg3OuGIvtb3xMqeLGeGpU=;
        b=bssNE4tBBYnUqvbDpqwDtPMkhddHmCYvunKYi5SHc4Io+FnGnrG1EU2yKqg3DxOTDU
         egnEKsfQDDtBlo8UJWSsA81uvhDRXXuwK7B4c0zNrnETkGdB7+wm4z/gdFpxh/RWq3qV
         cMcyqSB4LZNs71r2abndrig0vN1ez5xCDn3hq5pt+ENE+7Px8seSOwby4d+ciR+9Vu5D
         ISsIjNXh84RntHtqw0YxBvkPUKwOiicLnylh1GoOmrJ2rSYYs4vgOPdLLM007Q2T7x26
         ARgg390M3zC6n7l2QRVvwc7TwvWH8x92iytuBvNTIyDI4HbOwQlJeNCABvHgncEyC0ez
         b/+w==
X-Forwarded-Encrypted: i=1; AJvYcCXS9i68hLM7C1rcZvKQI8saj4EnGtLc7ohgJeRB3wE7arxYfKTpNCzNFav8GtHApODSK43hpgDF1wQaF50sxrwNOnpO67V18QCTpw==
X-Gm-Message-State: AOJu0YwgNoknEIihvMDA1UJDPc6euhZMOtLq6GC+2EwQCDapQ5Y/tvG2
	4yG9sLebDS4HXIS7x/R2DHfvaGmGG9U4CYqfZ8E+ggyFK6Jt7JjlQwv6KcubjXs=
X-Google-Smtp-Source: AGHT+IFX4/mGjG+vU95UUpnnLXRp/XwEI4DMPybRrGk+Qnnh13kjBBjoqh9gpDbiPP+7JCfYZqpAjQ==
X-Received: by 2002:a05:6512:31c5:b0:512:b773:2800 with SMTP id j5-20020a05651231c500b00512b7732800mr937004lfe.34.1708332871628;
        Mon, 19 Feb 2024 00:54:31 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id f5-20020a7bc8c5000000b00410bca333b7sm10516716wml.27.2024.02.19.00.54.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Feb 2024 00:54:31 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <20240213143217.336341-1-krzysztof.kozlowski@linaro.org>
References: <20240213143217.336341-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: amlogic: replace underscores in node names
Message-Id: <170833287080.1749763.10941075703798896000.b4-ty@linaro.org>
Date: Mon, 19 Feb 2024 09:54:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4

Hi,

On Tue, 13 Feb 2024 15:32:17 +0100, Krzysztof Kozlowski wrote:
> Underscores should not be used in node names (dtc with W=2 warns about
> them), so replace them with hyphens.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.9/arm64-dt)

[1/1] arm64: dts: amlogic: replace underscores in node names
      https://git.kernel.org/amlogic/c/f0ed445e7397e386264d4752a5eb5d2dfc7f7fd2

These changes has been applied on the intermediate git tree [1].

The v6.9/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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



Return-Path: <devicetree+bounces-228736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EF792BF06D7
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 12:09:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B5B704F18EF
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 10:09:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B0F32F6566;
	Mon, 20 Oct 2025 10:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iaTmQs8s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D92452F83AE
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 10:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760954892; cv=none; b=kdiMsR/DruNf1IOPZnjohI8wgixqbuKSMzuiKKuh1h8plYi+KxSJ0Hj1b8FFGyE1dfvtrwwT5ZLvhiOuevDOdt01d/FRvzxxqcm4qXPyD1eJ6b3frMK7ehOql8lt75Q7N4T+j0ysJQCy/F8mmHhsLZ8Eiv5EzXgF5aR9AI1HrqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760954892; c=relaxed/simple;
	bh=IthgwRg6yJ7su7+hxwU0G1XvJdmaJcprtOIDD6R14Co=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=l6abppB4AprOIDQp2/fi2lECIxiRBAfJXT4OD9Nx2aaH1TRQYzpVi0omB2owLTDznVCAB4hEFmV7gMhveeYPMwjpSojCG32Tr4aP7p3z+w1n0BxlJif2kupRlRWJNOh7KFLsk0Ay9zfTy/rJlTIwj05QNxAayGZJNwPC9dWaH10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iaTmQs8s; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b484b15e72bso102613266b.1
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 03:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760954889; x=1761559689; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ELGhRwkcey/M8p9/NQ4xSZezxHFCzELpwhxQQJfRai4=;
        b=iaTmQs8sGobgcCnAwOGcT2JMt3hGcDM2rPSWUTW1hga8LZ9R+75zYPYjbX7jjgpoK6
         xxGGF0MoeP29S5daUFe6Y7UMZZGOCjnYK7CZjFioe/glBogpjdOLXq/xKJ/A7/pIgFPw
         r/K1Z94H9ICDSPJyHI+itNbBjKgacdeL30X0uxDgGHWtJj9oeJd7uabpph0gOjivglKw
         2e7pZFgFSs1OTsh5lhftQBRx/MPk/ZM5/8l+nordHY7nbjIE62hJhtKA7yAkbxQ5ZKg7
         P4VAYVGV3s0WMixyh4q5nz1FImVxR5IKFGSBMJwNdC12Ui24JOq9cnKwMDoymEYFFJCL
         nZuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760954889; x=1761559689;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ELGhRwkcey/M8p9/NQ4xSZezxHFCzELpwhxQQJfRai4=;
        b=STQMvAfhhoY+dTvg7oG0Js6UP+UkSlsMqf+F/qPSf7ujeh8IRjSZKx1+j3J+qKIR9n
         AOGtzzV33EUhi/4Jp0ef0OZByuqn/Z5ZmerjWFLjXmRRSrtTv+ZrFVV5Kny7P+UQjAu/
         cxOcTbEGaZd7rB6PLLd5WsjDWn8GDUdz/o4TB0UQdTjeFzGkHC0dKFUWW6OJyhJAelYy
         U9ns/OfUoqu3J13kGbf6oDAFPlhjM+F7DnBXgcNF4aY/o22u1h99iK2LCareM8ruzcOE
         UKdVAHbuBreHxuXjb4NYtnLZCdunK5mA1H5dOTZ3mgL9O1YQKs2NXHcXSraaenNGE8kg
         Zd9w==
X-Forwarded-Encrypted: i=1; AJvYcCXDrOF5c//inX9Qo6nckZcoIgtKxrpfC6jq/GxyV+cPCeJK4uobuAh1hIY9ENRjoB/FcGzQwwzWz8Qq@vger.kernel.org
X-Gm-Message-State: AOJu0Yyxh8aKxmRBJKuh7v9Z1CvfS0O6beN4F7k6beevDDdLvYxi6qLR
	VoUomaPAizNQS3jR3MfNcTufgDpq/26m0CCpnPnusd/SZCy2n7hbwwgQBhc+CiOLfVA=
X-Gm-Gg: ASbGncvBHLl2Z3P8ndAvb1Y3m3pgIbZ0HKSGP9Tbtra6Z6npwISMV/ktis/2aIGyjzw
	Wiea7eNpBS4SO+/4VgEuF+todX16NfIpCYbaC1VTgSB7A53RLUsaCXanfGDhpo7+bvavQmzKJdf
	au+C4DBABBHd0pBmBM6RnHoqHz5exTnIZMBSEsFOpZNOw3AcYaAyA8JdX149GAZMA3B5hK14uBl
	TpYsTmaJUfjVtwNaKeRpK4QmcnNW8A1ZBqrNI56fb65AH52QyJNmSmg1NG49IezprR6ObtGVbrb
	mEoxKLkaCC1eawxshuwXE/UNGgMbbvKA17WvvgwG8HCp5utrNWNEnInmF4GHUraAIauCRDJnlkh
	BAx0bRtsi11q0mSycs0+1mP9sGb/IbVS5DA9sBOhmJ7Mg96Dhts9Ax1U5LxsrIp+1qoOOUfe7+Y
	nNz5beiTDns3uSE137V4PhF4iO2y0=
X-Google-Smtp-Source: AGHT+IHb4qKarfFb2e6yhqx9qlyNVzUbEwguNDAebFS+BWqgt85Rblg9ZZAJ2S/IaUQJYck+aE3lyw==
X-Received: by 2002:a17:907:3e98:b0:b50:5956:482b with SMTP id a640c23a62f3a-b6474b2e281mr817509466b.7.1760954889230;
        Mon, 20 Oct 2025 03:08:09 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb036846sm740987066b.54.2025.10.20.03.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 03:08:08 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Shenwei Wang <shenwei.wang@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>, 
 linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-imx@nxp.com
In-Reply-To: <20251009222716.394806-2-shenwei.wang@nxp.com>
References: <20251009222716.394806-1-shenwei.wang@nxp.com>
 <20251009222716.394806-2-shenwei.wang@nxp.com>
Subject: Re: (subset) [PATCH v3 1/4] dt-bindings: remoteproc: imx_rproc:
 Add "rpmsg" subnode support
Message-Id: <176095488745.45867.896865155474758901.b4-ty@linaro.org>
Date: Mon, 20 Oct 2025 12:08:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Thu, 09 Oct 2025 17:27:13 -0500, Shenwei Wang wrote:
> Remote processors may announce multiple devices (e.g., I2C, GPIO) over
> an RPMSG channel. These devices may require corresponding device tree
> nodes, especially when acting as providers, to supply phandles for their
> consumers.
> 
> Define an RPMSG node to work as a container for a group of RPMSG channels
> under the imx_rproc node.
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: remoteproc: imx_rproc: Add "rpmsg" subnode support
      (no commit info)

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>



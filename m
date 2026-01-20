Return-Path: <devicetree+bounces-257233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F51D3C31C
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:12:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EFC3D682226
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 08:53:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D8FE3B961B;
	Tue, 20 Jan 2026 08:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z6ch0D5E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD1503B8D6D
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 08:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768899187; cv=none; b=UPOclsP/Qcr57N5fbndEtQriaSqf0xXEeNI9L8UaNeBFI4asxGyFrpAerDAOUKzOWY3N1obzwapkSUXxI46HvhR7iwrLgdavRnkRatTZ0hs8U4Sr8vqYzoxlrF69k6gxTxnE/i2VaPZof1sDrdrbydYC9Se2l9B36CJha7YgE4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768899187; c=relaxed/simple;
	bh=/PeM/pmAXHztXSrIbNi1pUuEWCrS1apDJ7RRdvKA7QQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=B8QIZ00Tl+uorY7q5pCjpRODfpM2xpnpdC5ESBRfnAa19v8Dfd9QK7oBYi7g1oCPjdy5wjXWx/eciUKf1XuI9N1lGkrw/0V6/xUBT4MfQf/Qyw7pWCKS4DN+F4FVNtvP2PH+q7hDoYwIv5qz0M1m+Mq+rRGbqPtjCVxcN7y9R3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z6ch0D5E; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-435903c4040so162537f8f.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 00:53:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768899184; x=1769503984; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RhTNZPLJB74AIOTcNd2K19lHKeDsZdTgJx7+RGaFijQ=;
        b=Z6ch0D5E4ViS1NkblZAl324PuZ4rAN6oX6NnInZpEeQq5IguCQNt7InXBJLAuPhsZ5
         z13NDpg1svmC8mpKLCyLtSDEVNRP/Hk/S7tB9C+0hBBCIs3O2IH4CdAs/wZFD68gbek7
         63lBxByibkeUVVqcH/dGWsqc32yiQk/lLufe38y9AzH8gGM8/dlSPc8rJ6nD43WDccsO
         fC0OR4IrvhPtbPWoq0S0qYO7pk7tQTMmXqHbn9TrIoQV9t3MMytCmVnboBq/U4LD994C
         bBdfBCN328PESjay/EYKSi62hN4MUXjTLatS4wEFTnfvFKFidefBtkrkv6CaiTDfwS41
         NvEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768899184; x=1769503984;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RhTNZPLJB74AIOTcNd2K19lHKeDsZdTgJx7+RGaFijQ=;
        b=gXzVs47OKhdaRJfCUVtstbJJeW31tS1yMEgQ6cg+U1HfmR00WsKnrc33VMK7J0BM0c
         /8E/FCUX56vOmOrP2hjnPxfIdVMQuAchalxq3XTmLkmBX18l4UtYQ2Jaz4n/hYroZ5kp
         H9IIiJyCNwWoqoRTWnEPbIfEhTDuEZZ+aSYYO7N2iHacVTBc7vlyQA3OJsg4m9cv8Pvw
         5kcHQy1V1pRqQdFeWSTQIjCAJkFYcmo9JWyvDMm+svZDzNgxjjef83H5tmAUcyiKo2mo
         b+RgqM9DrYTIbaJAhn2V9rNjhVoZNwRF2YtTAUX5DKY4RpYrJ18CyTpyoHWq3SW57HUE
         i0lw==
X-Gm-Message-State: AOJu0Yyn5Ylbr8bI8FHPnUntvRvMkHkIwyLlIOLN8b6cU9A1aoDhnJbz
	X6fsb1Fm0/X1B1wqgzmrQMjsGHDb4F+MvCrXsTq1JkrJtG0z+JxYzRLi1Ctql44C/w52GsE/lD7
	IR+iRy0c=
X-Gm-Gg: AZuq6aJ/vRX+fTRjwNCmFvicsvEx+8yJTFlollUgiiuvFmHhV2QYB4nvtDwiBOBcnWN
	Sr/GATG57AfNssHY+p9Qkyu/WQVU+dZat4ssjZQ5BzPy58Uo9ZGP7LC2Im2iokNUlvleGCVA2Pj
	3sCta7qlAFU1tFjAkE45A4rnQNpcXbNGcHDXK1V1bs10Q04t31i+8YosXbYuDY4p02iowEabySb
	JS6tdgGRPPVbbHReKGS3NTWUiuOmcWt5IM3wtZkseSg1LW53JO4LqJ3MphSv+j+riysACbbt9BS
	Dnj0PkLJxISx/MnHFjSwLQtGgFVKRxxZe5Rk87OAr3RNrMvcgV/3IMZc6AvhoentYT5PL8b0kYf
	pEix3dkp4s0xzZikKXeHT5L+xMc49uXdUbH8T6q5bQjf+ZUHRgsG+WP4jly5SaPf9RQiA7kMSTR
	VzWvERzQbyKp2bHYS1ZNBFgsCHJTvEM/Q=
X-Received: by 2002:a05:6000:4021:b0:431:488:b9a8 with SMTP id ffacd0b85a97d-4356a05373dmr17993354f8f.33.1768899183812;
        Tue, 20 Jan 2026 00:53:03 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43569926ffcsm27597335f8f.18.2026.01.20.00.53.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 00:53:03 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Ricardo Pardini <ricardo@pardini.net>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260115-arm64-dts-amlogic-radxa-zero2-additions-v2-1-948bb0479a45@pardini.net>
References: <20260115-arm64-dts-amlogic-radxa-zero2-additions-v2-1-948bb0479a45@pardini.net>
Subject: Re: [PATCH v2] arm64: dts: amlogic: add the type-c controller on
 Radxa Zero 2
Message-Id: <176889918309.1477585.14101357068287603082.b4-ty@linaro.org>
Date: Tue, 20 Jan 2026 09:53:03 +0100
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

On Thu, 15 Jan 2026 18:52:46 +0100, Ricardo Pardini wrote:
> The Radxa Zero2 has an FUSB302 controller on i2c3 at address 0x22 and
> INT# wired to GPIOA-13; include a minimal connector.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.20/arm64-dt)

[1/1] arm64: dts: amlogic: add the type-c controller on Radxa Zero 2
      https://git.kernel.org/amlogic/c/2afef25cc448ada7c9a7771fbfe4087a9e1a6d03

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



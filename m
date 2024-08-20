Return-Path: <devicetree+bounces-95122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FA095824F
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 11:34:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 921FD28204D
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 09:34:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3698B18A952;
	Tue, 20 Aug 2024 09:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jFc0bSXR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 871E415A864
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 09:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724146467; cv=none; b=pwqAjUauRhj+AlFjigJNu7RYP4Pzz8JKPsAg/pKiqUhgQLd3WVoiublvmr4Wpo5iVJeiiJHr8GTSOZ4iZBo/oRqqatiXrOhlAnwrqkNovWHkF1wMNm112QNQFO5Lt/Pu/i5oUzLBtE6kiBN9ekrInyqzR7kCyQgHTMTkZqRM8LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724146467; c=relaxed/simple;
	bh=Cd3m6sDP+PpZ5ozSxzMnm1AaYM8h0uJ0cyLb2lStyqI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j5PxMxSVm8mU8u0em+4k8a1opk+Nydm46rTIywsvUw2Bo3VmfulW4MjbwhuRjUXf9bLojH3Vt21Ac5ER58F3f30SBto9i+/RN8lB9+8ipu/Fbp5JJS80224KDb9IbO59Q58AjguDsPc0qMrnVOW0crFMNUgE5/8Kbd4kQZr2Eiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jFc0bSXR; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-e13cda45037so3435436276.3
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 02:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724146464; x=1724751264; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aSXCAFYTvpfQfHjHP6dIA3NLVm4vtDOO89IX3k2TK1Y=;
        b=jFc0bSXRYMyRT4kmX/VXIQGj8D55Iig3y/38w2irmgDjevsm4/Pola2AyYg6kKGSSV
         xFfPUywFgCDQPHOvFpKUtby9Lv9vPPLr2nNwFCMgQNiZ3ubNiGvgCFP6rdsibsABPK+P
         1QBrYRvI1hdwh4cnyfsrapU6FwRZTT6WEpF94t6pZo0D5hVAK4Td/eJd1vDc3K7dKV29
         fEKoqg0x20Jt3Rx/eRnlDK8nBPU6MYC12qCaxDDPzWd7UTvnmeS6ZrQChF6vFv+utzBY
         gfJpe0eJCDS1oRYtzycTbar/ixfiI48HEwcs9S1I/WZma6JfZnKwlAWLGlh3fhLfFUp+
         E6Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724146464; x=1724751264;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aSXCAFYTvpfQfHjHP6dIA3NLVm4vtDOO89IX3k2TK1Y=;
        b=Wq7yUnrRuT4zMm6hziutj5hpJu+5D0T/PEmE15lOapxPdxfaeIPtvoyEj6upezmQM+
         /z+5WKPAv7mltEbQqO/PU0pbhWnnv1E9dbWU/qF/EPJHv8KzC934IpcZwNM2rI2U8Dzl
         zsT+2YcybzZnfZg2Zp0zAub0yAecfFx6Bqgt+eN+GquJsapK0+LGohyunl5rFVhMkCKx
         0Uml53DsgY6T7VyJlp+0ADjNJ+BOVBmtM1frPgbgCJj0hBo2GOZ02JXg8ie6I/4+wyhj
         h1Sg+M6P5JeAyXHMuU837rel1KowMHEdA1PuMG0r5nDGaWOCYZbOJMRrZmh457VWkjav
         1Pqg==
X-Forwarded-Encrypted: i=1; AJvYcCXQkBDu+hgDulVPWE0beYivIMK/7JnSBy4nnkyfgx5FR99S+2Kb8QdM9GPPtIWdJMllqxaLgFj3fyReBg2CYyDzczA9YTa/KWCvuA==
X-Gm-Message-State: AOJu0Yw1y9kj0Ez3lixJPuMzYIFH9JUEdROHNf+L7pEMei4fTMdJpk7w
	dSlU61td1T7vf1v9bhb/tGDvg6/Dxy2S8etBcCHEh4ClSaxuCutPuOnUne9flxpg/W0LDTV+f5z
	uz9JmvuouCyoboSgZ1/36lO/BhgfkxjF4Cz329g==
X-Google-Smtp-Source: AGHT+IFiA3AjMQPNBeiejtIMDCLmON3LWIAb/PR9mOtMqct6XG5GSoya7WrnNNdnhEBwTarC4WErTc/FTZbw7fqFJDc=
X-Received: by 2002:a05:6902:12c3:b0:e0b:43a0:3ce with SMTP id
 3f1490d57ef6-e1180faa0c8mr13052250276.57.1724146464513; Tue, 20 Aug 2024
 02:34:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240814222824.3170-1-detlev.casanova@collabora.com>
In-Reply-To: <20240814222824.3170-1-detlev.casanova@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 20 Aug 2024 11:33:48 +0200
Message-ID: <CAPDyKFpdCKkwVJ9+rOAw4oZOjaxd5PYy-sswTRk_o-MCL41KyA@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] Add power-controller support for rk3576
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Finley Xiao <finley.xiao@rock-chips.com>, 
	Arnd Bergmann <arnd@arndb.de>, Jagan Teki <jagan@edgeble.ai>, 
	Elaine Zhang <zhangqing@rock-chips.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-pm@vger.kernel.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"

On Thu, 15 Aug 2024 at 00:27, Detlev Casanova
<detlev.casanova@collabora.com> wrote:
>
> Add support for the power domain controller on the rk3576 SoC.
> Patches from downstream have been rebased.
>
> Note that the mentioned TRM is not publicly available.
>
> Changes since v3:
> - Remove unused g_mask and reuse DOMAIN_M_O_R
>
> Changes since v2:
> - Remove unused delay for npu and vop
>
> Changes since v1:
> - Rename rk3576-power.h to rockchip,rk3576-power.h
> - Add memory reset support
> - Squashed header files with bindings commit
> - Updated license
> - Fix commit messages for subsystem.
>
> Detlev.
>
> Finley Xiao (2):
>   dt-bindings: power: Add support for RK3576 SoC
>   pmdomain: rockchip: Add support for RK3576 SoC
>
>  .../power/rockchip,power-controller.yaml      |  1 +
>  drivers/pmdomain/rockchip/pm-domains.c        | 45 +++++++++++++++++++
>  .../dt-bindings/power/rockchip,rk3576-power.h | 30 +++++++++++++
>  3 files changed, 76 insertions(+)
>  create mode 100644 include/dt-bindings/power/rockchip,rk3576-power.h
>

Applied for next, thanks!

Kind regards
Uffe


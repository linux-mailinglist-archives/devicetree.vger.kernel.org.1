Return-Path: <devicetree+bounces-225791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 26179BD1065
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 03:01:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D51224E2005
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 01:01:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 367C51F181F;
	Mon, 13 Oct 2025 01:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yj5gAkhf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6CBC1E5B72
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:01:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760317300; cv=none; b=VtNu+aE6KMZyMPtvfh1b+Ljxw3qTkM/JDcnOslJhQTEZ954IEJohWUTprLEbsJD4NWX5CDxOFZL/Dr/lLyQ2Ik1K7ilAwYmz2T1vi53X0rqs5DR4g9t9ldagKMYBmp/4Tg8npXM5+pnAYh6SpufRIysCzEZ2bJ6YNJwB77IeeHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760317300; c=relaxed/simple;
	bh=vblrrA1PTLfQIEhi9r3mgnNvhMqCX1+5f453+YraP/s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=kuCCCOQbNMkuxf+WMyGRwsSBF9Bsq+fg8FcVQCpdUJsy6/b+u/56VnMDOb9fgvP/QxE0b4WD5j3zfH1v3gxDE2J5I2fmU3yF9mxk2rSNfcy0UZzSWEl5GL+ccOL/JGGu08MZoTv2hvC9c/4oU3AwBMK0yYtstTcFUz6cleMqHMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yj5gAkhf; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-79cf7fd45afso10098b3a.0
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 18:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760317298; x=1760922098; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LUCP4LKA1bDFYppqppgto8MgAIuMCRJ1Lo8b0QTm/8I=;
        b=yj5gAkhf6BBL0MNXA02+hw36MWK4tBitSyoh4BfsDTi+al+MuFeBXCdJEeAkTzMm1s
         MignmTDKUFtgYQA4KjKucC8ryLXj5MsNwh6q94RyF87l0xrWtCogYC1G0Ax4wMczW2YD
         4se0k6ekipB2gJoK+COiIUwM/JnMGwoD6aRd0XVzhUYWe4Fs2bPzEILQyQ8CW3KUIAf8
         zNAkScD0BZOn1HUV+Wu57bKOD+NMx+wIy8lAWtokhey9J+O4PuUjFngMv4tmbA2trDJv
         9fP5ZEqjeq3neRZBvXnHwXBRWiRXqVd7IhsOfsqdlAK53e8JRllgck/vXAcGR5/yOKtK
         t6Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760317298; x=1760922098;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LUCP4LKA1bDFYppqppgto8MgAIuMCRJ1Lo8b0QTm/8I=;
        b=ShVPVItGcGlqTT1afPAWhuh5D+pF5ABi+F4/Cv96nu2bIvUZUukiFUd3gbldqLrqe5
         JjQSPji3QTxn1oiHNvNoRT/Q0wYXTrP04VNTZeODBOzPpjcESw83Z/i6JfLpSS/jQWy/
         FhB+UKDJVpm8C6kujRbay3+8ocPGNOtwvMNpAEYs8tLENUx8cNMUJPPaPAzIkevd/Gr6
         guO7SDmMqEzpZZ/pDjNvuwbwP7E1pUE3eGRShqzwkUv27NNTPEvZsOnm7sixpthU8abC
         tBKlQ3i18WulMGCMQI/8pLyYXJcvxCl9Tw/oU5fibeFSToiO2600wJQ+//eJRqwWQ6dG
         IP3w==
X-Forwarded-Encrypted: i=1; AJvYcCWryxdYcYGTvdFct6ojSxUy/cgtwGITxuksNbA99MhtoTHS3gKEmk7c1CJWkv31AVd8T8MEhvwqaygW@vger.kernel.org
X-Gm-Message-State: AOJu0YyWYKk6K6E8Q2TPBoySibLkD/rSTzmx+1saBjYOALsIVknH+L5j
	mo47e3OEzrpvx0Si4EO7sit08T+6/fxYUWmsDjSnzeKKeh/mIpZ/aFec0c32GN0BkYU=
X-Gm-Gg: ASbGncv0LvGPq0F57kcApJ3BMACJDo/Kcus45N2+aypr8qu4bF9eAOsvoQAxwqRVJJB
	quDKECJYrEjnA4PRCCNSP4ZSxSXMbMKaeitXyMTBDgfKG2+xqL4GLSALfaQJ7vW2Ajo0/qm1Dm+
	GAwScZdegTkolFACz+K02FjK8SC/d44k+v/euZTU7+MC1PytnZ1xl6uIV5cqPwia88K6SnY3cBH
	mjDZTVOMtIvakQSlkwITyntR1EdWU2PYzhbzSGpXF7A1B7exzYtzuaVESp3v3dUvREgDknz1Dw0
	14LhlXSfbPem0yhP2MMf/+0uNPDLYG7X2vKnjCstHTU/YrL+yTQ0a0aTXo8y5f8F4UikXm4FPhk
	GU0ontBmbS6Ub+j0K9C+b+QPKRrikc8UTBKVFi1BnI4CLnHKtm+h2qV0+nZ+17/gB0vHMxNQ=
X-Google-Smtp-Source: AGHT+IE1B9hR89kcu5D4i0PCjI7kQyz2poCnY9xOFDtLABQiwPAkgeCMqEBV5hkmUp72wJBiyTt0Ng==
X-Received: by 2002:a05:6a00:b50:b0:793:1b79:ee5c with SMTP id d2e1a72fcca58-79387c173d0mr11494869b3a.6.1760317297843;
        Sun, 12 Oct 2025 18:01:37 -0700 (PDT)
Received: from [127.0.1.1] ([121.134.152.93])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0e2ab3sm9512805b3a.64.2025.10.12.18.01.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 18:01:37 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: krzk@kernel.org, s.nawrocki@samsung.com, cw00.choi@samsung.com, 
 alim.akhtar@samsung.com, mturquette@baylibre.com, sboyd@kernel.org, 
 robh@kernel.org, conor+dt@kernel.org, sunyeal.hong@samsung.com, 
 shin.son@samsung.com, Raghav Sharma <raghav.s@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, chandan.vn@samsung.com, 
 dev.tailor@samsung.com, karthik.sun@samsung.com
In-Reply-To: <20250925130457.3476803-2-raghav.s@samsung.com>
References: <20250925130457.3476803-1-raghav.s@samsung.com>
 <CGME20250925125616epcas5p37346312c6a788a5398212f671d8a369d@epcas5p3.samsung.com>
 <20250925130457.3476803-2-raghav.s@samsung.com>
Subject: Re: (subset) [PATCH 1/3] dt-bindings: clock: exynosautov920: add
 mfc clock definitions
Message-Id: <176031729214.32330.12498017940011083883.b4-ty@linaro.org>
Date: Mon, 13 Oct 2025 03:01:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Thu, 25 Sep 2025 18:34:55 +0530, Raghav Sharma wrote:
> Add device tree clock binding definitions for CMU_MFC
> 
> 

Applied, thanks!

[1/3] dt-bindings: clock: exynosautov920: add mfc clock definitions
      https://git.kernel.org/krzk/linux/c/0b94201e327471d034d81cf5fd2131a5529eea19

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>



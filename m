Return-Path: <devicetree+bounces-170556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BC8A9B4D1
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 18:58:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 911451BA624B
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 16:59:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BEA828E604;
	Thu, 24 Apr 2025 16:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a+ZCHHLM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA9A928E603
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 16:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745513889; cv=none; b=fFRRZdV3BK/Ci8BjJ+zxBpuQVpLHsIXobIaQ9AjylZmVdmaMZLYro0Fcz0J7lxfAcViqmHJHuyYs0qeG9pLUU68CinkDK4RoKt/bNe0fmFEB6R/fpHiZfiCGhtMyGt9ztXMky+l2Mj/OgzRBbiTzuASLt2jKXzZ4bhBPAjsJtE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745513889; c=relaxed/simple;
	bh=rtAVqmNrB9xPnZ5FHhbSAWb5+zNZyKeSQ6jXrEjO+Vw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ukhZahPJILYhg7g+uE8ylPrkEtmlbMjGWM71czKSraWUwfv7XQ4sfD/8QwbZQ+rC3BKZ9Ug2yr26sXhRVxCR2oVG3ToWvsMo6GyfS4lne0Ko/SsYz7tGPN0Q3y8NlWZznMGexATLNqc3ARgMG1lOViYyOJByQpsy8srIxpCrLkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a+ZCHHLM; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-70825de932bso21408677b3.0
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 09:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745513886; x=1746118686; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9NMqKoMnNFSWTlyWhn3Q/XhiI0OW2ljHDhbH5AG9KlM=;
        b=a+ZCHHLMzITh7sbbShkpgZe/DlJiKlxYtvE7EyrqvclbZGLz38eZkY3+p9oRhL65Ai
         U/cNtsf1jPvDE+RuzPuLQHve9gC4lY+sf/G6X5qxRJWOKkjUCKDugU5qm3CLrQUCR0Ax
         CVsDBKr6y+Zekyi1Pw1V09+plKECNsmbORuy/ym2ndAF6fOGFJg3Kbp+d7h9rifm98p2
         uQFwZ9KQVZLc8Dbic2ymIgQYdFtgE/DfPCRs53nB0X1rL9taiy1fkgmx6e4ScUgHd/lh
         8sdA2Ci0mnZUFEtEgDFSxclx38J2qBzZ4I1lsaEGME7NO7lU3ePOxAemfpgoyZYkRHwy
         KESg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745513886; x=1746118686;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9NMqKoMnNFSWTlyWhn3Q/XhiI0OW2ljHDhbH5AG9KlM=;
        b=HazrBEnm9LsvMGrmR/hL/Vhj8tfgZFvXwTcpmQKXLbp46kqhpout7NWED2ZS2lxSJ1
         Oo4AAxjsMZoBj0LA89nrPaTjlC+nUZ5Te1iBLq+7tXteAqB1ggykoSoO0eMdJOWoURRi
         MpMhtlKLSNtNbByZSTCIWhjPl/gG01UaBr9SsJDeuEOa1m6vDfBG8eM73EAC91/5v0KN
         9UNpiJ85RMNhsdJKZscjs88yHI37RIwDC+k8ByFuS7Z8Jf9olPlE9hyth8MMY83+4Moy
         +HvpgP/QGUbtcZ19AUK4LbLaCmy7dgiBq4ud2mSX8xDqEYm/FPin1u1vVuQ9oSRbqotW
         89Zw==
X-Forwarded-Encrypted: i=1; AJvYcCW3YVZd8R/RmGiVPLIRAXweYIgpQ6/JRCe9pfH+LNuPnXLfkxn561zIuBBM06lyafyPK3fsTVocjtHw@vger.kernel.org
X-Gm-Message-State: AOJu0Yzuqzst05axpBkAno/kie/s3L/196mFY0XOX2ZdHiAoQkjGByIC
	PGUBsdciBydNG9FYiGl85f6iRM/rRabUmT8bu5LBv4x+bjI6MeGm730NIryjKzozGX/PgB83/YT
	Ds0MY2YbzokAAwHQcZ+QoefBbJDqnzeuvgHsBeA==
X-Gm-Gg: ASbGncvtpsC1ByWHvqk+1SczF/I9FPRJWNhOjLld8SbmZrDW7XxzgYS23wWdoL61d6j
	ZmtjXJa7V1RrZWvKkgxrZaXgnY9KuR+AK2L3JU6OeheTaSaaXPxYTOVPv8lSqA/9YbIFFoUkGlY
	WLUjq0Y+OAWRKl1LG9vAzGr9o=
X-Google-Smtp-Source: AGHT+IGzISjUKJ+K5wuOJsTYSGvusY6lT3HrRtCkiM9BkAiKkPUr9XSSPqqT2FqaoFnPU3+9MubV6/YFgwTUN+PxwOk=
X-Received: by 2002:a05:690c:1e:b0:705:edab:f36d with SMTP id
 00721157ae682-708419d2878mr40115147b3.16.1745513886578; Thu, 24 Apr 2025
 09:58:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250417-sm4450_rpmhpd-v1-0-361846750d3a@quicinc.com>
In-Reply-To: <20250417-sm4450_rpmhpd-v1-0-361846750d3a@quicinc.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 24 Apr 2025 18:57:30 +0200
X-Gm-Features: ATxdqUFyM7393hfMEevst8AZRjE_r2_H3CHFnzETCGV2jO5dz39_5GL4UZtVF3k
Message-ID: <CAPDyKFqD6DSad8Jfq=qhZ9GOdx76mrKJPWdS62A5O6uRSCS+qw@mail.gmail.com>
Subject: Re: [PATCH 0/3] pmdomain: qcom: rpmhpd: Add SM4450 power domains
To: Ajit Pandey <quic_ajipan@quicinc.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Imran Shaik <quic_imrashai@quicinc.com>, 
	Taniya Das <quic_tdas@quicinc.com>, Jagadeesh Kona <quic_jkona@quicinc.com>, 
	Satya Priya Kakitapalli <quic_skakitap@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 17 Apr 2025 at 19:08, Ajit Pandey <quic_ajipan@quicinc.com> wrote:
>
> This series add power domains exposed by RPMh in the Qualcomm SM4450 platform.
>
> Signed-off-by: Ajit Pandey <quic_ajipan@quicinc.com>
> ---
> Ajit Pandey (3):
>       dt-bindings: power: qcom,rpmpd: Add SM4450 compatible
>       pmdomain: qcom: rpmhpd: Add SM4450 power domains
>       arm64: dts: qcom: sm4450: Add RPMh power domains support
>
>  .../devicetree/bindings/power/qcom,rpmpd.yaml      |  1 +
>  arch/arm64/boot/dts/qcom/sm4450.dtsi               | 68 ++++++++++++++++++++++
>  drivers/pmdomain/qcom/rpmhpd.c                     | 16 +++++
>  3 files changed, 85 insertions(+)
> ---
> base-commit: f660850bc246fef15ba78c81f686860324396628
> change-id: 20250417-sm4450_rpmhpd-6a74794d0cab
>
> Best regards,
> --
> Ajit Pandey <quic_ajipan@quicinc.com>
>

Patch 1 and 2 applied for next, thanks!

Kind regards
Uffe


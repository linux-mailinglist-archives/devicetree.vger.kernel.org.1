Return-Path: <devicetree+bounces-56855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BB989ABEC
	for <lists+devicetree@lfdr.de>; Sat,  6 Apr 2024 18:08:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8A1921F21CE7
	for <lists+devicetree@lfdr.de>; Sat,  6 Apr 2024 16:08:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E1083BBF1;
	Sat,  6 Apr 2024 16:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pVaYGjZN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515D23FB80
	for <devicetree@vger.kernel.org>; Sat,  6 Apr 2024 16:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712419681; cv=none; b=hMS+0eld3QBzpC77pu+mMXada9j9EgJplEcGqHkPqcSn9OndigKwqxSVjyG2kP5RmY2dhADH3k3nKBJ3GwK+j4xxaUoCg9W3Ni9sAc9f7PlylXlkS/00fXZ4Lt0iAIXKc+5bKYZd21mkLlBiF4kv+StCEFe9YAdHBkSQcIOWfEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712419681; c=relaxed/simple;
	bh=Re9aog4YI0eZKksmQyEgqtuyaTCf0OysxZQoXoVWlyI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rxWTXYvBevR3D+7n2ow4MiKYaWP8ArXUwdolhCut3P/l+Q2FsfoFknzhcfudZI2sbNFqAv1LHeoILeusKxdxklJCUYIELfs7pSbCCarRq+YSb73wpLfoQbc2Rsx8eFFfwwCtNQX0WZUsTf12uX0Ga8EgkDeE88hemS5031Ngk3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pVaYGjZN; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-617d25b2bc4so15889177b3.2
        for <devicetree@vger.kernel.org>; Sat, 06 Apr 2024 09:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712419678; x=1713024478; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xxhiT4mz7EkwRe7mA3Y1GYf1RmoX1+AQ0pJ6CUbqHqM=;
        b=pVaYGjZNljmYK5haX5Hk9nYOp6BhsAH3mdQgdq+OqJyWFba0DR+R9VqzxnFXSdNclr
         d4P5/y466v75glXTyZK7fS69xlZyWkVb+Tl525LxKAJ8w7dwXijXva/CWI41ndNHwj+U
         qkj2yhQbRvZdxWFhO2Wgta9gaoWqkX31cdxhBA77XboKgU0xzLd8OqVYgTXEJN1M0Hn7
         KObLOcVso2E9XEcJUsdTazCSdr3EzTKdjWgK/D3mPuJsu8e4KMe/VemUM28yChFKQ8Hv
         5ApA/eeqDanfOr0JAroOuWl0/QxP4eCJHfdFH+ppepNL21sUscTrU9R3ZV/eomiLkuOh
         uD/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712419678; x=1713024478;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xxhiT4mz7EkwRe7mA3Y1GYf1RmoX1+AQ0pJ6CUbqHqM=;
        b=iazafE0VjepHEE4UEOCUYW3/XmfFmKiGOYRO/9xUKntkrUP/s60SVguUx8gJfhpgQt
         CtaGLf20dgtIcMmF6jkq64rU+1DNYLi9r4b09p8x18a/scQKbWy/bJlanXBfHqZOaWrL
         Oq36z+TglXmS93EhFuEMBOmxOdV8eiA9R6qEHVNUpIyfqzp1BVbGUYg7LyVVK/K+t+dR
         DIhxuIN4POQjB1jNKK3mclIDW4TUIB1a3AOnU28axwWI87AC+EtSWWDIpE1Ny67LAtTt
         YUj82x8EtU5YikMdlb370W8/rVZVoAceAyfYC14pKG9Jy8+zl+AwwQ5u/Y0imCh3SS8k
         CRzw==
X-Forwarded-Encrypted: i=1; AJvYcCVvAOawaHkrxAvAxU/hAvIRlWhD4nlbVJ3I8fGeZorJ5KFVk9J6I6oiZ9V7dQUhcnKpbV/1TO6VcX8aF002rh+DUmD+2PGGsuj+AA==
X-Gm-Message-State: AOJu0YxgDmfvfEpuiMs0nBnyavQqaE781FENdY44tDcGgRF5lHgu322J
	aSSTYoCODgePS5tKSlA34i5aZBTpV8IdMHAUbCtQkDO322fsXxl4hjyj+4Icldm917N86yFQ/0r
	3V2Ll3HIxB95Ddl4USsakdhGELo+EJ64euikMHw==
X-Google-Smtp-Source: AGHT+IHggO+6U20SEYFId9dF+T2+hCDTSyO2Vax1gDweglAaFNbjoPCJbiYC8M6TObeewBzJ5GyPc4eC7fPDozv2hHQ=
X-Received: by 2002:a25:6a46:0:b0:dc6:2e29:4262 with SMTP id
 f67-20020a256a46000000b00dc62e294262mr3611046ybc.58.1712419678311; Sat, 06
 Apr 2024 09:07:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240406-shinano-vib-v1-1-fdd02af39d56@z3ntu.xyz>
In-Reply-To: <20240406-shinano-vib-v1-1-fdd02af39d56@z3ntu.xyz>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 6 Apr 2024 19:07:47 +0300
Message-ID: <CAA8EJprxuhE5BNw4LMUkjF8WPi-oBzY5t6LrnN8yvjfguFPoig@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: qcom: msm8974-sony-shinano: Enable vibrator
To: Luca Weiss <luca@z3ntu.xyz>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 6 Apr 2024 at 18:36, Luca Weiss <luca@z3ntu.xyz> wrote:
>
> Enable the vibrator connected to PM8941 found on the Sony shinano
> platform.
>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
>  .../arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-common.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


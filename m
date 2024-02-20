Return-Path: <devicetree+bounces-43740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D16F985B6EB
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 10:14:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 744391F2292C
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 09:14:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A517C5F879;
	Tue, 20 Feb 2024 09:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P/8qkDYp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E90665F54A
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 09:11:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708420289; cv=none; b=kHZQd+/ck676T2XGkjg2oPh3ux/sZqepTcEAKCnvhFqLW7dyx37FCUfxe1aNPaNbBr+2Upza2MDKrbr3mZwj2byctqkK7c/UZFEyBRPHbTUfcJT4CGMC9Paw2RpVw+zrv/1HultjFl221fHOZ0BqdoAgHU7ZolTWakvNJZdmwY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708420289; c=relaxed/simple;
	bh=+RufAobQ4qTpp+zEw1siszXvlyI7TWaehz3HNHA9mNA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YzOCBzEYnsSE/F7KiwPwd5ePOSXJzD/6O45yCm4L2vvdrpYlOOJFWhnJUqY3Qfk47LXytbnbElyBhJ+NMOfDYl03g09oGfWyfclikmAPt2UkDLxKb6nJsr08AN1kICIxMlpOITLtV9tyIvvmM6pNMbBoRBtB7iO9+53nxJ9YU0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P/8qkDYp; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-dc745927098so4607080276.3
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 01:11:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708420287; x=1709025087; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=i8KpvZ9x6Ln7Vkr/szsabBYktK+hPk8mYltNeiqKLU0=;
        b=P/8qkDYpUAiBQW3v6QUdPLXJuIfz9ShyEl49r4+OP9Cs7Vn+YbiaOeYuLqjZCyjZg3
         2cdsGjNSEdgd9htuacMYncJ1Pus6OF5SiaPPmrBNqtSB0vvArroFYxjH0wZrMZOiJcgu
         LJ4iHX/sIcMJkD/eiFkleaP258giLHUHhDsRwPvmqGPOZQosdd0hJhHR01A5brrNmL4y
         WbJA0uU+EIDOLEhvSFzydyXENNQiKVyhSAKAkBq7AYwxoSBSdbd9S94gn9cAz9bwQ8O0
         5a4zm/4S8VTuS5kQuNdngneHvd7zu2CmTnikg8NjRbdh1rsorTDA0lJ54g88FcVrUGMi
         AJZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708420287; x=1709025087;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i8KpvZ9x6Ln7Vkr/szsabBYktK+hPk8mYltNeiqKLU0=;
        b=PS/Yt915sA8vW79LsE9ZAxYfScVoODppI+/sFV9HMUHA2x7uLj2AXkJMjtqK5vSbow
         ECfbun/+H6LSww14jy4Fbw3f4bD8FL6tkA+FgHmDeI8+MiSygduIbDTa1V49NGlUS1ku
         FB5lnl/kS0YcbkWJvqBLsI/wDjPi7CU4XmguOouGA31zH5m3Np0RNtsRjY/D2q3hAT+j
         dmCYK3yCotH/mKPz2SZKM+URwJSvSIkLLFuX0cXrYVusJXp6rq7MCV/Lb0f40y1mQ50O
         6ylB0rGul5hmn8TWihiCKyhwtT4w14dZZgMIzu0e5FSrKYeZ6+roGBubjXMxyKVZ0cfA
         KWFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOc8LXVcj645D1NaR73fIozhKjNzaYufXVkIBygpAhgg/VkDJ5bTDRLJL3Eo9vKbLGghCimXF7uMmOioyAthU5yFhvzGoIECA8Kw==
X-Gm-Message-State: AOJu0YwGRmD5eBU6DNFTnl8ZIbwU+H/ScHSGxFrLwEm6abZ3i3decaoo
	oWvX9oQBiX9ZGFFEbDxHo4gu7dxFvkmJZY/hD5nzRWpBagPDCK4JKhvGbz1UrfUPars17FS2kHV
	4ryA46SZU1/S18z0gbOSIB4RG0D8NuujQyffW3g==
X-Google-Smtp-Source: AGHT+IFr51wnhVj35YnYqgfrkAMXo2Zn3IIpyyDexqrUDauTmbFB+nWtVWpiT6uii2V1W1tf977xLpCHWTCepL2tI8Y=
X-Received: by 2002:a25:d0d6:0:b0:dce:1871:3d30 with SMTP id
 h205-20020a25d0d6000000b00dce18713d30mr8739458ybg.21.1708420286855; Tue, 20
 Feb 2024 01:11:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240204-qcom-drop-compat-v1-1-69d6cd92aa0e@linaro.org> <ZcijFk9GcgtVoXoV@gerhold.net>
In-Reply-To: <ZcijFk9GcgtVoXoV@gerhold.net>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 20 Feb 2024 11:11:15 +0200
Message-ID: <CAA8EJprKfMGTAtaMm1YoioRLDOtjXQ4XGm8geURB5WVXdYUK0A@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: qcom: drop the superfluous device
 compatibility schema
To: Stephan Gerhold <stephan@gerhold.net>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 11 Feb 2024 at 12:36, Stephan Gerhold <stephan@gerhold.net> wrote:
>
> On Sun, Feb 04, 2024 at 06:56:35PM +0200, Dmitry Baryshkov wrote:
> > The idea impressed in the commit b32e592d3c28 ("devicetree: bindings:
> > Document qcom board compatible format") never got actually adopted. As
> > can be seen from the existing board DT files, no device actually used
> > the PMIC / foundry / version parts of the compatible string. Drop this
> > compatibility string description to avoid possible confusion and keep
> > just the generic terms and the SoC list.
> >
> > Fixes: b32e592d3c28 ("devicetree: bindings: Document qcom board compatible format")
>
> FWIW: It's not correct that no device uses the version parts of the
> compatible string. There are actually two boards documented in qcom.yaml
> that follow this scheme:
>
>   compatible = "qcom,msm8916-mtp", "qcom,msm8916-mtp/1", "qcom,msm8916";
>   compatible = "longcheer,l8150", "qcom,msm8916-v1-qrd/9-v1", "qcom,msm8916";
>
> I don't think anyone is actively relying on those, though. I guess we
> can just ignore them or even remove them.

Excuse me for the long delay. As it was you who added the
longcheer-l8150 support, does it require any of the msm-id options or
dtbTool (original or modified) processing?
If it can work with no additional tags, we can drop these compatibility strings.

-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-89050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CDB93FDCE
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 20:53:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C0CCDB21560
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 18:53:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47076186E46;
	Mon, 29 Jul 2024 18:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R29XOyCo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B227217107D
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 18:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722279228; cv=none; b=Uf8k+e/YUgi9tX5qB9DIPCK7I+dJs9s8+vofrg6VTzC5BZSvLRawHr+L5CcWbJDzf0wS4cgpwWXe2r+/AUZpDA6KAise6oCvEvrMXqkel2A+lQYvtcCgtNujQLVVeqqIv0p22kj5Nxh6bfCioKt0/jOTHQL7Bp1aUL/XM6Ggmf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722279228; c=relaxed/simple;
	bh=8Sjx8Obls6gX6rSbN48TLHFUDVIzxgkNR+cTsGWHTvc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rShgewclwSvzJwvul5otqiXF+CK7CJwPF8vUuFk57FeiCcIFJOYFY1qYuVjlUj7vomqKqQ5+bd8ygpz8iMLYA8NF4X5NtQQoVeGmF31j9JXtP6qYtTeA86NFolbyRW4/7Kmiit0LzsWwIfieZ4anMx20393B+8dtJgeplucxuNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R29XOyCo; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-6510c0c8e29so23040837b3.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 11:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722279226; x=1722884026; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=21Sbux2VhZeoha2Iax/qNcis/EQe7uYNS3kIJS0grv0=;
        b=R29XOyCox9MUv/941ZKCgGelWYa2p5HSaKGcwkypkIGKYypVUWLOArdTZXLba6P3KI
         gF6+qfA+KjrAFGQfQyFRXdOM33y+Z+Io/iPbNQCXqcSVNr+xSnpslxzcHZepAvSqqc7P
         Y6DtTc1FOuxbHqunv9xkgFmuF/9pb7D9WR6n/i7SkUqcI5sA9S0Z3xvsFYNTbawoEbE2
         aXFVjAjp64eAXhoRVBs0OCesPRgzkLdCoIMUBINEngmxmqfXCrZCNbesz+JsPXysDGCk
         JwfliObl/4WCABTgFJ7P+Eh8f1cqKUbqEoK1RdyvZUQkiAI4Q4zHCT3XL5FJOvg73oay
         O/xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722279226; x=1722884026;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=21Sbux2VhZeoha2Iax/qNcis/EQe7uYNS3kIJS0grv0=;
        b=boNOPAG1DWkLSFJoXlf4gMUiGkF3WGWDT79FSt1Y/9vjNeJV9PGWgVnmvLUojAoiqo
         TluycfppUzxVIE0ilCfXVCNPSz25IdYsTk5Gxs70tuTwAQSQ+kptgRUZNG3zfj+UzAlj
         BrKPuPbEbilEj0BTIOHQsXjr0365ctwPnT2Y2L+sgSz37bl4307fxJE7AM1HVoQx59jU
         JZCOJIaMEQllHvkoFiwubR8J1Ie2sVshpPn/7es+Co4mvSmnm1FmcHR4U8n9LhFLga7e
         ztvGza7/AL+IsjSkbywzrZ0h86dMEDb5MCNDTpYK/jR3zzCI9xkvj3mB9jlS0gG4Uy/C
         HnVw==
X-Forwarded-Encrypted: i=1; AJvYcCVkjQiP7DzF1HEXYqvvmSUlAHeGF/agGgdniz7YGoMwoIP1oOWDXKd7PnhMz3/8lEYCR/IMwIKllM05eDINScfAK2/4kcAJMlbP7A==
X-Gm-Message-State: AOJu0Yyh09nPqrdy1j4+7TzbN+49AqiKSMPDiAh3RK67u2RX5vNfs+mP
	YYC3B+6iqcti26y2YISFinlgw+5n5prYnplCOoSX9Ul2Qa3o8zJcoFJY3Feb+TpW4H6CWwo+swf
	o/shRehwGoN093Gw/Com5P1HkLg2Wwi4OWeNoHw==
X-Google-Smtp-Source: AGHT+IF6ldJ/Go146OJdcc3KaWTg8VW6N+1GHTa2p69EzB1Qwh3+3x7noP+n6XeEzzBoym9FpiYF7khV+gAjx88QKsU=
X-Received: by 2002:a0d:c641:0:b0:644:ffb2:5b19 with SMTP id
 00721157ae682-67a053e0eb6mr96740867b3.9.1722279225766; Mon, 29 Jul 2024
 11:53:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240729-fix-smd-rpm-v1-0-99a96133cc65@linaro.org>
 <20240729-fix-smd-rpm-v1-2-99a96133cc65@linaro.org> <6c5acb84-0d09-4a87-adb2-d0b10c67b98d@kernel.org>
 <CAA8EJppO_fohT_NWJ1P95YYejgAnZQdzrBpz7Ooceiu-t_MkQg@mail.gmail.com> <77a21001-09b1-48c3-8aa7-a32ed83e8893@kernel.org>
In-Reply-To: <77a21001-09b1-48c3-8aa7-a32ed83e8893@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 29 Jul 2024 21:53:34 +0300
Message-ID: <CAA8EJpqQjsHd+k2KkDumo-Wb5PHAv2g+JPciJ6FL6EQ24T3Gow@mail.gmail.com>
Subject: Re: [PATCH 2/4] soc: qcom: smd-rpm: add qcom,smd-rpm compatible
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andy Gross <agross@kernel.org>, Stephan Gerhold <stephan@gerhold.net>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 29 Jul 2024 at 21:36, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 29/07/2024 19:49, Dmitry Baryshkov wrote:
> > On Mon, 29 Jul 2024 at 18:04, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >>
> >> On 29/07/2024 13:04, Dmitry Baryshkov wrote:
> >>> The device node has the compatible string, so the glink channel name
> >>> isn't used for modprobing. Add the qcom,smd-rpm compatible to let the
> >>> module be automatically loaded when required.
> >>
> >> So autoloading is not working? I don't understand whether you are fixing
> >> real issue or just making something complete based on your feelings.
> >
> > Yes, autoloading of smd-rpm is not working since bcabe1e09135, kernel
> > looks for qcom,rpm-FOO rather than the rpmsg:rpm_requests.
> > The obvious fix is to revert the commit, but I don't think that
> > listing all the chipsets there is a correct thing.
> >
>
> OK, to me it wasn't so sure whether there is a real issue. Anyway, the
> reason behind adding common compatible is not to fix autoloading but be
> explicit that all of devices follow some sort of FW<->OS protocol.

Well, it is both. But I see your point, let's fix the offending commit
first by listing all RPM blocks and then fix the issue as a separate
set of patches.


-- 
With best wishes
Dmitry


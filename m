Return-Path: <devicetree+bounces-69806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EECE8D19B1
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 13:36:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 094B32837FB
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 11:36:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AF9816C6AE;
	Tue, 28 May 2024 11:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nAY2RnMq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D0A16B726
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 11:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716896156; cv=none; b=QCwAwi1aJHgnwYkhuogcHJn443HYiQVrFZO3UckmF6IlgLDQf0nDcKJT/uSIVCkizK7RQazwI9n/4tZPzs9jDs8vVe5pa757kpNuYEtDxPmvEO1eSlnxdQVd7bzD5Y2E9SWtwq7ul+4w7DYTP88+zz4bCkcgWbEzP0DjQFUYTes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716896156; c=relaxed/simple;
	bh=Xfp2r9ij1P5CTBREktxWD4UygAf6m4hovDM0hqYiyiQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Du/N3GyoLaM5ksCkCp9qiT6W3Okw+KtEzR94stsBlwaUtMrglgpVm1whMDpKndbOkG3Ad/WWm48vAdENmR3utZfW4BZk6s9U9t0Ddy0yvavelTz1ONs2m2sFAIojXDk85proq5dlMqRIU7e1IClFu2woIdyUP/EU7vbzibwpr/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nAY2RnMq; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-df4e6ece05aso707413276.0
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 04:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716896153; x=1717500953; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xfp2r9ij1P5CTBREktxWD4UygAf6m4hovDM0hqYiyiQ=;
        b=nAY2RnMqefPp9GsQ5HwjB8VBIIC52JvwHZEG1fLjBqTgZ1lyPzoGp+8EhReVFmL5AN
         77gbMnJ0xhVEzF9SU1Yu3ARhEHwcHV4rIIBwHYmPSfphIF094BiQVoJ8VgFU4cwRtopt
         HxeHUrjm8ige+OPbW/wyRbJxH3LteAP+rBHCIUCE2Dj0zWgQEpidBc1xEp0Z3ouFtkOc
         ipW+XwqHj04f0rPPavJSOqgSzxrS6V2y9brG32qbeL/ExYHrrHUxCB7bs7oHE3W/RT1V
         xpM0uTWrigYcDOaHdjg5JSTSKuj79NyYh0vNMCTEwme2ilu9wSuvJ2QruKJ1D1X6M7KL
         wcFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716896153; x=1717500953;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xfp2r9ij1P5CTBREktxWD4UygAf6m4hovDM0hqYiyiQ=;
        b=Z82Zo/OkEyPSz17Z68qH+j+VoeFx0yrlM59dkMQo6BL93Q72MboQHOL7I8ctIJDa5N
         E15z8AvfL7GwrYcI8gY6pUiSb8bOeNdvevmpI+b5XNlhKTl3VlZPqNdDEY/uIchC+cV9
         TCjLCkP2bwl+DLSe80NW1ZKJQwY07LxjL/SQ9tXrKvwbdaQVtKN78fKenPwrwnSIXaF7
         B/CFAkxm6X/lhnb2vzlWTPZdnpexm6TDoeIRUDeQVazxrCVIPLkURPUpdLeG4dFUFNr8
         9EBclh/qAtiB1YyNT+oc3IghkYmyNYU5Fp5O6iEiMDLQ9BLwzGw2u8Hz1mO4mG8wtzUf
         jKKw==
X-Forwarded-Encrypted: i=1; AJvYcCVmntyA+8xiUjizKOFi13qu6pvjLJRk0CmRDjQl9UzNW4PuwIykfoT/2ycsm+aecflHBbFg+7eM2q1EhpJU0Oa6CCQJbIRI2/cWKw==
X-Gm-Message-State: AOJu0YxSyVIB6fslNR+3uvVKERwCPqF0ACLm0t8UFAnneOF6Uy+J4OBl
	TX8EJDsLp+7t9l9Q4qUuAtg9NT44BU0zw4j1wacDZtBefEoxosPlA62osFOquJ3mSR5IQ5KXmE4
	eIPaQkbsMQ1XZHNP20r/dHUf5N/q8KoMyR2O4NA==
X-Google-Smtp-Source: AGHT+IHSwsTlGSMEArMj/xYL1c6lzKrxuJrq44fZGDxcHYJAGPi+BVhhdCd/jcFDvVhiG/t2ufjdh49VsD3tEdeK98I=
X-Received: by 2002:a05:6902:10c3:b0:df7:93d4:61ef with SMTP id
 3f1490d57ef6-df793d46655mr7431246276.26.1716896153602; Tue, 28 May 2024
 04:35:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240525-topic-pmc8380_gpio-v2-0-2de50cb28ac1@linaro.org>
In-Reply-To: <20240525-topic-pmc8380_gpio-v2-0-2de50cb28ac1@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 May 2024 13:35:42 +0200
Message-ID: <CACRpkdbTo=oJoKmF5SPbSyzpnfrVtMcAL8ZxAXUz59jWm6JkEA@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] PMC8380 PMIC pinctrl
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, May 25, 2024 at 1:37=E2=80=AFAM Konrad Dybcio <konrad.dybcio@linaro=
.org> wrote:

> nothing special, just some boilerplate
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Patches applied!

Yours,
Linus Walleij


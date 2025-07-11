Return-Path: <devicetree+bounces-195594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9E4B0237F
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 20:21:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6FA6D1CC11CA
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 18:21:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD0732F364E;
	Fri, 11 Jul 2025 18:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NU+AYmdS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4762D2F1FF2
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 18:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752258073; cv=none; b=ZWXlFpGFMDe5P/AE3sHw+1blB73nl5EoY/6/UOsmIDFq+EkmPTaLcgqnUZk+gTu34UCVbMCvTg3RF2KGkbMFiCF4+21mq8MHW3udE9YYSZ/+JXXgyjrT22yTdSX5nH/82tMoAQLB6gKj9Zar8FDVPxlImco12TfLNelR0ANgXAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752258073; c=relaxed/simple;
	bh=9pueYuEIoRhh8Q7SXjsOxjLRBOEiyf+7/9ZBmo6ZPtc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YuAwpWsfbppz/R9CaXWNaP/DpQXkZ/3PnELB7wlHboRXZr4wYfYF+eLrsNDIvwcCMXpkjVBXzcqbh0pcktbpSHhOncPuTR5J/Ay+5V2GLsOb32FXyEqcC4SGDdgovSFsv0H5ikjgZvvdrCWuVt3t6AhIHYpI8uAPE1lR4OGCviQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NU+AYmdS; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-32b78b5aa39so22129401fa.1
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 11:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752258068; x=1752862868; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PFonXyBEBu8bBQGRWXHhhJM0VZMeyX0O0WVctxeWjqk=;
        b=NU+AYmdS2Ww6aEAAyX1OFL3gx8fQMdj2FV6y1Bf3NGinK9IoKNI4s/wwdWq1Trt6wM
         Zx0EwUktzxHcXtEplUngRUWRKxGY1nDWp2u2W79DZqKn8t6zv/lUi43WssItoXrnOGrF
         UcB5OxZBwf4sS2l3d+YxdFlf1B/hSCLWarNX6jNDVvKG/i2WPdB9k5NYgp2Z8phscFqV
         GWnf6n8iHEa2VtI5/H9AKNPUue7gblqgGzl2CMLGJVnzABkKTpXH2PqbmX/PKrCoAsjF
         MZBfgpLRR36M/3pczQhVQMozYmPWyRGvX9xDv1hZHHsSq9FNi7rZRK8y9LAmIk27HNqO
         f0XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752258068; x=1752862868;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PFonXyBEBu8bBQGRWXHhhJM0VZMeyX0O0WVctxeWjqk=;
        b=bf52HhRCAFuO7JmcVWXBj5zGPMlcoYaf5JoT9/OKclFHl+araKzqmlCUXtTg0UmuY7
         dPHjxYiiD2R6qdUqOKimDXrmXJxE/pxt8SOb/wqjpKopP+XxWf68g5wzXUUpTZNM5EbB
         CHi/AqVoVtln2GCFMKtmMA0ZFWFtW52kvdr//9/ms+lmr8M/wliy1Uoo0rQqJfshio9m
         0CwZPLUnnQ4diGd38VWN5gjB5tvBHTW5tvVgMMQ6vo37+mix9U241bD7dfdyjqm7BOlZ
         AjlqEk918ztIWKw15nXpA1FQqykeVoQNe3f82hDBSSTHTY1nw361kPCUk8ULgmH4kmn0
         tSPA==
X-Forwarded-Encrypted: i=1; AJvYcCURdSQML/Gfk6AhV9F0wLvBRVcbYMS+eM+4CUo0QXiO/cKCe7DSEJ1axcMaxzH7380tiMyzAZ05Ep27@vger.kernel.org
X-Gm-Message-State: AOJu0YwUwDUKx4a23Ez17lXQtdmG+y5NDkG3nX3195eJRhwWsDbExmYv
	PY3XemV2k7/JkfAYHB+VgBYo1Q5To175rs4DbTATpIcE3FK+kmMkf4IeWXIEOWPMxu50dZPllBy
	J700nWSqJAbYhhlGL5ZM8Nl/o1w8mxN6+nnmOHhDBYw==
X-Gm-Gg: ASbGncuSNivGxx2AqEErFwom4JBAU78gew1y//3B7wxQ9Z5a5n2KNyMBlecozXG1riu
	0DYXfaf8SPl+YhhKplc29W72UuXQwocegKjOQ0y2ZxOdaRWvvMOXmAPKLyhafXYK3LHDw18R6/M
	CSGPray5rxB0ruTJg9Wtlryn+XKkxIbuovvhz7yOxGdYMVdGAvab4ZUe8auMKvutgF6AfmPgx3w
	rVlMDrX1c5+M8c9fQ==
X-Google-Smtp-Source: AGHT+IEvkwHGOLQfSLv38NyMLX/duDgiOrEo48zv9nOud2f/wZg6mazHn+ZXSSe8h4+6KW3mbg6mMV6T7HPqsPw49Lo=
X-Received: by 2002:a2e:a007:0:b0:32a:7d61:ded0 with SMTP id
 38308e7fff4ca-3305341307dmr10521881fa.19.1752258068303; Fri, 11 Jul 2025
 11:21:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250709-sm7635-pmiv0104-v2-0-ebf18895edd6@fairphone.com>
In-Reply-To: <20250709-sm7635-pmiv0104-v2-0-ebf18895edd6@fairphone.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 11 Jul 2025 20:20:57 +0200
X-Gm-Features: Ac12FXwUK_6BkBTiMmf0bIqwdADNOgyJE6d12NaL0C0nqmiCzFyAn5E5nDpYZaI
Message-ID: <CACRpkda-ssTEJqcj=vxnz91rj=qYz_rer5p5Db_b=pSdjUj9Ow@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] Add support for PMIV0104 PMIC
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, ~postmarketos/upstreaming@lists.sr.ht, 
	phone-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 9, 2025 at 1:22=E2=80=AFPM Luca Weiss <luca.weiss@fairphone.com=
> wrote:

> Luca Weiss (4):
>       dt-bindings: mfd: qcom,spmi-pmic: Document PMIV0104
>       dt-bindings: pinctrl: qcom,pmic-gpio: Add PMIV0104 support
>       pinctrl: qcom: spmi: Add PMIV0104
>       arm64: dts: qcom: Add PMIV0104 PMIC

Patches 2 & 3 applied to the pinctrl tree.

Yours,
Linus Walleij


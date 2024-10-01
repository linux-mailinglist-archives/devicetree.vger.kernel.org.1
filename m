Return-Path: <devicetree+bounces-106846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 398F298BFC4
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 16:22:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 625E81C22ED5
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 14:22:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FB161C7B87;
	Tue,  1 Oct 2024 14:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pjNIQx1H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2CF01C6F65
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 14:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727792473; cv=none; b=kc9rm3R5728448aqiJbHYOF5uu89jVe9n4W/Pb6uboqlt5zuwmJPJ1o4WMjP9Fsv4IJ+SVtvZTEAroS5cWfkQkZA4ih4cHJCByDAGzegmnBNHI9Cu4SnyeSX5O6pYnayi90MOWtH4tgBUwq51Ac6yE2aJwDxxLd0GenDgkAKFVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727792473; c=relaxed/simple;
	bh=+fUUg6wXPdekMyvHOeP7/dum9W2P6ZyswtQcSPGP6b0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YR1iN3HsmZqW7iGr8k6B93X5sT78ZXs9ukBKQkPldSOUAbIc1o0gO8KnsJbuJBgA1dqf3AphjSeDehdAF99NIc03qU0JKS+liLY7dJw9Kkwu/czKWgPY0LJUZacwcLriVEoyQMw0aIAx35BlGbCaYR2l+AVSl//7cpUcYbkdbWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pjNIQx1H; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2fad0f66d49so29519491fa.3
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 07:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727792470; x=1728397270; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+fUUg6wXPdekMyvHOeP7/dum9W2P6ZyswtQcSPGP6b0=;
        b=pjNIQx1HOcGcO6rbLm1K3lUOiwcXNtaOZJvaDW5Qn01Sfyfets/hjr0vJX3BvevEKk
         NdcwwBfXaNU3eq5F4CdjVGAV83Wc6M1UlQJtttyhlG6RlyKvpwRxMFbBfvOKJABWk8Ay
         DMygWrB2wcVx8zd3IRZTjYNbkybBZDsj+C1CIsO4vIMdqWSA1W+/LVtsAy3ThVzbE58k
         +hFy3cR4f1OjZiT+6kJ4BV/3GXdHN1ifAAn/9m4rWUvrlJ0l/5p8hQPavW8q4J1mPEFP
         01RntXtE2ZZsrjp6yW2ouZaVS2mixlYjwtbvoNfffT0OqQaJFnmQF+vrVU6faU/UAMmT
         Wx2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727792470; x=1728397270;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+fUUg6wXPdekMyvHOeP7/dum9W2P6ZyswtQcSPGP6b0=;
        b=QHOp0Ip6+Rserw9oy8Yqd5VM1k7rcLWe3jc6fZRZKQKpZqMYfzrCKv+d9AAt6NOCc3
         1lbPlF6a2BSE0Hkqa3LT5n4t69wW4LFaqw7IssSzjbyb/7t3XKPikFF1mW4NpZYWRuQi
         f84Z47ZN7VkDJn+ayX9YpbgjungxCwL1D4dNaWMdF2xOcpP5FKNrQFMjD7g9pu4zYkWw
         eK4ujgluQe3CsHwyOCvD65nUuZ0cNen1PobibzKi4AUKuU1gLoK+ikHWhtw8CEzFeNs+
         4X2yui3shumt2KptHfmnecmtYzzBGAHxb1JNZcuGNqs0yOcDa50VlsAjnyU2Qi/qDNWW
         3ilw==
X-Forwarded-Encrypted: i=1; AJvYcCWXovkVmvDsxbt/rSJpUmYCFFY3+7gojspDa2wtzreuVzeT+ng4u+n9TA9eLNwNhW2syebq41hjTwTh@vger.kernel.org
X-Gm-Message-State: AOJu0Yxu2tJ0c1JTbhG9KfryVPI8vlJqYPoXYXlkk9ILTNj4fKBX2JXf
	YU/AsOSyrCWpRthFKmEst5qWAn/FDYCT48y/d9bumNHEu3lt9LXN9GqGGO9iOE6p3/xCGqVZfql
	vzZgZIPKsSLpCaFXJqq9wSB7xWCvz2duBuKMrmA==
X-Google-Smtp-Source: AGHT+IF2/1pgO9Ijv3SL5ArOgQgiuCkwW6KgrpuffEXoKgOuDtnnsExK5mXWa+CpP2ivtrYXPlT/oaTNKrKCUU633hU=
X-Received: by 2002:a05:6512:158d:b0:536:545c:bbf6 with SMTP id
 2adb3069b0e04-5389fc30e6dmr8096481e87.1.1727792469890; Tue, 01 Oct 2024
 07:21:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240920-add_qcs615_pinctrl_driver-v2-0-e03c42a9d055@quicinc.com>
In-Reply-To: <20240920-add_qcs615_pinctrl_driver-v2-0-e03c42a9d055@quicinc.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 1 Oct 2024 16:20:58 +0200
Message-ID: <CACRpkdZk1ZvovjbouNxvDXBBf6h3kvMi5z+AdAgxDJMZTvzUUw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] dt-bindings: pinctrl: describe qcs615-tlmm
To: Lijuan Gao <quic_lijuang@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, kernel@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 20, 2024 at 10:00=E2=80=AFAM Lijuan Gao <quic_lijuang@quicinc.c=
om> wrote:

> Introduce Top Level Mode Multiplexer dt-binding and driver for Qualcomm
> QCS615 SoC.
>
> Signed-off-by: lijuang <quic_lijuang@quicinc.com>

Patches applied.

I picked up Rob's ACK from v1 so no need to resend.

Yours,
Linus Walleij


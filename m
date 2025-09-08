Return-Path: <devicetree+bounces-214368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 135EBB48E55
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 14:57:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 11FC51B2595A
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 12:57:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72F62305954;
	Mon,  8 Sep 2025 12:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xdGfxyrL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B34E305043
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 12:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757336214; cv=none; b=Ud6Xc/4rujdastXBLgxLzBgFVQSK0rhS/pAT9XALmfEQLeFM5MBO4TNT5Vh2DufMJlYElWQo1n832pkF2/LtcWMdPTQZJzuaSzyi8oBukR4t6Mv37viJ9y/us0YJsQT5zlCac6RLqYOCHiGkGWjNjeDEnygBgYNem+tzeMtQwKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757336214; c=relaxed/simple;
	bh=i9NEs8V73/3LlyodLKStIRGRG21l4ViD+gJckmHEMhU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J7YQGQfb8hPwTNPhp8MRC6Kncp5qcKjNs1nzwxgcflW27FYwngnOy4e8fPt8MciaC8OKFda/DZnmbG+1XySOu5G3I4egJkhjKL3avo8a8pw4w+d3CC9HjeWB4sAu/yxpzn/lrJS5dZ7vwcKLOOQlngeyDxQpD/SLJut7d5ZZGCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xdGfxyrL; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-336b071e806so38205101fa.1
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 05:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757336211; x=1757941011; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i9NEs8V73/3LlyodLKStIRGRG21l4ViD+gJckmHEMhU=;
        b=xdGfxyrLeHAMO3z7zd0IRWxxO7G2ximE/EoZc3i3KhsEDt5xjzy4pII/exmEbaMo/a
         Fcu8BXKB5vOv8xzlpFoIK4yA5efDEKRDV2YJbzOQM8HgQdtupq2vhIzgP10qRkIKc++o
         lTL9tvpgM8jMZGYuQiTYLrx17XyuaXZ51bNK61vLul7JtHq/I5FdUVuXg/pgpDvRG4KN
         ILPPfFaeurch6yEJN6qFGOtcwg8uD9pKUeh3keEW62knWkj4S/qKbCVpwlKEFO10ywdX
         Ipp7THhob7GZzDXa0woyQc+EwqrnhvoJMZmdJX4ceAog8b0W81BHSEs4cOb10Q79QljR
         I5sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757336211; x=1757941011;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i9NEs8V73/3LlyodLKStIRGRG21l4ViD+gJckmHEMhU=;
        b=Gzg9Md96MNSEGWBvnVwL1Wg0OIZTGUwO5vngMVWPeRhPlcMJ0ULQbZvzncwOVr2Ro7
         wqVnnxcFo7DlQ/8DnYSw3DZi9eRNI0VF6UHFwmmgyvvyojCGEqlWeSCFkKPL58GEWkke
         SN3pvzAa/t9uuFao39JGupq+1Y4Gaw+HUrP3czy28sBTSXdk63+i2Dva6QxNWT4+8tWO
         FLlujhI58CzTX7FafKfp9RcsJTk7A6XIR1irZdB9gKyVS6fOPRgmCUxQVdT7kEltMuch
         qi+7Js7e6sSQ1UVPalbTS0GToGUH8uDP70VxwBpW4URf/TolcUcGyUsRNdqjm3bMs70U
         N5sQ==
X-Forwarded-Encrypted: i=1; AJvYcCXh/BgGUkL5naSPeFGgJF7BE9yrdy1dfV5tLdAR/bM6xT3mA4v3z95aK3XULpSooMuLplhdJ2owCwc8@vger.kernel.org
X-Gm-Message-State: AOJu0YzDx4hWEOHMacAeogag91c5ALN8E+dLK+DZdkM39/VxJtyIefvT
	dI5M5KaAIrOWRTnfx71+YCx/5BSO6gmAktLn/wM7ssU4LKF0NP92rf/mjKzS1jlf6202hPflAr7
	5adonRblsrvMyvBFq7b+R1zk41nF10IeHMo2SgI2Bsw==
X-Gm-Gg: ASbGncvDbuZI6hZRalxrzKahm8HsHPRmmhpAiDa/QfFB8me2D3so9ckjt9xUgkqhCB4
	GGfDxcBv2rLoTPcXykOQR2FcspBjqQ2PaMlr0RyS1QgrUUfurHZG921gF2ADVwRVWyrdY8WAS6P
	OaY1xuvqnyW9cDKGShoAdzmVi7Rw2NYlacaN1zakGZ9Tpj+7Eh2LxjmXeST82GpAHW8pqLYX4LX
	fTfkFP4S0QiBCs9LP1O0ZMKSXRJ
X-Google-Smtp-Source: AGHT+IEJ7fijUeRwcBqhdVkGDGPkBaqhhVLbChjEuCa3TFGud0bMeF8EqC3neCfnzC7X5VYOVF0X6+vHRwRYjqQlljM=
X-Received: by 2002:a05:651c:1546:b0:336:c925:550a with SMTP id
 38308e7fff4ca-33b4fe4ac95mr22086341fa.7.1757336210631; Mon, 08 Sep 2025
 05:56:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250905-v6_tlmm-v6-0-1720e5080415@oss.qualcomm.com>
In-Reply-To: <20250905-v6_tlmm-v6-0-1720e5080415@oss.qualcomm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 8 Sep 2025 14:56:39 +0200
X-Gm-Features: Ac12FXxW5YwGL17gaiHO7OUXNyNZGzF4JRK0vQggGezgngIJlttln-n3I4WN2X4
Message-ID: <CACRpkdZsBGejSXT0D69pvwJn8smS8BGDVp_BNaa7KhrHhUrYyg@mail.gmail.com>
Subject: Re: [PATCH v6 0/2] pinctrl: qcom: Introduce Pinctrl for Glymur
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	rajendra.nayak@oss.qualcomm.com, 
	Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 5, 2025 at 5:11=E2=80=AFPM Pankaj Patil
<pankaj.patil@oss.qualcomm.com> wrote:

> Introduce Top Level Mode Multiplexer dt-binding and driver for
> Qualcomm's next gen compute SoC - Glymur.
> Device tree changes aren't part of this series and will be posted
> separately after the official announcement of the Glymur SoC

Patches applied!

Yours,
Linus Walleij


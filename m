Return-Path: <devicetree+bounces-36610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEFA841F8B
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 10:31:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 326941F24CA4
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 09:31:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1396605AC;
	Tue, 30 Jan 2024 09:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FSNoKLvy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61A2459161
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 09:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706607087; cv=none; b=AG+lKsxhMz8PTZtKjlKapjmiCnVkOHu538kNdf3Y+WuUsShb0bWnEWLDH59eJadai0/0H27p9tJoLzZYBF06KmS8b7VakS78fzFdZwTxn6K/XpKp17OC8vqmukM4dxUff1T7zxqRr0/GaPBUyP+y81hGhCqW1nWEmpQwlkBZoRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706607087; c=relaxed/simple;
	bh=XYx0s0X4N57mkCoKTn7uq1S0HzyLcLKx4l9yG2NJoTw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=D0faTy9XME81qjnPLMAzr2Mg40V4Xrf9QWick0d074LkgUOH4kPq3kz4UxYydWTjOfNUSEpJp2kHZa9xHrKcQOcs9WlzvplcasQKETC4A4WtqSCGrR0uVnuTwHzXVxpepxQEgeNxAIlRDKTmvEixR63xFiu0+aMe/XIHO/cKE28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FSNoKLvy; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5100cb238bcso6674286e87.3
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 01:31:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706607083; x=1707211883; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XYx0s0X4N57mkCoKTn7uq1S0HzyLcLKx4l9yG2NJoTw=;
        b=FSNoKLvye6bBhZZNYpBh/KbwH7uMI5bx7ZbW0Mn/GclqE5dUexRET+cs0kHa5efLvS
         1C0EQIpnfAIAWAfyvLTy3k3u791A8woTVIGGZaRklDYlEmAWZ9xroApUcvdfGGDNG/Kx
         uqqS2h9w0dAoc1IDVwxw+0DOSJxxi1xebKNN3lhVEiv46jqi4WTwKDCorfJAiTX3xgMT
         Xpsq7NcY4/2NVaQ66KU0dwd/7ldVubWr0GJYzJXOkgfpspbq4YxRCNQeDftrDWS5Lovi
         MNalSZMtqkO28hrFqr9uV0E6RX2GP5AXT3HYK+r5ApxYbSN4v+0u54g6QD4xefIIzMB8
         3NDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706607083; x=1707211883;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XYx0s0X4N57mkCoKTn7uq1S0HzyLcLKx4l9yG2NJoTw=;
        b=LA4Tpr2y1JBCvCnl4h7GmNbfn5P7jb1gKEO1Fj0tLb16FTSzGdn86kLKB0E8IINyfe
         4c7DUpqq6Sv6LD7g/FzyJGby+Mry012y7xtXq2Hz35OHlMZ2RZcxD/+VTQmsSZkHVrU2
         3c3A1l+5uuMyn94recI8Z/mLG4BklU5eKBWJolvo2QZT78yrnLCpBzWCn/AxUPJ/He87
         TR+5ve36MUj5H1trvNOAPJ0ia7AMBvC+fHdCyWTp2/AfScaXF8GHhIQeb1hQJNs4ZuDq
         /kyFVJ6wlm5D/xzFEmDCsHAID0KKawG3MmC7KtCCz3EFuhvKlF6336/MEfVKOBLvL4GV
         AaQw==
X-Gm-Message-State: AOJu0YwzBFVbnNhOLojHcz5xSmZf+ZXB1iaUz6mzAD9KwmSKZzj/eXjx
	COVWhd6kofzYYQLqhw1opkl99GY0DjEQcBH2Zkw7PZ47zLL/oRdmhJkWeRIdfaQ=
X-Google-Smtp-Source: AGHT+IH73ECOedOmbLboh50bSkCcm9bWbbIIdQpZY7C2yF6U75+RErqJaRRYI5LoY3XIRMWTRBDv2A==
X-Received: by 2002:ac2:4208:0:b0:510:293e:83b with SMTP id y8-20020ac24208000000b00510293e083bmr4843330lfh.18.1706607083413;
        Tue, 30 Jan 2024 01:31:23 -0800 (PST)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id l22-20020a05600c1d1600b0040ef95e1c78sm4452775wms.3.2024.01.30.01.31.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 01:31:23 -0800 (PST)
Message-ID: <bbaab3addf958bc1f484a20ee0bdb65af05cf5da.camel@linaro.org>
Subject: Re: [PATCH 5/5] clk: samsung: gs101: don't mark non-essential
 clocks as critical
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Sam Protsenko <semen.protsenko@linaro.org>
Cc: peter.griffin@linaro.org, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 linux-kernel@vger.kernel.org, kernel-team@android.com,
 tudor.ambarus@linaro.org,  willmcvicker@google.com,
 alim.akhtar@samsung.com, s.nawrocki@samsung.com,  tomasz.figa@gmail.com,
 cw00.choi@samsung.com, mturquette@baylibre.com,  sboyd@kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org,  devicetree@vger.kernel.org
Date: Tue, 30 Jan 2024 09:31:22 +0000
In-Reply-To: <CAPLW+4kSka+twSoZmQeMsh3RWermrGG-wyENrr14AmX3zZ2eqA@mail.gmail.com>
References: <20240127003607.501086-1-andre.draszik@linaro.org>
	 <20240127003607.501086-6-andre.draszik@linaro.org>
	 <CAPLW+4mL1gb_R8PhKaMhwOUTa0GDqat_9W=348ScYj+hBarQJg@mail.gmail.com>
	 <d45de3b2bb6b48653842cf1f74e58889ed6783ae.camel@linaro.org>
	 <CAPLW+4kSka+twSoZmQeMsh3RWermrGG-wyENrr14AmX3zZ2eqA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.1-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2024-01-29 at 13:16 -0600, Sam Protsenko wrote:
> That sounds reasonable. But I wonder if that bit (about making this
> clock CLK_IS_CRITICAL to make earlycon functional) can be documented
> somewhere. Perhaps in the serial driver (earlycon function), or
> somewhere in device tree bindings? Because otherwise it might remain
> an arcane knowledge and people won't be able to use earlycon later.
> Anyways, for this patch:
>=20
> Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
>=20
> and if you think it makes sense to document the bit above, please do.

Will do on top of
https://lore.kernel.org/all/20240119104526.1221243-6-tudor.ambarus@linaro.o=
rg/
once that is in.

Cheers,
Andre'



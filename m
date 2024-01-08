Return-Path: <devicetree+bounces-30262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B024827329
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 16:31:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 389FE1F239EC
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 15:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E571251C46;
	Mon,  8 Jan 2024 15:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lY+6josP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CFAE51C45
	for <devicetree@vger.kernel.org>; Mon,  8 Jan 2024 15:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-783234dd689so81614785a.1
        for <devicetree@vger.kernel.org>; Mon, 08 Jan 2024 07:30:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704727812; x=1705332612; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Yzw/cgm0NqSiQjobJ8Qq3PX7WH99Q7opW3VxmOxNOVc=;
        b=lY+6josP6BMPTp4bR4tvGbsOd6mdEgpAadcly5LWlQadAqv6cgoWlDr1tW6WjcSzx4
         8LJjvz5HGluFQ0FN41mX1Yp5TllNoVBMfmkk8vVk1uRD0eFdE1CRQlLww8khbgECZT/M
         ZUe0pUl94wXOhjV3ZRpGVvXnQRpAHuflMTF+doZODKjId3G5F+kngjf/2VEnqb+LSsw2
         qdXpPL+y5mI+XhilGbmtg1lBd5A8ZM39V6Y8F52TAmkTAnU88dA4fHiukhCxpZ/wBo4O
         pXzLM6jfTQnIXtur4UnVsr/B0980TDais4VYwzfJJ7LH/7gT10mysYfvkpYKTS6oQWv7
         3Hng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704727812; x=1705332612;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Yzw/cgm0NqSiQjobJ8Qq3PX7WH99Q7opW3VxmOxNOVc=;
        b=Kq5vn1l4/iRMfRG8nbHFGXFXX2GO7DIDp5MWY/Zq5olkcXRjZJ1inNA2PEuRj/eFc0
         q84/sf6hv5FNdgl/ABYKoZKgmwCgwn98cfFzP/5tncG95P0jmpv/zni8c/iE6VXYJgnm
         B8xrVPhEiSt87/2eTszpfLCP+KNt3hvfvcSTGbEXWqZKJsqGb0FkjkjKKGgIaCMmqX6K
         wvtMlsz3ZeDWV/ag2+fhkPggJKIWCspxpwpsIfed/4JwQaf2brzM1KQl1uSH4uLab5W4
         DFCkErOzhMj4ACfrU8NP/QFrUjkUhHZZVCr2/3ChVXJLdOw7hkT3eea7MxQQn7ssaO5p
         3NEA==
X-Gm-Message-State: AOJu0YyJabY4RcoP/Rm7pPL4g8lOXicaEqLbyO7rPeO0kkgzihDsjNWr
	4rzCmL+zlHU9HdNn41+VOs8VI7AOoNl/YWFqMVwwThPb4m7NxA==
X-Google-Smtp-Source: AGHT+IFYKrhFgbRYAiEyPYoqEve1qSR2GT6wdqvLM/UdItQ5yRGST7HVQm+lQQheC7taXe1ZY76iPAlFAoLAEnpj6vY=
X-Received: by 2002:a05:6214:1302:b0:67a:96c7:4c90 with SMTP id
 pn2-20020a056214130200b0067a96c74c90mr4913500qvb.38.1704727812403; Mon, 08
 Jan 2024 07:30:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231228125805.661725-1-tudor.ambarus@linaro.org> <20231228125805.661725-9-tudor.ambarus@linaro.org>
In-Reply-To: <20231228125805.661725-9-tudor.ambarus@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 8 Jan 2024 15:30:00 +0000
Message-ID: <CADrjBPoBPrQh+73eqk_oc0VXFqJrLhY+BH4m9dFN=65QnpB4DA@mail.gmail.com>
Subject: Re: [PATCH v2 08/12] arm64: dts: exynos: gs101: remove reg-io-width
 from serial
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, sboyd@kernel.org, conor+dt@kernel.org, 
	andi.shyti@kernel.org, alim.akhtar@samsung.com, gregkh@linuxfoundation.org, 
	jirislaby@kernel.org, s.nawrocki@samsung.com, tomasz.figa@gmail.com, 
	cw00.choi@samsung.com, arnd@arndb.de, semen.protsenko@linaro.org, 
	andre.draszik@linaro.org, saravanak@google.com, willmcvicker@google.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-serial@vger.kernel.org, kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"

Hi Tudor,

On Thu, 28 Dec 2023 at 12:58, Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>
> Remove the reg-io-width property in order to comply with the bindings.
>
> The entire bus (PERIC) on which the GS101 serial resides only allows
> 32-bit register accesses. The reg-io-width dt property is disallowed
> for the "google,gs101-uart" compatible and instead the iotype is
> inferred from the compatible.
>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>


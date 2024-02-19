Return-Path: <devicetree+bounces-43461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A3EBC85A69B
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 15:56:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 43B351F21AD5
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 14:56:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC76C376EC;
	Mon, 19 Feb 2024 14:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="inQcANvX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A45B38393
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 14:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708354521; cv=none; b=ERURaq3FsrQ/DF+n0bov4yUJ0RjUJ18IkwrijsQkvq53ZZyC3Z7TfLSdbNrXtlvvNqgozMgtWDGriLw3B5i4F3xR1pPK7B3PRvuSAuoSORHWILODwbVC8G5rB9H737j2m/jupCSBdYouYKsuCbQsLCeRrt2cCFj+Ktczz4aQoqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708354521; c=relaxed/simple;
	bh=qH5wXiM3i78ypS1cE2GuObYzdJP6nTn9QLDwtM+E/gc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=svujXZN8oP32t1hfkaaRvLh1wL1BtjouH0/cNwNBISrHZoPJNaogEdx1//7UNeo76Iz3xwRL/dltKsM29MPGP+ej1V8SnYkVfZxbcy6su0nD9IZy/Ucqom+IlxeJJjtpyJ2keBKIkmslWlYZlQio4rRaWwiIY+ueWkfDYchPdMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=inQcANvX; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-60818d338bfso14891767b3.0
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 06:55:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708354519; x=1708959319; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qH5wXiM3i78ypS1cE2GuObYzdJP6nTn9QLDwtM+E/gc=;
        b=inQcANvXPuCuqHnryjl/iYJk9U8YX74QKTNoRgcSh/w3cNzWxiLg/phOgd7Tfz8l+M
         VSOksR+Auug9hFDV0A0XSvsSlwoMB/9AftArn1ydHjsET4v8TKc90WV1CGo3lRbuO2CM
         8zPFN2Atu7tW6mPt7Pn0W4PK9UYx+j8hQG4N424F79htcSecCIoTnBle/mWx/TvWB68F
         KN6ilw43mTQ+X9kulN3QOdJwdMVKjcf2w8PbOhRiN1gjez0fcrku3gpTKuQUOKyAJJYL
         V12Wzw3rmoOuVbBwGpZRAdu7wRE9znCPzDM+JSFW6NaUqySFNJp51p+S0Rjr5Z7iVruP
         KLNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708354519; x=1708959319;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qH5wXiM3i78ypS1cE2GuObYzdJP6nTn9QLDwtM+E/gc=;
        b=sXcuPZjka/CDHIIhTmQVqfWVmDqKnfK1lCbYYyg05tQCMmBJGQ29IATTIUW/hyqJUn
         /7Q+xAeML4HW0at8oa9UQAcrLMtupMjxsnx10aU4TKiURNKn/vUMgsxgJl33rnHOam1c
         QB0apXOqV5emMuBDWB2INeU3bDVaRfAFOpce1Ytelbb5+5dQ/h5od/sXj7N5AI5FDfST
         7aY56ioXWX3bV1329FuXa9bcxUXUBZdE5VUc2HXaoX4T6g9SDskS1n3xhvZTpCZYGBf9
         qj7tzuFJNK5HtpuWLyR4Br9ffRKgTBHgD+Ajf/BobMe1VU3ub6eRzBIFmBzr9z44p4tc
         Re1w==
X-Forwarded-Encrypted: i=1; AJvYcCVtlXyjZ++lhJjKBd9e3TTNIILMApaZLioK0oeGyUPO8su4uqIdonlfQ7tBr0qXeH+rQ1d/oA7iyyFrOTAeudVRqDj/ClMU70rE2w==
X-Gm-Message-State: AOJu0YwgjqFcOLB6cbIxFRr3z37BIrzfomevVj7672hJIb6n42aEz1Rs
	7nljlMawXIKwRdk1lJrL7mTJsSQMUj6nmpKDdMeYjsIIUR7IKABc7XI2Kz0+YlhpLr4kpQpydrk
	Cjtn2hEgcm9tnya6lK9lLnuGQupU5VT7ahchaMg==
X-Google-Smtp-Source: AGHT+IFltO6KkjBY25OUgoFC/Kmxadk8ahvUfaezI8PdV+xriL2Xe4U881DZubLOYqtDNDNARjLCAVm5NBCSj2rOXnE=
X-Received: by 2002:a05:690c:a8c:b0:607:a8d9:c29e with SMTP id
 ci12-20020a05690c0a8c00b00607a8d9c29emr13974595ywb.33.1708354519351; Mon, 19
 Feb 2024 06:55:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240214-mbly-gpio-v1-0-f88c0ccf372b@bootlin.com> <20240214-mbly-gpio-v1-4-f88c0ccf372b@bootlin.com>
In-Reply-To: <20240214-mbly-gpio-v1-4-f88c0ccf372b@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 19 Feb 2024 15:55:08 +0100
Message-ID: <CACRpkdZ5v4GUJtrOV4U4bhvKC+RZFXk8LZdyN1cbxmm5mxcLuQ@mail.gmail.com>
Subject: Re: [PATCH 04/23] dt-bindings: gpio: nomadik: add optional reset property
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mips@vger.kernel.org, Gregory CLEMENT <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 14, 2024 at 5:24=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@bootl=
in.com> wrote:

> Add optional reset device-tree property to the Nomadik GPIO controller.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij


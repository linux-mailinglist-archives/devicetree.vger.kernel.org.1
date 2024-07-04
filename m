Return-Path: <devicetree+bounces-83012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0172A926D35
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 03:48:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 33DE21C21966
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 01:48:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1D3BFC02;
	Thu,  4 Jul 2024 01:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RfB46auM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAC1DF59
	for <devicetree@vger.kernel.org>; Thu,  4 Jul 2024 01:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720057729; cv=none; b=YS5N1lY/a9jCUVjTB8/E2pVKtZAIo3rifE9uuR8a2OYYkIpiuFsIclg/YRzchppzJmpqQgNliNHGzScdIDrfVMDnAivZATZxYFpijWvH04R0W+b+vouYRKBhwCjbgtTnwZjjhLHzk80WZJ7IM/q32XyqoVBHqAS6rrBvi3f1ojY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720057729; c=relaxed/simple;
	bh=G59GNkOWbkHEYhhvdW7B0tM3W2apbni9xrSBJTuFhGU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LiqFUrSj5W7xa3px7LzPa24d4HVALwf/echD80rWRBtH8REmBrYSnywi3Y1AyhTDAaKwgxwhS606trEob8pwbBzQw78Pep9OiWR3tzYwhbjoJ6mDheM7ueWiFr3ukXv1WPbk7di9VvRbLobHyyPetUezAxDi0ToeAG7tieosF2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RfB46auM; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2ee7885aa5fso864291fa.1
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2024 18:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720057726; x=1720662526; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G59GNkOWbkHEYhhvdW7B0tM3W2apbni9xrSBJTuFhGU=;
        b=RfB46auMDNQYWZr9TsXHtHvSbBRXjKxOpqRbArw++Up6/IY/u9HK7HOdPHKf5XGH8x
         33ws4gYeRKeTu/WqT3EmIHwnpBzRcRcdx37soRnu/3aOrq9YhtyTWfVKYXQdAjM/85MS
         bfDztLxAgnlau8LuvXmjexaFu+J0FAH0FVZXfZFtE6e5AdWysuXQ9aV15s+HvvA0FrsD
         AW7hXyWcUrHJWRde0PmOxpJfhiliO0pXI4pDucsEVtzNK568iBj9GNtL/5kDDXpWVNNh
         xB7mGcQMocr85Mzlg40Czj0R8L9p2zxhjTABP2GbGPo3WIVzAf1/onr/jIGLYkNf4SkP
         zQHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720057726; x=1720662526;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G59GNkOWbkHEYhhvdW7B0tM3W2apbni9xrSBJTuFhGU=;
        b=vMw+mR7oTq5+CajNMPo+o47VctjSMck2KqZ7HG7ndA8zRCdRNAq9nKnT2EXC2hI0Kf
         aVbMwpsx1wyaa0f4PrUhzTPnCreyhDnz20Zm1FRAmyVTZUYX05gLwXZ+J/M/tp6Bllza
         q1TIEzpVt8haf9/uJJABChu36vcjM5mSaRoQTGJBOsww1QKAi5KN6ctHfANA5mSTNbeB
         ShkfQPwZzTEHm5HE4iVtWOFXYAODaoEBuNzElU1M40/DPOyb+b/IR/A7QT0Pn0Ng+PkL
         G5zVqKQc+W0+k93Ni48oZ9lJKh4Qz6PLe4v2XQO+7KL52j2q9k2TjeI0nzJZQh4EhvFA
         PPNA==
X-Forwarded-Encrypted: i=1; AJvYcCVCRXpeS4nOiJslMxIebXLlhyEGjP53+WL5p8zu3Hq0MLqqWAQAEbCFwaLitmvsbJdUhe0NKblUGmqLeNGjiDgJe0B6scc+ejJyIQ==
X-Gm-Message-State: AOJu0Yyc7NizYwR+xSclxEU9uq1GzNv5xOEZrI7OFb0viCZ91whYqK74
	Mc+DNCyfMEVYKS027UDvyukaL1L1kcIYx/xqVq8wIeIqMIj5k30fmDC4LzX+gDj1zovvqjkMeUk
	kqJAua5KQH03nKkDVMkjGr0B4jQNWzpO9h15lvQ==
X-Google-Smtp-Source: AGHT+IHfLv4s+vQIweVjQ7Xr1GgMPxbR9W9NSDAeDl6zTwN0+s3wCrlLDx11lSg6hn3Q5ddlFYVlYAEAVqfoxvcoJwg=
X-Received: by 2002:a19:ca43:0:b0:52c:e1d4:8ecd with SMTP id
 2adb3069b0e04-52ea061309bmr84261e87.8.1720057726255; Wed, 03 Jul 2024
 18:48:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240703215905.2031038-1-robh@kernel.org>
In-Reply-To: <20240703215905.2031038-1-robh@kernel.org>
From: Shawn Guo <shawn.guo@linaro.org>
Date: Thu, 4 Jul 2024 09:48:34 +0800
Message-ID: <CAAQ0ZWQ4ua6aN15Wr+gJF7GkgNgzA-OunUhSMyeecZEJZq7DtA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: phy: hisilicon,hi3798cv200-combphy: Convert
 to DT schema
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jianguo Sun <sunjianguo1@huawei.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 4, 2024 at 5:59=E2=80=AFAM Rob Herring (Arm) <robh@kernel.org> =
wrote:
>
> Convert the hisilicon,hi3798cv200-combphy binding to DT schema format.
>
> Drop the example as arm/hisilicon/controller/hi3798cv200-perictrl.yaml
> already contains an example of this binding.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Acked-by: Shawn Guo <shawn.guo@linaro.org>


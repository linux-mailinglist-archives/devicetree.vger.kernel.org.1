Return-Path: <devicetree+bounces-64698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB818BA7AC
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 09:22:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E6A6D285605
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 07:22:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFC7F146A72;
	Fri,  3 May 2024 07:22:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FGXtH8fA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7501F139CE9
	for <devicetree@vger.kernel.org>; Fri,  3 May 2024 07:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714720940; cv=none; b=kNK99wCfVvOavNtJHZkqGP6+75HmU9h2TkmEZcl8la7sGtrqY8Tj/eKQ4ezKuTavvx8eyJ8YZ6REQgeGRSbCgswkbigbnRW96K+V0CYTNdghKRG993prHXje41qfcI3TPtVrKCi2U0FOftgSWYRRTfvENIDDjlOokrIyB9YuyRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714720940; c=relaxed/simple;
	bh=QjYwEtJ1fyGpU1Q0AkTDhWNCUjMhqqmY75kEGCHLUKE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RVvUs9ueIN/uh7mBrLqrCtHwwyhlAtUYjnR4dWKIvGVTrYCOXAw6fbalJxXeM2Uyaa0q3dnMuMbv2O5PbwcZ0zlHz+c1PB/MmiuhHkNn2glsxk2zRC7jTMeBKUuwdhSDJ8rvHFvauK1v1PxJFCRPgp8F0T7fOgBIMRkyF4154oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FGXtH8fA; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-dc236729a2bso8849060276.0
        for <devicetree@vger.kernel.org>; Fri, 03 May 2024 00:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714720938; x=1715325738; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QjYwEtJ1fyGpU1Q0AkTDhWNCUjMhqqmY75kEGCHLUKE=;
        b=FGXtH8fAzpJhyN+fzCpMIzg24cKDT5r6nNMcMPi/4ZWDOfTN6XoVzGFfaHCqXtZyOL
         1lX57VL0hVxjL0q5Ax1xhPlpL38kB0KqEhu8TnAEPaAhAOG9sP+CX/643TQdKtT2SUOa
         rS6y3fm7HT+y/C012dgJUASjmu4k3SJn6m/YBl5XXhLN8oidxOKnyJfPPjcOKL5p7vSX
         5ksjslbOHf1apieF7qOTPPxwVimsqe5NlZlwZEinGJryS1ofoMea31s0fugO6qPu1X5V
         BA0aOQrSDRx0fp0vrvRYLrHADbvaCEWvtuk2H1O1y5P7UGGvUrS0lmVbCWAyBT/MBK0k
         z25w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714720938; x=1715325738;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QjYwEtJ1fyGpU1Q0AkTDhWNCUjMhqqmY75kEGCHLUKE=;
        b=c1CtGY8+0JZXR0txUxA1suKxdFVWq7yHI0LNCEl0De0xMBOQXgbH/p6L29sDfm13Rb
         xCruRB8xO1AXnhqMbLGTWM9sfUSCCHr2P8GNRZoCdtyiYZIFBoGEjQo0XIM04o7+Dnva
         1JasVbHmsz9PlrQvo9b2LvxW/1Kpx0xUqg5GYfL/csn5JwnMQbl65ec9uZ3I7NPepxIE
         tOYWSLNKcxIgkL9dgOH1DrZq3NRMuYc+yR42VI5NPQ9ufG4FFP/9HvUrU/y4a98CP39p
         DtgNRQ6oTx5QXEJH3upVJHGLiRcPe8Pg/U/McMOQU4037IE4hYe2cZ1QCzNFSDuU4nF7
         qn8w==
X-Forwarded-Encrypted: i=1; AJvYcCWkrKUAERXcNch3AXW6QbpUP9WWyKXOVQAebg5az9bjav3bJGfj5TMBJ8ZlS8tkE/reu9u3cRJEUP6ewy+TKbhAh2I9f+Rr6A2KPg==
X-Gm-Message-State: AOJu0YzxQjYnyfK1oHKnz4ROY2C+UBC8MFM/oXA9a/JLUA+OMNVBBDXc
	XFGYRVuUxP+7iLOKL9rpOuT1o0GgCOnEvZmWEsFKQ0zrxyrhJ1QcPAXSZJUmAQCOe/71tgTGIbn
	dgBgvwla5NhqxAvESk+5rddC7Ar8xqrZGc/3FDg==
X-Google-Smtp-Source: AGHT+IEwW4AqX12ZZ5C8KcpzwxYuei77aV5JW6Vq3YoW7W8skkJw1c8IJyzuU+sc7rWvnkzCPhPiiByxYTX8tbg2iQI=
X-Received: by 2002:a25:6642:0:b0:de5:5575:99b5 with SMTP id
 z2-20020a256642000000b00de5557599b5mr1952112ybm.0.1714720938551; Fri, 03 May
 2024 00:22:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240423045502.7778-1-zajec5@gmail.com>
In-Reply-To: <20240423045502.7778-1-zajec5@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 3 May 2024 09:22:07 +0200
Message-ID: <CACRpkdb7PZugREmg_kbh3sx0riZiTu0AtyFgE8btP9Se7W27JQ@mail.gmail.com>
Subject: Re: [PATCH RESEND 1/2] dt-bindings: pinctrl: mediatek: mt7622: fix
 array properties
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Sean Wang <sean.wang@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Hsin-Yi Wang <hsinyi@chromium.org>, linux-mediatek@lists.infradead.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 23, 2024 at 6:55=E2=80=AFAM Rafa=C5=82 Mi=C5=82ecki <zajec5@gma=
il.com> wrote:

> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> Some properties (function groups & pins) are meant to be arrays and
> should allow multiple entries out of enum sets. Use "items" for those.
>
> Mistake was noticed during validation of in-kernel DTS files.
>
> Fixes: b9ffc18c6388 ("dt-bindings: mediatek: convert pinctrl to yaml")
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> Acked-by: Rob Herring <robh@kernel.org>

Patch applied!

Yours,
Linus Walleij


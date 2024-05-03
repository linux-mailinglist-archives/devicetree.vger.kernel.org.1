Return-Path: <devicetree+bounces-64703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 30ECB8BA7F8
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 09:41:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DBC3E282338
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 07:40:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46EBA1474D7;
	Fri,  3 May 2024 07:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zh/El5T1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE6D1474C6
	for <devicetree@vger.kernel.org>; Fri,  3 May 2024 07:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714722057; cv=none; b=XZKbt0uUaE+Z4/LaFIu1s7zn3TvK0SXkmWEEfJDQRrHrfS28DBpSHp0IlZL/fV6gMQ5r9DzPjg1wsko//ceIK+KJr14k7fpvhyMJJifp/lyHblNG8J33GdnO/neunQBfCP44+fbGb4j3Lv+ISQB0O3Cbs4JAa3TNHNEqnoLi5AY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714722057; c=relaxed/simple;
	bh=gwHqss5RZXxGpYDwG7VlRCS9SdIL5vWAxoW0cWn/H2U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OF1GWQLjf0fPhbxb2Tv/J7WcgqW5fNxtRgNenRxETu5YkhCHYSnX23DcOH+fp271mr2+9VkS4q1sP8pM6oLabzLg6cn09/Cy4Jz7/v1JDz809OCUK5dog8t8whQLV1LTEDMam+CyT9fMMXih44bkqeGJAUoak/2+x+p6N7KrSUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zh/El5T1; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-de54b28c41eso9837847276.0
        for <devicetree@vger.kernel.org>; Fri, 03 May 2024 00:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714722055; x=1715326855; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gwHqss5RZXxGpYDwG7VlRCS9SdIL5vWAxoW0cWn/H2U=;
        b=zh/El5T1BqVswezu0/H71E638/RyGI5sdnHS/2bzQMCFzplcs9t8Ix4upxAW6z/EUV
         w5LJekthcxGnES/sZ/3rRtBqZh7e40rHt4QbXKYo/s+/j5n/h6Epk+G5cXV7ajlp1uEv
         9GtHm35g67Ri9zrcT9iseNmCgE6cbx2IEBz/abpolKACCbmq8JvPktEprJW3KWI6SAqo
         kyvcu+yRa4srcVzNMc6wZPVqeB23j9rpFhc00wzHu07li3U8Zpo43tyh8mnj9GtUZzUM
         RwB798TbB46ibcX8t4wdTjBLQpoAs3ZFNj8QDVHcGEt/K1VJpWM+8WUL5SowskifN/An
         GGBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714722055; x=1715326855;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gwHqss5RZXxGpYDwG7VlRCS9SdIL5vWAxoW0cWn/H2U=;
        b=ft0aFmZypXJVqx9ZO4u37qeFszXKlOKWNomkgFOXNwBgq0/bO0kL3n/7VQng54i47b
         61tlzKm4KlmI4UBs78WDP4HxWD04AcvrJF1I0X5d3QCkRWacTq++KIKKl7fpQd3VDW/q
         IZi3Idcpm0QZnC3HuiA84p2wpEWy1Ls/QiSmRRlAx8A7WsF+ONmZufnZ3uxLfJx/r3Vc
         WZKw0UJQ/yvXelhsA5IrJpSSiFMk52bQd5i5QAm0W0xQrDd8pWJWulNe3VfR6OSZgPuG
         WKhmODTjSEEkE2i4W3jk64WC6fUQ7bmZbj8b5DK9vOpkDyl7ttqYFd7WKQxttiakLG6v
         HbNA==
X-Forwarded-Encrypted: i=1; AJvYcCWZpC5vrcp0y2+fl/1BMDsmO1yM81nxQ58QY1QVgM/ibBcykS1aJcz7L44RAU38XeORkHc1sfXgz6AzzffJT8yhPe1pA7ticUjcQg==
X-Gm-Message-State: AOJu0YwVuwHF5n54qtdV/4iHz2lL2dCAw0nktMOrby8QeGlpSC1RBHaf
	q0FLBfuEMI1UwGGiCBsZh4btxAY/VNUc/RJoP2a/weKwqlF2KRb4QHAaTc1sErfiYgrulWhGROG
	pQnzovdlotZn5sO74npnjYOrovkLSOx5ENJsQDA==
X-Google-Smtp-Source: AGHT+IGKGwRhNfzN2iXJoJhXvjSPiHyUquPE3ouCPy0eWG0y0CwM0ThM2Op0QFyOEbDftKVb65DsDUY5yqJ+5H4Fyho=
X-Received: by 2002:a25:b285:0:b0:de5:5919:c9e8 with SMTP id
 k5-20020a25b285000000b00de55919c9e8mr2264670ybj.52.1714722054894; Fri, 03 May
 2024 00:40:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240423134611.31979-1-johan+linaro@kernel.org> <20240423134611.31979-4-johan+linaro@kernel.org>
In-Reply-To: <20240423134611.31979-4-johan+linaro@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 3 May 2024 09:40:43 +0200
Message-ID: <CACRpkdYXfZwBdLSTTPbruD9qynOPuQBOZjCwA_6eE+1MUBCkgA@mail.gmail.com>
Subject: Re: [PATCH 3/6] dt-bindings: HID: i2c-hid: elan: add
 'no-reset-on-power-off' property
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Jiri Kosina <jikos@kernel.org>, Benjamin Tissoires <benjamin.tissoires@redhat.com>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Douglas Anderson <dianders@chromium.org>, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Johan,

thanks for your patch!

On Tue, Apr 23, 2024 at 3:46=E2=80=AFPM Johan Hovold <johan+linaro@kernel.o=
rg> wrote:

> When the power supply is shared with other peripherals the reset line
> can be wired in such a way that it can remain deasserted regardless of
> whether the supply is on or not.
>
> This is important as it can be used to avoid holding the controller in
> reset for extended periods of time when it remains powered, something
> which can lead to increased power consumption. Leaving reset deasserted
> also avoids leaking current through the reset circuitry pull-up
> resistors.

So the reset line in this case is a GPIO as seen from the context above.

To me that means that the line should have the GPIO_OPEN_DRAIN flag
set in the device tree node for reset-gpios. As it has pull-up resistors,
setting the line to high impedance takes the device out of reset, and
thus it is effectively open drain.

> Add a new 'no-reset-on-power-off' devicetree property which can be used
> by the OS to determine when reset needs to be asserted on power down.

If the above holds true, the driver can then just check for the open drain =
flag
in the reset-gpios phandle, and if that is set, conclude that it should not
actively drive the line low in the poweroff state.

I'd like Krzysztof's input on this though, as he's been all over the reset
code recently and knows it better than me.

Yours,
Linus Walleij


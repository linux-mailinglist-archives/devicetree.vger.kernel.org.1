Return-Path: <devicetree+bounces-191612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF413AEFDC7
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 17:16:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D6319166386
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 15:16:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EBD626FA59;
	Tue,  1 Jul 2025 15:16:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="azF4OEEG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A33E275869
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 15:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751382964; cv=none; b=gPsQhJ75ET9Ky5ApwPQ/ZnM/G6No9KeOCiNn0kjtWUmDpdE1W0cirE5D6uMoqc/qyw7HJ7qJa6J1m9WaR56mCCJqpOS8nzK9F/LiaQu26aGXqOrVNvfhjRpe0fJjFVzMQGOF+6FPBeWmq0yYcfKcUjRipYS37ttniBlJ3D7FkW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751382964; c=relaxed/simple;
	bh=z8oQ/Qy5X99Vz/00GxMthGnaJqgHyWqeMhz2LAS6JsQ=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=XwaGm+1D5UDwOudMQXoaVFF4lDMwtd/Ju+wBDpZI/Hk1M2biHDymAh+rpaYUE0bsOzpLQwOWq0Z9FoGD0f7m5j+wTeyC18wN2qfvkEk7o66WW51C2I6pMF/Mt4+urKTYGoqjNLAE4DebEs26ngELiTexrvogIdEdKKTjSds5NLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=azF4OEEG; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-60c4521ae2cso10374354a12.0
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 08:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751382961; x=1751987761; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LmBKSATmHIQjY6DYREp8ocZ1PWaVredog5Vim00fHOg=;
        b=azF4OEEGsHJxwfz18vHY7eOqjsBJ/cbRgYSUFBxOe2jTg80SMEVo54MlunEGI8Tjhf
         gocq7v2NW5ZP04jb2Hy/16gMAgtDxmNg5fGxjzRbHDmso/B78uv8mG78JgVVoHZytX+T
         YZBSpqyr6N8VBoEoetB+DPQMrWHBID3qyGhqCtA5Ae8mcYpBsg/sy9KNvGnf3kK2YANu
         qg8fRcBjU4XG/iMjgV5RcvASYf9O4eyI7j0BBureql0/LxQWtQPeNaSOxCsJoUhTy8vl
         3sNHH27ACki5xh2MpeRNfZqpFBcNxtxfUrT8qgoZ+PzsXM7UYcq7kc8YxOBnmFyCYAb+
         Njkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751382961; x=1751987761;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LmBKSATmHIQjY6DYREp8ocZ1PWaVredog5Vim00fHOg=;
        b=CoDxZNgWM5kYJ+SNh3LMAxeAI1gk15uHHrXEpKvPyETfP73gjqhDoH3t9alawi6KC7
         6LBqb7D3bYU2fZCujm96IG9HdzeJsbzmffC+kQZBbbpc5q4ioSP3a9PTaumtfnPRwvL6
         vGgBVpWKKtChJyuGivU5+q4X36FXoDRkCuexg4OSaH8I/+f4t8IZBhLV7SKcLFNWs8fK
         ORD4CWEFkErN+6GQ6VJm0jeYAbMw0zafAckFvz6J8CW3lum3/fm65/KwLnWQjB/cLN4D
         0apsy+pIs/5rqAEw9SkTmKC0Pzcvwa1/xT0RwLB0gn4THv8eBL9wOOCaoCnkSFdOxVpx
         3iBQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmYu/QhQFncd3XlQztDQRSQHuWUYwXfDOXjnDYbiDUwojROpwdz7l/JIyXdhC42VosW7wYHCVHxmad@vger.kernel.org
X-Gm-Message-State: AOJu0Yxe9DvXtN+FR8oIsKuqBnMUe6HRKxWnrXBMmBr0ixx55APaR0pe
	fkjR/RgZmG9UUhZF1cuD0CYu1WiYg+SZx8APNaG2IXIWU7FTHWPROxXKhwBaD30fDXY=
X-Gm-Gg: ASbGncsR6rzxDOlabVnfeU5QRx2bTgo4xennUYzWiJmSGbm3SryL5u9DQzlW4kIXDHO
	IVHpWMde4VxPdBT1nSbFWTXft2S+77VqTWkewIZLS26QmFMkDcSk4s3PYkgyc7XFcBlKfFpktSp
	NnAPdJL2r3cBVZpIhkdBSKYTdHERzR9Seksf16vlFGzIwRIuDa9Q7V106KLfRK90CuhRCqJFslW
	SIjlD/AXCf1xqiLq51ObB4m1ADmq5UlUQkOeLaQhY46rT19fzjZV3TVzX6aRO+KkuMLOcmctE+h
	E+UxeOCl3QTZ2Su9OPa0dxEQNB50BI8Yhsgp9TxDUswIgROoqC0PAngchxf596vlIrWq2p8khY2
	wBgCoWrTqnhqK/ItuqDVBFDfR
X-Google-Smtp-Source: AGHT+IHL1iIhwrXApah4rYbKaIE+inzvLNC8tyiskTzjDNA+vRNLW36MNlQTR2zyMbL0FHm03im1Ig==
X-Received: by 2002:a05:6402:4412:b0:60b:fb2c:b789 with SMTP id 4fb4d7f45d1cf-60c88ddd1fcmr14069289a12.21.1751382960619;
        Tue, 01 Jul 2025 08:16:00 -0700 (PDT)
Received: from localhost (ppp089210105145.access.hol.gr. [89.210.105.145])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c8320226fsm7535009a12.71.2025.07.01.08.15.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 08:16:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 01 Jul 2025 18:15:58 +0300
Message-Id: <DB0TFZWLD0HE.3I2409138M8B1@linaro.org>
Subject: Re: [PATCH] docs: devicetree: overlay-notes: recommend top-level
 compatible in DTSO
From: "Ilias Apalodimas" <ilias.apalodimas@linaro.org>
To: "Raymond Mao" <raymond.mao@linaro.org>, <linux-doc@vger.kernel.org>
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.20.0
References: <20250624181320.2810521-1-raymond.mao@linaro.org>
In-Reply-To: <20250624181320.2810521-1-raymond.mao@linaro.org>

Hi Raymond,

On Tue Jun 24, 2025 at 9:13 PM EEST, Raymond Mao wrote:
> When managing multiple base device trees and overlays in a structured
> way (e.g. bundled in firmware or tools), it is helpful to identify the
> intended target base DT for each overlay, which can be done via a
> top-level compatible string in the overlay.
>
> This patch updates the document with a note and example for this
> practice.

I think it would make sense to describe the firmware handoff stuff shortly
here [0] and explain why we need it. I.e it's possible for devices have a c=
ommon
firmware binary which only differs on the DT and the applied overlays so we=
 need
a way to identify which overlays should be applied once the DT is selected.

[0] https://github.com/FirmwareHandoff/firmware_handoff

Also please add
Suggested-by: Ilias Apalodimas <ilias.apalodimas@linaro.org> if you send
another version.

Thanks
/Ilias
>
> Signed-off-by: Raymond Mao <raymond.mao@linaro.org>
> ---
>  Documentation/devicetree/overlay-notes.rst | 28 ++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
>
> diff --git a/Documentation/devicetree/overlay-notes.rst b/Documentation/d=
evicetree/overlay-notes.rst
> index 35e79242af9a..30b142d1b2ee 100644
> --- a/Documentation/devicetree/overlay-notes.rst
> +++ b/Documentation/devicetree/overlay-notes.rst
> @@ -103,6 +103,34 @@ The above bar.dtso example modified to use target pa=
th syntax is::
>      ---- bar.dtso ------------------------------------------------------=
--------
>
>
> +Overlay identification
> +----------------------
> +
> +When managing overlays dynamically or bundling multiple base device tree=
s
> +and overlays in a single system (e.g., in firmware, initramfs, or user-s=
pace
> +tools), it becomes important to associate each overlay with its intended
> +target base DT.
> +
> +To support this, overlays should include the top-level compatible string
> +from its base DT.
> +This enables higher-level software or firmware to identify which base DT
> +an overlay is compatible with and apply it accordingly.
> +
> +Example usage::
> +
> +    ---- bar.dtso - overlay with top-level compatible string -----------=
--------
> +	/dts-v1/;
> +	/plugin/;
> +	compatible =3D "corp,foo";
> +
> +	...
> +    ---- bar.dtso ------------------------------------------------------=
--------
> +
> +This top-level compatible string is not required by the kernel overlay
> +mechanism itself, but it is strongly recommended for managing overlays i=
n
> +scalable systems.
> +
> +
>  Overlay in-kernel API
>  --------------------------------
>



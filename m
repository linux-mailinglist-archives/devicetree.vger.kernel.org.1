Return-Path: <devicetree+bounces-243806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 073DEC9D232
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 23:03:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7B6F5349683
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 22:03:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D14722F8BDC;
	Tue,  2 Dec 2025 22:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="eBfDWS2R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123002F90CA
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 22:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764712965; cv=none; b=G5n8O8XwkpqdLMYEauPYJHCSkfz+XRb+b4r5JhMjQvpPz5Z9Z6QuRyqQlriJGdRIUaWDNnxLpG5IRPZMT2ZylZKnAIM1jqx/8oSphSrw+OUabKrLKyv+CWIDkDUMQAG6q2aL8Y3HP5fh+MvCbVbMW0DnBIgEW/D7sX9mHzyXw/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764712965; c=relaxed/simple;
	bh=u974lUXvRv6etq/8pbQkXrUsWQ/HwedC4B64gdg+Fz8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PpdmcObhRqMxkpM+yyws2qpVOj9vcB978lI5RaEUSOpTIeoodW63tzNZ1Fj0Qh+GHEJmbHTIBOQ4I4DVFnfBOv+3CuLY7r+RScdEPbNz2X1AyDjwmvwtXRbIG/SciBhFHVwJw194Z+HM9j07rfFutbf2mfNuMg0LScJMyrJu4fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=eBfDWS2R; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b75c7cb722aso866757966b.1
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 14:02:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1764712959; x=1765317759; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u974lUXvRv6etq/8pbQkXrUsWQ/HwedC4B64gdg+Fz8=;
        b=eBfDWS2Rf9UngnKEJlTbj/uCqIsuQO4GsqAq7vhOwpvSzydIIYPD/zP5p0/lIfhJqJ
         CcAPJrAAKC4W6y9JVyVbbTwrZ8G+0yARgy1NPQt++MpShmpWQShU18WPKyg+LSjM3RbO
         QiSBo+/MQXvww+C5ReV5V0WtCEXq685G+q52M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764712959; x=1765317759;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=u974lUXvRv6etq/8pbQkXrUsWQ/HwedC4B64gdg+Fz8=;
        b=Nm3MkQwRuH0FvVzsq7eXORMLfwMLvx6qQVB9xUSc1XO1DPZZXT1gGsb4ipuQtC4B0a
         gGDATOqrL6FI7IohAWZbjNRMzyS/etzfcTa14FGfeCl2B4ScK/W7yjrJgRC5u+/k2qnC
         NsAA8kPQ3qJS4NLRBmsQBxNnPA6KEINr1ZoSj2N3jO4jVv394p400Tv7htqnXN+vM+fo
         xyHc7BgfMpVwqqOIkdrOV2MswJod7eWfe6+I2F9LMvBIinpsAmohLmqCJ6RYHbZ6rWJb
         bLBNslo6NMjw0EJgQYQNrvH6725epTxzrswGUZJcpA1GUxjTAQ3Qvw+Z8Lcd509fOspU
         8cww==
X-Forwarded-Encrypted: i=1; AJvYcCWYii5anP8GS8lvSPdu9Y8eD11vq32Nfi20bh6Q4pvWfNGMvrWj8hBDl6QKS0lP5QgSrK3+WMOsXQ1k@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2yvL6IP/NTu0HkV8LW912P9KwAKK8FqGEoTrWl/zgQd9LFiBx
	HQcqBwdI7tW8l2j9YD7PntYnQDosc3fo/w/ddr4AYZYQndSWy+3fInvc9oEKTZ2XD2Qvi6yom7g
	YQybiJmyU
X-Gm-Gg: ASbGncvjerv26Qt439GUMWuHC0RsiVpmeX7pwRxupatau5GbiUlxoXMlFVcYO5vD5Cg
	4fgCMLHCzMuGJ7x244IQ1nDIYy5JavqVSUYKFNv7WJk5Co0p2mIf+pEqdBlviwHB23Azm01C1h4
	FYzEBYqd5guYdL/73W8xt5ImixN9fQ/eNnFjXxVlE29bWEyn+vDUf89Tg8A5HFXvsJPZNuEXepb
	C/dVAJAoalioO1KBujULwzgkOvLuKvJVNRHu/1leBcpsraEVqf5D3bTJzwJTs1vGW3ChoceURdj
	mmaxk/gjFoEnsldEDlDFfzsrfSuh+gB8e9kgj0gLGffQka/0HzBiJ98hLIwUZzIO6t3HhYa4Sos
	OPHWVzUIR+CsNibJfkRCG8xt0y3TnAnNFB1wnpbxVftp3zxkVCpH1nObgvPYjY8z2aOylsAH/Zn
	DEBgKBYBhfTyuYIn6p+7qqowg762ZMCJkcc+SXm4zW8o3i1gwO7w==
X-Google-Smtp-Source: AGHT+IHA7mU2YULPt+tctSaPHsxWc66jteVrQ7H5gw6a0oqI0kj9TuoYt64LkVKOO63w2SfoNIiu7A==
X-Received: by 2002:a17:907:7f8a:b0:b72:6143:60c2 with SMTP id a640c23a62f3a-b76718c19d4mr4748035466b.51.1764712958727;
        Tue, 02 Dec 2025 14:02:38 -0800 (PST)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com. [209.85.221.49])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f59aea78sm1554375166b.36.2025.12.02.14.02.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Dec 2025 14:02:38 -0800 (PST)
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-42e2ce8681eso2600882f8f.0
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 14:02:36 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUeX0K2IeRpAUOmAg55LqAjAgqhiwqAC7scfujvHiRojRB5rmQ0CRtmYuqDN0IyD2YyCgPVGtmNNqu5@vger.kernel.org
X-Received: by 2002:a05:6000:1448:b0:42b:3090:2683 with SMTP id
 ffacd0b85a97d-42cc1d23070mr45380932f8f.53.1764712956453; Tue, 02 Dec 2025
 14:02:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAD=FV=Ux7nGFnYEyX0cUL-9__BKnTYc+kAJjkF458ZnFS7zoJA@mail.gmail.com>
 <CAD++jLkuRQKoiEN928GtAj7wUts5PxH905bLp6ZhKsJ3NnenEA@mail.gmail.com> <CAL_Jsq+uVyGzi+TniwJQEOFDm=L9=S-aLWfvyDmY-GQD5iAEOA@mail.gmail.com>
In-Reply-To: <CAL_Jsq+uVyGzi+TniwJQEOFDm=L9=S-aLWfvyDmY-GQD5iAEOA@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 2 Dec 2025 14:02:23 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Vn1z0chJZ=q3NZ3mKYu5v=YnuCBWUyStHMtD8NmY+C5A@mail.gmail.com>
X-Gm-Features: AWmQ_bktU_7WzMXkSb0jNKYTqaWWW-X2pb9d9w7tIirVWuCJkv8u5Cj9FxSuwAw
Message-ID: <CAD=FV=Vn1z0chJZ=q3NZ3mKYu5v=YnuCBWUyStHMtD8NmY+C5A@mail.gmail.com>
Subject: Re: Proposal: Officially allow "incomplete" trees as a base
To: Rob Herring <robh@kernel.org>
Cc: Linus Walleij <linusw@kernel.org>, devicetree-spec@vger.kernel.org, 
	boot-architecture@lists.linaro.org, Chen-Yu Tsai <wenst@chromium.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	William McVicker <willmcvicker@google.com>, Julius Werner <jwerner@chromium.org>, 
	Conor Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Dec 1, 2025 at 5:07=E2=80=AFPM Rob Herring <robh@kernel.org> wrote:
>
> I would be interested in some experiments around making this change
> with existing DTs. Take a board DT and add the overlay boilerplate
> (that may be nothing more than add '/plugin/') and remove the SoC
> include. Does that apply to a compiled SoC DTB and is the result the
> same as before?
>
> Think of it as moving from building C code using a #include of every
> .c file to build a single .o to linking multiple individual .o files.
> No one would argue the former is better.

I suspect it would work some of the time, but it wouldn't be
guaranteed. In the very least, the base SoC "dtb" would fail to
validate because it would be missing a documented top-level
compatible. :-P ...but if we ignore that, I'd imagine these things
could break:

1. If a SoC is relying on a "label" that's provided by the boards, it
could break.

2. If any of the boards "delete" things from the SoC, it could break.

3. Board files could have been relying on the "bindings" #includes in
the base SoC file.

I guess the first two things are much more common between all of the
"dtsi" files included to make up a board than they are between the
main SoC "dtsi" file and the others, and the third one is "easily"
fixed.

OK, so I did a quick experiment and quickly found an example of #2.
Take a look at "sc7180-acer-aspire1.dts" and you'll find:

/delete-node/ &tz_mem;
/delete-node/ &ipa_fw_mem;

Those delete nodes from the SoC tree.

I also found an example of #3. sc7180-trogdor.dtsi refers to
"GCC_MSS_CFG_AHB_CLK", but it doesn't include
"dt-bindings/clock/qcom,gcc-sc7180.h".


All of the above could be fixed, but it stops being a "quick"
experiment. ;-) Essentially, if people weren't trying to follow the
rules of the overlay-to-base boundary it's likely they've crossed
them, as in the above case. :-P

If continuing the above experiment would help convince someone, I
could certainly continue it. I guess I just don't have too much of a
doubt that it could be made to work OK. I think it would be _less_
efficient overall to ship full DTBs generated like that because we'll
have compiled the base device tree with "-@". The only way to become
more efficient would be to actually ship the base DTB + overlays.

-Doug


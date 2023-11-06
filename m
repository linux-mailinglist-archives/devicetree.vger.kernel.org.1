Return-Path: <devicetree+bounces-14141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBEF7E2393
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 14:12:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2660E1F21B6C
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 13:12:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCCC51EB5B;
	Mon,  6 Nov 2023 13:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TtkLGhST"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D972210E2
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 13:12:50 +0000 (UTC)
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B62EE112
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 05:12:48 -0800 (PST)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-5a84204e7aeso51765727b3.0
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 05:12:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699276368; x=1699881168; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MxpPF2PaBL3CNmfmQemDqBdiN737CxFp3aHV5kAbiR8=;
        b=TtkLGhSTEltoS3Bv5fxtYantLwI7UJ+S2h2ei0zBl1TG1h8CsdGSofiTGBa1nfhu4z
         gCJ/PY9xP5J1XOK6t4OlLcHIxhKqVt/kXLMnRin1JVPbdZQFGcrOtCj+f68pyhVZuJ+J
         B5E5pJYKorUC9QygwPRpXvjUltvymzRGy7gfAeg6fFC43dk6AU1DDFaE0re/0ox33TeB
         ghYGO4wLa9mYCk8jU/KO7yvXQxvLSVGipSMy6Wh71WCK//17+YcBCGGoOGAWj+ULZ5Rq
         mmy+kUOk6azSrHyvAAzI0Ndg6W1tm/hBwlYmQlONHHC99fQIKYY3C3xnQ+MbSkHiMyWk
         ycxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699276368; x=1699881168;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MxpPF2PaBL3CNmfmQemDqBdiN737CxFp3aHV5kAbiR8=;
        b=NSpf7P/VRe6JRYfWFG0a/6J35PBfKToFFJ1Nt6B50WKfa3JyL+XNCtGAfl7D8fYlgh
         RMDEcZFwMf6Sv7Gi8tV4EuYgEqXsb/tUYjIVN50bOCNE9XcUpaWgkaBmagbVeMWdThUX
         Ln0E2TZvDbHKIZ14nrJwPwHjud90EuRKEWv6ScE4GOr7IkLrl0yQPN7cCLair/tefxxq
         hPzQriLemTAzuOOaZcyd0i8FaQoLlxBOdmdwzefuvArDh9UcNDuuXzCmM5sEHdHoXtav
         O+QHxpUyL4GsLwGAg+wwim0r6yJOIfFN+DjS5ed0rSDwbGfBv4S1B44YhUs9FLjh5sw9
         N/3g==
X-Gm-Message-State: AOJu0Yw6lTjR7Pj+ESU6z5WY1s4iRgh0fq0+guodw3emnDasKbZ7/8gm
	WibVQtA7xmAdF79SzFT+Gfm9mzkEWvlC1QCRdk87eA==
X-Google-Smtp-Source: AGHT+IEFyhcttwC2AVcJ6l458vobu3PLKnKPb9gZbnAPMBAItuOH18+eViIXYZ8jDfE6HXw27sxS5z1tCCF8lr3YnKk=
X-Received: by 2002:a81:838e:0:b0:577:51cd:1b4a with SMTP id
 t136-20020a81838e000000b0057751cd1b4amr11212499ywf.41.1699276367940; Mon, 06
 Nov 2023 05:12:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1698353854.git.oleksii_moisieiev@epam.com> <e9285b4377242e4d888391be987cbb99caf8c573.1698353854.git.oleksii_moisieiev@epam.com>
In-Reply-To: <e9285b4377242e4d888391be987cbb99caf8c573.1698353854.git.oleksii_moisieiev@epam.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 6 Nov 2023 14:12:36 +0100
Message-ID: <CACRpkdYW-xmejyOo9H9XSkcabvYgBqPvpjppvNe_RF6RLxyxKA@mail.gmail.com>
Subject: Re: [RFC v5 5/5] dt-bindings: firmware: arm,scmi: Add support for
 pinctrl protocol
To: Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>
Cc: "sudeep.holla@arm.com" <sudeep.holla@arm.com>, Cristian Marussi <cristian.marussi@arm.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, Takahiro Akashi <takahiro.akashi@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 27, 2023 at 8:28=E2=80=AFAM Oleksii Moisieiev
<Oleksii_Moisieiev@epam.com> wrote:

> +                keys_pins: keys-pins {
> +                    pins =3D "GP_5_17", "GP_5_20", "GP_5_22", "GP_2_1";
> +                    bias-pull-up;
> +                };

This is kind of interesting and relates to my question about naming groups =
and
functions of GPIO pins.

Here we see four pins suspiciously named "GP_*" which I read as
"generic purpose"
and they are not muxed to *any* function, yes pulled up.

I would have expected something like:

keys_pins: keys-pins {
  groups =3D "GP_5_17_grp", "GP_5_20_grp", "GP_5_22_grp", "GP_2_1_grp";
  function =3D "gpio";
  pins =3D "GP_5_17", "GP_5_20", "GP_5_22", "GP_2_1";
  bias-pull-up;
};

I hope this illustrates what I see as a problem in not designing in
GPIO as an explicit
function, I get the impression that these pins are GPIO because it is hardw=
are
default.

Yours,
Linus Walleij


Return-Path: <devicetree+bounces-10658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD9B7D25B6
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 21:57:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC8C11C208E8
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 19:57:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE53012B71;
	Sun, 22 Oct 2023 19:56:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V+gjtb42"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B7FA3229;
	Sun, 22 Oct 2023 19:56:56 +0000 (UTC)
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93ED2E4;
	Sun, 22 Oct 2023 12:56:54 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-99c3c8adb27so375061666b.1;
        Sun, 22 Oct 2023 12:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698004613; x=1698609413; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QgJstzHTImBTmTHab9BlzOH6E80ZpfiuRFtp7sNw7Uk=;
        b=V+gjtb42a+TsCTwS4MAQvWynMMIRrl2M9vnhBy5ddlWeEennmk2H9DbdobROj85Xzs
         F3PSd9QVHu2TRKHf0wMHohll7JdTZXM1UUqVPkvMrYgHSf8VrNRzcEU0ojnDTEktYSOO
         VvgRC/DPvBvUHEXRPdun2eNtnLiNaknLNX6Tkt6gCoT0r/R+rNbLk/Jgll56IYk5B/g/
         XKd8LTlvkANrkXsQ4DXMhlCX2Prp9h/le3quN5GJt09N4tniRX5KzYpmTCC9+W4eU5ad
         SHm21fmK2NbQ34e2a0Czv60d7qREUYTEGJrRW31/KLZq4AAlEDZsmHP4D+ZyU+5BA65E
         kNWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698004613; x=1698609413;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QgJstzHTImBTmTHab9BlzOH6E80ZpfiuRFtp7sNw7Uk=;
        b=nLKUq3qBSew77xtpsxeuhbAtXRS/jo7M5bEJ2pj57ZD/f7JKB5Wy1Cgq0BvCmptnSZ
         EsbocBY8wTsWgDMG9mUL5jkhqcPebFCWJZL2Q/ZDsS9db1sWL/ViCn98MnQZ7/C9EE+/
         jUwRfMDMSRc/9HPW2JtMrNvPY0vA/vTWpqGuQzxIRBJnbilLDc2auRY3OnSw1JemIcnG
         ll5I5pOrJNAg9MOsY1dD789DfgJ9sBxuulzztPilsIOefFWYNlh4Y40Qel5EWAKqHVBH
         oFobhl4vdOQviYGR3hDTd3gnzFCavo9/q2cSmuSP8H0rm181Bs0fcdbHnmGhNTcI+2X6
         dXMQ==
X-Gm-Message-State: AOJu0YxF761QIarsw5i58OWWyIJpckqeeXw5CUi2WpfYIBeICeHTbFa1
	R3UzNUgsCU+75cT272O82vWDSqjzEr1ItZeuZn0=
X-Google-Smtp-Source: AGHT+IF4etjmtedAsRQejbbVP6oSb2KAZwzt8vJr0vpi1L32sbXLciToyifofwy68xYb/0dpMeuyoQA/EB++xYomCQo=
X-Received: by 2002:a17:907:268b:b0:9bd:bbc1:1c5f with SMTP id
 bn11-20020a170907268b00b009bdbbc11c5fmr5518918ejc.35.1698004612307; Sun, 22
 Oct 2023 12:56:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231022173811.8229-1-lukapanio@gmail.com> <20231022173811.8229-2-lukapanio@gmail.com>
 <3307fcb9-1697-4a9e-b4f6-c00c2b10ba89@linaro.org>
In-Reply-To: <3307fcb9-1697-4a9e-b4f6-c00c2b10ba89@linaro.org>
From: Luka Panio <lukapanio@gmail.com>
Date: Sun, 22 Oct 2023 21:56:41 +0200
Message-ID: <CACi=Ov58mGYT65kE2eHVx54v1g61Kpnn=pw4ETPmJBWuiJ3aOA@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: sm8250-xiaomi-pipa: Add initial
 device tree
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Tony Luck <tony.luck@intel.com>, 
	"Guilherme G . Piccoli" <gpiccoli@igalia.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 22, 2023 at 8:46=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> If there are no other copyrights here, why did you use BSD-3 license?
I am by no means a licensing expert, but as sm8250.dts did use BSD-3
and other device tree's (for example sm8250-xiaomi-elish-boe.dts) did
use it, I thought I should do the same. Should I drop it?

>
> chassis-type
>
> It does not look like you tested the DTS against bindings. Please run
> `make dtbs_check W=3D1` (see
> Documentation/devicetree/bindings/writing-schema.rst or
> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sou=
rces-with-the-devicetree-schema/
> for instructions).
>
Thanks, will do.

> 0x34 or 34?
Yes 0x24, should i tend to use decimal?
Thanks,
Luka

P.S. Sorry if you got duplicated email


Return-Path: <devicetree+bounces-72465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2367F8FBD97
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 22:54:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A01A11F2149F
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 20:54:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2BE314BF86;
	Tue,  4 Jun 2024 20:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xqTXgVWq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4030F14AD20
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 20:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717534480; cv=none; b=lR/acDdLE0pQz+/NdYCSwfgQEx9A2lZzVoLtzK++fVBwM0ZMsHAROdFVAF85PEA+SjccoVa/uyEMVvEpLBZ0NzBCor3P6excUvpwqM8KC/FigGEnIEdR+CpcmjDDju19vXyixZ3lU7dJKiDgXlbVop6QC2mcUIhbFct/oV3P2tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717534480; c=relaxed/simple;
	bh=VBAeMq8KfjUFFuqTOk8422KB8nblZA3D+lJujgVivKU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=c95FnMKb05TK+jUdB3ndUdB5XrdHWmmte1TAOt0+NpnE4gmjsMI6YECYWTxsHHs16mGHHP9Z+Appo6TLcMzaTWlWlVR17u3QcAIwfFpIFdmgGm1tN67b5E1TZXe+R5NiNdxJ4GIzIjktr5kES2gBRs+qO0ErW27VLl3LiNMhcZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xqTXgVWq; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2e95a1eff78so79666311fa.0
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 13:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717534477; x=1718139277; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VBAeMq8KfjUFFuqTOk8422KB8nblZA3D+lJujgVivKU=;
        b=xqTXgVWqJRQ6BqAsp/TbPJsTTjFzacBProXFH2b4xFwHUbmIP103UUeR1SUvadbKDR
         GzS9Bf1Mzzcn+6zOYeb/6IkyofM4gYKxOFgyIZBsvZmNvKlhz/VUNo8ia+4vpU99N0bM
         C1z2QUiaKPX7xyhVHeCVbFGlHB0mp7PIW/T5zOPMNAo5Ho6wpswm00cz7q/8jBLQVdn/
         hy2m4VffPlCotkLa14W5wfSGMYcOxZuO7gfJxNW/M3Jz7t5eK1H4Qsp0gx3mQzk46R1A
         093wBkjcoYBm7LNpQX97KbaZ72P7PSqTNbBj/IijSHvEWPfZ/5D1s654vti7pZnmhCjq
         9Vww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717534477; x=1718139277;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VBAeMq8KfjUFFuqTOk8422KB8nblZA3D+lJujgVivKU=;
        b=MWSXo/tuCad71dxQjmfodj+zb8SVXSeiMULzcr9doLue//9y9J0Yuyk8EpmXEAwdjG
         vVcrdyTMtzPg6qHLs0AMleaf0nIBAuEbUWXHBj1SwNOszY+Ku43DafGJigViapQrCHGN
         viSha8OYnN287YUjywBxpVg61cPyI3Vv/AM15D78CTB0KXYHow0vPq2gYmm+S3DaveNd
         Bs0ysJQkTk8zMFPfEM9xuGNjJLK6lKChZ6rl1z9Dn682tlEaStyrniKz905Pilhm9AwP
         V10h151o51DlFBxYLHpKy/XoNUfv4ONiEUVRFMpWAwxTzEqkQRP5I/YkMP3qIqNmsTf6
         XXKg==
X-Forwarded-Encrypted: i=1; AJvYcCUbpyUgashcb8aG8Ni+XOH92BDAZSHGgZqiLWBroNkdcD1/UnPzTvC2hk8/nk2HCBo9z38ILf4t/drRXtuGHZGWMZgVfkHZlD0X3Q==
X-Gm-Message-State: AOJu0YxM3xkKoTbrLNMRI2VvqLIcD7xDxfcoGsxXN9ge4FtwTBfC3yDP
	0grCWXcs/V5dY+SYtpLk9tF1H9e7UClcf9KHA8Q5pEYIHMTAjQ9rgk5huK90XmztMaP8cTe7w0j
	pmfXHUhYMJCetCvp5ej6Gv4kAvisAzP6nl0gzKw==
X-Google-Smtp-Source: AGHT+IE2YUjdEQCPYNzAzvq05kgFO3gcsrBJu0oDcdozbnSjCpn58jIr20zM456R2tCctmXmb1rQGsA1gIsJI6A9KkQ=
X-Received: by 2002:a2e:9a95:0:b0:2dd:ccb6:e836 with SMTP id
 38308e7fff4ca-2eac7a0de42mr2264861fa.25.1717534477526; Tue, 04 Jun 2024
 13:54:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240602-pwm-gpio-v6-0-e8f6ec9cc783@linaro.org>
 <20240602-pwm-gpio-v6-1-e8f6ec9cc783@linaro.org> <CACRpkdbPGEx9QSazVfP7rbkM7x2MnJbrACdTi3zyniQhZSyTbw@mail.gmail.com>
 <20240604-creole-easiest-2146ac2ea996@spud>
In-Reply-To: <20240604-creole-easiest-2146ac2ea996@spud>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 4 Jun 2024 22:54:26 +0200
Message-ID: <CACRpkdYDcR_ysF4rX6Zx6ZjQpgzYxxNKR+U=PJOVCndy2hrGaw@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] dt-bindings: pwm: Add pwm-gpio
To: Conor Dooley <conor@kernel.org>
Cc: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	andy.shevchenko@gmail.com, Philip Howard <phil@gadgetoid.com>, Sean Young <sean@mess.org>, 
	Chris Morgan <macromorgan@hotmail.com>, Stefan Wahren <wahrenst@gmx.net>, linux-gpio@vger.kernel.org, 
	linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
	Nicola Di Lieto <nicola.dilieto@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Dhruva Gole <d-gole@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 4, 2024 at 4:14=E2=80=AFPM Conor Dooley <conor@kernel.org> wrot=
e:

> > The #pwm-cells are currently not properly specified in the bindings: fo=
r example
> > pwm-tiecap.yaml says "See pwm.yaml in this directory for a description
> > of the cells format."
> > and that file says nothing about the cells and what they are for, shoul=
d
> > I send a separate patch for that?
>
> Does this suffice?
> https://lore.kernel.org/linux-pwm/20240517-patient-stingily-30611f73e792@=
spud/

Indeed. You can add:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org> for the above patch!

Yours,
Linus Walleij


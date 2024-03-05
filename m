Return-Path: <devicetree+bounces-48588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D97872A2A
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 23:25:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 43CD2282DDE
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 22:25:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 934BA12D1E3;
	Tue,  5 Mar 2024 22:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QjBLif5N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6C925A796
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 22:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709677523; cv=none; b=qg9v/jGkY2+EVRwxqIv8KeDakuYoNscvBnFOHU3aEKiEbubX5V4vkwkMTl5oeYkiMZSbuWr/Dvg8qtH/W2XZCabY5/iS/5c4RhSwFaefefdbpohCtyOufdOmm5BfylvBsB8FgHeCueShwmz56mHEKngfFy/OirJbbEROjey2EBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709677523; c=relaxed/simple;
	bh=f3nTnJgkfAw37K33Z2PvqlSHbbqdwxuoQkfrKprzz20=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ghu0nd+tH9TPQwIBKNaIloBlcXCmBdy/F0CVWa0AsmuxXz5abaB/0AYfuiN4f0xY3/I87bef+Il1+SZoCYLES4oIiRSbH46pvZdODcDFwsiPKDw5qxGmMd4UaiP70qpAVG55yiW6DUdh0GYVS6BMIkJIcfGMPn34Vyni9/vWBqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QjBLif5N; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-609a773ec44so35113587b3.3
        for <devicetree@vger.kernel.org>; Tue, 05 Mar 2024 14:25:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709677521; x=1710282321; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MGwm2lfKrMr319TGYTOdrKoM3Z86YjxAynwdBTS1iXw=;
        b=QjBLif5NMOp7HWG/GHIQnQ23AlXp6GI5oo4C5gXs8ET03hdpvg1eHJjo7+Y0L/KPHw
         NcC0pcxcmHGoT/kZ76p7s036yBRnr87aUaOxo6nlJA69JRU8HhLcJkeepdUxh7OQvLb1
         yHOZMNI90Qm56ijDUdMyNo4crWJdCZxyoY8hK8QFw2ShR5d6o0kXn8duLKdBTFOXR7Ej
         k0JK1yDC4eLAOg6PC+NUjUR8RUAqHsi3+S52nT2MxWjUebcZSWetduF2H2gKyo7pNV88
         YHjoK5MoPYVEAaTsMEma9KMJukz1NB7T6IcOmUgjdRyW43bcCLK++1gLg6maksmI6Zob
         z4bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709677521; x=1710282321;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MGwm2lfKrMr319TGYTOdrKoM3Z86YjxAynwdBTS1iXw=;
        b=a1DHDrOhBAZC6LNMtJECEt+aLB7S0oUMfG4LuxsCBfLt2SlLSebJ9IkVrDJDgQCy7g
         AJMdO386TNMZtNTkEHx8QXyXXZIcUO9/tdTLJoswg9t/iYUKPzdez/Bx8i7FnbJ8lYBC
         hsbRcynI7C+vh7v2WE5DDslYdhb8DbE2SCweTRnKv49fpGz6neySCePyglW/hAosOksL
         1bMnsTdmV07vHrFFv+z0EWlzfiUHoycmg/Z9q8lQ4Uzwx6CSDmx3k4sXI8Pty4FwDB/Y
         c7OZXSMcCMc4gG12Q5JNzFPxKFxb3/Ez/WbKksR9N4k49k9E8oegwvsXfvb2G7B6SSLH
         vAjw==
X-Forwarded-Encrypted: i=1; AJvYcCXFmmq/TM/w41ZroCtz0jG2yYC+tcZXNMtxntOzImLLrbSVl/dZs98xOHTt1p2oQpbgZdExnUEzNpT6p4fJmZBv7Fp1an5b/Gi4UQ==
X-Gm-Message-State: AOJu0Yxga1+R2FwJDcpvMkXqAcobazfSAepGtS6kx3kCcHdA5oVR5we6
	66GJJ+IR1W02fMbSDrdzuVpezSeDcuC5KozEH0g9bm3ggad1vp2XeOja9NbolSO0IAjlztUd6q0
	bKa4BA3cY6xYj+4VHAV4zNnNfnRzHJ1qjIBGLVg==
X-Google-Smtp-Source: AGHT+IGCdBLYsjDNCkkw2T9dTQxo/+OlDyUZJVGvcZE9zzZknOwfEVyAo06mr0npYAzlyIfo8T2NS/SnSwT0EVODHnE=
X-Received: by 2002:a81:9294:0:b0:608:7af2:f5f5 with SMTP id
 j142-20020a819294000000b006087af2f5f5mr12914368ywg.50.1709677520791; Tue, 05
 Mar 2024 14:25:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20210624214458.68716-1-mail@david-bauer.net> <CAL_Jsq+sHy=mr0paWvxOL8yT9TwuaJdfapX0sFkOJFtjCqoT1w@mail.gmail.com>
In-Reply-To: <CAL_Jsq+sHy=mr0paWvxOL8yT9TwuaJdfapX0sFkOJFtjCqoT1w@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 5 Mar 2024 23:25:09 +0100
Message-ID: <CACRpkdY2jfszTNvUHxc8-AXFwZKQaaOkcTwZrAiKi2rU5tTn6g@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] dt-bindings: pinctrl: Add bindings for Awinic AW9523/AW9523B
To: Rob Herring <robh+dt@kernel.org>
Cc: David Bauer <mail@david-bauer.net>, lgirdwood@gmail.com, broonie@kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 5, 2024 at 6:28=E2=80=AFPM Rob Herring <robh+dt@kernel.org> wro=
te:

> Linus, did you just apply this 3 year old bit-rotted patch? Linux-next
> now warns:

Not "just", I did run checks on it first i.e.:
$ make DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/pinctrl/awinic,a=
w9523-pinctrl.yaml
dt_binding_check
  HOSTCC  scripts/basic/fixdep
  HOSTCC  scripts/dtc/dtc.o
  HOSTCC  scripts/dtc/flattree.o
  HOSTCC  scripts/dtc/fstree.o
  HOSTCC  scripts/dtc/data.o
  HOSTCC  scripts/dtc/livetree.o
  HOSTCC  scripts/dtc/treesource.o
  HOSTCC  scripts/dtc/srcpos.o
  HOSTCC  scripts/dtc/checks.o
  HOSTCC  scripts/dtc/util.o
  LEX     scripts/dtc/dtc-lexer.lex.c
  YACC    scripts/dtc/dtc-parser.tab.[ch]
  HOSTCC  scripts/dtc/dtc-lexer.lex.o
  HOSTCC  scripts/dtc/dtc-parser.tab.o
  HOSTLD  scripts/dtc/dtc
  LINT    Documentation/devicetree/bindings
usage: yamllint [-h] [-] [-c CONFIG_FILE | -d CONFIG_DATA] [-f
{parsable,standard,colored,github,auto}] [-s] [--no-warnings] [-v]
[FILE_OR_DIR ...]
yamllint: error: one of the arguments FILE_OR_DIR - is required
  CHKDT   Documentation/devicetree/bindings/processed-schema.json
  SCHEMA  Documentation/devicetree/bindings/processed-schema.json

So that's at least something but apparently not enough, hm the yamllint moa=
ning
should be a hint should it not... it's on v6.8-rc1.

> ./Documentation/devicetree/bindings/pinctrl/awinic,aw9523-pinctrl.yaml:49=
:2:
> [error] missing starting space in comment (comments)
> ./Documentation/devicetree/bindings/pinctrl/awinic,aw9523-pinctrl.yaml:56=
:11:
> [error] string value is redundantly quoted with any quotes
> (quoted-strings)

They were so simple that I just fixed them up in-tree.

> Also, David's S-o-b is missing if you picked up this one.

I mailed David about it.

Yours,
Linus Walleij


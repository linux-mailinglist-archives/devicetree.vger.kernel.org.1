Return-Path: <devicetree+bounces-18985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9887F952C
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 21:08:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4153E1C203A7
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 20:08:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FFFA12E55;
	Sun, 26 Nov 2023 20:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZeWVBZ2b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1E2BD7
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 12:08:16 -0800 (PST)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-5cce5075bd6so26781357b3.0
        for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 12:08:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701029296; x=1701634096; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oY/+6Vdf/DK4Vduwgn3n01nTcjhDvzNRLJfMJ/HHsLw=;
        b=ZeWVBZ2bsTOBYFlv/CEqfALy72G1JJXdcBFze91qgJoacKJ+7Ob2czV9Cz52qGL2Bt
         n71OwK364yWaBqvI6TUZZfW4ooHS2igd+LeUBZ5MWvE/xstwbo0u1Yocq/lXW4p6Jb9N
         qKLUpAo/Jv4gOijX1nsCOLLA04s9eXgATcw0H0R/msRKIgDNOEQhw45a3Et3wwtx2FVR
         pE6n+SsH3Ki+ICROzykztMeUFOp+q41eO3uVFaqX9cWKRbUgLCjV6W37qt0ZXCMsVn01
         KbEM7hEjmBGhRmzdMOjL3mwk2wXFslcjYx1A2LX5Hmur8HElGHi6ztj/GDdrQlkjojk4
         Vr+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701029296; x=1701634096;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oY/+6Vdf/DK4Vduwgn3n01nTcjhDvzNRLJfMJ/HHsLw=;
        b=TdKA3kPPDI0QRtCQQy1dx9vNW3pwmn0shnCG9t38uc5bZX8jhd+O67N9fb7NfToOCt
         ASqOEm4vfBzVCRDXXL3CiW9/0P6ufkG9CRZVhAfeNIlJvElKUn5LzhZpLwpTuMDH8tIe
         qKFG1OAioDzb1YoqftiwYuRaSc7Di/H3Hel8i6ZrheGNNH6vEPgXbfCLe7xb6NNPgvOh
         MtGQbE+s2DEguon7Z8gzIIjnJiMHWIDBgfsZOHQXJkfC8EaxCaoSMjwBC3HgrHu9ZJgQ
         zk7JTiiHXvQqlC4ch1SOaXDtfhtukaZCRxCx+kmnNSQ2TSRz4U1W8chGUNiQwiC85ncV
         EZdQ==
X-Gm-Message-State: AOJu0Yy+VdAv3xK8MxSFrXKCCeHrX1tZ8pcEEZx0470abMS4YJMUATiw
	KPqZzZQCG7TDl8uAxXAfQf8U8JTPrzOkS8UuEslbyw==
X-Google-Smtp-Source: AGHT+IFFBCc7DEmI9LRDuJXBegkzaw0XRK2lD9elEp31ICkd9wVkz9h0c066lGIr5re94D7Av79NdJLG0iWp7EOCIMM=
X-Received: by 2002:a05:690c:2b0b:b0:5ce:2148:d4bd with SMTP id
 em11-20020a05690c2b0b00b005ce2148d4bdmr5935726ywb.4.1701029296078; Sun, 26
 Nov 2023 12:08:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231126103029.851742-1-anshulusr@gmail.com>
In-Reply-To: <20231126103029.851742-1-anshulusr@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 26 Nov 2023 21:08:03 +0100
Message-ID: <CACRpkdayV=KUv4j+af_HSEtz05kmg+g-UTOjENsGuS4xtsdTNQ@mail.gmail.com>
Subject: Re: [PATCH v1] dt-bindings: input: convert gpio-mouse to json-schema
To: Anshul Dalal <anshulusr@gmail.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-kernel@vger.kernel.org, linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 26, 2023 at 11:32=E2=80=AFAM Anshul Dalal <anshulusr@gmail.com>=
 wrote:

> Convert device tree binding documentation for GPIO attached mouse to
> json-schema.
>
> Signed-off-by: Anshul Dalal <anshulusr@gmail.com>

Nice work! It looks flawless, making good use of default typing suffixes
-ms -gpios.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij


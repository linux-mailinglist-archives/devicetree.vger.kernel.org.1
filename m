Return-Path: <devicetree+bounces-13937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6B67E16C2
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 22:09:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A7B211C209A2
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 21:09:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F19818AF6;
	Sun,  5 Nov 2023 21:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dvlPzyJu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBB1AD2A
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 21:08:57 +0000 (UTC)
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3879BC5
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 13:08:56 -0800 (PST)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-5ae143e08b1so44424447b3.1
        for <devicetree@vger.kernel.org>; Sun, 05 Nov 2023 13:08:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699218535; x=1699823335; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+0zXtrcqAa/SL+O0N/SakZQ4wpvBiPy922c2Sz5wrLU=;
        b=dvlPzyJumI9Dycy0PWlF8GCps3YDfCwEx3g2OlNS4WzIEC3LpYgzTFarLNkOqNvFwm
         YMZ5ZWkdN7RYDhu+Dc5GJLpuTW3IZsGKZOhVTz3BTACNtPRUjUCBhPAkuNSVELiz+yH5
         MKohNwfbB56LJQGHvudr4qFz9/ozVT7Eq8tk7csKCDZ586Ft6NN6SAOMW2kxu47rU9qW
         DpBrK6XfDWugupkjHJ/bWnpn8+aoLCOsxbOVgp48sY37uXtPJamYlpXaMEAZsveyrcGG
         8AMUYDGqQXQvYRV3UDtYfsRaA8J04LcfoLb8M8EGvg6Ymau9qNPjObnhXs6zESjZ689M
         gAzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699218535; x=1699823335;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+0zXtrcqAa/SL+O0N/SakZQ4wpvBiPy922c2Sz5wrLU=;
        b=V/axCd3o1WsHLv5NUIXR2P+cIRSuYuQVymbcEcWPFFcBDcpLvck8zW/UJKPuxt3T3J
         zUJXKLy1VMCYOs1DjyTALG3QjfsS1SFtOV6zyiE1ihCaXNqyJUOGPsD/KRhfRshRzgoY
         yGPUrXJfCzuqd5uUykEDKluRZ2bC7TiRd4iNAn7AwG5Sxc6cX2oaM/VtFvYxSrd3b9Wh
         pQgGVXmTTuwZNAS0tVEb76CLK8rgrdhIc5qHKQqKyNNge6+ZAVQhEROc4RlxbexoO2U7
         H+1z6fZUrHpke0DriBN3b1K4x2MirFiRylWjBrx4EoyCO9fOXBXafWDD5eMQHa9PU9Fz
         Vj+Q==
X-Gm-Message-State: AOJu0YyOH0zTWM3FCTKQLdJpD2yMksd/2jCVeVEXmkDSRh6RSL/c5HNq
	P0eHJGWXOJOsDqTF591FdOoBaHwRritn4CK13ZTD5aWHHPmiEUaM
X-Google-Smtp-Source: AGHT+IEEZy2W9vu4C1dVy/URpJcNjc6x40y+K42qvhhGfEz/dRPXDQ7B8b3lnlZoV7Hetr7t+cWm5mvTXbsynGi3xT8=
X-Received: by 2002:a05:690c:f8e:b0:589:c065:b419 with SMTP id
 df14-20020a05690c0f8e00b00589c065b419mr11425447ywb.34.1699218535408; Sun, 05
 Nov 2023 13:08:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231105204759.37107-1-bryant@mai.rs> <20231105204759.37107-2-bryant@mai.rs>
In-Reply-To: <20231105204759.37107-2-bryant@mai.rs>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 5 Nov 2023 22:08:44 +0100
Message-ID: <CACRpkdZxF=_5ejxmPB84MmrbJ+Tv4S+OKqfc3sou4HWmZCw8Ng@mail.gmail.com>
Subject: Re: [PATCH 1/7] dt-bindings: input: melfas,mms114: add MMS252 compatible
To: Bryant Mairs <bryant@mai.rs>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, Luca Weiss <luca@z3ntu.xyz>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 5, 2023 at 9:48=E2=80=AFPM Bryant Mairs <bryant@mai.rs> wrote:

> From: Luca Weiss <luca@z3ntu.xyz>
>
> Add a compatible for MMS252 touchscreen which appears to work fine with
> the MMS114 driver.
>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> Signed-off-by: Bryant Mairs <bryant@mai.rs>

LGTM:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij


Return-Path: <devicetree+bounces-18530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B6E7F7058
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 10:48:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7B0A281CDD
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 09:48:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56811171B8;
	Fri, 24 Nov 2023 09:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O0LmHXIF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEDD0D4E
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:48:38 -0800 (PST)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-5cc3dd21b0cso16131887b3.3
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:48:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700819318; x=1701424118; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=brGSpE/I4bwiL2QodCss+SZ4iDIK+Jo8cWnug9QmyxE=;
        b=O0LmHXIFptHJj9GpaeAg56fQjAjjUnP0iTdrwXFEaCX9Nu8kCbCE6loVSr7OnS+YP/
         Wh2G3VpBemljagBCyMdaFIqthSh+8e3rn3BwYSSb0sRVghKsT9rvAS5ZlmKwIfAKVYVV
         /2D7njK8362oEJ0XKvrn6+NPRhbz33JWHCCMTMC9ZxEjIdbvD7MO1ptmLsU3E4Wa1KNn
         lOSq0ssq9vvGsC+LD9XJLEKti+SC5Msk47XfG85JFVp6N/Rx54QB7RcsU2q/U+7I6uvD
         bnTKJXdSkgtcVBeMyJUvgHNXl/cfqt7ZeqTmzmN1shmM9hp5hQdT9DdMaDlYvuCvMEwo
         JDzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700819318; x=1701424118;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=brGSpE/I4bwiL2QodCss+SZ4iDIK+Jo8cWnug9QmyxE=;
        b=n6U8XH14l+Zhaqbdr9KvvrKrglwp6AgVhYEAG5Qp3Z+3Y8WnnRm+UJsRd5SfObK+nd
         DrmU8J88cu3XHFLx1LFSbBa+pqx1MQWp2levB2rr6Ccb/hwEMKVATctedOg2JbahupRZ
         rTs+Mk3psuHXMHYlaFPsAiKjH/cKnhq1pFv1H89r2oQXYpFltNRJ/t4q8wPUkhapDGm3
         6oIDaPSWWxDwvmYAqhixeA44smeQ+pGVUGBlEvNyGshw1RdKGURXv5SJ3RinN8AdVGuB
         Ea+up2GXB81gMfNLBz5j4Ex3QSHuGBgP4y0N5VJY8iJ5cgi2UJSLikpjht6V2yjDEDCo
         opdg==
X-Gm-Message-State: AOJu0Ywjlj5wVZnQQVwC11lUaG7ZW8xNA2I3xkB5O/v3QXZDC42Q/ehF
	Lctfzldxx2rRT04ev/15iSWjSphpuIv7UKd92oxmTA==
X-Google-Smtp-Source: AGHT+IFFWjuFRxzqwnPVQOCyRHtCV15dWbgBvVaHUW8qbp1IhYnDim/OX7zwXKi8JWkHbIg5en8YBsTX9yaPJxXFD0g=
X-Received: by 2002:a81:830a:0:b0:5cb:23:d28f with SMTP id t10-20020a81830a000000b005cb0023d28fmr2220520ywf.14.1700819317941;
 Fri, 24 Nov 2023 01:48:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231117104101.9374-1-zajec5@gmail.com>
In-Reply-To: <20231117104101.9374-1-zajec5@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 24 Nov 2023 10:48:26 +0100
Message-ID: <CACRpkdbra2Mv2qcfeDbQdPnUOvJcXf4FrMmVduz1EUN-2ONvTA@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: add acelink
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Macpaul Lin <macpaul.lin@mediatek.com>, =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>, 
	Heiko Stuebner <heiko@sntech.de>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Chris Morgan <macromorgan@hotmail.com>, Sean Wang <sean.wang@mediatek.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 17, 2023 at 11:41=E2=80=AFAM Rafa=C5=82 Mi=C5=82ecki <zajec5@gm=
ail.com> wrote:

> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> Acelink is a Taiwan company providing network products (routers, access
> points, switches, cameras and more).
>
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij


Return-Path: <devicetree+bounces-11302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A31DC7D5144
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:18:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D42061C20C3E
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 13:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9209229D05;
	Tue, 24 Oct 2023 13:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pdum9Tot"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369A12941E
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 13:18:27 +0000 (UTC)
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7932910E
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 06:18:25 -0700 (PDT)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-5a7af52ee31so44346937b3.2
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 06:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698153504; x=1698758304; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RK4tlfB40aqyIbGfcZKKtFRCSp8E1XW/N6tHWlAqgFs=;
        b=pdum9Tot8y7I0KBpyt/DHom/G4gWQavA3NQm/z4lf57FC3hgzzk/0n/Y3TWCrFcRo5
         1ZjCRVSC6YdjpMWmOplkz7DnJ/Y0O6E1VjI2UyB0hKjB+jjUSRoXalkLZlmblX/5fGuN
         Pf4fMYHJZzxWrU1H8tPel4uZr1fF0L4It7kOhi/yREHtEuCTegxveVZGt0o86Z+xw/Af
         nmIag8FspgsueQm+rkNTIdGBaMOVl3aO8B8/K8Q5E4lWmRmi3w9VD0PElzkPtod4BRm4
         fUOlqaA06dWis8I3JedDhuWtPbRZSMiSzM3QHj3lZtUfVnuxd3dQEIDJ70XV2+0hN+i0
         p6+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698153504; x=1698758304;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RK4tlfB40aqyIbGfcZKKtFRCSp8E1XW/N6tHWlAqgFs=;
        b=Efsrae5MbQ0se9ZwjP/+Ytyas072XuY1BXccT96wsNYZ/pC73nUAAiRKE8r5ofVOFI
         T5t2lz15tXCVmyl8o1FFYVoDLJ7JHGe2kBuWemEI/UH7Nf4JvzfiRX0mXX/FeQaJagLH
         SsjnRnb8Hf/b1cKqXz7P1jwYTwnN+jTV42hq8no9SgxMtu274/PiDH/0eqBmGtTfJ07F
         LdwRB1bWiM0kgYlFwMpyXFOHQnBXpq+SHj7EYeb0zim6NDeW4OXnu4SX3u4R8Zmth3eW
         jynjhqTiv3z62H4plWNRG6WsTsdEzedYQXpgVGk+GYVUiUj/uqyjmerz0Vr4AGfAvR5I
         1bsw==
X-Gm-Message-State: AOJu0Yx+KlPCHdBjWK4MM/LUKUdNIETPwKSfQ/cJpCNPD18GRwOyrLjr
	2VzAVUEuq7Edi9mGMJP8O76RA8MlosKDKw4iKbxw8Q==
X-Google-Smtp-Source: AGHT+IEsQm6TC/PsELFB6VUH2p0OkBlq/WNQwnX7ZXTcfQ9guM+9xx0KlZKskEACCos7j+/6xMMZARnP77vLXSQ/76g=
X-Received: by 2002:a05:690c:18:b0:599:da80:e1e6 with SMTP id
 bc24-20020a05690c001800b00599da80e1e6mr14174785ywb.34.1698153504688; Tue, 24
 Oct 2023 06:18:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231024-marvell-88e6152-wan-led-v6-0-993ab0949344@linaro.org>
 <20231024-marvell-88e6152-wan-led-v6-1-993ab0949344@linaro.org> <169815156038.3447619.17571704457000261488.robh@kernel.org>
In-Reply-To: <169815156038.3447619.17571704457000261488.robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 24 Oct 2023 15:18:13 +0200
Message-ID: <CACRpkdZMSfKYaXR9NWpvca094=Prc6N8ZfR+QMcfS6VQ-prQRA@mail.gmail.com>
Subject: Re: [PATCH net-next v6 1/7] dt-bindings: net: dsa: Require ports or ethernet-ports
To: Rob Herring <robh@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, devicetree@vger.kernel.org, 
	"David S. Miller" <davem@davemloft.net>, Paolo Abeni <pabeni@redhat.com>, 
	Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>, 
	Jakub Kicinski <kuba@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Vladimir Oltean <olteanv@gmail.com>, 
	Florian Fainelli <f.fainelli@gmail.com>, =?UTF-8?B?TWFyZWsgQmVow7pu?= <kabel@kernel.org>, 
	Christian Marangi <ansuelsmth@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Eric Dumazet <edumazet@google.com>, Gregory Clement <gregory.clement@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 24, 2023 at 2:48=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
> On Tue, 24 Oct 2023 11:24:53 +0200, Linus Walleij wrote:
> > Bindings using dsa.yaml#/$defs/ethernet-ports specify that
> > a DSA switch node need to have a ports or ethernet-ports
> > subnode, and that is actually required, so add requirements
> > using oneOf.
> >
> > Suggested-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/net/dsa/dsa.yaml | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
>
> My bot found errors running 'make DT_CHECKER_FLAGS=3D-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>
> yamllint warnings/errors:
> ./Documentation/devicetree/bindings/net/dsa/dsa.yaml:60:5: [warning] wron=
g indentation: expected 6 but found 4 (indentation)
> ./Documentation/devicetree/bindings/net/dsa/dsa.yaml:62:5: [warning] wron=
g indentation: expected 6 but found 4 (indentation)

Oh yeah Krzysztof actually explained to me why these have to have
two spaces extra.

Oh well I just keep hitting the robot for testing this.

Yours,
Linus Walleij


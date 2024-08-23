Return-Path: <devicetree+bounces-96215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B4795D2A4
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 18:12:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A9AAFB29D8D
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 16:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A4D518A6A9;
	Fri, 23 Aug 2024 16:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SW8mP8ci"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4642189BB0
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 16:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724429533; cv=none; b=E+FKxfTwy84EcuGuP9tHgK+uVUpgSU2rLV9dFZeKAI8uuzwtcgjqUToXQORYhURIP7FvpvZI0Fsz+WsgPQzQZEhod+LOuovEC2JnrVHoV1FmgDjI3rRcyDdtabpa5EOLaasFjeY8mN9X1m9zrCBdgNDPgv4XTg6ZTo7t1j0WDNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724429533; c=relaxed/simple;
	bh=x9HeDgtUzI85qaXdWmBXNojHvmN9gKIZ55AlN9BnnFU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ANzzTPHPxkm/yPKnMPKL5nGDqTPA45vMRB52LTVlbvFGJWNrXCZ95XSWCh1YL6cPS1SBbXHCWHF+XX9zbyWBZwUQ+0FDnJ6+LkhdPK6JbPPXx88rsRLkC/sGMpXl7l+aTTVteYQp5P7TrvCw31nTVcX7rTCbFDRxzdfbBFp6N6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SW8mP8ci; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5343e75c642so2261e87.2
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 09:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724429530; x=1725034330; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LUtJ+oLA4esiCwHxzR1PJ9WRsZLpLW+urZuZZ82HGUY=;
        b=SW8mP8civONpsBVASNaU+8nXj9ShrbnaRU44Oa4Q/1xfGRdAucLAQp0rmV31HZC2LN
         KFFXXfSAorBnPJMP43IXBMYWUNd7B1499+iQmAlR6/KoWd7VEtUy8YEinxrrCKSx0vD4
         +KrWeDAOHxtzdFjfCp6b3W4MWuSiUsWH6P/7VJvJBgZGCGUReKwi/mAm0FrVy/jpDh0o
         qaAk3BefH2PTXExUYsewvWXshCe8hD1sqjUEXZ3VChiNFDV3U5Z1N2w5AYJGyUANtLEC
         Bw5MU1lRg0ZUU1fZ/mnfCgAcnmAwL7Xuin9Y/EYRiWYJPBk8VWm5SbD3aeLcgI1sXy55
         9Yhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724429530; x=1725034330;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LUtJ+oLA4esiCwHxzR1PJ9WRsZLpLW+urZuZZ82HGUY=;
        b=SwCr1PVZ6Es9LrFlaXGNEXS+3zyITZeEv6hohghXiJYECjlHRUnltwA8YosmdlAKxf
         sv9TOdM9lgbqh4GIOHX1rrorBRC1F4E0Abo+lIo8sf/3q8KEm6eUQ5ijj2GnlWXd5Cfi
         wcl0Oo1XfbD2veROVQLuCQ0NwtH3YDN2hxkDOIopqltk32qAaXPkF28LL4s1hxjocZ98
         n+LcYPxRmwGIB9xtZv8nwodfOAr9fNB3nvgaxeGPcf/9ajDgSOG0R2C3zVMh8YuIlAcW
         RjGJXFLx8d9oO8hJEZ9eE49baFqeNXxmE2VpQcmmSruDviAtDI8a427WjGBLNugE/n1G
         bf5Q==
X-Forwarded-Encrypted: i=1; AJvYcCU9whOifOBoWhVyqP1+dXIjrMonuzI4Q4+hsE6FcCyB7DrmIWUwGEC1iVagtT7zO9Y8CIFzbQM5p92Q@vger.kernel.org
X-Gm-Message-State: AOJu0YzJyeY52Ez/MTuumhCsahzRBrGJ7U9I18bgQZFVVhXCnjC4En5G
	7VXtVRVcAgPZZK2PYQ5DUPJ+p9cYvrF9pF6ei6iHstWkRA9oVSXPFauRbZLSYW8152DQweLZjN7
	3FegIfCSY8mhk/4AllQfej9hwljjHaqxbrRQMsA==
X-Google-Smtp-Source: AGHT+IGGfa4J6/rrOmhK+K2Ol6XZFt8xdTBfsTGvDz88zJF2GE3+F2dUfKvoePIHG1HbHuE9HLf0FWj4ywInoY22pyo=
X-Received: by 2002:a05:6512:234b:b0:530:ae99:c7fa with SMTP id
 2adb3069b0e04-5343882e2e1mr2006824e87.10.1724429529236; Fri, 23 Aug 2024
 09:12:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240811-dt-bindings-serial-peripheral-props-v1-0-1dba258b7492@linaro.org>
 <20240811-dt-bindings-serial-peripheral-props-v1-3-1dba258b7492@linaro.org>
In-Reply-To: <20240811-dt-bindings-serial-peripheral-props-v1-3-1dba258b7492@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Aug 2024 18:11:57 +0200
Message-ID: <CACRpkdYyZRVC-AYfpTG1f6sqrqAg0pCWxzUr7eXYtnM3jacMfA@mail.gmail.com>
Subject: Re: [PATCH 3/6] dt-bindings: bluetooth: move Bluetooth bindings to
 dedicated directory
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Marcel Holtmann <marcel@holtmann.org>, 
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Johan Hovold <johan@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Daniel Kaehn <kaehndan@gmail.com>, linux-serial@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-bluetooth@vger.kernel.org, netdev@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-sound@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Aug 11, 2024 at 8:17=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> Some Bluetooth devices bindings are in net/ and some are in
> net/bluetooth/, so bring some consistency by putting everything in
> net/bluetooth.  Rename few bindings to match preferred naming
> style: "vendor,device".
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Excellent, thanks for cleaning this up.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij


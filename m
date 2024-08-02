Return-Path: <devicetree+bounces-90686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 704E09465F9
	for <lists+devicetree@lfdr.de>; Sat,  3 Aug 2024 00:47:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A0CA91C211B7
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2024 22:47:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9029A7CF33;
	Fri,  2 Aug 2024 22:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R7MjmMOO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC2447A64
	for <devicetree@vger.kernel.org>; Fri,  2 Aug 2024 22:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722638830; cv=none; b=cQXmdCmZExZ9VnkfwGNJXHGuhWWIPd9f7/9bbZAwVQIagWQGQj2gWb5qt6ALKNKrqizunnsoTiUa+Drj5L4A4RqA6ZfYT4+xnZNL1uW/Hf6iWv/zAdN+8Ue+k86vl/PcISizfkun4a/+5Jmxsq+wmpXhiAAEwaqDTkYwKzYgCBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722638830; c=relaxed/simple;
	bh=THbTUedfPNKqjs96TIhUgzsZRFAOtZ7uuHKn4O5aN+w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gibwyonYn9sk5CLyIsZZvivHUZB9AykbmtliirA2Lxj3ukrFW03h/QELLX6z3UY9IJPxD/D9bfQM/bZhfyMUp7KMpJDIbyg75HgEwflNtBOFsS98YTdoXVSsQdJYabi6QicB8SKIZvxFFEQyrnRE7YPWvkr9qqGati31MDfqV9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R7MjmMOO; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52efc89dbedso10851025e87.3
        for <devicetree@vger.kernel.org>; Fri, 02 Aug 2024 15:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722638827; x=1723243627; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=THbTUedfPNKqjs96TIhUgzsZRFAOtZ7uuHKn4O5aN+w=;
        b=R7MjmMOOKwoGcyWXPdAKmjHimBgssKNjw9vulms0y4bUDk887y2Dyb3sQSOuwk8n+4
         nkRd0SSX+k9hauZhvhv1Mu4ObP3m1+X4RZwAhg2fw2DUkztNmV8zdxC3/RzTPae9ZNwf
         enPSuIApxI0Mjdj41YsVXVvIrAuOMnOIhuXrruG1fg60AC4/S8IbK4ZYjs+5dUDlGqSw
         54Ae0Dj8dOowo5KFG0HSoCxb5mVpKyDdXSxWj0d8H8Em/Ydc4tnQ0xR5GlkLBpIrZxXB
         SKX7i7bgd/MqeNhde8RRxpW7zASaN+hZpJe+jTmaIlQ4Cxh/3GEhnVf5ZLgqxrrVozmX
         7Z6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722638827; x=1723243627;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=THbTUedfPNKqjs96TIhUgzsZRFAOtZ7uuHKn4O5aN+w=;
        b=Te9MBN2TPiP1IsxrD2o5vVp2zvrOGTC2tpqdCQzCAwsWJ4WjUYQXFu7ysQklZEbsgc
         RmapZ80IS2tpvyJxmyxqxJbauuDXYIM19ZqLo+6eYRWA20XUP3wbziEIK2/2byBQprl7
         ujvpSK9qmC20UYmuR9hiMLbHoVCKV4np04YDH+vIFuHiCu1Z0ZJF9w7+TbIMvSpT4NOz
         meup89rquhUk8EaD9K+fl2aiZYzrYsrEJCxadicXrT6O4Q9/hUPGoI9HU87r5wzlpz1d
         YPTNLPXHfmoeH6kJ/c81fw511d8SwCWgKEZ4pI15Z9QrWjer1UkWLHcphva/T3hP1RkI
         hsog==
X-Forwarded-Encrypted: i=1; AJvYcCWlBvYtHiP+R/S3pVejZcC5n8x4MEMXiAzb+G+HsVhUCEIXAeRnYywKRjyCO3hZsXndiGmlm6Ky1OzAjeKD9y4JD6om/l66bC8lng==
X-Gm-Message-State: AOJu0YyKA4G4WyKsJ7ogh18TGEDAOiMnABq0kyDSnJIkDngofZmDVM2Z
	bdEryTYunUTztFVe5XODigPjvsd9BZDg3o6q4r1evUygSpalWYRGL+DKAuecgVMWbwVktfecl2a
	/+Ge2+kWiRiUWPWIiow/cndK0SZLb6MigDRxV7nWczEo7vLgXIs8=
X-Google-Smtp-Source: AGHT+IHaxphvvVOqZtyqFT8jtOs3FeykDhzmXg4r2inKAxkSbJwEECQUJ7Z9cz9h3d+4wk/yzyUeMpDU1gIrN18B/T4=
X-Received: by 2002:a05:6512:128f:b0:52f:c24b:175f with SMTP id
 2adb3069b0e04-530bb374350mr2990086e87.20.1722638826801; Fri, 02 Aug 2024
 15:47:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240729210200.279798-1-paweldembicki@gmail.com> <20240729210200.279798-2-paweldembicki@gmail.com>
In-Reply-To: <20240729210200.279798-2-paweldembicki@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 3 Aug 2024 00:46:55 +0200
Message-ID: <CACRpkdb_7R=B6Ud_PdbrPA4JQViMBLeyAqSbga7-Ljkq0T3M8A@mail.gmail.com>
Subject: Re: [PATCH net-next v3 2/2] dt-bindings: net: dsa: vsc73xx: add {rx,tx}-internal-delay-ps
To: Pawel Dembicki <paweldembicki@gmail.com>
Cc: netdev@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>, 
	Florian Fainelli <f.fainelli@gmail.com>, Vladimir Oltean <olteanv@gmail.com>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 29, 2024 at 11:02=E2=80=AFPM Pawel Dembicki <paweldembicki@gmai=
l.com> wrote:

> Add a schema validator to vitesse,vsc73xx.yaml for MAC-level RGMII delays
> in the CPU port. Additionally, valid values for VSC73XX were defined,
> and a common definition for the RX and TX valid range was created.
>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>

Elegant!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij


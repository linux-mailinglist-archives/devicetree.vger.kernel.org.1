Return-Path: <devicetree+bounces-184245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 676A6AD362C
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 14:28:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2A19F170D12
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 12:28:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FCAD2918EB;
	Tue, 10 Jun 2025 12:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LKRL/wkh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A52EB2918DE
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 12:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749558524; cv=none; b=oAYZmxCo/TpAk0CuPsfmNSkJZALJNctc+3k1sR22016NEYx1ePSOozcSZwIEXwS8vtggX+aZYmhZyac5yTThVvnBfbrnCe6DqcgbC8tcurww5ovhBiqcDZ5s3l/8V0kv02l10M5bynt08zIDSYKeFapnlEhenjOLUZ8Rx9C3Wl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749558524; c=relaxed/simple;
	bh=qpvt2l7UUTiMSp9Nt2nHtj3uisD8+uoR1/1D3UNyhR8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gJDC9F9v//wuYYgVFC8HRg7Ma/lqNBy3HUZBDOZ92JMSDZXsTCzmWB1/s47Sefx5yRelxYJxDZvprWzEli52RjJh3TNnMi+g5Jf0urP72ycL+ZFLel/pJKd8kiNd/6SYiRdVvNrHOGqMWbyZHDW8c3GL2u7Bcki8UdgJUYY9Hvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LKRL/wkh; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-55324062ea8so7011761e87.3
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 05:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749558521; x=1750163321; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GsOrVxtqepjy8J80Lyog9ns9pzcfAzcmyvDrXuJUtgY=;
        b=LKRL/wkht4QnbzCRHU/vBDVUMjED1jaa0jjtHJvHAlutsaNYecC4eFasiWryepV/ll
         Y+x6UvmsgzLDvOy63wAExi66zcdfI4UprmZHRjrCTCJ/NnR6BnF00ZdbNmmHRBfHVYO9
         lWLg9r8eTokbfiRRDSvEtZYWuMy7aHJo7eRcD7SjlZdfPA44U5FxPAfJ93xS8n1BYKcy
         6auYsn14kfIvYNwArTOr/uYnz0/wScCoxMyRnaHEzg3ptihTotOJsyhwdS+bK4JQXH1m
         0NrHWXJKb+ErGqTlxIMavAM8R9dzm575lfhqDHPiUGwPrj6dSeEkdfYRjxH9sbW7ZVzJ
         SQuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749558521; x=1750163321;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GsOrVxtqepjy8J80Lyog9ns9pzcfAzcmyvDrXuJUtgY=;
        b=R2qOZ0t99nSKb5ZScZPxEYAHBYTPospcaFepgNm7AmZ14qOApDH47su1crZYsgs3op
         foirrk/fldBD1lo17ljtZCecBWMxTiX1MuigyTq58t9/RZ8LWXy60y2sr3vMtHQJYQgP
         0HxmgSjpYeZ0Bv2wSjxrFaQFAp9kPLd8F0i3LBpuEtfiufRt4ch63kaBpfbU1N8Kac9N
         MNXeqhdGOty7Nt1SmzXoNFioYjuauPl5QUpK+7PjsA+Jn4mm6JQ9bpQb3KD0tb92ofsv
         VhnptMopbo6saqfmwZnSw4W0o8ZS76u8fe5wRSj1KKwpXgUk1MrsVH5y0p2cZ4reP97s
         PXvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUED/M5hlpUg8w4ePiST53GwGlSdh+Niw1SEWk/Su5z0GHembKc3sNxrGnq+WTSiyLnsQgtNS66vWZB@vger.kernel.org
X-Gm-Message-State: AOJu0YyrJ/jQ2xoi5akDEOtW86CQ2lADv93ZOugg8gZvbYGc9ko7VmuS
	jNc3VawpUd01cEtoN/3HBYDq8X5rTMFGYBzd/jLAmxFhwVbBU8aLg0o8CDYAwsFVZsyj4KStmUm
	VHqkUZA7xTRDQN1+7EPqT21e5u0hO38+PqxufOfciOw==
X-Gm-Gg: ASbGncsoioQk19/xR7UwvhdzbVGsR4Hn3EwIkxt5S3A9RkB5O8dWJ6oHco2sRDsSSYU
	Ux0+/2ctVUYwElKlBu1fkYlg+kjPq8cM5J7U38UCQk0rCP78EulFvyX5CjStNuspQ4WldVBc6gS
	Z0ptCp5myEtdhw9sd/NFtF1l04qOXl4qZvCEte6v3iaNc=
X-Google-Smtp-Source: AGHT+IGIP7rndrIqf6RWqLJPp4xdoAE+TRSEB9XlMrQhxRf3kV/JruNVdV2IPEdtEosg+5E6PSBoZ/3/v3lz/smQsyE=
X-Received: by 2002:a2e:a595:0:b0:32a:651c:9af9 with SMTP id
 38308e7fff4ca-32adfd5e7b1mr45162751fa.37.1749558520672; Tue, 10 Jun 2025
 05:28:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250604-dt-bindings-psy-monitored-battery-v1-0-7f755ff75218@linaro.org>
 <20250604-dt-bindings-psy-monitored-battery-v1-6-7f755ff75218@linaro.org>
In-Reply-To: <20250604-dt-bindings-psy-monitored-battery-v1-6-7f755ff75218@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 10 Jun 2025 14:28:28 +0200
X-Gm-Features: AX0GCFs14D3DfdKPGW1oWe6McnWZU01oPtzxcnEFGOdPnt5cB-b18SjhfOGEaq0
Message-ID: <CACRpkdbMFZmK3oUapXDrJjtfhBn56shGu9uoFYPT2_HesTF+Xg@mail.gmail.com>
Subject: Re: [PATCH 6/6] dt-bindings: power: supply: Drop redundant
 monitored-battery ref
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Andrew Davis <afd@ti.com>, 
	Casey Connolly <casey.connolly@linaro.org>, Jakob Hauser <jahau@rocketmail.com>, 
	David Heidelberg <david@ixit.cz>, Dmitry Osipenko <digetx@gmail.com>, 
	Tobias Schrammm <t.schramm@manjaro.org>, Chen-Yu Tsai <wens@csie.org>, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 4, 2025 at 10:19=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> Bindings reference the common power supply schema, which already defines
> the type (ref) for "monitored-battery" property.  Drop the redundant ref
> from individual device schemas along with obvious description also
> duplicating what is in power-supply.yaml.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij


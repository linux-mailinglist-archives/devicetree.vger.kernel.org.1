Return-Path: <devicetree+bounces-231796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 47367C11A4E
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:15:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9AA814E3791
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:15:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFEA92F1FDA;
	Mon, 27 Oct 2025 22:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t1aR8brj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCDEB28688C
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761603344; cv=none; b=NhfMUczusY+ngWRIbp6siN9C70cE4P0wXMSO9mI7TR02fb3QY3SdLbQAcSlKous/QikGmfXUlhNYaWaxau4XpGacq2J3NYHHTPPAyPrSd3edmjxrXAdr+kq+2ZNdGQWpQETHkYxxsaJ+uZe7VYz2MPJi+1VJnds/n3Zm32C1DBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761603344; c=relaxed/simple;
	bh=dKH8vYMf6SqqIJ4Nr7m9tVSkocGsGWocEbO61fBw+IQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H94lel55yIi0zCuxV0OxjEsmktj4j/26gPK+ElKQxAhukhS68s72ohmiQqE4JZJZl+lFq81bJRzq2D8VfDpdAC66vxkxqi/rVjFZqHv40f/1NpGcKKeLbHY7hnvT6ocnlrdhwa7Yid9AVoUZ+FEB+e1B3YDlzSIJL0vWilsIIlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t1aR8brj; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-3737d09d123so73609071fa.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 15:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761603341; x=1762208141; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dKH8vYMf6SqqIJ4Nr7m9tVSkocGsGWocEbO61fBw+IQ=;
        b=t1aR8brjJFRMEzXt53LT/pcO79CW60rL0z4xB7sFM2vCvDqDowTCoEx3PD+5w+mxjC
         Zy9WGy88PyWw+QvAXi4D/W7x92VYd2ZQhpdoy4gmGykzESBuyXHgici1IBgofw4wh278
         9vee/XI2BEz+P1QerWbnDniNks3hjRjiqnHD0x5KIrkjqhDkjovFTG8FRlsMZhJeC5sq
         E6FGZwfSDoDX4Zo0MWdBpYdUL70lvxB+Na0KspCgV6ZJCsaeGpsj1D1kzzt7VTCbzOwC
         aoxIiTWhf5etn49vvPD2gfxydQcA1hss6+6Plucl4aS06/tPVIMO70sm+O0W2Jcu+lbQ
         SQqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761603341; x=1762208141;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dKH8vYMf6SqqIJ4Nr7m9tVSkocGsGWocEbO61fBw+IQ=;
        b=oJizJOYLfGHnU2c9MXmbNPMegmLsQbVAS6qV7WZzvhmHUOdix56dKKRgE9k8TUdBMa
         ExLj3I/idCytVsk4EM7krcl4C+KpDpO+SE7M9n09zeSb+U1RGZomE0LaGXRKnyTgxazy
         2NLGhTabnWdBDXeEQjS89mZ7IaKiAbHhtQFai+J47yXN3VSFrPaiZIBPd61DD3XbbTqa
         k4lPaV5UqyGyHjzF5hgXxgdylt7lWvtS9MopY/fLB35a1nZ7fIX4sQl+qNCFP6LTHjpb
         SKudmFIZaSOIcODxCen10Zulfkl2djjwFAY/QSs6iCVb7g7NcK/vRobJ/msPjB1KtFE8
         OPIg==
X-Forwarded-Encrypted: i=1; AJvYcCVmH1GZoX4+hv58heR972Udqv3l4LKTkg/m4RFfCiyGXLAVBHvb+9CFThnNq6fWo+VDzi2mmcVT0+N1@vger.kernel.org
X-Gm-Message-State: AOJu0YwqZboBc9Fv9VZ1p9XKQAAFIAMfmZfmGtluSeJjrTDLFu8JYDYF
	B9nDHJXEnJdeA7TWrft7jsF/aUQJumR7RNAwRyKEUkXD6jv4WKDN1OjivVV4mFHrDVI+bcVYE8R
	g/GCgJTNtoQSdlp1AW7/lyx9RgglyljjvXovIx9mm4A==
X-Gm-Gg: ASbGncv1ZwoHILuBofvtXWU1b1L64ZFqfIR2ufnP7FNmddqZl3yKiEpo54m53EcuB52
	QXlGNahjQL6zjqW88UM5TAKFZP+IJncCqAuHGuzbl0tid6uef+P9JzM/TApyOVWUZ8hDJ6kzyQj
	6fXdiMOcRY6cMGh+uBQ45SCp0QgibJz2AbXbBKMrkWKzja9G0ZdOvZ4lFA1HNFC/xzIKZaCgrsK
	PCez3+KgMhrslCuGprI7nimvaffTcgtI1oyEyAtdX0A/4ZbyfiMAg93YXrw357KxMkjvtA=
X-Google-Smtp-Source: AGHT+IH6m3DSKBdAo1TUZBBV1Cir681XUQKPd2M1XukvdECylY8ML9HXimk23Lw5yV+XpOoav6hKjxByUPzz5iNTOgg=
X-Received: by 2002:a05:651c:1107:20b0:378:cd74:a289 with SMTP id
 38308e7fff4ca-3790774e9edmr2648271fa.42.1761603340965; Mon, 27 Oct 2025
 15:15:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251023132700.1199871-1-antonio.borneo@foss.st.com> <20251023132700.1199871-11-antonio.borneo@foss.st.com>
In-Reply-To: <20251023132700.1199871-11-antonio.borneo@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 Oct 2025 23:15:28 +0100
X-Gm-Features: AWmQ_bmjdTr7EUx2uJYxfPf9xIolvT4VGvVXwZyfYUonTVISSkwT-eVliP6qaRY
Message-ID: <CACRpkdYzT3DaqiXTg2swEKxxh2UQbhw2=uF6Md=RON9rWz+6ZQ@mail.gmail.com>
Subject: Re: [PATCH v4 10/12] dt-bindings: pinctrl: stm32: Use properties from pincfg-node.yaml
To: Antonio Borneo <antonio.borneo@foss.st.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, 
	Christophe Roullier <christophe.roullier@foss.st.com>, 
	Fabien Dessenne <fabien.dessenne@foss.st.com>, Valentin Caron <valentin.caron@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 23, 2025 at 3:27=E2=80=AFPM Antonio Borneo
<antonio.borneo@foss.st.com> wrote:

> Don't re-declare the standard pincfg properties; take them from
> the default schema.
>
> Signed-off-by: Antonio Borneo <antonio.borneo@foss.st.com>

Patch applied!

Yours,
Linus Walleij


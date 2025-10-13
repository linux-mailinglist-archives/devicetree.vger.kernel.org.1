Return-Path: <devicetree+bounces-225957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CE537BD27D6
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:14:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F9EB3A62A3
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 10:14:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 798442FE57F;
	Mon, 13 Oct 2025 10:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZKZfhagI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7EE22EBDF9
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 10:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760350439; cv=none; b=PAABkceM33Z7lxpgiY/suQHL7emNF8UxzpYnuMzne7b0giPLHHnaYdrciZYl1LbskALUM/WkoZQC9dkzGNxc7q3YSS6uHeIxe8OXOlNg7hlTmlpVrvmw2RpyXgMULl7kSDxzQPDhaqUjnWyPZY4kr1z7V5jKddOvmIblNBqK7U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760350439; c=relaxed/simple;
	bh=IGEdbdnaRYWKvG+bGlTd3zUjiAzrtQYQYYulGQBXPVQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Omv+wfGlhHUEKPBPlxvpWKs9WXkSJknMfFh4/NEA7Frdi1d/xW1oBXFE2dEucPPK+YQOP4kVziLg9da7g4CbpbU4EWsELqMBjc7Ti3MbuJVIjaBloFjnAS3acobtMwczw8DZL1OMluY/Anh8MMXUtTT0ArvNNNFnO3h+XhuyDtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZKZfhagI; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-36bf096b092so41175701fa.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 03:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760350436; x=1760955236; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IGEdbdnaRYWKvG+bGlTd3zUjiAzrtQYQYYulGQBXPVQ=;
        b=ZKZfhagIj4u6LFe1ocgaUTzSTxvFJFATTfnN1c9c/AdjypBb1UGUbP09Fx3EnBE+V+
         ARQcg4e8vFVK7pMSIDZnYie6DolRBozXlWhK/IRYGJiAPlBofRDR6aylXeYBnpoEuhGv
         iseiSIp6IXmb5/RLAHGKdNmtne2KJEtCyfTYZ0GQx29OIoLNNzHbgbSiteZThI+1fWuy
         6iQ2tqxonukRqZd0+JyuVUslzM7a580S0vPXua/SUOhzrz1GTRaZIO//KZYPFxh0sZ0B
         acM7pGN9n0B7kTv0eVLtIP4kLr/o/6MnJ/hKYZViZoR0nzeRLFC72GSOAZE8q7uqRi95
         bVLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760350436; x=1760955236;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IGEdbdnaRYWKvG+bGlTd3zUjiAzrtQYQYYulGQBXPVQ=;
        b=LO8O9dA+uh47yCUwY4mKNshP44BZRTqo8Ead6Mu1/uxgiVZTbU44XVecJ3XWin014y
         ADxCis7Jqj9yBVDM+8zHqZlGoZG7tD663mE79NVgp9qYeRPSMffPb52rgNbyOV+qjyiu
         AjJk7iqz27T/QE5imQmTh2rFiPngp1OQ2WnLZKAxEBsI2NTyC8fPG/CP0ZpwNE0g22CA
         Q8gUsBxa57b2xS3r77uVOAFw42247VC2kCbzl7HkBqMZT6JKnkV3bUWyRVepRxgcoBXM
         Acw+LvzjCxJMJzxgerxnXuOBg6f+YWoERDozi5do+ziURml/5VNzsyPwareo1vF6J87x
         tDLw==
X-Forwarded-Encrypted: i=1; AJvYcCUnDW86PzpeZG97pAbzkSx/XqGvyPlJr4FGFYW4tx5No+9OwsvG24o7Gh/6oVdKR97sOPB407jthVSs@vger.kernel.org
X-Gm-Message-State: AOJu0YyhxiOlSWRdw/xokp/kIkGYaRr6nrBduLn4SLotSX7rtyNsL4LW
	X+Koto7cFhrFSe+w/nJZN3M9Gy7hgduxAQH2S6lgpMReAE4B2xfZY+rdVSsfjLu9wwaVlTxZMxe
	ok+MNL5BxdSk9v3yIVrHX4SnWt0KENxgotT01KAJLoA==
X-Gm-Gg: ASbGnct+Brnt5uBiWdhRTWxwMr8jHgriZ8nrnsSzxIw6nOqvDHs52JFfIwDooL4xw/A
	7VgAisXcBJIuRQDmb9giiOVK5w2vMUHVbGk5pFPdGj10kaPEvRZqDlZqOG7DvbFLSM54UxiepBE
	1xkSV4tGHlWroDbX4mqvZfTDB0p/EjbvUD+fpdoMper/L/UI5PStLBcmUOxoc4khdmArIPoSti9
	RB7KWWERpHkmpmbLvh81j0/JeNemQ==
X-Google-Smtp-Source: AGHT+IEyXfMASnDudG0S7N/mc330ju/Ch5pEVZ3V2N1dVue3s7gHw8dguHiupRcJCaA2bDWHDzkge7BrzB3mH+HUM10=
X-Received: by 2002:a2e:bcc7:0:b0:368:6a3f:35e9 with SMTP id
 38308e7fff4ca-37609e4d4c3mr49784771fa.36.1760350435755; Mon, 13 Oct 2025
 03:13:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250915-msm8960-reorder-v1-0-84cadcd7c6e3@smankusors.com>
 <20250915-msm8960-reorder-v1-5-84cadcd7c6e3@smankusors.com> <o23idwppfthjoivpyzjojmoakdorr43gpmo5opmeet6oeud742@qhk2j5bjg5aa>
In-Reply-To: <o23idwppfthjoivpyzjojmoakdorr43gpmo5opmeet6oeud742@qhk2j5bjg5aa>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 Oct 2025 12:13:43 +0200
X-Gm-Features: AS18NWBAyKKP7WpPbwzZSRGYCjWy0-gOfocVoYTqFPcgneZRB7ljrZVj7GcZyxg
Message-ID: <CACRpkdZ8kQ4AKLtXpUXPu31DKAGZ45dtzPA=-moBQDtXsY4Wdg@mail.gmail.com>
Subject: Re: [PATCH 5/6] dt-bindings: pinctrl: qcom: msm8960: rename msmgpio
 node to tlmm
To: Bjorn Andersson <andersson@kernel.org>
Cc: Antony Kurniawan Soemardi <linux@smankusors.com>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-gpio@vger.kernel.org, 
	David Heidelberg <david@ixit.cz>, Max Shevchenko <wctrl@proton.me>, Rudraksha Gupta <guptarud@gmail.com>, 
	Shinjo Park <peremen@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 16, 2025 at 5:11=E2=80=AFPM Bjorn Andersson <andersson@kernel.o=
rg> wrote:
> On Sun, Sep 14, 2025 at 06:34:59PM +0000, Antony Kurniawan Soemardi wrote=
:
> > Rename the GPIO controller node from "msmgpio" to "tlmm" to match the
> > convention used by other Qualcomm SoCs.
> >
> > Suggested-by: Shinjo Park <peremen@gmail.com>
> > Signed-off-by: Antony Kurniawan Soemardi <linux@smankusors.com>
>
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
>
> Note that this patch is in a different subsystem and is picked up by a
> different maintainer and there are no dependencies with the other
> patches. It would therefor have been preferable if you sent this patch
> alone.
>
> No need to do anything this time though, I expect Linus to fish out this
> patch from the series.

I fished out this patch and applied it to the pin control tree :D

Yours,
Linus Walleij


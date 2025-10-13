Return-Path: <devicetree+bounces-225955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A82A1BD27BE
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:12:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5458734A352
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 10:12:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3E5D2FE577;
	Mon, 13 Oct 2025 10:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CUGnC4X0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E31BA2FE058
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 10:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760350329; cv=none; b=VHdiRAfQW/kHHdpXra3iuyexAwI1HXVZLW2j2pU3FYw0WA4Vy7XIyvWK/75MqYwTMTvnRtBvYhQWsMrSmSQTQgjFZH8eVfXAnhc66A/qIZKfIAc5knXVG5INjqOWewzziXHgbpM7UAJoiE6KSDJ5gaW/rfrq5BndxdUMPVzsfes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760350329; c=relaxed/simple;
	bh=RdLBpMQJKF/WdkdrgqI4Lr7gfqMU0n7ItqvnZUJi0J8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kndVCOi0hYOAAcp0MW1AH05RMtaJkcV1tSRFWEQHa3q6myenDSc5YTyfGFcsXAVRngN7v697PzQ6j6DLu0jjegQhUCWLMrmWMAmDaFWS3J2AoOj5t6pmk7R6D8sXrJf7OUzlkKqdX626/LvniTEXWfARSl1q19wkG0GZ8HS0plo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CUGnC4X0; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-367444a3e2aso42297191fa.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 03:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760350326; x=1760955126; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RdLBpMQJKF/WdkdrgqI4Lr7gfqMU0n7ItqvnZUJi0J8=;
        b=CUGnC4X0LsOZkm7rzFvtwdsjj6i83AeVSJNOz5RIM4DJRYN8LBvQ6SY88Ij8C/gf0p
         wfUAFCFvYRNAqdY8D1FMDD2Da6OULjDiInNI1Hz7E/GOqVlmHXinYjYSnx7hKkLjcVRe
         q0dRljoa41khBHal6ntClNRUsFENEfXDE+06lS6I67lPmR40tMtprJbP7wjiiX7/036X
         nW/vuX40nSpbLby9fIhcbx6/frqTlWhnV+V4Lb3fXyShDH7jWw1sEDhUgFeEwhgKl7XG
         QZWB5INAuqWYZLXmhwjZcYMwBQMnzXXKImYY3gXbIJLklDoP0rMsMO/z3YUONCxQRO1f
         +dQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760350326; x=1760955126;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RdLBpMQJKF/WdkdrgqI4Lr7gfqMU0n7ItqvnZUJi0J8=;
        b=FjRbxe8xkff87qGYZyyNeILi7xZpwgvl9AF+RuI/Pny9TeqnENnC6y2xPHHSJygSP8
         vujiu0dduvXAgbVOjWkE5eGECZc8k+Z4P01pvuVAVKkXGpqtctVroH2c9siwT7zKr7Mu
         5YBPQVtEFERZeZKJ17B13qIXwncdw70zK9KAKWtK+46CMoPFAap8wZgHy/WEaYU8bHA6
         rW2U+LKarFRrmTU1rATxUBeyggDMSJ4oa+a+XcXOo37ix+VCprfCAQMiw5uJzpxvJ0h+
         lq815BRqlnPnG2wsk7sBVo4yEKsfaTiv/Zo+5SC6RUsiLEjoAyX2XGfZu4VVp0okW5ui
         aX8A==
X-Forwarded-Encrypted: i=1; AJvYcCW+/B6g1AC9M6t90ZId9qLDus1YO5b4cE68Quh64q7weogzxL1ZWyPFZPcpf9FwXail66hkUqUYIKr5@vger.kernel.org
X-Gm-Message-State: AOJu0YyydzgnBVafQ56EEIHDJ49qcjalQgO0AjcRXWaJzFAKg88vbA0S
	pu6FHaKMt4q0ZF4CIuAfaIR2CwHu7dqUTQyR/qGVHfoud44zscv2fFnpozX2emyHj20Pi10rQob
	nXzvAArF31VWbrB1gRlaTKJBidSy/OmihoAntkSv2lQ==
X-Gm-Gg: ASbGnctXNBskv+4hvCCCAl2/jVes4wk6sO66TAdBUx0uCZQk7qgxwKTgKyi4O4+S2qt
	H5j6xlpQ6TDgGbreBtltae1erxXwWso9sCzsf+W6Geyco49/35UarEqOnqm+KV+l0l2wizuc8GI
	ToTM3ab91YSqSkmyKEkfLW1fbv3FzuP0bLFnpP/ZNO+8uMc8b7eN4qzGCYkfuYfvLVyrEJvEX1G
	JAvBJ6VlgCZAkV4IDLoNWJbKscXMZ51aIoG6G9o
X-Google-Smtp-Source: AGHT+IGgRJrGAZEzxavCYvBvMxkV4C3SuTl/tY5kwvQvzOJPw8FV39401eLsZgGg76AQQApcgWo2R0o9i9pCt7zAw68=
X-Received: by 2002:a2e:bea5:0:b0:336:b941:4ab1 with SMTP id
 38308e7fff4ca-37609d788ccmr52889461fa.17.1760350325946; Mon, 13 Oct 2025
 03:12:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250912-am62lx-v6-0-29d5a6c60512@ti.com> <20250912-am62lx-v6-2-29d5a6c60512@ti.com>
In-Reply-To: <20250912-am62lx-v6-2-29d5a6c60512@ti.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 Oct 2025 12:11:54 +0200
X-Gm-Features: AS18NWCXTgDlcXu1qYOFDjPkHsaBIb9mh58rrY4q-gih-VvDw6C14D0uT1gunyA
Message-ID: <CACRpkdaG02uXd8q5shNJ1LS2R0hV52OcQLY0MmXoihJYU90zWg@mail.gmail.com>
Subject: Re: [PATCH v6 2/4] dt-bindings: pinctrl: pinctrl-single: add
 ti,am62l-padconf compatible
To: Bryan Brattlof <bb@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Andrew Davis <afd@ti.com>, 
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Sascha Hauer <s.hauer@pengutronix.de>, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 12, 2025 at 5:40=E2=80=AFPM Bryan Brattlof <bb@ti.com> wrote:

> Add the "ti,am62l-padconf" compatible to allow for some changes in the
> driver in the future when needed.
>
> Signed-off-by: Bryan Brattlof <bb@ti.com>

This patch 2/4 applied to the pinctrl tree.

Yours,
Linus Walleij


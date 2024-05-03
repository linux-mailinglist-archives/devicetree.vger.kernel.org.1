Return-Path: <devicetree+bounces-64699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C1B8BA7AE
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 09:22:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A9E3F1C211BA
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 07:22:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01A85146A9A;
	Fri,  3 May 2024 07:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qU5LgpxI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89703146A72
	for <devicetree@vger.kernel.org>; Fri,  3 May 2024 07:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714720962; cv=none; b=aGq8dL937bSunIFne+wA+fCTyPBLfDmjQwJZX3WEv1cBgSM08GzhCfXhumg8jEHiY3y9E7PiJetAtssEmMfEOwel3djPUupnqC7GfXk4TztMBgNT9p8UbGDNfaFc8tynWRYTOLFaJUCZDQhMuFBQRk8Avti7qA57Tb5YZi6MIdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714720962; c=relaxed/simple;
	bh=DXiT6DCAy/foJvChspPeS9HWJhqsKPTUJeiKjZEGmNw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TkwZGrz2prqHsFkVETkiRliCU4LQ68qhFLj8IWX3iTD9Q5YNPH/DNmGvuDjbxqBPNdBWb5Qp5VySpXMCn5Sm7qJtZyM+cilm0ew3QlN9/+RPiDmtzBZj/BM6zpw61yjXDvqCTV2rb9Hiul8EUGAQwVgx3x4GXm8pqvIoWZ8eXwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qU5LgpxI; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-61af74a010aso88440587b3.0
        for <devicetree@vger.kernel.org>; Fri, 03 May 2024 00:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714720960; x=1715325760; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DXiT6DCAy/foJvChspPeS9HWJhqsKPTUJeiKjZEGmNw=;
        b=qU5LgpxIUW7+oCASku7e5IjSxJ6TstrilYAuifcMAaEApKrTI2Eqn3pqWRBq63uEBE
         dq6i439/k6oCr75XNxP04p/0W45iRJIQiiTkmzMpAyN2vTuEzCm/PxCh9c5N9F0S0Vzk
         2FnFTJPgz0tiAyxd0UuorxkoV1t2eUeswwLOT0473g1sDobXjXp3oWfJf2gsHSw6FAU0
         BOC3+d9Mmp3XnoM2u91ja2MwlUu4qEIw9zqQb1E9oBQj4/cAuXUEDFYP0pUW2jcmyMb4
         IF2MuX8zE2xg/5o7KObx94vh1FFmZHEXckrrdGWarUJovP2AZOqhVytAUGQ7qSCpPfqQ
         Xjlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714720960; x=1715325760;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DXiT6DCAy/foJvChspPeS9HWJhqsKPTUJeiKjZEGmNw=;
        b=fbG9QcpeCfJrZni1j6BqSK+8zRpY6wXyz695R8AWyh4YrUZpF/M15sJu3yEewd3RzL
         mzrjo5V4vCEuq2B4L4FUkjpNvqR5pRc36NXdRuFqYYAyd7GqNDh9FR/JslOaPjhaAtO8
         30wrKbOTHpvibKBmpN/1c0Q5x2yiB+emcO5rsCgew2dBw62CWp/NiGok1h9dkl2pEKa7
         D8ObmZYecqNR85IV+UyB4b0l0Lf2qTjHivS/EAUt4CgZEll8ZBiwsFqtOag+L71hhPJT
         rGUTu1fgfCzY8OaEf7zjXv1qamVzgBiWwJM60dim3Reax3e6uG5+26FKZyPnZ4mk2wCK
         2Znw==
X-Forwarded-Encrypted: i=1; AJvYcCV+5fD68oVkhw4YS5439sL0U/JtzY3UT5wTE79Z6NNP/CO49LxAEbVYgihFeAwgfVUD+bvCtUyAJ+DpAfOo6cLiXYQjH3HDfZwFcg==
X-Gm-Message-State: AOJu0Yx96BBjVrQt7Y9g3zYUFG65Ga/STCrf4nVu4ExS8lX9ktXuVn74
	a0/hIkiXVPd0AxIByDUmAjNI+rrPCC5FlS3P89o/P90bkdayCqlENa/v0T2tjETsIcmzQcVFil+
	oYDGFeNNUGY7o3qoH6q9T1OVYtWM80V5VnKz6FQ==
X-Google-Smtp-Source: AGHT+IF70GUA/nAYgbcBRArz2QcjffD0UeeRjlZvnQVAeEubMTdu99BOh7TpwjSj3+78vjD2hwmUTAgJU1ao3wm1tdU=
X-Received: by 2002:a25:910:0:b0:de6:dcd:20ae with SMTP id 16-20020a250910000000b00de60dcd20aemr2064275ybj.27.1714720960659;
 Fri, 03 May 2024 00:22:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240423045502.7778-1-zajec5@gmail.com> <20240423045502.7778-2-zajec5@gmail.com>
In-Reply-To: <20240423045502.7778-2-zajec5@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 3 May 2024 09:22:29 +0200
Message-ID: <CACRpkdZqdivw_ieON-PsT6scF8YUp+LybYxiuGtr4S8eaT=w-A@mail.gmail.com>
Subject: Re: [PATCH RESEND 2/2] dt-bindings: pinctrl: mediatek: mt7622: add
 "antsel" function
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Sean Wang <sean.wang@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Hsin-Yi Wang <hsinyi@chromium.org>, linux-mediatek@lists.infradead.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 23, 2024 at 6:55=E2=80=AFAM Rafa=C5=82 Mi=C5=82ecki <zajec5@gma=
il.com> wrote:

> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> MT7622 pinctrl has ANTSEL* pins. Linux support for those was added in
> the commit 19f599e83ac5 ("pinctrl: mediatek: mt7622: add antsel
> pins/groups"). Include them in binding.
>
> Cc: Chuanhong Guo <gch981213@gmail.com>
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> Acked-by: Rob Herring <robh@kernel.org>

Patch applied!

Yours,
Linus Walleij


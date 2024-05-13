Return-Path: <devicetree+bounces-66765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B85198C484E
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 22:37:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E97201C20BD7
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 20:37:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C7AB80027;
	Mon, 13 May 2024 20:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Oo94HEM6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FF787E575
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 20:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715632640; cv=none; b=g5q3OOK5HT+0DkTZdfpPFpTB35XQE6ObjvGMwGQSqQjT8jm0EII77Di1UhaHeibdnywy4ii8/qFc0sCBq4UYggM7FLKHdURiNAzwLxrc5FjFDSy5o2Wucf80V6Lcbqkwxu7aYM1gHRRhK/fyGQHeIQh5/bxaeXl6aSyYcea7p/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715632640; c=relaxed/simple;
	bh=/s3/UizLB9d9fYOIbdf0witT1lzFPXKEbUQjbfvT2sw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZAlBH8VbQuMf3x7IeEgjSvGOL/n+KC8PfZjCjteFXeD6rxIqaL4pn2cxPRcNIjsooTpdA9EPlScqW4CCbBvMlV89bg3lFyKR3U/RucQ5/JqUQY5BcDVs69T9ecPm48yg3Wvc7vc311o8iaq9uFAs3090v8Sjt+OGTZK1Wmz0qsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Oo94HEM6; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-61e0c2b5cd2so39853117b3.1
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 13:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715632638; x=1716237438; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/s3/UizLB9d9fYOIbdf0witT1lzFPXKEbUQjbfvT2sw=;
        b=Oo94HEM6V5KE8wmGWaOWLxp8rId9hegFRFFXrS67w4xn9g6ts0D6CckEwHKuwtmvdC
         sGbqugQJj6Wp87viuLeVGEGWs4ek/w4M2vxWkqXKazgWyKCC2L2FxaQz2O4Qen51DV44
         u6Wfg+UqjUjjdr6IJIsNUsR8KlrWvb0LyPj/sBjJH3+uRDyXnwl7DQhz6arCmv3KfEz6
         9VzDrYxj/pIMtnH2dv+orIdcPh5aEPbIlD6TKV1xoLmyfXp4GTZiKZnrdyr6M8UuR1UM
         ZDxtGuCVkFMDQIaxOdbPeGsbch2wJMzwnhKdvEpG7c/bOuzztdY0jN5dWBuBlBnvg9ks
         3A2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715632638; x=1716237438;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/s3/UizLB9d9fYOIbdf0witT1lzFPXKEbUQjbfvT2sw=;
        b=wSCtj4DuJaIDX4WkH6C9eR20WVg63XtfWq5uqz3lmFHcq/kTxwuH3ruwlgVYtpXn6p
         zfddWZCVzXTaUYsHMnobWgjEtNsG7ihROekjhtIUBjX/qaAEuk6iRp7zsP1opQGBvArk
         X+VrgST1J7A5g/0BlysnmNV0EEbwddQLNHnt9n/cDXujCZPPsb6UnOame7DzjowzNzi5
         c30JVnsIBfkSEC2gSmBnj1ejZ/f98ebn2pc451rknVZmflIOWS4VtQhHR4zBokvnO4nW
         T9wpF9a4bwlaQDGnBRCz+UFkWYXngwUU1aXIMG2uxJ9FVdDapIJA9K50qil7NBpnOefe
         Hz2A==
X-Forwarded-Encrypted: i=1; AJvYcCVzUKxZYjFd4sKfR98Ubsyl6I3limG3bsYG/SwU59iwiAyiv343sXsNk7BM35szC2QVh8I/v996+VTJtPU6fF7s47IpeuzhxLN0lg==
X-Gm-Message-State: AOJu0Yz+1q8NCgVFcEuhJMLg4JiaxC4Iz176MXquOx6Or37PvGpFpO6P
	Ts89755OKjd00Fgi8KDr6kbVoC0gR1YHac0VhOSCO4xIljD/870slmW47WAaymkE/0HUrMurZBd
	uyrRdE8C/h2dLhOqE8vAEcUUd2o+E0EOyHLjfFA==
X-Google-Smtp-Source: AGHT+IEcMlVLKcTYYQyZW7CkpC4bBM2Fd32LFkkd6763hdBeNFF9PnfVfmZMf9sLj0r0NA2+7tzRkznixINWUAHUzwI=
X-Received: by 2002:a81:924c:0:b0:618:498f:9dbe with SMTP id
 00721157ae682-62099381e4dmr101763867b3.10.1715632638569; Mon, 13 May 2024
 13:37:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240510123238.3904779-1-robh@kernel.org> <20240510123238.3904779-2-robh@kernel.org>
In-Reply-To: <20240510123238.3904779-2-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 May 2024 22:37:07 +0200
Message-ID: <CACRpkda69tvg=B6BsP2sNx0ah_GyrHjgY2EFNrkqOxN4g2DapA@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: arm: Remove obsolete RTSM DCSCB binding
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>, Liviu Dudau <liviu.dudau@arm.com>, 
	Sudeep Holla <sudeep.holla@arm.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 10, 2024 at 2:32=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org>=
 wrote:

> The Arm VExpress DCSCB binding is unused and was only ever used on a s/w
> model over 10 years ago. Remove it.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij


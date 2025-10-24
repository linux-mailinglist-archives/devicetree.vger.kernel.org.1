Return-Path: <devicetree+bounces-230734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 573B7C054D0
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 11:21:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 84EA056012A
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 09:10:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86F2E308F3B;
	Fri, 24 Oct 2025 09:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XSquGxND"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2603308F19
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 09:09:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761296984; cv=none; b=pMCwo/GrT91AIrLaJ9qnEk274S0GJWRV+sheLtEpBXFlmHb+9Z6W5LO0RCvtFyDtLS4DhAozIvalClddVPO6/v3YIp+ITZLA403skS6NlOq0OyUnkboGrKRj9KpjdvG8Npl0xg1oTZATw0hgIVljNS9vdVv1Js14+80LwouYq4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761296984; c=relaxed/simple;
	bh=UAqe7CZi3/gqCGelPBXkKXXnwmTO3hbdt/2MJeLAtzA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qeSUdrH16SQkd8glyYMwdW/OXQSmVJ+8SSToLblTwhy/vU8KjTczAbaYO/HkeGRi6kuYdc+GfW+9kxUjep1pxaEaNSizB5Sfa9KGqWgk1MkaBoJqsogxxVaPSRduhcWPYbWBXWAj6cS5zYO0425pKOUmWYYS1lYdaV2MyHGL3NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XSquGxND; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-592fb80c2faso932892e87.2
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 02:09:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761296981; x=1761901781; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UAqe7CZi3/gqCGelPBXkKXXnwmTO3hbdt/2MJeLAtzA=;
        b=XSquGxNDnLFm8CXhoRwXciPYi48IDRmy0lZSSSmkvMsZgWl852n5VKIWz/VrFi0o1s
         OHSdl5jneYdsrY+kcvC90KSiH0I/QRT+YxVo5PEFvIEIsz74Ju5oYAfMYlI9TzgATUU1
         4dBGC4YVfwJm+CK/mZ676FFmB4O5xoT4KxwnOMZEN/TRCTcVPMNJunDE06PAWNC/G/gy
         l3e+738pS6pHeElN37MzKglvDcA1FFazgWbE0TjjkkANNr7EsJjWzWweKWyczMblJ/D+
         9+rNJMoOP9AGXwiyFArDYepQGvPgjaOl0qyxJFpoo725MoIq4qh7it0vl/qjgc1J/S4t
         /iXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761296981; x=1761901781;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UAqe7CZi3/gqCGelPBXkKXXnwmTO3hbdt/2MJeLAtzA=;
        b=fRD62rja2PKRMhYiR/5Q5baxC+LnQC9WtCVkzQIr+f4/yqTqvo0cjGpeJICQTROPcJ
         /JwpsVft4+o/huzYE5CGYm9yqzFvB8kypckpxHK8MEcerHgY2UflJCOjBA7dcQlVOlMV
         JzPGkOJc85bBW8WCPoKk0Z30Idvq/pWVpn3Qx+GUxO1Ov4si+rIcL6BrfyybavopN55r
         Lfj2yimUUMrTNnrcTUdlQjoeQSGT+nKQgZ/hxNS7aSoA+UuzdiNw0JPAasiVLBHDmAvg
         PWEz1wf6vEcIaVrNd+UtNIDtqdiC8IXOE24KmUD4D3Z4pk9mY2JlBfzDZh2RE5NNQCzO
         Ee8w==
X-Forwarded-Encrypted: i=1; AJvYcCUr1+k+X0ASIZZMnQYO4LjtcR6jKuf3wHDzHSpWEhn5o+lBuAig7Ox3DMPxkJTRztrnrfA2zoXWQmJ5@vger.kernel.org
X-Gm-Message-State: AOJu0Yxmgfv+s3ETziW8CIePWaKV5q2r2Pos+FzawhLTV6IEQdP7bJje
	8a5F6KYzO4xwRjolBVADL104OA3/VUzW4FuF9XuycqOY5QR/iHwlfBUtZ41qJ5Ek2LtMaqJFE86
	a07cT/wWuV3mplhWhbXI3gDSo5QzoaeSY3oRUrJ6WPw==
X-Gm-Gg: ASbGncumD4/x5ewSAWv4B+aFzjyp7m/H/XiVbdYaQzXa2n5P6Ud7Euj58NhJBF84IBn
	s55uSGeuvuPSCrL8/YfsrcPn58DZEvTg/190lcQT1gLuBfLyzJJ/850gkngOBu3XOsAcqI+o3uu
	kMj5BHrEComOcdF/kmAFd3ivYm/u3Ijq8MDQ6FRwOma9XxZ3VyEAaufIQ4Pws3L0Xg90O7R4h33
	uYRzmjfwU+wrmM+SgGdVQ9i4sFnjU4E/ii6cGsPOQMk+8069dWX1cSnH5jz0fBhKAHHlvA=
X-Google-Smtp-Source: AGHT+IHDOu6wke4O4DC+iGnNtg6zbqtK6KSChdJ8QpPRqUvEhR6minp0q16+phIn+H9iRbMdYm+MpMhaLWHPjXa2aRU=
X-Received: by 2002:a05:6512:3406:b0:590:656c:d106 with SMTP id
 2adb3069b0e04-591d857b65bmr8390462e87.53.1761296980742; Fri, 24 Oct 2025
 02:09:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251023-stopwatch-cough-47d5497be5aa@spud>
In-Reply-To: <20251023-stopwatch-cough-47d5497be5aa@spud>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 24 Oct 2025 11:09:28 +0200
X-Gm-Features: AS18NWAWiEwRej3g2OXhBBdqWHb3gfghzPpIRKV8fjV2g8m8SOiJLs6wRO03VzA
Message-ID: <CACRpkdZ2-S+h+Snuj-+QE6-n6J4xSf+edmzdp9+o5dP1Vo1Zgw@mail.gmail.com>
Subject: Re: [PATCH v4 0/5] Microchip mpfs/pic64gx pinctrl
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	Valentina.FernandezAlanis@microchip.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 23, 2025 at 7:15=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:

> There's a tag below for you to pull that has the syscon binding that
> gets edited in this series, since that's not in mainline yet.

Pulled this in and applied v4.

This is obviously in good shape and any remaining snags
can certainly be fixed in-tree.

Good job!

Yours,
Linus Walleij


Return-Path: <devicetree+bounces-61825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8BC8AE542
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 14:01:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A33C2884C2
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 12:01:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AEF7139594;
	Tue, 23 Apr 2024 11:47:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j/o6c8CF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0668138481
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 11:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713872846; cv=none; b=AfUS2+c22rvIPMWM6IOdeqNxpBI+GHZViukt1CLriPILKS9nwsbbiA3jHxdmz3vA68hG+uQNqlSV8lDTERxrPxo0Fgy8IR0aWLDC2pgwHF/W7e4akURWadiaKMAb4vrWhPsN1d/e/fTFxr55ozVVKdBn/pc7sxBjx2sBnj4lhYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713872846; c=relaxed/simple;
	bh=5zXXaSDHHLZNmipmrDXsZzK9DAc3oLYYNJml3DyaE0E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=crRqr5jzE5x3StcWjLtF0csMHDE/X7eBddoaU4z130ZhDOBW+GUbEYIF07KLR9Sb/BTajb65+i9ulNWUVDjwfKfr+kxcQUCkmrDUy7NUJPvy2JlEWBAHyUySCd26Lj+qhMADPWaM2/lyVZEPrp+roEKiA2ot5NWu3d24DOEWmLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j/o6c8CF; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-de467733156so5477275276.0
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 04:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713872844; x=1714477644; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5zXXaSDHHLZNmipmrDXsZzK9DAc3oLYYNJml3DyaE0E=;
        b=j/o6c8CFdBdfEW96EocgV4qMtZFKTFwHpUtuNWSeCLd8tEasG/T4995qxlu801Wyu4
         S/HQM4cxJ257i+LXrh9gfHKFDPavaKecr/G7H0wYNVm23T4Yj/lwVdR8Xj+ZIn4epE7k
         iIU6sVyMXVxhsS4Xxs4MBhfPVRxUezI6yGXIs/K85ld8/vfPKq2NxfSMh571G/yzIsOK
         Zq1/HYW4Xtw95sGyf8rYjOeDSkNtjO0+2BPhRsAdLQBWzWWD9WrfaHkNXff2w2AXeZOW
         RfxV36FOrNYMAKIgZXjFs30cBazElOsVCI/DhbOrgsAasypQOuGTkcKo/xSJy+9dWulV
         o3lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713872844; x=1714477644;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5zXXaSDHHLZNmipmrDXsZzK9DAc3oLYYNJml3DyaE0E=;
        b=PDy8N/qqUVLt4dvzXG0uGJVpGrii3Gwk8RXC3311dKMzN6j1cN092sd6rh4O2iEFCB
         7phSTe8rlRebmVjY/GJa/qO03FUprLsZY4NXgneTk2dVoFxGAcsWE7NZUAioMiDdrUwn
         WareDriwLS3bixMkj4u2eSE1nhAVAjPKnTXGV7xZOAO6fc1MlU1uzmfED5DbQns9lvFW
         dBDbyg5FbTzVm/CLad1kYd7SdD8coET3cneOnQ5GJmiordagrqXEr/v/KxQSAm70Jybf
         kS9d++p7f9U2qIDdEmXVSBl2NtG1G6EplNxtbq8kXZENH70tQbRCToWCeqvmuAxtBS1E
         ZArQ==
X-Forwarded-Encrypted: i=1; AJvYcCV7Eu7hVug4+q/8thp6QR4j0mG+Quz8TWQ5HZTN00f9URToTdc3EOMM6ZVsh+JWRPUnFYtLiNXntm71tXz0xJbhJGt+nI6SJXXtFQ==
X-Gm-Message-State: AOJu0YwviK6Zeih2jLwxMYPMCtVPoqJUBxUtHp51nyhVJGUaW9n1CRjL
	/EGe2PJEkwNKiBNjYlSvxoVuICBUQspF7EEB7UnNP5YBn0lEtnI9YvDVmOl/9Tzuxe6uR+XZ6or
	oEnlg7+KcwcaqeMnwe4C0Uan3Y+uGYb/QHRHiwA==
X-Google-Smtp-Source: AGHT+IHntaLe6W6a9zZrdQp/NobtXyLalEiGhjsvJyg2CKkOy+q6UNrHqwWUkHv1SV9kpP87mRM7PtZ2WCmKIrFs8zs=
X-Received: by 2002:a25:5f42:0:b0:de5:51dd:87da with SMTP id
 h2-20020a255f42000000b00de551dd87damr1858523ybm.32.1713872843745; Tue, 23 Apr
 2024 04:47:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240423-for-soc-asus-rt-ac3200-ac5300-v3-0-23d33cfafe7a@arinc9.com>
 <20240423-for-soc-asus-rt-ac3200-ac5300-v3-2-23d33cfafe7a@arinc9.com>
In-Reply-To: <20240423-for-soc-asus-rt-ac3200-ac5300-v3-2-23d33cfafe7a@arinc9.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 23 Apr 2024 13:47:12 +0200
Message-ID: <CACRpkdagwAD6KbCU0351rSUgqu6wimjREyfzGu06+aeSvM4fbA@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] dt-bindings: arm: bcm: add bindings for ASUS RT-AC5300
To: arinc.unal@arinc9.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>, 
	Hauke Mehrtens <hauke@hauke-m.de>, Rafal Milecki <zajec5@gmail.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Tom Brautaset <tbrautaset@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 23, 2024 at 11:51=E2=80=AFAM Ar=C4=B1n=C3=A7 =C3=9CNAL via B4 R=
elay
<devnull+arinc.unal.arinc9.com@kernel.org> wrote:

> From: Ar=C4=B1n=C3=A7 =C3=9CNAL <arinc.unal@arinc9.com>
>
> Add ASUS RT-AC5300 under BCM47094 based boards.
>
> Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
> Signed-off-by: Ar=C4=B1n=C3=A7 =C3=9CNAL <arinc.unal@arinc9.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij


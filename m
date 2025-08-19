Return-Path: <devicetree+bounces-206308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F51CB2C032
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:25:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5D22716D7B5
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 11:22:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BB9F326D7A;
	Tue, 19 Aug 2025 11:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S9lRxEtm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE950322C69
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 11:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755602520; cv=none; b=kyF/4MCg6ts+D3hcDqdgBUdMyOqA6QTcOb0eLlZ8Jo5qkKnkF1bwMwK5NkAXXf0V0rPHlfJPAPIHvbt/Dt3Lsy6C2yuYgen+1xhptOz4jVObbUJsELgVhExRxtT5zofRORgkfe60SIhWWvxg8xDm/RuBUD707PPEow7ilYOZqZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755602520; c=relaxed/simple;
	bh=IM67WPQOHye2i+1z72epmy92Qmx4agSMBIMH1WeYbtQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=D5aiyTgCT0zrX/inR6QtSlDTrjj1Tm+Z2VrOQYvQWkkUx34E1GStHduaR/g+ObavAmVxRKA+MqBMzjGYE4z3FO0J4XTrR1AxbkE5PPq0oxXFlDdtmKOlLr0JJU+G0emI4ZWNfMryfEhOVAa7EmDOWwAhAeMKiXcaS6nZywtmNGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S9lRxEtm; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-55ce509f80dso5092826e87.0
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 04:21:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755602517; x=1756207317; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IM67WPQOHye2i+1z72epmy92Qmx4agSMBIMH1WeYbtQ=;
        b=S9lRxEtmzA7oK9h9THtttYlUjrd7ofW2ZMrJ9D7pMv1o1fj7mtqKB3E9469Qup5SIk
         7K8HEqNinh7RKpi/f6utKGZmXFVw5jy6cAuQdhin1Fnb6BqyVD8WiAHmW1sTfnP8JjMP
         IVWUspHWPgI6pKJN7PQ6X5Nnftlxg/DC+ON071kiEKByTO3O7YPBJqHYBdTBtYTMu3TY
         X+T0HmuFznKbQc6fRKTpJCGOFQ1KxGEKsBAH5Vmra6jV2RIi67FSosGIbKGa/6L5N4Fz
         HG5iV3N7pwTc3Gk9bZwTLTIvmXe8loJvrjZ8TzKVMQVxqdPG3Et8poiD0YveaARe5euZ
         Escg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755602517; x=1756207317;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IM67WPQOHye2i+1z72epmy92Qmx4agSMBIMH1WeYbtQ=;
        b=uCf3TY2otPAGAgLp2LKw2e5yKyc6NS71ePnnKWODIncOI6uhcnVavHI+1mQ90QsofF
         l9Ckk9Z9aMgAIG3HHSlh9m8bKBWpgnEebUS9Q9yri0WSyKUBIdJRYTiy3g5tFwuAEi8Q
         Ois/lM9ySYmXqgsJLpZ5fmHsCu7ziVuzVj52LAB5Zs16T8zQSrXRsF8BLLuQJWN2DNEK
         c9sVbSTkPevZQjnxymuQCOHjZlpI3QGfvvWTpBbI14zhlCrS89rdwtCgslAE4jwlBEsb
         DM7K/H56zuspffCeeklh9gnikAk9IoEKtcw03I1bkyKR2ETE7Y6tfzrGSvVlKE153vdp
         IKRA==
X-Forwarded-Encrypted: i=1; AJvYcCWy+elu0xxN/64p6kG2U3bKOmhFeqOObEr9OU7/iU15LORrg7bFSnWBg6gUFmeVJxquZKE5QQRfy3+x@vger.kernel.org
X-Gm-Message-State: AOJu0YzrcQBL+gTXDXjtqu37ZmuMbfBa4cTnVribYaCagp8vVhj55A6H
	nNJNXoSVoeHm2OfDtlFl/ONopSbjbEqnSic+xs9PnrfynKM5L0YgcmfXOwdYWrU9OjBawKrmfkl
	grxhqMaYiu07gzhbQhAkJlUUCpSQQIidF4fk7kI1H0A==
X-Gm-Gg: ASbGncsAn+Ikg6gOYYNIxkS6sksMyLS4sIgX2c8lxoWRdbNxsV1Fe48JzSK34B6CoUz
	kR+6Ng9Z43qARyO3gndyl+6qqRCRkfcoNk0RdqrlBdINIXCiLVxK2y65121Wm8NSazUYMoqlcbU
	zL35DixN31B+QRonceuQMZ2nu8hRdJhcrCVvO9ibIlY5OIDwYr49iFMMYHn2r2OwctsKoyoZbh2
	py44gI=
X-Google-Smtp-Source: AGHT+IHB9ZE3HHwBP8KRu0As5tM0j3eS8qOs+KX5e0XlvnFV/qrios6LpoJC/eBjHm40/aNMJAbseQeE3Ftd5lSOg8c=
X-Received: by 2002:ac2:4c45:0:b0:55b:8698:6a1d with SMTP id
 2adb3069b0e04-55e0079296fmr723607e87.3.1755602516865; Tue, 19 Aug 2025
 04:21:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250812203348.733749-1-robh@kernel.org>
In-Reply-To: <20250812203348.733749-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 19 Aug 2025 13:21:44 +0200
X-Gm-Features: Ac12FXwBOtQCyCuqh-xFzcRsUI8fbtRh0MGdvIn7jfDa7EoepbxRk616CgxWIGc
Message-ID: <CACRpkdYxFj9ZCdpOpE7G2A8cNTRTWoJatDP7OmCkkH_4eApz6w@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: Convert brcm,iproc-gpio to DT schema
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 12, 2025 at 10:33=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org=
> wrote:

> Convert the Broadcom iProc/Cygnus GPIO/Pinconf binding to DT schema
> format.
>
> The child node structure is based on the example as there's not any
> actual .dts files with child nodes.
>
> The binding wasn't clear that "reg" can be 1 or 2 entries. The number of
> "reg" entries doesn't appear to be based on compatible, so no per
> compatible constraints for it
>
> The "brcm,iproc-stingray-gpio" could possibly be dropped. There are no
> .dts files using it, but the driver uses it.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij


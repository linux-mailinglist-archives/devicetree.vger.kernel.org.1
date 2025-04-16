Return-Path: <devicetree+bounces-167617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 26EF8A8B1F9
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 09:23:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B98F83AAEF8
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 07:23:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FEC322D79F;
	Wed, 16 Apr 2025 07:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EdPOO+ei"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CD2822D4E9
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 07:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744788170; cv=none; b=KWgchTpH5SpN2LnR1YDhsdBt6I1UXMavaA3TJJd/UznkCO2ZCxWVHhoYukb9dccGA0PUzE7/onpX+SiBje3xOEi05+haEnmYumFsjxy107xlAFIvargxu/I54N3wW4/WabdqdQkW9+kx5D3sEQScLEGn7/MjD27Ow7g7OUrv2Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744788170; c=relaxed/simple;
	bh=6tPzTMhBIP4Ztm/pamoA9E7AfPXNf+05fR7f70iwjcg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UXh5DTrrMDjQAEFXZ90zHxDC+6guGYDot9QITEXDYRsMPXTZUXSydado1+yX/+ufQaCO+kb6heahvDi29SNnhvslYAoh5nbKp0aS3klqJKwjSWaoqWmtWyglhI+HfAX40s8vUUiDVEYNfH6PKUoP2r4XrCahhSyruBauV+p8j+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EdPOO+ei; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-31062172698so35770071fa.0
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 00:22:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744788166; x=1745392966; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xWD5DtO8Zmjj8hm/jgNeXXYBfzD9O0HKgWcyYm/pe+g=;
        b=EdPOO+ei2bPpqPvFGSAN5GkWEPL5g+w7K0Xg3ZtOd0xDm7VqxWZgXKJC2or7VdY8tY
         S3PSICLGT8C3k7syA6GtNAtVh+xacMzsXIN9Kjl6YKmKTqk020PDS/b+idXA61pmGDT/
         gUfMPPIn/Ohg18u1+R3fJdy3KlKH/SNiXjmBlfT4K4/zpDnBhdsCR8xqsgpI8VcUbZvH
         62Z+pgv4uFDP0ZYnR/FBvxbl1rgPAE6pCxfySCvSWCKpLWAoKDD6Xvo1DMfKzP4L9WN0
         mRnkvpdTfNylZUQU32QFyP3PZl/CzKfcjhQ7yNpTSdv43CWgkkZUUWBccTza4/S7+R/V
         5UKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744788166; x=1745392966;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xWD5DtO8Zmjj8hm/jgNeXXYBfzD9O0HKgWcyYm/pe+g=;
        b=nspOAxp8kx3nOwQLNbFNOG43NwYL9UJy6q7iluPYKFfEWpRUcMVANJd/Oov12tmHl3
         ptJ1vDiVjdbT1HbJr/pr7ppcrDCkzFynI/h/vrNimItDO8Jx7BfmUiVkWhJTWt0ZhxQj
         d334oGWl2cZOjuDZnKbMWEKYHUaurYlN/iXsfZS/+chQ5b7WL8QAEZzRxQy0mYNCk+c5
         qTytUHE7d8lGF73Ery7BlxHRVUwjUkilxwqUQ+9ZH1SBSXR8r0XNReq1eInhl8KkQFAz
         2D5sqJopnvoCWdWLSURW3VbXUpeGJSQdwdBxFKloWPn0X20DGgq2FnxScYtEI1Q2xGdm
         r6ew==
X-Forwarded-Encrypted: i=1; AJvYcCX9FNOGqCx2163Z+QyMNc4n4w8mDpPCx6xTE6Fjm0563wTUTTVX8vzuEclD/uN6DlAzjdK05Pw02+C8@vger.kernel.org
X-Gm-Message-State: AOJu0YzXKU4AV+Do9GClHjUm8WCZxI+Rgnee/KSErY9xWIt42G8P/a2O
	uaf4MGHvLtAnn+4nJAq98x+Ce2LIT4slbJZ+d9jrDesW9GTjyvEynW/9tMiMcIBYxcFTAPjSKdh
	HG6VlHT1HTYHOGzk4RnsBWVT1kY+Mo20ztxXZ9/5sE15PRYI71N4=
X-Gm-Gg: ASbGncvYo2c/QqSIfwcGyM8fXYnQtP/4ooNeysd+cxC0li8Aek95cHiI+i+kFdYsrZG
	KGyyU1eGcJahWOoBZ7oz1G4Dz2t9uCQyy/180xOW3+1yCRAI/fh6ESRWQpdfZearR/T46IUW6KX
	Y04zu8rENBhVsqaTF6MoiTpQ==
X-Google-Smtp-Source: AGHT+IFJzy+zttruUfUSE7DAKwZxb0lvHyIXLpWKETv/eqQTmvTOtmlAPv2KPiXrE9yHLzHL0bc/wktEHBwODzsfibQ=
X-Received: by 2002:a05:651c:243:b0:309:2ed:72df with SMTP id
 38308e7fff4ca-3107f6ceca2mr1915221fa.24.1744788166445; Wed, 16 Apr 2025
 00:22:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250414090215.16091-1-ot_cathy.xu@mediatek.com>
In-Reply-To: <20250414090215.16091-1-ot_cathy.xu@mediatek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Apr 2025 09:22:35 +0200
X-Gm-Features: ATxdqUGunV3YCOGXGIOJ9QSL-oTOhWVqzDgVFDf8RsYkNrat6ruPMmmT7W9km-0
Message-ID: <CACRpkdYUqHzid4Rnuv4arC9wu9fmpcGR22Jc5JzJhyr7fABMCw@mail.gmail.com>
Subject: Re: [PATCH v7 0/3] pinctrl: mediatek: Add pinctrl driver on mt8196
To: Cathy Xu <ot_cathy.xu@mediatek.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sean Wang <sean.wang@kernel.org>, 
	Lei Xue <lei.xue@mediatek.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	yong.mao@mediatek.com, Axe.Yang@mediatek.com, Andy-ld.Lu@mediatek.com, 
	Wenbin.Mei@mediatek.com, Jimin.Wang@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Cathy, this version looks finished!

On Mon, Apr 14, 2025 at 11:03=E2=80=AFAM Cathy Xu <ot_cathy.xu@mediatek.com=
> wrote:

>   dt-bindings: pinctrl: mediatek: Add support for mt8196
>   pinctrl: mediatek: Add pinctrl driver on mt8196

I applied thes two patches to the pinctrl tree.

>   arm64: dts: mediatek: mt8196: Add pinmux macro header file

Please apply this patch to the SoC tree.

Yours,
Linus Walleij


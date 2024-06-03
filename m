Return-Path: <devicetree+bounces-71862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BFC8D8421
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 15:38:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5A2C5B23248
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 13:38:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D774E12D762;
	Mon,  3 Jun 2024 13:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BagTaSxm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB482209B
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 13:38:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717421888; cv=none; b=OVH4+u00cfhIsMYW1Qs8MdYxhysYsG7iZlIAo1O5CJjgCPcgT13Sd3xvgQSybO+79ARCOTo4V6REfsQFgnvB4J/5UJErC0tY0NS8nND4z1hgs3W7cxVzpvOum9zP39Kcr7rL8XO8jMN3Ec2dXFRwuwuzFcR1XkTZgSLQdUqq3f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717421888; c=relaxed/simple;
	bh=s5oY5VB/ZeLchozmlxHpgn0jJCP7I7onyi92IM4s3Jk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Zzm5E8KpI87KVrCmm7pT5BiGBbVud5N33USF5aep7WQXU7FEkk1/QIb+uiDZcWpJ8rOyWTB7QxomkvuzM9qllOT236oT3NrCQJjjg/8PzwQf4y1dcFr8QSUa7VKpx/EsGarX8wGmzJidOFRBMYV4m8BoeQY4HqPe8RD6mBPaGwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BagTaSxm; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2eab0bc74cdso11310291fa.3
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 06:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717421885; x=1718026685; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s5oY5VB/ZeLchozmlxHpgn0jJCP7I7onyi92IM4s3Jk=;
        b=BagTaSxmjSKP/D9vBOzKTAm3wVu/iGGJVQxrHNpFf7HCEPYYKRvQypYt+VxodVYLcO
         DWBzlLmlQk6p3jpZ1wrPMUfdjXnrVNYEBWJUYaa81bJbT5HCodbgazA+2mJa7SrCymgC
         IxzvY5GRjuDycLbpEF4tbCbPtLNmpnNMS4tVJDJL4wr2XxFsUiuBUioq0YZQlXOjBj7z
         bCVBCZqZzj6bTbf6qN+jT4tRXWTpGy60Y2BTCVl6ikz6bKaV+T9Bj/IOxkK58xlYoUSj
         pdDQFr3ebN2YgJCf0QstUUAigoq2KNUeUnWAwY1Aj2VPp/6rWygtRaWPNVLbp5meCY63
         P7zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717421885; x=1718026685;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s5oY5VB/ZeLchozmlxHpgn0jJCP7I7onyi92IM4s3Jk=;
        b=MuEEU6XZ0R9eMR6YJaoHQ2jkmvrnWaOPpqbR4qt3g4I8hzsLa5K/eeyX9KVMPjgr81
         iD3GM4aBtBVSRMViZ/e25coQEpJWMnOxEYRpedMTU2nL6M0A1TZBY2Zlmma3RaNdxYku
         1ieDxigY+EHHD94ik0l3CPFMfno1DC6ShkcEa2COda7CFGdVGOwhO285QFceEp65tpeu
         TUMV+lGQMQp32tWEEEjvI+JR1zxHnIdSyLmUvV2viGwMJrUhsPsrjLoghsV+EPrE8RbS
         pVG6E70E683ESJwrN+ynm8aeOTBRo+i55O7CQ8SmewOh5beVzVJ1kVufp+U5dSZ0v+I+
         7V0A==
X-Forwarded-Encrypted: i=1; AJvYcCVM4YHLxJE4vRI+drPhnUB9h2akOm1CLTj6IjZyH60Cr36p8SGe9/smYW5zqBacy+BZbe1wKZugEkk9ux2+5FGdCWGK9iAXlwnjrA==
X-Gm-Message-State: AOJu0YxLKdcRGAZBpEC76dOiZONJ5hD3QPcOAivf7W7r2P6rEWQJklGL
	qPZ26bSPfm3Gwvjzz8OB7cBNlOFTJyYAEoxbfdTWtZM6v1MPvb+IpT0tTZSsfgfvc56eCkEOawe
	Rx4i8EOUVFqPA2Moue/IQTsXNeddsc6RIXpxc1Q==
X-Google-Smtp-Source: AGHT+IGGEfsiDSa9MS2XjdxinT6DC4pr32ZQOQc6Alq++FGKHA8V9dvlrQ4QnDerXJqsX5VfWRcTedSN+rX53wc9/AQ=
X-Received: by 2002:a2e:b053:0:b0:2ea:938f:a23d with SMTP id
 38308e7fff4ca-2ea951b6102mr59561591fa.42.1717421885548; Mon, 03 Jun 2024
 06:38:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240503162217.1999467-1-sean.anderson@linux.dev>
 <CACRpkdbOAoSDNFhXfz3djUZh1_MQ_T75CC+-LmojRXvyCbUusA@mail.gmail.com>
 <06a4e5fd-3d26-4923-bcbf-0bdd66d756c4@linux.dev> <CACRpkdbSsgxtKqF6ORXubufTaegjysHU7zH-tJfDfKNd=Kdoeg@mail.gmail.com>
 <51d984f5-896e-469f-914d-2c902be91748@linux.dev> <CACRpkdZ19+zUCEBCJJ+MBnnaF+caZKFTDxYiWZ0BRGx+PxN3bw@mail.gmail.com>
 <e4972a07-18d6-4a8b-bb5a-4b832aa2d20e@linux.dev> <CACRpkdbL63ZWcopgBbANKzr476rO6_cwZL6JLqkvTDXbzzpkpw@mail.gmail.com>
 <38cd5e6d-f18b-4ea2-8fa1-40416d4370a9@amd.com>
In-Reply-To: <38cd5e6d-f18b-4ea2-8fa1-40416d4370a9@amd.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 3 Jun 2024 15:37:53 +0200
Message-ID: <CACRpkdbKgjdA9MFs6VtXxrULAY0VA3PFim+qYwbX08OaHxZKKQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] pinctrl: zynqmp: Support muxing individual pins
To: Michal Simek <michal.simek@amd.com>
Cc: Sean Anderson <sean.anderson@linux.dev>, linux-gpio@vger.kernel.org, 
	Krishna Potthuri <sai.krishna.potthuri@amd.com>, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 3, 2024 at 2:37=E2=80=AFPM Michal Simek <michal.simek@amd.com> =
wrote:

> I have asked Sai (driver owner) to take a look at the patch more closely.

OK if you and Sai both provide your Reviewed-by tags so I know this is what=
 you
want to happen, then I'll apply the patch.

Thanks Michal!

Yours,
Linus Walleij


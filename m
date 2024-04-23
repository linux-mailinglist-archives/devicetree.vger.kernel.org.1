Return-Path: <devicetree+bounces-61826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B02A38AE547
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 14:02:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC0731C22DD9
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 12:02:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50CDF13AD0C;
	Tue, 23 Apr 2024 11:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xhZh6A87"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D34E84FCB
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 11:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713872931; cv=none; b=ivNBheH/T8ude1kc3jRrFOf/+e3YmEqp2sGCpDLu3p/fHVbSklL/ZhivzFSt5cA/mitFmtLZoaXqS+K5rFaGfSsZE7yVI6pFT4AIWLHi2xO7hSXCOdzLOpujvVjwvfGOqaW1ec7zlG48Lit+gussivQLn/oGdE1TgiGxCkvLMFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713872931; c=relaxed/simple;
	bh=4Q8uM74lj69Nvqo3+Z4SD9KGTyZKkfeSzS/k4zb9cjM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZSPSgQzRYLcj8MnzAfNpwZ3qnS59u0+qQGdf8+HcmXwVi9BbiIt3OAxdL5ZfCUXyp+l5gCzPgShZN0a81rJaXkPreeWdk4rhbRYcWTtDq96PkBIIEeZdRk7v8k9J42inBXsOVNnRnMTNyUGRRKJK8JKevD0P1inelI9cOncyYJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xhZh6A87; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-de466c64161so5829114276.3
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 04:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713872927; x=1714477727; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Q8uM74lj69Nvqo3+Z4SD9KGTyZKkfeSzS/k4zb9cjM=;
        b=xhZh6A87+X5A27SwpR3gHSVmmes5NwfmOHOgUt4fjBTEm/HZk2EnDWxNU3bRF/hsWP
         eT9xmRAphH2HIR8V4VauQ1j8Oyg5+UhabUjfYcqHlKZRtxKpzi0OZGeGk+GktHrt215C
         rHt+HgWI7sCiCcLZ2M06xMeIDQHOU3SiIA/wpx7HTmsDgrK4CI0eLFmuyzY8Zuv15ItS
         3iyj19+WgZT5dgeEuQGU9CzUIuhiHak8CZcBZZj8GWJSsYUyiOp29D/95FU7JfhLY1yI
         2Rdb8CU+QGck664/rnTvREkRRcxZv72Rt6FOJzTq+kqKUUr20RoWTe4FpEVpgds91kqI
         j6nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713872927; x=1714477727;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Q8uM74lj69Nvqo3+Z4SD9KGTyZKkfeSzS/k4zb9cjM=;
        b=pvTwOx60cBwnyKcvwXJQRJH5GW7k3Q1oWoIxT3sGT60Q+0bxnN1rCKJZeeezdPDyFV
         TnXMYPl7uyPA8nZAodj42L72rINcNYF4QDO0R/KR+CqsapaCQCsL9EUqMTf7Ds4Tiyye
         HmaVGoLTjj8Xw/VkIGG2bfgOBjeLqDjSUgu89PC5a+3y12YGG2BzNhoi5gwMGVa87wTO
         gmENvMfzpXwgbXOiEHvkFONYWCbj4fBIdT3mJAjzO5Dq3DAKCnEqBkT/O9z0k3Hta7Sf
         /ETvckwj2V3VvRlb59l2lc/0ca0JownSvs8aXzj1GeZnokq2kKfqhOZPwL4iNlZ8tcKa
         W1jQ==
X-Forwarded-Encrypted: i=1; AJvYcCWCkuYUPxEb+bqRsle6uP62KCk/3ocAYMpjrCrr/97uNURuYW8wivhI+iyD6CHtx9zugSDzX4BZZ80vtvIDFel/bqs9dsX/HZdqSQ==
X-Gm-Message-State: AOJu0YwhfW2PZkZQR9moenswJUGEdoa0nWpzxK5IkOUDM4RqQs+85i9P
	Unv973YnKsArbD9AM0y6sS7pSDy3MnkUHc0rzVV2Z1vHNykozgmQthm1kbDilye5nXlfVRXUUTb
	EfN/fJeqHO8f9SfQUpKrdyZM5U6ZCTa3sHhlVe6MonAxQ6YpyNxk=
X-Google-Smtp-Source: AGHT+IHVF+iOlpUMyBf9xvEWIs8qs0LES453eMHrNJSIkEzeUXM7XFo6B+68AjGK0E/qvKsjnKnaGIOvh4ZScuge4wA=
X-Received: by 2002:a25:9a41:0:b0:de5:4c1c:bbf5 with SMTP id
 r1-20020a259a41000000b00de54c1cbbf5mr2096084ybo.22.1713872927582; Tue, 23 Apr
 2024 04:48:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240423-for-soc-asus-rt-ac3200-ac5300-v3-0-23d33cfafe7a@arinc9.com>
 <20240423-for-soc-asus-rt-ac3200-ac5300-v3-3-23d33cfafe7a@arinc9.com>
In-Reply-To: <20240423-for-soc-asus-rt-ac3200-ac5300-v3-3-23d33cfafe7a@arinc9.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 23 Apr 2024 13:48:36 +0200
Message-ID: <CACRpkdYfd+1udf1sUptSXTABVvodzGXoj+B11cSKF32RdcVZjQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] ARM: dts: BCM5301X: Add DT for ASUS RT-AC3200
To: arinc.unal@arinc9.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>, 
	Hauke Mehrtens <hauke@hauke-m.de>, Rafal Milecki <zajec5@gmail.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Tom Brautaset <tbrautaset@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 23, 2024 at 11:51=E2=80=AFAM Ar=C4=B1n=C3=A7 =C3=9CNAL via B4 R=
elay
<devnull+arinc.unal.arinc9.com@kernel.org> wrote:

> From: Ar=C4=B1n=C3=A7 =C3=9CNAL <arinc.unal@arinc9.com>
>
> Add the device tree for ASUS RT-AC3200 which is an AC3200 router featurin=
g
> 5 Ethernet ports over the integrated Broadcom switch.
>
> Hardware info:
> * Processor: Broadcom BCM4709A0 dual-core @ 1.0 GHz
> * Switch: BCM53012 in BCM4709A0
> * DDR3 RAM: 256 MB
> * Flash: 128 MB
> * 2.4GHz: BCM43602 3x3 single chip 802.11b/g/n SoC
> * 5GHz: BCM43602 3x3 two chips 802.11a/n/ac SoC
> * Ports: 4 LAN Ports, 1 WAN Port
>
> Co-developed-by: Tom Brautaset <tbrautaset@gmail.com>
> Signed-off-by: Tom Brautaset <tbrautaset@gmail.com>
> Signed-off-by: Ar=C4=B1n=C3=A7 =C3=9CNAL <arinc.unal@arinc9.com>

Looks similar to others I've seen so:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij


Return-Path: <devicetree+bounces-232755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A01BC1B2DC
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 15:23:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3347D189284F
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:15:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52261263F5E;
	Wed, 29 Oct 2025 14:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P2g8vCBS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7292625F98E
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 14:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761747316; cv=none; b=orbtO7sQ0etrDc94b2hnxP63NSvLd+a+S/GiGKgFMTCJDILU16QhTE2gD4dD//8gEYrcQgUBKi6Hir3JuqtsGc7jxeHzlhL1sRuAohz70NkwXY5PPUGeBSh333kiq0WSaJmIQjxuymUxsiuknpXVJ/ICo3lX3W3cXayCqqPVHgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761747316; c=relaxed/simple;
	bh=JnGN5D18R/9fVPC4aATiOOBzgu+WBuLqDytyaFyTYec=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MqAqgc/vpCortbcwwEVANzlazREfcbL+2eWSVvf1ReFdSJlbWCi/d3tQYMtwvd0SEFyEN3QT1CcKLeI29/SHATcjlJKMB2KMLAyUQy1bz4wHW6kM2TgCCTeFsABqLImvBLLbZLnxEnwdCU8Ft61kfwKlrf9Pt/6A3qxQca6uaVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P2g8vCBS; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-592ff1d80feso6063150e87.2
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 07:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761747312; x=1762352112; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JnGN5D18R/9fVPC4aATiOOBzgu+WBuLqDytyaFyTYec=;
        b=P2g8vCBSKm9qQSx8QMCRipO+Xunm+j0kPjkxsG64Pa2AOUwbg8kkHaKAGR0ysqs4ZE
         7nCpNOO4ghqFN+9+aZtZvEolZbEwDWhY72CBEXuKZuzIe0kcLpkrDGivAWWaJt/cjixC
         ChVGaU/exsl35QMJWjWHqe8BgtmKJTK0NMiFpH2nW91PFrzqGRYdkjTWIq65qchYOGQD
         hVihrAC+CEAHE/utWhWqNk6lzGVoNW/3hlKFs1oUxQAU+mAzk8o8epDhvTu4zMsPmzNA
         qrPd4IcYiE8TK7qOQa6pyi5mP84Nx8R5M3toFhZ9450iSivFZQrPlt6lnKZd98d8Zpbo
         DFSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761747312; x=1762352112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JnGN5D18R/9fVPC4aATiOOBzgu+WBuLqDytyaFyTYec=;
        b=jDSDjFSR7lbrWUK8OFzsOMI9C7J/eSBe6bXf0MMMWVCVC9X7LeqPCkLZfFS53AiDix
         Dm99CWN+6cSn/PRuude2uT1LbJdEeH8rots/X+2vbORIsZUJIScNeU9vyJImzLfBc2j9
         pw2uqhMnjegjFPcuEyB07mw1CWNjBD7KJCpPwEfTDJ9rbjcYQVwMe1PNE8y+RmpKRTPL
         32t7mBF7iOir6V1vRBz3SRwIgqrYKdHgNh+T2++pn8I55fMo7puJpy5EHr93ZrpTM/Ck
         YydnXuKDSODQm4m0m/i/LJRA3xy+iPu1Jw72XRM78zGzB4uTZ8ZDBCrAUO88DOlBnpsz
         6Eyg==
X-Forwarded-Encrypted: i=1; AJvYcCWztIJuTKGMfD3T9B6edsIilzXtuW3aTnJKCv0zWAOyPaHaHfIch2hD7r8UrMngKCqQDT0QDzaQ8SIO@vger.kernel.org
X-Gm-Message-State: AOJu0YxftWKqD6scDGVCSy3a90AScCrjPxbbQqU5XPNtLkH16LmmQPFI
	cq8rtypQjbAEwThuZnzuWp/YiaN/q9kmAD61d5WAIS8M/aD8peLv+LGMSdAxg9a6MtcUsFjQKt9
	dBKCLlTM3TkMvFEAmG5i6dl3j7lgOt2q2q63aiJ21Fw==
X-Gm-Gg: ASbGncuA8GTDYX8qtb2pPLqviflQF67Bs0MQIWjUw8aSaFB9YtMEseJGEYI9FGr0pcB
	Tq0mgIZTG3HX0bOELr7djN2zfBO7BOcQW4LhUVFvPZXow36BLl/OM3MGCH9kcVUYldNoJ9Y4zSq
	GS7ejd3qME1QtaahyVxKRAvLxXg80/F3LRwBBxHEcRoXQ4pNVcBkINe3BNn2j9yA2PpekuS6rGD
	QICCR/TlJuBy9MSPXG9Yf+GZiVxehM7+lbLB00K15MF9Ql6frzvb7lu+5D08ZPu57umS34mTe94
	Wkec+w==
X-Google-Smtp-Source: AGHT+IFHbNWWVxA87snhrR4IbvJu5TGV5/GUfJgAIFivqMT+b8PLCXPg6xBSIPiXG/dy8RZjJuiqgOtncZYWj0XE3mk=
X-Received: by 2002:a05:6512:4027:b0:579:fbe5:447b with SMTP id
 2adb3069b0e04-59412877a64mr997730e87.25.1761747312519; Wed, 29 Oct 2025
 07:15:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027123601.77216-1-herve.codina@bootlin.com>
In-Reply-To: <20251027123601.77216-1-herve.codina@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 29 Oct 2025 15:14:59 +0100
X-Gm-Features: AWmQ_bnA7g7AcaUJgpDisQ6qYyEHOuq4LuFcqR2x-CFiQFCGVVARLA-FUYgDIHk
Message-ID: <CACRpkdZMj84AJu1ZgDLin1Ef1JaBRHsevB2auTFvn4h3M66yGw@mail.gmail.com>
Subject: Re: [PATCH v6 0/8] gpio: renesas: Add support for GPIO and related
 interrupts in RZ/N1 SoC
To: "Herve Codina (Schneider Electric)" <herve.codina@bootlin.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Hoan Tran <hoan@os.amperecomputing.com>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Saravana Kannan <saravanak@google.com>, Serge Semin <fancer.lancer@gmail.com>, 
	Phil Edworthy <phil.edworthy@renesas.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Pascal Eberhard <pascal.eberhard@se.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 27, 2025 at 1:36=E2=80=AFPM Herve Codina (Schneider Electric)
<herve.codina@bootlin.com> wrote:

> This series adds support for GPIO and GPIO IRQ mux available in the
> RZ/N1 SoCs.

I think I sent some review tag at some point?

Anyways, here is another one:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij


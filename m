Return-Path: <devicetree+bounces-70844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 735748D4BB7
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 14:31:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E432B1F2146D
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 12:31:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89509132101;
	Thu, 30 May 2024 12:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYNu8tKV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659FA18309F
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 12:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717072279; cv=none; b=NShyq5L/u8EuRWFn8Ls8v05LqGqf9kc8QlYmlYy8YrSH8/vw6Y9lFFbI/5imLcaPq3W71bo01k2axVqSRQ8DF9nE2wbKB0GaNPb+VMtw5qYnCemm+rxCKQ2d117RGYM8g/kIexJwBCQgTxDW+2IqJiCC00wvMLthJU4znJqvXTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717072279; c=relaxed/simple;
	bh=bR8eWrnPedutQi5+62tiAkMCt8uiTnllrpWwVPCOBFs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HuIGEcSq8k5v/U8PRgcfbuZvR2e+7TFTmyHXtA1hod8hqryerTBXzcU6QBOASPheeipiouCv4K8UZgRekpHx3I2KfnSoIOVbDoS2O+71dBYetDBU+tuAnsNutswcvlOvd+CWCYd52hLoxTBMHDADFt3sL4dxUG0Gjo/DTxjZXu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYNu8tKV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E60C8C32789
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 12:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717072278;
	bh=bR8eWrnPedutQi5+62tiAkMCt8uiTnllrpWwVPCOBFs=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=UYNu8tKVxe/eQg+GojmV0Z//M5ev5jC6iGsjqj7SmXqMt4oxK4nbge6FbgSg7SZz1
	 HTruFxKXjsmv/6muHc1S8N3FEpuYXrPlnd8kdwTc5k7ubIMBpaCdSrF4bBtGBF2Bu0
	 aqGPuxl4OpB4rFDUDn5iJrdYfqreHbGW6mPemzynRmBdiGHclbJGA+f1PV4Gv7XNy7
	 PkgOjHWYWt8NyhvqP3swdhdpP72VpqL4Xm/yGjEp3LEYTiJ7Q66KDh2/hxED+0lLFv
	 ri5ieaaSGk9KL4VeKWXbeU3YEWIHLotdumvkVoAGwU4yRk8HGam3kkxHjdbUmog5tf
	 GTK3q1tJ+3kjw==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2e964acff1aso8291461fa.0
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 05:31:18 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUUxS3k1udcHrsbQng5i3qXcE3CU8AktInRBo97bbmBAV26576I7lxbd3LYRCcxD2a0VfSIjk+ppM4yJDgy5RtvXuYmRiWp6lGwBQ==
X-Gm-Message-State: AOJu0YxGQ3UuRXjJLTIVh4UMJdq8mrchqNmenVebD7VCq4+bci48bzrB
	xtw9VPC+89urC7eBGJnnDvkrBrgeG0h4Qd9ORxkcFE7ENGIue0St6MTdnqXw/VVjpYB22+0hYlm
	T8Ssc9lLycMPD1aKkMPknxaeHWw==
X-Google-Smtp-Source: AGHT+IHZXD2G7kDgRyG3RBKYbzTlNfrK+UNPqakHs+Qe6lHZTl9sHITVj+qlb5WWe4I0a6gNmI7ESwJKiwebiOsdjvA=
X-Received: by 2002:a2e:9682:0:b0:2ea:7d8f:8d04 with SMTP id
 38308e7fff4ca-2ea847ee490mr12661391fa.19.1717072277300; Thu, 30 May 2024
 05:31:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <a770cb5acb708e6d65570a4037a376321c9e8bb0.1716977322.git.geert+renesas@glider.be>
In-Reply-To: <a770cb5acb708e6d65570a4037a376321c9e8bb0.1716977322.git.geert+renesas@glider.be>
From: Rob Herring <robh@kernel.org>
Date: Thu, 30 May 2024 07:31:03 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLL3g4+nfu2NmC0drR-m5u287EBvK9jbY43XC=bSSVSpQ@mail.gmail.com>
Message-ID: <CAL_JsqLL3g4+nfu2NmC0drR-m5u287EBvK9jbY43XC=bSSVSpQ@mail.gmail.com>
Subject: Re: [PATCH v2] fdtoverlay: Remove bogus type info from help text
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Saravana Kannan <saravanak@google.com>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 29, 2024 at 5:11=E2=80=AFAM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
> "fdtoverlay -h" shows a.o.:
>
>     <type>      s=3Dstring, i=3Dint, u=3Dunsigned, x=3Dhex
>             Optional modifier prefix:
>                     hh or b=3Dbyte, h=3D2 byte, l=3D4 byte (default)
>
> However, unlike fdtget and fdtput, fdtoverlay does not support the
> "-t"/"--type" option.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> Upstream dtc has Uwe's commit 2cdf93a6d402a161 ("fdtoverlay: Fix usage
> string to not mention "<type>"").

So you want me to sync upstream? That's how upstream commits get into
the kernel. I don't take patches (unless there's some urgent
breakage).

Rob


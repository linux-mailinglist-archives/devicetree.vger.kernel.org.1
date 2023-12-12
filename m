Return-Path: <devicetree+bounces-24369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF3B80EDEA
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 14:45:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A5E91F2164E
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 13:45:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51FAF6EB45;
	Tue, 12 Dec 2023 13:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O8MKjVuT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36FA7F2
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 05:44:58 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-286f3e0d010so1635127a91.0
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 05:44:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702388697; x=1702993497; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zK+fOmyFv7SEFsNbfsgmO8FYtdShMzdiC1Mslmm7OoU=;
        b=O8MKjVuThLpUI19iJOeH+JNcdC2cQIWCD51zM0OZtbwjmZDCXTZi+BkAxjiRLr/BYz
         cGFn7PhcecZ2vwmFyX/prl3hdE4A31PSWAp3keZFYZsCfdmptCAKeuMOiXGa33m3UeMe
         TpOHIOZ6+StQsXpY1C0V2CRk5x62nWmRRSeZ1YyjqRNYHHI+OLopsbPfLx0+N9Lg4Ga5
         Bz35hd2AoBezs1gZW3Di8WrCcvKsLjtpuq0RAHa+AYNWKp4ddfhGyMB3C4wd90p1EX4W
         fJNQ7tI/wHIM0g7mwTKi+KGI0zavEFkXl0RN1OOA6d7VNXgWE/Hkyd8DOwNYE3mxGSd3
         Iv+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702388697; x=1702993497;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zK+fOmyFv7SEFsNbfsgmO8FYtdShMzdiC1Mslmm7OoU=;
        b=U+TblTIgdQTeM/fGqOYZUUBgwvZ5sX1YskQB0619smJ9/D4Lz0XGmoAu6Uw/hibgBC
         aKxFG/YVEYR6JZAsErh+2c7bbxAc4wRzazsbrQrs7Wu3Ny4BacvIY0ucf3ip8Q0kjUjw
         v/Si4dXKgLP2gtsZLiKAzc2ygotuKgsJQCyfNiqPQYACyMr3mUu3Mgs4e3iKSTDIfGkE
         VK+dh3z2TjQjeYddZRoyvWjwKYVq1UNLx1wmvrv9h5lfgOP/TjNjgiwIyf7bcdn0T5Vu
         K6I44tRlmb802m9jYyiE8oVgxCOqxA2HWSLS31BpfAX/qYzJQIRzuPoDuP0HZ6aE/OeI
         lOwA==
X-Gm-Message-State: AOJu0YwD8UxFtAJxwt7fZI4GeWVb9b4dbhBo/L9nck/bRWmxXKjkYTt9
	S5WL+oJhQc4r9Q7vg6BMsTh+zN8v8u8fjFT0HOg=
X-Google-Smtp-Source: AGHT+IGzG7tCoRAkKvTm5hEsXQR0pUE1tZnGcxqPHj3uJpejr36/7lpUf7CCORU80Q78dDojixnV58Ck+iI7MxsgQJM=
X-Received: by 2002:a17:90a:e010:b0:28a:c703:688f with SMTP id
 u16-20020a17090ae01000b0028ac703688fmr1048174pjy.3.1702388697638; Tue, 12 Dec
 2023 05:44:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231117232352.101713-1-lech.perczak@gmail.com>
 <20231206013247.GY236001@dragon> <5b285fdd-9d69-400c-978f-234665fca73e@gmail.com>
In-Reply-To: <5b285fdd-9d69-400c-978f-234665fca73e@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 12 Dec 2023 10:44:45 -0300
Message-ID: <CAOMZO5Bd+mVV0BQPgUD+45M6SKQ-txN7uJTgMrh5wtZXFXZtWw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: nxp: imx7d-pico: add cpu-supply nodes
To: Lech Perczak <lech.perczak@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lech,

On Mon, Dec 11, 2023 at 7:41=E2=80=AFPM Lech Perczak <lech.perczak@gmail.co=
m> wrote:

> Hi Shawn,
>
> Do you think this could be backported to stable later?
> OpenWrt and Debian could then pick this change up - I have a pull
> request open in OpenWrt backporting this.

As your patch is not a bug fix, it does not qualify to be backported
to linux-stable.

Please check the stable kernel rules at:
https://github.com/torvalds/linux/blob/master/Documentation/process/stable-=
kernel-rules.rst


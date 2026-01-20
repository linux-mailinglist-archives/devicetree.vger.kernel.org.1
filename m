Return-Path: <devicetree+bounces-257238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 39138D3C35C
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:25:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DB144665362
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 09:12:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F4843BF2ED;
	Tue, 20 Jan 2026 09:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="lcPqfz6D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB8C3BC4D1
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 09:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.177
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768900374; cv=pass; b=n1YlmeeKv+q2cMLvCALBIJ/P7EbCoEkmYAVVp22RHPwv3WbjzG98k3/5g3PwYLq9pWtcaOV66Ht6R+dGnzIFkUmE+3gpcbbQU7I7lcQLuaSpPQV48tN/RviRmg83kdkK+YOCGXQmuY+3K9zoDLgYGABm0A3KgneuQyBi/+VuhRI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768900374; c=relaxed/simple;
	bh=m3kBLRvqqnsqAfb6grqCh1VA5CCALQU1gL8CfPAlgPc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AL0rhamuAirhaOvV7PhJfV4aE4z5gmbM/X0AJ6gpz9jbdWhn3TXINfdwV/PmO+qj6pMWK6D7/qMY4etmGyhqKUg5tfUk4vCsM8p7c8R7vkrWndEGUxKkQ4EA9DyGvEiFM13KW6vuVwAwa89UsSi46vTEYfr/eie+Dyme8Kcg7NU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=lcPqfz6D; arc=pass smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-79276cef7beso44121017b3.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 01:12:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768900371; cv=none;
        d=google.com; s=arc-20240605;
        b=C8KZuqFoY9soor4Z01XAQWu5trtBBzeLODwwXxJYtl68b5jLUSUgW4MjVovbhN0Fwg
         obxbBVn00Ps0GxuwJbwNemY5Uihywnt4ScyMH8v9hW0thBXUDe26vUbdpk0sRCVO2+d+
         wsowaGgKlFXRexCLTr3PFMnApSIQJrzdaJkYIjEvHyT1QUInt5hfXp5Q2a/L3mpWeyCh
         MumG6ixl85xhhoNFhcbSKHDcOGKD1yO8NnKZDhietaxKdE5UbkWv+3DOP2gN7/IBS9ND
         rgrk71AVCZ5j1dtt+AKcg7xU77OwCayd2tF111rW3p+VSOy8hzOHk4B0SKs3UatIrtUj
         /G4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PNxgsdZ6Vqh8ZsmPDkFdaFpUMUQSLQTx1/iXhsZCiLE=;
        fh=7t1owo3tcXTLpLDrAIw8Knucp0/pARimEV9e/0dVsZI=;
        b=gbBl9CyzQMCNqCPNhw+g8Py+WQ2WR6G0Q2cUj+O+/hLyLJlAVvY5+BD7acn/srN6xq
         L9DO8FxWl7m6l0sWz0juUV9Nni/Yc46aaRIIkd1otO37R6lFUnQAKFfgGcCbMGQjh8I3
         97hgzSDQCmkk0ad+jMVulUlhInZARs64P/HYoCXVZ4eaAdMGrzRWXv2RCsu8BUxck0Ip
         5GtzZHNkY7qRSZuDhf6VwXwnpwruTIAIj6mjzyoPcoqzF2FjNgKtLzBlFCQSYTU+GBB0
         wPDfJLgM0r4JkD/OK/Ysjx4PrdKXO0mJ0GxwNG9tACPqmBw2f7N2ueL/cQU8DVecxcuq
         w1KA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768900371; x=1769505171; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PNxgsdZ6Vqh8ZsmPDkFdaFpUMUQSLQTx1/iXhsZCiLE=;
        b=lcPqfz6D2WYjgIv/e48DmHerpspua43xlQbEQsEEONEynL0TafFj76OuYvXlLfDFFf
         DfP2nVnLE0GPJrxLCfbVIifa4gB/kdm6uvchg7QfglOkbWc8FcYnzBiH/K1uYrQm0me6
         oL2F4bwZ42nRMuKxfsNNDoLYJOY4+Jz8GyBfVyAbe2mCkZRGafBs+DUilk3RUIrB3MIZ
         /+8IPq0IfnySv+0leQSvcV4ZnfoLIXFCmsNaTztMrZoUMT06jsGIbPsRIEVWb7qrCnr5
         PDQlyk8pllPUgTuIkc9ynSTfr3Irt/37AI6qiRw6cwmFvK/M7M89Jm45p6WNNjvvUKmE
         GnJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768900371; x=1769505171;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PNxgsdZ6Vqh8ZsmPDkFdaFpUMUQSLQTx1/iXhsZCiLE=;
        b=iiQBLZ8/kXW3XMT6HPK6sgs/umrK5I96Ec07lOG5cbv53TLeJNVb6TZD3nhEVLHG6V
         Mf5NRyfYwA/K2P6WUEedRafMExbjZazzMEa0Dh9xO5VbbevXItA10bnawr9aU16uLDzT
         MRmahJhQb6eiOj0tIzkgPBRC8zQ1ijVJQRgjjLBvntgvU+ycHHoWOb3FPJ0eRZ4cis22
         gPhuOCV+8xjvb0Py6MN26pWmNCdt7MdAZfS/VPz+4AIT8o/Nq/aXVzZWUUGUX2M0V3k+
         xS1fYddn/hcy18neDXGNLb7cfDkV7oBHBL0uLUjE4BX9PlTLLOIRXQWtFHRuSkrdBLXT
         Lb9w==
X-Forwarded-Encrypted: i=1; AJvYcCVDCcMn4ohmspKxtv/RBaEYAAjIK6m19RCaLH7l2teXpg3GcSh+lxb6T5eC2SkHLkINgWcTqPEYOWjY@vger.kernel.org
X-Gm-Message-State: AOJu0YzJvAZ5OcgTior0+gu+qyxZgajiXqacsLjf4pFF70b/ypnRj/+p
	axzaLYvi3tzQWqozVatGcFYzjw8N/iCnPJwgOi90hJQuJa61hnbon2RUm1YATkuFsc7LqbEAeqT
	HE8qqRF6aX0p4klV3nkRE6n4NNWLgS8n5Sek60WBwfA==
X-Gm-Gg: AZuq6aJvkRJ5HNnZOX8QoPbuF6wt73VnhBt5VRcxsT+0k24Sv//gBdAKM5T+6hnDBSm
	+4GBHuqBdyg0xjvakwIxsMalq5yxkzZc+My7819ql8Yh6t1kfRfemcSR51PfOJ4lgRTPbKNF1I5
	6M7n5G8pBiBBtkqO+WbjKIItD+G80czyRwmf+j+BEXOLraBtMMUq0akv1Udexou8b5xRX9NqGzx
	fPDG9sJBwjdfFeG/8orKjB8KE48ssBe++vRshHdzAMMA4mO3vq/Xspi0tZ1ZIadaPPAjCkPnJCt
	+NfOHwiNqOTlD3zlvOJXT4xW1mfkmHCkRdFCmEm9q0cH
X-Received: by 2002:a05:690c:dc3:b0:783:6f68:2a05 with SMTP id
 00721157ae682-793c5262618mr114246527b3.14.1768900371200; Tue, 20 Jan 2026
 01:12:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260108-k3-reset-v2-0-457df235efe9@riscstar.com>
 <20260108-k3-reset-v2-2-457df235efe9@riscstar.com> <f5a35fdc-9245-4be6-83a3-c1bfe86d30c9@riscstar.com>
In-Reply-To: <f5a35fdc-9245-4be6-83a3-c1bfe86d30c9@riscstar.com>
From: Guodong Xu <guodong@riscstar.com>
Date: Tue, 20 Jan 2026 17:12:39 +0800
X-Gm-Features: AZwV_QiSUZjFVgUdNJN_FK9z3phGCKu7RzMoyj2ZIW92mPGRdZzm_Uoe-7AvW5g
Message-ID: <CAH1PCMbxE05U0kp0y1qVcE1Bozpq9DiDvS83DHTsh5XxdeqVsg@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] reset: Create subdirectory for SpacemiT drivers
To: Alex Elder <elder@riscstar.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	Haylen Chu <heylenay@4d2.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 16, 2026 at 1:27=E2=80=AFAM Alex Elder <elder@riscstar.com> wro=
te:
>
> On 1/8/26 8:22 AM, Guodong Xu wrote:
> > diff --git a/drivers/reset/spacemit/Makefile b/drivers/reset/spacemit/M=
akefile
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..de7e358c74fd7b0fac3ec2c=
18d985331af64fcbb
> > --- /dev/null
> > +++ b/drivers/reset/spacemit/Makefile
> > @@ -0,0 +1,3 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +obj-$(CONFIG_RESET_SPACEMIT_K1)              +=3D reset-spacemit-k1.o
> > +
>
> Didn't git shout at you for having a blank line at the end of this file?

No. But I think I can remove it to keep a constant style with other Makefil=
es
under the reset directory.

BR,
Guodong Xu

>
> > diff --git a/drivers/reset/reset-spacemit.c b/drivers/reset/spacemit/re=
set-spacemit-k1.c
> > similarity index 100%
> > rename from drivers/reset/reset-spacemit.c
> > rename to drivers/reset/spacemit/reset-spacemit-k1.c
> >
>


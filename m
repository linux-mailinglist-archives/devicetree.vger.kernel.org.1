Return-Path: <devicetree+bounces-185847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 369CFAD9731
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 23:14:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8BA6D3A8428
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 21:14:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4772270EBC;
	Fri, 13 Jun 2025 21:14:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="33EgCjj9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC2A263F27
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 21:14:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749849270; cv=none; b=EPsEfWPUWI5nduTfY0lHKQgFwFV9D2B5bnLCEfMYv8E6HffIoIwkTsoLPdWj4IsVIlNrN5h/dMjIPNE/XqmtexXk1gkONkYCTKfoKaJ1LMFNTREUQ2tt7AEzN8dmsq47hQPuOGXMPMfFz4dobwSCuiu54/PhM/1e/LbR+JItJNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749849270; c=relaxed/simple;
	bh=3gW54xxqi5YfP3g8A7gpJXnky5JvqRK+AOvpeic5Yok=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UBnq24+36AQN1eC6hwJltiz1AogMJQZuZPZ77DS0FoHU/vWWKlb8QNMNf9EJCu2TLkShdcbs3YpoASJxnSTR7VUf7bCd+rw638DGI9S+G+nkd6UHIrPNFsB6zo8R2XomCkGM+RQ7QN+Br6kjT5AkXDKwwneorYIn9Tr7XRtcnDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=33EgCjj9; arc=none smtp.client-ip=209.85.217.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-4e7f4adaedaso138362137.3
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 14:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1749849267; x=1750454067; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9bCHCGcohcJ2Z8gKyh3s4OeACkb8tG/8ddHOZfIjF3E=;
        b=33EgCjj9+K2cUB9uYjRDboj9VbWu+wAo6PDo9Q8YakZZ8LGv5dwdxji5VGqVkiwHfQ
         oJp/NhdxR7+fr8mgN+cvl0irpXZDv+2ppEjcXZy9JuMrNJMM4T/wZn6EJfdWRPDeNeuR
         o+/JQ/iFxM4MsHwqrKFh/PL6MeYPjh8n92E7L3Db3t5JkMSyzX/qJAjBIZMswh8ZkV5m
         DFdy1tmYB4I/xkmoS/UVFA35hOW8xsxG2z3l/4hag1kOyk6s0CYCKl7daBRSuLPFyPD3
         BBLk5D8Csb86HZvKpWejhlmvIpwWNPVixHzq0DKfq+v/jJJnQ7Vht64mEOaYTSIk1gKr
         7Q0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749849267; x=1750454067;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9bCHCGcohcJ2Z8gKyh3s4OeACkb8tG/8ddHOZfIjF3E=;
        b=qpnMhai8jY7zq0JfVNZ9NtwQWryCfsMg6n04KeVHZNfIQCalLlWF3S8QNwaFJdgIjL
         FTPEZfJ/vk+5euTLHyWeYjXzd7DWpkUYTvjNa13VfeLnISBsLF/SXRT4n3GmlYGHnXWm
         EWBbJuPQZ6nP+9f0526qthuRrpASbghAVOAY+5XDWSVI9XKiUQzH8qHPA4cq5kGF4TOA
         0mYr3gQHdXseGvC/7KNarsyK5PfhjnWGKvp2PNbIC/kk1UQS/qyWF5LfyTX+rwE2K+l5
         wuRv3TuYK5pYwEQP2R8qZdpyF8SOQs+lpETBMmOTKMJrssR+sG7H1cQMMrzr3EE83n82
         DmRA==
X-Forwarded-Encrypted: i=1; AJvYcCVmUMwTgw2RoM5BUXK4TPtaNEpt6wNjX/lM4IqD78neSi5guta9uXeY93k2RlcNBsrwCqDtSK9mH6VE@vger.kernel.org
X-Gm-Message-State: AOJu0YzwE6D2/PF3+j8A0HdB5OKet2tJ0tjxAYcpkkKLtV9B5xUrIVoy
	Yv+AL8Dgk/udT+JfaemVDkQyAfj5nrrqL9RkznQYCLzF1nEzjKJ1OQxEW+GCyFVcAInGDX4TPRq
	JJAoEj/OjK7iHzxCgW5VI+KUL+2NKdQexDGBa+IoG
X-Gm-Gg: ASbGncv1l4e/fUkwiGoLfa2qiZzto/9vkAKPODqTAdeLYGzUmsEbpe3PtqEDjCOn3GS
	jE9XocNfSxZE5GFaJCcvqI12S0kfsCQIzk2o30diumARjr7/HVDLoovUYM3khs4qYc9Ul0vfZ4n
	lTo1zzaxOqibMuLf898q/DGA2sORbnuKLPv8QnR9saiA==
X-Google-Smtp-Source: AGHT+IFDKOFSYaUuF6G7K6OfIsfpObQ96cqfG2SkXcaTm8DQdC0kgY8LOqBWYZw9a+dWxydmoDEXMMYsxWer9ReGFRQ=
X-Received: by 2002:a05:6102:26c2:b0:4c5:1c2e:79f5 with SMTP id
 ada2fe7eead31-4e7f61c6ecfmr1328879137.16.1749849267109; Fri, 13 Jun 2025
 14:14:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250613134817.681832-1-herve.codina@bootlin.com> <20250613134817.681832-7-herve.codina@bootlin.com>
In-Reply-To: <20250613134817.681832-7-herve.codina@bootlin.com>
From: Saravana Kannan <saravanak@google.com>
Date: Fri, 13 Jun 2025 14:13:49 -0700
X-Gm-Features: AX0GCFvxcUcb0pxRJ6zcIBbIU8xYBQJLfYNKarcjHKuyfWeI8fRbEayRS0Ht4OY
Message-ID: <CAGETcx9u-7TJ6_J5HdmDT=7A6Z08P-rUC0n+qnBoBi+ejRc2SQ@mail.gmail.com>
Subject: Re: [PATCH v3 06/28] driver core: fw_devlink: Introduce fw_devlink_set_device()
To: Herve Codina <herve.codina@bootlin.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Danilo Krummrich <dakr@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, Peter Rosin <peda@axentia.se>, 
	Derek Kiernan <derek.kiernan@amd.com>, Dragan Cvetic <dragan.cvetic@amd.com>, 
	Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Mark Brown <broonie@kernel.org>, Len Brown <lenb@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Wolfram Sang <wsa@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Davidlohr Bueso <dave@stgolabs.net>, 
	Dave Jiang <dave.jiang@intel.com>, Alison Schofield <alison.schofield@intel.com>, 
	Vishal Verma <vishal.l.verma@intel.com>, Ira Weiny <ira.weiny@intel.com>, 
	Dan Williams <dan.j.williams@intel.com>, linux-kernel@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-clk@vger.kernel.org, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-spi@vger.kernel.org, linux-acpi@vger.kernel.org, 
	linux-cxl@vger.kernel.org, Allan Nielsen <allan.nielsen@microchip.com>, 
	Horatiu Vultur <horatiu.vultur@microchip.com>, 
	Steen Hegelund <steen.hegelund@microchip.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 13, 2025 at 6:49=E2=80=AFAM Herve Codina <herve.codina@bootlin.=
com> wrote:
>
> Setting fwnode->dev is specific to fw_devlink.
>
> In order to avoid having a direct 'fwnode->dev =3D dev;' in several
> place in the kernel, introduce fw_devlink_set_device() helper to perform
> this operation.
>

This should not be set anywhere outside the driver core files. I'll
get to reviewing the series, but until then, NACK to this.

Is there a specific patch that explain why we need to set this outside
driver core?

-Saravana

> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> ---
>  include/linux/fwnode.h | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/include/linux/fwnode.h b/include/linux/fwnode.h
> index a921ca2fe940..a1345e274125 100644
> --- a/include/linux/fwnode.h
> +++ b/include/linux/fwnode.h
> @@ -231,4 +231,10 @@ void fw_devlink_purge_absent_suppliers(struct fwnode=
_handle *fwnode);
>  void fw_devlink_refresh_fwnode(struct fwnode_handle *fwnode);
>  bool fw_devlink_is_strict(void);
>
> +static inline void fw_devlink_set_device(struct fwnode_handle *fwnode,
> +                                        struct device *dev)
> +{
> +       fwnode->dev =3D dev;
> +}
> +
>  #endif
> --
> 2.49.0
>


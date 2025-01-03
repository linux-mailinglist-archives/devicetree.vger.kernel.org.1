Return-Path: <devicetree+bounces-135363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 52733A00B2B
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 16:08:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 259A6163E2D
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 15:08:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51BCB1FA140;
	Fri,  3 Jan 2025 15:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxaemnsj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AAB442C;
	Fri,  3 Jan 2025 15:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735916881; cv=none; b=pgWaIIvfnM8Y52pCL5nOeF3PeLbDe4ElIgEtYvt2UbZqLJ1FDSrjaeFIfZBeWmZ8x30LeL0T6j8p4AKnlXurDvPFPP1mE52+jqOSq3qCBjc8lTDFe4wlndtBnXupJhjkxp09zvdq7kWnd6KlGvbnioJscbJmguO2Ato22QhkrDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735916881; c=relaxed/simple;
	bh=pa8iPo8rZDy/VREOtUU1Oe/67UHExICNeskRPbiTAT8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H/IbQevntjkIAIATMs0eiYmVAF+c2mmDLoCj1/2dn0fnyuN8F4W4X7WpD0cHfNGJrgchXM6j41HelBXMHTNXYvf6p8w8/vnPHUUAqoQkKJezzquTnym7srdrtGpD3MZyTR7FRh1DFbaokILdOYCYSFgA3/eEAgKGnxd9N+9nu/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxaemnsj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2D43C4CEDD;
	Fri,  3 Jan 2025 15:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735916880;
	bh=pa8iPo8rZDy/VREOtUU1Oe/67UHExICNeskRPbiTAT8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=fxaemnsjJZMbS4uoan4jo/PmLECdFBA2LMHuukyJNrU+lAf0cOLruLgaVfz9SKpq7
	 CJbnc5vnPFXnlSQlXVYVDLFrjsiVCAvALmYOEUlp539crSdPdqXLGq5qyojq75V6pj
	 roc3TMwd3VRWPX29pdr65IPz1wbryvpKFhr0U/wLNfKLHWJXm3Lf9NO4PqMbaT6GeE
	 jMlbAlHeYdZKA4FX3pkrEsyD3XGG9G4McF2Ep+ezuLir5YxhissNWfI3wzxwMopOqO
	 hnjge2BAPyRBWHhiP/gLzmgeVNaHiYCqV7FDKtC6NckcNaJbPDWkwsXoiOyTB4EkF0
	 VInvlml4SbLgw==
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-e46ebe19489so15142393276.2;
        Fri, 03 Jan 2025 07:08:00 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWMTsYuEOzQnv3Enxc1EbRnh2vhNA6qwziahHqO8Y2Eyj8tHpLWFT3YH8ioFGngwh0UAiJiGqsX/kSiflCg@vger.kernel.org, AJvYcCXbcrdgTgfuVQplmfUMhf2qUEmB8QLLj7w0RnkIVXRvnH5Fn1g1Pg3l/oxHmk3yWxQQ3Thq4Ib6lrn9@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6CbLFkGAM1fjYu2D/fEe7UWLQT8pjVJJU2XZtoDjvV1MvW1vI
	npksnZyZ7IINvRUQNgGBdpA6AjQd6cZu8E9i7YrNNJZQ1eTqmPdObqLPXSiL4qCah7Co/eU7MZr
	9iq7vD6CwMu7BB9oAWcO4E1sRkQ==
X-Google-Smtp-Source: AGHT+IGxyfXBFGegjtWEMX4BQ8hbZPVylwaZnkFznFp1uS87O+aijlTqHkIgUKh+Ah6DRaEFsJ8QsfN7b2+LzBRmugI=
X-Received: by 2002:a05:690c:3612:b0:6ef:4b7a:eb07 with SMTP id
 00721157ae682-6f3f82387edmr347538987b3.36.1735916879925; Fri, 03 Jan 2025
 07:07:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241230120315.2490-1-gordoste@iinet.net.au> <CAL_Jsq+4XVq6-i1+96ov7ysuBhWBxvt=oLB8n7mdpAh09wvvwA@mail.gmail.com>
 <e88314d7-894c-48fd-a16e-5b32b6261bea@iinet.net.au>
In-Reply-To: <e88314d7-894c-48fd-a16e-5b32b6261bea@iinet.net.au>
From: Rob Herring <robh@kernel.org>
Date: Fri, 3 Jan 2025 09:07:49 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJdMy8h96crA2r66dHgrnQ9Rbm=g9i=hp9tZ5DLnbVpnA@mail.gmail.com>
Message-ID: <CAL_JsqJdMy8h96crA2r66dHgrnQ9Rbm=g9i=hp9tZ5DLnbVpnA@mail.gmail.com>
Subject: Re: [PATCH] of: dynamic: Avoid reversing sibling order
To: Stephen Gordon <gordoste@iinet.net.au>
Cc: Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 2, 2025 at 8:08=E2=80=AFPM Stephen Gordon <gordoste@iinet.net.a=
u> wrote:
>
> On 3/01/2025 3:46 am, Rob Herring wrote:
>
> > The order should not be significant. What are the nodes where the order=
 matters?
>
> The devicetree spec certainly doesn't make any guarantees of node order,
> so this is a reasonable question.
>
> The driver in question is using the of_graph_* functions with a tree like=
:
>
> ports {
>         p0: port@0 { reg =3D <0>; endpoint { }; };
>         p1: port@1 { reg =3D <1>; endpoint { }; };
>         p2: port@2 { reg =3D <2>; endpoint { }; };
> };

Well, this should be easy to fix. We have addresses, so we should
iterate in address order.

> The driver navigates to p0 using various graph functions, because it
> needs to process that before any other endpoint. It then uses
> of_graph_get_next_port_endpoint to iterate through the remaining
> endpoints. However, when the DT is created by dynamic.c, p0 is last and
> no further endpoints are returned.  If the tree is created by fdt.c or
> pdt.c, everything works fine, because the list of siblings is in the
> order they were specified in the file.

Can you just iterate by the index instead? We have functions which
return the specified port and/or endpoint number.

We can't really wholesale sort the child list to address order. While
that is the preferred source order as well, I'm sure there's something
somewhere depending on the order. The order can affect probe order
just like linking order does. However, I think we can safely change
the graph functions to guarantee address order. That means we need a
version of of_get_next_child() which guarantees it goes in address
order and then use that in the graph functions. It won't be efficient
since each iteration has to walk the whole list of children, but
there's never a lot of ports/endpoints.

Rob


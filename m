Return-Path: <devicetree+bounces-101174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F40970BFE
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 04:42:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 889F61F22D8D
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 02:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3AB718CC0B;
	Mon,  9 Sep 2024 02:39:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="RDsGTMsD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1909161326
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 02:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725849597; cv=none; b=gJap2w9ywXLbx8z9BF9vPzeSVDJhuOXfT+N8+l7g/XA1C0mlUPMq2p7iFb1sklTk7QTl07VXpOR5IZPqLMriV82R64qYqym4kk12Vt7dUTflOufIakW6O696Ii2CSBPDEvEDxcfIG4sRQzy8LpwgkEfJZFaobz3jrVn/1ZYbV0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725849597; c=relaxed/simple;
	bh=CXncZPiQ0Stl5rweg8akghGFSW67+FTjXiBapm0vHJY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=a1E9Xx3JxUMT/Nt/TZuAUI1zYP67i2upMIHORDPftY7k5i6DYepzXsB9kO5XB6ryw0JsCH1trbFlCeRNYqTyfEldlyih3nu+R+BiADPsDYjSKdKrqh+wBV9328VTbiEZ7fV1WfAD1UM3ORcYlcHE3m5LnKLiN018MsnpNKbp53Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=RDsGTMsD; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-53655b9bbcdso3432650e87.2
        for <devicetree@vger.kernel.org>; Sun, 08 Sep 2024 19:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725849594; x=1726454394; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7cFi5jfefYj2+h0zGqYNyKUh3On9Em31F3FUiHDsAPI=;
        b=RDsGTMsDebBOAnErFPlrVX9n/rc/IrgmyzA+ead1woeWXDbLxHNIJw8E6MgFYG0dlV
         wvSu8IOwvbGt3KE3vpR5Ybdl5nMxTWWHoOhv9BI78Jf6+oWB4xKttPwZS+B4eDwRYTaP
         AIgsEmU9DOYMjFDbUlerCc+3LUvfpDNZfz+NU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725849594; x=1726454394;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7cFi5jfefYj2+h0zGqYNyKUh3On9Em31F3FUiHDsAPI=;
        b=Qy9f3iM343l+kG/4bsMoIqz9nuoTR73hDijmm/v7Lz4p3606XjsMOEgUzdYlvhFvPG
         v2nTgEIqstUNjso09THpnRBhTbOYCRVjR+ZvlYz5RYNBKtPN+u4pVjL1JcGqb5GyW+Ui
         pP5/FcGFHMZqs0iemU1qsq09JAoyNA84B83U4OLzp5u7hNY6IbLCH/Rjy5zoOg/ZiY92
         PYHxcdi3RXGuzxwNMUlCcjvN85+w0gXb3p4v1NrwXTk/w7kDWWp2pTAAOhcUVUYvAKI0
         k2aTdrlsR7DU+Y4C6NxKhwWJGjrj7IfvfSHxoyn8QYyba6nb8rcAkuSbjvK7S2kXOUH8
         TRZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhGS8gdPhiPFLTcF+eLL96JL4eFyJ8F7Jq7aIhUeFHmcBJt6kSNZ1/CdbZAaQIc1qGY+y1UXD3eKED@vger.kernel.org
X-Gm-Message-State: AOJu0Yyl10x6QtTYWjhpqmwjbAP7DJSx2hvuKGjHfzSZYMXt+PKxLs9U
	kq0DZjN5fmjSoox6FNYvZjvEjeSuLwnWmWtquKCD5iOrYsHZ6NZWPRvy2UikW5Q570uUqOBd7tq
	BIE5FLjI/2lFk4l35YYmK/HpVSgNc9IBLPbom
X-Google-Smtp-Source: AGHT+IHlN5GLZpAnPwP9Nfh6dJDXv4dqOvMPNVAV72HrfVF/EPodSu+G81D645T++W4Kv1SPpVAmGlS4gT+SnusBNKU=
X-Received: by 2002:a05:6512:1384:b0:52f:413:7e8c with SMTP id
 2adb3069b0e04-536587abe8amr5156459e87.14.1725849593704; Sun, 08 Sep 2024
 19:39:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240904090016.2841572-1-wenst@chromium.org> <20240904090016.2841572-6-wenst@chromium.org>
 <Zthc8r62z2eaR8k0@smile.fi.intel.com>
In-Reply-To: <Zthc8r62z2eaR8k0@smile.fi.intel.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 9 Sep 2024 10:39:42 +0800
Message-ID: <CAGXv+5FCctBG5uOSvH_-0z2Jgi36zRs-Cg0_P+q8aikxLcwmbw@mail.gmail.com>
Subject: Re: [PATCH v6 05/12] regulator: Do pure DT regulator lookup in of_regulator_bulk_get_all()
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>, 
	Johan Hovold <johan@kernel.org>, Jiri Kosina <jikos@kernel.org>, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 4, 2024 at 9:13=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Wed, Sep 04, 2024 at 05:00:07PM +0800, Chen-Yu Tsai wrote:
> > The to-be-introduced I2C component prober needs to enable regulator
> > supplies (and toggle GPIO pins) for the various components it intends
> > to probe. To support this, a new "pure DT lookup" method for getting
> > regulator supplies is needed, since the device normally requesting
> > the supply won't get created until after the component is probed to
> > be available.
> >
> > Convert the existing of_regulator_bulk_get_all() for this purpose.
> > This function has no in-tree users, as the original patch [1] that
> > used it was never landed. This patch changes the function ABI, but
> > it is straightforward to convert users.
> >
> > The underlying code that supports the existing regulator_get*()
> > functions has been reworked in previous patches to support this
> > specific case. An internal OF-specific version of regulator_get(),
> > of_regulator_get_optional(), is added for this.
> >
> > Also convert an existing usage of "dev && dev->of_node" to
> > "dev_of_node(dev)".
>
> > [1] https://lore.kernel.org/all/20231220203537.83479-2-jernej.skrabec@g=
mail.com/
> >
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
>
> Make it Link tag.
>
>   Link: https://lore.kernel.org/all/20231220203537.83479-2-jernej.skrabec=
@gmail.com/ [1]
>   Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

Ack.


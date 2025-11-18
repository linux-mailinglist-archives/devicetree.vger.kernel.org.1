Return-Path: <devicetree+bounces-239888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 13EF7C6A508
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 16:30:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 91F8F3453C5
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:30:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18229283FD4;
	Tue, 18 Nov 2025 15:30:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YfQge2Qu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8291F21FF25
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 15:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763479850; cv=none; b=juLKL2oj4rIJbqGAHo+6zGCdHnJUM0M0Yv5S87I1JtBH5ExrktpfiFVVOnzbKu4WFH1O0zIoGUGcVShqOqZ5YAIIbexlDUylnnAxXQOtWZIHwMXBa/ZUyniwIk5Z3qewM1GWCmpyafKwS0v8pCOLoWf1+pBpB02rHjJ8jSfrIVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763479850; c=relaxed/simple;
	bh=LD1RNsRdBO+alw1OFuDPZMEsEnycw5QswnLxdj2RvXY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mkmFSKZSEBN74X32CNEcCldQrxRcxgDX/6mj5ytftHCJTjHV6trqc0UICd4VwFll0MsQkxIF9rOW+JqZura9bcKub5jqqf6Nk9v4jqPefrMH+cAXSrQRqFcSaCFqk8ijMgurI1Ybuggit45shzWxIWgxt1vdWS+QWyohLvDwuus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YfQge2Qu; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-6419aaced59so7625095a12.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:30:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763479847; x=1764084647; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LD1RNsRdBO+alw1OFuDPZMEsEnycw5QswnLxdj2RvXY=;
        b=YfQge2Quv9BfKjHcdZSxTy9UaGhg4uv2TsG2b0bm+T+MJZSu7EDpoNk6cT0k+0MTTk
         jfgvBz94DFoRyDbucMDwWIhcigP6DajSFvodbaHFbvKwb8HFLnVQ8NnohRzHLGiskt64
         ppuL0k1GQE9o3G4eHBYOrQmzqrQJD6HAdE1PZ6MyWSd9OFUZmQ8AjkGqNfdBU/vUIQdO
         LAEW904VTRZmU1KgeA5SAEmZNb7xxZ9WkHs6gqCjwPe3OtHI4ot/uqlV/CBBJ+Y29BtA
         q0M4Uj5C/pkS571s1/9ch9u9+/LoFlezx+sjHBIVeU3BaTt9ePe4m+VzcZkG5GgG6/da
         k7rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763479847; x=1764084647;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LD1RNsRdBO+alw1OFuDPZMEsEnycw5QswnLxdj2RvXY=;
        b=lwgqDA4CteOzkSaBsWwIEIrOIWoUxlGbmxjWWbzc1/IYypwvQTvPtB6Nbt9LE2+XhW
         VEZ0t54I949B8f3Zc0TOgiEL915dgoKB4wpGcSQJ0CStIrzvd+Wl4VG3VH0Sw+WRNFBP
         xorbkN9qSCSznfXU0pZ9wnWeBSNlZqOL7rKbs9kwgq3PNhI9b3XfvKwtPiieQx4tmfoU
         b20JE/qX6vt9D4ujN6amgAjo7ni4Q3QUN2VYPMmtqAuLzGvgSIF7ZRtLa2SfMljj2y5d
         wrSuGpDT2beQS4kuRv8No79/xAYWQ0E16gcXe5BeAoBzHZLi/E7T2KVKb20/mNhtjB7v
         yKtQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbHZyub8vR4nSd2bXfvXFwQRhL99rPd9gVsNsPPqAsQXGiTkjiRC5FIM/LwinDY7bAM4d/TwTphehU@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0NMkfazwouDA4DKCJ6U1qivjQyYqLdBcbgoSP5Np4eeeg+K6+
	Dv/4veSwpw8g/3cP7CUK7WVmodafEMGr69k2VE6GsC1l99TTeIMXZJTxddn+s0PzDpDh/sXRkcQ
	5tZzDtFp/+a+Z2YKpyQCSWE+0TPI3BUc=
X-Gm-Gg: ASbGncsZnYKx+25UudAOrD1lzS3rPVGWmvRosWrYcJUFF3WbyQMswy73cSv4RfLznwq
	dp4Aec94gGvlStmOpVrMIfqabqDos0/FLpuG4py9vmeRIA0JaOzjuMGyqJeU6Lkf/u3Iyf5ofyS
	G+8qvldtI7nQeeLyURDsuCZrA+X8OOQhU3gomGcBI/YS0KsfF0ckRxHZU9VzbzZv0iAXB+I1ukl
	8Tf7isOpkWIgJlmF+gwQUE9gEo6ASkNEJhQBPlsOs/5I2OZETeJgsnNGNZMu+cJIW5ApqcqxbsF
	/L86unJzq/CsuoVrNyAzVUTr1WLBFoa9742QsLAuJjHap1xs7/9EiVGZEXginZ53lX/DmZQ=
X-Google-Smtp-Source: AGHT+IGWpsrb85ZSHDvhqFhXkcNk4LqoFezhAeLbRqOHg6421xZpUNNlQdix/NPAy6sJUWa4lmWm04OMjn/hoN+vbvU=
X-Received: by 2002:a17:907:a44:b0:b73:544d:ba2e with SMTP id
 a640c23a62f3a-b736780d5bamr2009214766b.25.1763479846581; Tue, 18 Nov 2025
 07:30:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251106-ltm8054-driver-v3-0-fd1feae0f65a@bootlin.com>
 <20251106-ltm8054-driver-v3-2-fd1feae0f65a@bootlin.com> <aQzHtqFEIA5E0ikO@smile.fi.intel.com>
 <2330439.iZASKD2KPV@fw-rgant>
In-Reply-To: <2330439.iZASKD2KPV@fw-rgant>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 18 Nov 2025 17:30:09 +0200
X-Gm-Features: AWmQ_bnZSB0YEOBpgzP_FKfC7e3gD1rFv6KShtEMJF-pnBY9w3EnieGPUK0dXqI
Message-ID: <CAHp75Vd8x0MydzuEYFM7aaiaO3igF2NjJ_aVTfWVKUoQ-q21Fg@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] iio: add processed write API
To: Romain Gantois <romain.gantois@bootlin.com>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Hans de Goede <hansg@kernel.org>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-iio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 18, 2025 at 5:16=E2=80=AFPM Romain Gantois
<romain.gantois@bootlin.com> wrote:
> On Thursday, 6 November 2025 17:07:18 CET Andy Shevchenko wrote:
> > On Thu, Nov 06, 2025 at 03:11:47PM +0100, Romain Gantois wrote:

...

> > > +EXPORT_SYMBOL_GPL(iio_write_channel_processed_scale);
> >
> > Can we start using namespaced exports?
>
> Sounds good, but won't it look strange to have only
> iio_write_channel_processed_scale() use a namespaced export?

Nope, somebody needs to start this mission, everybody so far has this
excuse :-) I think now it's time.

--=20
With Best Regards,
Andy Shevchenko


Return-Path: <devicetree+bounces-238180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 17784C585E1
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 16:27:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 73E8E35ACB9
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 15:19:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE2BE2E92B5;
	Thu, 13 Nov 2025 15:05:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14ED327F163
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 15:04:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763046300; cv=none; b=mozw3QvgHHPADKMsKS47ONrdNXI9CmNe9NJbOK5L93LsR+ZHXR6n8F8lJWkR6qi+iSUzE8MRZPraSBCzMBFhD/kd3FAZKXL3wE29DzZjagbi/1XIC8t6CVPLjQ8aGvXKcLpZc5N0+IFuM5F+WH0dCjuFwQ1BejCib0xWebOd1BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763046300; c=relaxed/simple;
	bh=96Y6UTc1RsC1zBGnStoKZ73w488HXsI+oYFS9qcYNHk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JHTQspjc7ECfBr2fYiS+VO/F1JVNJUzhp9UuWGS/mzwBlOYgd9bQ2JnlENj8PIsfS9l1CRmjXXbo/ea3EPDudFE12ALL09PdiJS0dPn+xyGqyE/lg/yYQw6tn3PBHzZd8WHQfPXq43jbEMur2wHNg2u6dNxfndz9VEY4P+aIq8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-4ed86157911so9195281cf.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 07:04:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763046298; x=1763651098;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ubK9EQtGlqEmscuI2UlEc444kIJ9wNNtF0OWUtH/PI=;
        b=FdSm3WdMIL9m0zOlSscEEBS+IdB/7YWnyCw+ZVB050IJOo37J28gCBdl+iYK3aF+6/
         1/tlGTfoKVBLcb+hOmmHwJHzUBbLVLT2TZbyCeV7i++YQtLguRCxzCQL5ceID2g2w7Ep
         1EcFpJuSNTnaImUFXCrf1un8teADr2tgjZgHS5CKjmivxQwI/vvi/QUNEZyLtx0ZlKa9
         sHmEunmAqX1aofic+VhIZ82TLlDUySKbL8EGrw8/rvn6mZRIGvL9I+fKPk6i7EH+UUGb
         pH9CCUc0HYbwgK/HoEJVxPHiubz8GsOxpk4gLTrFLQA6+u8CwRA0muVIY/8gdovBY7YD
         VDEQ==
X-Forwarded-Encrypted: i=1; AJvYcCVi+DvzzSpFrhOiHmsx2VVJrrpp+Z6+qQ/8VkfCkifV6JgqZjaC0jp0RTft72xqicMZ5vidS0h3bP+Q@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/BbTAAYXuGntagXRQAZjprF9V7vqYYkUuyZvGLvfWnL1GUWdj
	FIayDEcyl6w+FM0Jht0ULnLQwdCOnmoGvlPVE7r63m6CLm553TGsUrHy4KS6XLu/f8U=
X-Gm-Gg: ASbGncvt4gws5bWg/4wNnUx0XDXkPpZkg1fY7Tn4S8ucXpQUVh16xvE6YjT4KVittCj
	uE9TGvzVQiRWhCZ8Z3oo06dXamie1rGMnlw3yum2nC/GOWBvnV+z3Mi5LHy3C4GxKGl+XAj7ovS
	Tq4Xrk/R6OsYeNo/R1KxfQAY4F/T8h7F0Bl86egrOHnzfojtRkI5OfwS9EhrLxqySmkzCGfaG9I
	v+FsDna9ojqpM6XHtTAHPZAqljurnCNR6GJzAS2b6Tkm7iyNLw7aBB1KX9W8m8mlNYl7cr6xsgQ
	A+1NHCgFuQ/UzL6l4T2HwQAbjPSnibmSAS4TvqdVV33vlHoKaHKQStJxkNlUuRrBsfTXW2TnI5E
	guMQeGe5R/xOnNCdo9UspeNhnUh9syhuc4xcBs7/a9AvI9IK72K0nbHnOyWF7gdd9J6G8jCoRXU
	P3q8egla52rXM7h8oFStzlMskYKFkytW3Mx8aCJg==
X-Google-Smtp-Source: AGHT+IH9VcX6es2t6CyHtZXbThXHkX3MdmtF0oTK70aZYV2ftyF0L4eTIXzpY3enU1kcobhEaMtYjw==
X-Received: by 2002:a05:622a:507:b0:4eb:a10c:de05 with SMTP id d75a77b69052e-4eddbd8081bmr79648971cf.55.1763046295546;
        Thu, 13 Nov 2025 07:04:55 -0800 (PST)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com. [209.85.222.48])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-9376111f1d8sm626725241.8.2025.11.13.07.04.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 07:04:55 -0800 (PST)
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-93526e2842dso255933241.0
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 07:04:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW3v+ovqR+8yNmfJ/t/ygn9rJ/eC821QBQU/tGeVt66HESa86K/VERjlWKckfbAck9kLCzcTUC8o2jh@vger.kernel.org
X-Received: by 2002:a05:6102:a4b:b0:5db:f573:a2c with SMTP id
 ada2fe7eead31-5de07d2f924mr2287392137.13.1763046294441; Thu, 13 Nov 2025
 07:04:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com> <20251023135810.1688415-7-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20251023135810.1688415-7-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 13 Nov 2025 16:04:43 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUqoi-1GgyC3ZpmOupNtFxaUwRx8C4Q3iO9nx_hMwxX5A@mail.gmail.com>
X-Gm-Features: AWmQ_bntxYDPmpH9FJ7BCBwIP1rRXvUl6W1zgLobUSlsMYdvdi_L11aPQlSxmS8
Message-ID: <CAMuHMdUqoi-1GgyC3ZpmOupNtFxaUwRx8C4Q3iO9nx_hMwxX5A@mail.gmail.com>
Subject: Re: [PATCH v8 6/7] arm64: dts: renesas: r9a08g045: Add USB support
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com, 
	yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 23 Oct 2025 at 17:21, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Add USB nodes for the Renesas RZ/G3S SoC. This consists of PHY reset,
> host and device support.
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Thanks, will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds


Return-Path: <devicetree+bounces-265598-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JstF4NtkWlkigEAu9opvQ
	(envelope-from <devicetree+bounces-265598-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 07:53:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8C813E272
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 07:53:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 48DA130136A7
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 06:53:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EDA3289811;
	Sun, 15 Feb 2026 06:53:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="izS6GASo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D0527EC80
	for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 06:53:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771138432; cv=pass; b=fhoz8Az/swILZgAgJHFJtX0JFniVzD9n1ontQpEiR6Lwzitj6Uidv7g8HxA39lhLCWzXlo4sQpTkkGYe4cRv2KGfo9Ozd7jlPvUtDLjc7cX2A+laWBbtZzX+IKp45H2pN9noZKuXABHXWp2F4CTi6FP6fX3SfhI6Y126knUonhU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771138432; c=relaxed/simple;
	bh=fm7OyMKRSbRkqMu+SlOlybvCFrAlEJBRCeRwqVomiXI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QTlT1jwMNCKqor0IV62i4u0ekBsU2Os56OwvUnhPsZasUL28U6mmBrUXgvXXrk/DVAn9jzKSGbS2tDsic0NMClovdW/P/XHLts241xzbYL1eQveSr/G6otRAov0Bdv0ENPznU2r85XvWdix7RVF4Bo24A3SEw6p2Y0O9WLC5gDs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=izS6GASo; arc=pass smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b8f7a30515aso287588866b.0
        for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 22:53:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771138430; cv=none;
        d=google.com; s=arc-20240605;
        b=PjOJl7rnVo7SFTjIoTXaFbrRaVaASB8t1kz7Jb7HOWPPQVVi42D0NGb7LOEwDHcvCk
         MyOp6NO4+GTB1g8ItiaOhequcmh55HEF8xC82gGm8Qh65jp4CleWanAln+OoXwKbB79l
         XYk2tX7Pcvw8LKn9m3Hz5ZWVbOk4KiU5DeL2VJ+DY/ThGdajQilFjM/49uj2+8hAU94s
         wFqqmxvvP+PAC0haHbeW8tw+ajDQTnJbZK0kP/RxdnHly4+YvdG/m6xY2TKm4TUQzsx9
         TISBGOTrXvakbP8Xw9Jo+39PVqP9Fe37U6djXqdVtMQs/relj1Vo6MGFwQ2Rw/uX3Xbc
         sFLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fm7OyMKRSbRkqMu+SlOlybvCFrAlEJBRCeRwqVomiXI=;
        fh=Ec1l9KVwg6+oF1Ub3YL6Tnd68pyotNmxlxyQyqwg3KM=;
        b=cbDpB8EXjPH7OkjreffvIrf6EwO1o8gPeCHzVZeWvSCeIDC4PvAPtg5pEciIak4pQQ
         +EyYa5bGCTa1IpxYTYgGyc/ANs4rdg0/jct8YmEUi6wvhLDt05ABFxrw+TbQK+J351Ho
         xiLZ8x2iOeo/paizaIfkAoW/6TjKJOWxSpQDfoLGuSOer8cW8owyG3bDNdGoN68L6Isf
         53Dibi/mvop0qqr/GSbRrmKpgPRYuSKd2kM6ASIQPI7ysdU7KDaTUQlBPtoYmCealcJa
         XUChZkGMxtdDQNMDIYVrH49IcLaCOqN4dC5E5v+n0xs6AanfFt1Ov8QXCgs0E+GMxWIq
         VuNg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771138430; x=1771743230; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fm7OyMKRSbRkqMu+SlOlybvCFrAlEJBRCeRwqVomiXI=;
        b=izS6GASoBVX68fi7RX/rPsmThHO2AX3uHnO7Cpk0t7IKxX5bci/jKUoSlsuH2SuhPk
         M6WhJxvn+UvpCzm+OZk4InM+Vc/kk7HgUEdVaesuFAkrkvY8Us0g1FoWvbDMkKJUmB2L
         3i01kbNXmIHPLro7pCiLrnByHYKguQzxuNpkbe5+4ZeCMIUJfYuhYO05+fCBBOAF1Qxa
         isFotsoKlVc+WPReOKdEtxWBYS3c/um7RWKO+hjCIwBCKPSEH2h9YRCuXC76td6cw1dr
         emcxbKlqbg/XxX152B8vzAjLArnswC4LQTA3Ysp+UXjGVC0apm47WGZYytbOuKIeYKlt
         kNOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771138430; x=1771743230;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fm7OyMKRSbRkqMu+SlOlybvCFrAlEJBRCeRwqVomiXI=;
        b=Uk6rYTDOHEwxozdZiboU7lxxRc50a19n3IooqtHnVnX5smwHJPuwFTKjUqsBx271Vo
         uWPq7vJCqy/Mi0WDIjdFcES31youwELYr4U4iEgfRLPUZ+F6xIbr5tUmtfKd/362gLvu
         wCtDR/YV90Nx/6gUhEib2wGf9h9tZTjPFgDEBZ6ENTsK3BBtwxQNn0yICGuqHDX7rSAN
         OKRJmvUlFt2l2MsuRRzgRKLUld00H9Igvec8GeFeIZAadXgs5xohFvnXRp5Wl/QSfvMz
         HuQLBAX8WYw7/GGLCMnxRTGSP5bYRTRUnZZHnP1ckVKdBxndcPY+97HVeDKNzOXq44Z+
         Mj9A==
X-Forwarded-Encrypted: i=1; AJvYcCVIITsxLeIEoDPxPBNj6QsYO+I/Vo7G/Y4DPGVfzd8tM5vDYxPoVdiqMZCz/HB661+c/1gdMhFQLyP3@vger.kernel.org
X-Gm-Message-State: AOJu0YyuLe3NXQQNDQLXJZ/fZ5Ak96WAXv1stwK8nYhSalGirazGccVC
	pLrxf9JQfs9nvBD11+FmEokRl5l0gDYs1p19un1d565c1tewMCxztqlBSOn5PIh+shNrV/Nt+cF
	d1HC4fB8ros4y7imUZQOGT4n63xQmt0o=
X-Gm-Gg: AZuq6aLdqhRzeLiCLNzuCjstMGutU1iE+NaqjBrwGJAQ9eM3P5J74sLMDGMWOoOOzPq
	NrirEcV0ZY5Kf5UWyD5AGl+2+whFu7hBNoMtlAkjnAgQnWtMi3hWpmhfBq5B2z82qfJoQOo1Cnq
	tKqlu4S5qJ77PH9AozT+q62+yaAGjPaqVgAcqK/tyBbzMrlb6ejVmMdUTUglGLmI78sZBRVa0SD
	vhN01nD0PxJuuBoEyzlAp6E1DJK9+p9ItLSaZXvZWkfjZkybUKzrVSqVTwvoNNAFmNmFfyZjSme
	brwurPQ=
X-Received: by 2002:a17:907:d0e:b0:b8a:f9d7:1aec with SMTP id
 a640c23a62f3a-b8fc38f9100mr241469766b.10.1771138429366; Sat, 14 Feb 2026
 22:53:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260124163611.3279104-1-onlywig@gmail.com> <CAPStFe4qiEhmF_zDynuWE68LGtAsKsjg_mQHY1zdBsoMsHru3w@mail.gmail.com>
In-Reply-To: <CAPStFe4qiEhmF_zDynuWE68LGtAsKsjg_mQHY1zdBsoMsHru3w@mail.gmail.com>
From: Wig Cheng <onlywig@gmail.com>
Date: Sun, 15 Feb 2026 14:53:36 +0800
X-Gm-Features: AaiRm531Ead2P1abmmNlJDfTGkABx5t6UtzMpzXenz8InTeCNWJcFNf_5jR9URQ
Message-ID: <CAPStFe49H5x7S6JPV5D2MtH2_R3oxxRy+tScEJpQC_wBSNTB2g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: Add pixpaper display overlay for
 RZ/V2H Kakip board
To: geert+renesas@glider.be, magnus.damm@gmail.com
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, zaq14760@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-265598-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[glider.be,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[onlywig@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: BA8C813E272
X-Rspamd-Action: no action

> >
> > Add device tree overlay to support the MayQueen PixPaper e-paper display
> > on the Renesas RZ/V2H EVK (KAKIP board). The display is connected via
> > SPI0 interface and uses GPIO pins for reset, busy, and DC control.
> >

Hi Geert, Magnus,

Gentle ping on this patch. Note that the pixpaper driver and
dt-bindings "mayqueen,pixpaper" were merged into drm-misc-next for
v6.18 in September 2025, so the prerequisite is now in mainline.
Happy to make any changes if needed.

Thanks,

Wig


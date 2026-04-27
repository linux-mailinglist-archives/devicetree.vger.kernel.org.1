Return-Path: <devicetree+bounces-290777-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SExcChHn72lPHgEAu9opvQ
	(envelope-from <devicetree+bounces-290777-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 00:45:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9541547B97D
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 00:45:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6448A3016D3D
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 22:45:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 608AE34B437;
	Mon, 27 Apr 2026 22:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qc1g0DvQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57D13093DB
	for <devicetree@vger.kernel.org>; Mon, 27 Apr 2026 22:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.178
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777329933; cv=pass; b=KqLpsGZ8SxJX6+T5kMQT+Osu270dKXkvEaCfE2cnq3c9yrNsq9M4WVw51ly8TfaT7Nyt6hCjyH4AWehQF533McEj2Hz04721wVOuvX7dN+Wfz5c0VNe+kJAQf8WsRhYKLyALEdwQAqbMWmkq/OiOEYksJywcbtOWAYP7iv66Ah8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777329933; c=relaxed/simple;
	bh=NwM8y+2Ts7d7cO9hYC0y7UrNQPBdCzys1Q1nsIAgj+w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=G3AobIS8GfD+jG77glmnwfath2TYPc/Ob6E6/vMw6S8LzlhN5r2iTMtyCKqfVWctMsEu759WSJVS0yJCsi4mWBUFWm8P7rOen3mynHAcLdlvHJ/iXwtzX525Z3Tw1SEtqYU/5/wNGT4suQDi/jqALxUlrue+AjV85KLYEWZQRIo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qc1g0DvQ; arc=pass smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-38e936caafeso109451331fa.2
        for <devicetree@vger.kernel.org>; Mon, 27 Apr 2026 15:45:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777329930; cv=none;
        d=google.com; s=arc-20240605;
        b=WTv3kEGROMD3PT4ZEwPGPb5vFbGtgUpOny6Wtf4IXIsaJn7S2WdUbBdjHiuDtWU7ra
         Jp8o7GwEEohvputoeRgcYXxMiCQZTHpFUqCxAJ4tnM3MIkX3hYeNxTHmA6J4lGoOfXGk
         IOzKuUyPPT1fpCk9OdbLFFcMLYHWqonhekjoQel+X834zS+KHlW24xNTTeNqNAG3CC0M
         tcOMNVn7xxJAToOLa0129aSNcj/IFW6Oj2IRx4N7rSqoN9TjtLfiQR1QGxHNvN6lmsHf
         nYHTUVLyg1HBf8DcAEHaKd2ZX3kL07y5y/EqpqK85bl1MuYTaMg3if8y1SyLbCHw5lew
         ZR4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=rXFT5KAXJCWYb3ne2SnsbwowHcutyxyOkbiWcwD6uvo=;
        fh=kOUZ5z8Fm/0J/WF08CxLSf90Jtvqm1zhcgQo7LcVZmM=;
        b=horhI5oj5DjpDcaUhdKDbRi/bfbQyzFeMRvLDqLYNz8fkX4d8DeJKgh2kWJy9srRzw
         UYAx/E2Lew7jeFjXNV82KQiesyaiHYGbZ74DHV2kuL9wXb+GwS4KMRZukNGGnErBd0Tk
         JWeMGdGTToV0tuFRwE4HZqvlwXSLM1m8Xqsgpp7NH+GyI6v6KhXi3DA7mQRIxuBhMtHy
         gfEZfkVpRObsE6uvOpcngPCtxSC7Gwc5Wx9XWWKzQ91tCe5xp5YdGxN6WETuY4foUP4j
         C4WM1Da7AtRj0pefufQTHcDuhn9sPzXQ4bsuhSKncwGAkGT+N8oIV7mlNwR0jyxal12y
         L+7A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777329930; x=1777934730; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rXFT5KAXJCWYb3ne2SnsbwowHcutyxyOkbiWcwD6uvo=;
        b=Qc1g0DvQ1bPTTpVbyhTfFDp9GAzN1L46kgVpVJy6JbDY4JQKQ02PPeLJqIO+TwC0IC
         2ve9WEXgNSB8mwEJegJlXhQTepcGXoA/R1Pmj8jBhEUC8ll1+gvxKHMMPztsQlIUtxFR
         JxF6oso/oWKuxIdQijY4xbf85bMLh7mg8uXz1OtXgNEoBN7L4BzM+Y7cwVSRJLzJSna7
         DBmgmza8rKN0s181nUqgZ3ngdVUIa0Oeszlr5PXI92RLLtydAQpPIgPldd1ZssX3dMXk
         QJDKx0nzJ8wzHJLg1XMoy4uu2lfp9pIjn/BX3GKsBc+gcxjrudR+gxFcO+jO61CMWEqs
         0bAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777329930; x=1777934730;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rXFT5KAXJCWYb3ne2SnsbwowHcutyxyOkbiWcwD6uvo=;
        b=R6wnDhL6GHLfv1qPK+VpxQa+rt28X3wPEB+jv+C/t6HL4LkrJjw/Rn4dE/SQRmvkdb
         GyOMkUDhIpEkreidYBmz+fAYkcGejfX8BtFVu4yEnhM2LIZYD4XmFhZF6AKye1lL1Vdo
         oEUlMXncA9VA6a2JlZ3INFGGzkle0GOGxKL92Vex5HM6Fa4oT13E95IkOK3z7qrwdbSG
         tH5nMpQtdXJQuIjvj8aGQW+jjklyd6CK/2vJZ1j1Xv1Kq9dWrR85KPgNMrA7xcJ0dsV5
         1Q8Swp93cs4PvqOTk5xTbiQeGqA4h3eqbVhMyiyUFy/LcpdU1lBmg5pawRHMTaf/ximT
         uCEQ==
X-Forwarded-Encrypted: i=1; AFNElJ8nxYK8AjEtPQdp/iybwsWZNb6FU5gF9wsCt7QNu6mr2z+7w3XAaOJcLbfQ2wYpuT5xwaSUOkxb9Uv7@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1RHb/P9KLbklxPoP/QESP78+GabOPCcpbZHUI/FncMSiOsx2g
	pkI+JxxQeMot5doJnYg0LfuEtiF9U4nSTUtbrOE9wI9f5ROa1MWdnN8IVeHXEmBWYuyrUjXjoGc
	Qj1SI/skomc7BUfmZOOyRhRyctBIRAt0=
X-Gm-Gg: AeBDietpr0jRlJnC+c1aBh6YyU/mO3kFgcr5NkWKIBmdrZ2kzaSplmNQfRrrsye/EWv
	HcjySEpFlY6rRVjoD9OJ9Eu/B20JWtxT/3wo2mMJjoR2VwOnHWmazlWPa+3lvawjlkX+n5M+3Ki
	AJul/9HHWgKmRSIONAxxq1terDO3Q+h33uFNETblNyVy99hU7zYnUZGeqeA9GOPcENEk3ewzbUo
	wxyH7EVm1OGdLpG1aYis8ibB5Z+mEzK3ft4mDCU207OM03lER00TFS7K9j9bwpiBV/rHSBhrOqo
	aPVMFJcaa1ZbtqJlD5G4jRNTt3XamvsdlFDdMbjr+iJzKRYuK2E19DBSf8cfp7ys/ALbXmaSsr8
	6UNQ=
X-Received: by 2002:a05:651c:1990:b0:38a:4dd9:23f5 with SMTP id
 38308e7fff4ca-39240f9f732mr940401fa.22.1777329929976; Mon, 27 Apr 2026
 15:45:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260427100950.33936-1-piyushpatle228@gmail.com>
 <20260427100950.33936-5-piyushpatle228@gmail.com> <ae9t0WuhKgcPkfIt@ashevche-desk.local>
In-Reply-To: <ae9t0WuhKgcPkfIt@ashevche-desk.local>
From: Piyush Patle <piyushpatle228@gmail.com>
Date: Tue, 28 Apr 2026 04:14:53 +0530
X-Gm-Features: AVHnY4Kyd3mMKLSlCHdJCBn9JyaHjZzN_gbl2Tt7pONyK2SSXKOA5O2LwQlUjOw
Message-ID: <CAMB+xkZiMbkHpL5j8O+OWUAPHYj9=bo2Gk_NjT3-i1o0d2YTDA@mail.gmail.com>
Subject: Re: [PATCH v4 4/7] iio: adc: hx711: introduce hx711_chip_info
 per-variant structure
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: ak@it-klinger.de, jic23@kernel.org, dlechner@baylibre.com, 
	nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 9541547B97D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290777-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[piyushpatle228@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]

On Mon, Apr 27, 2026 at 7:38=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@intel.com> wrote:
>
> On Mon, Apr 27, 2026 at 03:39:35PM +0530, Piyush Patle wrote:
> > Add struct hx711_chip_info to hold per-variant static configuration:
> > device name, IIO channel spec array, IIO info ops pointer, and channel
> > count. Store a chip_info pointer in hx711_data and populate indio_dev
> > fields from it at probe time instead of hardcoding them.
> >
> > Use device_get_match_data() to look up the chip_info pointer from the
> > of_device_id table. Guard against a NULL return so that the driver
> > fails cleanly if probed via the platform name match path without
> > associated match data.
> >
> > No functional change for existing HX711 users.
>
> All the above is fine, but I missed the answer to the question "why?"
> You need to add that this is preparatory change to add more HW support
> or something alike along these words.
>
Will add to the commit message: this introduces hx711_chip_info as a
preparatory step so that the HX710B support patch can register a
second
variant without duplicating probe-time setup.

> ...
>
> > +static const struct hx711_chip_info hx711_chip =3D {
> > +     .name           =3D "hx711",
> > +     .channels       =3D hx711_chan_spec,
> > +     .iio_info       =3D &hx711_iio_info,
> > +     .num_channels   =3D ARRAY_SIZE(hx711_chan_spec),
>
> The array_size.h inclusion should go with this patch.
>
> > +};
>
> ...
>
> >       struct device *dev =3D &pdev->dev;
> >       struct hx711_data *hx711_data;
> > +     const struct hx711_chip_info *chip_info;
>
> Preserve reversed xmas tree order.
Will reorder the probe locals so the widest declarations come first.
>
> >       struct iio_dev *indio_dev;
> >       int ret;
> >       int i;
>
> ...
>
> > +     chip_info =3D device_get_match_data(dev);
> > +     if (!chip_info)
> > +             return dev_err_probe(dev, -ENODEV, "missing match data\n"=
);
>
> Since we are here, it's not match data, it's driver data. "missing driver=
 data".
>
> > +     hx711_data->chip_info =3D chip_info;
>
> + Blank line.
>
> >       /*
>
> --
> With Best Regards,
> Andy Shevchenko
>
>
Will make changes as suggested and give v5


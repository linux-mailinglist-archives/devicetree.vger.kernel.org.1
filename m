Return-Path: <devicetree+bounces-261755-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gGsSGxCEgGnE8wIAu9opvQ
	(envelope-from <devicetree+bounces-261755-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 12:01:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BE18ECB65B
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 12:01:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 09092303B7DB
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 10:54:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5BE92DB7BC;
	Mon,  2 Feb 2026 10:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BzONcRXh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f53.google.com (mail-dl1-f53.google.com [74.125.82.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4120635B142
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770029681; cv=pass; b=dmX0ErplbW/+8P2ILiOv0cV7WVhCHTzoERrGdxQ/pcDxo44HK9Y3y+lJF1CLiPD6sgGlQt3I1/HTWcK6CSL10w80pLvm5uz2b0eU8RX3mFNQwIRUm7zKu+s7pOjhLNvc2tzFuXFsJ6ph4waODSpNYZYzr6EknpyhW5WjCUHqlNw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770029681; c=relaxed/simple;
	bh=V9ea5khPkD/wK1PULqwvQ06ZQxDk20aa1czAnCx7YtA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=U6OZxSiSuhBjuCx2AXsobcDgkfisd8YrvQHY1oWva63g93jKoNikKX+rhM5Gxdv2o5Eya1eqYmt61OfULehFE0igRvlD15pKXEVJz6+hKRNIL9KiHKrAO7E7Uvx250n1U0os75S2kLkrJ2gvUyxsOGZdsoMC2QwUy+wYLCfsfEM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BzONcRXh; arc=pass smtp.client-ip=74.125.82.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f53.google.com with SMTP id a92af1059eb24-124a635476fso6275782c88.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 02:54:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770029679; cv=none;
        d=google.com; s=arc-20240605;
        b=iqPSDSP0qwcOkKPWmcrCLh3UR8MNphX7RIFH6NdKdtUpikq2iG0vcgXdxfoR2jkWqi
         3kvn6tqekyBSvywn9DzLgOKhR5yrQCv05eWWKBPq4oxtUNZlGqAKdDE5grLgea5SBxzm
         VMOgHhAQbNi1jE3Mvl/8F00wNIdfwB3peEGQRGoeK5ocU725P0LqbNez0BpxWlY2RBR6
         JLcJcXsGv7cXeVyO5AR0gP01DEfG6mVPqiWOYqD448B3PYGVZzXExR7qqQXBNJytpOes
         CqxJei0bMeMS9MhGqHW4UnnlR1Gosei7MiseNBKQ86dVsnwkrHUXOVxQ1cKlFWyOc3Sf
         QJwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=zjhNpMyF2yQrRwpFzXjP2mLxrAYnPxbG2zg/htKD0uY=;
        fh=Rj7NnwM42YUgKknFiM/6zm1NuXwomq8Pmuj5RK1Z+6Q=;
        b=MPoI/LreOt9NwNfWuGvA1LCSNdj+nXUJ0k//JPXUeGzp4N0X1+Iue5oI26kkpot8yn
         ksbaju1MGHHU/wdwrnTH0J7zTEqV08k4faARx2DVec+fA7Jq7W/5mEnGIWwkI+nEoymj
         Z2SvlD8Uky8Eyuk7oiOy9zO0aC7opFgesMBWfNCVzqkA3fhy+ohRWxmcDOalML9IyhUQ
         tymG7ONNhrN0iq6TXyvCRAz8X+taITGEUJloKlDDALPa7rJG3QUjB4YsdJH38JAqguYe
         Zi53hXt98tkjgao6XS/nHTrLfM9qNl2ecbXFcLf/8/3+iLqNQ8z3GtAlv90E1kaIE5QW
         t+dQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770029679; x=1770634479; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zjhNpMyF2yQrRwpFzXjP2mLxrAYnPxbG2zg/htKD0uY=;
        b=BzONcRXh99ZSqQmHgNedgd/1mqagMbFUBHxOODoQLMp0Sn6qqKp9iaxjPEgvp/IvRL
         sEREVLRc9YhZDBTo6o+Q8iviS9QkefPzbnh3RyG7bLoRO835yUz9W7ndDE8ZS/v8/mBp
         DRTnX7yZk5X0l0QjGZQJ5gXVBSj2FyI8hCxyXLP+MX45Ed4E+LviNdGf/BsOc16TqdAc
         XxuspYMt6zwYz/ZWj6HG052xdz5jGDNtU09XTaacp1G8yv15tZivbeA9Spu0M82YZFP5
         dpCOKt0CdazwwgZKbDKD46NjbdpZdJujp6tCjzPABKk2obsH+orkig6mz5IK0ZPyqtFj
         /SBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770029679; x=1770634479;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zjhNpMyF2yQrRwpFzXjP2mLxrAYnPxbG2zg/htKD0uY=;
        b=IRn7cjGNIcehvSfG8j4eYOkS8Wh4EQPqIkeUjuXV5DDxWmzhnRP2KqqIbBZCrsK6xC
         7Ge/Jm6zWZs+2E1ymW+sV2FM0aFEV1WcsxuLCJ/MHikcn2FASsNG78IH+3ry4EqQCtyD
         ze6Sbqcne68JFmkkRecfoazuRd3kPz0LEwHzd9VPfmP97ODWrZLaWh3+lsus9h/s/2m+
         aP0xaRY7yLtqv1a/i2OrTiI22GxHE4Qpzzuv3JVU41lFLanL+L5kJjRXH3VnGwFIgwQh
         d0cWU7Xy/RsqYNoh97Uxrm3nAb09BKB2xHZ1GOFLX+e/OmJcApufDBRz/TR/9vuqZArp
         6PRA==
X-Forwarded-Encrypted: i=1; AJvYcCWG5L27yfdy1+9aFoWtuzqR4mf7xtB6oUXtNoRBFhgh5B/xlKTFvV1ttalS9Y+XkmwWbqkJTBGx+0dg@vger.kernel.org
X-Gm-Message-State: AOJu0YwY+7fCrtvz4qYC50xdfa+tI3ql3g3lEsuB3HxEk+u3FFvKakcI
	RhEQUOxoHPdSzflYQRtnXMRtuV1iBJYT1s8nTOrM22wZUFEl8nOmFDPXf3r8LIDUzKzgTAUWR2r
	mjWrull3c5ELRBxdBY+yd6XDoh5xSOtM=
X-Gm-Gg: AZuq6aJu+qVbbEdgyx3N3xJvOJku0c/viXd56J3q3cy9/Q/ZNQHuXwvr4yYkpvaRV3G
	VajwBm9rxp1RoACgbzAXRumuk3ujyihPSkmMu5xACatqOEFq/nNazzvf5p9LBiUt0w4n4Ar0BkF
	udadB1SDhCodseZF65sLZ2qtrRpsKtFIfku7zHwfRcVSrIQLleqWUcZuRqkR5kYfvnGXQNBk33Z
	vdVKqI7FDA0noDErl8Zq5/6fj6NqgXW+gVU84nYh7HYDPSvFhTYDrOrn+s71A4PDuVaJH5Mj+vc
	LKfNRDd9VaK/Jgm3+kVC9Nl99pU=
X-Received: by 2002:a05:7022:6082:b0:11b:a514:b64f with SMTP id
 a92af1059eb24-125c0f997a1mr5611126c88.13.1770029679083; Mon, 02 Feb 2026
 02:54:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251119184708.566461-1-iansdannapel@gmail.com>
 <20251119184708.566461-3-iansdannapel@gmail.com> <f65506e6-ac29-449e-86b3-540c23ca6119@kernel.org>
 <CAKrir7hCGEdwZihgV8-JaXq1EbzQCvpJXcG_FEmDYEoJqUpbcg@mail.gmail.com> <d05daf50-dee2-4fb9-a4b4-4ef68edfe384@kernel.org>
In-Reply-To: <d05daf50-dee2-4fb9-a4b4-4ef68edfe384@kernel.org>
From: Ian Dannapel <iansdannapel@gmail.com>
Date: Mon, 2 Feb 2026 11:54:26 +0100
X-Gm-Features: AZwV_QjWp0uQXY5D9fomTO9vWVvkAlRB7KVTtr4IAVUNKFCFSTL0scOfs-nwjWc
Message-ID: <CAKrir7gueh=meE1JC0FuV+SzkkJK1+oEBVShuzoApnSWb_z1_w@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] dt-bindings: fpga: Add Efinix SPI programming bindings
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-fpga@vger.kernel.org, mdf@kernel.org, yilun.xu@intel.com, 
	trix@redhat.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	heiko@sntech.de, neil.armstrong@linaro.org, mani@kernel.org, 
	kever.yang@rock-chips.com, dev@kael-k.io
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261755-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[iansdannapel@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: BE18ECB65B
X-Rspamd-Action: no action

Hi Krzysztof,

On Thu, Nov 20, 2025 at 5:42=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 20/11/2025 16:55, Ian Dannapel wrote:
> > Hello Krzysztof,
> >
> > On Thu, Nov 20, 2025 at 3:13=E2=80=AFPM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> >>> +properties:
> >>> +  compatible:
> >>> +    enum:
> >>> +      - efinix,trion-spi
> >>> +      - efinix,titanium-spi
> >>> +      - efinix,topaz-spi
> >>
> >>
> >> Nothing improved. You received comments about this - twice or more eve=
n
> >> - so I feel like you just don't care about review.
> > Sorry I am lost here, this is based on a similar driver, but it is
> > probably very outdated.
> > So the fallback pattern would be okay? Eg:
> > items:
> >       - enum:
> >           - efinix,trion-config
> >           - efinix,titanium-config
> >           - efinix,topaz-config
> >       - const: efinix,fpga-config
> > Or would a single compatible be better since currently from the
> > drivers perspective there is
> > no difference in hardware?
>
> Almost, because I think you asked about this and I instead asked to use
> one specific device as the fallback. Choose the oldest device and use it
> the fallback for two others. There is plenty of examples - including
> example-schema - using it with oneOf syntax.
>
> Best regards,
> Krzysztof

Just making sure before sending a new version. Like this?
compatible:
  oneOf:
    - items:
        - enum:
            - efinix,titanium-config
            - efinix,topaz-config
        - const: efinix,trion-config
    - const: efinix,trion-config

Regards,
Ian


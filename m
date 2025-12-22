Return-Path: <devicetree+bounces-248932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B92CD6E82
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 19:49:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D5F7F3012CF8
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 18:48:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A0AB326D4A;
	Mon, 22 Dec 2025 18:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="VMM3ChsV";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="TU7epQoB"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1A0324337B
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 18:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766429337; cv=none; b=i9i2wFheRWHu53Jv3EJcJTopt4Yl7MFRWElhcYc9gnzkl7sJr/RUQlshYCi5OUuNy2bzzmYebPaNROksr7u3LRtXpSdR+TdC/XZA/FKOI8wLf6IxgC2XZXz/vdMnsKlr8+4mxISckbEhEtYr8d3LgkIIhIN+7uBHizSd05YbQyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766429337; c=relaxed/simple;
	bh=NU7BZTE9Yj7sLk0lhA3FzXeOwEjqAp3QZObasjzLk/8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qGMnjBWKviQIJM7WJ24Dh0YA2zZETAdcXyI1XqZMr5VNVgi02pz5ErmmErQKUnPjNSnPbsx/NYwY0QfhFL7kAZeVIp5PCx0M7zyg2HJheBnLiFUyGo3RlFUr0pVOtYQCXElG+WKwZzm4SLS7a84+SFJsT3ewU6xbezNwZapWyIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=VMM3ChsV; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=TU7epQoB; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1766429334;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=u+4D8Tlj01NwbwJ7Sfzz7JxK73l3sJ2lS0F6Yeexu9o=;
	b=VMM3ChsVgDIV1dHu+OBpFSdK9zd7hYFTGGQvNmoYq62vooJgTDgZaFCX8rC+YNo11hmZDy
	3xU2NGzurMz01a6wjX4KKphipqthWfwElvQyEkgHH9r4WzpbJlr8/hcnyp2Fu9IMbcQtvI
	pcZ9PY91WwAcde05r6kFMyJEOW5VCbA=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-68-_KiudvABNwyJTp9AKg0FYg-1; Mon, 22 Dec 2025 13:48:51 -0500
X-MC-Unique: _KiudvABNwyJTp9AKg0FYg-1
X-Mimecast-MFC-AGG-ID: _KiudvABNwyJTp9AKg0FYg_1766429331
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88a32bf024cso43827646d6.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:48:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1766429331; x=1767034131; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u+4D8Tlj01NwbwJ7Sfzz7JxK73l3sJ2lS0F6Yeexu9o=;
        b=TU7epQoBSRULIqAv53M+njP22qWA34y7b0N3LO6EkgaUIWILYFDAxw232qqnXwwY6i
         hnFkPg4g3rvMWiD4a7IUtzurz26aPFPc7EF9uKFM/nkjyhiUG7H/ehkEE8nbQgNMFOtt
         URKcVkWYhOLaCVKtDXR3yUzlnTwwruK7KqCQjZ0qFs7Z3Nt2yVJq5BpZqDMrHAzvv87v
         sgkkyYGbDJUuqthT+m4nQ+In/TYHLBppkG4SP+vc9zjg9BuoMwYLzbD/oe23kC5fAtoU
         PeenKaJH3pkknwoJ1LL+11yMFMjXyqSVYMtLgQ7AeVK+P/LUyIOnaQghCTO8e+lQHWSL
         M/Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766429331; x=1767034131;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=u+4D8Tlj01NwbwJ7Sfzz7JxK73l3sJ2lS0F6Yeexu9o=;
        b=TgLbT0D5a4TD26sp93mky4JWtr+UaxAHx213PoDtd64HKx8njwvO51BwlyKVfTSHSi
         4kqTU0tD/nYsyQqODGZ1PzcmZa9nxhllMAdDx45N71ZC6HbPVpv2AONRggNYyWEBY4Xm
         /pDpvwX9Y9YhZe5n7+25Rvb5d9ZN2wBzYr4v5kbsj4NFLg2XgokrUtMkEqQakjSbGlzZ
         Sm6uLTzE8+h80owgLffnmNd/Z0WOUOx1b0i9dV3d9ZC9uEXWVth9Pf9pQPQMGI36+diz
         rLeqxMuU8ajDz/kN2p7UvNEDNED/J3GxWy4a+P2LVVEf0A/NZ1e/eGrpRzNXekEWoL/o
         bF8A==
X-Forwarded-Encrypted: i=1; AJvYcCVkIb77fQ5VpBmN4hafiw1bLbSfoxcdKru38XW91IOPvx1/4wLXOCJeUGdQqqBrzUzq/3LHakSSp7aw@vger.kernel.org
X-Gm-Message-State: AOJu0YxnRd7/CdynYgttzuhpg/Bqhm1MKxuLb9Gn3ICUYI0hmsHi9M4E
	TmpJ6g6gTM+kzLHiAxqFqOnB7792vDvJtjSwpprqJTzXkf9TmUxCuM1fXxGYbaF9xtVNoVQZAkr
	4L0WFLjHYTkCkdFTP4HcTKy5CREHzj0D+7ZfLap27ATTDJ2zpnSkdLN4MukhxSyE=
X-Gm-Gg: AY/fxX5M8qGt8FMb4lmIPhy8Ch3dICIbh7IG10Tx+VWxQZLfWaY7oy1D1RtjwC+yqKz
	F7d6li3SLYFLnjydsY+OXeV8z4xprDf3TVhIlnaczoYCzsmrIVqGB/CHGidDNNr4M73BOUaFyXP
	pZ8dBvPXma9FOrRA4LC7xqcyJesbde9JMER9oeWqWPx1ntnr2UhBgrbaVImknnIOsPx6mRTLiju
	SoKeKLDJbq0p+GVaohVI+Di+aSvdmcmkeHT2ekEY29WByCsNhWki/xOfFQS34+Gd9VC+DkaPXR5
	Ogo1x+FxiU91lKnEtVL6NQkgQo9FXed5xCD5samQ52pKGzmF/FHYdic5IevLYuEaBF09tBByqkZ
	2fVJGFbi+/LXHCfaUJHcE2O1pU1HjMD0KdLatDkISV9Rr
X-Received: by 2002:a05:6214:4308:b0:87c:1ec5:841e with SMTP id 6a1803df08f44-88d8166608amr169685026d6.8.1766429330767;
        Mon, 22 Dec 2025 10:48:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFijTdoPJMxUAie0Ei+GEBkM/RdlFRvhMDa4MJTrCaVw2VpeAozymdzb5LdL3eiKsbDMfDUhA==
X-Received: by 2002:a05:6214:4308:b0:87c:1ec5:841e with SMTP id 6a1803df08f44-88d8166608amr169684816d6.8.1766429330363;
        Mon, 22 Dec 2025 10:48:50 -0800 (PST)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d9a44e26bsm86467836d6.47.2025.12.22.10.48.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 10:48:49 -0800 (PST)
Date: Mon, 22 Dec 2025 13:48:43 -0500
From: Brian Masney <bmasney@redhat.com>
To: Junhui Liu <junhui.liu@pigmoral.tech>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	Troy Mitchell <troy.mitchell@linux.spacemit.com>
Subject: Re: [PATCH v3 1/6] clk: correct clk_div_mask() return value for
 width == 32
Message-ID: <aUmSi3mSDjx7cmpn@redhat.com>
References: <20251216-dr1v90-cru-v3-0-52cc938d1db0@pigmoral.tech>
 <20251216-dr1v90-cru-v3-1-52cc938d1db0@pigmoral.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251216-dr1v90-cru-v3-1-52cc938d1db0@pigmoral.tech>
User-Agent: Mutt/2.2.14 (2025-02-20)

On Tue, Dec 16, 2025 at 11:39:41AM +0800, Junhui Liu wrote:
> The macro clk_div_mask() currently wraps to zero when width is 32 due to
> 1 << 32 being undefined behavior. This leads to incorrect mask generation
> and prevents correct retrieval of register field values for 32-bit-wide
> dividers.
> 
> Although it is unlikely to exhaust all U32_MAX div, some clock IPs may rely
> on a 32-bit val entry in their div_table to match a div, so providing a
> full 32-bit mask is necessary.
> 
> Fix this by casting 1 to long, ensuring proper behavior for valid widths up
> to 32.
> 
> Reviewed-by: Troy Mitchell <troy.mitchell@linux.spacemit.com>
> Signed-off-by: Junhui Liu <junhui.liu@pigmoral.tech>

Reviewed-by: Brian Masney <bmasney@redhat.com>



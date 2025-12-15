Return-Path: <devicetree+bounces-246624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E1DCBE31E
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 15:10:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 583A6300446A
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 14:10:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9609C33A038;
	Mon, 15 Dec 2025 14:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com header.i=@resnulli-us.20230601.gappssmtp.com header.b="mY6XLWLm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C92D1F5820
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 14:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765807790; cv=none; b=owQFrgWRNB5OD0uXVE/aVfTADKX0JQSYMORgVm9LqvHq8sl0al9KIqjVo9OUVb4BblSXZ8DtTtnU5au7whUWzos/qQ616qiMgaaPDfiqyyYMzGs3Ql/Qeu0qzKCxhyBUf2kRWAaWsO+oMiqlNxINxa34GTEvVDuU1EdP0Fcxt58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765807790; c=relaxed/simple;
	bh=a5hF4QBR+ZhlAFZc1a4Tnj7bIyil6UNwxw/cBS7TTfk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bEvF3DUC5xp0AcEx4vxZ5arLELre7Qt+FwuXlDyGqbCFZXxRQeswX8oDX2Q0YxWwSGOQNh4S9CGTXjwfkSGkKPZeBMA7T4gRVDjp1A6k+fBvBCNNGRNE3wzyqCbI0UdK34v3/gf5OvAWP9JgPLlWXPzP8WSAuVmMmR9EEteQb7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=resnulli.us; spf=none smtp.mailfrom=resnulli.us; dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com header.i=@resnulli-us.20230601.gappssmtp.com header.b=mY6XLWLm; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=resnulli.us
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=resnulli.us
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-477a2ab455fso38559755e9.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 06:09:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1765807783; x=1766412583; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oc/35n7eOAP8pFt55syhr1wbpjAJtoSwVCMNoOaa6ls=;
        b=mY6XLWLmOjwPh1HcltXU1I9yEOOx9shXwvGhp+uyoBeTLT+o2P5RjrZDvhyvgKG7v1
         EfznDC0/REn7YEd/VKbtaJHjA8NNGnClDuoB8OALi/9G0LvmgkSwt6fCiySrtsO1a680
         D3nJ8w1vqwobT/CzvnFNhllqb5fWu2nSKKBDcWud5Hj3EW4c3wj4bpNNk9leudWTRmGj
         aJR+WS5Xb9jtj36uSurGgInmn03tAsd5TL5KfvaV12Ap6Xtso2/KFIxz5GcS5UWW4yUu
         +j/9Ci0j/xPGYaZ21xH85e7LhPQnlXtTJ2QcbHiBHfGMCpvb53LRgbBCtn7verGqP9jf
         yj2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765807783; x=1766412583;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oc/35n7eOAP8pFt55syhr1wbpjAJtoSwVCMNoOaa6ls=;
        b=tdOWQpWCBJiXCMaLiL6p9rwkvqCbv57eC3nwjVOiXjpydY9YBwV5F+gJzzH6yrj9GK
         J1TNv3THWHhkFZgt28Z9LaJ4PJ+PNBZzbBCMWsp2TWUAJeYWccze6FOgCfQSr5scGOKW
         arLUIQsF93KGRlbwC4XJ2kSq1c1KuFHnpnEDvz00wvJIAEUKd2SQxJ5ftiiZwFQes5jc
         /tvX6B51ehfdlVqILOnGJ3FvyIQR4wCiMdQItOdxysqIJJVYZ0U6zVT0Av3siNb9gGzV
         ECa32fhQ5z73W3GNUatWATMnr2FkcebKqLOV9LVKyEoQa8bLO+pK4VtxEJoIEGPESoJD
         sr0g==
X-Forwarded-Encrypted: i=1; AJvYcCVoLuoXj8tWFoGoL7uUlDNLHS5oY0IdCBW+KL0smeklVMDVn+gPkYhmo4zoTwmsof85xRVEMYDrmBTr@vger.kernel.org
X-Gm-Message-State: AOJu0YymFToza7i3RIUC4jrIpUIM4mjkrdJCTs7A8RQYYT+4L5Q0ZKWB
	9b0j6XX1ZkmDJ+fo0/eAMcT/2gm1Y64nZvf75CDgnm2osN8kDJykxMCLfgrr6GKYnNQ=
X-Gm-Gg: AY/fxX7GHCxRRMjpV3JFxUTKhGykS877UXxivFxuuosl9xvRvPGnfrIAJoyPZCbWyju
	WQBTwPaMuR3y8aQQ5c6LQbEcKpV3Nle08vBN7cJWG8uoApx7SFSXfgI53XSEChTKek3O4VA9l9A
	SIOIDDCb2VhOWEd7lGBVQR7RWObJ1owkwxj7EMwJdchGRADY01od5i1f3wnPMesOnkOigYRhfWb
	Mj9CxICNFAFqMzFsZ4yd+rsjXy9LsGPKjz90+P79TSQxmkME/Umx1qz1wd+/Ylot08VzgfQlTrI
	yRahCVTSnR/UNY5knIihdAnW3eUSuPdx0T9pEdgdQnGUNdQWynZR7fhMK539gDWp5t58n1+/bxP
	Rk0HLVrnJPCMEvr7oH0mY2N2xnGEV/tsIVFM9ivi7XWzgUQZDEXBode1EMS7Ww8t0Os6icKaSNn
	Cc3CAwctTs6i3APBT0Qz3EmxE=
X-Google-Smtp-Source: AGHT+IFJ7XhIHXbaOzx1TEAlEfyUnyEwSWzsivaISUhktsBUoRVHQJCmyr0qoXUugUvu/YlkS2NEog==
X-Received: by 2002:a05:600c:3e85:b0:477:9d54:58d7 with SMTP id 5b1f17b1804b1-47a8f90cffemr109935815e9.29.1765807782193;
        Mon, 15 Dec 2025 06:09:42 -0800 (PST)
Received: from FV6GYCPJ69 ([140.209.217.211])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f74b17bsm192749655e9.2.2025.12.15.06.09.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 06:09:41 -0800 (PST)
Date: Mon, 15 Dec 2025 15:09:37 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Ivan Vecera <ivecera@redhat.com>
Cc: netdev@vger.kernel.org, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vadim Fedorenko <vadim.fedorenko@linux.dev>, Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>, 
	Grzegorz Nitka <grzegorz.nitka@intel.com>, Petr Oros <poros@redhat.com>, 
	Michal Schmidt <mschmidt@redhat.com>, Prathosh Satish <Prathosh.Satish@microchip.com>, 
	Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
	Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, 
	Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>, 
	Richard Cochran <richardcochran@gmail.com>, Jonathan Lemon <jonathan.lemon@gmail.com>, 
	Simon Horman <horms@kernel.org>, Alexander Lobakin <aleksander.lobakin@intel.com>, 
	Willem de Bruijn <willemb@google.com>, Stefan Wahren <wahrenst@gmx.net>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org
Subject: Re: [PATCH RFC net-next 02/13] dpll: Allow registering pin with
 firmware node
Message-ID: <dssuif6sbx7zp6pkk6divo4qceyopcq4rijkvqu7wmtqegucnd@etq3m2vvolo4>
References: <20251211194756.234043-1-ivecera@redhat.com>
 <20251211194756.234043-3-ivecera@redhat.com>
 <ahyyksqki6bas5rqngd735k4fmoeaj7l2a7lazm43ky3lj6ero@567g2ijcpekp>
 <3E2869EC-61B3-40DA-98E2-CD9543424468@redhat.com>
 <tawd6udewifjeoymxkfkapxgcgfviixb4zgcjnplycigk5ffws@rdymwt2hknsl>
 <eee9be12-603d-4e8e-92f8-e76728974313@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eee9be12-603d-4e8e-92f8-e76728974313@redhat.com>

Mon, Dec 15, 2025 at 02:51:36PM +0100, ivecera@redhat.com wrote:
>On 12/15/25 2:08 PM, Jiri Pirko wrote:
>> Sun, Dec 14, 2025 at 08:35:01PM +0100, ivecera@redhat.com wrote:
>> > 
>> > 
>> > On December 12, 2025 12:25:12 PM GMT+01:00, Jiri Pirko <jiri@resnulli.us> wrote:
>> > > Thu, Dec 11, 2025 at 08:47:45PM +0100, ivecera@redhat.com wrote:
>> > > 
>> > > [..]
>> > > 
>> > > > @@ -559,7 +563,8 @@ EXPORT_SYMBOL(dpll_netdev_pin_clear);
>> > > >   */
>> > > > struct dpll_pin *
>> > > > dpll_pin_get(u64 clock_id, u32 pin_idx, struct module *module,
>> > > > -	     const struct dpll_pin_properties *prop)
>> > > > +	     const struct dpll_pin_properties *prop,
>> > > > +	     struct fwnode_handle *fwnode)
>> > > > {
>> > > > 	struct dpll_pin *pos, *ret = NULL;
>> > > > 	unsigned long i;
>> > > > @@ -568,14 +573,15 @@ dpll_pin_get(u64 clock_id, u32 pin_idx, struct module *module,
>> > > > 	xa_for_each(&dpll_pin_xa, i, pos) {
>> > > > 		if (pos->clock_id == clock_id &&
>> > > > 		    pos->pin_idx == pin_idx &&
>> > > > -		    pos->module == module) {
>> > > > +		    pos->module == module &&
>> > > > +		    pos->fwnode == fwnode) {
>> > > 
>> > > Is fwnode part of the key? Doesn't look to me like that. Then you can
>> > > have a simple helper to set fwnode on struct dpll_pin *, and leave
>> > > dpll_pin_get() out of this, no?
>> > 
>> > IMHO yes, because particular fwnode identifies exact dpll pin, so
>> > I think it should be a part of the key.
>> 
>> The key items serve for userspace identification purposes as well. For
>> that, fwnode is non-sense.
>> fwnode identifies exact pin, that is nice. But is it the only
>> differentiator among other key items? I don't expect so.
>
>From this point of view, not. I will not touch dpll_pin_get() and rather
>use new helper like dpll_pin_fwnode_set(), ok?

Yes please. Thanks!


>
>Thanks,
>Ivan
>


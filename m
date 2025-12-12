Return-Path: <devicetree+bounces-246114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5132DCB8B58
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 12:25:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6410F3012DC7
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 11:25:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3079F31B11D;
	Fri, 12 Dec 2025 11:25:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com header.i=@resnulli-us.20230601.gappssmtp.com header.b="cMeOE3kA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F48D3093B6
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 11:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765538719; cv=none; b=D0BBM4tMe2bFGesVwvwxggYNUQoZukdUHCjIUSTUFTzhBU7Z1LRGl9NrwqULA3HgCi8W/5giqYd9qNWvvOl/sseYh6wtuzu3kolCKWSFbH8izULxmcDQf5YaMjxPrM5TYi28NKUlGNCObEw4vkPxkyIrkP+pWec7ldl7lqEr23I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765538719; c=relaxed/simple;
	bh=hTO9aQVk1BjsYhwnOVt6ys9wXkYUKex0i/wuCIuc6wM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bvSiXg5mwU/gmsKXaMJO5seIOE/JLQpXeFfGFIiSjalkJco9PYxuD7BiR1m1vbFrWIiF9+rvamPrHZXY3LVzYTYYQT8mvqumlho5CF3PzqzDVrBS2TipsNNUTmQA5mtc9XCvp3TqW8RS7Q6OjjKjfM8qQUfXSTlWu9/zvtBy0Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=resnulli.us; spf=none smtp.mailfrom=resnulli.us; dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com header.i=@resnulli-us.20230601.gappssmtp.com header.b=cMeOE3kA; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=resnulli.us
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=resnulli.us
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4775ae77516so12366585e9.1
        for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 03:25:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1765538716; x=1766143516; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gEnn545SHxpJYbhpEqJ4kau8ivvtfD9Ghf76lIvPG6E=;
        b=cMeOE3kACU3Ha23b+to+W7aPNYOihqvQuOjwSqGOXZ0gICe92Db6JhvmQ6BJ8/qtEw
         PR194sicrzJkAYlJ+jmzXgJvZk09uDchh9eOJQWn7xKmHuA34Yt5Hgkalp6DkBvNaIu1
         qCkppwq/uAyrsk4N3Gycwl6RZCj2PZgWbgeUSoBIRRpLNHKNREqryVW18rEw2cDBoZkO
         fQNzhs4ug4EllxjaAewe+1nbz9dsEozWQCM7fnXWMPDozG4Urh8gHbe/161oSoGR2NbI
         e7nXoLcLIKLETzBZByXcCxc/cqa56m0aYBV7XQAtagciJIMul+LBf0PGLxbU27r7A1h0
         74Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765538716; x=1766143516;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gEnn545SHxpJYbhpEqJ4kau8ivvtfD9Ghf76lIvPG6E=;
        b=B9aTlg7M/r2T8gT452S9buJEZngZSn+U2KfC3JVEY8JM7n/AeMS0XPdBWqPv80NUy3
         mcuvaCiKYGamgNl9nnJ4xBvpK4OeSXdCTn9QeeYafgiEKwe5LgAn5zN1wvltybxg21Rm
         eysuzytvzEfA5HikrhHyEBB2ZAilJLAjrg8QD9kL0S27z7IekoukzrtFzZbBTa8H4Y3L
         Lq9DwBYZtYslvU+oapPmVFSxIP0LzkoPZtFlNB2VyiCG7HdVlS4d1V8caKnYFHocqHq9
         n9cIlS8vvlWbe5+nwE/31AhcamavQwcrDsrc2fny+94tfQKRi7gMYRiLRdMEZgA2LRXI
         Zb1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUwCoimJW2OSH3FokgTRCWnsTYSXE/oqFFr3vbOUZZHbQv1ewfrRsdXBv0cZYnZ8BfDFly1c4nu28SP@vger.kernel.org
X-Gm-Message-State: AOJu0YzxT37HQ9vWxxTF+aq8zHr0avqEHKw7WLGFE7UVQ7VeFQbTXVW9
	BsyQTiP0PbL/sTWW8itqabxhvKKv8rqLuHD29HhG8VE7p4u4XTxWDBu9sTpN0+LeqWY=
X-Gm-Gg: AY/fxX7/xPvBuYgskO0bwInMA0TnCQLL5uJY9bPUdGyLWBYTeWD1bNPbRONHhLBsNBw
	OMeD6C10AM714wdlSAGcPwfor2uDBdTnY6TABszF+rbOjLkfUzVhalk2AIfWj5uYhqLAPgvF+ZO
	HItXcqjg8IbgzqFdGgToL2lN4sXdWycKWekO5BDywUIp94Uw7k3S+qDXdiBDZOtWxgoG4hQ7dFp
	Q+5a5MHk26ttuVrDF5EH9s5J3FmkLm3BiNOKniwRDOJBmrF2bdV+jmeahoOTDj3asAhf0Vq0Ff+
	3OGyxifdkPWHcb7ukiBS1y0IHJDH7MPQBM19wYJZH9tbPRJHmI/+Lbc2FHAnGqFmWx9GrUS3VWd
	rQS+28+q/iWwDibONRr5aDad8j/gI9bvlDDtmXvsFeTlMwKPxzmOx+EaX5O7Rw9Dv7/XQ8EpQmP
	Q9jejzbuV8vJk3AQEHUbwFrEA=
X-Google-Smtp-Source: AGHT+IHkaay9CDV5kfE74IqgXxI+GzQAfyiag1hnUiI3Kv6EDGuWkv0C2Lwzh9GBMI+h6MNTm6fuig==
X-Received: by 2002:a05:6000:2c09:b0:42b:5406:f289 with SMTP id ffacd0b85a97d-42fb44a24f0mr1717666f8f.3.1765538715596;
        Fri, 12 Dec 2025 03:25:15 -0800 (PST)
Received: from FV6GYCPJ69 ([140.209.217.211])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42fa8a66761sm11462241f8f.3.2025.12.12.03.25.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Dec 2025 03:25:15 -0800 (PST)
Date: Fri, 12 Dec 2025 12:25:12 +0100
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
Message-ID: <ahyyksqki6bas5rqngd735k4fmoeaj7l2a7lazm43ky3lj6ero@567g2ijcpekp>
References: <20251211194756.234043-1-ivecera@redhat.com>
 <20251211194756.234043-3-ivecera@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251211194756.234043-3-ivecera@redhat.com>

Thu, Dec 11, 2025 at 08:47:45PM +0100, ivecera@redhat.com wrote:

[..]

>@@ -559,7 +563,8 @@ EXPORT_SYMBOL(dpll_netdev_pin_clear);
>  */
> struct dpll_pin *
> dpll_pin_get(u64 clock_id, u32 pin_idx, struct module *module,
>-	     const struct dpll_pin_properties *prop)
>+	     const struct dpll_pin_properties *prop,
>+	     struct fwnode_handle *fwnode)
> {
> 	struct dpll_pin *pos, *ret = NULL;
> 	unsigned long i;
>@@ -568,14 +573,15 @@ dpll_pin_get(u64 clock_id, u32 pin_idx, struct module *module,
> 	xa_for_each(&dpll_pin_xa, i, pos) {
> 		if (pos->clock_id == clock_id &&
> 		    pos->pin_idx == pin_idx &&
>-		    pos->module == module) {
>+		    pos->module == module &&
>+		    pos->fwnode == fwnode) {

Is fwnode part of the key? Doesn't look to me like that. Then you can
have a simple helper to set fwnode on struct dpll_pin *, and leave
dpll_pin_get() out of this, no?


> 			ret = pos;
> 			refcount_inc(&ret->refcount);
> 			break;
> 		}

[..]


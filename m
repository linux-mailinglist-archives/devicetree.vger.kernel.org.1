Return-Path: <devicetree+bounces-273393-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cA/oHyDkr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273393-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:28:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 207B7248619
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:28:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 76D6A30055A4
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:26:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF91A43901F;
	Tue, 10 Mar 2026 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EY3LSjK3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA273A4F2E
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773134753; cv=none; b=VXNY/czDyzf3c+LvV2hScfCVj3E0KTroieZf8oJIejLpa/93voH/q4603n0Xq7LIJzqRgzBcCc+7yB7WMoH0KFQlieUyv4kFrMvstj+5Zss5aodmHlSHkiiTp18wrlavuUlQm+Bqr7Xr8856ToFJKE3NTC5vAlGvNegU/3znVfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773134753; c=relaxed/simple;
	bh=8kAAPzLvO9HZFHu2aOBGfotsPqOvAAAHzbg1InkPJ+M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ttw0DwQSCXVvaR9vFfm5wuwkL4pruckNPqjhBtBFYyEH3yDVnBnr3NTI7wEXcuXmVUcIauPenptFeV7Ax6+5iXrs5cFvfKBY3cGrPwyKIFWIXUTmGQeOjQ+PIx8xRw6M7j7yGtAYLBSSh8d6Ea5yzZaI466/985BkdxcUWPb4qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EY3LSjK3; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4853510b4f3so34038685e9.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773134751; x=1773739551; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=a6AEjt/HKBKk6o6xAxhEksykEV/720qA7nughq3Ozvc=;
        b=EY3LSjK3IqpaKAcygVFi16+AJudSYg9U0RHvRzkI/yRuaFE9ZvSFcv+XFWkQQbAN42
         c6mlWprN/0REKKY2/eGtIx3LQ2XUNrb1nEvuhO6gCkW+hqwfI83y5ZQYnbwcK4SLTXjS
         x4WSmso51inYFi1OkxjyZ748iNkG7eBltDfLoRJ5U2/BksyePl2uxBUIMIKzdCB7beE6
         A4TsCWYxRSj3aWqraRdseHKn4n/lKK+duKdYpJEhaphoEKn8UdkDu17+LGAw0jLdvQRy
         Nl/z8EGwQgXMP6wWfILiviOmecEEiVbHXFtSJkkh8/Go8rCSWdhrLRSGi3yo79cPNbki
         DlqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773134751; x=1773739551;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a6AEjt/HKBKk6o6xAxhEksykEV/720qA7nughq3Ozvc=;
        b=I2cL5pkLFIKXif6E4k/N1YvoA+XTPSMlPoGn2RwTm8vommuLDx//UKAUFzaUJvVwi6
         fJaikIneHhmE/rkDJxT3oeSJzQOxP9rJXkf92TQ9zyDJh9U1oGIJMXPi7uZqN6CERKEG
         PqieSBfkWCZveMQvJubbnBLm/U5sNJ66YboGJZtFJ3mnFiB5cBNKU19ETlNeGkGh6amq
         d88g/+UUXt67zpWq0QRG59repdkhw/KFuJCS49zy9V+YSnx1DVQn1KDGzHEgL4sbzaYl
         78XO2airLqQQykEwqBlOWcL2HAjLJvf41ot8Oj20KgvvK545IxOMkNtE1JYacp6POouU
         p8RA==
X-Forwarded-Encrypted: i=1; AJvYcCUfKj/nqTBO9n5H5/rLbWmpKrmrbPDcV0bY1z0mBcKb7M3u+fLsXd3taSfTM6OVf2dqGY9ihABsQqg5@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9W6iGI49CZqmy1wLyOzcjoc+E14RyDE1ogi0DR0cGgo/p2nxJ
	JKAUdMe1ld42/K+7zzn3EUbfIAJDG5/6wT2jjPRCfD57nQDUzYlzhwzi
X-Gm-Gg: ATEYQzzWZuO81EYkpfStpfAcuGnSDaMzCN73gHdXtSN0lrJh+tMqA3JtEglivmmgzPx
	7fJAsiYFT3SyJjWi1qBTnF997GohOYuAYsmuVlHuysXZW1EIaLeYpJxbGYbmJTi5mpPSWwKINm4
	Oetk3PedoiAoan2dC9/vttkrStJgGDEG+3gjMA+2FQXyPa0/XSXBc4tsLs4QScd+ZaIqb0EIkFW
	5qgyLvCudcVvLZ6ILksOPNybY73K0q+xcuNJaCwSBWXcRrN4p8nNspVmzViDN/xSUW6HehOzFI5
	0PZVjCxhMhfqZutz7v+q9QnHuK8k9NGjO0R56T910NiKt5y/ZfVd8LIgEBP3QvfgL5aGW0k2K36
	UN9WUKDf+crHpfsSQNbO0zoMH+on4MGUDGJcqtRQhJ6iIcKa+nKpbWzY/5SXta4YIDeIQZid04V
	8sUxydNjM1Hdt2aPIq5JIISktWglp/9MSaop+d4WFB1pe95/0kmrQtVX5WcCLuP+EQqXq2HkrdU
	e6FtiQ94L5y6fJdpf59rQcac7o/R7r9NvlOcj8idA9wcx8V7hS2wFn3XMAZNLFd0g==
X-Received: by 2002:a05:600c:3b82:b0:485:3bb0:194 with SMTP id 5b1f17b1804b1-4853bb00605mr100756565e9.35.1773134750550;
        Tue, 10 Mar 2026 02:25:50 -0700 (PDT)
Received: from HYB-DlYm71t3hSl.ad.analog.com ([137.71.226.102])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b8d4easm63376895e9.15.2026.03.10.02.25.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 02:25:50 -0700 (PDT)
Date: Tue, 10 Mar 2026 10:25:46 +0100
From: Jorge Marques <gastmaier@gmail.com>
To: Lakshay Piplani <lakshay.piplani@nxp.com>
Cc: linux-kernel@vger.kernel.org, linux-i3c@lists.infradead.org, 
	alexandre.belloni@bootlin.com, krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, broonie@kernel.org, lee@kernel.org, Frank.Li@nxp.com, 
	lgirdwood@gmail.com, vikash.bansal@nxp.com, priyanka.jain@nxp.com, 
	aman.kumarpandey@nxp.com
Subject: Re: [PATCH v6 6/7] i3c: hub: Add support for the I3C interface in
 the I3C hub
Message-ID: <zidtovc5pe4mzneeehwang5vf7b5fjnj7wzjafmmvll43xcwdz@eaiusmdzyv6w>
References: <20260310065727.3759342-1-lakshay.piplani@nxp.com>
 <20260310065727.3759342-6-lakshay.piplani@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260310065727.3759342-6-lakshay.piplani@nxp.com>
X-Rspamd-Queue-Id: 207B7248619
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273393-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,bootlin.com,kernel.org,nxp.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gastmaier@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,nxp.com:email]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 12:27:26PM +0530, Lakshay Piplani wrote:
> Add virtual I3C bus support for the hub and provide interface to enable
> or disable downstream ports.
> 
> Signed-off-by: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
> Signed-off-by: Vikash Bansal <vikash.bansal@nxp.com>
> Signed-off-by: Lakshay Piplani <lakshay.piplani@nxp.com>
> 
> ---
> Changes in v6:
>  - Add support for the generic I3C interface in the I3C Hub
> ---
> ---
>  MAINTAINERS             |   3 +
>  drivers/i3c/Kconfig     |  15 ++
>  drivers/i3c/Makefile    |   1 +
>  drivers/i3c/hub.c       | 459 ++++++++++++++++++++++++++++++++++++++++
>  include/linux/i3c/hub.h | 107 ++++++++++
>  5 files changed, 585 insertions(+)
>  create mode 100644 drivers/i3c/hub.c
>  create mode 100644 include/linux/i3c/hub.h
> 
> diff --git a/drivers/i3c/hub.c b/drivers/i3c/hub.c
> new file mode 100644
> index 000000000000..9cdea8635327
> --- /dev/null
> +++ b/drivers/i3c/hub.c
> @@ -0,0 +1,459 @@
Hi Aman,
> +static bool i3c_hub_master_supports_ccc_cmd(struct i3c_master_controller *controller,
> +					    const struct i3c_ccc_cmd *cmd)
> +{
> +	struct i3c_hub_controller *hub_controller;
> +	struct i3c_hub *hub;
> +
> +	hub_controller = dev_get_drvdata(&controller->dev);
> +	if (!hub_controller || !hub_controller->hub)
> +		return -ENODEV;
> +
This method returns a bool, this is a signedness bug.

Regards,
Jorge

> -- 
> 2.25.1
> 


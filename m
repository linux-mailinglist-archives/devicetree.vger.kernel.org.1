Return-Path: <devicetree+bounces-272992-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPrtJCfirmmoJgIAu9opvQ
	(envelope-from <devicetree+bounces-272992-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:07:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D24F923B42D
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:07:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 810F7301615E
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 15:06:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A35903D75B7;
	Mon,  9 Mar 2026 15:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="P5wgDjqO";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="nRvg82OP"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC8C3D6CC3
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 15:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773068764; cv=none; b=KGg77Uu0GYPmZjtw7Zf33TmgGfDkVNie+nbHM959Hl1FMAJWDp1RXWLdlU7huKsDiNj1elsEu1JAflNC6VG7M/QvMEy7vszR3QUeXFKEz15lSFx1CNE67V+Z0tQB6hU4qFVpuuCzAnFjo1i7Eu2xqyrlP0COVIqKDD1WZKAIe0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773068764; c=relaxed/simple;
	bh=23VxakV/UYmp4z3dIVXbl0SreyuAJQTZFAEqej4LTh0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LVhzSB5lg2/ro45hh3unkNdrj2o23kbNzt0mzhDJDNrWC4lFVHkzEHG3jiICcCD9rQMLSdDbe4u4ucmvxtVXYWJz+T054InWh8B+oTsix+kQpYduqcBl0Skizc6/vHt//+l7hlu3CuJB/1/o7Qe8HvyDEM9u2z3Ee1LURW0EJ0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=P5wgDjqO; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=nRvg82OP; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773068762;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=phOctTNEVWSPGlfX8YVkAI1SC7tMCmOFyrrNOPwSW4I=;
	b=P5wgDjqOIh9ffBWEAe96LbIA0QjIT6VuGgORZCzauQqVz9tRIlYJm+/gWjl0ZBPf2BNwbW
	F/pu5A3hieQTxOxc7SIsqW8SUCz3d34Bjhl5eaju5k/CVDa4XJaRYR9RP0X9V4t2qhLsF8
	4fou2YvQqcMa8D7fIHu/+oa4ZxGc2tc=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-615-6vTStejFPUeROEwWn8D02g-1; Mon, 09 Mar 2026 11:05:59 -0400
X-MC-Unique: 6vTStejFPUeROEwWn8D02g-1
X-Mimecast-MFC-AGG-ID: 6vTStejFPUeROEwWn8D02g_1773068758
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd84943c76so776028985a.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 08:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1773068758; x=1773673558; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=phOctTNEVWSPGlfX8YVkAI1SC7tMCmOFyrrNOPwSW4I=;
        b=nRvg82OPS6FK4o5I9EqzPauS8q5GAEnUpvq2uxVe0Ddh8Co5BO2RwkbZJyUd1XGQ7Q
         yulDdYXErn7BYnTDX8UmHUdghcKy35i8d+lwOnbPI8Dj1v6OnnTc8GGqOxwRFZsR+FjU
         J2r1LEa3/Pg7aWlt/Hida3f0mr1jmnyCc5TkckO2mE3aayYIrQi7crtmweNiO5mDKbUv
         iUU9ibDv2lu4tgaY8xnQ5AMB8SnJ0d47+tpcOD597L3YVRsFZ04ObMB9WZjge2NIgeGJ
         wDjhZUCUmcmoHtfpGdUc+5H5Oi8TGN7cuDOppwXfgbN6da71h2UvGPpKDczaMjzV2bi4
         PD1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773068758; x=1773673558;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=phOctTNEVWSPGlfX8YVkAI1SC7tMCmOFyrrNOPwSW4I=;
        b=UbbqPQhkWIOr7dDg3CaZACr4VE7SKXg5x30VpQA7Yj62BfuyMxxcnouV9imeaSn1tj
         Bpyuw2EmpYTpcp1BB/3k74be2u9Y+9o+gdqlTHyEycmGs4HiGip0/t573vZhczu8f7bg
         jTpwo8tpByN6KMOq+JFSSjzNv+uqjLr1RMEwPUu/ltHvvBRt9sjIXBcgkdeK8b8fZUfd
         vTRj4nKwaVN+uH3HJ3QK3FuqaAv2EKvoUB+rg0At3Iq8PZnQhMIqiUK0XtGsF4zcPYNX
         4A7l6vPGn2UdbsL2BiOZAKVNq93GMCzYyHqddKvoV/t1edYIFTCu2bESQNm5xGKPtFZI
         uMSQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUXFJ8Qb+erGTckO4FL6UKFGwAd/Da+62CYgRT/stqfTusAoyJAe6JcC8aweGvPoRzpDpPRSfhJKGx@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6lxHSKJ0s0r2EcLchlD5s5oLRDfMxqUDjZdHPWFm943/eYcFq
	f7TtUIbWOVMWEbbT3k49529Vn5qi4QzrpKXFd0bJT1b9G5POP1p1x3yZ8228hysmqedsZm7oGRQ
	QZFR1HCtEGcH3L7/TTtkmi7+UAmH8fy+QRtghKtRalGL90a8o7pL+uCvrOlCSz5U=
X-Gm-Gg: ATEYQzxHg79Uqp/MGYYtqpw4kaa0RpF2k5IZcETdoFAoUY9O9oCsyQNuPsc2l2SrEzZ
	fWpoDNnLIzwIqhStBKxZn+4Fi9yDmE/JQArPjRr6izsOtU99eiO54zppbj0YejKlvgkxPmI+hH5
	pZfm/v+QeargT25kS7uvd5gV26P7tjafIMk/ahjb1ej31rlwVKAITNS8z1Jy6OliEGWxD1bWduU
	UzzRP1fxyG0FkJqOcPjF/i3kE+mvzzdat2n9hnAcPS29YbO8buFw/hDDnPMdvwcMSg9hy7czAtc
	8PVK/HQclvH/uNjnKuHCd668WCxOq8lJQOJiyuphQ/oTtNEm/YEzJI1bCBZfSSfeRahxKkByU+u
	n/q9NVlIYDRo+o6X59mCIsYMdysDoBebWuGPPpoP2+HRVDklmoauQDYnL
X-Received: by 2002:a05:620a:171e:b0:8c5:2de4:d6ee with SMTP id af79cd13be357-8cd6dc5f80bmr1304761385a.33.1773068758449;
        Mon, 09 Mar 2026 08:05:58 -0700 (PDT)
X-Received: by 2002:a05:620a:171e:b0:8c5:2de4:d6ee with SMTP id af79cd13be357-8cd6dc5f80bmr1304750085a.33.1773068757477;
        Mon, 09 Mar 2026 08:05:57 -0700 (PDT)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cd772f9f9bsm536468385a.24.2026.03.09.08.05.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 08:05:56 -0700 (PDT)
Date: Mon, 9 Mar 2026 11:05:51 -0400
From: Brian Masney <bmasney@redhat.com>
To: =?iso-8859-1?Q?Beno=EEt?= Monin <benoit.monin@bootlin.com>
Cc: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
	Gregory CLEMENT <gregory.clement@bootlin.com>,
	=?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-mips@vger.kernel.org
Subject: Re: [PATCH v4 04/10] clk: fixed-factor: Export
 __clk_hw_register_fixed_factor()
Message-ID: <aa7hz_psKK6lZC29@redhat.com>
References: <20260304-clk-eyeq7-v4-0-9d6bd9d24bec@bootlin.com>
 <20260304-clk-eyeq7-v4-4-9d6bd9d24bec@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260304-clk-eyeq7-v4-4-9d6bd9d24bec@bootlin.com>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Rspamd-Queue-Id: D24F923B42D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272992-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bmasney@redhat.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.975];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 04:25:18PM +0100, Benoît Monin wrote:
> Make the base registration function for fixed-factor clocks public and
> re-implement the various registration functions that are a direct call
> to __clk_hw_register_fixed_factor() as macros.
> 
> This is similar to how the registration functions of divider, mux and
> other clocks are implemented.
> 
> Add a new macro clk_hw_register_fixed_factor_pdata() to register
> a fixed-factor clock with its parent clock passed as a struct
> clk_parent_data.
> 
> Signed-off-by: Benoît Monin <benoit.monin@bootlin.com>
> ---
>  drivers/clk/clk-fixed-factor.c | 52 ++-------------------------------------
>  include/linux/clk-provider.h   | 56 +++++++++++++++++++++++++++++++++---------
>  2 files changed, 46 insertions(+), 62 deletions(-)
> 
> diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-factor.c
> index 359e91441c74..6116f878fc8f 100644
> --- a/drivers/clk/clk-fixed-factor.c
> +++ b/drivers/clk/clk-fixed-factor.c
> @@ -90,7 +90,7 @@ static void devm_clk_hw_register_fixed_factor_release(struct device *dev, void *
>  	clk_hw_unregister(&fix->hw);
>  }
>  
> -static struct clk_hw *
> +struct clk_hw *
>  __clk_hw_register_fixed_factor(struct device *dev, struct device_node *np,
>  		const char *name, const char *parent_name,
>  		const struct clk_hw *parent_hw, const struct clk_parent_data *pdata,
> @@ -148,6 +148,7 @@ __clk_hw_register_fixed_factor(struct device *dev, struct device_node *np,
>  
>  	return hw;
>  }
> +EXPORT_SYMBOL_GPL(__clk_hw_register_fixed_factor);
>  
>  /**
>   * devm_clk_hw_register_fixed_factor_index - Register a fixed factor clock with
> @@ -173,46 +174,6 @@ struct clk_hw *devm_clk_hw_register_fixed_factor_index(struct device *dev,
>  }
>  EXPORT_SYMBOL_GPL(devm_clk_hw_register_fixed_factor_index);
>  
> -/**
> - * devm_clk_hw_register_fixed_factor_parent_hw - Register a fixed factor clock with
> - * pointer to parent clock
> - * @dev: device that is registering this clock
> - * @name: name of this clock
> - * @parent_hw: pointer to parent clk
> - * @flags: fixed factor flags
> - * @mult: multiplier
> - * @div: divider
> - *
> - * Return: Pointer to fixed factor clk_hw structure that was registered or
> - * an error pointer.
> - */
> -struct clk_hw *devm_clk_hw_register_fixed_factor_parent_hw(struct device *dev,
> -		const char *name, const struct clk_hw *parent_hw,
> -		unsigned long flags, unsigned int mult, unsigned int div)
> -{
> -	return __clk_hw_register_fixed_factor(dev, NULL, name, NULL, parent_hw,
> -					      NULL, flags, mult, div, 0, 0, true);
> -}
> -EXPORT_SYMBOL_GPL(devm_clk_hw_register_fixed_factor_parent_hw);
> -
> -struct clk_hw *clk_hw_register_fixed_factor_parent_hw(struct device *dev,
> -		const char *name, const struct clk_hw *parent_hw,
> -		unsigned long flags, unsigned int mult, unsigned int div)
> -{
> -	return __clk_hw_register_fixed_factor(dev, NULL, name, NULL, parent_hw,
> -					      NULL, flags, mult, div, 0, 0, false);
> -}
> -EXPORT_SYMBOL_GPL(clk_hw_register_fixed_factor_parent_hw);
> -
> -struct clk_hw *clk_hw_register_fixed_factor(struct device *dev,
> -		const char *name, const char *parent_name, unsigned long flags,
> -		unsigned int mult, unsigned int div)
> -{
> -	return __clk_hw_register_fixed_factor(dev, NULL, name, parent_name, NULL,
> -					      NULL, flags, mult, div, 0, 0, false);
> -}
> -EXPORT_SYMBOL_GPL(clk_hw_register_fixed_factor);
> -
>  struct clk_hw *clk_hw_register_fixed_factor_fwname(struct device *dev,
>  		struct device_node *np, const char *name, const char *fw_name,
>  		unsigned long flags, unsigned int mult, unsigned int div)
> @@ -286,15 +247,6 @@ void clk_hw_unregister_fixed_factor(struct clk_hw *hw)
>  }
>  EXPORT_SYMBOL_GPL(clk_hw_unregister_fixed_factor);
>  
> -struct clk_hw *devm_clk_hw_register_fixed_factor(struct device *dev,
> -		const char *name, const char *parent_name, unsigned long flags,
> -		unsigned int mult, unsigned int div)
> -{
> -	return __clk_hw_register_fixed_factor(dev, NULL, name, parent_name, NULL,
> -			NULL, flags, mult, div, 0, 0, true);
> -}
> -EXPORT_SYMBOL_GPL(devm_clk_hw_register_fixed_factor);
> -
>  struct clk_hw *devm_clk_hw_register_fixed_factor_fwname(struct device *dev,
>  		struct device_node *np, const char *name, const char *fw_name,
>  		unsigned long flags, unsigned int mult, unsigned int div)
> diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
> index 630705a47129..614abb396a6e 100644
> --- a/include/linux/clk-provider.h
> +++ b/include/linux/clk-provider.h
> @@ -1146,13 +1146,16 @@ struct clk_fixed_factor {
>  #define to_clk_fixed_factor(_hw) container_of(_hw, struct clk_fixed_factor, hw)
>  
>  extern const struct clk_ops clk_fixed_factor_ops;
> +struct clk_hw *
> +__clk_hw_register_fixed_factor(struct device *dev, struct device_node *np,
> +		const char *name, const char *parent_name,
> +		const struct clk_hw *parent_hw, const struct clk_parent_data *pdata,
> +		unsigned long flags, unsigned int mult, unsigned int div,
> +		unsigned long acc, unsigned int fixflags, bool devm);
>  struct clk *clk_register_fixed_factor(struct device *dev, const char *name,
>  		const char *parent_name, unsigned long flags,
>  		unsigned int mult, unsigned int div);
>  void clk_unregister_fixed_factor(struct clk *clk);
> -struct clk_hw *clk_hw_register_fixed_factor(struct device *dev,
> -		const char *name, const char *parent_name, unsigned long flags,
> -		unsigned int mult, unsigned int div);
>  struct clk_hw *clk_hw_register_fixed_factor_fwname(struct device *dev,
>  		struct device_node *np, const char *name, const char *fw_name,
>  		unsigned long flags, unsigned int mult, unsigned int div);
> @@ -1164,9 +1167,6 @@ struct clk_hw *clk_hw_register_fixed_factor_index(struct device *dev,
>  		const char *name, unsigned int index, unsigned long flags,
>  		unsigned int mult, unsigned int div);
>  void clk_hw_unregister_fixed_factor(struct clk_hw *hw);
> -struct clk_hw *devm_clk_hw_register_fixed_factor(struct device *dev,
> -		const char *name, const char *parent_name, unsigned long flags,
> -		unsigned int mult, unsigned int div);
>  struct clk_hw *devm_clk_hw_register_fixed_factor_fwname(struct device *dev,
>  		struct device_node *np, const char *name, const char *fw_name,
>  		unsigned long flags, unsigned int mult, unsigned int div);
> @@ -1178,13 +1178,45 @@ struct clk_hw *devm_clk_hw_register_fixed_factor_index(struct device *dev,
>  		const char *name, unsigned int index, unsigned long flags,
>  		unsigned int mult, unsigned int div);
>  
> -struct clk_hw *devm_clk_hw_register_fixed_factor_parent_hw(struct device *dev,
> -		const char *name, const struct clk_hw *parent_hw,
> -		unsigned long flags, unsigned int mult, unsigned int div);
> +# define clk_hw_register_fixed_factor(dev, name, parent_name,                 \
> +				      flags, mult, div)                       \
> +	__clk_hw_register_fixed_factor((dev), NULL, (name), (parent_name),    \
> +				       NULL,  NULL, (flags), (mult), (div),   \
> +				       0, 0, false)

Why the extra space between # and define? It's not used below.

With that fixed:

Reviewed-by: Brian Masney <bmasney@redhat.com>

> +#define clk_hw_register_fixed_factor_pdata(dev, np, name, pdata,              \
> +				      flags, mult, div, acc, fixflags)        \
> +	__clk_hw_register_fixed_factor((dev), (np), (name), NULL, NULL,       \
> +				       (pdata), (flags), (mult), (div),       \
> +				       (acc), (fixflags), false)
> +#define devm_clk_hw_register_fixed_factor(dev, name, parent_name, flags,      \
> +					  mult, div)                          \
> +	__clk_hw_register_fixed_factor((dev), NULL, (name), (parent_name),    \
> +				       NULL, NULL, (flags), (mult), (div), 0, \
> +				       0, true)



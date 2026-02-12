Return-Path: <devicetree+bounces-265033-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHV2Nrq3jWl96AAAu9opvQ
	(envelope-from <devicetree+bounces-265033-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:21:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB9312CF4A
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:21:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F1A0330160E1
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:20:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13FA13446DA;
	Thu, 12 Feb 2026 11:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRXx3T8l"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E489E3EBF1F;
	Thu, 12 Feb 2026 11:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770895241; cv=none; b=Pm8ZXgE9ZMt+U7w2vBQf6vL1rQ1DwNI855yZi/qrBBxTB73XqPsCpb84p/U3V9hE04sj7/jz0SRa+aD+nm3qa1ijEoA0OKf+vN+KhRkpsp+jNGmGIHYde1R6sNHn9wIoBaahzQlz5fUkG8nUa/9AXEC3zX9HxQrwJJBKFsUMr7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770895241; c=relaxed/simple;
	bh=vjzJAHv8zt1XgxnWKeBYUrM7Qh0gd4tkKzX5pfQ/UMo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a7xs5JwratixQhYLfhFLk2B3Ke+6JJBQSNguVOQHa3vRFVlkuWOQNMjRgPfWYmEkWPkplJV3ARVQMBUfFWzF1D5YnEe7NmeZnAGi4meJ6A+q7fRdMhgiYuKPWOrV2Z1OpBR127Q7ZqQStC9B0lqbm6dpVgpxHQfs475Yte9SIo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRXx3T8l; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04C21C16AAE;
	Thu, 12 Feb 2026 11:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770895240;
	bh=vjzJAHv8zt1XgxnWKeBYUrM7Qh0gd4tkKzX5pfQ/UMo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jRXx3T8lNEID8+znPhVC9hW5ftJruShMEFcXvy+m3OXqZ5DVjexPXrq/NWxj9ZYh4
	 wAZNIf+Wfi3/ySoTRf/ANz9EW7TuUGjmRcM7fb//G7RHTQ3HxYDpqU2PPTFDTxRcgB
	 HIBHdTqvxWx/TMKYiP1Rdbirn9HVzTtpiYAdMiwCzNXDViOncz3axin5i5CsZuxCsK
	 GH92Bktd+AYiFIv4LqwzURzZV9QPb3/dhMYK5PEaN1GL+yjQPStHx6vdDZnZ6CXfLK
	 P1aNkFEj8WAWIymrxxE6/ICG/gDvO71hWYylGbl3qvGknWrlDsqKXxHzSaD5jqh387
	 isEYfTAolx4Ew==
Date: Thu, 12 Feb 2026 12:20:38 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, perex@perex.cz, tiwai@suse.com, 
	ckeepax@opensource.cirrus.com, andriy.shevchenko@linux.intel.com, nichen@iscas.ac.cn, 
	kuninori.morimoto.gx@renesas.com
Subject: Re: [PATCH v2 3/3] ASoC: dt-bindings: asahi-kasei,ak5558: Fix the
 supply names
Message-ID: <20260212-humongous-golden-whale-cba6ef@quoll>
References: <20260212021829.3244736-1-shengjiu.wang@nxp.com>
 <20260212021829.3244736-4-shengjiu.wang@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260212021829.3244736-4-shengjiu.wang@nxp.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265033-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,perex.cz,suse.com,opensource.cirrus.com,linux.intel.com,iscas.ac.cn,renesas.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email,qualcomm.com:email]
X-Rspamd-Queue-Id: 3FB9312CF4A
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 10:18:29AM +0800, Shengjiu Wang wrote:
> In the original txt format binding document ak4458.txt, the supply names
> are 'AVDD-supply', 'DVDD-supply', and they are also used in driver. But in
> the commit converting to yaml format, they are changed to 'avdd-supply',
> 'dvdd-supply'. After search all the dts file, these names 'AVDD-supply',
> 'DVDD-supply', 'avdd-supply', 'dvdd-supply' are not used in any dts
> file. So it is safe to fix the yaml binding document.
> 
> Fixes: 829d78e3ea32 ("ASoC: dt-bindings: ak5558: Convert to dtschema")
> Cc: stable@vger.kernel.org
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



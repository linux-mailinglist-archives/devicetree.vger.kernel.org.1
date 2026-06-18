Return-Path: <devicetree+bounces-313393-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Z+nNOqrHM2q3GAYAu9opvQ
	(envelope-from <devicetree+bounces-313393-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 12:25:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C5269F48A
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 12:25:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=G0kW4uKb;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313393-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313393-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B7C2E300D371
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 10:25:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC0FE3C988E;
	Thu, 18 Jun 2026 10:25:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6FA53B14D6;
	Thu, 18 Jun 2026 10:25:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781778340; cv=none; b=YPqgJO4qXxTdT2v4dDTyFzkabVUJ85O/cFnKCiGQvGoRHS1tZ6vETyz/FJiZAirP3wYnfmxQ3srlqP5VfNTkDFwlBFOG5Vubmme6fwpx3o/Q4SDnPYBfzNbrt8WqDWyHxUnRZSUqyR4QfXjn66tKVujYqBDoLfULUK4hSf9HeaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781778340; c=relaxed/simple;
	bh=96GGsVdsB54/b8XaADEkiN8ATRGW018FsKcVJycvGH0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Lki1QJByEK0uy5LXYc+WHz1PUYJLxsAni2DIKSva7tFT3hsw3mx2D+embVeUHKF74IwR9VcXyvTz2s8USkGvSq+oVdSxD+4aS6AoMzIbMHIn74YWtthn0o4h2l3/HxLkMfgWKP1lvdraeorLdB2fNQAWRfCVdkvScm4Sz0+/mys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=G0kW4uKb; arc=none smtp.client-ip=192.198.163.13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781778336; x=1813314336;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=96GGsVdsB54/b8XaADEkiN8ATRGW018FsKcVJycvGH0=;
  b=G0kW4uKb7Jnc4JXIJ6vf4VDbzk5wRxy8lJGvcbIW0CeWfWqDUNsiKV3y
   ThwKTaAER9g7K8lM8kS2kY5S6OeqV6HfycK3SWxC3E8Hy5oYq46ctKYCb
   3h/h4RCUQo8+G1/ceJfxWNxmTqFNL5elRafDpoJdnoYmsNoQuNpcj1j9g
   /O7bg5uVk8vgh4nPj61MGHx6voYmAHzUZgLM8P39hv0G1RutBEsOquIxv
   xEv4mQAfPIEWiFuxMv5xjVAVg97kwZmDysZmv8lXqziLdTqmk6aV6SOTB
   c1v+oalw2r4miHaAn/EbHn2LyVKFjvJSs9pw0L/n4vUEuv1qdN0WAAg8r
   w==;
X-CSE-ConnectionGUID: jbunSO5mTRmVYpWS+nanIw==
X-CSE-MsgGUID: 5x9YhT6DRaupGxqoMJAiww==
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="85166825"
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; 
   d="scan'208";a="85166825"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jun 2026 03:25:35 -0700
X-CSE-ConnectionGUID: 3poGjjN+Tmi13Nhk9Xt5rg==
X-CSE-MsgGUID: vWynShSUQQ24BCEExYDk+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; 
   d="scan'208";a="247186385"
Received: from black.igk.intel.com ([10.91.253.5])
  by orviesa006.jf.intel.com with ESMTP; 18 Jun 2026 03:25:32 -0700
Received: by black.igk.intel.com (Postfix, from userid 1008)
	id 16D4598; Thu, 18 Jun 2026 12:25:31 +0200 (CEST)
Date: Thu, 18 Jun 2026 13:25:29 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Amber Kao <amber.kao@ite.com.tw>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeson Yang <jeson.yang@ite.com.tw>,
	Yaode Fang <Yaode.Fang@ite.com.tw>,
	Bling Chiang <Bling.Chiang@ite.com.tw>,
	Eric Su <Eric.Su@ite.com.tw>, Doreen Lin <doreen.lin@ite.com.tw>,
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] usb: typec: ucsi: Add ITE IT885x Type-C PD
 controller driver
Message-ID: <ajPHmem_l1P2WGs2@kuha>
References: <20260615-ucsi-itepd-feature-v1-0-a826cfd0df6a@ite.com.tw>
 <20260615-ucsi-itepd-feature-v1-2-a826cfd0df6a@ite.com.tw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260615-ucsi-itepd-feature-v1-2-a826cfd0df6a@ite.com.tw>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[heikki.krogerus@linux.intel.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:amber.kao@ite.com.tw,m:gregkh@linuxfoundation.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jeson.yang@ite.com.tw,m:Yaode.Fang@ite.com.tw,m:Bling.Chiang@ite.com.tw,m:Eric.Su@ite.com.tw,m:doreen.lin@ite.com.tw,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313393-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heikki.krogerus@linux.intel.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,intel.com:dkim,ite.com.tw:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 60C5269F48A

Hi,

On Mon, Jun 15, 2026 at 09:47:40PM +0800, Amber Kao wrote:
> Add core, UCSI, and Alternate Mode support for the ITE IT885x
> Type-C Power Delivery controller over I2C. The driver uses the
> auxiliary bus to spawn UCSI and Alternate Mode child devices from
> the main I2C core driver.
> 
> Cc: Yaode Fang <Yaode.Fang@ite.com.tw>
> Cc: Jeson Yang <jeson.yang@ite.com.tw>
> Cc: Bling Chiang <Bling.Chiang@ite.com.tw>
> Cc: Eric Su <Eric.Su@ite.com.tw>
> Cc: Doreen Lin <doreen.lin@ite.com.tw>
> 
> Signed-off-by: Amber Kao <amber.kao@ite.com.tw>
> ---
>  MAINTAINERS                            |   4 +
>  drivers/usb/typec/ucsi/Kconfig         |  15 +
>  drivers/usb/typec/ucsi/Makefile        |   1 +
>  drivers/usb/typec/ucsi/itepd.c         | 481 ++++++++++++++++++++++++++++
>  drivers/usb/typec/ucsi/itepd.h         |  64 ++++
>  drivers/usb/typec/ucsi/itepd_altmode.c | 438 ++++++++++++++++++++++++++
>  drivers/usb/typec/ucsi/ucsi_itepd.c    | 558 +++++++++++++++++++++++++++++++++
>  7 files changed, 1561 insertions(+)

I could not figure out what is the purpose of the separated altmode
handling. Why would you need separate handling for the retimers and
muxes? If the typec core is not doing something properly, then we need
to fix that. I also did not quite understand why are you creating
child device for the ucsi and altmode.

You need to split this into smaller patches and provide a bit of
explanation for each feature. Start with the bare minimum. So UCSI
without support for altmodes, just register the ports and partners.
Then add things one by one, each feature in its own patch.

<snip>

> +static void ucsi_itepd_command_hook(struct ucsi_itepd *ucsi_itepd, u64 *cmd)
> +{
> +	/* Translate UCSI 1.2 commands/fields to ITE PD controller (v2.1) */
> +	switch (UCSI_COMMAND(*cmd)) {
> +	case UCSI_SET_NOTIFICATION_ENABLE:
> +		if (*cmd & UCSI_ENABLE_NTFY_CMD_COMPLETE)
> +			/* Enable Attention Notification for alt. mode */
> +			*cmd |= FIELD_PREP(GENMASK_ULL(32, 16), BIT(3));
> +		break;
> +	case UCSI_GET_PDOS:
> +		*cmd &= ~GENMASK_ULL(38, 37);
> +		break;
> +	case UCSI_GET_ERROR_STATUS:
> +		*cmd &= ~GENMASK_ULL(22, 16);
> +		*cmd |= UCSI_CONNECTOR_NUMBER(ucsi_itepd->cmd_port + 1);
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	/* Track the connector number associated with this command */
> +	switch (UCSI_COMMAND(*cmd)) {
> +	case UCSI_PPM_RESET:
> +	case UCSI_CANCEL:
> +	case UCSI_SET_NOTIFICATION_ENABLE:
> +	case UCSI_GET_CAPABILITY:
> +		ucsi_itepd->cmd_port = 0;
> +		break;
> +	case UCSI_CONNECTOR_RESET:
> +	case UCSI_GET_CONNECTOR_CAPABILITY:
> +	case UCSI_SET_CCOM:		/* 0x08 - SET_UOM in older specs */
> +	case UCSI_SET_UOR:
> +	case UCSI_SET_PDR:
> +	case UCSI_GET_CAM_SUPPORTED:
> +	case UCSI_GET_CURRENT_CAM:
> +	case UCSI_SET_NEW_CAM:
> +	case UCSI_GET_PDOS:
> +	case UCSI_GET_CABLE_PROPERTY:
> +	case UCSI_GET_CONNECTOR_STATUS:
> +	case UCSI_SET_POWER_LEVEL:	/* 0x14 */
> +	case UCSI_GET_PD_MESSAGE:	/* 0x15 */
> +	case UCSI_GET_ATTENTION_VDO:	/* 0x16 */
> +	case UCSI_GET_CAM_CS:		/* 0x18 */
> +	case 0x19:
> +	case 0x1A:
> +	case 0x1B:

Add definitions for these.

> +	case UCSI_SET_SINK_PATH:	/* 0x1C */
> +	case 0x1D:
> +	case UCSI_READ_POWER_LEVEL:	/* 0x1E */
> +	case 0x1F:
> +		ucsi_itepd->cmd_port =
> +			FIELD_GET(GENMASK(22, 16), *cmd) - 1;

Use the existing definitions with these.

		ucsi_itepd->cmd_port = UCSI_DEFAULT_GET_CONNECTOR_NUMBER(cmd) - 1;

> +		break;
> +	case UCSI_GET_ALTERNATE_MODES:
> +		ucsi_itepd->cmd_port =
> +			FIELD_GET(GENMASK(30, 24), *cmd) - 1;
> +		break;
> +	}
> +
> +	ucsi_itepd->cmd = *cmd;
> +}

I won't do complete review yet, but I'm just pointing out that since
you are going over all the commands here, it should not be a problem
to first disable some of them, and then add them in separate patches.

Thanks,

-- 
heikki


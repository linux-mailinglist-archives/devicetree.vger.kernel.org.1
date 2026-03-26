Return-Path: <devicetree+bounces-281257-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EH8UFtlAxWkU8wQAu9opvQ
	(envelope-from <devicetree+bounces-281257-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 15:21:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 36530336B3D
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 15:21:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 023753042A17
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 14:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3A2A37F8A8;
	Thu, 26 Mar 2026 14:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdbxgJVX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E0E37DEBE;
	Thu, 26 Mar 2026 14:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774534554; cv=none; b=gtgQUY5OO8zwKwHo2A+5CCe0rHjd7GrKjRtWKlC7rkmlsneVRAyfP/meptbbjGxpYdtQE9ELKRJyxapu89GEMvOkJdkghZ/OOmWqW3IQIWUHd4crVYZa/3NyZ31RmLY8Auj1h7LsiKEZO1g47qKkmM/8yaqwJEXkIgYE1p/Hjvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774534554; c=relaxed/simple;
	bh=2RZWmgIMN32Ld/zS0XFp/dL0v7eVrDu3aVOrKj7HWvA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BXZn7iePPUPRLLTWgJ5qSTfPH1CrWbPlCd80fRp+U9O1dTKCf4syO4YT9tOIJgMIMiH2fDRsC2uR/RzFLbPf8pHIMaI6xfVYbvsFk5zFbxAb/D1SdPxI83oeDUHunk9hA2bp/Uws1FCRD4oG+jr2o2arSLO89brEYSXeNcjdUvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdbxgJVX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 646BAC116C6;
	Thu, 26 Mar 2026 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774534553;
	bh=2RZWmgIMN32Ld/zS0XFp/dL0v7eVrDu3aVOrKj7HWvA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SdbxgJVXD0oitPY5JmOHlVBOuX4INv9NcTBdVcAXxY2+XQpTxiBxsD/0qADCqVEzW
	 /6eKDdnDR0gQFoqnVv0YMZRM0MFFqNaaDerPdyRB0YXuLuwgnonEcggpOmj1V5G6GT
	 dvbkmMJRvhWFXyQYBpV1TkQZBKFMxEWDG2U3/2wIvm1I3HE0LVmXwiHSqkdehocP8z
	 8wutGGZ+PVHVLthmzhVl7S6GazjSgGm6H9YrYGxjGvAUX/NuWn3ivS79MclbWnzYRe
	 vPC2gstGK6gLLjPm2WoSmvtBG8izsEzEDrCXBuhHGTQlNKyFsz0P9siznFuslp5DlR
	 hkUSg/fL7TxLw==
Date: Thu, 26 Mar 2026 09:15:51 -0500
From: Rob Herring <robh@kernel.org>
To: phucduc.bui@gmail.com
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, conor@kernel.org,
	devicetree@vger.kernel.org, dmitry.torokhov@gmail.com,
	krzk@kernel.org, linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org, marex@denx.de, mingo@kernel.org,
	tglx@kernel.org
Subject: Re: [PATCH v3] dt-bindings: input: touchscreen: ti,tsc2005: Add
 wakeup-source
Message-ID: <20260326141551.GA2304345-robh@kernel.org>
References: <20260318083124.21793-1-phucduc.bui@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260318083124.21793-1-phucduc.bui@gmail.com>
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-281257-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,denx.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[12];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 36530336B3D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 03:31:24PM +0700, phucduc.bui@gmail.com wrote:
> From: bui duc phuc <phucduc.bui@gmail.com>
> 
> Document the "wakeup-source" property for the ti,tsc2005 touchscreen
> controllers to allow the device to wake the system from suspend.
> 
> Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
> ---
> 
> changes:
> v3: Remove blank lines
> v2: Revise the commit content and remove patch1 related to I2C and SPI 
> wakeup handling
> 
>  .../devicetree/bindings/input/touchscreen/ti,tsc2005.yaml    | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2005.yaml b/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2005.yaml
> index 7187c390b2f5..a9842509c1fe 100644
> --- a/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2005.yaml
> +++ b/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2005.yaml
> @@ -55,6 +55,9 @@ properties:
>    touchscreen-size-x: true
>    touchscreen-size-y: true
>  
> +  wakeup-source:
> +    type: boolean

wakeup-source already has a defined type.

wakeup-source: true

> +
>  allOf:
>    - $ref: touchscreen.yaml#
>    - if:
> @@ -97,6 +100,7 @@ examples:
>  
>              ti,x-plate-ohms = <280>;
>              ti,esd-recovery-timeout-ms = <8000>;
> +            wakeup-source;
>          };
>      };
>    - |
> @@ -124,5 +128,6 @@ examples:
>  
>              ti,x-plate-ohms = <280>;
>              ti,esd-recovery-timeout-ms = <8000>;
> +            wakeup-source;
>          };
>      };
> -- 
> 2.43.0
> 


Return-Path: <devicetree+bounces-272784-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id HI3rN9GRrml0GQIAu9opvQ
	(envelope-from <devicetree+bounces-272784-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 10:24:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9742361DE
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 10:24:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5ECB93068179
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 09:21:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3A1C378838;
	Mon,  9 Mar 2026 09:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t60ThOFh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EF64378818;
	Mon,  9 Mar 2026 09:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773048061; cv=none; b=dMsKV6eh45YIx1Mt/aSOHi5EgtrrCTQ3B8tAm5YU8pQIObt2Gcrn8SdLgL0mA6ALeD7til0lD/BNpBXGjuI/zhrQS+6X2Uf/FkNA6Q5wJ3FLHjU7ViyRW5QBycW0RC5+wOXKkrF3eikuy//AKMcgH+5G32J8x/V2HafF6QOA/SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773048061; c=relaxed/simple;
	bh=ENpCl5oytEtbIZ6+0Nre/ZmYXuoRlmObpwNAk77Gqqk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eTuxEjxbbzyd1luoZ8J721pjtVa4NSVIqkG7uItK4cwILI+x3qgedLDlqoIXrlH3n6E+Cgy3ArehzJEfCCNQGhlqMLhDp/xlnPqnFPr+8dznWVxxZvBZjUGX3HsJVn4RwAB87WniQA/bApIshhjz3Krpd+K6vrZIrPgv8XwWZGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t60ThOFh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45198C4CEF7;
	Mon,  9 Mar 2026 09:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773048061;
	bh=ENpCl5oytEtbIZ6+0Nre/ZmYXuoRlmObpwNAk77Gqqk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t60ThOFhL1FOwZ2VkXMS1csZ8fp00yHZTHO7ImxMYTr0boz4FlJIu5wEK5T1BVs2T
	 wiNu/js5FufG7K7KF7UpXi5QWsMmhOjPJ42MYI/wmDasR3OQzNiZ2+55eOrjrvua4l
	 dSpl0EYZ3xC68TdBLAN5vnFKiE8CGvzCphN3aEzhArwAsRAtbO5/EB8am3Lfz3taxZ
	 wDuqmbPHdBaYUBR4LQ8hhqUdmUtiZWnvwARBlHXXXnYj9+h15CDn8fyDkxgW6bAQqd
	 JuHJALb7oiwRZxKx5L8i0KbHaw+LtPn8XGy8yiHIKKp4mP+HleLl8gElDV0FAeCcXJ
	 uUG9U+J+HLCAA==
Date: Mon, 9 Mar 2026 09:20:57 +0000
From: Sudeep Holla <sudeep.holla@kernel.org>
To: Debbie Horsfall <debbie.horsfall@arm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Linus Walleij <linusw@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/2] arm64: dts: zena: Add support for Zena CSS
Message-ID: <20260309-manipulative-inescapable-labradoodle-7a76e4@sudeepholla>
References: <20260212-zena-css-v2-0-d33ea23cb9c2@arm.com>
 <20260212-zena-css-v2-2-d33ea23cb9c2@arm.com>
 <c7124cf5-f20a-4d6f-8f2e-388127c4ad2a@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c7124cf5-f20a-4d6f-8f2e-388127c4ad2a@kernel.org>
X-Rspamd-Queue-Id: 3B9742361DE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272784-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.935];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sudeep.holla@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,4.196.180.0:email,arm.com:email,0.1.150.64:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.100:email]
X-Rspamd-Action: no action

On Sun, Mar 08, 2026 at 04:41:55PM +0100, Krzysztof Kozlowski wrote:
> On 12/02/2026 12:16, Debbie Horsfall wrote:
> > Introduce the Zena CSS Fixed Virtual Platform (FVP) dts. This is
> > currently the only Zena CSS variant, however the common definitions are
> > included in a common dtsi for extensibility.
> > 
> > Signed-off-by: Debbie Horsfall <debbie.horsfall@arm.com>
> 
> ...
> 
> > +
> > +	timer {
> > +		compatible = "arm,armv8-timer";
> > +		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
> > +			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
> > +			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
> > +			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>,
> > +			     <GIC_PPI 12 IRQ_TYPE_LEVEL_LOW>;
> > +	};
> > +
> > +	sram: sram@104000 {
> 
> This belongs in the soc node.
> 
> > +		compatible = "mmio-sram";
> > +		reg = <0x0 0x00104000 0x0 0x00001000>;
> > +		#address-cells = <1>;
> > +		#size-cells = <1>;
> > +		ranges = <0 0x0 0x00104000 0x00001000>;
> > +
> > +		scmi_shmem_tx: scpshmem-sram-section@0 {
> > +			compatible = "arm,scmi-shmem";
> > +			reg = <0x0 0x100>;
> > +		};
> > +
> > +		scmi_shmem_rx: scpshmem-sram-section@100 {
> > +			compatible = "arm,scmi-shmem";
> > +			reg = <0x100 0x100>;
> > +		};
> > +	};
> > +
> > +	memory@80000000 {
> 
> And placing this in DTSI means that zena-css comes with this memory
> mounted and it is not customizable in final FVP board.
> 

Both valid points, please post a patch addressing this based on my
for-next/juno/updates as I just applied these last night.

-- 
Regards,
Sudeep


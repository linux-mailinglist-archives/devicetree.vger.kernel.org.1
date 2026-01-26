Return-Path: <devicetree+bounces-259524-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aK3XMP18d2m9hgEAu9opvQ
	(envelope-from <devicetree+bounces-259524-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:41:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DEC89A3F
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:41:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BBCEA3038F6F
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:36:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CE4C23D288;
	Mon, 26 Jan 2026 14:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d19x1kCD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7391CEAA3;
	Mon, 26 Jan 2026 14:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769438175; cv=none; b=kNHKYfXAH7JUgsynoQEr08UyatVEgFHi4XxCrMwFFfKy9e8aBVFLQi2hwFKF+q0Z1438R0n9yi75+3hGfGfoLI9N5ugw/LiJRW7h4I4588oC2ec7fFvzhRQc0E1KmtSrTwPaAIiaoMYWONUz/kkdZJzeC6UPWFvESehipej0fJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769438175; c=relaxed/simple;
	bh=dMO1MIhjP4aVHBALuscN5a9iA1kviHKn9sIWzBNa0Wc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gE5mCKkSN5uHqdrzJ7TvSG4thB5+tMtm5DVAAXCPwCZyYNkiwUOoSbUz9aGj4HbtvLNmlLNVw05XkhErBlrtECVavETm3fSqbOv/i3r9JmOll51BSmzlHY3CRJKckpadyVgn+PN/zdqLxwGQr4WtVLyYv46Od0uc9YvydJJvcdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d19x1kCD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D73C0C116C6;
	Mon, 26 Jan 2026 14:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769438174;
	bh=dMO1MIhjP4aVHBALuscN5a9iA1kviHKn9sIWzBNa0Wc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d19x1kCDYOnGx2Xo+GWKZ43qg670AhXoY+z9KwUBlxi+c469kki/9gZpuNlXlZiNa
	 rZv3iCrRfTEHJA5rC1gwkwhr5H0JOyrF+WuH4kMmHUTcr68c+SvH2IbV/Dy39kGQwq
	 svRwyM23nXqJ/x+vnjF0iIUwhrH5WCHqHP3G/PRUJoRhd/73wKtuLhnxaFr9h6XFsb
	 8d0PCPT3Fkp/jB2F5IQQtssYcq9rnL7dZB0zjOZvBWb1I7rzD2iYimD2+Sp0lm0acc
	 kyW1vLZ3VVuiM+CCdHmjO1YG+mExxT6Yebnlb6Z/t8Wzh+4ynDm6n1DlvTtmLEoIH+
	 1yFi7JsqmfQcQ==
Date: Mon, 26 Jan 2026 14:36:08 +0000
From: Will Deacon <will@kernel.org>
To: Coiby Xu <coxu@redhat.com>
Cc: kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	Arnaud Lefebvre <arnaud.lefebvre@clever-cloud.com>,
	Baoquan he <bhe@redhat.com>, Dave Young <dyoung@redhat.com>,
	Kairui Song <ryncsn@gmail.com>, Pingfan Liu <kernelfans@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Saravana Kannan <saravanak@kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v3] arm64/kdump: pass dm-crypt keys to kdump kernel
Message-ID: <aXd72PcvvFsIFXO2@willie-the-truck>
References: <20260123081326.1362666-1-coxu@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260123081326.1362666-1-coxu@redhat.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259524-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[lists.infradead.org,clever-cloud.com,redhat.com,gmail.com,linux-foundation.org,kernel.org,arm.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[will@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,clever-cloud.com:email]
X-Rspamd-Queue-Id: 19DEC89A3F
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 04:13:25PM +0800, Coiby Xu wrote:
> CONFIG_CRASH_DM_CRYPT has been introduced to support LUKS-encrypted
> device dump target by addressing two challenges [1],
>  - Kdump kernel may not be able to decrypt the LUKS partition. For some
>    machines, a system administrator may not have a chance to enter the
>    password to decrypt the device in kdump initramfs after the 1st kernel
>    crashes
> 
>  - LUKS2 by default use the memory-hard Argon2 key derivation function
>    which is quite memory-consuming compared to the limited memory reserved
>    for kdump.
> 
> To also enable this feature for ARM64, we only need to add device tree
> property dmcryptkeys [2] as similar to elfcorehdr to pass the memory
> address of the stored info of dm-crypt keys to the kdump kernel. Since
> this property is only needed by the kdump kenrel, it won't be exposed to
> user space.
> 
> [1] https://lore.kernel.org/all/20250502011246.99238-1-coxu@redhat.com/
> [2] https://github.com/devicetree-org/dt-schema/pull/181
> 
> Cc: Arnaud Lefebvre <arnaud.lefebvre@clever-cloud.com>
> Cc: Baoquan he <bhe@redhat.com>
> Cc: Dave Young <dyoung@redhat.com>
> Cc: Kairui Song <ryncsn@gmail.com>
> Cc: Pingfan Liu <kernelfans@gmail.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Coiby Xu <coxu@redhat.com>
> ---
> v3
> - Delete the property after reading it [Rob Herring]
> 
> v2
> - Krzysztof
>   - Use imperative mood for commit message
>   - Add dt-schema ABI Documentation 
>     https://github.com/devicetree-org/dt-schema/pull/181
> - Don't print dm-crypt keys address via pr_debug
> 
> 
>  arch/arm64/kernel/machine_kexec_file.c |  9 +++++++++
>  drivers/of/fdt.c                       | 21 +++++++++++++++++++++
>  drivers/of/kexec.c                     | 19 +++++++++++++++++++
>  3 files changed, 49 insertions(+)
> 
> diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
> index 410060ebd86d..5f3bad8ca96d 100644
> --- a/arch/arm64/kernel/machine_kexec_file.c
> +++ b/arch/arm64/kernel/machine_kexec_file.c
> @@ -134,6 +134,15 @@ int load_other_segments(struct kimage *image,
>  
>  		kexec_dprintk("Loaded elf core header at 0x%lx bufsz=0x%lx memsz=0x%lx\n",
>  			      image->elf_load_addr, kbuf.bufsz, kbuf.memsz);
> +
> +		ret = crash_load_dm_crypt_keys(image);
> +
> +		if (ret == -ENOENT) {
> +			kexec_dprintk("No dm crypt key to load\n");
> +		} else if (ret) {
> +			pr_err("Failed to load dm crypt keys\n");
> +			goto out_err;
> +		}

This looks like an unusual mixture of kexec_dprintk() and pr_err().

Stepping back a second, why do we need to print anything from the arch
code at all? It looks like crash_load_dm_crypt_keys() already prints for
the -ENOENT case so I'd be inclined just to do:

	ret = crash_load_dm_crypt_keys(image);
	if (ret)
		goto out_err;

Will


Return-Path: <devicetree+bounces-282804-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHNqAyJ2y2k3HwYAu9opvQ
	(envelope-from <devicetree+bounces-282804-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 09:22:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 930F93650B4
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 09:22:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6BDA730D24B2
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 07:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46A403BE15A;
	Tue, 31 Mar 2026 07:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="gruSs4ci"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F4D93BD224
	for <devicetree@vger.kernel.org>; Tue, 31 Mar 2026 07:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774941145; cv=none; b=bZAte3jqeS8ZhzLc4BIUxlxTnJ/fBfyh3RVpS5/iBGV4C9nQ9NIL1Kqxe0CZgSkz2XahBrh7uOkLqMH8FV1SxUWBslpfdNEE5E9D8H4FvDG0gR1vk7KEnTnEJQp/zewiPkPi26JpnezNi8skFvDFn3+0Itg6Kz++2qY6BuHkky0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774941145; c=relaxed/simple;
	bh=SrT7bzZ2yv8icfzyg9pFI0hynvik1DvbY3Re4XIGlBk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gym+TodTdPClA8ieKfrLfV9AMcS+duRsIbSsyO8hF93ZBRhviPFf+lQWkzOTAw/L6gSV9K2DhbW4QglvjY+/WRDdz/1/5c6dvjXMRyW//6X05wztHxxwvCGzQyHwKsnPec5jfF4rl42xDzq8tJehwWUNPnjjp4tnycawgWsKJQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=gruSs4ci; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1774941142;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=3iP2TPj18aJwm64GDb8cezFyvgyCXdusMq4tD0QwQd0=;
	b=gruSs4ciEVjMbg7JOMpa6qfETaICx+nR99konM0oBNfkL+gZ14cRJjpDlJn39PIiYM3Smw
	tFredDNWpchiJUK+vjNH60GhqsjUUyWHgiVrQmPbp6Bw51nY5GzbI9X44BYCfN9jQvHslr
	kHgH+jQPoePLYCSFG5RT6FvyuShBf2I=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-228-0gCAyxwHPt-8xrYN4V4r-w-1; Tue,
 31 Mar 2026 03:12:16 -0400
X-MC-Unique: 0gCAyxwHPt-8xrYN4V4r-w-1
X-Mimecast-MFC-AGG-ID: 0gCAyxwHPt-8xrYN4V4r-w_1774941134
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 412801800464;
	Tue, 31 Mar 2026 07:12:13 +0000 (UTC)
Received: from localhost (unknown [10.72.112.177])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D95081800107;
	Tue, 31 Mar 2026 07:12:09 +0000 (UTC)
Date: Tue, 31 Mar 2026 15:12:04 +0800
From: Baoquan He <bhe@redhat.com>
To: Coiby Xu <coxu@redhat.com>
Cc: kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
	Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@kernel.org>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Vivek Goyal <vgoyal@redhat.com>, Dave Young <dyoung@redhat.com>,
	"open list:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v5 1/3] crash_dump/dm-crypt: Don't print in arch-specific
 code
Message-ID: <actzxO1p6OlmK2gp@fedora>
References: <20260225060347.718905-1-coxu@redhat.com>
 <20260225060347.718905-2-coxu@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260225060347.718905-2-coxu@redhat.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-282804-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bhe@redhat.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 930F93650B4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 02/25/26 at 02:03pm, Coiby Xu wrote:
> When the vmcore dumping target is not a LUKS-encrypted target, it's
> expected that there is no dm-crypt key thus no need to return -ENOENT.
> Also print more logs in crash_load_dm_crypt_keys. The benefit is
> arch-specific code can be more succinct.
> 
> Suggested-by: Will Deacon <will@kernel.org>
> Signed-off-by: Coiby Xu <coxu@redhat.com>
> ---
>  arch/x86/kernel/kexec-bzimage64.c | 6 +-----
>  kernel/crash_dump_dm_crypt.c      | 7 +++++--
>  2 files changed, 6 insertions(+), 7 deletions(-)

Acked-by: Baoquan He <bhe@redhat.com>

> 
> diff --git a/arch/x86/kernel/kexec-bzimage64.c b/arch/x86/kernel/kexec-bzimage64.c
> index 5630c7dca1f3..7e980ea49d8d 100644
> --- a/arch/x86/kernel/kexec-bzimage64.c
> +++ b/arch/x86/kernel/kexec-bzimage64.c
> @@ -525,12 +525,8 @@ static void *bzImage64_load(struct kimage *image, char *kernel,
>  		if (ret)
>  			return ERR_PTR(ret);
>  		ret = crash_load_dm_crypt_keys(image);
> -		if (ret == -ENOENT) {
> -			kexec_dprintk("No dm crypt key to load\n");
> -		} else if (ret) {
> -			pr_err("Failed to load dm crypt keys\n");
> +		if (ret)
>  			return ERR_PTR(ret);
> -		}
>  		if (image->dm_crypt_keys_addr &&
>  		    cmdline_len + MAX_ELFCOREHDR_STR_LEN + MAX_DMCRYPTKEYS_STR_LEN >
>  			    header->cmdline_size) {
> diff --git a/kernel/crash_dump_dm_crypt.c b/kernel/crash_dump_dm_crypt.c
> index 1f4067fbdb94..2f7b42b09673 100644
> --- a/kernel/crash_dump_dm_crypt.c
> +++ b/kernel/crash_dump_dm_crypt.c
> @@ -414,14 +414,16 @@ int crash_load_dm_crypt_keys(struct kimage *image)
>  
>  	if (key_count <= 0) {
>  		kexec_dprintk("No dm-crypt keys\n");
> -		return -ENOENT;
> +		return 0;
>  	}
>  
>  	if (!is_dm_key_reused) {
>  		image->dm_crypt_keys_addr = 0;
>  		r = build_keys_header();
> -		if (r)
> +		if (r) {
> +			pr_err("Failed to build dm-crypt keys header, ret=%d\n", r);
>  			return r;
> +		}
>  	}
>  
>  	kbuf.buffer = keys_header;
> @@ -432,6 +434,7 @@ int crash_load_dm_crypt_keys(struct kimage *image)
>  	kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
>  	r = kexec_add_buffer(&kbuf);
>  	if (r) {
> +		pr_err("Failed to call kexec_add_buffer, ret=%d\n", r);
>  		kvfree((void *)kbuf.buffer);
>  		return r;
>  	}
> -- 
> 2.53.0
> 



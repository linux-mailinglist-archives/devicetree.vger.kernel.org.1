Return-Path: <devicetree+bounces-264892-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aCBLLBw6jWkd0QAAu9opvQ
	(envelope-from <devicetree+bounces-264892-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 03:25:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D14129285
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 03:25:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B8DD230234CF
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 02:25:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D9B0216E24;
	Thu, 12 Feb 2026 02:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="K5DoyXpP";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="dXN4ufyX"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4320A1F4613
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 02:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770863128; cv=none; b=LLvSpZwtQNcdNNyUwKdUkqjycAyeFqYWiR4/HLnVs12wXc1qJL5TVrNHQgHgiVfLM5jmImFEPiXDKV30R6vG+152rwO1wlaXq09EURzMTHaacHD3hNWBZM2Bnh0xXsLxoXmAiv30v/Fi4GA8FS2GehgtEeY0y4ImdeleqRq88Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770863128; c=relaxed/simple;
	bh=4PnXNNy7PSA47ka3TglfbwhzMH2hrLV3dWKJyDAqTuI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UVPNvQqIwH2IPODXOvDnxLxOBNP/DVpt2UjthFYFC9DhPojMb6bdL3hkApbI1wCO/MHy4HWQBgRsGPYiMD50+DVgeG9Mc3iWg7dVoXz49jTPuo/zJHWOjFLHj9QYxwwynyMpgd40OzRY9BtpC9ZBbF8SamtAajoLBeGNv1lie50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=K5DoyXpP; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=dXN4ufyX; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1770863125;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=BW+Mgpaq6SwF9hkVhCNywA9aCMpLFaTHrW15uFZTbFY=;
	b=K5DoyXpPysvfVRTPxJtxGLMC8QdvDKiI1awH0JfD+qpxgQI4WUKX04/Y/GpIAP8y+gfu9Z
	6eax6tD1013cF+NsClhFI9taXsZJzAGD0dBLW3Ad3Z3Cxn2sG4oB4NMTVDia5xpLG0dGei
	a/cUcNCrQeNYIcYCLDHkaQd6AvSXjmM=
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com
 [209.85.210.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-649-Kj3YU207N0KZUc1Q9Kh0ng-1; Wed, 11 Feb 2026 21:25:23 -0500
X-MC-Unique: Kj3YU207N0KZUc1Q9Kh0ng-1
X-Mimecast-MFC-AGG-ID: Kj3YU207N0KZUc1Q9Kh0ng_1770863122
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-81d9b88caf2so2596254b3a.1
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 18:25:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1770863122; x=1771467922; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BW+Mgpaq6SwF9hkVhCNywA9aCMpLFaTHrW15uFZTbFY=;
        b=dXN4ufyXaw9eR2VM3K5shPpEwVqDbT2+9sp/Fc2akdsN8DRwOyr2XIoGI8xcxolWfP
         5w5d79K27sr6gKsnOuXXBdbUpkwzs2KoLoVYW66eGuk3BJC8pgkYnI6oJZ4BYQsclW0a
         klIQJrFU5Nbc5VnLlpPH/8nOmE7jrbG2hVIbI3N3f9Vq08axViBJqR22+CQdYFd7NqpV
         zBEpDkap33Y0syx+67oWtiLTHFzrzcAKFGm6pPbMUMsTYv2kiKAdtBuzdnNMoA/cT8Xf
         tjONwCsx9DY6XGOMkZWmpSQdLvaWlMM8FgK8F/lS2eEDTMxdM3fv1+b7ZqAqbmuHzhJr
         aUgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770863122; x=1771467922;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BW+Mgpaq6SwF9hkVhCNywA9aCMpLFaTHrW15uFZTbFY=;
        b=t7MiWgF4BW2nRtaMMyKCO5D6vpDVsQ7T74UKT/V0fsE3f8g7EuCnpANMDKRCX0z+6z
         odsbHx11OQDaOWyiUWQ1Zq7pUk718UT21DizG2SQRYcMHo2BZ0FCIrXSnnq2MQ/LRbgr
         liJQ4mJjADgiQJfqcMGNauLRnIBXNlb3fRy9qHKvSFqycxKU6rR1sPzI5/RNqktDtfbl
         EkgCKdvo7Ij7gOeMREh5tH0M5DZcrdNgNbPkqYJbImM426GqOs1tfu5apR4mAB/pJEM3
         ENRaMQ0CKIf8pv1jF1cgek4IPtm66HuhG751BmJx3wEEBfcDzyueAlHa4dxR1ed1Lacs
         SQbQ==
X-Forwarded-Encrypted: i=1; AJvYcCXV26LAtRkGTvc0Cfltfy7inib655ypLPrkWIVUX9dVNelzz8MH58S25hEtRyy97uoN7Y1e9MlyXV0I@vger.kernel.org
X-Gm-Message-State: AOJu0YyP5j/pJOBBHixVX0qp35fZk14YKHO5u78BDYFS6A0SPO+kxXEv
	CXw6OY8MpySq1G09DYBu4GcDKz5O8Mipl87sJBNaCbn8ej9rL7tFb4FW7wu7rG0jd19g3pUb45Z
	N5bBiA4W1+vBpK5C99R19bJAZqkt+Y9ENMsdH75IenBweJ4LTkeTBCCt04eE9TWs=
X-Gm-Gg: AZuq6aKHdztRCCevmmWcfZ4a0Iziq9HvIkoXwTVwSVhw9kGftjiKfFMRBj6RGGzlSMh
	sFF1XW7kw9TP5/hDTsJpj1zCWWyHi8WOy7f+Gs/iKwh9GrYAlmcSSdPclZu+P1EHhC/9tithpCY
	9Qm/DEBzp5uttWFS38u0Lvo7EscebflCQ6IC+7dsv/vuCyuhxBMHEfQAwXsTxeLPgVgeszZOctd
	Ls4p7Njc9iUGdaPCgXY6eJte9QF8oIs0VxONAnqBMaKXweshZmIg4vqkufu47cvvUbOB3iP/7XJ
	PKzXzvkPwsHblsHamO9WasHDyKgd0VDMaHRTEmHTzxaPWk6MoilGLi1TF2LCwX1d0i67V2eSXWp
	beYCbjRy1prN5
X-Received: by 2002:a05:6a00:1d84:b0:824:9451:c1ee with SMTP id d2e1a72fcca58-824b3068659mr493706b3a.55.1770863121964;
        Wed, 11 Feb 2026 18:25:21 -0800 (PST)
X-Received: by 2002:a05:6a00:1d84:b0:824:9451:c1ee with SMTP id d2e1a72fcca58-824b3068659mr493667b3a.55.1770863121385;
        Wed, 11 Feb 2026 18:25:21 -0800 (PST)
Received: from localhost ([209.132.188.88])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8249e8198a6sm3984873b3a.50.2026.02.11.18.25.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 18:25:20 -0800 (PST)
Date: Thu, 12 Feb 2026 10:22:10 +0800
From: Coiby Xu <coxu@redhat.com>
To: kernel test robot <lkp@intel.com>
Cc: kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org, oe-kbuild-all@lists.linux.dev, 
	Arnaud Lefebvre <arnaud.lefebvre@clever-cloud.com>, Baoquan he <bhe@redhat.com>, Dave Young <dyoung@redhat.com>, 
	Kairui Song <ryncsn@gmail.com>, Pingfan Liu <kernelfans@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Linux Memory Management List <linux-mm@kvack.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
	Thomas Staudt <tstaudt@de.ibm.com>, Sourabh Jain <sourabhjain@linux.ibm.com>, 
	Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Madhavan Srinivasan <maddy@linux.ibm.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	Nicholas Piggin <npiggin@gmail.com>, "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>, 
	Saravana Kannan <saravanak@kernel.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] arm64,ppc64le/kdump: pass dm-crypt keys to kdump
 kernel
Message-ID: <aY05DpHN6QL8xQQ4@Rk>
References: <20260211082401.2407853-3-coxu@redhat.com>
 <202602120648.RgQALnnI-lkp@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <202602120648.RgQALnnI-lkp@intel.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264892-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,lists.ozlabs.org,vger.kernel.org,lists.linux.dev,clever-cloud.com,redhat.com,gmail.com,linux-foundation.org,kvack.org,kernel.org,de.ibm.com,linux.ibm.com,arm.com,ellerman.id.au];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[coxu@redhat.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: 27D14129285
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 06:35:52AM +0800, kernel test robot wrote:
>Hi Coiby,
>
>kernel test robot noticed the following build errors:
>
>[auto build test ERROR on 2619c62b7ef2f463bcbbb34af122689c09855c23]
>
>url:    https://github.com/intel-lab-lkp/linux/commits/Coiby-Xu/crash_dump-dm-crypt-Don-t-print-in-arch-specific-code/20260211-162729
>base:   2619c62b7ef2f463bcbbb34af122689c09855c23
>patch link:    https://lore.kernel.org/r/20260211082401.2407853-3-coxu%40redhat.com
>patch subject: [PATCH v4 2/2] arm64,ppc64le/kdump: pass dm-crypt keys to kdump kernel
>config: powerpc64-randconfig-r111-20260212 (https://download.01.org/0day-ci/archive/20260212/202602120648.RgQALnnI-lkp@intel.com/config)
>compiler: powerpc64-linux-gcc (GCC) 11.5.0
>reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260212/202602120648.RgQALnnI-lkp@intel.com/reproduce)
>
>If you fix the issue in a separate patch/commit (i.e. not just a new version of
>the same patch/commit), kindly add following tags
>| Reported-by: kernel test robot <lkp@intel.com>
>| Closes: https://lore.kernel.org/oe-kbuild-all/202602120648.RgQALnnI-lkp@intel.com/
>
>All errors (new ones prefixed by >>):
>
>   arch/powerpc/kexec/elf_64.c: In function 'elf64_load':
>>> arch/powerpc/kexec/elf_64.c:82:23: error: implicit declaration of function 'crash_load_dm_crypt_keys' [-Werror=implicit-function-declaration]
>      82 |                 ret = crash_load_dm_crypt_keys(image);
>         |                       ^~~~~~~~~~~~~~~~~~~~~~~~
>   cc1: some warnings being treated as errors

Thanks for reporting this issue. I'll fix this issue in new patch set.

-- 
Best regards,
Coiby



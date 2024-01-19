Return-Path: <devicetree+bounces-33362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19742833161
	for <lists+devicetree@lfdr.de>; Sat, 20 Jan 2024 00:14:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4C9321C23504
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 23:14:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E51658ACE;
	Fri, 19 Jan 2024 23:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="DNdTt0rD"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6A858ABF
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 23:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705706065; cv=none; b=FTzPXaKw6pDriyCmgzl37TF/HeVAdyVYTVt99gDDLIIL0h20IJ+De9WYHLxpczV1rZxiRSY+E4dWwhuFQM828NWV6EpfhJDJnO1Hox239to1QEpwFSfme8+vz4elYrMKHbEimdStoMEYD2ItURdYbgvBzbpey95QcMBwQ39NFpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705706065; c=relaxed/simple;
	bh=kZpKbyynWESgUl0uuZ+KU22BQhOS8b5sl21BsX0wLx0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fdxbIoiAily5lZROrPJohCIqSdjOdPv4L7wy/bIcLYYCCY2mRUVKQ6fUKRFhqaL2+EsmmP7QE1E4ryk/BTV2gTUWqxiPkAQfKTdx2ilp2xGe82w2WzRuDYX1wNidqwKOrEWJi0vz4r/UsNUDr+8HRqdvjsNQqUly3hIGf3/njx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=DNdTt0rD; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1705706062;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=IMTTMTFrFS/hDLax2Z45JLr+klfD0L4J5v64Meay0Mc=;
	b=DNdTt0rD43E6nhUjg+AK0n0VkAetoO0k8GtYDQH9FQkW+j8nvKo32qlka9vYakcN0geEc1
	QpSU+xQnBqj3BxF1fSSvOXvtirwasg3FN5sJZMpPFWPDHzU+ITzc6OMyblufClSzofqptW
	Za1Rvtvuu+xN42ujK/NX5FQqBnPiggY=
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com
 [209.85.167.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-471-37RWHDr6O7qboSPvgWCyiw-1; Fri, 19 Jan 2024 18:14:19 -0500
X-MC-Unique: 37RWHDr6O7qboSPvgWCyiw-1
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-3bd9ffbc490so1226767b6e.0
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 15:14:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705706058; x=1706310858;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IMTTMTFrFS/hDLax2Z45JLr+klfD0L4J5v64Meay0Mc=;
        b=wBhlHd1zpKdUCcW0vkzr1+z6qR4kXw++k7MbFw0Ghb5dhIm9u6gad58OEyHso24qIh
         ieu/b1PLnRuKJ7lLr4+JYSIgy9+6ZX8PdalxZnKk4OrAE7JIHEYh4UWj1S5RlbIX24Gm
         KZvf1qmDmo9dJCghJbF1OAuJiqfUMQlOW76gaiGEqeFLPt4p3UChMItiQZb0Bk17mP9i
         l4yM4vMctQvc7dVHqNdXdM9E/yL1v2bxjY8yy2mjPmSHdTrdObrIk8puu2tBUyvpmmr7
         BZHqAj0HtWXzAFDwz0KronNiBT5zk82ZCYiHWwrdY5dEj68hPkowBH4IOFPRWowTA5t/
         LHXw==
X-Gm-Message-State: AOJu0YxvRLF6Y6DrKLMx8cznkPgwua3RbOkmRkph3EuTdUKqGoXhXsxj
	4E6g2cJyPVYFb6MjTVGe88U7XAaAN9z64tRJ194GgH0ncEBfk5+0ZZhiJNQ9ZysxkepjGiR3WiX
	6N6aa0IRwikz/DV0KADDS/gJ6Z8TV2KfIh72Wwu6TM2qXtgz+UFJctG5Jjwk=
X-Received: by 2002:a05:6808:2391:b0:3bc:397f:8417 with SMTP id bp17-20020a056808239100b003bc397f8417mr554719oib.71.1705706058671;
        Fri, 19 Jan 2024 15:14:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEFeZR1Js78cUlb/ZNm/Xg6eX76UZPg+xKRA2k+vfZDoAZntm0noJDGROKATSPW/KIKbkXygw==
X-Received: by 2002:a05:6808:2391:b0:3bc:397f:8417 with SMTP id bp17-20020a056808239100b003bc397f8417mr554709oib.71.1705706058414;
        Fri, 19 Jan 2024 15:14:18 -0800 (PST)
Received: from localhost (pool-71-184-142-128.bstnma.fios.verizon.net. [71.184.142.128])
        by smtp.gmail.com with ESMTPSA id pc35-20020a05620a842300b007832961ff29sm105588qkn.4.2024.01.19.15.14.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 15:14:17 -0800 (PST)
Date: Fri, 19 Jan 2024 18:14:17 -0500
From: Eric Chanudet <echanude@redhat.com>
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Ninad Naik <quic_ninanaik@quicinc.com>, andersson@kernel.org, 
	konrad.dybcio@linaro.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	quic_psodagud@quicinc.com, quic_kprasan@quicinc.com, quic_ymg@quicinc.com, 
	kernel@quicinc.com
Subject: Re: Re: [PATCH] arm64: dts: qcom: sa8775p: Add new memory map
 updates to SA8775P
Message-ID: <uhi3qf56tohutn72rk75bkshpggc36u7sw545d2u4c6akiljeg@2ysqdrrgfru6>
References: <20240118155711.7601-1-quic_ninanaik@quicinc.com>
 <rq2dnfh6ctn5gbf3o3op5ywxx7zhx6r5sh5ykautye56o3p4dg@rjttk3rr65ld>
 <20240119191144.GR3013251@hu-bjorande-lv.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240119191144.GR3013251@hu-bjorande-lv.qualcomm.com>

On Fri, Jan 19, 2024 at 11:11:44AM -0800, Bjorn Andersson wrote:
> On Thu, Jan 18, 2024 at 06:58:19PM -0500, Eric Chanudet wrote:
> > On Thu, Jan 18, 2024 at 09:27:11PM +0530, Ninad Naik wrote:
> > > New memory map layout changes (by Qualcomm firmware) have brought
> > > in updates to base addresses and/or size for different memory regions
> > > like cpcucp_fw, tz-stat, and also introduces new memory regions for
> > > resource manager firmware. This change brings in these corresponding
> > > memory map updates to the SA8775P SoC device tree.
> > > 
> > > Signed-off-by: Ninad Naik <quic_ninanaik@quicinc.com>
> > 
> > With next-20240118, without this patch, running "./memtester 32G"[1]
> > crashed the board quickly during the mlock:
> > 
> > [   42.144892] Internal error: synchronous external abort: 0000000096000010 [#1] PREEMPT SMP
> 
> Sounds like just passing "memtest=1" on the kernel command line (with
> CONFIG_MEMTEST=y) would trip this...

Actually, this does a better job, not having to deal with the
oom-killer, and picks up the following missing region with this patch:

[    0.000000] early_memtest: # of tests: 1
[    0.000000]   0x0000000090880000 - 0x00000000908b0000 pattern 0000000000000000
[    0.000000]   0x00000000908c1000 - 0x00000000908f0000 pattern 0000000000000000
[    0.000000]   0x0000000090b00000 - 0x0000000090c00000 pattern 0000000000000000
[    0.000000] Internal error: synchronous external abort: 0000000096000010 [#1] PREEMPT SMP

> > > @@ -373,8 +378,43 @@ smem_mem: smem@90900000 {
> > >  			hwlocks = <&tcsr_mutex 3>;
> > >  		};
> > >  
> > > -		cpucp_fw_mem: cpucp-fw@90b00000 {
> > > -			reg = <0x0 0x90b00000 0x0 0x100000>;
> > > +		tz_sail_mailbox_mem: tz-sail-mailbox@90c00000 {
> > > +			reg = <0x0 0x90c00000 0x0 0x100000>;
> > > +			no-map;
> > > +		};

Re-introducing 0x90b00000-0x90bfffff as no-map passes the kernel
memtest=1 and boots with the firmware I have.
My previous test was incomplete. Please disregard the Tested-by.

-- 
Eric Chanudet



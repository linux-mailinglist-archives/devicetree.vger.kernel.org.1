Return-Path: <devicetree+bounces-101482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A3B971F4F
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 18:33:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 86C5AB2339E
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 16:33:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 191D5170854;
	Mon,  9 Sep 2024 16:32:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="VRjrh6nm"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AC6165F05
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 16:32:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725899552; cv=none; b=o887VReDhG6H532B4L8widoNQGIca0ldkf3PF8lgLUUzfKUq72xSvR/Q+Pg3VJI2+zd+u7r9ePdwELuvI9mxA4IAlSFWtBgSFDyK8HX4w2gIlvpAfoQxBCf6055pd8xrKNjoF8iRAoHZP/+2JmfGgfJ+XkvDiBG1iunitNit5MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725899552; c=relaxed/simple;
	bh=Xm3mo0q8uup1oigL/M/eB08VU97LgOZseSRdxRBdzAE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PMiemjMUsyYhytVXynn8zJ+eOqoem5uZ7PsJeJU2Svw9GGyV9Il+TGrlk8ot4Wr2Y/LG2isPSY0lSqKmnT5K19HqxfdtTGZFKcRTvMyhr1Q55QMNos990joop+yZs/NnAG34BeMrK6Z21doPkerSNqz+b8hu2MBRWvafjH90wFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=VRjrh6nm; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1725899549;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=HkosBlh+p7Hi7+DVJzadHze29SO4xpYGYG+Iw55eNj4=;
	b=VRjrh6nm8qLDV1DaSGnUhh2c0c/7pOWSqUEA4l792e/yrQP5N3D8Sk2mCmm5ZI+xPDvohi
	glb3q3HJeQR6iZ/FmpoB7yxIDaIPrtBn7jxuAyyuDAbk0OdYVbNayeV8k/M55zunLaIRIx
	akpcoT8f0JbF4aZ3LXeqjL1cxxn8yqc=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-675-EEBd9Kd0MT-hRfWTnJop-Q-1; Mon, 09 Sep 2024 12:32:28 -0400
X-MC-Unique: EEBd9Kd0MT-hRfWTnJop-Q-1
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-458373c736fso13011051cf.0
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 09:32:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725899547; x=1726504347;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HkosBlh+p7Hi7+DVJzadHze29SO4xpYGYG+Iw55eNj4=;
        b=Pw+euDaoz2bwAimM7OmpHMVKQHjdVqSNyxPGu9YgNXgB/sF+/1eT/mcU2JbVR7t0Ud
         PN8yYVxpNr1uYIBMpq/9vzJ9Sw88sL4kG54Tn338F5HO+vt5ncZZhBOzQsVXXnvXayPf
         Mn+XxwBYgr+GqzWjt27DxtN45+NSHK53dfJb5wOeqevlaYqylVobmOEIJiE2gpk0POe6
         diAmHy0/xLyxeLF9/QmEe2fd4OZeRQWYHM/Z0dT4lcv+B+yVO450h4FMdRBAilHGrp9p
         p9gGLiaS2VnnrhNnEIL5AeNhIZxKaVdNZ8pYs9AIh0653v/bvjDGpYK8E5IeWuYCPvke
         /pxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwJF7ntuQCuQbVOXaViP8ALjyjJVHG6QL34vWBl6JJ59GhQjT/FvD7SR0YTghVWyC7ZMS12XWeyvWo@vger.kernel.org
X-Gm-Message-State: AOJu0YzzgEjl1igNuB5wx5fpEf9VoCAVBLx+ITmW6KgWi3v0tEisDWzZ
	uZc2yihrheNCb1/Rx+EURp+Dm6D6rMvk0s8+lxh2nUuAV/DUcZpPBRvAKOEPucm/pkyVhm4L9mC
	J8FUXdBwhgZ0YKDaklvra28VDgNZjKLLHifwtw/c8FV7dxzMFAvzYO5I+Cek=
X-Received: by 2002:ac8:7fcd:0:b0:458:a70:d9c0 with SMTP id d75a77b69052e-4581f4757femr90602211cf.17.1725899547163;
        Mon, 09 Sep 2024 09:32:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNoX4s/wbHFlzAI36PoDj2wwYYk4d9JXrMdHMyf4+QtcxFOeul3r+MGv/m1E+k6Qi7oR99VQ==
X-Received: by 2002:ac8:7fcd:0:b0:458:a70:d9c0 with SMTP id d75a77b69052e-4581f4757femr90601891cf.17.1725899546651;
        Mon, 09 Sep 2024 09:32:26 -0700 (PDT)
Received: from x1gen2nano ([2600:1700:1ff0:d0e0::33])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-458320392cbsm9330711cf.61.2024.09.09.09.32.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 09:32:26 -0700 (PDT)
Date: Mon, 9 Sep 2024 11:32:23 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Keerthy <j-keerthy@ti.com>, Neha Malcom Francis <n-francis@ti.com>, 
	Eric Chanudet <echanude@redhat.com>, Enric Balletbo <eballetb@redhat.com>, 
	Udit Kumar <u-kumar1@ti.com>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC/RFT 0/2] arm64: dts: ti: k3-j784s4: Mark tps659413
 and children as bootph-all
Message-ID: <xaxq6c6usxuudnw7ksgatjog76ezx3idbb5u7fcne7bobsd75x@ttlo2wx4rm5t>
References: <20240906-j784s4-tps6594-bootph-v1-0-c5b58d43bf04@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240906-j784s4-tps6594-bootph-v1-0-c5b58d43bf04@redhat.com>

On Fri, Sep 06, 2024 at 04:21:01PM GMT, Andrew Halaney wrote:
> This series marks tps659413 and its children as bootph-all in order for
> the nodes to be accessible during MCU's u-boot SPL.
> 
> This in turn is desired since the tps659413 needs its MCU ESM
> state machine setup in order for the watchdog to reset the board.
> 
> This took me a little while to track down, as enabling the ESM, TPS6594,
> etc in u-boot would result in the below boot failure:
> 
>     U-Boot SPL 2024.10-rc4-00007-g44b12cbcd1b3-dirty (Sep 06 2024 - 14:25:52 -0500)
>     SYSFW ABI: 3.1 (firmware rev 0x0009 '9.2.4--v09.02.04 (Kool Koala)')
>     Initialized 4 DRAM controllers
>     SPL initial stack usage: 13408 bytes
>     ### ERROR ### Please RESET the board ###
> 
> Which turns out to actually have failed far earlier in spl_early_init(),
> due to these nodes not being accessible in u-boot. That's hard to tell
> though since console isn't setup until later (and for that reason I
> think spl_early_init()'s return value in j784s4_init.c isn't
> evaluated since a panic() at that point would leave a user with *no*
> information at all).
> 
> I've tested this in conjunction with a u-boot series which I'll link in
> a follow-up response on the k3-j784s4-evm. I'd appreciate someone testing
> on the k3-am69-sk at a minimum, as it should suffer the same fate if things
> aren't setup appropriately.
> 
> Signed-off-by: Andrew Halaney <ahalaney@redhat.com>

Better late than never...

Link: https://lore.kernel.org/u-boot/20240906-j784s4-esm-enable-v1-0-b83b17d5a744@redhat.com/

> ---
> Andrew Halaney (2):
>       arm64: dts: ti: k3-j784s4-evm: Mark tps659413 and children as bootph-all
>       arm64: dts: ti: k3-am69-sk: Mark tps659413 and children as bootph-all
> 
>  arch/arm64/boot/dts/ti/k3-am69-sk.dts    | 11 +++++++++++
>  arch/arm64/boot/dts/ti/k3-j784s4-evm.dts | 11 +++++++++++
>  2 files changed, 22 insertions(+)
> ---
> base-commit: 9aaeb87ce1e966169a57f53a02ba05b30880ffb8
> change-id: 20240906-j784s4-tps6594-bootph-19d3f00fb98a
> 
> Best regards,
> -- 
> Andrew Halaney <ahalaney@redhat.com>
> 



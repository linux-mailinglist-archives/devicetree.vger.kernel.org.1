Return-Path: <devicetree+bounces-102392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E6141976E58
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 18:02:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 15BCF1C2090E
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 16:02:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA196126BEC;
	Thu, 12 Sep 2024 16:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="UPXOIIJA"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399F878289
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 16:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726156973; cv=none; b=jtHV8e2HtlsIaYYktS+z7T3bawqadJJtlQPMyzrNmST2rWOvOGyPvFkdBhy3rvAXP0Xe4QzF446vnv56EysUlcgbPcHI4G6vzNtUCSqHOPStm9OKghkxAhmA5uEcjxoK7vfQnSU+Tt24xLGuQ7i3R1WoTEALNe+GzsObh9klcgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726156973; c=relaxed/simple;
	bh=Md4oD6+HPiyGTS/8xLRiNU4xEElw9XRwfMKbN11tCqY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g5ahIIO5pp7p02KVcAQPObB83ihn/oWQk90y9tR7xqdwtFm6nCTExhWA56UE0ye+6TYYPjYPPn2qzkyWnkjvTClh6r79vHU9CaUi8EFZ3llQBvjQit44PXkRP+nAsrlcxcXdih6VlcdGm4GlnQsv4J4owwPOchG4xGlcdhNv8ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=UPXOIIJA; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1726156971;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ByeMM6JNQBN+U/AIMe9Bk7jJrnLV+BschgkAMw+0o4Y=;
	b=UPXOIIJAidQRMyLHLjSa9Umi/8UcKyClo6j8q5q9DVQ6A2y5zlgcuRSEDaiIl/hmWFz73p
	chI4wjl1foFMAGPIYTjQevZujUN/i5fej6kRG80VGaQjpK19AfvGH5hZCPP6TAMVnT1F9f
	H1NvR3ggbUjlyzPixGOPniR/4bQLN1A=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-393-7xzqvphtMTOM1mIZxLcTIw-1; Thu, 12 Sep 2024 12:02:50 -0400
X-MC-Unique: 7xzqvphtMTOM1mIZxLcTIw-1
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6c57cab27faso521046d6.3
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 09:02:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726156969; x=1726761769;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ByeMM6JNQBN+U/AIMe9Bk7jJrnLV+BschgkAMw+0o4Y=;
        b=PXRyM9Rm+TQn01dIeHuyOaCO4AKkwLfCb8nKcxSs9sS3V2fLh4lU9mXBA0LXQ/SvLi
         Bv57txlO7R01Oob3ABITgzgYeLLNk4co+gK30XLYi0kq8WHEfzNl5/FXf5H9XOww42dm
         tf5IAuNFqCBDiacNNNhs50B3ovTftorb1hrzcGAunx2Z6pnl6DE7SWQ/TRtgnyEPE7Gm
         vR6CO9cqndnuOy8qBhOwriv6NFhY2bvj+N5dEp5ZCyz71iDJ7iO0N2g1oqxGJpIP8NWi
         VtZUtRy7lde4Jg73MCFSNMvQD5iN+sUhdBpTPIgroBcejt6bAN/Tm6UZkaMuTgEYIlgV
         O8GA==
X-Forwarded-Encrypted: i=1; AJvYcCUJjmIV0JldC1A1BD1WNsGstQhSbfOCGVcxNBjS7ZslwIgi1g9pIk+/nEXiaQOKOE0NDkfSt4G3rw4y@vger.kernel.org
X-Gm-Message-State: AOJu0Ywr9/BZZRsJDlN5MJ5Sox2QlQ4INqbfupYZh8daSSUiIRRiGmxs
	M5z3Rj4rK/v8PLjZsHP5uMn/lOMnfR7jtIiihEMUibrDus3v/UvzXM7gUcwphqI1uX2D7c9ri/5
	3RjBMkkFpolAiFIjTLJHNCcunJap/lUZ5LExn0zwYnAQ5VRhJnJQric9mm7k=
X-Received: by 2002:a05:6214:3d8b:b0:6c3:69e9:9a9a with SMTP id 6a1803df08f44-6c573581f4cmr63655976d6.36.1726156969320;
        Thu, 12 Sep 2024 09:02:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEHYo82optTZjceMvdCXjbqTNzCvVEVaQH2M0P5hiXlsrpg6hDlfli7QaxGdFnhaTdwBJxeMw==
X-Received: by 2002:a05:6214:3d8b:b0:6c3:69e9:9a9a with SMTP id 6a1803df08f44-6c573581f4cmr63655636d6.36.1726156968981;
        Thu, 12 Sep 2024 09:02:48 -0700 (PDT)
Received: from x1gen2nano ([2600:1700:1ff0:d0e0::33])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6c5343295f7sm55492106d6.21.2024.09.12.09.02.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 09:02:48 -0700 (PDT)
Date: Thu, 12 Sep 2024 11:02:46 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Udit Kumar <u-kumar1@ti.com>, Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Keerthy <j-keerthy@ti.com>, Neha Malcom Francis <n-francis@ti.com>, 
	Eric Chanudet <echanude@redhat.com>, Enric Balletbo <eballetb@redhat.com>, 
	Udit Kumar <u-kumar1@ti.com>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] arm64: dts: ti: k3-j784s4: Mark tps659413
 regulators as bootph-all
Message-ID: <lnrcosn7e7x6v5kerll3sqyy7r3qup5nmqi4m3puzjfcvpoljv@6lfmyprzwseu>
References: <20240911-j784s4-tps6594-bootph-v2-0-a83526264ab1@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240911-j784s4-tps6594-bootph-v2-0-a83526264ab1@redhat.com>

On Wed, Sep 11, 2024 at 12:19:01PM GMT, Andrew Halaney wrote:
> This series marks tps659413's regulators as bootph-all in order for
> the nodes (and parent nodes) to be accessible during MCU's u-boot SPL.
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

Link to the u-boot series: https://lore.kernel.org/all/3bf2177d-178f-46bf-abfe-6f00a52c623b@ti.com/#t

Udit, it seems you tested the am69-sk patch from this series in the above
u-boot link, thanks! If that's correct mind adding your Tested-by on
the patch here then as well?

Thanks,
Andrew

> ---
> Changes in v2:
> - Only mark the regulator nodes as bootph-all since parents are implied
> - Link to v1: https://lore.kernel.org/r/20240906-j784s4-tps6594-bootph-v1-0-c5b58d43bf04@redhat.com
> 
> ---
> Andrew Halaney (2):
>       arm64: dts: ti: k3-j784s4-evm: Mark tps659413 regulators as bootph-all
>       arm64: dts: ti: k3-am69-sk:  Mark tps659413 regulators as bootph-all
> 
>  arch/arm64/boot/dts/ti/k3-am69-sk.dts    | 8 ++++++++
>  arch/arm64/boot/dts/ti/k3-j784s4-evm.dts | 8 ++++++++
>  2 files changed, 16 insertions(+)
> ---
> base-commit: 9aaeb87ce1e966169a57f53a02ba05b30880ffb8
> change-id: 20240906-j784s4-tps6594-bootph-19d3f00fb98a
> 
> Best regards,
> -- 
> Andrew Halaney <ahalaney@redhat.com>
> 



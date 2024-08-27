Return-Path: <devicetree+bounces-97239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A0DE6961996
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 23:56:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 595732851D3
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 21:56:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93C221D3652;
	Tue, 27 Aug 2024 21:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="EZCKBQqm"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E9E1F943
	for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 21:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724795806; cv=none; b=Qa1uTjsHCj+edF2j7/SjPUSJe1DW1D3sG9yUnlLDXaKbPZVOoOe7L+VDZuqGsd186XcucAhp3wSihxVL/XkIb0QMZeyFlPFsjKm4/sV/9JW9Oo1GgOSoIuNxXzgY5vQHsOJBO6TgED+UCCrVahR6TGLGSqvpc1RF9B6K4YztMoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724795806; c=relaxed/simple;
	bh=Nm05BVxBx0NG4rRI2RIppgTXBDC7BT7NMvEIjigWDu4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZI1T7FCBi2nzbFq7rwvUS0dSAB0gsdzsItRH7gKw3FOWf9eNG8nu/prv0dOHfpU/aFJT7Js3DcLcS9plpHvtG05GpwS9shIcOCphWgUbYbP11Pxbvtz3SQ/wpcw1JL4iKL9OgpGLkMEBLzIk8sxTOEsykVb1R/YSNLoru7+Hwg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=EZCKBQqm; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1724795803;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=tB0rU/7qvWBrZlSRues9tcob65dKQWjgPs7/47JZCEw=;
	b=EZCKBQqmoaKnN8026MbSzjUQMYWVEnz99g7qHZc5M6BJeXNjwH8GYcCNNNk+7DBhhTF8wI
	NHUjltWz6XmOqkMpWyLTtksKkI2jpHYdkWH2N5AcoElmtg71AqHDyjVhOf8rifTe+vn8Nl
	vOE18ok2YHoCFlFzIvzo8sG/UATbOXU=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-35-1Ntp1eIUNMic7oW6X7ue3w-1; Tue, 27 Aug 2024 17:56:42 -0400
X-MC-Unique: 1Ntp1eIUNMic7oW6X7ue3w-1
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6bf8cef1c5cso73436076d6.2
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 14:56:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724795802; x=1725400602;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tB0rU/7qvWBrZlSRues9tcob65dKQWjgPs7/47JZCEw=;
        b=mO6ZyDvaHgh1XpHAhiDajurnLFcu/RdC+oj+pM7p7Z0MaWVLmVAxYS+lzPzh3FzGVA
         DBzTWLWlangPO0ISQ1dKz1df/wRV+LT0P4EP6RCJ1mr1rQriZtxqSz8ZPW1aNg/gLf1H
         wrSshTICc6h7Bj2ACqC2jNiPTFLKrAuVXjQoeWlFFigMDb3fhxhC7KoAuYXUHhJc1Wz4
         rnMuBkM1LpoiHoKhswoc2IYPeD/K55xvCNAHAaCuUJEDY/ViYcpd1ijj33In36PnN8kA
         NW8T2/J2XbBCpLXWRGTwDDPosEf29igyzph+0lTrl6GCccceHzkJKXF0n5R98nEFFnUL
         GlhQ==
X-Forwarded-Encrypted: i=1; AJvYcCVnsgqMX/iMwxoUuqPfxaMmUBAPhnqLTHSKMmCjDD2h6hj5xJ9bP+09yYP3snjDE58Q+FIf6XxRqalI@vger.kernel.org
X-Gm-Message-State: AOJu0Yyf/8GztEQy7+Kf6wwOT+3jHniDnyrZmLXowmC5uOYIW54kh3cc
	V1mtVOy3oqA2MVQeJ7AGfB8uRcFpScQLW+QzktrPzAwBIb/+c5A20xnpzZKolfAdzMH6Y/5UdBN
	Nbn3Etsbe1/qinma1SotH9ngYymIr+fGeWuxz5K+bjp1dvp4+eytt03h0ko0=
X-Received: by 2002:a05:6214:5912:b0:6c1:6c07:800e with SMTP id 6a1803df08f44-6c16dc7caadmr197029926d6.34.1724795801750;
        Tue, 27 Aug 2024 14:56:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHB7KRLyOvQx92isTrKIn5B9ZPx+rTBZnWrLMmVYDtZtCDv2t0QlXFfy0MKHoSeNwRUe+z2wA==
X-Received: by 2002:a05:6214:5912:b0:6c1:6c07:800e with SMTP id 6a1803df08f44-6c16dc7caadmr197029776d6.34.1724795801441;
        Tue, 27 Aug 2024 14:56:41 -0700 (PDT)
Received: from x1gen2nano ([2600:1700:1ff0:d0e0::33])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6c162d75484sm59974846d6.70.2024.08.27.14.56.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Aug 2024 14:56:41 -0700 (PDT)
Date: Tue, 27 Aug 2024 16:56:39 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Eric Chanudet <echanude@redhat.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: ti: k3-j784s4-main: align watchdog clocks
Message-ID: <hqifchzwvzyexlcq6vfhlnrp3sixkgk23vau6o46k6einn5vee@gj5a53ee2gsi>
References: <20240805174330.2132717-2-echanude@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240805174330.2132717-2-echanude@redhat.com>

On Mon, Aug 05, 2024 at 01:42:51PM GMT, Eric Chanudet wrote:
> assigned-clock sets DEV_RTIx_RTI_CLK(id:0) whereas clocks sets
> DEV_RTIx_RTI_CLK_PARENT_GLUELOGIC_HFOSC0_CLKOUT(id:1)[1]. This does not
> look right, the timers in the driver assume a max frequency of 32kHz for
> the heartbeat (HFOSC0 is 19.2MHz on j784s4-evm).
> 
> With this change, WDIOC_GETTIMELEFT return coherent time left
> (DEFAULT_HEARTBEAT=60, reports 60s upon opening the cdev).
> 
> [1] http://downloads.ti.com/tisci/esd/latest/5_soc_doc/j784s4/clocks.html#clocks-for-rti0-device
> 
> Fixes: caae599de8c6 ("arm64: dts: ti: k3-j784s4-main: Add the main domain watchdog instances")
> Suggested-by: Andrew Halaney <ahalaney@redhat.com>
> Signed-off-by: Eric Chanudet <echanude@redhat.com>

Tested-by: Andrew Halaney <ahalaney@redhat.com>

As mentioned throughout the other thread, you need the r5 u-boot build to
configure the ESMs and the PMIC properly to get the board to actually
reset (not in upstream u-boot at the moment).

This patch fixes the watchdog itself though, prior timeleft was
bogus etc but with this patch it starts at 60 sec (default) and reboots
when we hit 0.

Still an open question about the ESM(s) and their relationship with the
PMIC, but that's an entirely independent subject to this fix.

Thanks,
Andrew



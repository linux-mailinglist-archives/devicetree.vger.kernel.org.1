Return-Path: <devicetree+bounces-68773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED9C8CD89F
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 18:44:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4EA0E1F2169E
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 16:44:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CF741B7FD;
	Thu, 23 May 2024 16:44:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="dHdg/qDv"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B760418633
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 16:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716482671; cv=none; b=pBKhBrTSNfhWCWeLyyZCyYrnKTTDOv9Gc/yGSiQGOJDGTuAJTQ5ZHDMNvz4vTi483F0xiPjAPSgKsle+WjjwHIYl2oDHyoj0xWoskowQo3s9bbrLTVaFcnX3BfazOfj12DU3LJG7mQjAnAaiQnsAMIpC6pgKuc5Z8IRuQ/+yZsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716482671; c=relaxed/simple;
	bh=HPT2RRVWhwMnX33TN37zfYv6LrIgtDsgNFtTyyUEQ3Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NbgDwlMR6X5w+xqmEDCE8GboPbqpPWu+T9n9USM7qPIXc5JFP53UceWec8ShFuSWwivqDX3woPGDFS0Yfh39veLm8/W+QxLFI24NE4DNGJcjLdN6zBv9o54tUuk2OFspzeYFaAntsxTiLkzOITmWeDDl6+BAhD3bdj9olhWwu5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=dHdg/qDv; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1716482668;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=HPT2RRVWhwMnX33TN37zfYv6LrIgtDsgNFtTyyUEQ3Q=;
	b=dHdg/qDv5LneIbfnYG0O9Y6i/J9CIU7wMyvuuQBxVS5wDdcIilJAd/iBfpY95In32IbskY
	o4aTnlF4i0VLV4gOlX/++qV36vAKZ5NtyAaxLCiSfPmfbdi6sDIfv1kpdGkZFmAQkzSrXs
	WxoirvSnleJiJtmmMBMLmyvEjrDSGTQ=
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com
 [209.85.221.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-635-Iag2w_LyPJyUnmGSynQ8sA-1; Thu, 23 May 2024 12:44:27 -0400
X-MC-Unique: Iag2w_LyPJyUnmGSynQ8sA-1
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-4df77ebd825so133725e0c.0
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 09:44:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716482667; x=1717087467;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HPT2RRVWhwMnX33TN37zfYv6LrIgtDsgNFtTyyUEQ3Q=;
        b=gY1Gv8GAXNiQ14Ti3qt3evYTg7goDfyCIC6Kx8LNB3KvZ31k68b9xeUtMzDQry+CmC
         FBjCaDDLVv5vbiy8y8/cgvBbpd4bc3A7m3bdX0f1/WDUvubUjBrwWznleQHHeXpsyE6n
         yJ8wCvZ7/7sEFqJUhv3c6TKF30DiIuAC9q6aOeQOl/Ztjed+GXR90n0WJ4CvtrlzPUzj
         V2FDVG+kkevU9ZFQGHMD6SHPtzs4pglCF9lZw00TCXUF5grYQkyLVmlTzXGW4LixkTkQ
         TPEHIKbsTC1ad5dk7P0AtFp/SPfd5akfvM41izlUA2ZlIE20IUT1bGXCKJW12zokseyC
         OBjw==
X-Forwarded-Encrypted: i=1; AJvYcCUNTlMOnrlYuCoEMbvKurmaGL0Xa6vrO9BPLRp0mE6nlXk3+5GjGqd7nw8fznZANgNFPFHYUhWF6hN1qtyFcz9eJJQYgjR3yJCrIA==
X-Gm-Message-State: AOJu0Ywp5zPhcoqxpCZv1DFj6Tbh7C42q3jKLaJRk6CroS5CMYCEd+nO
	Wp0GkiqzVq9EyIEl7m9/XakRLejRqp+duvJnntdlQNmMEfEFBX3fEWWsZp0fvtMDJiOKmU04QMh
	vW0zV3q06rVnswqsvKM7GRxCqjQwPFbmT6UVTuVjgFlohhYxAX00AY169SZ4=
X-Received: by 2002:a05:6122:3122:b0:4e4:ee6b:1783 with SMTP id 71dfb90a1353d-4e4ee6b196bmr530993e0c.5.1716482666419;
        Thu, 23 May 2024 09:44:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFLBwTV5zswphEdhcg5dwd3Tg7XgWPeJ+Fd7A2WYQ8yqdldsjVOD91qLK0HSFYF757vHRP9lQ==
X-Received: by 2002:a05:6122:3122:b0:4e4:ee6b:1783 with SMTP id 71dfb90a1353d-4e4ee6b196bmr530936e0c.5.1716482665365;
        Thu, 23 May 2024 09:44:25 -0700 (PDT)
Received: from x1gen2nano ([2600:1700:1ff0:d0e0::13])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6ab8ca20630sm11394766d6.92.2024.05.23.09.44.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 09:44:25 -0700 (PDT)
Date: Thu, 23 May 2024 11:44:22 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Ravi Gunasekaran <r-gunasekaran@ti.com>
Cc: nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, srk@ti.com, rogerq@kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/2] Add USB 3.0 support for J784S4
Message-ID: <4rtzlvbfkvkomdteic2intesanf3udwfqg56vtzrghe2h46qrd@udzkjofpndqe>
References: <20240507095545.8210-1-r-gunasekaran@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240507095545.8210-1-r-gunasekaran@ti.com>

On Tue, May 07, 2024 at 03:25:43PM GMT, Ravi Gunasekaran wrote:
> J784S4 has one USB sub system.
> This series adds and enables support for USB 3.0 for
> J784S4 EVM.

For the series:

Tested-by: Andrew Halaney <ahalaney@redhat.com> # k3-j784s4-evm

Thanks for the patches!
Andrew



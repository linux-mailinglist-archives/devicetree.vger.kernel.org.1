Return-Path: <devicetree+bounces-241918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D22C84548
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 10:58:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AC5733AD7E8
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 09:58:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 929692ED154;
	Tue, 25 Nov 2025 09:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UsD0n9rb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C477A288D6
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 09:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764064678; cv=none; b=dtzgCD8FAjpMB+Yzq+aZ3E3g+vNPjUzoPa4IbwlqQ3YsXiEvXQmq2SXis8rtDBzYUM/2wkPlP80w42lIfqY9su4IOwXuaHD+ykXldgKEsLZtF4+cZU8sgpXq1R91EFuSTbaNG229sUyqRnmDRWsUnBFcfRZY+WDBsGRqA1fKeIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764064678; c=relaxed/simple;
	bh=aWPZQiOwwjPcpqrpyDvxdJ+TS6+Is55C2OdCisYPF/4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bBcDFXwtaRFdG5cuC481w3whuAti+ZpJcLpJ9t04e180YTIJUXeu53k5Q02Ys7g1DO0tUllQW4Z5Dx/ANSFIAC8AC2Z3qDbbSYoAcvpJYKSwOJTx6Y3ng+1QZHd9iL9XBlm8KHAfVlFEdZYmNnkinoLtlh6kyC76waEhXz3EWho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UsD0n9rb; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b713c7096f9so816897866b.3
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 01:57:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764064675; x=1764669475; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rUasbkstjniBrT4zxMVBFF99A9HoWusdu4FR+HNi+pw=;
        b=UsD0n9rbXuYU/baXFEnV/Dv/sShzE3gbYuvgUcQTb3TV6SQGrYY9kwQt+kH86ywX9U
         eqZZhmiZIIbdj18wggXI0pTEDMY4KOw5SG1uAWf8lKyDaLHrVH38mzSsGAYT7W51N5F0
         jfDslqG8I7/Jf8ywcD/W+snw1v2dXywVj2B85ndogK/E4z/VmwYqpZ+UhGNuakrBQfdJ
         SFD5uNQWU2gVD9xeDC66WwX5BDD0U0L4z01xpQ6FObO4yb+JSsQmAFMFjgsADnrCUGX6
         CFyv7qbNjlloCac6A/MzubGCkN7FMs0+I4mbv073kJZXqvzK35JTGM/wV9gBrznYRGIe
         6rvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764064675; x=1764669475;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rUasbkstjniBrT4zxMVBFF99A9HoWusdu4FR+HNi+pw=;
        b=votkWdPlL7aNWObhHQRPFIdRhLTS6Z/0sv/HTK02qFigsDJBM1gMPdpwOcOuSkasfY
         vIDF3YpKUhOQkqqyPMrkF5+9CMVrFg/QOz6P/rvB7Y8ReFA65S5cufkLgk2MTuHvre5i
         7PP+T+86uX9W5Gab7T/O2TnoKdq7BWi+so7FWXV90qVohw9Crpd+KRbPhdU0aUyTM5Ph
         x1eWFGPNDll8K1NuMAotwZSJPOvIq5WoGDHy8PG8Bek/vmLGq/YHCO63Sf6U7i5Gkg0m
         ua0P5++qtUchxXE6ulte6/29lYk0EvHiMLS8KLrLj9aK00+AzaTKml89b5wgUsjyXzeF
         b7AA==
X-Forwarded-Encrypted: i=1; AJvYcCU3sTPhsndT/FKUY8EOSeOVfapWaBq0YlmMCvINPE27OcdvcfgBQhn3rST1YbgvXKjuUnEyYN7gDSru@vger.kernel.org
X-Gm-Message-State: AOJu0YxW1jAGmTn5Fx1yWD6qBSqKOQWp72dyQWroAMXd6YwD74vIwVDd
	iTuUQ4IRz/vRjmbqiSUlPHa7ebmlsRmr8RGAF+wnEP6QPIwoHlodajjL
X-Gm-Gg: ASbGncsSONAd2wACP/FaV/XmAPUGQ/4qvQ2quH3cj3wKSPDIGRrOXffmEhSPVYbSNew
	8cQVrDuc5eh4q+8OZhanPkQ8XRgPMnhGxg0M+BKtCidaIUzcEzAjsrnxWoWx7v7jcyMlVqkU1SZ
	CCs3721rIdwXciuJIiJZdYpdetXWF0jmZNCcdNH+qSQ1Oq/y4NfijC4dGgayVbFRZwtPUq76wH3
	mA5VB97zLyR1ePF4N1oAqe9gfjOOgRE/WP1J2PWcTATLtRsIVY5ZXwruSGA+VfNBWN3SadJeCti
	Lj+8ujPE6ZeXgQUpYfZ43gY5feAddJZLaGoBJjnQuYxCzUEpELKOx/Gm6FCgXnu0nsATZxuw4+S
	fTJJqvIhn8BmCQ8Pn4xcuBbvGKifX2pDvNXbXctB6bzDA/rJJtsIpZRI6aE4aL9UeB3k3uOMEyE
	smBfQhvbTno+yMU8dLZ4qtplcuTgIEWh+IaIv0PTuZ7/XwUbYRW6TXTwMuf1bgO0WxNgW6N+JVq
	ZWA4sxsPMrXyg==
X-Google-Smtp-Source: AGHT+IHLisWyuG15RnJSodDThe/ELizaIWdtNrkb9dhnJFuydOtd23t6sLVr0LkGdKB4Y4UIprMu/A==
X-Received: by 2002:a17:906:c156:b0:b73:7652:ef9e with SMTP id a640c23a62f3a-b7671a28d01mr1625571366b.55.1764064674836;
        Tue, 25 Nov 2025 01:57:54 -0800 (PST)
Received: from ernest.hoecke-nb (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654ff3bbesm1539477966b.51.2025.11.25.01.57.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 01:57:54 -0800 (PST)
Date: Tue, 25 Nov 2025 10:57:53 +0100
From: Ernest Van Hoecke <ernestvanhoecke@gmail.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Cc: Jeff Johnson <jeff.johnson@oss.qualcomm.com>, 
	Baochen Qiang <baochen.qiang@oss.qualcomm.com>, Jeff Johnson <jjohnson@kernel.org>, 
	Johannes Berg <johannes@sipsolutions.net>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, ath10k@lists.infradead.org, 
	ath11k@lists.infradead.org, devicetree@vger.kernel.org, ath12k@lists.infradead.org, 
	Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
Subject: Re: [PATCH 0/2] wifi: ath: Use static calibration variant table for
 devicetree platforms
Message-ID: <fasihmiu2szj6m2r3qef5slvzlvdjo2ajhrd6xyqsa5cajrbzq@a5dyulg2dnac>
References: <20251114-ath-variant-tbl-v1-0-a9adfc49e3f3@oss.qualcomm.com>
 <2fd84ab2-2e3e-4d05-add5-17930a35fedf@oss.qualcomm.com>
 <jnggqxqv3rjzhyevovnnxzplfhl3t6auhhvmoz7wxmsf6awgdx@dusdgxwsxvts>
 <b8277024-f9d4-4f17-946f-c2c390669067@oss.qualcomm.com>
 <exfmj52dqu3uctwsb2gopcjg7744vq5avlkahtmgfw4opw4mfl@t2svrln72u53>
 <f853d9b2-47f8-47b5-a02d-6aa8f12a4283@oss.qualcomm.com>
 <trr5j57vwk2dhoibdgdxnlkftnmfcmjkwmicsiltmhybxanjaf@tzaeeqcyz56l>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <trr5j57vwk2dhoibdgdxnlkftnmfcmjkwmicsiltmhybxanjaf@tzaeeqcyz56l>

On Tue, Nov 18, 2025 at 12:23:20PM +0530, Manivannan Sadhasivam wrote:
> 
> ath12k doesn't seem to require a calibration variant. But even if the user
> replaces ath11k chipset with ath10k one, the calibration variant should be the
> same as it is platform specific except for WSI.
> 
> - Mani
> 
> -- 
> மணிவண்ணன் சதாசிவம்
> 

Hi all,

Jumping in on this thread to ask about how we should handle variants.

We are using the WCN7850 device with the ath12k driver and received three
board files for this from Silex, signed by Qualcomm. All three support the
same board (SX-PCEBE), where one is the board file to be used for the
US/EU/JP and the other two are one for higher emissions in the UK/CA and
one for lower emissions in the UK/CA.

Since these are needed for regulatory differences but support the same
board, we were wondering about your views on how to handle that in
mainline. I see that there is no support for the board file selection in
the device tree for ath12k, and that there is some discussion on how to
handle variants in general. We are using a device tree-based setup and no
ACPI.

Thanks!

Kind regards,
Ernest


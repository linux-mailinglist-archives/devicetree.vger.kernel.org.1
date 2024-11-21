Return-Path: <devicetree+bounces-123457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 832159D490C
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 09:42:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1F629B238CC
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 08:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4A871CBEA3;
	Thu, 21 Nov 2024 08:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="J35KY5cg"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E77146A6B
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 08:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732178508; cv=none; b=Pc37rvuSD56Cy7LOrjbtbFhYbkWeyIhS/TjW2IgRTATQEqpJLBBqyiboMmFxXKw8WsuJIr6x+NnYOti06XnBpMBpn0jp0PtCWmk/dwt96sSMNMRpFSMue6skE8X2Jdx+874XWwn/WeXYEZm7K/hBcbrXjrQZkKBRRFEiBSSzZBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732178508; c=relaxed/simple;
	bh=OakpjTtQorQ2BeUpm+/i89nPTw9w4eLYabvPpcRfSGw=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=J/FP5UKk/AyJeeBB9riTpiUQMiC+T3t9GvlxVl3FZCNpICIbRU/0SyJWzBQ5c8AcufToz0hewoBSKQ8j39aN2dEbgRiXSVz8z0NKl/Tm4L1kVtllR9hebwKFpyx+fQ7Y1B1E4oaZNs8wBNzY1RBKva1BpZnVsWDVgMQNMULp2ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=J35KY5cg; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1732178506;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3EfxJ3fmdocd7gaMUfcoBEkyZJYyM0opLmf/LIX4Ouc=;
	b=J35KY5cgWic08luRUh3wS2i/zFl8e/3RrptEUUiFPFgB9tCHEXcZiszF6bqyrUJ8uq1L7w
	QOc96fkeST5KIchdaDrjuZqITniYKOY1lKLGRdQbVQ59fFzKp1iJSbVZmg2lrPh2aXM4hA
	/5xpv/mYw2LAfPSsJslJSmk0qSPg2EM=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-516-1IuieFhEMUu1gRypnRd6Bg-1; Thu, 21 Nov 2024 03:41:43 -0500
X-MC-Unique: 1IuieFhEMUu1gRypnRd6Bg-1
X-Mimecast-MFC-AGG-ID: 1IuieFhEMUu1gRypnRd6Bg
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-38242a78f3eso368988f8f.0
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 00:41:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732178502; x=1732783302;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3EfxJ3fmdocd7gaMUfcoBEkyZJYyM0opLmf/LIX4Ouc=;
        b=t4C3OCsRQGndx9egVlYhNvJ6kRLsH2/Eivxx3akRTT0g1sbNuvx9nKihMoYCemLsJf
         3IVHAua2/0lbg6ccHSeK5ArNz+AbfUgcbzN5cyDNcLkYHeFiFhwsqYTOIVPjg+jHH+AS
         at7N7qlcAdJPgxDEQ0XbT6B7CMLxSOOjO5v8GhaUUMklSQGEkEIg2dadrpBNowa6kMIR
         EokVcDmo8K9tomo8ISjRBwogBMEWxnIHoU3FiqM5suLOjPWbCzQnr9zndzp7Ep1vMF1x
         zjHByAPKJCQWLDOXpD+7VHuRrjLJBiykPPe/rfDcTGa7YOuPkQXEcamE1uDFNHHTUeJf
         42bA==
X-Forwarded-Encrypted: i=1; AJvYcCXVgwvdXkj3AtbEUDLRBapZcdUE099BZsM4CX/wg7kagrRYIgotqd7yJMBCKeGxS+8WHU5/q+H70cCj@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1EiRf32xeFobGlzyMOxZyeMvPet0zUrIBQuFmSPwN+IJ+lM8r
	TCt3LX2LjRfSoL2ySQa4xFHCf+LijCu5IIMCfGOOEcI1gEohI17nOL4n1WtuTryLME2bAVA/vJb
	IYDwtFTLCNFVfAFuuPxrS0ucKR+DdKpqLCSiJhMMiBucj9T3AZGqcZCKgz8Q=
X-Gm-Gg: ASbGncs1lP+zAHGxJ5HUHindDiZAnNu4KredDKxzjw+TadHavr0fFDQwjaMKtKyjNW1
	yJXyuqfoE/lXuvVmih6uceBs6bZVkt+G0VC+Um2vSrVKWpGUk6k4jLZHA+XYBZN4x0WY/znQZb0
	cuPcfYqHCh9wuGjMsEnubYxORMcq8rm1e2zvteWEfs8irbqkZAtIGRUs8j9C0k4hfaFFfbMevMT
	fS16auHcIMMtOUQdpHoWWrRijYJqmG/GRwO3yGJA3X8J/ZEdu/zvUpIoytc1FV176NYGcWxRw==
X-Received: by 2002:a5d:5f54:0:b0:382:383e:84d9 with SMTP id ffacd0b85a97d-38254b2905fmr5006767f8f.48.1732178502001;
        Thu, 21 Nov 2024 00:41:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFWXza0JZ2QIRJ4eZp5svlyv9eMdR/9gHUUjPVmepznkQmbAhjCmDV1VegOdet0I40IWemEKw==
X-Received: by 2002:a5d:5f54:0:b0:382:383e:84d9 with SMTP id ffacd0b85a97d-38254b2905fmr5006743f8f.48.1732178501624;
        Thu, 21 Nov 2024 00:41:41 -0800 (PST)
Received: from [192.168.88.24] (146-241-6-75.dyn.eolo.it. [146.241.6.75])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825493ea2bsm4297621f8f.87.2024.11.21.00.41.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Nov 2024 00:41:41 -0800 (PST)
Message-ID: <13a81556-d28c-46d0-85d6-d2fb1620d24e@redhat.com>
Date: Thu, 21 Nov 2024 09:41:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v3 0/7] Add Aspeed G7 FTGMAC100 support
To: Jacky Chou <jacky_chou@aspeedtech.com>, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de,
 ratbert@faraday-tech.com, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241120075017.2590228-1-jacky_chou@aspeedtech.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20241120075017.2590228-1-jacky_chou@aspeedtech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/20/24 08:50, Jacky Chou wrote:
> The Aspeed 7th generation SoC features three FTGMAC100.
> The main difference from the previous generation is that the
> FTGMAC100 adds support for 64-bit DMA capability. Another change
> is that the RMII/RGMII pin strap configuration is changed to be set
> in the bit 20 fo register 0x50.
> 
> Jacky Chou (7):
>   dt-bindings: net: ftgmac100: support for AST2700
>   net: faraday: Add ARM64 in FTGMAC100 for AST2700
>   net: ftgmac100: Add reset toggling for Aspeed SOCs
>   net: ftgmac100: Add support for AST2700
>   net: ftgmac100: add pin strap configuration for AST2700
>   net: ftgmac100: Add 64-bit DMA support for AST2700
>   net: ftgmac100: remove extra newline symbols
> 
>  .../bindings/net/faraday,ftgmac100.yaml       |  3 +-
>  drivers/net/ethernet/faraday/Kconfig          |  5 +-
>  drivers/net/ethernet/faraday/ftgmac100.c      | 77 +++++++++++++++----
>  drivers/net/ethernet/faraday/ftgmac100.h      | 10 +++
>  4 files changed, 75 insertions(+), 20 deletions(-)

## Form letter - net-next-closed

The merge window for v6.13 has begun and net-next is closed for new
drivers, features, code refactoring and optimizations. We are currently
accepting bug fixes only.

Please repost when net-next reopens after Dec 2nd.

RFC patches sent for review only are welcome at any time.

See:
https://www.kernel.org/doc/html/next/process/maintainer-netdev.html#development-cycle











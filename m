Return-Path: <devicetree+bounces-64121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E3C8B7F99
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 20:18:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 756261F23C08
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 18:18:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF9981836C7;
	Tue, 30 Apr 2024 18:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="BJISBlk+"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7365D181CE8
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 18:18:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714501108; cv=none; b=mt7e7MXNwzxOvxgyaxZkr8j/argurUXLtAc+8NyBJXyZ8czJ89DEm9JmYrUb1VoWvVv/E8joJQmccfwKhH4w3BjM1iRmTPOJFN1Lf1XIusP/BvufN82aVGDoRTQXhmCCVAmld8cQuQtRt6k60KC7o0F/oRZ8QPzyDIRsARsjNS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714501108; c=relaxed/simple;
	bh=UutKKL5v4hLIvztgtNbZifKME80U9mdpqFYB4ZXETek=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rxrRIMBFEP+niGH9tojU/inRuGaz1bG2txSEmaBtOxDPwifDOzO8qzd2Urx8F1iATNwvD4nSOoiX7elDAVAFChNukYckD8k8vG/dVs2hTWrtmeCosm0mwuBG91aWO673QNXb8joB143w0Hxr7uB6FGR70j8TAaG1I5PERpXd2rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=BJISBlk+; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1714501106;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=7bMjhKG6eUiLMls1sKg9TQtPsjkZbGw6Je2cQ0wOI9I=;
	b=BJISBlk+Cu92qJcwXtCCsPGLTS2V0JPMl67490Qak0HN8HhAXua0sVkLLGsw57hwb9U1tQ
	sWI7sopCbXakrYjwLpiaJTfLlU3jiG67DqZs8MBMHUVsKlf6zxchErbOdX5dXujdq2M39R
	sP1LUN6X5l6NJzZbcJ9SpooPIowEn+E=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-671-1eJrbx39NAKg8RlJp1oa5A-1; Tue, 30 Apr 2024 14:18:25 -0400
X-MC-Unique: 1eJrbx39NAKg8RlJp1oa5A-1
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6a0e8859d2bso6181406d6.3
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 11:18:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714501103; x=1715105903;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7bMjhKG6eUiLMls1sKg9TQtPsjkZbGw6Je2cQ0wOI9I=;
        b=J6cOOg/sLAAr5+0/ZaI4ZtvdIIfgB6IfH0UgXmX0P5PO7VxXEdmhi4y2xshzSQm2Vy
         IZBiMEOCC0+21h7FuX29WqNIQueGEM8/3Gh+3Nt5UPFI4DYzaeDBwVKeJV3EoAFKsvv5
         oRPqkyH+si6Z/PxxtQSfS56BsKMyJrCB1udRcfgadXEw56D/JakybX4zP/ZgVMy3KDg0
         OtY+Lob7paSAqfbbbpqaNrPhZLF+315NMFpictazigmv0aPdLZ/eW/eEbGHBOWvmslOf
         2U0jMdwFU4DMXfgJxcRLZt7y0SvDq0DFc0iQbOQPXT+N9VQBQCbFRXvwu1CTA7ureNKK
         Dupw==
X-Forwarded-Encrypted: i=1; AJvYcCUuebq2QPg9v/cZTXGOoFqmCFEi8uSvgWj28YCVS+XLNDAffDtc+wcnmDqaO/Z8TAkTZHUidbL+uYYv/O8MKSAsgOYt0kyZTqrZug==
X-Gm-Message-State: AOJu0YxU531ZmXB/6HZcr8Cr5+R4QM9gYLH++uY1/zJ0dZoHDR/wYC5U
	joiY/bHHOH5k/tM1X+1KICdZdDokwD+Xu8RWwFt9AA0KyYBEeMmEpGPnKNk4JQ5wvMu2qcgHQHw
	shGlBDPmdxoH3qBFZejsVcx4D72OxfNMtwMpAUxWF3U5og0xqOrnd46vVXLI=
X-Received: by 2002:a05:6214:1bcc:b0:699:2760:b44 with SMTP id m12-20020a0562141bcc00b0069927600b44mr136863qvc.8.1714501103199;
        Tue, 30 Apr 2024 11:18:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFUnGrLFR1P3p5845OT+cZcbzwoG5yrAYahQu0eKiEn6wC9wa0Bi1GmTFeAdhouIlg0/I+oSA==
X-Received: by 2002:a05:6214:1bcc:b0:699:2760:b44 with SMTP id m12-20020a0562141bcc00b0069927600b44mr136842qvc.8.1714501102808;
        Tue, 30 Apr 2024 11:18:22 -0700 (PDT)
Received: from x1gen2nano ([2600:1700:1ff0:d0e0::33])
        by smtp.gmail.com with ESMTPSA id y10-20020a0ceaca000000b006a0e69dc029sm439759qvp.82.2024.04.30.11.18.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 11:18:22 -0700 (PDT)
Date: Tue, 30 Apr 2024 13:18:20 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Sagar Cheluvegowda <quic_scheluve@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, kernel@quicinc.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: mark ethernet devices as
 DMA-coherent
Message-ID: <tsdaohzq7sk5d5fnakv6hoq4ykytbkrtxv7bxvbctu5bnyh5wi@6dgtg754axyo>
References: <20240425-mark_ethernet_devices_dma_coherent-v1-1-ad0755044e26@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240425-mark_ethernet_devices_dma_coherent-v1-1-ad0755044e26@quicinc.com>

On Thu, Apr 25, 2024 at 04:07:10PM -0700, Sagar Cheluvegowda wrote:
> Ethernet devices are cache coherent, mark it as such in the dtsi.
> 
> Change-Id: Id180fae617f2e348c0a80c6664b131cc57fcb4d6
> Signed-off-by: Sagar Cheluvegowda <quic_scheluve@quicinc.com>

In addition to what others have said, I think you should include
fixes tags for this, so something like:

Fixes: ff499a0fbb23 ("arm64: dts: qcom: sa8775p: add the first 1Gb ethernet interface")
Fixes: e952348a7cc7 ("arm64: dts: qcom: sa8775p: add a node for EMAC1")

to indicate this isn't just an improvement, but a proper bug fix.

Thanks,
Andrew



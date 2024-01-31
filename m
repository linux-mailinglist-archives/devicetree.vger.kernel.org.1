Return-Path: <devicetree+bounces-37327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA008447EB
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 20:19:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0EB691F24FE6
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 19:19:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0646938FA0;
	Wed, 31 Jan 2024 19:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="VBIKZNOx"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B3F38387
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 19:18:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706728735; cv=none; b=WSGj1RDQMoYcyolIwUo/R/JHfP3InWXaTGnqowLjD4WKyFE2U6W9GFsi7YAPijyPONR2/6/xRqQ9iKuGsUcly3LMXmyOMHNFx6jQdgGfBZb4Y56iy+LVss7rPDj0jTWJ2G0BZpWyr0qxVbgR/aKN/dEDOYqMwjOLGt8s/5/YfdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706728735; c=relaxed/simple;
	bh=V7uX1Z+HMIKnledjuxyN2oiU7vwcWVYSNM5AnA5Xurw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KiA4QnZKuc7mUq+sFywLLSbWsB9NZbNrLmZI48HeLQydodKa9+WAotT4AQFdXncOepT/syETgRlxBd8bBjzBciuJ1p5X6hOCJvm34ogzvkD/Sh6ZbrXB4jToFb7Oou/JOiE0zBf9GzgxgiollvHUe9GmJ8KBdi1gxCj9L8V4CJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=VBIKZNOx; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1706728733;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=J2JFmRBUeULrXhgIngZnP4ofs2GfqTY4onOqiKtXaVo=;
	b=VBIKZNOxFYG3N78+cIRqpyAaZ8n2Isbu95Pso8VAR4H2LfAwJAT646B+bbMiqD95HiWGdY
	ZvZslOmOZ2a3WmV5TVlroO6X4BSJD8RqGlwSZHP9itFG59hIgxL3nW7Rf0HyYdnDvgaHHk
	3wn1thEeOyjGIqwcEpodCrPE3ckxB0g=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-572-gbj28ruHPTaJQH4KpvIHkg-1; Wed, 31 Jan 2024 14:18:51 -0500
X-MC-Unique: gbj28ruHPTaJQH4KpvIHkg-1
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-68c43b9f71aso1631076d6.0
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 11:18:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706728731; x=1707333531;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J2JFmRBUeULrXhgIngZnP4ofs2GfqTY4onOqiKtXaVo=;
        b=cnnW7n/Sp8EvWhj7+CiQAxpFtcfyyJbTtpMmJWxytnYysrRtkooaoHExulBKFwpbh2
         X6Q5pQgS2DTOUhB7HfDylSym0a0LR/3yfL5aHJh9NhZL0fw9WagrBgfjN42mBdK2ksIC
         5GeVEB+7QbbNQaiI9IIKJ7IRDFBUX0MVwWne1158FqIHvscNboC25kQix/AsJTwSWx31
         ZKVLPqvZbkChwD6ZSrHsnYz0CGQoDBrW7q90ga1vj3ZvJJLLyu4Iqz5pP7Wz9zkGfACq
         pRydZMXRsGcC5//1xdch+qxc1/BBLSFf5/42NHPXfILSuohoLhnmme+c9idKdeROb0A3
         G+RA==
X-Gm-Message-State: AOJu0YzQLV5ezvX/CDU509Ctc8oBt+Rl2vC1+euLDhxmyIJMqZhCkkMI
	adwboOY2Nod3WV3Soa6MaiPkIWWMhja/sQQbLutTPS+A8PCiUmi8sN+kSiAS/mlvyEUEHQCqHJq
	VUqzTJUTiCsiFKSDwviXaOyheLd8o986bSpuiBur4JcGnTLpRg3WY2PB538o=
X-Received: by 2002:a05:6214:d6a:b0:686:abad:6f13 with SMTP id 10-20020a0562140d6a00b00686abad6f13mr2742063qvs.7.1706728731249;
        Wed, 31 Jan 2024 11:18:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH/ot/0D0L1TsfokRaqu8co5wsamSSB6F1cvOFCxO5u+jgj4kQI3ddtokfTmzzEhX22aY9Lmg==
X-Received: by 2002:a05:6214:d6a:b0:686:abad:6f13 with SMTP id 10-20020a0562140d6a00b00686abad6f13mr2742045qvs.7.1706728730962;
        Wed, 31 Jan 2024 11:18:50 -0800 (PST)
Received: from localhost (pool-71-184-142-128.bstnma.fios.verizon.net. [71.184.142.128])
        by smtp.gmail.com with ESMTPSA id lx7-20020a0562145f0700b0068c67956896sm1351784qvb.8.2024.01.31.11.18.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jan 2024 11:18:50 -0800 (PST)
Date: Wed, 31 Jan 2024 14:18:49 -0500
From: Eric Chanudet <echanude@redhat.com>
To: Ninad Naik <quic_ninanaik@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, quic_psodagud@quicinc.com, quic_kprasan@quicinc.com, 
	kernel@quicinc.com
Subject: Re: Re: [PATCH v2] arm64: dts: qcom: sa8775p: Add new memory map
 updates to SA8775P
Message-ID: <xxi3fxzawjuszgcjfozbh2kddxtnmnj5xedns2tcbvdixvl5er@cx5ayg2z5wca>
References: <20240125055134.7015-1-quic_ninanaik@quicinc.com>
 <p462blapygqos3upzf74las4bze7b54guln4d3cvblw6dtsxga@676j2l7fchy4>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <p462blapygqos3upzf74las4bze7b54guln4d3cvblw6dtsxga@676j2l7fchy4>

On Tue, Jan 30, 2024 at 09:52:44AM -0500, Eric Chanudet wrote:
> On Thu, Jan 25, 2024 at 11:21:34AM +0530, Ninad Naik wrote:
> > New memory map layout changes (by Qualcomm firmware) have brought
> > in updates to base addresses and/or size for different memory regions
> > like cpcucp_fw, tz-stat, and also introduces new memory regions for
> > resource manager firmware. The updated memory map also fixes existing
> > issues pertaining to boot up failure while running memtest, thus
> > improving stability.
> > 
> > This change brings in these corresponding memory map updates to the
> > device tree for SA8775P SoC platform, which currently is in its
> > development stage.
> > 
> > Signed-off-by: Ninad Naik <quic_ninanaik@quicinc.com>
> > ---
> > Changes since v1:
> > - Updated commit message.
> > - Fixed reserved memory node naming, by replacing underscore with
> >   hyphen.
> > - https://lore.kernel.org/all/20240118155711.7601-1-quic_ninanaik@quicinc.com/
> > ---
> >  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 103 +++++++++++++++++++++++---
> >  1 file changed, 94 insertions(+), 9 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> > index a7eaca33d326..2e9606c80381 100644
> > --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> > [snip]
> > @@ -373,8 +378,43 @@ smem_mem: smem@90900000 {
> >  			hwlocks = <&tcsr_mutex 3>;
> >  		};
> >  
> > -		cpucp_fw_mem: cpucp-fw@90b00000 {
> > -			reg = <0x0 0x90b00000 0x0 0x100000>;
> 
> On the latest firmware I have access to (mid-January), I still trigger a
> fault on that block with these changes applied:
> [    0.000000] earlycon: qcom_geni0 at MMIO 0x0000000000a8c000 (options '115200n8')
> [    0.000000] printk: legacy bootconsole [qcom_geni0] enabled
> [    0.000000] early_memtest: # of tests: 1
> [    0.000000]   0x0000000090880000 - 0x00000000908b0000 pattern 0000000000000000
> [    0.000000]   0x00000000908c1000 - 0x00000000908f0000 pattern 0000000000000000
> [    0.000000]   0x0000000090b00000 - 0x0000000090c00000 pattern 0000000000000000
> [    0.000000] Internal error: synchronous external abort: 0000000096000010 [#1] PREEMPT SMP
> [snip]
> 
> Adding back 0x90b00000-0x90bfffff as no-map passed memtest=1.

A new firmware was made available end of last week. With that, the
memtest completes successfully applying these changes on next-20240129.

Tested-by: Eric Chanudet <echanude@redhat.com> # sa8775p-ride

-- 
Eric Chanudet



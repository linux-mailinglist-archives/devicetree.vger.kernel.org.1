Return-Path: <devicetree+bounces-67181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9D38C6DF9
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 23:49:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 02FCD283F0F
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 21:49:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E60B1155A57;
	Wed, 15 May 2024 21:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ferroamp-se.20230601.gappssmtp.com header.i=@ferroamp-se.20230601.gappssmtp.com header.b="JB6aB5bk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C23F15B555
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 21:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715809740; cv=none; b=WVXSbFkBv8+JdLa1o9ya00ILyIyhLa6TfXR+6gP2fx0tWqemoFVzrM1Y7cWCVIFyHKdT1uxWS6YWmtdFW36CwrpJ7uHksz6uOy69t2mAQwIPaxrSA/Yv6rgqLx+chsgCB+8TAnH1Cy+i2JJ8bZI7UJV0dDyWXtxZgVCEPJQc5NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715809740; c=relaxed/simple;
	bh=dYxBvXIkkIPnkxqSbj9IyfDH5umyBNzNhJPJzCi/wu4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kjINlkWg2BYLxU6pTbfHOfxq4joqR7PnA19ORn7HFKkqMno2miUw8JmLOC1+KGFuufWoqpfOC0Gh7haeYJTLXPoOYGK7m82wFnfj6rd3+fPNrLTu+3zE7zndIZWxqcDvjTi53ex/zAa/m6JPIylvDLOhjtBEmeE/deQOFQnRH+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ferroamp.se; spf=pass smtp.mailfrom=ferroamp.se; dkim=pass (2048-bit key) header.d=ferroamp-se.20230601.gappssmtp.com header.i=@ferroamp-se.20230601.gappssmtp.com header.b=JB6aB5bk; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ferroamp.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ferroamp.se
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-523b20e2615so73850e87.1
        for <devicetree@vger.kernel.org>; Wed, 15 May 2024 14:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ferroamp-se.20230601.gappssmtp.com; s=20230601; t=1715809737; x=1716414537; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NbHxK0tJj+d8ac7+efgFv40pBbo32UT05hThpFtt0Dk=;
        b=JB6aB5bkYA53KgfXnlusszz1aNBPGiRfCO01n6ELYVxY+h2UfUA47v5Hg4KsYaZfm5
         1ezkLibqogfhP1/hAQvsbMRGeGQfJIbwqRONpUXEwzL0iTHRmLd025ahh26Rep3wBGOs
         l6jMnZkJKBdvqmCQ7gESQHk6F0td0MMWqZfKliXLazBLsaxU5LCVF1vAr2EmUtDqbHgU
         dfmEMMB6sdKpZqjCiGDtQYr7J8mfdkhaifKuuMLkNcev5seUzebg2TVQUzPTyQheVT6Q
         2Vc3a8o0dr4apMS2RRVgEbxZE/sGpwu5aweQvhr9asBTPJHb1DPS3z6vHliiBVRiwdVZ
         ePeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715809737; x=1716414537;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NbHxK0tJj+d8ac7+efgFv40pBbo32UT05hThpFtt0Dk=;
        b=d6CrfvGb2JGBJL5lMTypLXbkk2/BFHavNpLTBuP2mqpuNLa5g6IsnQJx6sSaFY7+K2
         w+XIc6/LAvtimhj76jK8A8tQwq1J59rxyiGEWPNZkSl1anQxdE7zUI4vGw65B5jiK3rr
         OhQ4j9+jM3iuDfueV8JX8a4WzalVP7BF+sNrG8pCfXLxWbYUviEssHDc74MEQgZBJ+Cl
         t4QU5Xp2zF36dBHWmZgTbaDaC3pJQ2v6Zjy+5Ut1DBfrNRgu1pThEZsEceg26/3C5U1A
         eMabenV+0otxSCXUvwr9EjNV5QX8e/ZDjHTf3HFBTg5PQD5kt7kizRLcPcDNcckgEcSA
         cs+A==
X-Forwarded-Encrypted: i=1; AJvYcCVnv6uF2AmuCavRrFD3CX4HMSXocKyYAORMMYeRAM5kgMUVU3zOYy8usoBYnh1SpuMGzIZBFHcirT+nPWDDBcf6OSvXlS3kpTpddg==
X-Gm-Message-State: AOJu0YzmGDpYvSR6xEwwMt7yjtjaRwon2cJUFyCo3SUZB7/NeBDXjkV/
	MWedoGF4zAxNO91gWD6RsG9Qn3U0QTzRFR2/q9BiAyti4wyYuNWWQ6XJtIheWh8=
X-Google-Smtp-Source: AGHT+IFVo+jBTASsbcknHoB6KxnDq74BPVXn3gknwHhVlO4HPpwL5hatGD02RQSDY6ts4L0JE+ESqg==
X-Received: by 2002:ac2:494a:0:b0:51c:dffc:41f2 with SMTP id 2adb3069b0e04-5220fa71c21mr10626186e87.1.1715809737520;
        Wed, 15 May 2024 14:48:57 -0700 (PDT)
Received: from minibuilder (c188-149-135-220.bredband.tele2.se. [188.149.135.220])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-523ba138259sm26690e87.269.2024.05.15.14.48.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 May 2024 14:48:57 -0700 (PDT)
Date: Wed, 15 May 2024 23:48:55 +0200
From: =?iso-8859-1?Q?Ram=F3n?= Nordin Rodriguez <ramon.nordin.rodriguez@ferroamp.se>
To: Parthiban.Veerasooran@microchip.com
Cc: andrew@lunn.ch, Pier.Beruto@onsemi.com, davem@davemloft.net,
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
	horms@kernel.org, saeedm@nvidia.com, anthony.l.nguyen@intel.com,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	corbet@lwn.net, linux-doc@vger.kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, Horatiu.Vultur@microchip.com,
	ruanjinjie@huawei.com, Steen.Hegelund@microchip.com,
	vladimir.oltean@nxp.com, UNGLinuxDriver@microchip.com,
	Thorsten.Kummermehr@microchip.com, Selvamani.Rajagopal@onsemi.com,
	Nicolas.Ferre@microchip.com, benjamin.bigler@bernformulastudent.ch
Subject: Re: [PATCH net-next v4 05/12] net: ethernet: oa_tc6: implement error
 interrupts unmasking
Message-ID: <ZkUtx1Pj6alRhYd6@minibuilder>
References: <ZjKJ93uPjSgoMOM7@builder>
 <b7c7aad7-3e93-4c57-82e9-cb3f9e7adf64@microchip.com>
 <ZjNorUP-sEyMCTG0@builder>
 <ae801fb9-09e0-49a3-a928-8975fe25a893@microchip.com>
 <fd5d0d2a-7562-4fb1-b552-6a11d024da2f@lunn.ch>
 <BY5PR02MB678683EADBC47A29A4F545A59D1C2@BY5PR02MB6786.namprd02.prod.outlook.com>
 <ZkG2Kb_1YsD8T1BF@minibuilder>
 <708d29de-b54a-40a4-8879-67f6e246f851@lunn.ch>
 <ZkIakC6ixYpRMiUV@minibuilder>
 <6e4207cd-2bd5-4f5b-821f-bc87c1296367@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6e4207cd-2bd5-4f5b-821f-bc87c1296367@microchip.com>

On Tue, May 14, 2024 at 04:46:58AM +0000, Parthiban.Veerasooran@microchip.com wrote:
> >> Is it doing this in an endless cycle?
> > 
> > Exactly, so what I'm seeing is when the driver livelocks the macphy is
> > periodically pulling the irq pin low, the driver clears the interrupt
> > and repeat.
> If I understand correctly, you are keep on getting interrupt without 
> indicating anything in the footer?. Are you using LAN8650 Rev.B0 or B1?. 
> If it is B0 then can you try with Rev.B1 once?
> 

I'll check the footer content, thanks for the tip!

All testing has bee done with Rev.B0, we've located a set of B1 chips.
So we'll get on resoldering and rerunning the test scenario.

R


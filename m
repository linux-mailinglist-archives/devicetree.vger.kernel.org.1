Return-Path: <devicetree+bounces-34616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B4C83A566
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 10:28:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3BA68B2D6A9
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 09:26:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A283B1862A;
	Wed, 24 Jan 2024 09:24:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b="KFkCKND5"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-225.siemens.flowmailer.net (mta-64-225.siemens.flowmailer.net [185.136.64.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F348718E0F
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 09:24:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706088261; cv=none; b=Sgp8Fw8EmRy10EiiPE67ojUaaTMJbM+t0g/TIFEVAAkF5Pw0K38xEbB1ntL62uQqO1kO2Y1R6y45Xo3ZqA5Mfp3xZAj9VvOmZkubopMM6gZXDr9p+4bXtywmHoLN08F+m3CNm93aii9swn1Gyn8Eps4l9IS22RM81Df7gwmd99M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706088261; c=relaxed/simple;
	bh=MeoFvYCX5I/4Iw9kDB6v7/eQYwHW6zdRyLzG3rP6rpU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BbNa4WWu0nAI0Xih9DkWYDgjVJefTWKnq9Nio7Cn620s2hNnRXwyUp0sgcWRKilVUdFJTDUc2rfkfPOVmoquUqBkFmE9kS7q5ToBSgdjooijrrsDWYtvosFfbAnHk+Eu95DI4GEDcsH6xhyXmUBgFCvPX07NKZoPSqikSqUyilY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b=KFkCKND5; arc=none smtp.client-ip=185.136.64.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-225.siemens.flowmailer.net with ESMTPSA id 20240124092414dc0790205361e9f705
        for <devicetree@vger.kernel.org>;
        Wed, 24 Jan 2024 10:24:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=diogo.ivo@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=MeoFvYCX5I/4Iw9kDB6v7/eQYwHW6zdRyLzG3rP6rpU=;
 b=KFkCKND5wlYq3tF8QVLXmi5XWvl6k/h21izYNYWzHKsSobtUBEjqlWhXY+2//kPhcfYWUY
 pDeaYxCum81P4MXMVRZ/vNA75lwLJ21HLvOMH5/xXgu0Rfzt3sg95gq4qDAJIMx9rztSIJyI
 gbHbwAH8wZsaoRMwhmNeJdmTGwLQk=;
Message-ID: <8c4e1e69-210c-4eb7-bd54-97adb16e7c06@siemens.com>
Date: Wed, 24 Jan 2024 09:24:13 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v2 0/8] Add support for ICSSG-based Ethernet on SR1.0
 devices
Content-Language: en-US
To: Roger Quadros <rogerq@kernel.org>, danishanwar@ti.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, andrew@lunn.ch, dan.carpenter@linaro.org,
 grygorii.strashko@ti.com, jacob.e.keller@intel.com, robh@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 devicetree@vger.kernel.org
Cc: jan.kiszka@siemens.com, diogo.ivo@siemens.com
References: <20240117161602.153233-1-diogo.ivo@siemens.com>
 <6b345be6-3bd0-4410-8255-97bf661fc890@kernel.org>
From: Diogo Ivo <diogo.ivo@siemens.com>
In-Reply-To: <6b345be6-3bd0-4410-8255-97bf661fc890@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1320519:519-21489:flowmailer

Hi all, thank you for your input so far.

On 1/23/24 12:15, Roger Quadros wrote:
> Hello Diogo,
>
> On 17/01/2024 18:14, Diogo Ivo wrote:
>> Hello,
>>
>> This series extends the current ICSSG-based Ethernet driver to support
>> Silicon Revision 1.0 devices.
>>
>> Notable differences between the Silicon Revisions are that there is
>> no TX core in SR1.0 with this being handled by the firmware, requiring
>> extra DMA channels to communicate commands to the firmware (with the
>> firmware being different as well) and in the packet classifier.
>>
>> The motivation behind it is that a significant number of Siemens
>> devices containing SR1.0 silicon have been deployed in the field
>> and need to be supported and updated to newer kernel versions
>> without losing functionality.
> Adding SR1.0 support with all its ifdefs makes the driver more complicated
> than it should be.
>
> I think we need to treat SR1.0 and SR2.0 as different devices with their
> own independent drivers. While the data path is pretty much the same,
> also like in am65-cpsw-nuss.c, the initialization, firmware and other
> runtime logic is significantly different.
>
> How about introducing a new icssg_prueth_sr1.c and putting all the SR1 stuff
> there? You could still re-use the other helper files in net/ti/icssg/.
> It also warrants for it's own Kconfig symbol so it can be built only
> if required.
> Any common logic could still be moved to icssg_common.c and re-used in both drivers.

Yes, that sounds like a more reasonable approach. I will refactor the code

and come back with a v3, hopefully with all patches getting sent out :)


Best regards,

Diogo



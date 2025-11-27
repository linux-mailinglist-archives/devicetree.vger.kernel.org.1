Return-Path: <devicetree+bounces-242747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id CA82DC8E4EA
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 13:46:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 35413350B05
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 12:46:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DBD31E5B64;
	Thu, 27 Nov 2025 12:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="FmqeQw0Z";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="S+8P6TEk"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D425117BA2
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 12:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764247583; cv=none; b=NPe7MsjXWKaGe1iJOeCLDGN4xsT+s73/W7wrzVURqg/3DhbFUsBme8y6SthpOKDHySxUeKHF8kwjKe27+HH2pn13YMgY3Vo/9lnpwKxJQNF8ln3q94+gr1I5ubk/lmFI/+OMp3oJX8ewqh+hMnHE/O+JLcA53WjpiECwY892exs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764247583; c=relaxed/simple;
	bh=sbR8rj5HdwNUwTJf7rPxcnFUE8stUOVZpJasHjCHCzs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MZmnBAciHyEZVPBlni6+O13WIvr4orqJote+2ZotVFsZsjkIfoRbfjpnqnp9maFdrODgFSEmSrN8d9nOzBQajN03R1yhKWldxCaUkYbAxp6sNjmscIe17ZzqP+AopUOrt7ik3gKcs6hV3KkjRHpsZ2ANQeD6lrOnEAA580/GIq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=FmqeQw0Z; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=S+8P6TEk; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764247580;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lU4Q69fwFr8kha5ORL2VucV6zKxUebFEBdC5v2fRfrc=;
	b=FmqeQw0ZNOMWobmmNXbFe9EeVuNj2U60ST/o9IlidZXjQCIlfIvlnZV4fGgVN89k8v1lbo
	iCJOMVy1ESeTjHPeBxKWg5TobdT/SirSYkf9pNLmR6kljmJkSY4paTMNpfzIuOJwUjWyyT
	natwBeKEIJY8CF1QwHvih7L0C2tq4jU=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-664-tI2eL5a0M9aRWidbtfBZjQ-1; Thu, 27 Nov 2025 07:46:19 -0500
X-MC-Unique: tI2eL5a0M9aRWidbtfBZjQ-1
X-Mimecast-MFC-AGG-ID: tI2eL5a0M9aRWidbtfBZjQ_1764247578
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-42b56125e77so495528f8f.3
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 04:46:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1764247578; x=1764852378; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lU4Q69fwFr8kha5ORL2VucV6zKxUebFEBdC5v2fRfrc=;
        b=S+8P6TEkMeIs+7F2yiYJbnOYj+YuzYd78buBHXa7YJemsmZume7ntc50Ap/D36PaLt
         BvdJms7thPv08rgGqoqpdAJ3JUM5UwOlPR3mJTzsz8aSfv4iHPDyEtpNCZFKekOk+5nC
         oYXatcBy8c/Du8gHRJ8gT6sujRvNO6jfeY2PtLPleL1HVutRwkcW1dHaF/xk4M9RfLFb
         HzlB37M+JrXpzQ/3TT7H53yeXc6cSBHGGznga4YCYMdCsPG0Az1tXpRyeQ8UsGgnvExA
         JLFOmUXgFKjqeaUAM/q9X46r3KR/qRjkze6IACHEThqXWI2jn+f8XjwADjJDr7BIvca5
         5QEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764247578; x=1764852378;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lU4Q69fwFr8kha5ORL2VucV6zKxUebFEBdC5v2fRfrc=;
        b=G6YTTmHSjga9TIFOB4oyWyaLtviGfIrhZZXUwXW68iNfquvDUmIoBFYDlVw5JoxtBZ
         ufgSKxlxv9nT+68bUbKOSbnVbX/klJ31FP48me9a9quFovBdUzkjcbTF+GaEuKJTziTx
         +Mk0S9T5GATpgF7MA+Rq+zyAWJ4yfKuMCzNYFSjff3mWbsb4N2i0tpEMrJgVmcSsrgDZ
         IZPO2837tZkty1DdTCe6TUtuEuotcExiIhxkSFeQAtist8TuqTsrp7cXcJkEaul8XMKr
         uyrF/UtYp02s+O/3osTMqwwCaoiAqkCQCLCknM6MjFPfzBSrpCqaWSPx3vVC5ikGyh12
         k21A==
X-Forwarded-Encrypted: i=1; AJvYcCXmNr5e6MisHRCdWvV4MXpRfbRGWY74/Qc33jY+vvGrxA5xXQhIO2eygos38nHgq8pSHTRVO+T7Xbf/@vger.kernel.org
X-Gm-Message-State: AOJu0YyPIMmVnpyag+pvqqOoM9vXYezlBAEPi54zdnLHJiRHk0BL5k2g
	NEaAledSErnKBGouKlmztgFrzPWNufp3vYcuPWvIsGSvQ6kFLux44aZEKRnSXFK566KAsZuCjFf
	3v67nXEQCxnTJmFdGcCVZtKQLzUnprZxv8QhfIdKbu27jtX7NWEfb+ApNrZEEYp0=
X-Gm-Gg: ASbGncuub4UD8iuZ89EcKCTGVAqIboUKA9KrYcomvdw21Rw7ho0DqOdLEoxbHWB0j99
	RW/WUKCvccdePpgqAvtT8BijTU1n+Leu5crFRWut6OMoFyiFOjTeWp4Yhhcl1hhsdI/Q2A1phlc
	wOD1LUgm2M53QidAAX2VZQ3KGx9vgwgviF4e0g71aPSbw31kvQ1EOHPUk97G3MY5blDBz8N7k0X
	GwAearfiuJM2Bomez2t956ehEK0ZmcyDkbLQZXuAJ625Hakq9MJRvR3GeGShI2Qa3YL2pPT7E8X
	/2ErATzrtj5slEtDirMOkfpJAvH1gHzk/RLzrlkGLYUzrqWrdI+mbYp8d5TK0xfaik4YBrrJ7xj
	Gwrr9pha1qSAnTg==
X-Received: by 2002:a5d:588c:0:b0:3ee:3dce:f672 with SMTP id ffacd0b85a97d-42e0f1e3428mr10930151f8f.4.1764247578252;
        Thu, 27 Nov 2025 04:46:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFxtcXT2mGT29Cj2YqBl/we77yTx8kGjUHM5RCqeOMm5jzSp7i0tYkAfQYuvbu+j+zndDkpzg==
X-Received: by 2002:a5d:588c:0:b0:3ee:3dce:f672 with SMTP id ffacd0b85a97d-42e0f1e3428mr10930122f8f.4.1764247577824;
        Thu, 27 Nov 2025 04:46:17 -0800 (PST)
Received: from [192.168.88.32] ([212.105.155.212])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5d6049sm3525667f8f.10.2025.11.27.04.46.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 04:46:16 -0800 (PST)
Message-ID: <9c88eec2-0985-4e05-8f0b-8ce525ddca94@redhat.com>
Date: Thu, 27 Nov 2025 13:46:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v19 00/15] net: phy: Introduce PHY ports
 representation
To: Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Jakub Kicinski <kuba@kernel.org>
Cc: davem@davemloft.net, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 thomas.petazzoni@bootlin.com, Andrew Lunn <andrew@lunn.ch>,
 Eric Dumazet <edumazet@google.com>, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Herve Codina <herve.codina@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 =?UTF-8?Q?K=C3=B6ry_Maincent?= <kory.maincent@bootlin.com>,
 =?UTF-8?Q?Marek_Beh=C3=BAn?= <kabel@kernel.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>,
 =?UTF-8?Q?Nicol=C3=B2_Veronese?= <nicveronese@gmail.com>,
 Simon Horman <horms@kernel.org>, mwojtas@chromium.org,
 Antoine Tenart <atenart@kernel.org>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Romain Gantois <romain.gantois@bootlin.com>,
 Daniel Golle <daniel@makrotopia.org>,
 Dimitri Fedrau <dimitri.fedrau@liebherr.com>,
 Tariq Toukan <tariqt@nvidia.com>
References: <20251122124317.92346-1-maxime.chevallier@bootlin.com>
 <20251126190035.2a4e0558@kernel.org>
 <966bb724-59bd-4f45-a2a6-89a1967a851e@bootlin.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <966bb724-59bd-4f45-a2a6-89a1967a851e@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/27/25 11:10 AM, Maxime Chevallier wrote:
> On 27/11/2025 04:00, Jakub Kicinski wrote:
>> On Sat, 22 Nov 2025 13:42:59 +0100 Maxime Chevallier wrote:
>>> This is v19 of the phy_port work. Patches 2 and 3 lack PHY maintainers reviews.
>>>
>>> This v19 has no changes compared to v18, but patch 2 was rebased on top
>>> of the recent 1.6T linkmodes.
>>>
>>> Thanks for everyone's patience and reviews on that work ! Now, the
>>> usual blurb for the series description.
>>
>> Hopefully we can still make v6.19, but we hooked up Claude Code review
>> to patchwork this week, and it points out some legit issues here :(
>> Some look transient but others are definitely legit, please look thru
>> this:
>>
>> https://netdev-ai.bots.linux.dev/ai-review.html?id=5388d317-98c9-458e-8655-d60f31112574
> 
> Is there a canonical way to reply to these reviews ? Some are good, some
> aren't.

AFAIK there isn't yet a formalized process for that.

> I'll summarize what I've done in the changelog, but it skips any
> potential discussions that could've been triggered by these reviews. I
> guess this is a matter of letting this process stabilize :)

If you have time it would be great if you could send an email to Chris
Mason (clm@meta.com) detailing the bad parts and why are incorrect.

Thanks,

Paolo



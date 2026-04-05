Return-Path: <devicetree+bounces-284774-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id zt4aOy+V0mkxZAcAu9opvQ
	(envelope-from <devicetree+bounces-284774-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Apr 2026 19:00:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE9039F168
	for <lists+devicetree@lfdr.de>; Sun, 05 Apr 2026 19:00:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 603A43002309
	for <lists+devicetree@lfdr.de>; Sun,  5 Apr 2026 17:00:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F4913101B6;
	Sun,  5 Apr 2026 17:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVbb57zM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4C82D4816;
	Sun,  5 Apr 2026 17:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775408426; cv=none; b=OpBfLNcJ19/uyWnJRqzHHohUk7wXHxGxVq13G8Lvk013qWWAchInbXSuEF/1ys775YpSGNK/ndZ8bo3FTx2fhAvWjeTM7VXjjx3xOCoQyk3ZEvkG1PSvH8miPK59xFDBtZAdJH5VQME78pagAGncXPUKFU7WFF8U3ZvG1C93Iy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775408426; c=relaxed/simple;
	bh=7RinMIgD/mBUiJpF1jyOGuCOHbDKTi/0fzzc5+uGT1U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dEESaynT7epJF2Cv0Ppkdqf/T6nr806ehyxweIlss9tGEcYb/WW8T15CvCRb9wRHUB1Irz2+iLJR8VLSB5hr1/jRCwb2JUMcW7VXpbivjM/P1lzTLp7vyBEK4M2yJdP71R60mszkiRaeq2KTWab407jiv35XA20E0j5VjK2eF0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVbb57zM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A4F7C116C6;
	Sun,  5 Apr 2026 17:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775408425;
	bh=7RinMIgD/mBUiJpF1jyOGuCOHbDKTi/0fzzc5+uGT1U=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=XVbb57zMmaf+rsoseeot3i1zMj74d9p06gFHLFWw4qIKPEh6BYSZcP+peGOkU5X/6
	 WWACFTOR2TlHD0HjumeBAS8v71o3Bl9240oLHHnG80nQtV5CCOtDfYYEylq897ivTC
	 gqF38omE6cSj0Z0tQP3RwsrVQzzJkU1LUn9z6p6jRS6RbI+7BmS76eSYTZRnpG9I5y
	 jpPbt5Mb8Xhhq2HtIzQMGrKK9zNoki7cC4RV71aZLDeafWGd1ZGAn41LpwpZ5w5rtU
	 yBVHKUfIrmYdbuJLwl7PUdaprBDz4MG8NH5IegJgh29TKSigIpbtcz4f93JgiLG4gU
	 yHlzF0ljyEAGw==
Message-ID: <32fc8606-d475-4cc0-b2a1-c5549aef402f@kernel.org>
Date: Sun, 5 Apr 2026 19:00:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] ASoC: Add support for GPIOs driven amplifiers
To: Herve Codina <herve.codina@bootlin.com>, Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Saravana Kannan <saravanak@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christophe Leroy
 <christophe.leroy@csgroup.eu>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20260330101610.57942-1-herve.codina@bootlin.com>
 <4daaa17d-5673-4efa-92ce-4f2ce87eb812@sirena.org.uk>
 <20260330173944.3fdc27ec@bootlin.com>
 <27e23c7b-4aca-41d2-96b8-df02c52e8121@sirena.org.uk>
 <20260330184128.68a4e779@bootlin.com>
Content-Language: fr-FR
From: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
In-Reply-To: <20260330184128.68a4e779@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,perex.cz,suse.com,vger.kernel.org,csgroup.eu,bootlin.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-284774-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chleroy@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 7EE9039F168
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Mark,

Le 30/03/2026 à 18:41, Herve Codina a écrit :
> On Mon, 30 Mar 2026 16:48:54 +0100
> Mark Brown <broonie@kernel.org> wrote:
> 
>> On Mon, Mar 30, 2026 at 05:39:44PM +0200, Herve Codina wrote:
>>> Mark Brown <broonie@kernel.org> wrote:
>>
>>>> This sounds a lot like simple-amplifier.c?
>>
>>> The gpio driven amplifier proposed is more generic and can handle
>>> more complex design. I.e. op-amp + resistor and/or line (mute,
>>> bypass) switching. Hardwares handled by this driver are a superset
>>> of just dio2125 and so simple-amplifier.c.
>>
>>> IMHO, it makes sense to have a specific driver for those kind
>>> of hardware design.
>>
>> Right, and if it's a superset it feels like it should all be one driver
>> rather than two separate ones.
> 
> Also, it is worth noting that simple-amplifier.c considered a stereo
> amplifier (left + right).
> 
> Considering the two op-amp available in dio2125 as just two op-amp used
> in two separated mono channel with additional component to switch related
> to resistors (independant switching for each channel) means that almost
> everything proposed in audio-gpio-amp have to be duplicated (gain, mute,
> bypass per channel) instead of just instantiate two audio-gpio-amps.
> 
> On the other hand, there is no reason to handle a stereo component in
> audio-gpio-amp. Further more with the hardware I have handling a stereo
> component doesn't make sense. Indeed, I only have independent mono lines
> with their own resistor switched amplification circuitry.
> 
> I could merge everything in one .c file but only a few part of source code
> will be common to simple-amplifier and audio-gpio-amp. IMHO the resulting
> merged code will look like two different drivers merged in one .c file.

Following explanation from Herve I have the feeling that combining the 
two drivers into a single one will bring more complexity for little benefit.

Do you still think it is worth having a combined driver allthough they 
address quite different setups ?

Thanks
Christophe


Return-Path: <devicetree+bounces-244446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3BBCA5067
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 19:59:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C0DB43161975
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 18:56:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0E8F347BA8;
	Thu,  4 Dec 2025 18:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b="Xe2AJr1z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1C6347BA3
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 18:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764874272; cv=none; b=aCfyFndeYWyQWQBhk1bkFjReIqi24Dk/mPMY1BPleRtPyDBJw27ITfBIZ/Z4cgfHdI+nGgVH7tjCIxTpT55ijRnGK3jL0mpgSkXDe5n0AupQh5MGR6YzcMWT8wJQy3OSeIgdPwyhTJgoI5sDSqrLxkNty4Qp3V2kQmuElD8K/t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764874272; c=relaxed/simple;
	bh=kDK9ciQB4/2Y+PeaNUIZ/XhpMtXFYN+DB/bleSHTeWE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Jn1Fs1VZK6apSDVdDFPhP4+wfoA7FHJFuI/qjlwGJNgh2wUNXd3/E51KQo0ile9z250zG80LQek7qptxQuBR1MseiR7DqNOSuWhrhQF4pErw5611XLBaSkK3A5BFf4+Ub80Jl1oQQ0u8pvynmJCZ1bpMbbq9lO5vrhhjc4nkMkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com; spf=pass smtp.mailfrom=konsulko.com; dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b=Xe2AJr1z; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=konsulko.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-7c704bdd57aso750819a34.3
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 10:51:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1764874269; x=1765479069; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HuCxBLeeJ7Zz/twqp1A0Ys0p37qHP4PCEZ34hI84mRs=;
        b=Xe2AJr1zCMwPmXG5T1Mi/jSrQLYAwKaxP1xLnsyD2qzQg0BcfA8e9FXHylXAVRFBRG
         hj1htuq5JKeqqTHonZPGQobePHumY0iu8wVaEzi0oGyT9AiwJ1uttSQDdfvwd9nynnbM
         yXWbi164okrXgs1Jl7aWUyfNAcGu2JITD9TYU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764874269; x=1765479069;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HuCxBLeeJ7Zz/twqp1A0Ys0p37qHP4PCEZ34hI84mRs=;
        b=av4w0votVODgTFviIWE7XbjSM+iXxbL8qYzMknt8Q9vwrZ8yTjgzVU4mDvcuSIwkWC
         f0A+g99iJJMEMeRTTCLzn9XeGUV5q8A6UzGkjeaFocATYd35mCjYo3yIqHCk+Tzdx44F
         inMsE7MqSigXntkk9sQWwNmALFfSyVTsaVmcXfavQ5inKpgkbs3z8H4B01j9uqvFJr/t
         YWN2bDKZMDJ3pLTVDPAa3Yo5iuR5k7zEQ0twup1X2aGCl79G50lGmWEpRaiKnN3d29IG
         IUCiB4HSbb3G3119QE/TpwHe04NMEgPXatd+fIkHecmtqz5nRCDc3ZDsTuPOYio6gLPC
         bUIg==
X-Forwarded-Encrypted: i=1; AJvYcCXmmAjIBKlXbywv7NSkxAxO1rnbDFKM6+Tywr8aa2qUVzMrt2UaK7kPjfNvEtxHhSEq8iNuw707e5z0@vger.kernel.org
X-Gm-Message-State: AOJu0YzHqG6kY/uBT2KmpN5lo3Alz/nYWefmL4mtE+GKqbQ3hNJXdpxr
	ZaBpUtHMUZ3dJpT9E7MI7iipU9eABE8iWmTrRaihvqPCWPPmQusnH+VjT9Ui3Xqb+ZU=
X-Gm-Gg: ASbGncvfeFBgWC7mfZaY/y4WAPKhrD0TbY4eV4pqoJXibpwFyFl9TSGfDNmWL79x0OE
	miadx5vGmGOVnz/GB140Q7xAO7twhdptUs4of9Xo8HN1LVLmGBJhXMSX0+6rMZ6fY9TTkms7fXR
	M9n4xhFeT89XjrN77LrYFBgmm/i31BeEs4XB11hykWgVspWICzMaORPPY1kTRVYROou1HUFjE6e
	hb7875lKHx+lyXpCar8Pm/vGzvbwWOAOToVgBCwsOQHPmtSAi8Eunp26KX2mtqu4CNdqp0fTL+s
	saR2VDd2HATugCUpugRMimynJ68pDpx38+oa006rmR+co3+gJTXnNFtH54P7PlN3ZxNnqGyITSn
	jveu7QVAuEfasLacjH0Z/iyFSzqa9E1budrK9Kya3yiou+UGbL9siYiG9f6Ca5Bqs9MMIU5bulF
	Abr+UfmyDaiREio3bzSUcO/9aMFVIAA4EuFLrE26uTD7I2XrDJQw==
X-Google-Smtp-Source: AGHT+IE+39z1Gqea5Hb0YCxcSsRFBXG+n3QidgZ6Z+ZmTTVak7sTfZsiBAPNyraUMJrs7/4CUYILlQ==
X-Received: by 2002:a05:6830:6ee9:b0:799:bdea:34ba with SMTP id 46e09a7af769-7c958aedc48mr1955012a34.9.1764874269070;
        Thu, 04 Dec 2025 10:51:09 -0800 (PST)
Received: from bill-the-cat (fixed-189-203-103-235.totalplay.net. [189.203.103.235])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c95acb3cf1sm1910214a34.20.2025.12.04.10.51.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 10:51:08 -0800 (PST)
Date: Thu, 4 Dec 2025 12:51:06 -0600
From: Tom Rini <trini@konsulko.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree-spec@vger.kernel.org,
	quentin.schulz@cherry.de, Marc Kleine-Budde <mkl@pengutronix.de>,
	"kernel@pengutronix.de" <kernel@pengutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: SoC-specific device tree aliases?
Message-ID: <20251204185106.GC303283@bill-the-cat>
References: <20251117-smooth-spiked-loon-52df28-mkl@pengutronix.de>
 <de1739a8-4677-4cc8-b501-2568b7513467@kernel.org>
 <aRs2y3w854vnHAzg@pengutronix.de>
 <576a9eae-7dba-47d0-ad66-0a81d1893271@kernel.org>
 <aRs-DaayhtQTtFXj@pengutronix.de>
 <9e14fb8e-af84-4072-b0ac-9ead882782be@kernel.org>
 <CAL_Jsq+=v96eP6V+5Ehi9EQT3iKKU7=t7kvJ-WSA+1WCHDuHEA@mail.gmail.com>
 <07ee3540-d0c1-436e-9e1d-db1952f609a6@kernel.org>
 <bcb359cf-0e8a-46ec-9f69-51c4c9e8874e@pengutronix.de>
 <6638e499-2320-41c9-b720-faf4f976e476@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6638e499-2320-41c9-b720-faf4f976e476@kernel.org>
X-Clacks-Overhead: GNU Terry Pratchett

On Wed, Dec 03, 2025 at 11:25:11AM +0100, Krzysztof Kozlowski wrote:
> On 03/12/2025 11:16, Ahmad Fatoum wrote:
> > Hello Krzysztof,
> > 
> > On 11/17/25 5:29 PM, Krzysztof Kozlowski wrote:
> >> On 17/11/2025 17:06, Rob Herring wrote:
> >>>> So you want it to be an ABI for barebox, sure, just make it a binding.
> >>>
> >>> What do you have in mind? Other than standard names for the aliases,
> >>> what can we check here? That a specific alias points to a specific
> >>> path? That would be a bit too much IMO. That would be equivalent to
> >>> specifying possible values in 'reg' for all devices.
> >>
> >> Binding with pattern or list of needed alias names, referenced by given
> >> soc-platform top-level schema.
> >>
> >> One of the points is to make it explicit and obvious (e.g. to Arnd or to
> >> me if I forget, because I follow the same logic of aliases per board)
> >> that these aliases are used outside of kernel.
> >>
> >> Just because ufs/mmc/spi can be used that way, does not mean we should
> >> accept any possible alias into soc.dtsi.
> > 
> > I can't see how this could work. A number of boards renumber MMC devices
> > in a different manner than the SoC reference manual:
> > 
> > - Changing the alias numbering is an ABI break, because Linux derives
> > its /dev/mmcblkX numbering from it
> 
> First, why the alias would change? Isn't the board following the SoC
> numbering in 99.9% cases?

I swear historically and probably still today at least one major SoC
vendor manuals/etc start numbering from 1 and not 0. And it's not just
iMX where "which one was wired for an SD cage and which is wired for
eMMC" vary from ref (or hobbyist) platform to ref platform. And then, oh
goodness, custom designs. So no, there's no consistency and then "store
UUID/etc in env during install" falls down on other cases starting with
"is there an env to store them to?" and so a common case is "we know
mmcX is ... so read the UUID, pass that to the kernel".

-- 
Tom


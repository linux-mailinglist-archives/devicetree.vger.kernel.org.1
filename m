Return-Path: <devicetree+bounces-245008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E4012CAB317
	for <lists+devicetree@lfdr.de>; Sun, 07 Dec 2025 10:22:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 673B23070174
	for <lists+devicetree@lfdr.de>; Sun,  7 Dec 2025 09:22:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E0D9298CDE;
	Sun,  7 Dec 2025 09:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="Ze40ACPP"
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB8D24466C
	for <devicetree@vger.kernel.org>; Sun,  7 Dec 2025 09:22:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.161
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765099350; cv=none; b=DGSNIs00SflitH26CrJJTtzxqM/CCUNsX1zjE8OLTvFQvPMnx+8KBdos/Be+L6KEUmbxFT8qjerwj/oQKfvGXZJ0AHjkjuRwpiRdvfmiTnQg1ldBGnfVtSv0ZhV+S1f+Ad7r/hLDgR0xUD1kchBz7PxHqw/HHQB/1AMIm5QoN1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765099350; c=relaxed/simple;
	bh=caZ5KAZ1kDrWMWY5eYrtBWpxbmSFRNxMEAFPjpuZFIA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qfD8bi2vjINXrIL6eRPhzOz8Qecic1z3jCQVw6bR23ZX7Skkjko9RuIfw+8xOXTT3LrIqC4N/4dQ0mgEwD4MUcUGzmskrLv2eVNua2SFSH7aPpAPl3FlR7DiY8vyKNcqjUHZuG014MeyenotTt7UgzfyCBnZXLIK9ti+BYR7WB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=Ze40ACPP; arc=none smtp.client-ip=80.241.56.161
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mailbox.org
Received: from smtp102.mailbox.org (smtp102.mailbox.org [10.196.197.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4dPKQ274qbz9spZ;
	Sun,  7 Dec 2025 10:22:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1765099339;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=X9q+cDfMrg014EY9sJksn+6sdb8oD5faOWT5cDz9z5Y=;
	b=Ze40ACPPG06G4xRRBlXqZELB2bWqEdDO6PqZOf7s7XPX8N/jeTpZOBEd6XeG4qbObyPEn0
	wfDMOF4besSbqSSIp++twiB5bf+Hmn7h3wLcpMRhYpg/Ghyzr8mRukqINgFRXbyBLbl/LP
	9i1qyUHA+AbaZt25olGR9lOPS5lQslyvLSjyuF8OEhGS/LqDNnnof+qrrB1Ffuhtt4U38P
	12KTI2RNYyjDp3+9VzUu+bcRfc9Nf5WRAhOPlrEBANJMWwA5zayrw0pl5JA+ESPQNkY+vP
	S1RiQOF2Yea+VUeprlQLqhRNPtcTapMgelIVS+6F6DADiGL4RtPLvpZX5wkkBw==
Message-ID: <9b593731-898f-46a7-8ee5-68f8c170351c@mailbox.org>
Date: Sun, 7 Dec 2025 10:01:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] arm64: dts: imx95: Use GPU_CGC as core clock for GPU
To: Rain Yang <jiyu.yang@oss.nxp.com>
Cc: Frank.li@nxp.com, conor+dt@kernel.org, devicetree@vger.kernel.org,
 festevam@gmail.com, imx@lists.linux.dev, kernel@pengutronix.de,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, peng.fan@nxp.com,
 robh@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org
References: <20251129143220.14834-1-marek.vasut@mailbox.org>
 <aS-lEibp3zTsaR6T@oss.nxp.com>
 <c6e0e55a-06da-4665-972e-e9b5b8c08bf7@mailbox.org>
 <aTACuRjC_Zpf8IOU@oss.nxp.com>
 <de36091e-c890-4897-b3e3-2a7575029a5d@mailbox.org>
 <aTD5np-HGaJqhzkD@oss.nxp.com>
 <5944d872-01a3-47e9-977b-029f3be4fd83@mailbox.org>
 <aTKVMAMQ6v_BwD6R@oss.nxp.com>
Content-Language: en-US
From: Marek Vasut <marek.vasut@mailbox.org>
In-Reply-To: <aTKVMAMQ6v_BwD6R@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-MBO-RS-ID: feb1c8f184211a18c7b
X-MBO-RS-META: rqqhake851yp3bxp1345p13u66h15651

On 12/5/25 9:17 AM, Rain Yang wrote:
> On Thu, Dec 04, 2025 at 04:25:38AM +0100, Marek Vasut wrote:
>> On 12/4/25 4:01 AM, Rain Yang wrote:
>>
>> [...]
>>>>> For the Linux working environment,
>>>>> CLK_GPU and CLK_GPUAPB are always-on, while CLK_GPU_CGC can be gated off.
>>>>>
>>>>> Regarding the IMX95_CLK_GPUAPB handle, my suggestion was based on the absence
>>>>> of its frequency in any OPP entry within the frequency table. Removing it
>>>>> could simplify the OPP handling logic and reduce unnecessary complexity.
>>>>
>>>> If the clock can be disabled by SM, Linux has to make sure they are NOT
>>>> disabled, so they must be described in DT, right ?
>>>>
>>>>> [1] https://github.com/nxp-imx/linux-imx/commit/695f2bdc57b869ca5189313e4b5fa7eb5a12f622
>>> Currently, only CLK_GPU_CGC shall be described in the Device Tree[1], as it can be gated.
>>> The other clocks (CLK_GPU and CLK_GPUAPB) are always-on in the Linux environment,
>>> so describing any of them in DT is not necessary and would not be proper in this context.
>>
>> Since this discussion is in fact unrelated to this bugfix, I would propose to
>> fork the discussion into a separate patch. Can you please submit a patch for
>> the GPUAPB clock ? Note that I believe GPUAPB clock have to be described in
>> DT, if only because DT is a hardware description, and to make sure the GPUAPB
>> clock are correctly enabled by the driver.
> 
> Okay, I’ll submit a patch later.
> The commit message should reflect that only CLK_GPU_CGC is enabled.

The commit message , and this change , is unrelated to GPUAPB clock.


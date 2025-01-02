Return-Path: <devicetree+bounces-135134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7FD9FFE0A
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 19:24:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AFED93A06C1
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 18:24:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 452FA188596;
	Thu,  2 Jan 2025 18:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b="hhA1uIPX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.netcube.li (mail.netcube.li [173.249.15.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE51185955;
	Thu,  2 Jan 2025 18:24:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.249.15.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735842254; cv=none; b=UpVLEV3Dvzl7K/Cx7cNMIoJfLLb+s3m3JLEmseZCpQzptnxrhizS0or/dparIWzZM9DL5bT8pTfb3+eLTrG+EbTK52EgoSHtLrEVZ+9tngZsJdPgH5zGLQOiyNytF2E9ku0fNNsU9k5LcpmzdJ9uf1x4idnfI/vzclyGQCxUMRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735842254; c=relaxed/simple;
	bh=2JmbDnbQNc7V2pvknT5P22OhOlGaZCLcLwRdeBBrIqI=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=HbxKLDvvZjOlZ1v1mFbz3SuxRQreDhm25C+I0hLJUceOqGDI8mI1mPTQHznrTk+MSGt6R3s7zK5fuLbPsht863d/2jeKD4ZH2aZhW692WIbE4WcrfgSlzTxEXBfr898wizHX1etY3GWsBMToboogeAs/LY05Z9kbzDBKta7MCSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li; spf=pass smtp.mailfrom=netcube.li; dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b=hhA1uIPX; arc=none smtp.client-ip=173.249.15.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=netcube.li
dkim-signature: v=1; a=rsa-sha256; d=netcube.li; s=s1;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To:References;
	bh=8yQkjhBK4YJwWIryxdOEdCXtJYbtQ2mot2TfEcMj8YQ=;
	b=hhA1uIPXzF1lKgkds3z+fKDgB3qABdkcGbYjmAMEGVn4ONnuTKjaNHjUCFGkApCg1/nqnVgSSg2l4OLzak0oyMSlyVug709QBJB+2mVqrGDz5w+4DRV0xwEQQIne4dRZY672Wi1bNjAohSEVFtKmrl39glYC18ifkQoY5VXJs1o=
Received: from webmail.netcube.li (WIN-IJ7TS3MJ5LT [127.0.0.1])
	by mail.netcube.li with ESMTPA
	; Thu, 2 Jan 2025 19:24:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Thu, 02 Jan 2025 19:24:04 +0100
From: Lukas Schmid <lukas.schmid@netcube.li>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add NetCube Systems
 Austria name
In-Reply-To: <478a6364-0537-453a-881f-c460de2f67a8@kernel.org>
References: <32b5c286-9457-4b93-a93f-c8aff356ec10@kernel.org>
 <20250102175006.3675-1-lukas.schmid@netcube.li>
 <20250102175006.3675-2-lukas.schmid@netcube.li>
 <478a6364-0537-453a-881f-c460de2f67a8@kernel.org>
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <c025818214942560a291f8c53108503a@netcube.li>
X-Sender: lukas.schmid@netcube.li
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Am 2025-01-02 18:57, schrieb Krzysztof Kozlowski:
> On 02/01/2025 18:49, Lukas Schmid wrote:
>> Signed-off-by: Lukas Schmid <lukas.schmid@netcube.li>
>> ---
>>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> 
> You did not read really the messages we gave you...
> 
> 1. Read what I wrote in my first reply for v1. I gave detailed
> instruction to avoid the exact mistake you now did.
> 
> 2. Read again Andre's reply.
> 
> 3. Do not attach (thread) your patchsets to some other threads
> (unrelated or older versions). This buries them deep in the mailbox and
> might interfere with applying entire sets.
> 
> 4. Next version, with proper cover letter, is after 24h, so you have
> some time to digest the feedback.
> 
> Best regards,
> Krzysztof

Hi,

Thank you for your feedback, and I sincerely apologize for the mistakes 
in my submission process.

I did read Andre's reply and your feedback on v1, but unfortunately, I 
had already sent the v2 series as a reply before fully understanding all 
the recommendations. I realize now that this was a misstep and caused 
confusion.

I will wait until tomorrow, around 20:00, to send the v3 series. I will 
make sure to include a proper cover letter and ensure that all the 
feedback from v1 and v2 is addressed.

Regarding the v1 feedback, I thought I had incorporated all your 
suggestions. However, after rereading it, I seem to have missed 
something critical. Could you please point out what I might have 
overlooked? I want to make sure I fully understand and correct it in the 
next iteration.

Thank you for your patience and for helping me improve my submission 
process.

Best regards,
Lukas Schmid




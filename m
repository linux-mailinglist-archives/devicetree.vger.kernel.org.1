Return-Path: <devicetree+bounces-52726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B121F887CA6
	for <lists+devicetree@lfdr.de>; Sun, 24 Mar 2024 13:14:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 668231F21478
	for <lists+devicetree@lfdr.de>; Sun, 24 Mar 2024 12:14:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3B0717BD8;
	Sun, 24 Mar 2024 12:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=leemhuis.info header.i=@leemhuis.info header.b="ZMOEQj8V"
X-Original-To: devicetree@vger.kernel.org
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de [80.237.130.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EFC17BBB;
	Sun, 24 Mar 2024 12:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.237.130.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711282480; cv=none; b=spliR+ZuVwwqvbBoQat1rL8rFgx3G5XnqAcWshXtYtHY3zcKQ8O1NYlra0xImmHhM06DQHInep57uCQducZ4MT3huaQcmTkmfOe2nFFvN/ldWvTyufPVT/AbzHSuuPzsJ4KE9YKeqqYHiS3VOqpUeIdrjxY5IKACPIyv0oqXsX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711282480; c=relaxed/simple;
	bh=a4vOIE0XFMN5xqLFW7cJK4D7VjK3skPYaphLTuRZd90=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ngR7rYyemywg4WXIZac92EYJvhj/JCY+RTrGNb9GGCGv11vqjF1IQQRpshK501kwHnAw7Wqj6pGYeuQfuC4HPOb+bQaok+kWltzHOICIUVHtGgmxlczOdXenkItQja0kJM4iK1HEr2PqAsAMjs4nLBmthywgtzjuBJazWKGn0Po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=leemhuis.info; spf=pass smtp.mailfrom=leemhuis.info; dkim=pass (2048-bit key) header.d=leemhuis.info header.i=@leemhuis.info header.b=ZMOEQj8V; arc=none smtp.client-ip=80.237.130.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=leemhuis.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=leemhuis.info
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=leemhuis.info; s=he214686; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:Reply-To:MIME-Version:Date:
	Message-ID:From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	In-Reply-To:References; bh=99BhkOHQKpF2cZrCyALqWCNt5635DoNr5WdsPCXMpW4=;
	t=1711282478; x=1711714478; b=ZMOEQj8V6QBd9yM0m7nrg9e7sH6SRWbeH7qABgZxGz+mNrE
	oA1meXVB38TeykbGbp3lrTBEkcrqNQ60oHi5OUIq9uqIRomICFBm4KelsJmhUI+Pe2PayIFU6ryZB
	kDNUr/Sd5KN54JE0ddh4irS4VLx7UtRGwU66rCYo2EZgQQrEj4U+xCy3whlXzmBAmkJwKikFmQTcI
	WLyMovMq8opiKiov8jTMjswaiIFrAckE64d4/jhwhO352jlqE0xk1TjW3KAqOVtIXGZLXjUCuV/gX
	yMuZY12f1HV73IQdRw9Cxxd6lGqo27dyplWV0O9i/rlRSvGbwJd3aOA0bi5SsXBw==;
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
	by wp530.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	id 1roMkC-0008Uw-Bx; Sun, 24 Mar 2024 13:14:32 +0100
Message-ID: <db6ae45b-ff34-433f-8a31-1547423768ce@leemhuis.info>
Date: Sun, 24 Mar 2024 13:14:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: Linux regressions mailing list <regressions@lists.linux.dev>
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: disable analog audio for
 rock-5b
Content-Language: en-US, de-DE
To: Pratham Patel <prathampatel@thefossguy.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 heiko@sntech.de, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240324062816.145858-1-prathampatel@thefossguy.com>
 <0005257d-8022-4a66-a802-0c920d259ccd@linaro.org>
 <TbQeSy-AWAKVHo2Alb8hXUvplVNvohDJ2ztRM1x3Fo5PMmGLMsJxtHR-OIms9FlUshfUD9x45EghBCB9gVtcUPlxeMRUJQ_C95DVhu3AJrk=@thefossguy.com>
 <XJ_dGL-0X07dJ8GOKvrXbRD2FAHN1A7keAtohcSaU41DEF0FbeWwswLEqkrYiwwulyXDwJ6SZHfWukhHO3t3tOWX7ZGM7ya9lwXfn8Xh1nU=@thefossguy.com>
From: "Linux regression tracking (Thorsten Leemhuis)"
 <regressions@leemhuis.info>
In-Reply-To: <XJ_dGL-0X07dJ8GOKvrXbRD2FAHN1A7keAtohcSaU41DEF0FbeWwswLEqkrYiwwulyXDwJ6SZHfWukhHO3t3tOWX7ZGM7ya9lwXfn8Xh1nU=@thefossguy.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-bounce-key: webpack.hosteurope.de;regressions@leemhuis.info;1711282478;e9185bf5;
X-HE-SMSGID: 1roMkC-0008Uw-Bx

On 24.03.24 12:43, Pratham Patel wrote:
> On Sunday, March 24th, 2024 at 16:51, Pratham Patel <prathampatel@thefossguy.com> wrote:
> 
>> On Sunday, March 24th, 2024 at 16:15, Krzysztof Kozlowski krzysztof.kozlowski@linaro.org wrote:
>>
>>>> + /*
>>>> + *analog-sound {
>>>> + * compatible = "audio-graph-card";
>>>> + * label = "rk3588-es8316";
>>>
>>> Do not comment out code. Instead disable the nodes and provide
>>> appropriate comment describing reason.
>>
>> I tried changing the status from okay to disabled. That didn't work. The SBC
>> still locked up during boot.
> 
> I think setting the status to fail should do the trick, instead of setting it to disabled.
> Will try that and be back with a v2.

Please CC the author of the change that broke things when submitting v2,
which you afaics failed to do in this thread.

Ciao, Thorsten


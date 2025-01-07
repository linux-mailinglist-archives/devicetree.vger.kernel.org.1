Return-Path: <devicetree+bounces-136201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 305D7A04379
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 15:56:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D7BC61885901
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:56:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A25DE1F1319;
	Tue,  7 Jan 2025 14:56:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A11CA86330;
	Tue,  7 Jan 2025 14:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736261796; cv=none; b=jx/+mIpGuFvm/YsAO+89A08I1+cQEJ3szw53USNCeCoyfTnqEJMJgjpb1n+TjNxno+amTolRH0JpM43HFOLVnkZ4JfdUzF+KhB4a3fZxc5WQ472bwwBOEazF4pncpyqlIwYHn5bkHyCK+AnugyOGYckPv5QOMvPv/oBzGEqQlFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736261796; c=relaxed/simple;
	bh=g3iUuiNiB2bePoFIB2zbdPbAU751FxV8YFxyGzk8bOc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g87XXgSmPUUSUkPKI2b6RZagnf8UWOC9iL1swo/8mIgGXPQ9HciYP+BdcfoUiW8hhD2je2CHLt4ZgcqiIEQ5oTcQXk4vPfi0Ma2/xPlqnmfLgOMnjZbxG2BjRKlwnlmJok5Sydf0IFf8GBLVxhoxJqaptHHgMNcYba3IQc2HETA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3DC5E1424;
	Tue,  7 Jan 2025 06:57:01 -0800 (PST)
Received: from [10.57.4.77] (unknown [10.57.4.77])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 76BCE3F673;
	Tue,  7 Jan 2025 06:56:31 -0800 (PST)
Message-ID: <1e1915eb-0ebb-4afa-94ed-553c455ae24e@arm.com>
Date: Tue, 7 Jan 2025 14:56:30 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] arm64: dts: morello: Add support for common
 functionalities
Content-Language: en-GB
To: Jessica Clarke <jrtc27@jrtc27.com>
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Russell King <linux@armlinux.org.uk>
References: <20250103181623.1980433-1-vincenzo.frascino@arm.com>
 <20250103181623.1980433-3-vincenzo.frascino@arm.com>
 <CAL_JsqLYu_z6yNA-MgKgoA=nC5ftzOEH5UNkswA_=xTJiOB0+g@mail.gmail.com>
 <Z30kbmA-3h-Rhg7l@Jessicas-MacBook-Pro>
 <bb0c95b6-760d-4de1-bc28-8f82e2fc5dd5@arm.com>
 <45E38F12-3585-4AE0-8F05-431DB355FC69@jrtc27.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
In-Reply-To: <45E38F12-3585-4AE0-8F05-431DB355FC69@jrtc27.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 07/01/2025 14:51, Jessica Clarke wrote:
> On 7 Jan 2025, at 14:34, Vincenzo Frascino <vincenzo.frascino@arm.com> wrote:
>>
>> Hi Jessica,
>>
>> Thank you for your review.
>>
>> On 07/01/2025 12:56, Jessica Clarke wrote:
>>> On Fri, Jan 03, 2025 at 04:14:31PM -0600, Rob Herring wrote:
>>>> On Fri, Jan 3, 2025 at 12:16 PM Vincenzo Frascino
>>>> <vincenzo.frascino@arm.com> wrote:
>>>>> +       cpus {
>>>>> +               #address-cells = <2>;
>>>>> +               #size-cells = <0>;
>>>>> +
>>>>> +               cpu0: cpu@0 {
>>>>> +                       compatible = "arm,neoverse-n1";
>>>>
>>>> I'm pretty sure the N1 doesn't support CHERI/morello. Perhaps
>>>> "arm,neoverse-n1-morello" if we want to capture what it is derived
>>>> from and since "arm,morello" is taken already.
>>>
>>> Rainier is the codename of the core itself, and Morello LLVM recognises
>>> -mcpu=rainier not -mcpu=morello (there's -march=morello instead), so
>>> perhaps it should really be "arm,rainier". Though SMBIOS reports it as
>>> Morello-R0P1 so it may be best to use "arm,morello" here.
>>>
>>
>> We agree on the concept. It should either be "arm,rainier" or "arm,morello-r0p1"
> 
> r0p1 isn’t right. Boards with r0p0 and r0p2 CPUs also exist (although
> the former are now only within Arm, but the latter are in the wild in
> limited numbers, including a couple here at Cambridge).
> 

Agreed, my proposals were in order of preference. "arm,rainier" seems the best
choice. Let's see what Rob thinks.

[...]

-- 
Regards,
Vincenzo



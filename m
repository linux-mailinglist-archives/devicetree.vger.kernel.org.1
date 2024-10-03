Return-Path: <devicetree+bounces-107486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B5498ECC4
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 12:16:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B4A31F24533
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 10:16:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AAF714D44D;
	Thu,  3 Oct 2024 10:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="if7oMDoT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B24414B081;
	Thu,  3 Oct 2024 10:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727950560; cv=none; b=YuuYolmfyomX7+e5s3YbtfdPGanlD8Qh52raoI1KVc2kcUIuvyLsZux0CAZsbLRbGdQ7ORHNd8pbVaH0pNsmFERh2tFFeijJINoqtLVnhT8u33NRKczGVgYt4AQaaEqnfTLDuGmFqSe1bxIUSx0ESx7+SICok4dWfSwLV5Lphpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727950560; c=relaxed/simple;
	bh=JfyDiXoH0eS3B8+Pjeg/MzW8rcuRvAUgL/8i6r4vJ6k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b8sXij5TyEceLPymwKhLy324MzqZO3gTfuU0AFmywXZKvwRxHRZrH69wiAE1pLb10H2XO1spwc+kXZ67hvbTG8HmDJvIpIKKL8VZyVXSOIUkQLQsj2ONployZDYotCrkkh7FyZwVy0heESKk3FNMDzLUVA5yUYnGr9tAUtzFUes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=if7oMDoT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8E06C4CEC5;
	Thu,  3 Oct 2024 10:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727950559;
	bh=JfyDiXoH0eS3B8+Pjeg/MzW8rcuRvAUgL/8i6r4vJ6k=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=if7oMDoTl6O1mUGCwbKhosDY6JjkGAUeqWnSYHVdVwQXfkkEXiyPUdnhmL7rGhxtJ
	 VFX51Jj+mN3SvurMfI2O3Cm28qVqF6sSphYqThJUBp/AlZEu4ZHDjLJ1EFXWEG4Pjs
	 BIFz7t8m+XiJlaKViym8FXjifYj7DikNj/LdOTxvLMjPeK9oZJHUGPDYAdC2/QCdSN
	 qdBHL9Il3EcyMmWN06k2i8EBKuj8HPv0rEiM21C0mioESZYr9O+v+yHYLxeEIbRE6H
	 6yUhWUC3QOry+cyET5gnG75zRYJJVOf1j0ods3Urd0iidNBs6S/iDgbU879a9V7Tom
	 Uo/r2APxhYq+g==
Message-ID: <b8bf66be-02c4-4001-bd40-f05834da57c2@kernel.org>
Date: Thu, 3 Oct 2024 12:15:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] MAINTAINERS: iio: migrate invensense email address to
 tdk domain
To: Jean-Baptiste Maneyrol <Jean-Baptiste.Maneyrol@tdk.com>,
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>, tools@linux.kernel.org
Cc: Conor Dooley <conor+dt@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20241003-invn-maintainers-email-update-v1-0-7e4062ad68cf@tdk.com>
 <20241003-invn-maintainers-email-update-v1-1-7e4062ad68cf@tdk.com>
 <b8a359d7-5043-475f-95c2-0bad2a9f6f92@kernel.org>
 <FR3P281MB1757F280DAA6B8F4A5A44D51CE712@FR3P281MB1757.DEUP281.PROD.OUTLOOK.COM>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <FR3P281MB1757F280DAA6B8F4A5A44D51CE712@FR3P281MB1757.DEUP281.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 03/10/2024 12:03, Jean-Baptiste Maneyrol wrote:
> Hello Krzysztof,
> 
> this is strange because I run b4 prep --check and was expecting it to run checkpatch on the patches.
> 
> I am having trailing whitespaces errors, but not on the part I changed. It looks like these "spaces" that aren't even displayed correctly in an editor are introduced by git.
> 
> Do you have any idea on this kind of issues?
> 
> Thanks,
> JB

Not much details above, but anyway, I think that's `b4 prep --check` and
I reproduced it on 0.14.2.

Konstantin,

`b4 prep --check` does not operate on patches, thus for example SoB
checks are not working.

Reproduce:
1. Download this patchset, create patches (git format-patch).
2. scripts/checkpatch.pl 0* - will report correctly errors.
3. b4 prep --check will say everything is fine. Expected: same errors
about SoB.

P.S. I would bugspray you, but not sure how does it work :)

Best regards,
Krzysztof

> 
> ________________________________________
> From: Krzysztof Kozlowski <krzk@kernel.org>
> Sent: Thursday, October 3, 2024 09:45
> To: Jean-Baptiste Maneyrol <Jean-Baptiste.Maneyrol@tdk.com>; Jonathan Cameron <jic23@kernel.org>; Lars-Peter Clausen <lars@metafoo.de>; Rob Herring <robh@kernel.org>; Krzysztof Kozlowski <krzk+dt@kernel.org>; Conor Dooley <conor+dt@kernel.org>
> Cc: linux-kernel@vger.kernel.org <linux-kernel@vger.kernel.org>; linux-iio@vger.kernel.org <linux-iio@vger.kernel.org>; devicetree@vger.kernel.org <devicetree@vger.kernel.org>
> Subject: Re: [PATCH 1/3] MAINTAINERS: iio: migrate invensense email address to tdk domain
>  
> This Message Is From an External Sender
> This message came from outside your organization.
>  
> On 03/10/2024 09:37, Jean-Baptiste Maneyrol via B4 Relay wrote:
>> From: Jean-Baptiste Maneyrol <jean-baptiste.maneyrol@tdk.com>
>>
>> InvenSense is part of TDK group. Update email address to use the
>> TDK domain.
> 
> Please run scripts/checkpatch.pl and fix reported warnings. Then please
> run `scripts/checkpatch.pl --strict` and (probably) fix more warnings.
> Some warnings can be ignored, especially from --strict run, but the code
> here looks like it needs a fix. Feel free to get in touch if the warning
> is not clear.
> 
> Best regards,
> Krzysztof
> 

Best regards,
Krzysztof



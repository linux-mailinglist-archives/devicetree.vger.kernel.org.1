Return-Path: <devicetree+bounces-135279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BDBA00570
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 08:59:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 932DE162818
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 07:59:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 440D71C5F09;
	Fri,  3 Jan 2025 07:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b="ZmaoeFdD"
X-Original-To: devicetree@vger.kernel.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com [34.202.193.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD04A1C4A16
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 07:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=34.202.193.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735891182; cv=none; b=M6EQwE89Jl8lCH7nRa2riV5mdDbrz5mJYACxpDb29ybqVSiYHJ3mHZIO/2NADil74kRFwmxwL5Ub9IcR4yWZ9UG4ssimtX9NwnEcrAfGe53n2vE8cKK7VMN0cRnoCI2cpB+TGzBoKSxuWG2CEcG9kCvU6QD5gIRX0PeUuKp5210=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735891182; c=relaxed/simple;
	bh=A09PJ6UpidLOX5pr4KaHo4gQEh9sjrvfG6oft/5bEKY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Gqhs6vjQ/Oc1NDB6F+J6wvWG9MpjBs1772yiEZNaxIWnaXgSAvSL/T8g1x185qoRHsmEg4OAWYwdrzZc8olI2hw6SzW0WuasoE4wQ9tIdwBqwwQ170veDIPlGksgJgmZrLhISF9s5xv7LboOXkr8bkd2cUUSeR+AyMsckZHXW3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=korsgaard.com; spf=pass smtp.mailfrom=korsgaard.com; dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b=ZmaoeFdD; arc=none smtp.client-ip=34.202.193.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=korsgaard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=korsgaard.com
DKIM-Signature: a=rsa-sha256; b=ZmaoeFdD7unP9iFUxIVybyDMFle4u6z0VUIpzVJwG0UC3p0g5o+SaPFWy9HgzYIvp/EXmjWn0S1PQj3IHKIGb18LTYHJuMfRXY8oiTrhdvZv1eZNIEJApE/DwRTsYxdCxqSTDlfRu2FUUIh4QtqBJbcSXXRmO1KajhGGQwaIgp0x+9di03bDP7Q8UbeeE27P8YI/USGenxRnzw6PTNKI7Ca1t/Rpd3wb/X8tJc3uJU5vHE3ejMHEMqGqqO5iNZChNKT6x8LTKO8E3QTSW7Zf0r6/MjxcXxh9dBbGaWUBhB3vEfCaYStW62wbTUbO2pRCb8MoqK42Wxvt+miOFr2mjw==; s=purelymail3; d=purelymail.com; v=1; bh=A09PJ6UpidLOX5pr4KaHo4gQEh9sjrvfG6oft/5bEKY=; h=Feedback-ID:Received:Date:Subject:To:From;
Feedback-ID: 21632:4007:null:purelymail
X-Pm-Original-To: devicetree@vger.kernel.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id 1761148253;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Fri, 03 Jan 2025 07:59:08 +0000 (UTC)
Message-ID: <348cda09-cc54-4d29-975c-ab28241d8372@korsgaard.com>
Date: Fri, 3 Jan 2025 08:59:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: hwmon: pwm-fan: Document default-pwm
 property
To: Krzysztof Kozlowski <krzk@kernel.org>, Guenter Roeck
 <linux@roeck-us.net>, devicetree@vger.kernel.org, linux-hwmon@vger.kernel.org
Cc: Jean Delvare <jdelvare@suse.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <20250102175041.822977-1-peter@korsgaard.com>
 <b3b8aa28-24d3-4952-a8d3-7019ad4c63de@kernel.org>
Content-Language: en-US
From: Peter Korsgaard <peter@korsgaard.com>
In-Reply-To: <b3b8aa28-24d3-4952-a8d3-7019ad4c63de@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/2/25 19:22, Krzysztof Kozlowski wrote:
> On 02/01/2025 18:50, Peter Korsgaard wrote:
>> The pwm-fan driver uses full PWM (255) duty cycle at startup, which may not
>> always be desirable because of noise or power consumption peaks, so add an
>> optional "default-pwm" property that can be used to specify a custom default
>> PWM duty cycle.
>>
>> Signed-off-by: Peter Korsgaard <peter@korsgaard.com>
> 
> That's v3, not v1. Also mention here shortly how Rob's comment is addressed.

It is? Then that wasn't from me, and I don't right away see anything 
related on lore. Can you give me a pointer?

-- 
Bye, Peter Korsgaard


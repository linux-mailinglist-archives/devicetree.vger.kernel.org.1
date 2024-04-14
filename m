Return-Path: <devicetree+bounces-59155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F068A44CC
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 20:55:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 946F3B21F0A
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 18:55:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BC8A134CE8;
	Sun, 14 Apr 2024 18:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="SAit9mm0"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5F259B69
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 18:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.17.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713120942; cv=none; b=hcMjiAzFNyPFoymXSIeS2OCC8tUL+47UsDYhWqzyxdU/GeI3KYWbXZungjhqfuXhgLyqaABUR5l4P5vqGqoq9BTq63zKTMzGocHL8kOG2uSoM7UNLOli+DXFviLFRnR4Allku7xFo97nI8tNuVUmuD1LvzhyL+Y578s8ZlcdxBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713120942; c=relaxed/simple;
	bh=h08o5WswVR3W4zkPDDMbBD0eYmz1w0cjBrKgKtgUhA8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BD4ewbqpTnPbs5pFR02t/NUbyv5qbKVnlLmb4DIDdOs94HX5tfoGOLHNSKIaYplXlEWutpJkKpAmtt/YHL4RdOdyr9NRsrSrpOeKRrlzWGQjN3pOSI/fxa6UBwygVDJnPQZdIe6Y2lpVNQlk4/3KB0veyP5EHezXGjD8KK1KYXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net; spf=pass smtp.mailfrom=gmx.net; dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b=SAit9mm0; arc=none smtp.client-ip=212.227.17.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1713120901; x=1713725701; i=wahrenst@gmx.net;
	bh=h08o5WswVR3W4zkPDDMbBD0eYmz1w0cjBrKgKtgUhA8=;
	h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:
	 In-Reply-To;
	b=SAit9mm0xR/7wNXKUwdACw70qM5X81bnjtlziNhZpsr18+wYJ9yNkJ0qnGnKAucJ
	 TMDzmZ45ynnQ2ILutKxTP7GYuPudiVX4k6k4nVu/GzehzmBYnNYdBPxpFOF3Im1NK
	 dPiQflEwiKDzQQ4ytpJJibcVKP67ttO34xd7+5q5iMY1ec0dLoTdEY9mmR7W1eSdO
	 rLOlNt9SWzWbZTTSNOK7acpPQGT+0sW5HGVJR9cstQ/dIA91hOdScmuDAPT3TyfNT
	 ZMX+oScB5IW9zWsEM3RQyeR75v4+AXVwdpBeZyU602RgdHCefLr0/h3N2Uoq4ERGC
	 71ZylFHptFLRayH6dA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.167] ([37.4.248.43]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mplbx-1sWmHR3Vcb-00qDK0; Sun, 14
 Apr 2024 20:55:00 +0200
Message-ID: <74d2e385-6923-419b-a536-806b50c9d5e0@gmx.net>
Date: Sun, 14 Apr 2024 20:54:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: bcm2835: Enable 3D rendering through V3D
To: Phil Elwell <phil@raspberrypi.com>
Cc: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
 Maxime Ripard <mripard@kernel.org>, Melissa Wen <mwen@igalia.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Romain Perier <romain.perier@gmail.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, kernel-dev@igalia.com
References: <20240412132559.2365947-1-mcanal@igalia.com>
 <41694292-af1f-4760-a7b6-101ed5dd6f9d@gmx.net>
 <CAMEGJJ2mkuBZjo+OAnkVCEi=73zMpXNUwzRqsAOckMhUeN_WJw@mail.gmail.com>
Content-Language: en-US
From: Stefan Wahren <wahrenst@gmx.net>
In-Reply-To: <CAMEGJJ2mkuBZjo+OAnkVCEi=73zMpXNUwzRqsAOckMhUeN_WJw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:yMtb4e0zQYUGQFzh32be+eqXmXdu4XVowazd/HbI9TOvzQsUqak
 nUDjM+076pQv3n0ft7I3iql+uz6up47vXBPK93744jPVHo17vYMmeCB0pSAbHrStS3FRXNw
 HHb4c9eWyr77yFMChyKk/dLZ1UVC2HZogbUd8hXDQVlhc7qUB6v6X/X5B8gKhVlhz9nKSik
 LV4uCa/Jgsn975MkofB1w==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:dMEzIPPdk10=;wffGklYEl5LFT2PHtJKth5+dlRv
 DSaRSrgaCv3OTnIWJTfK1zXI90wePXsQgc8HNwOLM8H/A6GU/kDONPDeGvMvOIsY2j+gk9VC1
 vQfnD9AcfaL+pueYbz0OErJsYqh1kwwEEVuKo1CO424S0CvCjc2Ljlz65kZ9D8bzKUmjNBHeR
 8zAEumLXrPoxkUKUoWmvFl5K29Aa5EwhWBtHA62JOzkAclXzHxp3x2EKjChgfl8nOLAWa2nmH
 VU0nR7qV4VB7+adNWlmqH+7SdnVviSEMFoky959oR1AfKIWlALRP+iVAqDB61ZExk55xc/hLB
 brgClARVpxyUi4RiMMUjqR3bpiywegRTPArdkQW9G91H6oCdsPA/ZC/GLlxiXbzbgvTUOe+Nr
 ZochcB64OVa9UEPL8dSSfThBuX5sufhstud29fQmSQv33eHv+m+Hs95UUiuUdFlwjFhiYqgaV
 OTbcfDLz/bBUgR6lfEavT2vgCCr0gnoOgPH0xibTFHQmU3uv0X6NXNhSNE5ol7oFRakAqLweE
 hF9i5UUuccKHZts2Ah3E39gtu2M2kBky+o5D48WpBpg1Fln4sd8ADaVVn/3CusqfkRnE67qop
 jRggQ179O252KuhdCvhs/krvW3KfzcvTuxeAk7iPDLbKnrDCdJtE6ZsHDRf5jjGgeXyPesOMr
 7SQOhOA8r5jLinUClZsSWbYKF7hsLxprCHhMXUoZmkXf6D1Etz/VeZfVpjyDgF2Q6OdD/ctrq
 2d68t/KY++5x1eInk5xL8zZdrBvf44MhaB8769fRGGBVRC6JNLvBSuqGjrMHApwf5GbqoYony
 on1bmMo+I4r0AZVjdk3/PaJedC1xjijDabuaxo7k1RZGQ=

Hi Phil,

Am 14.04.24 um 20:43 schrieb Phil Elwell:
> Hello all,
>
> On Fri, 12 Apr 2024 at 18:17, Stefan Wahren <wahrenst@gmx.net> wrote:
>> Hi Ma=C3=ADra,
>>
>> [add Phil & Dave]
>>
>> Am 12.04.24 um 15:25 schrieb Ma=C3=ADra Canal:
>>> RPi 0-3 is packed with a GPU that provides 3D rendering capabilities t=
o
>>> the RPi. Currently, the downstream kernel uses an overlay to enable th=
e
>>> GPU and use GPU hardware acceleration. When deploying a mainline kerne=
l
>>> to the RPi 0-3, we end up without any GPU hardware acceleration
>>> (essentially, we can't use the OpenGL driver).
>>>
>>> Therefore, enable the V3D core for the RPi 0-3 in the mainline kernel.
>> thanks for trying to improve the combination Raspberry Pi OS + Mainline
>> Kernel. I think i'm able to reproduce the issue with Raspberry Pi 3 B +
>> on Buster.
> Buster? We launched Buster with 4.19 and ended on 5.10. We've moved
> onto Bookworm now. A lot has changed in that time...
Sorry, i meant Bullseye but yes it's not up to date. Anyway i cannot see
a problem with the devicetree.


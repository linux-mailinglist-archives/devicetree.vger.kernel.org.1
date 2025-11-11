Return-Path: <devicetree+bounces-237363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 732F9C500C8
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 00:27:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3D6954E187D
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 23:27:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE90F2F39BD;
	Tue, 11 Nov 2025 23:27:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast1.qq.com (smtpbguseast1.qq.com [54.204.34.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EF4D2D6E5B
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 23:27:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.129
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762903653; cv=none; b=gr6cTwD6q99WE7iQUh1o41B2fGlGG5VkJ+B6H5K2cqyit40ooJrN/r70fM0YjRHD7h2aE84RKIHMtfwFdnF+J0aY4fHM/j14D/3RA3yvcLDMmEFP4Iz1MJqFTv9/uM9O4kzM4NzriCMV9igMv5E0LczOjHYTcwHmNI4+uUC9GLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762903653; c=relaxed/simple;
	bh=8m7+lLxwK1jgMXxcjpi4/8w6gGpmXSjUb/55SFWQpN4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hfTpfyn9+eImKBiDFHdmXhR6xaT4qAtaxLAUfZt0cKbI72F3d+WwUux4/sDdjBsYjlPRhQVw38dbXTRAYhOUfsHIofp8CTCPWOT5gTTECuEJx/ybqfZ+sW3cB4CDGDFsm819QH+/+KfTmoeECKVMgx7G/9N09TlvbtkYTzt6r50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.204.34.129
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1762903615t82afb619
X-QQ-Originating-IP: GxSOz8m4pUuf5yJc/YFgisTpIHHzieLlbtJIzItwdMs=
Received: from [IPV6:240f:10b:7440:1:16e6:e9c9 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 12 Nov 2025 07:26:51 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7311237971037193580
Message-ID: <2892FE50237CD58E+0f15924c-a915-4446-954c-d81a782d23e9@radxa.com>
Date: Wed, 12 Nov 2025 08:26:50 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 and IO Board
To: Dragan Simic <dsimic@manjaro.org>
Cc: Joseph Kogut <joseph.kogut@gmail.com>, heiko@sntech.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
 kever.yang@rock-chips.com, honyuenkwun@gmail.com, quentin.schulz@cherry.de,
 pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
 <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com>
 <617FDAB231C501DC+3f9809df-87df-4a02-bd5f-ebc6299b3aa7@radxa.com>
 <a10340af-1d0a-bb0b-4835-7b2c9e67d664@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <a10340af-1d0a-bb0b-4835-7b2c9e67d664@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: MACXe2l6e7j9v35cxXlys+2Rt/Tfvmp+C/JDYstf5N1eJjSCrrzBpj2t
	/+q2eErhxM3t02+A2KHIcK0kiGMXFdm9ds5wXpgtrLq46v6yR4bgasN2bSWf4AgCpGHn/TY
	gtsQx3qlzNU/jYSBqGiElg40HfhHpByJ9ysIsfhBQKFGdBpn71JRF4dPnyWqJA2spYSx6hk
	AZrNOswF2ewnfbAo1/ul0wXtaBKxUGmucs1XMazKjw7FfHjKGKsagIROa5I91ucHSHXfpHP
	dI0e1OBXOutCA2bIFDIizWdmzaFJ7HtIcE4IXG2lLCcCAWfrPUkTbyGxkhL+dI9247S/l5y
	8sf6tw3yA61ikdAMzGTDV0lVgt+nfGnh7uCGMeLSsLtBChumYDqzHvHHqbulKD3la5ee+qX
	6RQjL1XoKvDF2tCw+q+z2b15mL6jCq1vggis3aBBfHLvLH7SW1Kh0ptZDkigicaDtOszkS1
	5Olfn6RR0Mma4Cyo3kcOVupkAqeAw0w1XENgKaMQV7wmB4m6mM1D6HWz9Q/QdsRdSLumksD
	lfPb+OpayuV4rr7QybPs36OCCWg+2WQl1ik3SyiIkSFLu9CE/zQWpDTKH5nI7Nwz4nkGf0K
	cEoW2qScq9GMgT2KejteH3/9zKPF7ORXRz76EYiAm/QVoJ7DHt9ihk6KjpgF3J5wFRt0/Vx
	tRME7IRke3W4xgWFxPXEX2tYLD3Qb03EZD8ml33uxytOSzJbWRqabHMI1oK0IsUNDzauZb+
	pu6HmjByzdRiJnQACO8eL4eRcwEWd+TrdJhynO4dYjJOT1YdUpXoshziKXctMJJ64MsZIKA
	RdDbzOmqKjySsFQSxKj4sQXEYh8ZzcGiU5yg+DrBt9StfSXJx0qgZeowHVRoh/3X6rxucVm
	Xopi1va0hs5jwba/0k1GuPrRVcpUNhLBUlz/Pg2RKBgGHA8jvSREA84bW8HWTfix4RtHfDT
	tMkxIpW6VY4JdWR7tqeSD9uUaf0aGlpNZygs8S99h6n6eQFB3Q+BwR0GQ
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0

Hi Dragan, Joseph,

On 11/11/25 23:33, Dragan Simic wrote:
> Hello all,
> 
> On Tuesday, November 11, 2025 12:52 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
>> On 11/6/25 02:48, Joseph Kogut wrote:
>>> On Wed, Nov 5, 2025 at 4:15 AM FUKAUMI Naoki <naoki@radxa.com> wrote:
>>>> I'd like to clarify the situation regarding the v6 patch series I submitted.
>>>>
>>>> The original device tree work for the Radxa CM5 and IO Board was
>>>> authored by Joseph Kogut. I took over the responsibility of getting it
>>>> upstreamed with his agreement.
>>>
>>> I'll confirm this. I've been in communication with Naoki. They made a
>>> large number of revisions to my original patch series, which I think
>>> have technical merit. I suggested they submit the patches themselves,
>>> and gave them explicit permission to add my Signed-off-by and CC me.
>>>
>>> I assume this was the correct way for them to continue the work I
>>> started, but if not, please let us know the best way to proceed.
>>
>> Can anyone help us?
> 
> I'm not exactly sure how to resolve the current situation, but for
> Signed-off-by tags to be present, in this case you'd need to have
> Co-developed-by tags as well, because the final patch versions,
> which would be submitted by Naoki, would differ significantly from
> the versions that Joseph actively worked on, if I understood
> everything correctly.  Though, for Joseph's Signed-off-by tags to
> be included there, he would also need to participate actively in
> the development of the final patch versions.

https://www.kernel.org/doc/html/latest/process/submitting-patches.html#when-to-use-acked-by-cc-and-co-developed-by

If
----
From: Joseph Kogut <joseph.kogut@gmail.com>

<changelog>

Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
Co-developed-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
----
then I can submit my patch series?

Or,

> Another option, technically a bit simpler, would be to include just
> Originally-by tags for Joseph, which would indicate that Joseph gave
> up on the development of the patches and handed them over to Naoki
> for future development and submission to the mailing lists. Though,
> that would require Joseph to publicly state exactly that.

I cannot find any documentation about "Originally-by".
Is this correct?
----
<changelog>

Originally-by: Joseph Kogut <joseph.kogut@gmail.com>
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
----

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.



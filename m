Return-Path: <devicetree+bounces-234125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E19BC2916B
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 17:03:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D3D4E188B409
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 16:03:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EDC819CC28;
	Sun,  2 Nov 2025 16:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="Ue/O+sHM"
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D43C7381C4
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 16:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.161
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762099377; cv=none; b=KrZS25hAHmVnuy+/9K6llLk1zDa9y+aVBQRqRK/rFGoHmU0fZH4Ouo28UdiXGgITPe0OskUSRx3ZZH5PdNQUuyDztUx3+fTo3vzk5IAxl036dmOich5jhFomzz7uCtcWcIOoNJ0j3Sz98Y1G6FOqrMlPivgcXojiySqcOV/CJFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762099377; c=relaxed/simple;
	bh=sC0JUchej1gDcK02dqF7Fyds3gz6bTwWxk2L7OGNmSo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wzvdf6rVspEzZmt62mngr+pUVfjqO5Spa7h4nHHMQP6NxzevLOW4qrnJfFiu9434lnpBJLy0eIH6fuA9hpDi3VdACHyuPWuGo81EwDQlN6DwlKIdFn3EqyRTNggDODLpiIex+VsN8RjnMUhP3IaMABNUPI7WiR++wQT750fkS/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=Ue/O+sHM; arc=none smtp.client-ip=80.241.56.161
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mailbox.org
Received: from smtp102.mailbox.org (smtp102.mailbox.org [10.196.197.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4czzyF0XKyz9scN;
	Sun,  2 Nov 2025 17:02:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1762099365;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yXnbX8obOxTZByxtaFJTonCzW0Sj9xEqQruBvutIFTA=;
	b=Ue/O+sHMUIkVTVRZaqnQY+gmPnJbUOOEBZIbT8CGO97u8N3tB+gLpKYvh8BEZtSersVGge
	upilb0Rhvh6hy5E5+SfBTkm5u7AMVoh4LoIdO9lVcDn7ddtBLV0KOk2b/GQsWIO7THRJeK
	HsvvmAILyejprOUKQjlOBCmfc9CjlbUUgjpXAOtVTqYmxF+ILu849OgGIF1BDsjXxQQx9x
	rGdzrgx0nwi6Rrt0CVCFLfodWD7QfgB+/t67TckYeO+UHNaUE+BblzA2MXBOD+xbDisIK0
	Gv3wb3/8kkofEhxIpZfEYCRKdtpTJSiDdzv7v+4RI5nWyxcmOcHIKdGUeK9qRA==
Message-ID: <f9057853-8b43-4ab6-ae65-ee5e4d569c46@mailbox.org>
Date: Sun, 2 Nov 2025 17:02:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v3 2/2] arm64: dts: imx95: Describe Mali G310 GPU
To: Shawn Guo <shawnguo2@yeah.net>, Rain Yang <jiyu.yang@oss.nxp.com>
Cc: airlied@gmail.com, boris.brezillon@collabora.com, conor+dt@kernel.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 festevam@gmail.com, imx@lists.linux.dev, kernel@pengutronix.de,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 liviu.dudau@arm.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 p.zabel@pengutronix.de, robh@kernel.org, s.hauer@pengutronix.de,
 shawnguo@kernel.org, simona@ffwll.ch, sre@kernel.org, steven.price@arm.com,
 tzimmermann@suse.de, xianzhong.li@nxp.com
References: <20250925203938.169880-1-marek.vasut@mailbox.org>
 <20250925203938.169880-2-marek.vasut@mailbox.org>
 <ba95487c-ada7-48a4-90b7-fd99a0278f51@mailbox.org> <aP7DZCMk1pQ7wsFo@dragon>
 <aQB88c_AEC1RAZtH@oss.nxp.com> <aQCIAfyUC6N5y2fB@dragon>
Content-Language: en-US
From: Marek Vasut <marek.vasut@mailbox.org>
In-Reply-To: <aQCIAfyUC6N5y2fB@dragon>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-MBO-RS-META: s6w1ijnr4si371hym9im6ykirojs63uu
X-MBO-RS-ID: 393e84e1997a987fb3c

On 10/28/25 10:08 AM, Shawn Guo wrote:
> On Tue, Oct 28, 2025 at 04:21:05PM +0800, Rain Yang wrote:
>> On Mon, Oct 27, 2025 at 08:57:08AM +0800, Shawn Guo wrote:
>>> On Sat, Oct 11, 2025 at 12:53:29PM +0200, Marek Vasut wrote:
>>>> On 9/25/25 10:38 PM, Marek Vasut wrote:
>>>>> The instance of the GPU populated in i.MX95 is the G310, describe this
>>>>> GPU in the DT. Include dummy GPU voltage regulator and OPP tables.
>>>> Is there still anything that should be changed with this patchset, or can it
>>>> be applied ?
>>>
>>> I'm waiting binding change to be applied first.  Or is it already done?
>>>
>>> Shawn
>>>
>> Hi Shawn,
>> It might be better for Marek to remove the always-on GPUAPB clock from the DTS, given that
>> it's an SCMI protocol clock and the kernel expects it to be available during operations.
>>
>> Also, the gpu_fix_reg appears unnecessary for the driver and could be removed[1].
>>
>> [1] https://cgit.freedesktop.org/drm/drm-misc/commit/?id=a8cb5ca53690aa809f4f65e14192753073e61a71,
>> https://cgit.freedesktop.org/drm/drm-misc/commit/?id=02df3543f3e0ea572e2c739605ebd6c20e1149c4
> 
> Ah, sorry! I did not know we haven't reached agreement on the change.
The feedback above is new to me, so I am somewhat surprised too.

I'll just send a rebased V4 now.


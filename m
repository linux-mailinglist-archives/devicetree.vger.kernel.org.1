Return-Path: <devicetree+bounces-236244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B6EC41BDC
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 22:13:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 254C7561EBF
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 21:10:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C80433BBDD;
	Fri,  7 Nov 2025 21:07:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0A2F33DEFB
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 21:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762549637; cv=none; b=cNmcBIDZhCqfUUqYyKALTlsRuXIVGbmp1euyLryn47l5H9Az5wMIBU6yeC2HRX87GR6CPjo9SrKpNQhcBBWcQaTViVwz9KJjXcoApsnGwM1qiaXkT1127aK6m9thzelMP8EO9O+AS43Rom99N0L/8lKnvGQdhp52C0Miu5d0cqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762549637; c=relaxed/simple;
	bh=WYD4+nVqmn8xdO6/m0G1Di/RyLfcikFbr473qTzxXm4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ILlo8nyX+N7tFf1Z/OhmiuNljFozL6jj5d93yrTzzDw3vmvImRLj5jQ3dL4rNBmUPzHg/9GHIMafkfSSSDoLkYPwzs9lvBOCWrk8lF9lP1uQ8u9iPpQ/vSbFTPMwaIQUozH4dw0/4DwUwqTNMSFQcdzETbVBzON/NdoiRlEsFLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHTeG-0001aK-Mg; Fri, 07 Nov 2025 22:05:32 +0100
Message-ID: <da41c891-db89-436f-a262-61dfd33d57f9@pengutronix.de>
Date: Fri, 7 Nov 2025 22:05:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v4 1/3] dt-bindings: lcdif: Document a imx6sx-lcdif
 fallback
To: Fabio Estevam <festevam@gmail.com>, Liu Ying <victor.liu@nxp.com>
Cc: marex@denx.de, stefan@agner.ch, airlied@gmail.com, simona@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 shawnguo@kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org
References: <20251013205155.1187947-1-festevam@gmail.com>
 <4bd512fd-b3df-484a-8a04-a1ed066c42fa@nxp.com>
 <CAOMZO5AGRejEwNvkH0Di0HVi8QPduTeCSud+_GqOkD4tqEcsdA@mail.gmail.com>
 <37b8d968-a725-404e-8fd4-84c2a0bb464c@nxp.com>
 <CAOMZO5B+VcGxx9Xa6FFXxeka0qcqBmATrartguqMLMDK4fGduA@mail.gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAOMZO5B+VcGxx9Xa6FFXxeka0qcqBmATrartguqMLMDK4fGduA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi,

On 04.11.25 21:44, Fabio Estevam wrote:
> On Mon, Oct 20, 2025 at 11:53 PM Liu Ying <victor.liu@nxp.com> wrote:
>> On 10/20/2025, Fabio Estevam wrote:
>>> On Tue, Oct 14, 2025 at 1:12 AM Liu Ying <victor.liu@nxp.com> wrote:
>>>
>>>> Strictly speaking, I don't think i.MX6SX LCDIF is compatible with i.MX28 LCDIF
>>>> because at least i.MX28 LCDIF has the version and debug{0,1,2} registers(at
>>>> 0x1c0, 0x1d0, 0x1e0 and 0x1f0) while i.MX6SX LCDIF hasn't.

Thanks for pointing this out. In my opinion, these registers are auxiliary
and don't really change the compatibility situation as a functional driver
can be written without their use, evidenced by the Linux driver doing just
fine without using these registers.

>>> There are some DT users, such as Barebox that matches against
>>> fsl,imx28-lcdif, so we cannot remove it.
>>
>> Hmmm, it looks like software projects like Barebox don't really follow this DT
>> binding.  Is it possible to fix Barebox to avoid changing this DT binding by
>> this patch?  I'm assuming that Uboot has already been fixed.
> > What do you think?

I am sorry my prior feedback ended up stalling this series.

There is a lot of regressions happening due to upstream DT changes and I am
just trying to raise awareness. Another example I stumbled over today:
https://lore.kernel.org/all/91f764ab-bec1-4791-b01b-3ba0803ce8f8@pengutronix.de/


I have submitted a patch[1] to barebox adding explicit i.MX6 SoloX support,
so, having expressed my opinion above, please proceed as you see fit.

[1]: https://lore.barebox.org/barebox/20251107210033.2229781-3-a.fatoum@barebox.org/

Cheers,
Ahmad

> 
> Thanks
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


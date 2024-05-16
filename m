Return-Path: <devicetree+bounces-67292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EA98C756F
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 13:46:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B369283555
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 11:46:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFDEF1459FE;
	Thu, 16 May 2024 11:46:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B6926AD0
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 11:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715860001; cv=none; b=UMNKyW8JYa0sUyhp/6d6XCqbmsnqsrCYNIhDdJa7rmAamItNWE6vNkFLH6InLE6EkTfz7vWBfmzOo9mQEDmAjvxzHG4RmQB0PVWeeEucXvkRzXlccZBkMZfyXhRXlyOq2QLts8mcmtU9ErdwoEy6WXR35RjvueEyRLpbl8C2+SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715860001; c=relaxed/simple;
	bh=V3cPfKCp7Bs3KeBZiiyUOSH7VeC6lMnZrnTClFJmYHs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OfKFL/MYN811cqnn85TcM/ea7eRSPdleEIIcbh6nMeFh/xEoQ/GmLt2Ny5uIcfm/tR3Xf7lBM52oYWROZycpJ3OjioRGsT2HSd4NaZcrMG+OgrkmN9UZTRszkBwcrQptl1HhD6EudHySOPtzu75Q+5qhfFgk6DO9NW8fzE3eNts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7ZZC-0002GH-Qk; Thu, 16 May 2024 13:46:34 +0200
Message-ID: <69c3517c-0fa4-4e0d-9515-21adfb6730a8@pengutronix.de>
Date: Thu, 16 May 2024 13:46:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: imx8mp: Enable HDMI on i.MX8MP DHCOM PDK2 and
 PDK3
To: Marek Vasut <marex@denx.de>, Francesco Dolcini <francesco@dolcini.it>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, kernel@dh-electronics.com,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Fabio Estevam
 <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
References: <20240514010706.245874-1-marex@denx.de>
 <20240516080008.GA9338@francesco-nb>
 <76b3cee8-1fe3-4192-b8c9-7a9c2b7165f0@denx.de>
 <b354724f-5235-4519-8361-b8209ab99d36@pengutronix.de>
 <fa01ef26-d4d4-4c62-9c12-1f8bed1cfdab@denx.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <fa01ef26-d4d4-4c62-9c12-1f8bed1cfdab@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 16.05.24 13:44, Marek Vasut wrote:
> On 5/16/24 1:36 PM, Ahmad Fatoum wrote:
>> Hello Marek,
> 
> Hi,
> 
>> On 16.05.24 13:14, Marek Vasut wrote:
>>> On 5/16/24 10:00 AM, Francesco Dolcini wrote:
>>>> Hello Marek,
>>>
>>> Hi,
>>>
>>>> On Tue, May 14, 2024 at 03:06:42AM +0200, Marek Vasut wrote:
>>>>> Enable HDMI output on i.MX8MP DHCOM PDK2 and PDK3. The I2C5 on PDK2 and
>>>>> I2C mux port 1 on PDK3 respectively are used in regular I2C mode instead
>>>>> of HDMI DDC mode to permit connection of other I2C devices on those buses.
>>>>
>>>> Are you able to read the HDMI EDID with such configuration? I have the
>>>> patch ready for verdin imx8mp, I just did not have time to figure out
>>>> this last details.
>>>
>>> Yes with ddc-i2c-bus in hdmi_tx{} node, no with ddc-i2c-bus in connector node. Maybe that's what you're running into ? The DW HDMI core needs the ddc-i2c-bus property in hdmi_tx{} node if you use non-native I2C bus for the DDC channel.
>>
>> What benefit does the hdmi-connector provide over just omitting it?
>> Just for documentation purposes?
> 
> I was under the impression describing the hardware in DT in full was the best practice (TM), hence it is in full here.

Sure, I am just wondering what effect, if any, it has in how Linux interprets
the device tree. I have an i.MX8MP board with HDMI as well, but without
connector (yet).

Cheers,
Ahmad

> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



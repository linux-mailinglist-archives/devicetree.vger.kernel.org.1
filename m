Return-Path: <devicetree+bounces-124587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 296A19D94E3
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 10:52:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3F41BB2D2C9
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 09:42:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FC511BC07E;
	Tue, 26 Nov 2024 09:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="f4g0+9GD"
X-Original-To: devicetree@vger.kernel.org
Received: from omta034.useast.a.cloudfilter.net (omta034.useast.a.cloudfilter.net [44.202.169.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78CDB1BC063
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 09:42:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732614157; cv=none; b=uRJsQgHcMLdCXnp9TCkFBnR6ebYMrZzIABRfTC+KlXlv3uoc7Iu6zxpM0PDjfJyG1odH5OuvNVbEBDxZBP9PtBvq95iNSB6MVMc5TR4wbDAI+Q8aRpYXWGcFViRB+sPjrRRCgn6vxW5FgpdJiy5oIVp9bN0AjB94ccngRyQlv0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732614157; c=relaxed/simple;
	bh=oZ1V4vxuGuPJ4NWtIPdUqCuYLvnjiunTez6SrHPrbUo=;
	h=Message-ID:Date:MIME-Version:Cc:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=MoJDVxhNVN+PBABA/0SQyB13E7O0aasltUURntltRe4FLKyXZUkspssNHj79BHzOWMOn2PCpKtqe94l3X60lwjRFflroMMdqTXY62501QR+raZrxkYQSpRxmpN1GFovSJBbSGpVoqwHhChrL4oXajvaOMwWuAOKjPRHfrCyF3NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=f4g0+9GD; arc=none smtp.client-ip=44.202.169.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-6007a.ext.cloudfilter.net ([10.0.30.247])
	by cmsmtp with ESMTPS
	id Fc5vtDpKyrKrbFs5Ut5XmA; Tue, 26 Nov 2024 09:42:28 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id Fs5QtR5gjXDcgFs5Rt4jtj; Tue, 26 Nov 2024 09:42:26 +0000
X-Authority-Analysis: v=2.4 cv=MedquY/f c=1 sm=1 tr=0 ts=67459802
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=VlfZXiiP6vEA:10 a=-pn6D5nKLtMA:10
 a=f_B5aOHfkBoSN7RXA7sA:9 a=QEXdDO2ut3YA:10 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:To:Subject:Cc:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=yZTKBGpgZf4XrglD2qS6e5aAZ3GC73kLE5Jc5m/+dAo=; b=f4g0+9GDPOzz75ZfRU1iGvo9Da
	Kd3j9Kp8gp9z2h+xkawGHunTbemVrWVs1y3BuhTJBH22jkZkQdgk7ih6zbaZemLd+6BTB9cili7+9
	dX6mf8b1mPr3+ubA/7Js6NT01UIGsRh4SKmMXDuRly4UNUMOBDMk7TF/khDM1yXWIojaRgd5B/Kc7
	14dWo43PqSCvvBFDsRWwZeNulxnBk08XylH/+f4b1JBnsxGr5omZkJL4yXTX42gZNfzvRc8maoXqs
	AzaHjW95uuCygwuAkftjrxOF7kxeRmj+Q2zX1X0qpfepyN9abHp/HYm9znxkf9l19xl8UQci45sHB
	zKD9lOkw==;
Received: from [122.165.245.213] (port=37436 helo=[192.168.1.5])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tFs5H-0042ui-2L;
	Tue, 26 Nov 2024 15:12:15 +0530
Message-ID: <34590e17-92be-405e-a072-e86d0dcb7234@linumiz.com>
Date: Tue, 26 Nov 2024 15:12:10 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: parthiban@linumiz.com, Frank Binns <frank.binns@imgtec.com>,
 Matt Coster <matt.coster@imgtec.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: gpu: add reset control property
To: Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor@kernel.org>
References: <20241125-pvr-reset-v1-0-b437b8052948@linumiz.com>
 <20241125-pvr-reset-v1-1-b437b8052948@linumiz.com>
 <20241125-dress-disliking-2bf22dd4450e@spud>
 <ec0c0a4f-9555-42bb-adac-3ba574fe82cc@linumiz.com>
 <42a9cd04-135b-40e9-ab42-a4a4a4f3ae27@kernel.org>
Content-Language: en-US
From: Parthiban <parthiban@linumiz.com>
Organization: Linumiz
In-Reply-To: <42a9cd04-135b-40e9-ab42-a4a4a4f3ae27@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1tFs5H-0042ui-2L
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.5]) [122.165.245.213]:37436
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 3
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfBM7+Z9gEnhqkyz/tLzbt9JnWuK41qHTURRYV3Zbzlz5vztRbRNOpSN8WElRF06ByQXotCECZcCOPJbcVTINjqc/b8hm3BbomYJJb+WOAjM2xfB/yPIc
 7g5+gLZgsSEd628mIesq7OgC9s6cZ8riWKBWRWDs319JLgcdzM0U0LrBXSfU9toX9hSw9vSRdZkifyFh4hh2VDNcCtlqe4Z+92I=

On 11/26/24 3:02 PM, Krzysztof Kozlowski wrote:
> On 26/11/2024 04:46, Parthiban wrote:
>> On 11/25/24 11:37 PM, Conor Dooley wrote:
>>> On Mon, Nov 25, 2024 at 10:07:03PM +0530, Parthiban Nallathambi wrote:
>>>> GE8300 in Allwinner A133 have reset control from the ccu.
>>>> Add the resets property as optional one to control it.
>>>
>>> There's no specific compatible here for an a133, but the binding
>>> requires one. Where is your dts patch?
>> A133 GPU is still work in progress in both Kernel and Mesa3D. Also power
>> domain support needs an additional driver.
>>
>> But reset control is independent of those changes. Should reset control
>> needs to be clubbed GPU dts changes?
> How is it independent? Are you adding it for the new platforms? If yes,
> then it is part of new platforms. Don't add properties which are not used.
Thanks for the review. Will address the points together when adding support
for GE8300 GPU.

Thanks,
Parthiban

> 
> Best regards,
> Krzysztof



Return-Path: <devicetree+bounces-124495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BB19D90C9
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 04:46:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EA859B2553F
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 03:46:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBC297DA9C;
	Tue, 26 Nov 2024 03:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="oUmp80/1"
X-Original-To: devicetree@vger.kernel.org
Received: from omta36.uswest2.a.cloudfilter.net (omta36.uswest2.a.cloudfilter.net [35.89.44.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C651A28D
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 03:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732592781; cv=none; b=JkjTay1LTU2A6F8NAs2A+UBtqDAjDylvWL3sA6zSWZdtvBhN+8ZzHGxjHp1fXHkfnwc2FSBJczflujHmRTlKGxFJR7lSHWVi6wfkpEmQM6mxB4uaAJy/omyptL4wsaDg+Sh+zES687PTvoEJeksieEr+jH5qHb2GJdJLJXnQexQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732592781; c=relaxed/simple;
	bh=YSkrqxKh9N5elFAjOCiYXy17rR2p3vfhcaMtMubZGys=;
	h=Message-ID:Date:MIME-Version:Cc:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=H8TemeaGboHc9rvAsl5ngEk0RiOi7rOqqLayQA8vcAMsR4qla5N2CuMvCBU5I1nslJbGoIU5K6Q7O2nth9BjNgbuytZnC0+FA8d+TNYwCZo+65PwezI0qRFZteQn31Wn76Oe+2GfqVgP2cDwg/RwO6NPzpX8SEjQBiUxrGOIK/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=oUmp80/1; arc=none smtp.client-ip=35.89.44.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-5005a.ext.cloudfilter.net ([10.0.29.234])
	by cmsmtp with ESMTPS
	id Fi3otocPNqvuoFmWntUxKV; Tue, 26 Nov 2024 03:46:17 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id FmWktLkY8jcdmFmWltktR9; Tue, 26 Nov 2024 03:46:16 +0000
X-Authority-Analysis: v=2.4 cv=DrWd+3/+ c=1 sm=1 tr=0 ts=67454488
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=VlfZXiiP6vEA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=Uhfq17CCtucz6BUgXkYA:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:To:Subject:Cc:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=EpVOpGc4bJDTukR4641wyoZUQ4tkmW15trkijARXKjE=; b=oUmp80/1hLyTPIV/hVQpxZ79Y/
	gJSI0jk/GnzimzQi+FvvxMT8ObK3qQFjXdUblR6oWeKbqu0LRORQceJJ6atxp9+WaIqHs/Ivw/LRV
	9H9teytC78wPq2Y8+YE6PEjUPRYq0kPl6/BxIU3z46s51nBUXZ8MDBSVuYg/sc5BbG+qj5zpKDHR8
	28DgJW4lWsTjsqvefcup0KcP4lTx8J07KKB3OXrFFjC+KPQRjEE0a5hqtrKQ241TO9FgtX7ZrzM14
	phf7hHHDnHpgynzGbGChboT/YjRTjzBqAv9ysTY3lxB0pPfH9/VZoiyB6fNWDO81leXjCgnf101fi
	bHblG8sA==;
Received: from [122.165.245.213] (port=40090 helo=[192.168.1.5])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tFmWe-003Oct-33;
	Tue, 26 Nov 2024 09:16:08 +0530
Message-ID: <ec0c0a4f-9555-42bb-adac-3ba574fe82cc@linumiz.com>
Date: Tue, 26 Nov 2024 09:16:05 +0530
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
To: Conor Dooley <conor@kernel.org>
References: <20241125-pvr-reset-v1-0-b437b8052948@linumiz.com>
 <20241125-pvr-reset-v1-1-b437b8052948@linumiz.com>
 <20241125-dress-disliking-2bf22dd4450e@spud>
Content-Language: en-US
From: Parthiban <parthiban@linumiz.com>
Organization: Linumiz
In-Reply-To: <20241125-dress-disliking-2bf22dd4450e@spud>
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
X-Exim-ID: 1tFmWe-003Oct-33
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.5]) [122.165.245.213]:40090
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 2
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfO3I4m7Jow+6iBL+xoW8slwiWFotDYmXEw34uVxrsnoCMkNrzptgTTxz9T8TvsyV7v0waO5bf+mykBipsr+jHDvtKNjyNDM/lEx9Fiq/mxdABGW5N2re
 rar2peIHhmSoZFOac++3FxHPKXWLMMBSm19WNuYizESL9Btzii7mlrdNEmjsiNWZ4a9mzTFvxh3K9pi1ZbmUBFA3aQ9VtF0KqYk=

On 11/25/24 11:37 PM, Conor Dooley wrote:
> On Mon, Nov 25, 2024 at 10:07:03PM +0530, Parthiban Nallathambi wrote:
>> GE8300 in Allwinner A133 have reset control from the ccu.
>> Add the resets property as optional one to control it.
> 
> There's no specific compatible here for an a133, but the binding
> requires one. Where is your dts patch?
A133 GPU is still work in progress in both Kernel and Mesa3D. Also power
domain support needs an additional driver.

But reset control is independent of those changes. Should reset control
needs to be clubbed GPU dts changes?

Thanks,
Parthiban
> 
>>
>> Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
>> ---
>>  Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml b/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
>> index 256e252f8087..bb607d4b1e07 100644
>> --- a/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
>> +++ b/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
>> @@ -37,6 +37,9 @@ properties:
>>    power-domains:
>>      maxItems: 1
>>  
>> +  resets:
>> +    maxItems: 1
>> +
>>  required:
>>    - compatible
>>    - reg
>>
>> -- 
>> 2.39.2
>>



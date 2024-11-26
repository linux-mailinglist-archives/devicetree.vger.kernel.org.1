Return-Path: <devicetree+bounces-124589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF819D94DE
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 10:48:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3524282906
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 09:48:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 677771474DA;
	Tue, 26 Nov 2024 09:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="bvJ39ELG"
X-Original-To: devicetree@vger.kernel.org
Received: from omta038.useast.a.cloudfilter.net (omta038.useast.a.cloudfilter.net [44.202.169.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE831B0F26
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 09:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732614518; cv=none; b=sfRvZ0fnscCF+Pi3gG0zpA9PvVFOPcbbRtdqUepQ1In0SyEr8hufL+GzimjLFVBbMI2sJTSy6dzUlo3kQKliZ23nNd24bqQQUBeYMcRQzuEbOEcLMUEKs36iXCXHU4HF16x8d3fPBmyzA4zyEEH+ehruSN3TbWxIOqpd5r7jKV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732614518; c=relaxed/simple;
	bh=gb1GQ1zjgZBWPfQSWpwJtdHDrDCMRo7ZKY+WpdWgifk=;
	h=Message-ID:Date:MIME-Version:Cc:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=BS/sxtsHiTct9IzOyjJeczV+yZ6q57nPS8vScX0j/fqp79DwullqC8LxDprbcD91x4SGgiPlCmNRdFfPP+IsqCIkz61QceSMt5E4gMNqB2lj9y77DBOLcXaqXlFToybYOVrXjwrJNllDKfddFoQKL5kApw0Q8vzUqJyaB8MmydU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=bvJ39ELG; arc=none smtp.client-ip=44.202.169.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-6006a.ext.cloudfilter.net ([10.0.30.182])
	by cmsmtp with ESMTPS
	id FffvtPA18g2lzFsBPtools; Tue, 26 Nov 2024 09:48:35 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id FsBMtPg8lfkSoFsBOtqzpd; Tue, 26 Nov 2024 09:48:35 +0000
X-Authority-Analysis: v=2.4 cv=dtLdCUg4 c=1 sm=1 tr=0 ts=67459973
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=VlfZXiiP6vEA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=93K1lgOoaU1w4VZerC0A:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:To:Subject:Cc:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=a8ueHubk6mmYB6WMiM5LtQ8T6xCsiCxFTTYrybUvEGE=; b=bvJ39ELGwy2D61eaKv8luPf6Xy
	YMjW/Cf8o9tvzappwisFYClHzW2/qZuoIX7ZEpDhgrfdrOqiyQYkcGGuk1CsXtqxd/QKDy8GAAKrp
	UKv4+IJmOc/6WL/6Cs7WTdgCIyXqsV7XE/kQBRuh04YPZQHDjxheSrQJNG/+xjo/QMx154CTOy7Ll
	8hBWdvpeMPLoid1PoxYhSUx8R5Y1wHTVjCtyB/AHNczmDvi+4Hp+lNXeqIqD3HR+zpzHoO2eVIMYt
	dC8kgGDdey4f/u32IT98n+Cwds9eoHxsP54E476rRqHIE9rfQ1ygZPcKWxn3gTepi7oivmaQd5AxZ
	pQh9ky0g==;
Received: from [122.165.245.213] (port=50212 helo=[192.168.1.5])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tFsBE-0048HR-2M;
	Tue, 26 Nov 2024 15:18:24 +0530
Message-ID: <b4839cdf-b07e-47c4-ad6e-fc148c1f045e@linumiz.com>
Date: Tue, 26 Nov 2024 15:18:19 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: parthiban@linumiz.com, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] drm/imagination: add reset control support
To: Philipp Zabel <p.zabel@pengutronix.de>,
 Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20241125-pvr-reset-v1-0-b437b8052948@linumiz.com>
 <20241125-pvr-reset-v1-2-b437b8052948@linumiz.com>
 <74d4fc4c6f08fde2d6759633cb2280ecb18cbd91.camel@pengutronix.de>
Content-Language: en-US
From: Parthiban <parthiban@linumiz.com>
Organization: Linumiz
In-Reply-To: <74d4fc4c6f08fde2d6759633cb2280ecb18cbd91.camel@pengutronix.de>
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
X-Exim-ID: 1tFsBE-0048HR-2M
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.5]) [122.165.245.213]:50212
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 19
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfFA/n4vjnQAMbSY0783OWNPZeNHDIrxf9LpeFlLaFVvdGPSqDojlfs1k7D6LR4fQ8OFLGlInuF8jseYF6y2lsPvvcXScNjW7GPairid9pr2Gn30biID4
 PVjFzBLvUCWGBGJGJ2SWuzR66jlvSkZM5I1R/ybJPFuYQCc5uj8ReoLvmgQyzJgkd4Vytktti906CCX1WZfPXMoh57CWQSTPs8Q=

On 11/26/24 2:59 PM, Philipp Zabel wrote:
> On Mo, 2024-11-25 at 22:07 +0530, Parthiban Nallathambi wrote:
>> On some platforms like Allwinner A133 with GE8300 includes
>> reset control from reset control unit. Add reset control
>> optionally from the devicetree.
>>
>> Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
>> ---
>>  drivers/gpu/drm/imagination/pvr_device.h |  8 ++++++++
>>  drivers/gpu/drm/imagination/pvr_drv.c    |  5 +++++
>>  drivers/gpu/drm/imagination/pvr_power.c  | 16 +++++++++++++++-
>>  3 files changed, 28 insertions(+), 1 deletion(-)
Thanks for the reviews. As with the binding patch comments, reset control
needs to be added together with the consumer i.e in this case GE8300 GPU
in Allwinner A133 SoC.

I will address the comments when sending patch with support for GE8300.

Thanks,
Parthiban



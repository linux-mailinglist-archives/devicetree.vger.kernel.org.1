Return-Path: <devicetree+bounces-157935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A910A636CF
	for <lists+devicetree@lfdr.de>; Sun, 16 Mar 2025 18:35:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 998C63ACF1E
	for <lists+devicetree@lfdr.de>; Sun, 16 Mar 2025 17:35:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E50EC1C32EA;
	Sun, 16 Mar 2025 17:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="P3KqNpPx"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A5F1AA1D9
	for <devicetree@vger.kernel.org>; Sun, 16 Mar 2025 17:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742146545; cv=none; b=tvGScYfKRQBB7V/ed4OqavFNcS6JJ995bF+wSyIEWLM7Ylpa62DlMlMWlT3AzqXd0jhM9wht+qLVQy59cpEAXHA+Se0/nq+k38+Vokf7MRlwuryGQtsMpxVNfG7uW33CR42Ed/jbUWucVqjLJ205nD/uJfzcZML16c1mS3zW4IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742146545; c=relaxed/simple;
	bh=9u6Tirh77zW9po2Uk1wlpG2ZUsbNqgg9QY7YG6/Q56I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m3NqM6si7yOmCXo9VD18+BAbKJ+WEuU6u5lYjEY08bPJJLP/DjfcElI18qPhBvdnXc7fCdF3o5M2MkQM2cy3Usp7z4zYpeQNdHUmcgHLxSWhSXiZTqdFPLzvRecVc5dS1EpUPBy/3y4WieVZcvUVdChgmtR4XXQjT6uC9E3/UGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=P3KqNpPx; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=b6WkkaiuuLjaqXljr7IpKwAGH4H8pXqhQsZzPrwzbDU=; b=P3KqNpPxoUsgoJV5rGbqIRwVdh
	nf9N6kfIa4TXq6G6x2J2M4Il3fbflEUFtKwap1eLyGl4odkCJSDrwUn7aD93G5zxcl49wuwcK6bfy
	kGX0My/O831MkjW7oPBfb8eK76C03qc2cYiO1foofoJ4fBTueFzTCE76H7fYY+aD4T7DVjNVjAdzn
	fTZiQaBdLPdJWzoTHlxDvgxolIQKah1vdZbtbIL4pYM14pQxT7Me/muh07q1I5Bz62hoRJ4IILwGa
	P0N1AIc1ZG0o2sNTSjfH3JJyfnEqioHQ1BoRo5QOVYxObScN/80LnLoHM+z801cvAR76pl3kJhKSz
	s1rNLViA==;
Received: from [189.7.87.178] (helo=[192.168.0.224])
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1ttrtZ-001AyB-On; Sun, 16 Mar 2025 18:35:30 +0100
Message-ID: <53123def-9b2f-48fb-8d91-803242debb58@igalia.com>
Date: Sun, 16 Mar 2025 14:35:20 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/6] drm/v3d: Associate a V3D tech revision to all
 supported devices
To: Stefan Wahren <wahrenst@gmx.net>, Melissa Wen <mwen@igalia.com>,
 Iago Toral <itoral@igalia.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Nicolas Saenz Julienne <nsaenz@kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, kernel-dev@igalia.com
References: <20250316-v3d-gpu-reset-fixes-v5-0-9779cdb12f06@igalia.com>
 <20250316-v3d-gpu-reset-fixes-v5-1-9779cdb12f06@igalia.com>
 <5dd6e477-989b-4a4a-b136-a1c863dbe2a4@gmx.net>
Content-Language: en-US
From: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
In-Reply-To: <5dd6e477-989b-4a4a-b136-a1c863dbe2a4@gmx.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Stefan,

On 16/03/25 13:51, Stefan Wahren wrote:
> Hi Maíra,
> 
> Am 16.03.25 um 15:15 schrieb Maíra Canal:
>> The V3D driver currently determines the GPU tech version (33, 41...)
>> by reading a register. This approach has worked so far since this
>> information wasn’t needed before powering on the GPU.
>>
>> V3D 7.1 introduces new registers that must be written to power on the
>> GPU, requiring us to know the V3D version beforehand. To address this,
>> associate each supported SoC with the corresponding VideoCore GPU version
>> as part of the device data.
>>
>> To prevent possible mistakes, add an assertion to verify that the version
>> specified in the device data matches the one reported by the hardware.
>> If there is a mismatch, the kernel will trigger a warning.
>>
>> Reviewed-by: Iago Toral Quiroga <itoral@igalia.com>
>> Signed-off-by: Maíra Canal <mcanal@igalia.com>
>> ---
>>   drivers/gpu/drm/v3d/v3d_debugfs.c | 126 ++++++++++++++++++ 
>> +-------------------
>>   drivers/gpu/drm/v3d/v3d_drv.c     |  22 +++++--
>>   drivers/gpu/drm/v3d/v3d_drv.h     |  11 +++-
>>   drivers/gpu/drm/v3d/v3d_gem.c     |  10 +--
>>   drivers/gpu/drm/v3d/v3d_irq.c     |   6 +-
>>   drivers/gpu/drm/v3d/v3d_perfmon.c |   4 +-
>>   drivers/gpu/drm/v3d/v3d_sched.c   |   6 +-
>>   7 files changed, 101 insertions(+), 84 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/v3d/v3d_debugfs.c b/drivers/gpu/drm/v3d/ 
>> v3d_debugfs.c
>> index 
>> 76816f2551c10026a775e4331ad7eb2f008cfb0a..7e789e181af0ac138044f194a29555c30ab01836 100644
>> --- a/drivers/gpu/drm/v3d/v3d_debugfs.c
>> +++ b/drivers/gpu/drm/v3d/v3d_debugfs.c

[...]

>> @@ -196,11 +196,11 @@ static int v3d_v3d_debugfs_ident(struct seq_file 
>> *m, void *unused)
>>           seq_printf(m, "  QPUs:         %d\n", nslc * qups);
>>           seq_printf(m, "  Semaphores:   %d\n",
>>                  V3D_GET_FIELD(ident1, V3D_IDENT1_NSEM));
>> -        if (v3d->ver <= 42) {
>> +        if (v3d->ver <= V3D_GEN_42) {
>>               seq_printf(m, "  BCG int:      %d\n",
>>                      (ident2 & V3D_IDENT2_BCG_INT) != 0);
>>           }
>> -        if (v3d->ver < 40) {
>> +        if (v3d->ver < V3D_GEN_41) {
> I had expected that such a behavior change was at least mentioned in the
> commit log.

I can add a comment about it in the commit message, but this isn't a
functional change. V3D 4.0 doesn't exist and hypothetically, if it did,
the driver doesn't support it. The driver only supports 33, 41, 42, and
71.

In the end, `v3d->ver < 40` means V3D 3.3.

Best Regards,
- Maíra

> 
> Except of this, look good to me.
> 



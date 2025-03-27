Return-Path: <devicetree+bounces-161257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F3AA7339E
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 14:53:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F1B3189A222
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 13:53:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF73F212D7A;
	Thu, 27 Mar 2025 13:53:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="F1ZLME6I"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4918820CCEA
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 13:52:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743083583; cv=none; b=gag871SVlX2rJDP9UGDXiilKHfPDzBPlqesOCGzWMGrvBhAEVBYuQf1t/2ISN1gO8VE6U/6GnyJZtSBACYGYp/7ijPGgPAC06m+Vo41im3jlj0FmkPLFdTteTk5aKxZb1TxV0CYxtPUaTwcpoKxIzOhiiu3qyoE99P3ceOHQ5OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743083583; c=relaxed/simple;
	bh=EZKmbj4a0S+xZFcQ9z651sZz2O0pU5YmZoqPo4X8Eh4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ftwN6soqs1e3qRpDQ6XDCnPE+allnsosoZkuUr9hVR/m3NsryNmYLL6wQeKsy3fwurcRXKGtE4uNqKVKFV55YR5V56Y/7yiNh8iOGfI1t3MjqLNYL5mR7ExkE+pFNUV6TNHY+mAe4zDj/2IPTXcu8jWnVp+6GBAkVGYFsKjypDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=F1ZLME6I; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=wM4oVcwxrWlVGmyeT76cBxZCuG1OHMlHbi5XRiXUE3g=; b=F1ZLME6IBFhaWhNOqrnCIpeuWQ
	gzS1smS8aYoHNOOODtVPT7oyzhs5YSOttJMd2TnrW0Cn/Jenw0Krgq+m6TzpeCduWk77MEwXEnwyi
	blRikOCyYUc88/gZ+cT2ztCRH4/K4kBer/CDLP55jefU5/YF5fwLaClVYb1reRVgUui1KtOakyZre
	Q3UDUad4GWhdngdTn95GRpep36R3r6D5x3nJPrfpDTY3POp3v8clWup6dx9sEZz6VI0UjzWjs3XhP
	YOboGAyVgo/D2/2dmPKx27M2iTcHs8/xgCTyy4zDerK7IbDN50sJYi4+xRkDrKSwFvfybvhO225BB
	hNYH353A==;
Received: from [189.7.87.178] (helo=[192.168.0.224])
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1txnf1-007FSA-L2; Thu, 27 Mar 2025 14:52:43 +0100
Message-ID: <f85dc2d3-a601-4caf-9ddb-c3256423f001@igalia.com>
Date: Thu, 27 Mar 2025 10:52:38 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 5/5] drm/v3d: Use V3D_SMS registers for power on/off
 and reset on V3D 7.x
To: Stefan Wahren <wahrenst@gmx.net>, Melissa Wen <mwen@igalia.com>,
 Iago Toral <itoral@igalia.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Nicolas Saenz Julienne <nsaenz@kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, kernel-dev@igalia.com
References: <20250317-v3d-gpu-reset-fixes-v6-0-f3ee7717ed17@igalia.com>
 <20250317-v3d-gpu-reset-fixes-v6-5-f3ee7717ed17@igalia.com>
 <bffb4df1-1171-4a9b-9b73-af33136c620a@gmx.net>
Content-Language: en-US
From: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
In-Reply-To: <bffb4df1-1171-4a9b-9b73-af33136c620a@gmx.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Stefan,

On 27/03/25 07:57, Stefan Wahren wrote:
> Hi Maíra,
> 
> Am 18.03.25 um 02:01 schrieb Maíra Canal:
>> In addition to the standard reset controller, V3D 7.x requires 
>> configuring
>> the V3D_SMS registers for proper power on/off and reset. Add the new
>> registers to `v3d_regs.h` and ensure they are properly configured during
>> device probing, removal, and reset.
>>
>> This change fixes GPU reset issues on the Raspberry Pi 5 (BCM2712).
>> Without exposing these registers, a GPU reset causes the GPU to hang,
>> stopping any further job execution and freezing the desktop GUI. The same
>> issue occurs when unloading and loading the v3d driver.
>>
>> Link: https://github.com/raspberrypi/linux/issues/6660
>> Reviewed-by: Iago Toral Quiroga <itoral@igalia.com>
>> Signed-off-by: Maíra Canal <mcanal@igalia.com>
>> ---
>>   drivers/gpu/drm/v3d/v3d_drv.c  | 40 ++++++++++++++++++++++++++++++++ 
>> ++++++++
>>   drivers/gpu/drm/v3d/v3d_drv.h  | 11 +++++++++++
>>   drivers/gpu/drm/v3d/v3d_gem.c  | 17 +++++++++++++++++
>>   drivers/gpu/drm/v3d/v3d_regs.h | 26 ++++++++++++++++++++++++++
>>   4 files changed, 94 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/v3d/v3d_drv.c b/drivers/gpu/drm/v3d/ 
>> v3d_drv.c
>> index 
>> c63f0ed1bd8a3d5511085e76ed2fbd6ee7df6f80..122848cdccc4a02039d9ea2e77aa2f377886b5d6 100644
>> --- a/drivers/gpu/drm/v3d/v3d_drv.c
>> +++ b/drivers/gpu/drm/v3d/v3d_drv.c
>> @@ -263,6 +263,36 @@ static const struct of_device_id v3d_of_match[] = {
>>   };
>>   MODULE_DEVICE_TABLE(of, v3d_of_match);
>>
>> +static void
>> +v3d_idle_sms(struct v3d_dev *v3d)
>> +{
>> +    if (v3d->ver < V3D_GEN_71)
>> +        return;
>> +
>> +    V3D_SMS_WRITE(V3D_SMS_TEE_CS, V3D_SMS_CLEAR_POWER_OFF);
>> +
>> +    if (wait_for((V3D_GET_FIELD(V3D_SMS_READ(V3D_SMS_TEE_CS),
>> +                    V3D_SMS_STATE) == V3D_SMS_IDLE), 100)) {
>> +        DRM_ERROR("Failed to power up SMS\n");
>> +    }
>> +
>> +    v3d_reset_sms(v3d);
>> +}
>> +
>> +static void
>> +v3d_power_off_sms(struct v3d_dev *v3d)
>> +{
>> +    if (v3d->ver < V3D_GEN_71)
>> +        return;
>> +
>> +    V3D_SMS_WRITE(V3D_SMS_TEE_CS, V3D_SMS_POWER_OFF);
>> +
>> +    if (wait_for((V3D_GET_FIELD(V3D_SMS_READ(V3D_SMS_TEE_CS),
>> +                    V3D_SMS_STATE) == V3D_SMS_POWER_OFF_STATE), 100)) {
>> +        DRM_ERROR("Failed to power off SMS\n");
>> +    }
>> +}
>> +
>>   static int
>>   map_regs(struct v3d_dev *v3d, void __iomem **regs, const char *name)
>>   {
>> @@ -300,6 +330,12 @@ static int v3d_platform_drm_probe(struct 
>> platform_device *pdev)
>>       if (ret)
>>           return ret;
>>
>> +    if (v3d->ver >= V3D_GEN_71) {
>> +        ret = map_regs(v3d, &v3d->sms_regs, "sms");
>> +        if (ret)
>> +            return ret;
> Is it correct, that BCM2712 now requires the SMS register and otherwise
> the driver doesn't probe?

Hum, yeah, it is correct, but I can send a patch to ensure backwards
compatibility. But keep in mind that you won't be able to reset the GPU
or unload/load (power on/off).

> 
> Just a note for the future: the devicetree is considered as an ABI [1],
> so new kernels should still work with old DTB (no regression). For
> Raspberry Pi OS, the kernel and DTB are always updated, but this doesn't
> apply for Linux Mainline. AFAIK V3D doesn't work with Linux Mainline on
> Raspberry Pi 5 yet, so this is just a theoretical problem.

Yeah, I had that in mind, but due to the reason pointed in the end of
your comment, it was okay to do so and ensure that reset and power on/
off will work when RPi 5 reach upstream support.

But, I'm open to send a patch removing the requirement.

Best Regards,
- Maíra

> 
> Best regards
> 
> [1] - https://docs.kernel.org/devicetree/bindings/ABI.html



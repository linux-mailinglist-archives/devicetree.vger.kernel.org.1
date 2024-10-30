Return-Path: <devicetree+bounces-117437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E03AA9B6323
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 13:36:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 12CB81C208B2
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 12:36:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 216CC1E570B;
	Wed, 30 Oct 2024 12:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GFRe41tY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067011E1301
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 12:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730291788; cv=none; b=Z+1Qr/1LrTjmX+lfeWpEfafTWk1JP3PtkP4PE2EGWvzDuwzpJ2VetDAfqKqoVaJ4mrtS+GpJh+AVD6JByY7XkWWwdJP7cANXc+ETJYK4OxnFmfKCLPMMhLv4kfnyqczvrYSFTPFZhaiUf3SpmJTw9RfgjRcuFZdV6EKG3VfvoIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730291788; c=relaxed/simple;
	bh=1KULsa+6j+6JCRwXetM56Lo0Zn1gw65F9feRGJpZAlI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I13eS86acWI/Uj/E9XL3OiV9/VKvNu85IRmcQRZRiVxWlXDsTK7vDjkhLx6UAjpfoYAusj5edkPYFOqvwiuadk0Ooy56VY77lQSNH3J2Y29c3ZfkMc+2AuG5id3gEjwL9j8SXk4mb53ii3ftJzPaiNoGgRfXymuKygK6KTNKI3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GFRe41tY; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-37d4fd00574so552898f8f.0
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 05:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730291784; x=1730896584; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Dz8ORMovlm8PCaRFyxkHztKoIVxbuXiuAHwjiXhbYNM=;
        b=GFRe41tYh0/0RJ4DTtspjGPX7JYeR2XtAqYQQURty/da+ccLsHqsTsEkFG4M6C8e06
         HBsoK0KL2Fl6s42bnC9iXFlUgezE2/S65fXHTmdJmaWzfFHNeqXZCnqYBX6nwmF8en0z
         9UkFYKz+rndqyUQEfhKpqVDo8PnWTUKmKxwwtjlOqtaO9TGIRd/xWpw90KXgfpnxceuZ
         rt1KuDE3nZB6Q4Ua7C94dJaNNHOuiB5oaO32roeUuwGrw+u5kQy0zVaBeZbUe6VP/MNs
         dAyzrkrQpPO5VBnKULe8r9qnab267CzmtIKXht0joYDIUNdXK0/+DKAK0aEHLmV1Vgb0
         32Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730291784; x=1730896584;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Dz8ORMovlm8PCaRFyxkHztKoIVxbuXiuAHwjiXhbYNM=;
        b=rHq7nSbJlkG54VsZtqJqcZ/aI0qM1LNieV9ir2E24LO+dNyt7RToL6tmOMA7DxlH0A
         VQqAdyOfsLqwPCjli8+xnD6g5wIlBZ7F/udXC/ByK+AV5XHRkCHtbB7Ls3Hg8ZK36JVT
         fS1VxGpQLqtpA/oJnrzCkNUyczhtspXLX7BMPvO6cSb38wY0tnK8YHzVCZjVRYkbminG
         WzcJgql7cTjWxQ889csV1XsFLXQhYaC3Q11uOZg4quSAW6cROuv7XI4J5Py+sYramsUj
         N4+mwE+ns5PDTVnSDlguGnUTgFLFrWKj2dYb7St0EmaEv35LkiL7IAIv5ed6UwBATq/Q
         Xu4Q==
X-Forwarded-Encrypted: i=1; AJvYcCUqkkdVsT7PYWFS6lQLU7P7VdcTe410C0jn+1pb60Th6tscmAcAbWIp/IA3vDZ8kEmH24rXWKxlr+LS@vger.kernel.org
X-Gm-Message-State: AOJu0YyCrdY8HupH1n02b3rV1W2YugA4YEzm5kyHh/o2hA6k8Vxt5ugy
	GMg3SoCWK9CbT7d2GkAGQXx1rrwjnie2B1jQk2Q0t8W7DrGjmKPsJPXSG1q8/rc=
X-Google-Smtp-Source: AGHT+IH4FRnmdK9aLuDppBh7wG3Y7nEnBh681TyLIF03sNmMciY0XgRonlSoema7XbLW/dKKGVBRtA==
X-Received: by 2002:a05:6000:504:b0:37c:fbb7:5082 with SMTP id ffacd0b85a97d-3817d649f89mr4690368f8f.25.1730291784286;
        Wed, 30 Oct 2024 05:36:24 -0700 (PDT)
Received: from [192.168.0.157] ([79.115.63.43])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b47952sm15159285f8f.48.2024.10.30.05.36.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2024 05:36:23 -0700 (PDT)
Message-ID: <8dfeb9bf-3326-4d04-8dfb-fea9dad85864@linaro.org>
Date: Wed, 30 Oct 2024 12:36:21 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 08/11] scsi: ufs: exynos: enable write line unique
 transactions on gs101
To: Peter Griffin <peter.griffin@linaro.org>
Cc: alim.akhtar@samsung.com, James.Bottomley@hansenpartnership.com,
 martin.petersen@oracle.com, avri.altman@wdc.com, bvanassche@acm.org,
 krzk@kernel.org, andre.draszik@linaro.org, kernel-team@android.com,
 willmcvicker@google.com, linux-scsi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 ebiggers@kernel.org
References: <20241025131442.112862-1-peter.griffin@linaro.org>
 <20241025131442.112862-9-peter.griffin@linaro.org>
 <436b02c6-a262-4015-92e3-454d444e877f@linaro.org>
 <CADrjBPoq2jbrMC7wBrjGxMwQ1ebTtBNRQzQ7NfE9=Gw9_4LQ6A@mail.gmail.com>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <CADrjBPoq2jbrMC7wBrjGxMwQ1ebTtBNRQzQ7NfE9=Gw9_4LQ6A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/30/24 11:32 AM, Peter Griffin wrote:
>>> Previously just AXIDMA_RWDATA_BURST_LEN[3:0] field was set to 8.
>> where was this set?
> It is set to 0xf in exynos_ufs_post_link() function, see the following line
> hci_writel(ufs, 0xf, HCI_AXIDMA_RWDATA_BURST_LEN);
> 
> As all other SoCs expect the current value, I've left that assignment
> in the common function, and we update it in the  gs101_ufs_post_link()
> specific hook.
> 
oh yes, as a driver quirk.
Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>


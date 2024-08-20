Return-Path: <devicetree+bounces-95217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C1F9586C9
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 14:19:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 58C79287B32
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 12:19:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B720018FC81;
	Tue, 20 Aug 2024 12:18:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="cOMwevp2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2760A18E76E
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 12:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724156332; cv=none; b=i5RIddxfeNvr97h4K+RqO88V1h3/JctQfBmCsAqBeCBwPodtGhnuix8k/10B/zo1HFJUXBZKaBm7aEzgt/9CG1JMl2RsYPKsgyCpfIEesBGcKjoeoy58P2xphXNWwpkzbwSUX/V1uIq1O+D/r1E22VFjzMQPK7MVH9GEXTrc/bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724156332; c=relaxed/simple;
	bh=AZy5Vfz/A7HN0F7XrqwbYiq01vG/lO3OkKWKGk1orDg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nCc1MVCjDwxDVNdGT0jNjD6DI6Fs2IYNJSJ5FKAXk3ZRfZKsdua8XP43VsY7MdC2f3ZADxwJOJjv83kEi3oBbIVs1YpUpZVIJ4jh8UNcVW3N9WxSOZFvpTV4VB/Ckpy3BY2ii5CkyqhTFpMfmmr57yu9fVSCdRmKCB7eaYk+u4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=cOMwevp2; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-710bdddb95cso3144257b3a.3
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 05:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724156330; x=1724761130; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dxAcxGclIuOwfMb41R48bF4I8HWomP5VfYX9t0ZCnsA=;
        b=cOMwevp2R0hE/SWYrElMYw9VMOv+/z+eUq1+hFTVxrGKrdOJ545iSdl7aFPcRKgBup
         E548TnGgfUD87Cv5G1IZc7a2179f7yHHau+//93g2e3Ml1Yh6qlOqBdmsI+KFI+n4MP4
         4n32Od6HW+IIs6Qhagps0MyvjyggTrOkerSCo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724156330; x=1724761130;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dxAcxGclIuOwfMb41R48bF4I8HWomP5VfYX9t0ZCnsA=;
        b=OnLikW91WQmZyfsRmgy6ooZ51nwJk9D11mzuSBzLaoCLxC1xoXSlWiNGChl0kaVJ/1
         0b7sc3Rvykdy/v61bR3613EYx6YtXCFgBXNx/HnBLRyS/NfD1Lh3KTxQ3mepl1rNKaED
         mjqlBk+Y+3ZykiwdN4vhupBKd5ijgjCztGh5q5F4shp6dW49E0i61YIkw1BxCi1awRX2
         A3SHn5zwCFdHE2qmUvc1nSGtRwEq7ZADJeRHyluR6VNRx0OlW3dGJOi1a5F0qN+30LIo
         fEeSfHTv8S8XBcvTo2aOs9tkPgpXStIpocYpMOrjvPZCGX1EV6i1IpwwXTykxaABKsip
         AnWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUWnns9WHLTGcMLHQXLGv5DPoZm0H2j3YmM2K6o736s2D13+a58OmduWAc6cgfeBxRnxl62t5OuO2XvY0lUnDShngyI/44XG28ByQ==
X-Gm-Message-State: AOJu0YyUcTzGsA7RHbwiqlfAy//HkejlZxUNpjMSYg7EVmU6ltRmOV5z
	bbsB96jm2NVjP1RzO4JcGRO4oXkf8q88hxRwG4dR/2Hxbj4vY7Y4AVE6Np3NUp7yiBBMAx/PSUA
	=
X-Google-Smtp-Source: AGHT+IEaftbPHnk5gj6LEhcatbaYAbzJyPyHa/VXh1Qov58HvRrDUW/6ESy2CXTKfuohmz6Oo+xhoQ==
X-Received: by 2002:a05:6a20:6f8a:b0:1c0:eba5:e192 with SMTP id adf61e73a8af0-1c904fb8e21mr14179130637.27.1724156330370;
        Tue, 20 Aug 2024 05:18:50 -0700 (PDT)
Received: from ?IPV6:2401:4900:5611:cde:9119:bcc9:db94:3510? ([2401:4900:5611:cde:9119:bcc9:db94:3510])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7c6b6365998sm9309672a12.80.2024.08.20.05.18.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2024 05:18:49 -0700 (PDT)
Message-ID: <1899ea6f-b734-4748-aa00-d7049d553994@chromium.org>
Date: Tue, 20 Aug 2024 17:48:38 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: display: mediatek: dpi: Add power
 domains
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@gmail.com,
 daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, ck.hu@mediatek.com,
 jitao.shi@mediatek.com, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20240820080659.2136906-1-rohiagar@chromium.org>
 <20240820080659.2136906-2-rohiagar@chromium.org>
 <b5wtwpkwgg3tbwya6zllmymaaf2qvnyfbspkynr2ruzncej2ql@qloslxfinvos>
Content-Language: en-US
From: Rohit Agarwal <rohiagar@chromium.org>
In-Reply-To: <b5wtwpkwgg3tbwya6zllmymaaf2qvnyfbspkynr2ruzncej2ql@qloslxfinvos>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 20/08/24 4:40 PM, Krzysztof Kozlowski wrote:
> On Tue, Aug 20, 2024 at 08:06:57AM +0000, Rohit Agarwal wrote:
>> Add power domain binding to the mediatek DPI controller.
> Why? Who needs it? Why all devices suddenly have it (IOW, why is it not
> constrained anyhow per variant)?
>
Ok, my intent was to introduce only for this particular variant.
Let me constrain it to this particular compatible.

Thanks,
Rohit.
>> Signed-off-by: Rohit Agarwal <rohiagar@chromium.org>
>> ---
>>   .../devicetree/bindings/display/mediatek/mediatek,dpi.yaml     | 3 +++
>>   1 file changed, 3 insertions(+)
> Best regards,
> Krzysztof
>


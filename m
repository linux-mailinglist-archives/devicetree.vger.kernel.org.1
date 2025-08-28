Return-Path: <devicetree+bounces-210076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A4EC9B3A1A1
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 16:26:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E9956583EE7
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 14:19:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0055E313E2D;
	Thu, 28 Aug 2025 14:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rr/qeR5j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB618313E1A
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 14:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756390133; cv=none; b=kXSBQw22BJjgCOAPoT4MlBwfUbeIrntAWw4TSdxonlSCNuJZQ6Jv46aebTAIISlD7E1riacANYnqD5D/0PkdY8cKGdyFmCMSVRUDFFQLi2DGn+P35z9sui2JPlc6hJtwrApPCm60vHau7JYW9vPLaOqRAsaUpj+p4t4y0pra1xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756390133; c=relaxed/simple;
	bh=C7zRn/VrsJaJr88AosGaBzTL5/NEtxOqaD+YET6/KOw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b0W7cf1O9b0VxCWXo6Uuuy2o8JjCf07mKebhYedNhgzVOMmCK0LXH6wA6eMLnMz7BjHPXuHQ8ydT/cT+k2gh9gDbkA+F27vAUCEprCmsCj4kQpP/M2E4WrFF1bYywDyKjjaYm7FgUV+rDbSa/9fbKesSu5m9vnKzLITtBf90Mfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rr/qeR5j; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-afcb73394b4so143685966b.0
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 07:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756390130; x=1756994930; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y/I5abWNDNo4EBfij41U+MSxFH8HWMmL5CHi8kMoycQ=;
        b=rr/qeR5jZgWS/rbCoTh0nMiXtp9xj/DKlSLT19ZaWuM0lgjXeJACVu1pdaZP3WRis1
         rNxT6HCkvXHzAR+S2970oCX+c0SIpohhAevMvZFnRYCvXOTs8PCV60ItXCkXp5teDLU5
         eXEdUCNsFIqJPkNrLwVSjoJKvQegXmXbsHOj85GPhOxkw6eV0PHJJFQK9FKoAocQiZx4
         uMWyGZ3gJob6qxoLq0ebHqR2KRmx3qCwe5gxqMOA3ab9MOmnxiAHia261J/7FI8Q9BWq
         yts0V4X2VHCCIdXjGZROSCdOyn28TSnmH9/xgxEzi0zsMXzrYuKgHWmxDg0ZwaMlWR2p
         RaeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756390130; x=1756994930;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y/I5abWNDNo4EBfij41U+MSxFH8HWMmL5CHi8kMoycQ=;
        b=YmgsBF2UVEbQJarFWoyATWUYrnY6tRYq3USSqsoCmADBOfSCL8z+LtutlWgg1dlzxh
         aUIhZhc6va4mTD9kBHkdune+JCYuHMVZ6dH4J2zWbqqXQPdC3d5261Nssm74lZPJd/mT
         QCisYqBjwWwGV9x+P7LVbZF6mhh2f1/IhU9iJa1IkTBMbt3bploYeLDK0pEWJuLpWKcS
         OUngQWp4xrMp67/t7PFC3VdbEGx/LUTzTiqXEoAYqwi+kx9ud1/uRMix2PW9CoeOcB3+
         MF5ntRg13YoweC4mF5i3caGzmrkZIh+Vzn7vjlyzmQ0BYbTCUudYjcfCtiRbScniTBkk
         Dtcw==
X-Forwarded-Encrypted: i=1; AJvYcCWsrMbXsn36UDfri27zQidGGzgCMxvShblYr9VI4n9MOOV83rYb628/Vr0VTP9RoCG4eWMf8ka9tsv9@vger.kernel.org
X-Gm-Message-State: AOJu0YwXPOxfudKVazHi8iS9nGK78Ml7oLV1uSyQrly7CeXLNkQTehno
	0PgD2Yg2IPUqmnVtec69jW93sR8DtzDFfjCRINxLsqpHYJPNnIWzCUzvkoQwRv+N0qI=
X-Gm-Gg: ASbGncvz6KbAv6xWZd36d6T7FQD4vGVUG+caYrUi/SSXOxvHwh/mygPBZABtS4JFpR/
	zethgpewqIovreWsP+hSFoR6+ic3+krA8VnScK4n7urWkDQT2W3oN0ZvdwJK/U6PkrmT3SbFAPz
	G9bP/881toJq+RuW78yxSns+kB1y844HtNcJRpW70ujj/+bECiX2OoUjSmRPxvXv144NyLXlEgV
	1/3TvDSQj4RpuFWN1tk8korLEmAPiwLEr/WJsVf6F/Sgd8K0tW0OqBO9wIhIC2/jSnW+wu60vL7
	0anamooFU1OhVpV+5b7Ka9u4DeXDeJ4hpAt7u+uxvjNV9jJ1G7FBplPZFRbRh3+7eIriRTfdWsF
	ytwKtmKYK9nBq4A8JUonZlwe3e9xBX7ptNhg4niV1Y372+8ftmiu3Xd4k/JjDNzuHd5FmxFvu01
	YScKY=
X-Google-Smtp-Source: AGHT+IHN82XFu68/fEKA3udTLRRIIvxajvSPhjBeGGRAN6IcAlWeL50Yku5UnjGbIWRGKBGVvUPHpQ==
X-Received: by 2002:a17:907:97c7:b0:afe:97eb:4327 with SMTP id a640c23a62f3a-afe97eb470emr1149862766b.20.1756390129962;
        Thu, 28 Aug 2025 07:08:49 -0700 (PDT)
Received: from [10.41.150.230] ([77.241.232.17])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61cf65b3d7asm207720a12.41.2025.08.28.07.08.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Aug 2025 07:08:49 -0700 (PDT)
Message-ID: <82f447d1-89ae-450f-813e-02c3d8228895@linaro.org>
Date: Thu, 28 Aug 2025 16:08:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 06/13] media: rockchip: add a driver for the rockchip
 camera interface
To: Michael Riesch <michael.riesch@collabora.com>,
 Mehdi Djait <mehdi.djait@linux.intel.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gerald Loacker <gerald.loacker@wolfvision.net>,
 Markus Elfring <Markus.Elfring@web.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Paul Kocialkowski <paulk@sys-base.io>,
 Alexander Shiyan <eagle.alexander923@gmail.com>,
 Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Mehdi Djait <mehdi.djait@bootlin.com>
References: <20240220-rk3568-vicap-v10-0-62d8a7b209b4@collabora.com>
 <20240220-rk3568-vicap-v10-6-62d8a7b209b4@collabora.com>
 <3b4173cb-655d-48ea-b86a-a036f666cf40@linaro.org>
 <23ccc744-745d-4a31-a79c-2d64bf1ed43d@collabora.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <23ccc744-745d-4a31-a79c-2d64bf1ed43d@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 28/08/2025 12:03, Michael Riesch wrote:
> Hi Bryan,
> 
> Thanks for your comments :-)
> 
> On 8/26/25 08:21, Bryan O'Donoghue wrote:
>> On 19/08/2025 00:25, Michael Riesch via B4 Relay wrote:
> 
> [...]
> 
>>> +
>>> +static void rkcif_dvp_stop_streaming(struct rkcif_stream *stream)
>>> +{
>>> +    struct rkcif_device *rkcif = stream->rkcif;
>>> +    u32 val;
>>> +
>>> +    val = rkcif_dvp_read(rkcif, RKCIF_DVP_CTRL);
>>
>> This dvp_read stuff looks a bit funny to me, you have a lookup which can
>> return 0 for unknown registers.
>>
>> Probably not the case with a control register like this one but, for
>> argument sake if RKCIF_DVP_CTRL was not a valid register i.e.
>> rkcif_dvp_read() would return 0 and you'd still act on that data to
>> write back to an unkown register.
> 
> ...which would then hit the same check in rkcif_dvp_write and simply
> return without writing anything. Also, the WARN_ON_ONCE in the lookup
> would complain and indicate that the driver developer made some mistake.
> I hope that the driver developer is thus nudged towards fixing the code
> they wrote.
> 
>> Would you not be better off having say callbacks to contain cases where
>> registers are potentially not present
>>
>> ops->update_maybe_not_present_reg();
>>
>> followed by writes to registers that would alawys be there ?
> 
> I'll think about that in more detail, but right now my thoughts are that
> if any of the registers below are not valid, this piece of hardware is
> pretty useless and there is something rotten in the driver. Thus, we
> complain loudly to the developer.
The developer is you though :)

Anyway seems a bit weird to me to return invalid registers, you trust 
yourself right ?

>>> +    rkcif_dvp_write(rkcif, RKCIF_DVP_CTRL,
>>> +            val & (~RKCIF_CTRL_ENABLE_CAPTURE));
>>> +    rkcif_dvp_write(rkcif, RKCIF_DVP_INTEN, 0x0);
>>> +    rkcif_dvp_write(rkcif, RKCIF_DVP_INTSTAT, 0x3ff);
>>> +    rkcif_dvp_write(rkcif, RKCIF_DVP_FRAME_STATUS, 0x0);
>>> +
>>> +    stream->stopping = false;
>>> +}
>>> +
>>> +static void rkcif_dvp_reset_stream(struct rkcif_device *rkcif)
>>> +{
>>> +    u32 ctl = rkcif_dvp_read(rkcif, RKCIF_DVP_CTRL);
>>> +
>>> +    rkcif_dvp_write(rkcif, RKCIF_DVP_CTRL,
>>> +            ctl & (~RKCIF_CTRL_ENABLE_CAPTURE));
>>> +    rkcif_dvp_write(rkcif, RKCIF_DVP_CTRL, ctl |
>>> RKCIF_CTRL_ENABLE_CAPTURE);
>>> +}
>>> +
>>> +static void rkcif_dvp_set_crop(struct rkcif_stream *stream, u16 left,
>>> u16 top)
>>> +{
>>> +    struct rkcif_device *rkcif = stream->rkcif;
>>> +    u32 val;
>>> +
>>> +    val = RKCIF_XY_COORD(left, top);
>>> +    rkcif_dvp_write(rkcif, RKCIF_DVP_CROP, val);
>>> +}
>>> +
>>> +irqreturn_t rkcif_dvp_isr(int irq, void *ctx)
>>> +{
>>> +    struct device *dev = ctx;
>>> +    struct rkcif_device *rkcif = dev_get_drvdata(dev);
>>> +    struct rkcif_stream *stream;
>>> +    u32 intstat, lastline, lastpix, cif_frmst;
>>> +    irqreturn_t ret = IRQ_NONE;
>>> +
>>> +    if (!rkcif->match_data->dvp)
>>> +        return ret;
>>
>> Wouldn't you be better off conditionally registering your ISR if
>> match_data->dvp is true instead ?
> 
> As you have surely seen, the ISR is shared between all interfaces, i.e.,
> DVP and MIPI. Now the currently supported models all have a DVP and your
> suggestion would work. However, I think the RK3562 VICAP can be easily
> supported by this driver but does not feature a DVP (several MIPI
> interfaces, though). In this case match_data->dvp evaluates to false but
> still there is the need to register the ISR.

Why not have separate ISRs then with shared code calling into a function ?

An ISR in my mind should fire for hardware we have a clear idea about 
and only do so in exceptional (pun intended) circumstances.

So I'd suggest two ISRs calling into whatever shared code you deem 
necessary as opposed to NULL checking in your ISR.
> 
>>
>>> +
>>> +    intstat = rkcif_dvp_read(rkcif, RKCIF_DVP_INTSTAT);
>>> +    cif_frmst = rkcif_dvp_read(rkcif, RKCIF_DVP_FRAME_STATUS);
>>> +    lastline = RKCIF_FETCH_Y(rkcif_dvp_read(rkcif,
>>> RKCIF_DVP_LAST_LINE));
>>> +    lastpix = RKCIF_FETCH_Y(rkcif_dvp_read(rkcif, RKCIF_DVP_LAST_PIX));
>>> +
>>> +    if (intstat & RKCIF_INTSTAT_FRAME_END) {
>>> +        rkcif_dvp_write(rkcif, RKCIF_DVP_INTSTAT,
>>> +                RKCIF_INTSTAT_FRAME_END_CLR |
>>> +                RKCIF_INTSTAT_LINE_END_CLR);
>>> +
>>> +        stream = &rkcif->interfaces[RKCIF_DVP].streams[RKCIF_ID0];
>>> +
>>> +        if (stream->stopping) {
>>> +            rkcif_dvp_stop_streaming(stream);
>>> +            wake_up(&stream->wq_stopped);
>>> +            ret = IRQ_HANDLED;
>>> +            goto out;
>>> +        }
>>> +
>>> +        if (lastline != stream->pix.height) {
>>> +            v4l2_err(&rkcif->v4l2_dev,
>>> +                 "bad frame, irq:%#x frmst:%#x size:%dx%d\n",
>>> +                 intstat, cif_frmst, lastpix, lastline);
>>> +
>>> +            rkcif_dvp_reset_stream(rkcif);
>>> +        }
>>> +
>>> +        rkcif_stream_pingpong(stream);
>>> +
>>> +        ret = IRQ_HANDLED;
>>> +    }
>>> +out:
>>> +    return ret;
>>> +}
>>> +
>>> +int rkcif_dvp_register(struct rkcif_device *rkcif)
>>> +{
>>> +    struct rkcif_interface *interface;
>>> +    unsigned int streams_num;
>>> +    int ret;
>>> +
>>> +    if (!rkcif->match_data->dvp)
>>> +        return 0;
>>
>> If you don't register the device when match_data->dvp is false, then I
>> think you can relax the carry-on checks elsewhere on match_data->dvp,
>> not including dvp_unregister
> 
> +1 I'll review all instances of this check.
> 
>> The rest of the file as I breifly skim it looks OK to me, its a bit big
>> though.
>>
>> Would it be possible to break this patch up a little bit ? Might make it
>> easier for other reviewers to give an SoB for smaller chunks.
> 
> I suppose what I could do is split this up into five patches, as the
> commit message already outlines:
> 
> 1) add a basic driver (no-op skeleton only)
> 2) abstraction for the ping-pong scheme to allow for future extensions
> 3) abstraction for the INTERFACE and CROP parts to allow for future
>     extensions
> 4) support for the PX30 VIP
> 5) support for the RK3568 VICAP DVP
> 
> Please note that in this case I would rework the patch for a final
> (this-time-really-final) time and drop this elaborate co-developed-by
> list, as the patch in question will then have nothing to do it all with
> anything what was before v2 of this series.

I'll leave that up to you, I'll still review your v11 but, a slightly 
smaller single patch to digest would be appreciated.

---
bod


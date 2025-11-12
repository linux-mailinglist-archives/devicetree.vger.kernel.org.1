Return-Path: <devicetree+bounces-237383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BC8C505A0
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 03:40:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9FF524E0537
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 02:40:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D3382C11D3;
	Wed, 12 Nov 2025 02:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="roiDA1wv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91CEA221275
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 02:39:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762915200; cv=none; b=NLFkzQ8INPgtVTucJoRc6nK8ijXIHZDBvKQlRmjNne20dJ8wvAaP6oM4GnvlFNxVEJRY1bMaZNwHR7OELDnL0VZVXmPEnuwdSmZt8GFVXfoSVDKHQSxPXIMHrEygoZuaumSvRMhDw1UL/e0nAveb5Ww9ObPjsBia5DMGnu97g3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762915200; c=relaxed/simple;
	bh=YAF5Tc6jDHfEj4lwRN/Rr72k7e9evSLVUTLkK9SqJYc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GNwE9w6tA+5s7T5ChA2VwaF0LYjTfGU30kLXrVK11fn7Qpp3eHwAeAt0uM2cvrQiYAqCuCGQSS6zH+zGmMrER54P/k4itSWT0S2i44vQ+G7upKyTRKJvxg271EjVI9A6ZvVO4prFcwk5KeI81z/Hn3w0ULvtUT+skdQFPxhx9Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=roiDA1wv; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-37a5a3f6bc2so482191fa.1
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 18:39:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762915197; x=1763519997; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=39kSESAbY1HMI+BusWb9PuuJ7TWiasPoKmuvtW9akCA=;
        b=roiDA1wvWJDrZETGlhAIxsMAAqLG7VGNITTNkL8zbBdChEg355HJxV0V3S7YFz1C9e
         VGwUPaEyWZ8CS9Np0XwMSJdx+EPsHOV3hVo9k702/XPrrGwowBdFaZQLlvjvxKYUvrVo
         KNdC15yam3oxDTjQGpchiysPLUmnwdOpQY9bCNTuLReXuYwMhEA+fFbxkQjcdoSyhymr
         FlVQ2HQxwSL4b+zf38k4CcmMm7ess0IzqVyV18F1fyL9WLBBWGpTwh9SkuvBr3l9hVlF
         QbECb+rP68RVDFeG9cuu59GDvCE/dA0+yTR2RDoMlmFuW8pQwQxpZe0YFHB+t3jT1rOs
         8E7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762915197; x=1763519997;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=39kSESAbY1HMI+BusWb9PuuJ7TWiasPoKmuvtW9akCA=;
        b=SB7GZrVp3/xwt8/iY+gPaj3S25W3bDPB8Kk08nNiDgC0ebQSRPngx8Ho3qte+5VsEv
         K4heWrO41RaKVZpYFTWT06OGn/XsMVDfEZQSBkxFIwj5k4gabSDJ9v5uEwMkgLUtphlp
         XRtn3McFebUfQOgRlk7newRFAAUZ78QNL3OGK9ud+MfDZq/RMpzdC28A2fFWRQqlDr92
         YQoFRsJwCBZsoa5+ahSS9zvkiKiTcAqki04D/Ay6APxPBSdCzpzzf7IKk3HvDI55w78R
         cuaT7J1fo7rQAvdVcjCt77xZza+GzeaUPorGq5/oCU4Py1lrbG0c63TxH4S1M5mO22Nj
         GR3w==
X-Forwarded-Encrypted: i=1; AJvYcCVJRLW30OzsrjojC7twFSIZe3JTWNaifi9plmiGZlD4p9k5I/Tv9PWW/UNAgF7w+taBDv0+K+0u8gbm@vger.kernel.org
X-Gm-Message-State: AOJu0Yz746FPHKEWNIYHl7kvxIwl84luy5js/yU+R9akoLOcnhsJ4efF
	b+LufztKl2tsw1RldjbqJjwEw3MlB3vhPZfhx7Mjaw9QAvczydgLAbggLAvqyvR65mk=
X-Gm-Gg: ASbGncto7pBTgCFT/dy4ttK1kYcAqm2Jdp5Z5r93b/l/VQt70GaS+61Y+WMCCJgP9QU
	0XLmo+DOKI4h6wlGtotMFnf14HkeeS5i2XkcV1+hvdeZHv0YixOnmFG54zQQNTnl6YSzBL15k6m
	RhRliYVcsT4MWs+kzuvYtghT95ipcEBLrB3Mkpa13Z1vpXxF4S/RTXoRj4h6vy5nskQPFxZgHpz
	aVGliT8wqZEVKpqsIahQKykSqceA3OD8E8NVZ1X4Mw9AYNFDNMORM9882L9RVgRbHkL3xdlraZ3
	VDzUfptlle62tI2CORSEIlqDQjGFUT95udKxQN5rtCxc3v9jvbQy8s/ImMQWLRtPmz5r4pzfQYB
	caqVxjOavXA7wGV5voPjT6+LGVL30jzMh5fO3gNpx5Ec+rEK06sEJf8dncgOu/kGHKnglQK9Dw6
	OVkB2AdgJJrIZ2RoEFmdTx1Yai5iL3DrfjdSpfl7ICzReOcMVTdNbmSlE=
X-Google-Smtp-Source: AGHT+IGo796a1SXEHSzjnyIuQBWmkjZwUuUo9zVT56HaUAcz/RaA88glgQiHqp5yyqPhlydaJeUZag==
X-Received: by 2002:a05:651c:2222:b0:37a:407d:632f with SMTP id 38308e7fff4ca-37b8c44e1bfmr1920941fa.4.1762915196629;
        Tue, 11 Nov 2025 18:39:56 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37a5f08a890sm49701761fa.24.2025.11.11.18.39.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Nov 2025 18:39:53 -0800 (PST)
Message-ID: <d118401c-a238-4d76-ad85-7ff7449d606f@linaro.org>
Date: Wed, 12 Nov 2025 04:39:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] media: i2c: add Samsung S5KJN1 image sensor device
 driver
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Bryan O'Donoghue <bod@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@kernel.org>, Hans de Goede <hansg@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20251023025356.2421327-1-vladimir.zapolskiy@linaro.org>
 <zGlVBFnnqOaXjobqCKcCVXYYwfZwwxelX8G9ocxVagSkLPFzqtDmjtLwg0mzjc4dcn845hPm_6UPjBNb6Eza2Q==@protonmail.internalid>
 <20251023025356.2421327-3-vladimir.zapolskiy@linaro.org>
 <aa8d9d2a-a778-49b9-ad66-05bf31065856@kernel.org>
 <ff531ac2-26e0-48a4-a0f8-9e5c09dde05f@linaro.org>
 <aRMA_kd87a7rL-v0@kekkonen.localdomain>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <aRMA_kd87a7rL-v0@kekkonen.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Sakari,

On 11/11/25 11:25, Sakari Ailus wrote:
> Hi Vladimir,
> 
> On Sat, Nov 08, 2025 at 01:00:33PM +0200, Vladimir Zapolskiy wrote:
>> On 11/4/25 17:53, Bryan O'Donoghue wrote:
>>> On 23/10/2025 03:53, Vladimir Zapolskiy wrote:
>>>> +static int s5kjn1_check_hwcfg(struct s5kjn1 *s5kjn1)
>>>> +{
>>>> +	struct fwnode_handle *fwnode = dev_fwnode(s5kjn1->dev), *ep;
>>>> +	struct v4l2_fwnode_endpoint bus_cfg = {
>>>> +		.bus_type = V4L2_MBUS_CSI2_DPHY,
>>>> +	};
>>>> +	unsigned long freq_bitmap;
>>>> +	int ret;
>>>> +
>>>> +	if (!fwnode)
>>>> +		return -ENODEV;
>>>> +
>>>> +	ep = fwnode_graph_get_next_endpoint(fwnode, NULL);
>>>> +	if (!ep)
>>>> +		return -EINVAL;
>>>> +
>>>> +	ret = v4l2_fwnode_endpoint_alloc_parse(ep, &bus_cfg);
>>>> +	fwnode_handle_put(ep);
>>>> +	if (ret)
>>>> +		return ret;
>>>> +
>>>> +	if (bus_cfg.bus.mipi_csi2.num_data_lanes &&
>>>
>>> Is !bus_cfg.bus.mipi_csi2.num_data_lanes a valid case ?
>>>
>>
>> Yes, it is a valid case, because a number of data lanes is unchangeable
>> and the property can be omitted like in many other similar cases.
> 
> In that case make 4 lanes the default.

4 lanes configuration is the only supported lane configuration mode
in the driver, so I believe there is nothing else to change. Perhaps
the confusion came from misreading the given dt binding documentation.

-- 
Best wishes,
Vladimir


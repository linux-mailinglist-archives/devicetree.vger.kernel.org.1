Return-Path: <devicetree+bounces-197394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 88672B09011
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 17:01:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7E52E1C441A5
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 15:01:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B26B62F85E5;
	Thu, 17 Jul 2025 15:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z0fK3Ubm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE64E10A1E
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 15:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752764423; cv=none; b=R4oVSTEMTeGikcS1qcG58n+7rip6jdkykuNkdKreUh6g6Xs4721aJc4fjxtnevz9NVL7MZmiI+pQ3nRYa6mADhkG1imbNV/Wmc10+nrhqmasAOnndLYOGYYMMzrfcwKNiwLnFEndHcsdBPTavPigzYgLt8O/Qpi3FgX8lWVIscE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752764423; c=relaxed/simple;
	bh=u9hMCKjqb+vMWN5eo5Hba5khIQ2ZxRZbXmL0X2W+oRo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QK1um2xL+xFFQ0/9sOoXst0puRocRYf4Qef3VUpPgYXs3UoCNz8WB3AzERQSYB95IKX/9lxtjj6qCjnXWmFnxtxSi4cveh3i3fOq4+QPYnPaWysM2tESPFtFdCVLPcobxCYuN8RfT0kJkg/vdRGFus0xAgisNsVlrIFco1cyCLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z0fK3Ubm; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-32c9ebe7190so1122371fa.1
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 08:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752764420; x=1753369220; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z0eZUodVGHiUDbk0ap3If0CkAGDwyBjBUc4f8mVMlx8=;
        b=Z0fK3UbmEQVyGp9+/3129UHoPfSdFl33mge64LrMRfn9za8wFbomrT7HOqcyjsuEW1
         hXE14Y2lZEw2+FrWks0SgrkmjI53z4AOqAyn79x3iJ25dioY7cqpMG2cnu0q3oheJqj2
         OZ2aCpeDyCdmGZJkCmvVyWW/tWdeWqWQQue5xPyulqhBEMjj606QMbBVYDlacnet3wch
         F/zyFo5YODjRNx+yX+k7cQc/6Mv/APGxkUPOyk5f/LHoIxccCGuysiTMdg0YfYxhJL/b
         2dIZ6VEBevU0ZlEfVhukGvxt/FM+jz8BmwHcx2pCGjJ6fLuL5+BZrraHes2rcRoHJ5lT
         taPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752764420; x=1753369220;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z0eZUodVGHiUDbk0ap3If0CkAGDwyBjBUc4f8mVMlx8=;
        b=ja5Q8BloNyHeh8Dw18G36vdfJRZSJjHkxDi176sksX4tiQJJuRPhU2RbAnJ1Yl7QZe
         zNJmfG/UqoC7MUyS3PdQ6yJwuPJuncQHgRJ9+WB1HUBfVhVB6HyjniM5VLecJ8OeGf52
         kaEwaUQpodRLZ/OboDSed5SaDTcYkgcZQH0Z27L6Q1BkF0O9aYnTRLL/g67RNdYM02qx
         1tXLEQkUbfwpEK6xLnND/bBf6PUye/5ggWXOvJ4o6z2rR2NDm3kIIogaDmuFyKc2PJyt
         mt+tR4AUc9CvKSFG0jKPwAuHlud43oclO2qg3OmoYebjIGI+CknLyKNL+gDcUnTN17ZU
         gVow==
X-Forwarded-Encrypted: i=1; AJvYcCWx0xojVjfCKK2qTW7zpW2rxREIfj/iXFGh9VNajo7dBrlCPny2o16Z3tkUfmuo3Eye0jqOVFUjjgZ1@vger.kernel.org
X-Gm-Message-State: AOJu0YxoR0o8LhZl8YCrKmxuo6Xn4507IK7XN26QTWgr+wfCtCVT8PgE
	ia0Uqf4Wqj+BNdzF6md1tnjNEf30N7qTppFGMeOpSJoaMOjRVPWOz68uVvxUjo71QQXiN5XI4HH
	mOS0NMw0=
X-Gm-Gg: ASbGncuHR80hYY0orF+SuSjpEM7fsuZXonXU/Us9ddldLkWsuTFoEOnNulEqy9mZoI8
	QI3WuY7eGCy20xi1C3qTpEMubn8UViFfT95begivjdOlm0i1heYACmb28PtH5op7SM3t9tURiTP
	sptSlIOv2Nz9LU/hKvXjv8QXD4lI9im35Y0d6cXpPgsbVQijjimYLP3IVE585AUSk7cb1oPtsT5
	oWqc9PuYJvWXufgJE8c5ovRZPw0sUUQNnuemOcByebj1Vlqq+qurp9GsUVBN/2zwNDginVjtaKq
	pTfu+12KyAbUlLa2FHLp7tqrQQQUPPTyTuhMam3CZTBoc1CpunAfxa92nbEh/44IrOW+2b7kp4o
	XUStlubLVgDXDjikZjPE35R6Stns4YO6YijYhZrxRpl0I0qBRqZRKqCfjJUPHFNAYom9IZMqfNd
	jQ
X-Google-Smtp-Source: AGHT+IE1S6rPl4/eJIoYeX1kJsIS7EPf0LFtexLXIa2stt/BorLhsmsYwsMnfz5lm5r/3FhN/megFA==
X-Received: by 2002:a05:651c:a0b:b0:30b:d156:9ea2 with SMTP id 38308e7fff4ca-3308e0e2e08mr8867321fa.0.1752764419581;
        Thu, 17 Jul 2025 08:00:19 -0700 (PDT)
Received: from [192.168.1.100] (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32fab918971sm24422641fa.108.2025.07.17.08.00.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jul 2025 08:00:19 -0700 (PDT)
Message-ID: <7d1ee0d8-0ffc-4aae-8531-852ce8c8b4c0@linaro.org>
Date: Thu, 17 Jul 2025 18:00:11 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] media: i2c: Add OmniVision OV6211 image sensor driver
Content-Language: ru-RU
To: Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20250717124001.108486-1-vladimir.zapolskiy@linaro.org>
 <20250717124001.108486-3-vladimir.zapolskiy@linaro.org>
 <175276139540.560048.14744394485094549778@ping.linuxembedded.co.uk>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <175276139540.560048.14744394485094549778@ping.linuxembedded.co.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Kieran.

On 7/17/25 17:09, Kieran Bingham wrote:
> Quoting Vladimir Zapolskiy (2025-07-17 13:40:01)

<snip>

>> +       { 0x3808, 0x01 },
>> +       { 0x3809, 0x90 },
> 
> 0x190 == 400;
> 
>> +       { 0x380a, 0x01 },
>> +       { 0x380b, 0x90 },
> 
> So I bet these are the width and height registers.
> 
> Have you got a data sheet for this ? It would be /really/ far more
> helpful to break out the specific register updates here for the mode
> configuration at least.

No, I don't have a datasheet for this sensor.

What's imporatant the sensor controls are similar (identical?) to an old
OV6710 sensor (a guess from chip ID also), and there is a public driver
for that sensor written for the OLPC project, a number of controls may
be reused from that driver, however since it requires such an extensive
testing, it can be done later on.

I kindly ask to review the displayed supported modes/configurations
at the moment. FWIW your guess of mapping the registers to width/height
is correct.

<snip>

>> +static int ov6211_write_reg_list(struct ov6211 *ov6211,
>> +                                const struct ov6211_reg_list *r_list)
>> +{
>> +       struct i2c_client *client = v4l2_get_subdevdata(&ov6211->sd);
>> +       unsigned int i;
>> +       int ret;
>> +
>> +       for (i = 0; i < r_list->num_of_regs; i++) {
>> +               ret = ov6211_write_reg(ov6211, r_list->regs[i].address, 1,
>> +                                      r_list->regs[i].val);
>> +               if (ret) {
>> +                       dev_err_ratelimited(&client->dev,
>> +                                           "failed to write reg 0x%4.4x. error = %d\n",
>> +                                           r_list->regs[i].address, ret);
>> +                       return ret;
>> +               }
>> +       }
>> +
>> +       return 0;
>> +}
>> +
> 
> Please use CCI helpers now.
> 

It makes sense, thank you.

> 
>> +static int ov6211_set_ctrl(struct v4l2_ctrl *ctrl)
>> +{
>> +       struct ov6211 *ov6211 = container_of(ctrl->handler, struct ov6211,
>> +                                            ctrl_handler);
>> +       struct i2c_client *client = v4l2_get_subdevdata(&ov6211->sd);
>> +       int ret;
>> +
>> +       /* V4L2 controls values will be applied only when power is already up */
>> +       if (!pm_runtime_get_if_in_use(&client->dev))
>> +               return 0;
>> +
>> +       switch (ctrl->id) {
>> +       case V4L2_CID_ANALOGUE_GAIN:
>> +               ret = ov6211_write_reg(ov6211, OV6211_REG_ANALOGUE_GAIN,
>> +                                      OV6211_REG_VALUE_16BIT, ctrl->val);
>> +               break;
>> +       case V4L2_CID_EXPOSURE:
>> +               ret = ov6211_write_reg(ov6211, OV6211_REG_EXPOSURE,
>> +                                      OV6211_REG_VALUE_24BIT, ctrl->val << 4);
>> +               break;
> 
> What about V4L2_CID_HBLANK and V4L2_CID_VBLANK ?
> 

I don't have any information how to set/get this setting, the OV6710 driver
also does not provide any hints, so it should be omitted, I believe.

>> +       default:
>> +               ret = -EINVAL;
>> +               break;
>> +       }
>> +
>> +       pm_runtime_put(&client->dev);
>> +
>> +       return ret;
>> +}
>> +
>> +static const struct v4l2_ctrl_ops ov6211_ctrl_ops = {
>> +       .s_ctrl = ov6211_set_ctrl,
>> +};
>> +
>> +static int ov6211_init_controls(struct ov6211 *ov6211)
>> +{
>> +       struct v4l2_ctrl_handler *ctrl_hdlr;
>> +       s64 exposure_max;
>> +       int ret;
>> +
>> +       ctrl_hdlr = &ov6211->ctrl_handler;
>> +       ret = v4l2_ctrl_handler_init(ctrl_hdlr, 3);
>> +       if (ret)
>> +               return ret;
>> +
>> +       ctrl_hdlr->lock = &ov6211->mutex;
>> +
>> +       ov6211->link_freq = v4l2_ctrl_new_int_menu(ctrl_hdlr, &ov6211_ctrl_ops,
>> +                                       V4L2_CID_LINK_FREQ,
>> +                                       ARRAY_SIZE(link_freq_menu_items) - 1,
>> +                                       0, link_freq_menu_items);
>> +       if (ov6211->link_freq)
>> +               ov6211->link_freq->flags |= V4L2_CTRL_FLAG_READ_ONLY;
>> +
>> +       v4l2_ctrl_new_std(ctrl_hdlr, &ov6211_ctrl_ops, V4L2_CID_ANALOGUE_GAIN,
>> +                         OV6211_ANALOGUE_GAIN_MIN, OV6211_ANALOGUE_GAIN_MAX,
>> +                         OV6211_ANALOGUE_GAIN_STEP,
>> +                         OV6211_ANALOGUE_GAIN_DEFAULT);
>> +
>> +       exposure_max = (ov6211->cur_mode->vts - OV6211_EXPOSURE_MAX_MARGIN);
>> +       ov6211->exposure = v4l2_ctrl_new_std(ctrl_hdlr, &ov6211_ctrl_ops,
>> +                                            V4L2_CID_EXPOSURE,
>> +                                            OV6211_EXPOSURE_MIN, exposure_max,
>> +                                            OV6211_EXPOSURE_STEP,
>> +                                            OV6211_EXPOSURE_DEFAULT);
>> +
> 
> As well as the blanking - I think this driver is missing reporting the
> crop selection implementation to report the sensor crops.
> 

To the best of my knowledge there is no crops, so I believe this is irrelevant.

This particular sensor is extremely simple.

-- 
Best wishes,
Vladimir


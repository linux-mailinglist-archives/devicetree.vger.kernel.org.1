Return-Path: <devicetree+bounces-7600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9F77C4D19
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 10:27:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB3951C20BB6
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 08:27:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DADEE1A271;
	Wed, 11 Oct 2023 08:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lVF2DFh/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A5F02F2E
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 08:27:25 +0000 (UTC)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E82D98
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 01:27:23 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-405524e6769so3942035e9.1
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 01:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697012842; x=1697617642; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i0w+hcGKEi3xrBWLyTiiDJpolO60Wub3ov86WnEvSRg=;
        b=lVF2DFh//U6ummRk/GWNWtxVTxgy8XSXgWVHMSDa+hiNqFO9/kxnOCRJb0cngtMvtV
         oBfYhirmATlw9i0RkYD/ouD+jHg+A2CbcT/gN0tEByM61mg+Clpi2TQw+D6hdu7Pe972
         clB8vAWzJCcHMV/T1Ot0cHlTtsFUOKiHpDmLN7tcfHRXDN8txJOG6r4gzkP87GqfxGiK
         8c2qIznqRS+YwmSMvwsAOioBfx5ol3gdnEvOhgDgNWWzofCEKxzWbnA7EqAnm1umNs7H
         P13Hv2IY877FoEw4GRldfnZGh7hM5mX2tZCGncwf/9fomcsENGyjC1zsCs0WHOhahsTl
         KA+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697012842; x=1697617642;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i0w+hcGKEi3xrBWLyTiiDJpolO60Wub3ov86WnEvSRg=;
        b=cKvtNhhYHDGsZvwl8wOpOodRixWp2RsP3RxVXFiWYqS2OMUOthLcJ+JS1KoFk0CzHQ
         FHoVBF8GLnPpmAYk4NkSpEnLl1EUfaL3dBgsZulnHCkXBRr9B0dc14sHw/ysyOYQuVSR
         I8g6Lwtlx5kmM95NTLdSzScwpzZR/Csc20GWkmQmgKEb7sDMmUGPp4yJu5zOFwHcoryI
         tx5DX7JJ3LS4XHAEGQxPJpzjW5DF535P3ZF/RpCb8Fqr8gPC+SRVXhXp7QdgTL2PG3dx
         6qAE0RSjwHAUpph2j2NW/FyZdTr72VP65Udi4/Eq+eIYPMSgpm+jIMD/cT0MaLP2lyZx
         A5Pg==
X-Gm-Message-State: AOJu0YyvF08Lsf7lf5oIotKcuK7EAIlzlZuv+FSDNTyGO2mVMlEjqeL6
	7VxNuGjqSvAZgZrdCuGhldoMYw==
X-Google-Smtp-Source: AGHT+IHysVefmRPMThmSbNHWbJ+BZXdyfYcnlxM0wzFYsPTjEDbT4yn2fgFIfIoKYkP4KTazm9TWQw==
X-Received: by 2002:a05:600c:1c21:b0:407:4701:f9e with SMTP id j33-20020a05600c1c2100b0040747010f9emr8023851wms.17.1697012841838;
        Wed, 11 Oct 2023 01:27:21 -0700 (PDT)
Received: from [192.168.86.24] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 4-20020a05600c228400b003fee53feab5sm16143262wmf.10.2023.10.11.01.27.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 01:27:21 -0700 (PDT)
Message-ID: <548849a8-9f11-5274-778e-f291267603bb@linaro.org>
Date: Wed, 11 Oct 2023 09:27:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v12 7/7] nvmem: core: Expose cells through sysfs
Content-Language: en-US
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Walle <michael@walle.cc>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <rafal@milecki.pl>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Robert Marko <robert.marko@sartura.hr>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Luka Perkov <luka.perkov@sartura.hr>, Randy Dunlap <rdunlap@infradead.org>,
 Chen-Yu Tsai <wenst@chromium.org>, Daniel Golle <daniel@makrotopia.org>
References: <20231005155907.2701706-1-miquel.raynal@bootlin.com>
 <20231005155907.2701706-8-miquel.raynal@bootlin.com>
 <318fe799-f53e-64ed-b631-d099bb5202f4@linaro.org>
 <20231011091524.0c9ecc55@xps-13>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20231011091524.0c9ecc55@xps-13>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 11/10/2023 08:15, Miquel Raynal wrote:
>>> +
>>> +	nvmem_cells_group.bin_attrs = cells_attrs;
>>> +
>>> +	ret = devm_device_add_groups(&nvmem->dev, nvmem_cells_groups);
>>> +	if (ret)
>>> +		goto unlock_mutex;
>> This is going to create groups after the nvmem device is added, isn't this going to be problem with user space notifications?
> Greg said it was not. I hope I understood correctly 😄
> 
> And anyway, cells have never been available to userspace, so there is
> nothing userspace might expect yet?
I agree, but once we add sysfs uapi then this is going to change.

--srini


> 
> Thanks,
> Miquèl


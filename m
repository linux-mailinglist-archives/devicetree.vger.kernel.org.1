Return-Path: <devicetree+bounces-13115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A827DC9D4
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 10:47:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 20F092812B3
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 09:47:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C61F15EA2;
	Tue, 31 Oct 2023 09:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wanadoo.fr header.i=@wanadoo.fr header.b="pItzdUQ1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C8913AE5
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 09:47:00 +0000 (UTC)
Received: from smtp.smtpout.orange.fr (smtp-22.smtpout.orange.fr [80.12.242.22])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C899DB
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 02:46:57 -0700 (PDT)
Received: from [192.168.1.18] ([86.243.2.178])
	by smtp.orange.fr with ESMTPA
	id xlKmq2Nre68frxlKnqKvCp; Tue, 31 Oct 2023 10:46:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1698745614;
	bh=zSJ2fHyj4ub3HQ+xTvg2C+89BzyjfVFV9HNzabEf0Ow=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=pItzdUQ1tmeLPjEvh9MNVJD8b0CkSTjpqFevmmeUzr30hh8dnRYaJY4mjDCPLYLG0
	 wB2Hj8zoRvx96zrr5HdERAcjlChmfOSDKzYnofh3BIls0h8ocW/EYgqHMWyS/+v3Iu
	 vunddG/NBhfTpkB64eWkI2rK6HNnPaQboOhJ5/gvoO82lJZ6FWwZ9EyzT3IkFml/JW
	 riuMjV0hukAld3YpQAuCvmMKKWTen3KQQQHJ3gWeE8LwbvzKrbn9fn6T/yIcJM955/
	 eMXN14wiaAZZ2Xr08ZTqXuT09NbrcdS3TadbLHctg82XTRV+lX8Go1DKh+pUxE3uwP
	 /33clZvCJMJfw==
X-ME-Helo: [192.168.1.18]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Tue, 31 Oct 2023 10:46:54 +0100
X-ME-IP: 86.243.2.178
Message-ID: <79231ec3-8da1-4c73-8f5b-efa445e6c35d@wanadoo.fr>
Date: Tue, 31 Oct 2023 10:46:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 2/3] media: rockchip: Add a driver for Rockchip's
 camera interface
Content-Language: fr, en-GB
To: Mehdi Djait <mehdi.djait@bootlin.com>
Cc: mchehab@kernel.org, heiko@sntech.de, hverkuil-cisco@xs4all.nl,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, conor+dt@kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, thomas.petazzoni@bootlin.com,
 alexandre.belloni@bootlin.com, maxime.chevallier@bootlin.com,
 paul.kocialkowski@bootlin.com, michael.riesch@wolfvision.net
References: <cover.1698666612.git.mehdi.djait@bootlin.com>
 <f7367726eb077d43446c83591ecbf9acbc77ef5f.1698666612.git.mehdi.djait@bootlin.com>
 <ad346052-ec62-4d68-903e-fccd7ad989bd@wanadoo.fr>
 <ZUDKAB+zQYS9aLpB@pc-70.home>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <ZUDKAB+zQYS9aLpB@pc-70.home>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Le 31/10/2023 à 10:33, Mehdi Djait a écrit :
> Hello Christophe,
> 
> On Mon, Oct 30, 2023 at 01:47:17PM +0100, Christophe JAILLET wrote:
>>> +	/* Create & register platform subdev. */
>>> +	ret = cif_register_stream_vdev(cif_dev);
>>> +	if (ret < 0)
>>> +		goto err_unreg_media_dev;
>>> +
>>> +	ret = cif_subdev_notifier(cif_dev);
>>> +	if (ret < 0) {
>>> +		v4l2_err(&cif_dev->v4l2_dev,
>>> +			 "Failed to register subdev notifier(%d)\n", ret);
>>> +		cif_unregister_stream_vdev(cif_dev);
>>> +		goto err_unreg_media_dev;
>>
>> Should there be another label with cif_unregister_stream_vdev(cif_dev); if
>> an error occurs here?
>>
>> CJ
> 
> cif_subdev_notifier() is the last function call in the probe with error
> handling. So it will undo the last successful register:
> cif_register_stream_vdev and use the goto to unregister the rest.

Ah, I didn't see the cif_unregister_stream_vdev() call here.
Sorry for the noise.

> 
> I can add a label err_unreg_stream_vdev but it will be only used in the
> error handling of cif_subdev_notifier() and I don't see the benefit.

The main benefit is to be more consistent in the way the error path is 
written, and to be more future proof.

CJ
> 
> --
> Kind Regards
> Mehdi Djait
> 
>>> +	}
>>> +
>>> +	cif_set_default_format(cif_dev);
>>> +	pm_runtime_enable(&pdev->dev);
>>> +
>>> +	return 0;
>>> +
>>> +err_unreg_media_dev:
>>> +	media_device_unregister(&cif_dev->media_dev);
>>> +err_unreg_v4l2_dev:
>>> +	v4l2_device_unregister(&cif_dev->v4l2_dev);
>>> +	return ret;
>>> +}
> 



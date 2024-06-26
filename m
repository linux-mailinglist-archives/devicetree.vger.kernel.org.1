Return-Path: <devicetree+bounces-80440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA3691987B
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 21:47:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DA7B3B2142C
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 19:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A8EC192B75;
	Wed, 26 Jun 2024 19:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel-dk.20230601.gappssmtp.com header.i=@kernel-dk.20230601.gappssmtp.com header.b="J/HoTc6D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9802B192B61
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 19:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719431215; cv=none; b=R04+Znd8b6zDV3ajnuLklRUn5LGNs4Bw/Dnpgc06cSXiilkrlHe14N9jtGWVqPc60yNnK0ZLhgk1R/44G4tX9ux0tMuI67bn5c6lkUqy++9VamGpYJlAartYx26gwlaY1GDSAZsuz+Fvo+TtNTrNAmg1kZBsGnzulfsebHzRzZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719431215; c=relaxed/simple;
	bh=90IFLVAimWlxflMq5YOSkklPtSnG+d0tK9j19/4wy+k=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=ss3LnU6YjeI+waHdH0V4RV5MByxTGWR3zIyu0RO2Kce+tglxrNCatTccqDUZriHRwyQnVaqCajxxVxeUqNENlRWyp07fvajmXWE9+NnxYjGiaUdjZ4xVLJPRNWicn/LMUHzgqr66pmtiYAszc7W40QWApE4aowEi1SOmThz6Xf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kernel.dk; spf=pass smtp.mailfrom=kernel.dk; dkim=pass (2048-bit key) header.d=kernel-dk.20230601.gappssmtp.com header.i=@kernel-dk.20230601.gappssmtp.com header.b=J/HoTc6D; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kernel.dk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kernel.dk
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-718c1f3e239so135763a12.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 12:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20230601.gappssmtp.com; s=20230601; t=1719431214; x=1720036014; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tFQCYxkTWkVTkeG4pmT0NAA774VOsw4t919VmGwibAQ=;
        b=J/HoTc6DvBbXkVC/M33JaTxGUpNOKP352At2Mv2yNXqE1bHJ7j79D2yD7IF40yBI1y
         7uFIbLOy1nNaAFBITORNneL3Qcn46H40YdqbvyCPbc3C59N9rY4a42IvQfXbS9k5YjJU
         lP0Aaz8sdqL9hBVBsakxI/xgNG9sYQO0q+t0iNDhXqIjDD3Wpk+WpVjB2/3VeI823FjC
         NiGE30Krk7uVFTPgOXM96z9jsCNYrPOYA6Dq3CAt+2mcvIVU/CPg4g7VhtCyOd1domlx
         OOXy0g/HeGHgeXnlNfKXK1l9atv/xIfkEoDmlmjtcArnZYlPSjfI1CWs1I2t7Et8mqA2
         HnDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719431214; x=1720036014;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tFQCYxkTWkVTkeG4pmT0NAA774VOsw4t919VmGwibAQ=;
        b=UoGx8vnkSfOsPbIktmLdafbHMmlojeOV77oKNi90trPm1hbMfceOFX4tobOf9IydmS
         0pwfANxhsGoNiEJsodw68kwkgAy1/wIl3/zh4c4jbyY1oV5GAH/oqFapN3LE1q/ROTMY
         Sta6/OvZy0VVVQ7MT2Ayvsr55Eaea4ZINttz8x3ETKlDDCUHcRvRtrGxtwpxluQ6e/nb
         yHUe8zA3odIKLvEdbEZODSIA2jGGGWYLJbjHWA/FD1437cMUPcEuStK3KXhGcJ4hUOF6
         uJnnu8AlnfWbLRjcy+V/qHM/Hgy5mdwy7kk/NSoM5vt3Mmq5vTGmiEFsHm3KFqMAI5o9
         1Emw==
X-Forwarded-Encrypted: i=1; AJvYcCWqc3DilqH193C80822uz3felcIUGk5iWEkiJGihYCIE1PJP2N714gCR89Un/dIlSweNs3+6VjrtB7+sic79fLP/KB2j85ZQem3eg==
X-Gm-Message-State: AOJu0YxOodIhiiwwyRPMCSpTzVXk6vFixCuLS0S5QZWGVCKkpRUxvqy9
	MvJ1uvlQ+grPLqNlWXG1a/PiJjUX+YLjjbafUpf9PqvTQLsXXhr4x1C9ilOfvW8=
X-Google-Smtp-Source: AGHT+IEsqyry2dKkQyVU+KqpfX7PK/KlBwJ1aJo473T1bK1fv3LN794lmHlDZiHq/jj1q1c90ArWNA==
X-Received: by 2002:a05:6a00:3e24:b0:706:7d86:487f with SMTP id d2e1a72fcca58-7067d864f28mr10467895b3a.1.1719431213873;
        Wed, 26 Jun 2024 12:46:53 -0700 (PDT)
Received: from [192.168.1.150] ([198.8.77.157])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7069d65dfc7sm3287078b3a.133.2024.06.26.12.46.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jun 2024 12:46:53 -0700 (PDT)
Message-ID: <58cc9e3a-bb69-4205-9f11-d262f811ea9a@kernel.dk>
Date: Wed, 26 Jun 2024 13:46:50 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] block: add support for notifications
To: Daniel Golle <daniel@makrotopia.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Hauke Mehrtens <hauke@hauke-m.de>, Felix Fietkau <nbd@nbd.name>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Dave Chinner <dchinner@redhat.com>, Jan Kara <jack@suse.cz>,
 Christian Brauner <brauner@kernel.org>,
 =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 Al Viro <viro@zeniv.linux.org.uk>, Li Lingfeng <lilingfeng3@huawei.com>,
 Christian Heusel <christian@heusel.eu>, Min Li <min15.li@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, Adrian Hunter <adrian.hunter@intel.com>,
 Hannes Reinecke <hare@suse.de>, Mikko Rapeli <mikko.rapeli@linaro.org>,
 Yeqi Fu <asuk4.q@gmail.com>, Victor Shih <victor.shih@genesyslogic.com.tw>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Li Zhijian <lizhijian@fujitsu.com>,
 "Ricardo B. Marliere" <ricardo@marliere.net>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-block@vger.kernel.org
References: <cover.1719368448.git.daniel@makrotopia.org>
 <609f654800583feb016d96d9c3fc2f029f0f460a.1719368448.git.daniel@makrotopia.org>
Content-Language: en-US
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <609f654800583feb016d96d9c3fc2f029f0f460a.1719368448.git.daniel@makrotopia.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/25/24 8:51 PM, Daniel Golle wrote:
> +static int blk_call_notifier_add(struct device *dev)
> +{
> +	struct blk_device_list *new_blkdev;
> +
> +	new_blkdev = kmalloc(sizeof(*new_blkdev), GFP_KERNEL);
> +	if (!new_blkdev)
> +		return -ENOMEM;
> +
> +	new_blkdev->dev = dev;
> +	mutex_lock(&blk_notifier_lock);
> +	list_add_tail(&new_blkdev->list, &blk_devices);
> +	raw_notifier_call_chain(&blk_notifier_list, BLK_DEVICE_ADD, dev);
> +	mutex_unlock(&blk_notifier_lock);
> +
> +	return 0;
> +}

Nit: redundant newline.

> +device_initcall(blk_notifications_init);
> diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
> index b2f1362c4681..8d22ba03e3e1 100644
> --- a/include/linux/blkdev.h
> +++ b/include/linux/blkdev.h
> @@ -1687,4 +1687,12 @@ static inline bool bdev_can_atomic_write(struct block_device *bdev)
>  
>  #define DEFINE_IO_COMP_BATCH(name)	struct io_comp_batch name = { }
>  
> +
> +#ifdef CONFIG_BLOCK_NOTIFIERS

#if defined(CONFIG_BLOCK_NOTIFIERS)

> +#define BLK_DEVICE_ADD		1
> +#define BLK_DEVICE_REMOVE	2
> +void blk_register_notify(struct notifier_block *nb);
> +void blk_unregister_notify(struct notifier_block *nb);
> +#endif

Surely these helpers should have a !CONFIG_BLOCK_NOTIFIERS failure case
definition? Either that, or dummies. As it stands, any caller would need
to check if it's enabled or not.

-- 
Jens Axboe



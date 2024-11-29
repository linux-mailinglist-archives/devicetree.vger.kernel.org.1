Return-Path: <devicetree+bounces-125570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2449DE8F0
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 15:50:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BE3CBB227C4
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 14:50:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03BBB13AA41;
	Fri, 29 Nov 2024 14:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="QS4CHvsr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681651FAA
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 14:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732891834; cv=none; b=VbtFXefxpjVbm1ztB8Fa9X1DxT8N9ALc80l/E85SckjiEMIewPUtFuTriVsQ6EjkgNmaC7jiP6GBDrk839hd2ZcF47PuFOkYVGPHGII/ZnB/5TRMcF6rGgWXbHRk3b78zGuAItZzowa4bt2uRaClkY59djfiN+p5wIlg7iUk1bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732891834; c=relaxed/simple;
	bh=Bo6woF2epcvzrIAvE42iL8JvJkpEyyq5yxObhXlfH/o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AmggSVsJxa+dHiz7k4fY3Z4wetdKa/DHzqEa0cDJmN+JzTtdMGS2N77mDm6nKGeD41gZliTPpr7wBCl3lAWjHdxADUjpI0+cOPPEbkkZwc25csciqjX+ddBjo7Vl66oEe/R8vDdAHyP+2D95PQG+lfLXBQrkk+newDkaMadLWuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=QS4CHvsr; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3ea3bf79a03so872136b6e.2
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 06:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732891831; x=1733496631; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x6BUgFKMvWqnE3HjIPVzbYBbQhrG+0D/ZXL7z6iEv+Q=;
        b=QS4CHvsrx134u/gUnpFR2ZPtGBuSGbYAhtWjWzqL+thS+xu6Ztd/fkBgtiB+3zoC3e
         gLOUx8A+XaT4kioKjmY73BErfACkqpOUK269Yv1moihBsKNjdng+jpc3Mg6gnlGHKHJ5
         JnxFb7/OBxmu/E4XkikliswFwT/5HQRd8x8MtZ7bhnsAgl4v9rmIr48UBnDBf6C0LFIU
         95xfgGObqdnAKNBto7hXSuWFFL7qnu2AdAIdbUdjjCAGuMjCFtd0eIE5WJ1iFVCNk/2q
         qp0KXANomNJgkbGCO89CV1s5Le8rFNNkD93UbJfYhWtnaW0FXiW4F/YLMQU8QqYzOd6r
         T1xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732891831; x=1733496631;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x6BUgFKMvWqnE3HjIPVzbYBbQhrG+0D/ZXL7z6iEv+Q=;
        b=KTsIvHCPHv06+TZhVTv1JmcCsHUPvZtm7O7UyRF2YTWUkT8RHOcW2BdgmAFdWd3TQz
         8R37p8FdFf6At5D2PxN+gPrL2Zp+z7B1b7dzFQd11fhbPXl6Ptblgi79YX/UKVkb2Dko
         qRv4GzQwFoOynWmUeqPm02zBbFYp+qGljIonIuxoe6/6XMTLljnoZL18nEIlW+XnmJ8I
         nrbNzCQ5yVFa3lAkLLt3JXffS5u7IP9xMVQp3buWZh8tq9nekYLyYLcsCtRGmuairoVR
         8V8hzwZyo8IwXFbCvnMuLhGF2G67SEKKy4uYhMvTeiV5rbdFBtZc6AGR2RFnmxcdb+8i
         wKhg==
X-Forwarded-Encrypted: i=1; AJvYcCXI+j/jBbVXmUwlQg5ukEQRggdkdRfpcfanA2s/OpBefA6eHlZ9JXXebMEE6zTj6fYZxRD6jLzfNNeM@vger.kernel.org
X-Gm-Message-State: AOJu0YyXM8oMAGZHvobVHznP291NfCXfHBhh1z5wVdJuI3NKdU2S1SoA
	Es4JU83uiuRgwB0XLtdfGSUXxUJAFVzxjRCujqvliPIO9oEuOmrmlZS+yYwjUKg=
X-Gm-Gg: ASbGncvy7w+rEBhh+NbA4X/kHSzzGDHKPu8uUtZRQo29eZnunBcJ+SNXBScPW2TpZGY
	qOfQa69M8itAu8MozjmwusNJPDq+fGOiSh5nYMmlcKF1J/RELnVYBzlBATRQcO6ly6NuV193El1
	IK596GaA+x8ELYQrKmD/LNAF6GxisF72cDjoGLwjuubOkcCQ2jY1Q/RQztDLXmyE1/VNgqBVOQ5
	8Tofr6QnJS5JmXni4A8KOGPHaOa7tvThiBnRJbcOw+7KnEwiBQkBoea0aSK6Gn4tJd8aYv9BlCI
	ZqeoM5AL6kk=
X-Google-Smtp-Source: AGHT+IGVek3mzhHMDzBdQxy7s1b0Zz14fviIHcadw7BkAuoKul+rfGZmueHuYf7hYyYauL0qiEX+qA==
X-Received: by 2002:a05:6808:1829:b0:3ea:50a8:4559 with SMTP id 5614622812f47-3ea6dbb1d5cmr12276229b6e.11.1732891831338;
        Fri, 29 Nov 2024 06:50:31 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3ea86036a2dsm743394b6e.9.2024.11.29.06.50.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Nov 2024 06:50:30 -0800 (PST)
Message-ID: <6d8e9512-2be8-4337-9791-0d956b0968c5@baylibre.com>
Date: Fri, 29 Nov 2024 08:50:28 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] dt-bindings: iio: adc: Add binding for Nuvoton
 NCT720x ADCs
To: Yu-Hsian Yang <j2anfernee@gmail.com>, Jonathan Cameron <jic23@kernel.org>
Cc: Chanh Nguyen <chanh@amperemail.onmicrosoft.com>, avifishman70@gmail.com,
 tmaimon77@gmail.com, tali.perry1@gmail.com, venture@google.com,
 yuenn@google.com, benjaminfair@google.com, lars@metafoo.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nuno.sa@analog.com,
 javier.carrasco.cruz@gmail.com, andy@kernel.org, marcelo.schmitt@analog.com,
 olivier.moysan@foss.st.com, mitrutzceclan@gmail.com,
 matteomartelli3@gmail.com, alisadariana@gmail.com,
 joao.goncalves@toradex.com, marius.cristea@microchip.com,
 mike.looijmans@topic.nl, chanh@os.amperecomputing.com, KWLIU@nuvoton.com,
 yhyang2@nuvoton.com, openbmc@lists.ozlabs.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241106023916.440767-1-j2anfernee@gmail.com>
 <20241106023916.440767-2-j2anfernee@gmail.com>
 <6c20875c-4145-4c91-b3b5-8f70ecb126f0@amperemail.onmicrosoft.com>
 <CA+4VgcJD74ar9zQCj38M2w8FzGWpq+u5Z7ip9M7a1Lu7u8rojw@mail.gmail.com>
 <20241109134228.4359d803@jic23-huawei> <20241109142943.3d960742@jic23-huawei>
 <CA+4VgcJ=8wDWWnmgEt-UkEUfnfD8kGtHe44G5+dcRYt=KdwNfw@mail.gmail.com>
 <20241123144750.43eaa1c5@jic23-huawei>
 <CA+4Vgc+rqnxne6saUgUO_kR6chX9+HZcb40_9dpO6p6KuskSAg@mail.gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <CA+4Vgc+rqnxne6saUgUO_kR6chX9+HZcb40_9dpO6p6KuskSAg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/27/24 8:14 PM, Yu-Hsian Yang wrote:
> Dear Jonathan Cameron,
> 
> Thank you for your advice.
> 
> I would remove the "nvuoton,read-vin-data-size" property.
> 
> Read VIN info can use word read or byte read, and other registers
> should use byte read.
> If I use word read for VIN info and byte read for other registers,
> I encounter an issue when I use regmap instead of i2c smbus API.
> 
> I need two regmap configs with val_bits 8/16.
> After I call devm_regmap_init_i2c these two configs,
> the error message:
> "debugfs: Directory '5-001d' with parent 'regmap' already present!"
> 
> Do you have any suggestions?
> 
Give each regmap a unique name, like "5-001d-8bit" and "5-001d-16bit".


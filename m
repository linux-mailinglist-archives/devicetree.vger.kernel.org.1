Return-Path: <devicetree+bounces-247748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B6ACCB10A
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 10:06:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9A250302BBAD
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 09:06:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3236A2F12BF;
	Thu, 18 Dec 2025 09:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="2M0D7f9A"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DD80246BBA;
	Thu, 18 Dec 2025 09:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766048805; cv=none; b=noHCVAT5wUlt8K2Mbjw/mXi/aoaV/HqwPfzpy4/FLut36/AbKd1OqiwnGECdXRWBRqbF/7Ri8LNy+gfIR36pk6tLuhpyWyM6Cvp/P33VbV7R1MouDcI4aJv8AU+3dxV3/JPlnaaUIPO2Cj81mhSlTEQkLSX2tBF6cjpFWv2Hjy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766048805; c=relaxed/simple;
	bh=2FxCS2v8ys6Z9v1YP9ReHVNMpOtfhfAq24bTG/5GKBY=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=pKuuTvl+WtOHmAzWYhCokxrqNBpQ9Xu8R+75iXZHyTpn5lYSi6oPNfJYUsmqResghFECKrJxk+F6LAwmHxIXetKdcxx5ICyPsjTqrvxYCOrcFE4wrbYhLaL9B8O+lU05Z7XOHgOTibOmijlqLR/ni7AiaT/AIhR8KpEysiHPLnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=2M0D7f9A; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1766048803; x=1797584803;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=2FxCS2v8ys6Z9v1YP9ReHVNMpOtfhfAq24bTG/5GKBY=;
  b=2M0D7f9AQ6dyUx9i5iNhBIrsOPsg5NQpzsy0r5eEU0cQF4YezcEVRKuu
   hfaJzQLmqa4ovO6xSp4fKvLDeJlLqYOwNd+/afJUb3Q6b0ysAAjtj2WEj
   NGiBiFV8QiWgcrl3Os5P/nfHXef5kn1rmm2PhqAshdYGDxIYEqhtfFoRT
   HBP00KINTZGIo81wRd3yPeAVyFV8VBQZK+kdUPvFni0YbHQ+mueomFsWr
   N18kjasnSbBBYxAz158zP2pYCVFyLxyirdCivD9UwS4DwJblHLBIw4ED8
   mtlFtmO6A8WK3deZyJ5yj+SLfa58ZikDCb0k4kSPJKrQ4ap8QLxUKr/VL
   Q==;
X-CSE-ConnectionGUID: 3TswuhhSR4iw3eoTfkehJA==
X-CSE-MsgGUID: ypYW0R9OQBqxqqnx5ZMI6w==
X-IronPort-AV: E=Sophos;i="6.21,158,1763449200"; 
   d="scan'208";a="218042574"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Dec 2025 02:06:42 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex4.mchp-main.com (10.10.87.33) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.29; Thu, 18 Dec 2025 02:06:18 -0700
Received: from [10.171.248.75] (10.10.85.11) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Thu, 18 Dec 2025 02:06:14 -0700
Message-ID: <83faf871-0e54-4ea1-9490-e27026211eac@microchip.com>
Date: Thu, 18 Dec 2025 10:06:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] drm: atmel-hlcdc: add LCD controller layer
 definition for sama7d65
To: Manikandan Muralidharan <manikandan.m@microchip.com>, <lee@kernel.org>,
	<robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<alexandre.belloni@bootlin.com>, <claudiu.beznea@tuxon.dev>,
	<dharma.b@microchip.com>, <maarten.lankhorst@linux.intel.com>,
	<mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
	<simona@ffwll.ch>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<dri-devel@lists.freedesktop.org>
CC: Ryan Wanner <Ryan.Wanner@microchip.com>
References: <20251218040521.463937-1-manikandan.m@microchip.com>
 <20251218040521.463937-3-manikandan.m@microchip.com>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Content-Language: en-US, fr
Organization: microchip
In-Reply-To: <20251218040521.463937-3-manikandan.m@microchip.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 18/12/2025 at 05:05, Manikandan Muralidharan wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Add the LCD controller layer definition and atmel_hlcdc_of_match
> entry for sama7d65.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>

Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Thanks Ryan and Manikandan! Best regards,
   Nicolas



Return-Path: <devicetree+bounces-177169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 74616AB6916
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 12:44:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 354D23B6EDC
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 10:44:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19C14272E68;
	Wed, 14 May 2025 10:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ee+kKI1V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DE822A1E5
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 10:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747219412; cv=none; b=NbIdxOdl7JFeVZtq1DNyXmd9z9f4gDLGxS7SGNZrZgPfwSFTNct+X92Dsnh1EezHvbxW77QonsiS4ge1GRTtnks8hAiA1lvPMl8ZtkAFRv7VfH/pQmK5tOLlEKv4jrnHul3372UbMA77iypSUSLbaU1K7SaSnvazOP2inPuLpPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747219412; c=relaxed/simple;
	bh=icczPrIZYGv2B6Fk9mhsXabLOVp132e36d3tOVpTinM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pN2VKXPvBiX7GOR9tfJRnH4s5ZmWEcweFAAd/X7w6jdJ4/j+1L5QlZHuSDIXfic2rhsZmrjbe4zUIJegUx4ASF9eyqcjWxzo7WPAzufO0QluVfMKCKBz/hbajwAGCZy60t1qJuqAu83qtJP0XuC5Xv2fX+qaGo7XnBD05l1Ai80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ee+kKI1V; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-442ccf0e1b3so76421095e9.3
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 03:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747219408; x=1747824208; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0KB+309i4RxjvcykFikT0JnK/+6UeZWOdqeF0dxsBa8=;
        b=Ee+kKI1V8Ie7cwPlwgEgEXL8958RQNtMbuyDHfqDse4KK6A5TNQEdv9YRspPThzwbo
         2wyt+ExFSSHFlp26WXuB0daF/T5Td9Yat50Ut799M3HY0h4FblDxfDW/RAzbqZgF+59o
         uvWhYocUNrif9iGnUKlcYPHqkYfXLqmNQ8axGx+nRYUABgP4j2kLdD1bdbVdJELzM1cq
         lMKvbcPvLWzFGMyrf5pEV+HmpIoXhwJktNBSHmzyBxUoUX79D7vFJjc47VN2tfy6D6sM
         GTT/lJoUlvMbNPwMB2+F3jy4eXkNWxJisFLhyXOBYd37pEXHqwbYjsjUSUWyQM8DO45B
         zH4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747219408; x=1747824208;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0KB+309i4RxjvcykFikT0JnK/+6UeZWOdqeF0dxsBa8=;
        b=Jh+Jilr3z1BprssacM1FUJsm5/n7M0rT/XtHXgFrzydVBlVx8mQRLrUJ9jp+wnCN/b
         ZSzea5DajKABLGQnBDk2otvKXyJlCav9/gehKe+9AlWv0B+WvTbfc7jrDHXXQ5a8qiWI
         0s4osLQ2tmckgxR2CsI1+gbL4JLlmm2tXePKPNjXRnoswbgU6PRdESNBLMcgvAvGpuot
         AcXTmdPoM/AqA92uD2a6YlHvS2jIULe0I9nr6CajOVfUum5xz06vLGI9G9U9sXPgOMcv
         tpfZo9nsDwMMbD5tdH/ub4QxQBH5HwkrQInQjiwQ4rWBoY4rmcp3A4eQhLLAr9d+2ts0
         0diA==
X-Forwarded-Encrypted: i=1; AJvYcCUHl4/MkotsCyZLa7peF248N8Gw3qF4w/DDTcXyxsuxl4T85MoTdR4y2LzOFF8tPYgrVTql10C4dLaB@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3qa7AW48AeYLNozBQAF8lD+LbSWGYzY0kB3ZtaiN2H5c0kaAn
	bRxTJFZEWWWS4mjRckdlJtnkTzNQ/MgLiC55X9zqmi5i6qtcR7izYiq2W0CyGSY=
X-Gm-Gg: ASbGncsSFVmzxBKuH1D+gFB+Q7d8jJG59jkee3+5RlGui8/ygNCaLM1m51rLV3iIen9
	aGo/x80T9OVVKfVkCFF3yXCy+JNZAidlAQ7DFsUcftE1/byWgStrLOZ+6U16VxEKco9+Iss6ZjY
	Ld44xvTjYNbDxxwTtCsSQTJs43w8xryu85u764dfjRgiXN7qvYmNW7GvpQC+HA8C92U6CKidW99
	q9gAg57/u8M/AKDb8PxU0F7Bv2fahh8d8a9dtauK7uubVsPsIiYszt8g1LsFiWhORCCMdla0xZZ
	d89+P9g3vkagBdbIk/MElBMpwIEfN5TUH/igksXPjGssVKRcymR+YCUmE2tye5eXFuYkWp0oeet
	2A9MnR6jcaOsuOPYbRaVrZw9P
X-Google-Smtp-Source: AGHT+IGDzh2lHF9+tgixSkp4osRxuBf88vHe1okOKr+0ee4IX09GyQKbdwfBSUBsbvD4311dkhuxWg==
X-Received: by 2002:a05:600c:1553:b0:43d:45a:8fbb with SMTP id 5b1f17b1804b1-442f2168bd3mr17922085e9.22.1747219408117;
        Wed, 14 May 2025 03:43:28 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f397b6fbsm24822375e9.39.2025.05.14.03.43.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 03:43:27 -0700 (PDT)
Date: Wed, 14 May 2025 12:43:25 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, rafael@kernel.org, amitk@kernel.org,
	thara.gopinath@gmail.com, dmitry.baryshkov@linaro.org,
	robh@kernel.org, krzk+dt@kernel.org, quic_srichara@quicinc.com
Subject: Re: [PATCH v9 0/6] Add support for IPQ5018 tsens
Message-ID: <aCRzzXkd_qWuN3Fo@mai.linaro.org>
References: <20250228051521.138214-1-george.moussalem@outlook.com>
 <DS7PR19MB88836DC6965515E12D70BB2C9DCC2@DS7PR19MB8883.namprd19.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DS7PR19MB88836DC6965515E12D70BB2C9DCC2@DS7PR19MB8883.namprd19.prod.outlook.com>

On Fri, Feb 28, 2025 at 09:11:33AM +0400, George Moussalem wrote:
> IPQ5018 has tsens V1.0 IP with 5 sensors, of which 4 are in use,
> and 1 interrupt. There is no RPM present in the soc to do tsens early
> enable. Adding support for the same here.
> 
> Last patch series sent by Qualcomm dates back to Sep 22, 2023.
> Since I'm working on OpenWrt support for IPQ5018 based boards (routers)
> and Sricharan Ramabadhran <quic_srichara@quicinc.com> in below email
> confirmed this SoC is still active, I'm continuing the efforts to send
> patches upstream for Linux kernel support.
> https://lore.kernel.org/all/63dc4054-b1e2-4e7a-94e7-643beb26a6f3@quicinc.com/

Applied, patches 2,3,4,5

Thanks!

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


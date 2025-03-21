Return-Path: <devicetree+bounces-159645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6412CA6BA9A
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 13:23:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7930016FDEC
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 12:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 054F2226183;
	Fri, 21 Mar 2025 12:23:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d5P2DTG6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FDE2253BC
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 12:23:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742559799; cv=none; b=sRg1swSErHXYo9Jz9qhvP4uKGDJpnG+xl8Rui1T9KBzngduOrx7ev0gfVjI2f0KOT59MjyVxy1rq1qJvTsRUMkrGgpvDUhzDUCaGmWXshxKtXecMd8vlyu7sqSjuNPgHktw0mCilp2dkRkZMUVVgi4YNg/gWfiXzyae+HyJs9fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742559799; c=relaxed/simple;
	bh=GFmjOQ8o731QUVGB1UkYcDx4yW69PceHE7xVKSn6j3A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VbQ8x8YOgCV1ouajpU7slB0BjJzemsHsjsH+bNGsLTKzAT3wYcEDUIgwCWDKZ8s1xff/cuiPkvDvoq70IGcIj5db2wK7diS20DwXcrryira5Kgc7iqVgsErCx/rNN16EtiO3wlWTM7ZsN3KlqPS/0TL9t/+rEHV+OhMD0/V6tUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d5P2DTG6; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43cf034d4abso19940805e9.3
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 05:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742559796; x=1743164596; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bCHRcsxe/+pskodsN56Dy1BONWoeHJ0Tuu1dcJXeMMo=;
        b=d5P2DTG6z37mnwfQW/Y4pbDH4VNx9HQ+hFJuQkxoOe296dPCThtaUNQmtw/bcX6p0U
         FpXXPyqavk+O4j9DYjUxo0cH5Cduqo4X0cOy8ahl1WRiP2i2YO/+rlsF9A+TRuo1TPc4
         LWsLwflb2kzVaedyXW1J173WZddhS8dlum3P1wDgSHlow0GtR7346Ku9aTQNzJ35QRXV
         niBxwoIiroyrZd9FPbTvz6kHCIXg7z8dG61iBsZwZASqROyhXww8MeTjRvHVT9DTnaWo
         7GJhcoNqMgvUCiN7iWkVbd4cDad5WNa21wfD12GqkQKEhmcP/Hh9oMRc2wb8bPUVKuuk
         Zvnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742559796; x=1743164596;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bCHRcsxe/+pskodsN56Dy1BONWoeHJ0Tuu1dcJXeMMo=;
        b=mFr8QN8x10dhiyxO1ii7BxaFzCFxZ8pE+eP975urVsMu5xW/jmpv/VlxoBH76A1KaY
         rk4yZzyB5R+yGpuWbWt2EJGkVv/IyoBDWMoVsSGxXlJhqjDeQqGOo7rOsWNRyop58Wpx
         Aj62ev8rkKVPg5r+PcW/iv8s7X78cUGpezDXhaYGRwX/Lf4GdBt+UR2p8QaMsxQZ2ULT
         E35ElUr3yExQEe1GlmAOgHZYkDXZLCEKaY4hh0Fdh+nvhdOqIOfQw2G8YJFI7Qm++Ivm
         S9ZX2XP8UyepIqOn01IsmP53Q3nkimq5XEajJFCQ/r7tamxQfrzHHW+bMqi9vV6bC80l
         QMpg==
X-Forwarded-Encrypted: i=1; AJvYcCXDPCt2q8fFdQ1LBiME4mZrx/2nRGecxiSPEcr/Fsb24C50mks0ATzvB3VFeXeX/ilZ2vl1unpeRAJs@vger.kernel.org
X-Gm-Message-State: AOJu0YwhFOP/fiqCF5e1mUI8dF6RTxS1a+xKL541u7pWuHJo/8GX4RY3
	7oaqCKKB+U5QWWtAierQkTMvktezYroXeQFj2UwwI4UKaAaPloKmamfWUaB6xrI=
X-Gm-Gg: ASbGncsd1DBsUkTusC+67dCbZ2V+No4vCUJVwUUhyDntrZPG5P9eFYvp8S7BblsVhDe
	iGhnRd5INNtosSQ40g1/5wQU+WqwwIUDxTM7voHbkuUih/hkddl2hjNIgiKy4HGWoKCpsWPAg96
	LVAvfuWWqqBfi9c2L4TdxAGv+yNWSEb/gvhpjrv5dij1IAPvVlq5gW9+rp3V4VJ7+Pa/gW+a1WW
	WSaRletib6mUHxkwbaA1X/6gijP051GiVRvfUnso4PpJE2hzk+t603A1wNrj7bTUfgprlWHhQFV
	UQUHqbM8+p6hV7a+GlciAGcmiBWhqTbNfDVkxIK24pBTKdoN++x1fOJftTQIZ+I=
X-Google-Smtp-Source: AGHT+IGyhd0C3UJpzvPZ0bVWbsnLobFeYW2i8lgDV+9JLWekTtRmEt7WWLRk7j4RRBw0Gi70mwVr5A==
X-Received: by 2002:a5d:5f96:0:b0:38f:4d20:4a17 with SMTP id ffacd0b85a97d-3997f8fb0f7mr4046481f8f.13.1742559796246;
        Fri, 21 Mar 2025 05:23:16 -0700 (PDT)
Received: from [192.168.68.117] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3997f995766sm2221656f8f.1.2025.03.21.05.23.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Mar 2025 05:23:15 -0700 (PDT)
Message-ID: <9962c517-5c0e-4d46-ac0c-2a7bab550156@linaro.org>
Date: Fri, 21 Mar 2025 12:23:15 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] misc: fastrpc: add support for gpdsp remoteproc
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Ling Xu <quic_lxu5@quicinc.com>, andersson@kernel.org,
 konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, amahesh@qti.qualcomm.com, arnd@arndb.de,
 gregkh@linuxfoundation.org, quic_kuiw@quicinc.com,
 quic_ekangupt@quicinc.com, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
References: <20250320091446.3647918-1-quic_lxu5@quicinc.com>
 <20250320091446.3647918-3-quic_lxu5@quicinc.com>
 <30bba296-8e6f-41ee-880e-2d5ecc8fe5a4@linaro.org>
 <qhriqbm6fcy5vcclfounaaepxcvnck2lb7k2gcpbtrojqzehua@khv5lwdgbysc>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <qhriqbm6fcy5vcclfounaaepxcvnck2lb7k2gcpbtrojqzehua@khv5lwdgbysc>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 20/03/2025 18:43, Dmitry Baryshkov wrote:
> On Thu, Mar 20, 2025 at 05:11:20PM +0000, Srinivas Kandagatla wrote:
>>
>>
>> On 20/03/2025 09:14, Ling Xu wrote:
>>> The fastrpc driver has support for 5 types of remoteprocs. There are
>>> some products which support GPDSP remoteprocs. Add changes to support
>>> GPDSP remoteprocs.
>>>
>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
>>> ---
>>>    drivers/misc/fastrpc.c | 10 ++++++++--
>>>    1 file changed, 8 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
>>> index 7b7a22c91fe4..80aa554b3042 100644
>>> --- a/drivers/misc/fastrpc.c
>>> +++ b/drivers/misc/fastrpc.c
>>> @@ -28,7 +28,9 @@
>>>    #define SDSP_DOMAIN_ID (2)
>>>    #define CDSP_DOMAIN_ID (3)
>>>    #define CDSP1_DOMAIN_ID (4)
>>> -#define FASTRPC_DEV_MAX		5 /* adsp, mdsp, slpi, cdsp, cdsp1 */
>>> +#define GDSP0_DOMAIN_ID (5)
>>> +#define GDSP1_DOMAIN_ID (6)
>>
>> We have already made the driver look silly here, Lets not add domain ids for
>> each instance, which is not a scalable.
>>
>> Domain ids are strictly for a domain not each instance.
> 
> Then CDSP1 should also be gone, correct?
Its already gone as part of the patch that I shared in this discussion.

I will send a proper patch to list once Ling/Ekansh has agree with it.

--srini
> 


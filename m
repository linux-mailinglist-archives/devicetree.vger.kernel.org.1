Return-Path: <devicetree+bounces-69574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F44F8D061A
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 17:29:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 415AB1C21127
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 15:29:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5E9F17E8F3;
	Mon, 27 May 2024 15:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Lb+dpalC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF1C817E8E6
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 15:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716823542; cv=none; b=kY+VpGjy+Co3JEh59fzeHH+5PxRlaxwXpUhTFTMPyBGyPflkQ3AjmsusOQ4rrTemyvOuEIQp9wWwmIcXbbH8owBxR//7DleSwPEcUXeFF8ddDnA7y0SMEYJDGXI9S7AnfS2Zor23X6FC4VSZTvIZm7kQsiSleWvf9AkE2wRNnvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716823542; c=relaxed/simple;
	bh=YAjC+AWcuEwWtYc+0bhe6ljoU6fNPzKyPApNDIZd6II=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o3yWix2fmzdyAV9X6KRjmgigT6IEIy8GcJNgaZrsvuXldRHEcHGGP/XkzkkJMohuWp42mq6rBd0o/O4Hl4QTNQcFk+1Bunxk3BDHjIMrxCbSQXoktcipnlYkbb9/YWkq9N/n77EC+bSF/XN1IfwsT1RnZ/kSDtvAYHweBuyo0wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Lb+dpalC; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5785199e0d6so4401104a12.2
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 08:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716823538; x=1717428338; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YAjC+AWcuEwWtYc+0bhe6ljoU6fNPzKyPApNDIZd6II=;
        b=Lb+dpalC/Nw2Hg8mLHKNzAKEJ+qv5HTzEPde+UF77N4fqlOigIc/Cxb3FQtNgxjpdp
         TdjPEDYZ1q0X7q4oeqvq4LIAS+AMuVIje0I+MOE8vyi30cU8A0Ea9U8ThQ0dV15Q6vei
         t5KM0uATWqCE/xp2OJZ5KL3gWNUJpvZLiFqxnpbCR7+MWC0fuuCNuApFj1qMjrAwYQoN
         C0Qh/iTqj9kEdzn4/jL5/K05KitZGXyGL9J80fy2ZJK/X10su15I8evUalxXvkLn8Y2a
         8krAZlc8y1hCMrHEBSOsFpwPme4n87czPqP637fLSW7ru4Q/meBGHGWVykFuqTo7FV3r
         jOgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716823538; x=1717428338;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YAjC+AWcuEwWtYc+0bhe6ljoU6fNPzKyPApNDIZd6II=;
        b=AuJGzQn8/LJzuB1gfVPEpalUel+CYIy7Uiko0hoZfDbOZ24fXcxNByw1Kx2jsARIe9
         CKq7022n5Uvct1ZeI7NPfW0YjdOfI92uYYVtDS3KE2tMOn7aIpVeq9H24tc31oj19I3t
         NKHHtkxucn6z84k20PxSrHShNbVOvKJ5eQ9t4pC0wFfLBz/waiSQgxShto/ylkdEutDK
         DwmmroVcCS8xe5HZxKdPtZ1SB2ashrPfFEx3NrNOftsCM13rfypapaSiEj5ipPYksVa/
         bDBbqKIw8J8cdSWRNdsYuV8N/QIEH5Sv2M07Z3ydqiOTusuPxFjUtHJD1nsA7RoYZvU/
         QEZg==
X-Forwarded-Encrypted: i=1; AJvYcCXvF8ZIjfo6KFDu46P0Otzo+QeZ8yDKmuZhwIPc1J+4Znj325+xW3CLCsRq63z5Xc8/z5ROzPWfEwpxPOF9EguvFFT7RtpAXvP6Lw==
X-Gm-Message-State: AOJu0YyPO0I8RYQgK9R9nhHVEjSXqIORvSH/pDZwKz9ek3pfPLfBxK9s
	ZnQJ2sA8IV5p+J0GWALTGaRtVCQmj7JSPxinp4LU5/+7sJzH9LMZYT5hoIHcQps=
X-Google-Smtp-Source: AGHT+IGiRaldR9hXVy64MuaHnv1OfdgE/94U8ZZ1bdADsFNgO9ZW17mi5WmshRO62qu9oJ2+WFqVOw==
X-Received: by 2002:a50:ab13:0:b0:578:5d8a:cd91 with SMTP id 4fb4d7f45d1cf-5785d8ad8e6mr7556248a12.41.1716823538210;
        Mon, 27 May 2024 08:25:38 -0700 (PDT)
Received: from [192.168.1.70] ([84.102.31.61])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-579c3bbee4asm2952382a12.76.2024.05.27.08.25.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 May 2024 08:25:37 -0700 (PDT)
Message-ID: <61a1be10-7df3-4ba7-b7b4-ccc7f0379656@baylibre.com>
Date: Mon, 27 May 2024 17:25:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/6] dt-bindings: thermal: mediatek: Rename thermal
 zone definitions for MT8186 and MT8188
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Nicolas Pitre <npitre@baylibre.com>, "Rafael J. Wysocki"
 <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org
References: <20240524-mtk-thermal-mt818x-dtsi-v5-0-56f8579820e7@baylibre.com>
 <20240524-mtk-thermal-mt818x-dtsi-v5-1-56f8579820e7@baylibre.com>
 <20240524-concerned-fritter-262f5e16293e@spud>
 <20240524-clatter-antivirus-b1939900ee58@spud>
Content-Language: en-US
From: Julien Panis <jpanis@baylibre.com>
In-Reply-To: <20240524-clatter-antivirus-b1939900ee58@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 5/24/24 20:27, Conor Dooley wrote:
> On Fri, May 24, 2024 at 07:24:47PM +0100, Conor Dooley wrote:
>> On Fri, May 24, 2024 at 11:04:34AM +0200, Julien Panis wrote:
>>> Use thermal zone names that make more sense.
>>>
>>> Signed-off-by: Julien Panis <jpanis@baylibre.com>
>> Removing the defines is an ABI break. If these are all the same devices,
>> but with more accurate naming, then keep the old defines and add new
>> ones. However, the GPU1 define changes in the course of this patch which
>> is more problematic.
>>> [RFC] When PATCH 1/6 and 2/6 are squashed, checkpatch raises this WARNING:
>>> "DT binding docs and includes should be a separate patch." That's why I
>>> split them in this v5. The problem is that the driver can't be compiled
>>> any more at PATCH 1/6. It needs PATCH 2/6 to be compiled. Should the
>>> checkpatch warning be ignored here ? Should I finally squash PATCH 1/6
>>> and PATCH 2/6 ?
> Heh, and there's just one of the issues caused by your ABI break...

Conor,

Would Russell's suggestion be acceptable for you ?
I mean, this one:
https://lore.kernel.org/all/ZlDMNkdE2jmFgD8B@shell.armlinux.org.uk/

I could implement it, but before submitting it I would like to make
sure that it suits everyone.

Julien

>
>> Why do these names even make more sense? Where did the old names come
>> from and where do the new?
>
> Thanks,
> Conor



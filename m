Return-Path: <devicetree+bounces-39100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D49A684B66E
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 14:31:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 661521F219AD
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 13:31:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D887130AD4;
	Tue,  6 Feb 2024 13:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="L7kPQUVj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FDF7130AC6
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 13:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707226299; cv=none; b=Y+AyNX0DgMgwrmVEidQgLRq3qXVFA48yfrz0lm7wBo/SQi+RxWxJgivs4nANRjOkcV3YLB36Kgd2ZiLs/q65stAHMEoLaMafyAgVY/EBg6dmY783yNmwvpDbHIgZVC/0kefA+YGNrzbwNKOh+D9EgvdHCrho2ooZNQuCdHx/sRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707226299; c=relaxed/simple;
	bh=ZrqsinKMcZ8sN3pc6s+lJ1v1UDSKGKxnVKNP/Ei5dOg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UboynXX/q36AmM4aNdCbmCs+hiNpDJ0CsvTOwOnMOI+8HwEgw3Oxx0DEL5BxGAS5WOBeTS4hd22EzRduVJ1/MFyOHbv3gLpnynwdGwX1eswSfz1XBfWrS7ZqY2AG2rC/BhUI0/FXtg2oQagYhuDIgla3ZKPjCgCduUTmBrDDdMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=L7kPQUVj; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5112d5ab492so7800238e87.0
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 05:31:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1707226295; x=1707831095; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LoTutqZs1PohwVYExlU6zJcR7LQGe1CiS/9XMI2fnXI=;
        b=L7kPQUVjZZd+/oCqAx7eZu2/o7BNutDzMUpf0JYl1kTTs6BA+dyLBskMVsd5aH0Rp6
         6rHHgjEXf+y1ABYr4+oP/fiSYnfgg9FVPLE8b+yjUO3yzirUH2zpvmBeIKtgk39x0u0q
         /EUZ40Dx6B35y0KCIhvUc8OEUx/Yz328Wos6eMZ4OL1DC0/rCSI9YbqD2XKfAQciPlCD
         HcUboW3QOR2oylpPLzTfjz6N9LSxkKgS4G/ldPCq9CfHULIFtgV+MHrY4vD3CjQWBfnU
         +DfDCKw+P+rtO3H8pSTK5+H0El0MY5AhHCUOIPilfCrdR73O3twyq1kB0Ihoiu0AnElo
         G/dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707226295; x=1707831095;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LoTutqZs1PohwVYExlU6zJcR7LQGe1CiS/9XMI2fnXI=;
        b=iVn+GSvjoVj6rcbadsHc3lmk4JmBuohWlSS1d5AmbWdHuzYBaVwsiDoqfWJvd0fQ8x
         mRdXcQm8mh5rIlMAKIr/9XKMXffXrAMrX6huW23XM77BsQYPVtixSvJ5MeIF/hENNvYV
         an4ZHxIwSK/tvs+MaQXzsiP5vwhRimsL8AM7vOL2j6+Wt3WirsNx712lxbfriI3CMMXg
         aRHgApoXOd14ijGoFRbCjYDTf+Ll39K9WXsy4PHThDafzUz+JfB9tNnyIxBZsEOvgujS
         21J/bPvTofXTT4gs2XCOn2cnAvHDEg40s02gzVpR7HcGUxfk9nxzZeDvxXC8PFGqplwu
         PtoQ==
X-Gm-Message-State: AOJu0YzvutFgu5BgLWaymCqHKutnTThiqA/y6Y8KIA8NyOE/yEp6moxm
	TIU5IjKx5xG61SGiq6D7W6IWCvs+LK7X6i3Ei2Lk0ZWqIzb2mXG/GFJkpxAK/bs=
X-Google-Smtp-Source: AGHT+IG7GWlHmaPWxXl4h+3CSJ90uj9AlzoYF2mNtZrlVQ/O7GpE3/NO0HVrvA2MhVJYm9Hv9mc+7Q==
X-Received: by 2002:ac2:5a46:0:b0:511:51a2:e9c4 with SMTP id r6-20020ac25a46000000b0051151a2e9c4mr1832571lfn.15.1707226295281;
        Tue, 06 Feb 2024 05:31:35 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUmky+nbtNhmxcqc5RgtTCWAnSeaNdM4JYkO4L5fC8mnDXZ1LSHUfw5GlkV5PNa658/a1ieV4p581O3TLvDXdv2rYQQExIh5HphecS5avDbJz8k475GYCuQetX2rVPSDsg/Calm1alGUQQ/p6HHtTRkgMNN+xr2KrvHigc3W0HltCCYTUuEtYVkulIzjHKY5cuk+E8Xk4jtEuTwzeZhsUgLjWSjnaCdGevegxVJ7NGNxm1RRU0sylsft9I62aOKlWlLwX/JfeniI3rPRD7Z0WKzP7MBFjC1TrB51FbI/arFmWubYgRZ6x0sK/9aZE6sz2FzM6MpssW522W8/D+JX95eZexFmE0cq1uScgzfov1W/oo=
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id z2-20020ac24182000000b005115465c401sm242655lfh.72.2024.02.06.05.31.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Feb 2024 05:31:35 -0800 (PST)
Message-ID: <64041a5d-a321-4ffe-ba31-bcf0cad63484@freebox.fr>
Date: Tue, 6 Feb 2024 14:31:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v1] arm64: dts: amlogic: Add Freebox fbx8am boards
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 AML <linux-amlogic@lists.infradead.org>, DT <devicetree@vger.kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <8c865c62-cd80-4c78-9fc5-c85491c037ca@freebox.fr>
 <b69a2132-25c0-4acd-808e-d134f5034e58@linaro.org>
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <b69a2132-25c0-4acd-808e-d134f5034e58@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/02/2024 14:22, Krzysztof Kozlowski wrote:

> On 06/02/2024 14:12, Marc Gonzalez wrote:
>
>> From: Pierre-Hugues Husson <phhusson@freebox.fr>
>>
>> The fbx8am boards are based on the Amlogic Meson G12A S905X2 SoC,
>> and the SEI510 board design.
>>
>> Signed-off-by: Pierre-Hugues Husson <phhusson@freebox.fr>
>> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
>> ---
>> Request For Comments to spot obvious mistakes before formal submission
>> NB: on IRC, narmstrong mentioned:
>>> adding dtbos for variants seems to be the new preferred way to handle such case
>>> the fdtoverlay utility works well for this case
> 
> Please run scripts/checkpatch.pl and fix reported warnings. Some
> warnings can be ignored, but the code here looks like it needs a fix.
> Feel free to get in touch if the warning is not clear.

Hello Krzysztof,

The only checkpatch warnings are:

WARNING: DT binding docs and includes should be a separate patch. See: Documentation/devicetree/bindings/submitting-patches.rst
WARNING: added, moved or deleted file(s), does MAINTAINERS need updating?

This patch is modeled after another patch for a similar board.

Which warning did you think required attention?

Regards



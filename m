Return-Path: <devicetree+bounces-27037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 729D9818F89
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 19:17:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 15937B22538
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 18:17:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0696C37D2F;
	Tue, 19 Dec 2023 18:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JG9x4PHg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555624CB37
	for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 18:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-336755f1688so675552f8f.0
        for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 10:10:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703009447; x=1703614247; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9KiAVS35DFTqHVIxiWdRmJ0LeSYZczhNengzj5Y5Mzs=;
        b=JG9x4PHgoWJixH4voIEYtak+MINn4GkYGDvvNhZVJVR2SXvOL6aXc8w4Z4cKWYedfQ
         lj5vO5uOslDfkRE79l8xLm6V1oSKPbKWK7MWegcBE/kmq5SNeVtBWQep7fgXquSL1xW+
         dBVdjKRi4XfQZR6VDNe18Fc0UEelz9/OvLwF3AWc0+egooFVowGYgbEGqlaFImfbs9QF
         cvRasUcC3UShfm5UCmQ7LSWYJJ8516ABLiOkpP5ryAawGA0m7Xd6vPc+JR6lv9qiISPW
         oRVAVpjZsoOOs90RCDarrYlGlXKJ3PqRu055sJS7RsM9gs88LL4z/vV+QSWFGThS0pt3
         F6jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703009447; x=1703614247;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9KiAVS35DFTqHVIxiWdRmJ0LeSYZczhNengzj5Y5Mzs=;
        b=KEwWyudja6G37vpiXCEiO/otYBQ5LqDSpuoHf/H5FOc4PWivdBqwk2wp5r/dp6DJJA
         vbmsa3y1KnhTS8iYEJjPjDnQ6D/tp4ATlGfA/M3vWlTOfdx4U/ntdRVfSJEt9eEK2MMo
         +G6zLBerJZ3iAWRNVUfDTZqC7IaQ1uuDBne7A0joQOJH8Unm6lxrCldjMcwgikHlhJ9P
         CQ2hHcNbuOGS0nnsLalaPQoWW5U7uCYGl7RUbZV4sxbRQaYtoGBLUj83kqj77dopLLoI
         NTX6bFIYFrzUHJoRWWfCipBAfeSBD1fQmZJ2FmGfsYlrcOhiGshi23vunKaYO5Z3cMWm
         K2+g==
X-Gm-Message-State: AOJu0YzegcPO30dvcEYhOOQB8Kp9rp1fLvZDzqDzxX5rRD9VNvCuROGh
	BTbX7pxu9h0wz+ocl08gt7D0lA==
X-Google-Smtp-Source: AGHT+IH/tqzAJhU3SKywn8y76WyVSpW01Wu4CScbRsk3MqKJim3UjQQTDZpfmb5oi04uimYKx72/KA==
X-Received: by 2002:a5d:42c3:0:b0:336:6eba:b0ff with SMTP id t3-20020a5d42c3000000b003366ebab0ffmr1187132wrr.94.1703009447521;
        Tue, 19 Dec 2023 10:10:47 -0800 (PST)
Received: from [192.168.10.46] ([37.170.14.102])
        by smtp.googlemail.com with ESMTPSA id q2-20020a05600000c200b0033668993237sm5845260wrx.49.2023.12.19.10.10.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Dec 2023 10:10:47 -0800 (PST)
Message-ID: <631fb066-08ba-495e-9311-a6cf24c1ccbc@linaro.org>
Date: Tue, 19 Dec 2023 19:10:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 6/8] dt-bindings: thermal: Convert da906{1,2} thermal
 to json-schema
Content-Language: en-US
To: Biju Das <biju.das.jz@bp.renesas.com>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Support Opensource <support.opensource@diasemi.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Biju Das <biju.das.au@gmail.com>, linux-renesas-soc@vger.kernel.org,
 Rob Herring <robh@kernel.org>
References: <20231210134717.94020-1-biju.das.jz@bp.renesas.com>
 <20231210134717.94020-7-biju.das.jz@bp.renesas.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20231210134717.94020-7-biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/12/2023 14:47, Biju Das wrote:
> Convert the da906{1,2} thermal device tree binding documentation to
> json-schema.
> 
> Update MAINTAINERS entries and description by referring to
> dlg,da9062-thermal.yaml binding file.
> 
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog



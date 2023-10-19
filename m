Return-Path: <devicetree+bounces-10018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4487CF5EB
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 12:54:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 611EE1C20925
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 10:54:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F287015AFE;
	Thu, 19 Oct 2023 10:54:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="M65X0Y70"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FE6F14F85
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 10:54:17 +0000 (UTC)
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BD1CB6
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 03:54:16 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-6b201a93c9cso5320929b3a.0
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 03:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1697712856; x=1698317656; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LCtBQryfJ1xQsBGsjZIGIMJfT5cFTOyCYsWR74V1tfo=;
        b=M65X0Y705n0y5rkgXCjvvbG+XYyCV8Ephfm92a/0PLDFxtZzvqwG9pW3ke1Y3P3U5H
         pCgDS6YsLOf/R4DvhGmKzDtgyt4xcxZtD8d875Q4XNzfXDkIpd7ogo2auqc/YSQNm89O
         P+NXxsh2GQvPDHH1nfe3DWjQJqDra3MFgQZyiQ9SuXP/n9pvevpe83J1hAX5RO+FqXj0
         SFcgCUlAWbaGSYdLfn1vZXzd2YRibqaJymXL5FErUHxdh+o0lWi3FNxE3wadbz2l4cDz
         LTzV178jkB7uMFl3f7CGIxc/HOlf84n/5txO0MjM6iM/X3hQfKfwoOTlp2bsuXm8NdqQ
         N6sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697712856; x=1698317656;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LCtBQryfJ1xQsBGsjZIGIMJfT5cFTOyCYsWR74V1tfo=;
        b=qgV6o59Vo1VBTmWV/XpaMCclF1aw3lhj7eNlQGX2uEiE1FQWsvpaFV9gkGm0M6kla4
         WoPxi8RqNQgG1qt+ADTWzxApA1HLxm2yRxR3QWFfhXUDSqxcjlhsjzj4qsgVaR7mkHmh
         k/2LZJM1JjB4NoHo1mb7JyOCku2VBKfflkHhOQx6CSc5/4l3L7Z+tDh66ddJ3fovXoU6
         bzri9zkhZrr2HeoE0/XbqfVlEDadA4IdjI8ii/WVk3qXdaDlHJK6/ohaOX2MgGW1Rb5g
         PfOwsZGAN3uE4h/XP0o13Avep5V25TC5i/whs57c9hv0a7HVUJc+UP4x2HWr5oPbOB67
         TTNA==
X-Gm-Message-State: AOJu0Yza0/245Ws+XdQVe290/GXkByAHQK2Qf1pdifX5+qHk0wTp9fEE
	FvNWditPExNnvpG0GcVZ29RKVw==
X-Google-Smtp-Source: AGHT+IGLRW71RGnN5LAjUmR5R+sXl/Ze6dKBRdRXdfp7qjEbJ8wSX6EjDuxyLcusqDV3QGklgp6WZA==
X-Received: by 2002:a05:6a00:b53:b0:6b5:ec98:4289 with SMTP id p19-20020a056a000b5300b006b5ec984289mr1585918pfo.14.1697712855712;
        Thu, 19 Oct 2023 03:54:15 -0700 (PDT)
Received: from ?IPV6:2403:580d:82f4:0:43ac:2324:cc6e:9fa5? (2403-580d-82f4-0-43ac-2324-cc6e-9fa5.ip6.aussiebb.net. [2403:580d:82f4:0:43ac:2324:cc6e:9fa5])
        by smtp.gmail.com with ESMTPSA id z11-20020aa79e4b000000b0068790c41ca2sm4825720pfq.27.2023.10.19.03.54.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 03:54:15 -0700 (PDT)
Message-ID: <0084ddad-d6fc-ca26-2d26-ba71e81f5f8b@tweaklogic.com>
Date: Thu, 19 Oct 2023 21:24:09 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH] dt-bindings: iio: light: Squash APDS9300 and APDS9960
 schemas
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen
 <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231019080437.94849-1-subhajit.ghosh@tweaklogic.com>
 <20231019-rematch-ethically-9d482ca4607e@spud>
 <20231019-theme-clunky-f4a2e1d122e7@spud>
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <20231019-theme-clunky-f4a2e1d122e7@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

> Also:
> <matt.ranostay@konsulko.com>: host aspmx.l.google.com said:
>      550-5.1.1 The email account that you tried to reach does not exist.
Thanks Conor for pointing this out. Can you please help me out with this?
get_maintainer.pl suggested me to add this email ID.

Regards,
Subhajit Ghosh


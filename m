Return-Path: <devicetree+bounces-9846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C011F7CECEA
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 02:45:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F1CD21C209C2
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 00:45:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3842138D;
	Thu, 19 Oct 2023 00:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yvbehv31"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFBB638C
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 00:44:59 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B574124
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 17:44:57 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40836ea8cbaso16533165e9.0
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 17:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697676296; x=1698281096; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jqMmbDT+DUxZelBUqzkYFvCgJc6iT9B6fZUcTJM+gGk=;
        b=yvbehv31tXdJ5/vjKEukVSeLAK7oMUULjkKurcjsDiBcDlcJ3YSbfXVyPqQ5ysPysb
         TcdgXfXSpZ/GVXtgX7JTqMd2yNzyJ5JUhQcYZuhMddGgFV7kuXhDkKkgkVYFNyVxJ6HV
         WdmUy/bU11Ep569HcBvcRzwlaaywYMrK3uCxHR6TOy51tze56DiF3/vjS+FnOLOVR5Yq
         +sI03dr9J6q+J4PJ1IAeNYwXVTJsWvrWqqM8fvBN5ehrGjvOEQ38M4lc77ErEmkQ/jr7
         3ZT4zO0b67ej4LgGSWE6yvWQtL9VKjXOQcnYk91e0So4J8kJ2JeDJxR9HUPuWQ+LKjFL
         Tgaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697676296; x=1698281096;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jqMmbDT+DUxZelBUqzkYFvCgJc6iT9B6fZUcTJM+gGk=;
        b=Ei+OnMqMf3fmdlXmV2eQhMpcyFJ/9lxzsUQopZM9znnywoPsHFpwfD/Al0ATw7cXtZ
         Qx0l45AgQMjhz0Gv9Kbm+2yHPR+SLzidAOtPheua8QEpZbU8H16OqCQwcYU3pL8jvUjJ
         Gnnmf33rb//kKH73iBGMOMoZUkFQipPEylBGqOsQ0cKy/45n8demQoMHWoKgsYNaBC2u
         RRVUoia4Pho9k1XdEv1jXRmWvqwjVj9E1uuXGTPB8C5x/S6DlOEkBuarmErY31ewAmKg
         +Jqlimk77mhbsde22699PFPsNhPEJdl1JOCsw1xIqh+PY/c3l+8OrcQFTVacY7eem9sQ
         qwXQ==
X-Gm-Message-State: AOJu0YwkiwCkt9KvmAByyuUpNZPdL2oEebXaJFltnOZxrJ3OnfynIQyT
	Dp8JXOI5tis/N4S0pAtLV/UX4g==
X-Google-Smtp-Source: AGHT+IHUpjP1fIZk/icMCfXuumPUX2ZnGdbVENpHqgXkoRfa/UzehhHFAMC9Rqok2c4BqwR4/sPJMg==
X-Received: by 2002:a05:600c:35cc:b0:3fa:934c:8356 with SMTP id r12-20020a05600c35cc00b003fa934c8356mr595689wmq.10.1697676295769;
        Wed, 18 Oct 2023 17:44:55 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:6dcf:7c4b:2bce:3cb2? ([2a05:6e02:1041:c10:6dcf:7c4b:2bce:3cb2])
        by smtp.googlemail.com with ESMTPSA id fm12-20020a05600c0c0c00b004030e8ff964sm2985879wmb.34.2023.10.18.17.44.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Oct 2023 17:44:55 -0700 (PDT)
Message-ID: <608614fa-20f8-472c-8e38-916ff7d80e4d@linaro.org>
Date: Thu, 19 Oct 2023 02:44:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/5] Add LVTS support for mt8192
Content-Language: en-US
To: =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
 angelogioacchino.delregno@collabora.com, rafael@kernel.org,
 amitk@kernel.org, rui.zhang@intel.com, matthias.bgg@gmail.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, dunlap@infradead.org,
 e.xingchen@zte.com.cn, p.zabel@pengutronix.de
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, wenst@chromium.org, ames.lo@mediatek.com,
 rex-bc.chen@mediatek.com, nfraprado@collabora.com, abailon@baylibre.com,
 amergnat@baylibre.com, khilman@baylibre.com
References: <20231017190545.157282-1-bero@baylibre.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20231017190545.157282-1-bero@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 17/10/2023 21:05, Bernhard Rosenkränzer wrote:
> Add full LVTS support (MCU thermal domain + AP thermal domain) to MediaTek MT8192 SoC.
> Also, add Suspend and Resume support to LVTS Driver (all SoCs),
> and update the documentation that describes the Calibration Data Offsets.

Applied patches 1,2,3 and 5, letting the patch 4 to go through the 
Mediatek tree

Thanks

   -- Daniel

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog



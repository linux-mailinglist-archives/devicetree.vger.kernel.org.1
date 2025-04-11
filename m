Return-Path: <devicetree+bounces-165981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 906A0A8601E
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 16:12:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4BF133B13A4
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 14:09:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F4F91F3BB0;
	Fri, 11 Apr 2025 14:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U/JwKS2V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8BB91F237A
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 14:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744380537; cv=none; b=CMO2+duJUj2eglWlFRF91fAuiMmDAmH2JEGEBJ77iaz4UI+C+hldExH+DLckVl4+UXDv80qv72H5pGwLXxGtkQ8R7UNMaaPLS6LC9uNpLSzHG+LR6eGebKcUdye8K+OZwARbzrDvAgoi0ETBFUxtqaMu1Mak8lelnrBYamJ+Zy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744380537; c=relaxed/simple;
	bh=AXf+TOIsxTe7gFokC/cK4t5yaKBEpqCAZ7YE7r0VXAA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=DgkAxMc1L7GbKCX6SLmea9VvEJQXCEWzLkpLSqUFIDj376Qi47fRPq7CJrZquTVqwK0GOdPcCuC+mQ3E0XUlI5ef6ZNs5yk5XFhHmrT7nLNgBPaA4GnzTAWdctqHPkryz9+S+lOMpv5/gb1fwjJnd+bMW8M+pWCfciA6Qq0ObKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U/JwKS2V; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-39c1efc457bso1292896f8f.2
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 07:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744380532; x=1744985332; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rBj/6se5tCkgHEuB0Gb6HuXLXKWv7TpLm9YNzyiLklA=;
        b=U/JwKS2VoK4GSEnoSmZ5UIhsnSsruTiG1gcT9l+WaU+GbxkxxBH4jIJqj2O5ypkuFS
         1ib+MPil0sX2GNtqutJNtVrm1Q1Muhr6QOrLmJVZvi2gF0bjsfqEaWicXgNBD8W6jn82
         /HyQOhXZzHL8LvJFSxZcGGdXac1DwNPB78mx2hPqPsdovEbiU+AVGkFzg4g+smx/P10y
         Fz3Zfv4jUPlcImpmYLAB6i7OPK+3AK9DN8uMVIsna8D6O8sC6bTPz+6zv2E5sRQmIlXf
         71DeVPQTovr8EDkg66JOGFHdIuD6oQjaJ6ECUK3pI4vbxgFYOgBEUvT9nq9JPHvsgALc
         3gqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744380532; x=1744985332;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rBj/6se5tCkgHEuB0Gb6HuXLXKWv7TpLm9YNzyiLklA=;
        b=q4kIpdik4yHUmjYkkzgMYDPHbpd6+e9sbxBCphjV8IhOmD2Mw3WDV5jkQBIUE6hA9x
         5aZRTPFksR0HC11cvqmi1Ftcx8p0apGHwrwx8iAKRqiujnbF9Pocede0QkKDdzyZw2dO
         w5+FvizxJhMqNq9zkyh/5DJlo1t6z7qjx3EUmG+lE7CUHlf/l2mi0Ms6pMLt28+9GHDo
         ZvF+OI9SdviW+ZmJvOtEEgv6fqlsgw4yBjABGF4wdjz+7KNWXm8v5lGjksMoZNDW4AmK
         ZMH3BTLOwvZ5Sdn+VKgxKlh8D7n8EMQ9jwGU63tNoSp75Gl9BVEa6/BB2gTRKuYGwGih
         qzfA==
X-Forwarded-Encrypted: i=1; AJvYcCWDUSwmvw3mAWgE6lkHPUaGKWqX0GhIivBmYogdoBMIDvURUvbKO3L+emKAzGuV6aMgpBU1n3Pj1jdo@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9sDxLeDQykLJGKzbO9q3+TWIpzghY1TgRJmWQ1Rzg9Tux82rZ
	120YSbZcA16ebsHISrvvnEEprVD9oEVcW/7YciRh/UsNUQRtOkSd8H00zf8KNoU=
X-Gm-Gg: ASbGncvrjOjHc5JyRnDB4KuX61msxa77UiPTaXlJ2XJtlOrX2phM5djlrFKUoYgxefU
	7U30+yScLIpTF8vQfUgYAt+dxrXqs/DvgfsHCM+LEIk6VA3Psf405OgQCJ1LYpljb6HlB9LGvaC
	tb/hsteoDXrgX15dND1CAjeLM+GiRyl2FNALyJ/Z+gUuf3rFZXIvNZhK1MJJNFqxuQLW/o1bZUb
	lKozF4lDZzthTuCkdGrebvEYkt5saRsJkTy2sb430KW3JmfJUF4iWYK64Qrbj6fYyvMbk1uGef2
	3DmOpkGv9/hzvXfozeggA6wUWuJUzCjGEEmcvGYBnesTUKQ+pr7sKaJ3nhbqCxhxauh1tUnOkGQ
	vePatxGdQe1o2h9GIrg==
X-Google-Smtp-Source: AGHT+IFnB9Qn0xYinsQMUfheUpu1Su+V1dXaFUExJ5EgbBZlHAOQb/p3lWxk4FDMVN2HW/UOMS4Sww==
X-Received: by 2002:a05:6000:22c7:b0:391:487f:282a with SMTP id ffacd0b85a97d-39eaaecd643mr2208108f8f.50.1744380531857;
        Fri, 11 Apr 2025 07:08:51 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:f77b:949e:1d61:69a8? ([2a01:e0a:3d9:2080:f77b:949e:1d61:69a8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eaf43ccd8sm2127969f8f.72.2025.04.11.07.08.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 07:08:51 -0700 (PDT)
Message-ID: <6d406ffb-7e2b-4e3c-b316-82a2a6ab57eb@linaro.org>
Date: Fri, 11 Apr 2025 16:08:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v6 0/6] usb: dwc3: qcom: Flatten dwc3 structure
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>,
 Saravana Kannan <saravanak@google.com>,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Frank Li <Frank.li@nxp.com>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250410-dwc3-refactor-v6-0-dc0d1b336135@oss.qualcomm.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20250410-dwc3-refactor-v6-0-dc0d1b336135@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/04/2025 05:50, Bjorn Andersson wrote:
> The USB IP-block found in most Qualcomm platforms is modelled in the
> Linux kernel as 3 different independent device drivers, but as shown by
> the already existing layering violations in the Qualcomm glue driver
> they can not be operated independently.
> 
> With the current implementation, the glue driver registers the core and
> has no way to know when this is done. As a result, e.g. the suspend
> callbacks needs to guard against NULL pointer dereferences when trying
> to peek into the struct dwc3 found in the drvdata of the child.
> 
> Missing from the upstream Qualcomm USB support is proper handling of
> role switching, in which the glue needs to be notified upon DRD mode
> changes. Several attempts has been made through the years to register
> callbacks etc, but they always fall short when it comes to handling of
> the core's probe deferral on resources etc.
> 
> Furhtermore, the DeviceTree binding is a direct representation of the
> Linux driver model, and doesn't necessarily describe "the USB IP-block".
> 
> This series therefor attempts to flatten the driver split, and operate
> the glue and core out of the same platform_device instance. And in order
> to do this, the DeviceTree representation of the IP block is flattened.
> 
> Departing from previous versions' attempts at runtime-convert the
> Devicetree representation is swapped out and instead a snapshot of the
> current dwc3-qcom driver is proposed to be carried for a limited time.
> 
> A patch to convert a single platform - sc8280xp - was included in the
> series. This, and others, will be submitted in a separate series as soon
> as its introduction won't break bisection.
> 
> ---
> Changes in v6:
> - Change legacy driver's name, to avoid collision if both are loaded
> - Drop duplicate pm_runtime_{allow,disable}() from dwc3_qcom_remove()
> - Drop DeviceTree example patch, as this should be picked up separately
> - Replace __maybe_unused for PM and PM_SLEEP functions in dwc3-qcom.c
>    with guards, to match the exported functions from the core
> - Add missing pm_runtime idle wrapper from dwc3-qcom
> - Add missing "dma-coherent" to the qcom,snps-dwc3 binding
> - Link to v5: https://lore.kernel.org/r/20250318-dwc3-refactor-v5-0-90ea6e5b3ba4@oss.qualcomm.com
> 
> Changes in v5:
> - Moved the snapshot commit first, to get a clean copy
> - Add missing kernel-doc in glue.h
> - Used a local "struct device" variable in PM functions to reduce the
>    patch size
> - Replaced initialization with default values with zero-initalizing the
>    dwc3_probe_data in dwc3_probe()
> - Add TODO about extcon, as a role-switch callback needs to be
>    implemented
> - Corrected &usb_2 mmio region length
> - Changes the timeline expressed in the commit message to suggest the
>    legacy driver to be dropped after next LTS
> - Integrated qcom,dwc3.yaml changes since v4
> - Link to v4: https://lore.kernel.org/r/20250226-dwc3-refactor-v4-0-4415e7111e49@oss.qualcomm.com
> 
> Changes in v4:
> - dwc3_{init,uninit}() renamed to dwc3_core_probe() and dwc3_core_remove()
> - dwc3_{suspend, resume, complete}() changed to dwc3_pm_*()
> - Arguments to dwc3_core_probe() are wrapped in a struct to better
>    handle the expected growing list of parameters.
> - Add the lost call to dwc3_core_remove() from the Qualcomm glue driver
> - Removed now unused cleanup.h, of_address.h, and of_irq.h includes from
>    dwc3-qcom.c
> - Link to v3: https://lore.kernel.org/r/20250113-dwc3-refactor-v3-0-d1722075df7b@oss.qualcomm.com
> 
> Changes in v3:
> - Replaced the handcoded migration logic of compatible, reg, interrupts,
>    phys with overlays.
> - Move the migration logic (and overlays) to a new drivers/of/overlays
>    directory and apply this at postcore, so that it takes effect prior to
>    the relevant platform_devices are created
> - struct dwc3 is embedded in the glue context, rather than having a
>    separate object allocated
> - The hack of using of_address_to_resource() to avoid platform_resource
>    being stale is removed (thanks to applying migration at postcore)
> - Link to v2: https://lore.kernel.org/r/20240811-dwc3-refactor-v2-0-91f370d61ad2@quicinc.com
> 
> Changes in v2:
> - Rewrite after ACPI removal, multiport support and interrupt fixes
> - Completely changed strategy for DeviceTree binding, as previous idea
>    of using snps,dwc3 as a generic fallback required unreasonable changes
>    to that binding.
> - Abandoned idea of supporting both flattened and unflattened device
>    model in the one driver. As Johan pointed out, it will leave the race
>    condition holes and will make the code harder to understand.
>    Furthermore, the role switching logic that we intend to introduce
>    following this would have depended on the user updating their
>    DeviceTree blobs.
> - Per above, introduced the dynamic DeviceTree rewrite
> - Link to v1: https://lore.kernel.org/all/20231016-dwc3-refactor-v1-0-ab4a84165470@quicinc.com/
> 
> ---
> Bjorn Andersson (6):
>        usb: dwc3: qcom: Snapshot driver for backwards compatibilty
>        dt-bindings: usb: Introduce qcom,snps-dwc3
>        usb: dwc3: core: Expose core driver as library
>        usb: dwc3: core: Don't touch resets and clocks
>        usb: dwc3: qcom: Don't rely on drvdata during probe
>        usb: dwc3: qcom: Transition to flattened model
> 
>   .../devicetree/bindings/usb/qcom,dwc3.yaml         |  13 +-
>   .../devicetree/bindings/usb/qcom,snps-dwc3.yaml    | 622 ++++++++++++++
>   drivers/usb/dwc3/Makefile                          |   1 +
>   drivers/usb/dwc3/core.c                            | 160 ++--
>   drivers/usb/dwc3/dwc3-qcom-legacy.c                | 935 +++++++++++++++++++++
>   drivers/usb/dwc3/dwc3-qcom.c                       | 182 ++--
>   drivers/usb/dwc3/glue.h                            |  35 +
>   7 files changed, 1808 insertions(+), 140 deletions(-)
> ---
> base-commit: 29e7bf01ed8033c9a14ed0dc990dfe2736dbcd18
> change-id: 20231016-dwc3-refactor-931e3b08a8b9
> 
> Best regards,

Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-QRD

Thanks!
Neil


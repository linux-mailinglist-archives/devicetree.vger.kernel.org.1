Return-Path: <devicetree+bounces-132253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BE49F6453
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 12:09:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ABFEE16A9CB
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 11:09:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFC9719E99C;
	Wed, 18 Dec 2024 11:09:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Yb9zSlFl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDAD19D091
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 11:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734520145; cv=none; b=ik4O5gV8dR+rXpjsajRCaVSpKVoDc3XpcE1O6Czwh1F5Tjh86dEfzjJYpRPDztFPEqHiCEo/2t6uATp3xF+s7c+XQCcnptTH0c96kXwVex1XleVcKWAi9M6Ae/N13jO8s4hAS4YvWp1ZbHI4JqJBCnPz3vZ2ceLQ5GHE6pafRTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734520145; c=relaxed/simple;
	bh=HHS5dNz0TLGEezmROOKUgS4GNkvw84Y+nI45mP8yLwk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=p8a8iEppOlD6kBY/redIwd+gcgyzkg4XnN0XVFWyVs54NXI88m0tFqM1GMhPWo4obBXzB/hkJKhUyhyf4tkdEZHcJ6cpx29Y16Oe4KNpke6zIu4M5dLvUGAHK6H6Ah/n2omqWpsXVsoKV8eO13lIwQ5RjJyoef+uxmZOkh2SCPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Yb9zSlFl; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2165cb60719so50989435ad.0
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 03:09:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734520143; x=1735124943; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7DrgQ6VYoOikcPNwAN7qFiBn6qy+vxpbGN4powdV010=;
        b=Yb9zSlFlQAeS+UpgaTTAfVI2InUNDK2B5Gs8bB7O1PB647Vtpcg4FoqpMkH3GoUz+r
         dL1o5XXXYbYSZPDtlY+GLQ9//EunLZ9tP/i4/nvBkCA+wndad3GZXWU3htAnaTMW9GoG
         GJvmJSBv3WF5O38OO2b5ND1XnsiZJfJUM8/yOSC7QyyVDD0pdBuSN94WraOOki8vKMEu
         jVQClX8XvSbCErlHXcUO4G+NvLQd3CzEBvDS1cIBsMFGeFb3V6bYNatxqrTZMIYY7ahr
         y/V23jQPGwW9BRtxGgeCUrcpBoWi/1V4A5RX2M2ZK0vqYxmp4BvDghDCr0yhrtXjSyox
         nzrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734520143; x=1735124943;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7DrgQ6VYoOikcPNwAN7qFiBn6qy+vxpbGN4powdV010=;
        b=YxImzfhIYn/N6oXfofo2raR+YraGn3SrcbVbZ2hardVjuJmJK2uow9qrwu0vrgQS5C
         d6vr+nCUoKFmqzA22nUmXMU61Y1bC4q+VpE9dFKnFhxBU39sGciO+heW4teo/PY7x8vi
         OVL/XVjUilz3TZn7AWxD5sCbTUFEtCleO9Fdx3akOWqaUElAa07dZkvqkJTAcp07xVgE
         aZEhJgJ3O4duwWTSZ4josFYKy9KgnvQNshMZWghBMgU6MWEKYS8496sZWgrUyrq4AZcn
         f24XW85z+PfvULx3Eqq1rijLo9UCSkLS2x7FlcWmbJ4Z3V0tUBESDULjVrXUGldmUkzq
         dapg==
X-Forwarded-Encrypted: i=1; AJvYcCVsPM/AQfCO/Y3eyvHSJsPCBEqidFZn4jkY5YbcJ8YlhDrijXZKqgx7VvTA7Y/b/J0XttbMLiqF/szy@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd/0BfC4JTR/fghmi5I8iWY/CEMgC5nmPer1AJOg/fuwic+bdd
	QRe+Q9xNmskVHKv4NzNx54X1cOPtJuPYJLHuKuXEUWaPOaZc3U/wwIme9cz4yNziu7RsDVvUDBY
	8bClZEqXHdK4ysem5Peh9Bqm4mQjFAxwpJVBjjQ==
X-Gm-Gg: ASbGncuLuFM36odDfvJnEy/6bsqKyqQ19IKCMRjHawQ7wnW+Jjx3IuY1Jiwms00d0xy
	9NsyUh+EwowOOxKHFcS+Xbscf8DzaMmEl1rTpKDQ=
X-Google-Smtp-Source: AGHT+IFqtoF/ET1GubMsEABYhPa61QmJqqXS0X7a81A3uzPmB/CXgLPnxaiciklUjFKSIYMFACeznH/zxD6fakuhkUk=
X-Received: by 2002:a17:902:ce92:b0:216:2b14:b625 with SMTP id
 d9443c01a7336-218d7223345mr36253795ad.31.1734520143364; Wed, 18 Dec 2024
 03:09:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241217063324.33781-1-quic_jinlmao@quicinc.com> <20241217063324.33781-3-quic_jinlmao@quicinc.com>
In-Reply-To: <20241217063324.33781-3-quic_jinlmao@quicinc.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 18 Dec 2024 11:08:52 +0000
Message-ID: <CAJ9a7VhjZSM-5kSwbF142s4AGdCRvcvmZspAUsQA5cdnHvnGEg@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] coresight: Add label sysfs node support
To: Mao Jinlong <quic_jinlmao@quicinc.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, James Clark <james.clark@arm.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, coresight@lists.linaro.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi

On Tue, 17 Dec 2024 at 06:33, Mao Jinlong <quic_jinlmao@quicinc.com> wrote:
>
> For some coresight components like CTI and TPDM, there could be
> numerous of them. From the node name, we can only get the type and
> register address of the component. We can't identify the HW or the
> system the component belongs to. Add label sysfs node support for
> showing the intuitive name of the device.
>
> Signed-off-by: Mao Jinlong <quic_jinlmao@quicinc.com>
> ---
>  .../testing/sysfs-bus-coresight-devices-cti   |  6 ++++
>  .../sysfs-bus-coresight-devices-funnel        |  6 ++++
>  .../testing/sysfs-bus-coresight-devices-tpdm  |  6 ++++
>  drivers/hwtracing/coresight/coresight-sysfs.c | 32 +++++++++++++++++++
>  4 files changed, 50 insertions(+)
>
> diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-cti b/Documentation/ABI/testing/sysfs-bus-coresight-devices-cti
> index bf2869c413e7..909670e0451a 100644
> --- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-cti
> +++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-cti
> @@ -239,3 +239,9 @@ Date:               March 2020
>  KernelVersion  5.7
>  Contact:       Mike Leach or Mathieu Poirier
>  Description:   (Write) Clear all channel / trigger programming.
> +
> +What:           /sys/bus/coresight/devices/<cti-name>/label
> +Date:           Dec 2024
> +KernelVersion   6.14
> +Contact:        Mao Jinlong <quic_jinlmao@quicinc.com>
> +Description:    (Read) Show hardware context information of device.
> diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-funnel b/Documentation/ABI/testing/sysfs-bus-coresight-devices-funnel
> index d75acda5e1b3..944aad879aeb 100644
> --- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-funnel
> +++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-funnel
> @@ -10,3 +10,9 @@ Date:         November 2014
>  KernelVersion: 3.19
>  Contact:       Mathieu Poirier <mathieu.poirier@linaro.org>
>  Description:   (RW) Defines input port priority order.
> +
> +What:           /sys/bus/coresight/devices/<memory_map>.funnel/label
> +Date:           Dec 2024
> +KernelVersion   6.14
> +Contact:        Mao Jinlong <quic_jinlmao@quicinc.com>
> +Description:    (Read) Show hardware context information of device.
> diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tpdm b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tpdm
> index bf710ea6e0ef..309802246398 100644
> --- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tpdm
> +++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tpdm
> @@ -257,3 +257,9 @@ Contact:    Jinlong Mao (QUIC) <quic_jinlmao@quicinc.com>, Tao Zhang (QUIC) <quic_t
>  Description:
>                 (RW) Set/Get the MSR(mux select register) for the CMB subunit
>                 TPDM.
> +
> +What:           /sys/bus/coresight/devices/<tpdm-name>/label
> +Date:           Dec 2024
> +KernelVersion   6.14
> +Contact:        Mao Jinlong <quic_jinlmao@quicinc.com>
> +Description:    (Read) Show hardware context information of device.
> diff --git a/drivers/hwtracing/coresight/coresight-sysfs.c b/drivers/hwtracing/coresight/coresight-sysfs.c
> index a01c9e54e2ed..4af40cd7d75a 100644
> --- a/drivers/hwtracing/coresight/coresight-sysfs.c
> +++ b/drivers/hwtracing/coresight/coresight-sysfs.c
> @@ -7,6 +7,7 @@
>  #include <linux/device.h>
>  #include <linux/idr.h>
>  #include <linux/kernel.h>
> +#include <linux/property.h>
>
>  #include "coresight-priv.h"
>  #include "coresight-trace-id.h"
> @@ -366,18 +367,47 @@ static ssize_t enable_source_store(struct device *dev,
>  }
>  static DEVICE_ATTR_RW(enable_source);
>
> +static ssize_t label_show(struct device *dev,
> +               struct device_attribute *attr, char *buf)
> +{
> +
> +       const char *str;
> +       int ret = 0;
> +
> +       ret = fwnode_property_read_string(dev_fwnode(dev), "label", &str);
> +       if (ret == 0)
> +               return scnprintf(buf, PAGE_SIZE, "%s\n", str);
> +       else
> +               return ret;
> +}
> +static DEVICE_ATTR_RO(label);
> +
>  static struct attribute *coresight_sink_attrs[] = {
>         &dev_attr_enable_sink.attr,
> +       &dev_attr_label.attr,
>         NULL,
>  };
>  ATTRIBUTE_GROUPS(coresight_sink);
>
>  static struct attribute *coresight_source_attrs[] = {
>         &dev_attr_enable_source.attr,
> +       &dev_attr_label.attr,
>         NULL,
>  };
>  ATTRIBUTE_GROUPS(coresight_source);
>
> +static struct attribute *coresight_link_attrs[] = {
> +       &dev_attr_label.attr,
> +       NULL,
> +};
> +ATTRIBUTE_GROUPS(coresight_link);
> +
> +static struct attribute *coresight_helper_attrs[] = {
> +       &dev_attr_label.attr,
> +       NULL,
> +};
> +ATTRIBUTE_GROUPS(coresight_helper);
> +
>  const struct device_type coresight_dev_type[] = {
>         [CORESIGHT_DEV_TYPE_SINK] = {
>                 .name = "sink",
> @@ -385,6 +415,7 @@ const struct device_type coresight_dev_type[] = {
>         },
>         [CORESIGHT_DEV_TYPE_LINK] = {
>                 .name = "link",
> +               .groups = coresight_link_groups,
>         },
>         [CORESIGHT_DEV_TYPE_LINKSINK] = {
>                 .name = "linksink",
> @@ -396,6 +427,7 @@ const struct device_type coresight_dev_type[] = {
>         },
>         [CORESIGHT_DEV_TYPE_HELPER] = {
>                 .name = "helper",
> +               .groups = coresight_helper_groups,
>         }
>  };
>  /* Ensure the enum matches the names and groups */
> --
> 2.17.1
>

This is a clean and simple solution to this issue. In this form...

Reviewed-by: Mike Leach <mike.leach@linaro.org>

-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK


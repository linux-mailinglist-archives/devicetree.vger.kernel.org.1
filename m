Return-Path: <devicetree+bounces-15370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D9A7E9D31
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 14:31:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F16CD1C2028E
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 13:31:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CC3520309;
	Mon, 13 Nov 2023 13:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R7jydPpY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321E9200CB
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 13:31:39 +0000 (UTC)
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D671189
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 05:31:34 -0800 (PST)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-5ac376d311aso48730937b3.1
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 05:31:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699882293; x=1700487093; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WQOZUXd7NfurNcqV6NE1t2nr98RhaZpU5QsUwlAd3Ek=;
        b=R7jydPpYhFmmi3K7GdHdQ2f8APbnYrMHga9pRYM8JesdBxFKCTJ5faV6zTQZ9Hf3hn
         QlkcuIypRgPOJ4TTEIfaN/+1IQiv1sFJ5+3E487s2bN4YLiBly1ikHEbqZtK+MEFrlP+
         psuElc4Pt5TkpalDYcqGZ2RUYgIGIvTFi7xWvwd3HglsYLNhZJD9iF/bnSf9ZyBMRonO
         k5+YBsDBTKI+Q2l7ZcpyLmKh0nbqQVWm6+uhVoZqqfyuJsLPAbUZQAbwWzRGKBLoHuJ/
         c2em3PcZTj3tsHZHfcSaA3EzrGIuImlh0Ut+2tCfD8xGFxkIvUMWTvmq5EbelRMi0w2O
         t6yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699882293; x=1700487093;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WQOZUXd7NfurNcqV6NE1t2nr98RhaZpU5QsUwlAd3Ek=;
        b=uJi1MK/ZtW0tEVmjFG7k8Myx8SnMP/fTfXww4z67uQmXx4tiWOuP6oW5q+kp/TjGmx
         Wdj3+LCNG3AQEPil1IvmCpvs+89dVtybq5zUwTkBGNgoRTYdg325KjjpC+2ph3wTMmNs
         qPOU4oOJlhFB1ayHqiFXYj+neISRa4CxKULu6Y/TBwAg0Hh3d1ALkSNYOmQ6lJxgUX5K
         cGIH4T2ggUrHgWO3lco6Il+F/bDPKj3lPmmr75n0uyAu2yUmo7nTSqN9t2oAuZfw3Pox
         YPgQvou84zfP855RAzrRIUM3+Yhk7Bs2+LfMMDfgXDIUmnNyJe9VhYm+eNrRfjB2ihi/
         05kw==
X-Gm-Message-State: AOJu0YyUerHJVYUiLnPK7dKg90E/4bokUu8hG8eobltqzW970dMEc5IZ
	xCzkXcMK04LkNiCXuW2DtCSfDowqLV/IM1iPZvA3sw==
X-Google-Smtp-Source: AGHT+IEYEPF7N9a4VOBRzn4sx6kJge1C3xYl5RgZvUpmgGSkA71ov2ug9+DIzbWjQGxTnRFiJnxlIcEsWeVzBfawNA8=
X-Received: by 2002:a0d:f201:0:b0:595:be7:a38 with SMTP id b1-20020a0df201000000b005950be70a38mr7858257ywf.49.1699882293207;
 Mon, 13 Nov 2023 05:31:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025103957.3776-1-keith.zhao@starfivetech.com>
 <20231025103957.3776-7-keith.zhao@starfivetech.com> <70805ff2-56a8-45e1-a31c-ffb0e84749e5@linaro.org>
 <4f37d075-9b3a-4222-8124-1bb3983ea00b@starfivetech.com>
In-Reply-To: <4f37d075-9b3a-4222-8124-1bb3983ea00b@starfivetech.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 13 Nov 2023 15:31:22 +0200
Message-ID: <CAA8EJpqbY4pTpMB6855S=wacdhpj3+24dBFH+4DSnBi9XYSaeA@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] drm/vs: Add hdmi driver
To: Keith Zhao <keith.zhao@starfivetech.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sumit Semwal <sumit.semwal@linaro.org>, 
	Emil Renner Berthing <kernel@esmil.dk>, Shengyang Chen <shengyang.chen@starfivetech.com>, 
	Conor Dooley <conor+dt@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, Jagan Teki <jagan@edgeble.ai>, 
	Rob Herring <robh+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Bjorn Andersson <andersson@kernel.org>, 
	Changhuang Liang <changhuang.liang@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Shawn Guo <shawnguo@kernel.org>, christian.koenig@amd.com
Content-Type: text/plain; charset="UTF-8"

On Mon, 13 Nov 2023 at 14:11, Keith Zhao <keith.zhao@starfivetech.com> wrote:
>
>
>
> On 2023/10/26 6:23, Dmitry Baryshkov wrote:
> > On 25/10/2023 13:39, Keith Zhao wrote:
> >> add hdmi driver as encoder and connect
> >>
> >> Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
> >> ---
> >>   drivers/gpu/drm/verisilicon/Kconfig         |   8 +-
> >>   drivers/gpu/drm/verisilicon/Makefile        |   1 +
> >>   drivers/gpu/drm/verisilicon/starfive_hdmi.c | 949 ++++++++++++++++++++
> >>   drivers/gpu/drm/verisilicon/starfive_hdmi.h | 295 ++++++
> >>   drivers/gpu/drm/verisilicon/vs_drv.c        |   5 +
> >>   drivers/gpu/drm/verisilicon/vs_drv.h        |   4 +
> >>   6 files changed, 1261 insertions(+), 1 deletion(-)
> >>   create mode 100644 drivers/gpu/drm/verisilicon/starfive_hdmi.c
> >>   create mode 100644 drivers/gpu/drm/verisilicon/starfive_hdmi.h
> >>
> >> diff --git a/drivers/gpu/drm/verisilicon/Kconfig b/drivers/gpu/drm/verisilicon/Kconfig
> >> index 3a361f8c8..122c786e3 100644
> >> --- a/drivers/gpu/drm/verisilicon/Kconfig
> >> +++ b/drivers/gpu/drm/verisilicon/Kconfig
> >> @@ -12,4 +12,10 @@ config DRM_VERISILICON
> >>         setting and buffer management. It does not
> >>         provide 2D or 3D acceleration.
> >>   -
> >> +config DRM_VERISILICON_STARFIVE_HDMI
> >> +    bool "Starfive HDMI extensions"
> >> +    depends on DRM_VERISILICON
> >> +    help
> >> +       This selects support for StarFive soc specific extensions
> >> +       for the Innosilicon HDMI driver. If you want to enable
> >> +       HDMI on JH7110 based soc, you should select this option.
> >> diff --git a/drivers/gpu/drm/verisilicon/Makefile b/drivers/gpu/drm/verisilicon/Makefile
> >> index 1d48016ca..08350f25b 100644
> >> --- a/drivers/gpu/drm/verisilicon/Makefile
> >> +++ b/drivers/gpu/drm/verisilicon/Makefile
> >> @@ -7,5 +7,6 @@ vs_drm-objs := vs_dc_hw.o \
> >>           vs_modeset.o \
> >>           vs_plane.o
> >>   +vs_drm-$(CONFIG_DRM_VERISILICON_STARFIVE_HDMI) += starfive_hdmi.o
> >>   obj-$(CONFIG_DRM_VERISILICON) += vs_drm.o
> >>   diff --git a/drivers/gpu/drm/verisilicon/starfive_hdmi.c b/drivers/gpu/drm/verisilicon/starfive_hdmi.c
> >> new file mode 100644
> >> index 000000000..d296c4b71
> >> --- /dev/null
> >> +++ b/drivers/gpu/drm/verisilicon/starfive_hdmi.c
> >> @@ -0,0 +1,949 @@
> >> +// SPDX-License-Identifier: GPL-2.0-only
> >> +/*
> >> + * Copyright (C) 2023 StarFive Technology Co., Ltd.
> >> + */
> >> +
> >> +#include <linux/clk.h>
> >> +#include <linux/component.h>
> >> +#include <linux/delay.h>
> >> +#include <linux/err.h>
> >> +#include <linux/hdmi.h>
> >> +#include <linux/i2c.h>
> >> +#include <linux/irq.h>
> >> +#include <linux/media-bus-format.h>
> >> +#include <linux/mfd/syscon.h>
> >> +#include <linux/module.h>
> >> +#include <linux/mutex.h>
> >> +#include <linux/of_device.h>
> >> +#include <linux/pm_runtime.h>
> >> +#include <linux/reset.h>
> >> +
> >> +#include <drm/bridge/dw_hdmi.h>
> >> +#include <drm/drm_atomic_helper.h>
> >> +#include <drm/drm_edid.h>
> >> +#include <drm/drm_managed.h>
> >> +#include <drm/drm_of.h>
> >> +#include <drm/drm_probe_helper.h>
> >> +#include <drm/drm_simple_kms_helper.h>
> >> +
> >> +#include "starfive_hdmi.h"
> >> +#include "vs_drv.h"
> >> +#include "vs_crtc.h"
> >> +
> >> +static struct starfive_hdmi *encoder_to_hdmi(struct drm_encoder *encoder)
> >> +{
> >> +    return container_of(encoder, struct starfive_hdmi, encoder);
> >> +}
> >> +
> >> +static struct starfive_hdmi *connector_to_hdmi(struct drm_connector *connector)
> >> +{
> >> +    return container_of(connector, struct starfive_hdmi, connector);
> >> +}
> >> +
> >> +struct starfive_hdmi_i2c {
> >> +    struct i2c_adapter adap;
> >> +
> >> +    u8 ddc_addr;
> >> +    u8 segment_addr;
> >> +    /* protects the edid data when use i2c cmd to read edid */
> >> +    struct mutex lock;
> >> +    struct completion cmp;
> >> +};
> >> +
> >> +static const struct pre_pll_config pre_pll_cfg_table[] = {
> >> +    { 25175000,  25175000, 1,  100, 2, 3, 3, 12, 3, 3, 4, 0, 0xf55555},
> >> +    { 25200000,  25200000, 1,  100, 2, 3, 3, 12, 3, 3, 4, 0, 0},
> >> +    { 27000000,  27000000, 1,  90, 3, 2, 2, 10, 3, 3, 4, 0, 0},
> >
> > Such data structures are usually pretyt limited and hard to handle. Could you please replace it with the runtime calculations of
> >
> >> +    { 27027000,  27027000, 1,  90, 3, 2, 2, 10, 3, 3, 4, 0, 0x170a3d},
> >> +    { 28320000,  28320000, 1,  28, 2, 1, 1,  3, 0, 3, 4, 0, 0x51eb85},
> >> +    { 30240000,  30240000, 1,  30, 2, 1, 1,  3, 0, 3, 4, 0, 0x3d70a3},
> >> +    { 31500000,  31500000, 1,  31, 2, 1, 1,  3, 0, 3, 4, 0, 0x7fffff},
> >> +    { 33750000,  33750000, 1,  33, 2, 1, 1,  3, 0, 3, 4, 0, 0xcfffff},
> >> +    { 36000000,  36000000, 1,  36, 2, 1, 1,  3, 0, 3, 4, 0, 0},
> >> +    { 40000000,  40000000, 1,  80, 2, 2, 2, 12, 2, 2, 2, 0, 0},
> >> +    { 46970000,  46970000, 1,  46, 2, 1, 1,  3, 0, 3, 4, 0, 0xf851eb},
> >> +    { 49500000,  49500000, 1,  49, 2, 1, 1,  3, 0, 3, 4, 0, 0x7fffff},
> >> +    { 49000000,  49000000, 1,  49, 2, 1, 1,  3, 0, 3, 4, 0, 0},
> >> +    { 50000000,  50000000, 1,  50, 2, 1, 1,  3, 0, 3, 4, 0, 0},
> >> +    { 54000000,  54000000, 1,  54, 2, 1, 1,  3, 0, 3, 4, 0, 0},
> >> +    { 54054000,  54054000, 1,  54, 2, 1, 1,  3, 0, 3, 4, 0, 0x0dd2f1},
> >> +    { 57284000,  57284000, 1,  57, 2, 1, 1,  3, 0, 3, 4, 0, 0x48b439},
> >> +    { 58230000,  58230000, 1,  58, 2, 1, 1,  3, 0, 3, 4, 0, 0x3ae147},
> >> +    { 59341000,  59341000, 1,  59, 2, 1, 1,  3, 0, 3, 4, 0, 0x574bc6},
> >> +    { 59400000,  59400000, 1,  99, 3, 1, 1,  1, 3, 3, 4, 0, 0},
> >> +    { 65000000,  65000000, 1, 130, 2, 2, 2,  12, 0, 2, 2, 0, 0},
> >> +    { 68250000,  68250000, 1, 68,  2, 1, 1,  3,  0, 3, 4, 0, 0x3fffff},
> >> +    { 71000000,  71000000, 1,  71, 2, 1, 1,  3, 0, 3,  4, 0, 0},
> >> +    { 74176000,  74176000, 1,  98, 1, 2, 2,  1, 2, 3, 4, 0, 0xe6ae6b},
> >> +    { 74250000,  74250000, 1,  99, 1, 2, 2,  1, 2, 3, 4, 0, 0},
> >> +    { 75000000,  75000000, 1,  75, 2, 1, 1,  3, 0, 3, 4, 0, 0},
> >> +    { 78750000,  78750000, 1,  78, 2, 1, 1,  3, 0, 3, 4, 0, 0xcfffff},
> >> +    { 79500000,  79500000, 1,  79, 2, 1, 1,  3, 0, 3, 4, 0, 0x7fffff},
> >> +    { 83500000,  83500000, 2, 167, 2, 1, 1,  1, 0, 0,  6, 0, 0},
> >> +    { 83500000, 104375000, 1, 104, 2, 1, 1,  1, 1, 0,  5, 0, 0x600000},
> >> +    { 84858000,  84858000, 1,  85, 2, 1, 1,  3, 0, 3,  4, 0, 0xdba5e2},
> >> +    { 85500000,  85500000, 1,  85, 2, 1, 1,  3, 0, 3,  4, 0, 0x7fffff},
> >> +    { 85750000,  85750000, 1,  85, 2, 1, 1,  3, 0, 3,  4, 0, 0xcfffff},
> >> +    { 85800000,  85800000, 1,  85, 2, 1, 1,  3, 0, 3,  4, 0, 0xcccccc},
> >> +    { 88750000,  88750000, 1,  88, 2, 1, 1,  3, 0, 3,  4, 0, 0xcfffff},
> >> +    { 89910000,  89910000, 1,  89, 2, 1, 1,  3, 0, 3, 4, 0, 0xe8f5c1},
> >> +    { 90000000,  90000000, 1,  90, 2, 1, 1,  3, 0, 3, 4, 0, 0},
> >> +    {101000000, 101000000, 1, 101, 2, 1, 1,  3, 0, 3, 4, 0, 0},
> >> +    {102250000, 102250000, 1, 102, 2, 1, 1,  3, 0, 3, 4, 0, 0x3fffff},
> >> +    {106500000, 106500000, 1, 106, 2, 1, 1,  3, 0, 3, 4, 0, 0x7fffff},
> >> +    {108000000, 108000000, 1,  90, 3, 0, 0,  5, 0, 2,  2, 0, 0},
> >> +    {119000000, 119000000, 1, 119, 2, 1, 1,  3, 0, 3,  4, 0, 0},
> >> +    {131481000, 131481000, 1,  131, 2, 1, 1,  3, 0, 3,  4, 0, 0x7b22d1},
> >> +    {135000000, 135000000, 1,  135, 2, 1, 1,  3, 0, 3, 4, 0, 0},
> >> +    {136750000, 136750000, 1,  136, 2, 1, 1,  3, 0, 3, 4, 0, 0xcfffff},
> >> +    {147180000, 147180000, 1,  147, 2, 1, 1,  3, 0, 3, 4, 0, 0x2e147a},
> >> +    {148352000, 148352000, 1,  98, 1, 1, 1,  1, 2, 2, 2, 0, 0xe6ae6b},
> >> +    {148500000, 148500000, 1,  99, 1, 1, 1,  1, 2, 2, 2, 0, 0},
> >> +    {154000000, 154000000, 1, 154, 2, 1, 1,  3, 0, 3, 4, 0, 0},
> >> +    {156000000, 156000000, 1, 156, 2, 1, 1,  3, 0, 3, 4, 0, 0},
> >> +    {157000000, 157000000, 1, 157, 2, 1, 1,  3, 0, 3, 4, 0, 0},
> >> +    {162000000, 162000000, 1, 162, 2, 1, 1,  3, 0, 3, 4, 0, 0},
> >> +    {174250000, 174250000, 1, 145, 3, 0, 0,  5, 0, 2, 2, 0, 0x355555},
> >> +    {174500000, 174500000, 1, 174, 2, 1, 1,  3, 0, 3, 4, 0, 0x7fffff},
> >> +    {174570000, 174570000, 1, 174, 2, 1, 1,  3, 0, 3, 4, 0, 0x91eb84},
> >> +    {175500000, 175500000, 1, 175, 2, 1, 1,  3, 0, 3, 4, 0, 0x7fffff},
> >> +    {185590000, 185590000, 1, 185, 2, 1, 1,  3, 0, 3, 4, 0, 0x970a3c},
> >> +    {187000000, 187000000, 1, 187, 2, 1, 1,  3, 0, 3, 4, 0, 0},
> >> +    {241500000, 241500000, 1, 161, 1, 1, 1,  4, 0, 2,  2, 0, 0},
> >> +    {241700000, 241700000, 1, 241, 2, 1, 1,  3, 0, 3,  4, 0, 0xb33332},
> >> +    {262750000, 262750000, 1, 262, 2, 1, 1,  3, 0, 3,  4, 0, 0xcfffff},
> >> +    {296500000, 296500000, 1, 296, 2, 1, 1,  3, 0, 3,  4, 0, 0x7fffff},
> >> +    {296703000, 296703000, 1,  98, 0, 1, 1,  1, 0, 2,  2, 0, 0xe6ae6b},
> >> +    {297000000, 297000000, 1,  99, 0, 1, 1,  1, 0, 2,  2, 0, 0},
> >> +    {594000000, 594000000, 1,  99, 0, 2, 0,  1, 0, 1,  1, 0, 0},
> >> +    {0, 0, 0,  0, 0, 0, 0,  0, 0, 0,  0, 0, 0},
> >> +};
> >> +
> >> +static const struct post_pll_config post_pll_cfg_table[] = {
> >> +    {25200000,    1, 80, 13, 3, 1},
> >> +    {27000000,    1, 40, 11, 3, 1},
> >> +    {33750000,    1, 40, 11, 3, 1},
> >> +    {49000000,    1, 20, 1, 3, 3},
> >> +    {241700000, 1, 20, 1, 3, 3},
> >> +    {297000000, 4, 20, 0, 0, 3},
> >> +    {594000000, 4, 20, 0, 0, 0},
> >> +    { /* sentinel */ }
> >> +};
> >> +
> >> +inline u8 hdmi_readb(struct starfive_hdmi *hdmi, u16 offset)
> >> +{
> >> +    return readl_relaxed(hdmi->regs + (offset) * 0x04);
> >> +}
> >> +
> >> +inline void hdmi_writeb(struct starfive_hdmi *hdmi, u16 offset, u32 val)
> >> +{
> >> +    writel_relaxed(val, hdmi->regs + (offset) * 0x04);
> >> +}
> >> +
> >> +inline void hdmi_modb(struct starfive_hdmi *hdmi, u16 offset,
> >> +                 u32 msk, u32 val)
> >> +{
> >> +    u8 temp = hdmi_readb(hdmi, offset) & ~msk;
> >> +
> >> +    temp |= val & msk;
> >> +    hdmi_writeb(hdmi, offset, temp);
> >> +}
> >> +
> >> +static int starfive_hdmi_enable_clk_deassert_rst(struct device *dev, struct starfive_hdmi *hdmi)
> >> +{
> >> +    int ret;
> >> +
> >> +    ret = clk_prepare_enable(hdmi->sys_clk);
> >> +    if (ret) {
> >> +        dev_err(dev, "Cannot enable HDMI sys clock: %d\n", ret);
> >> +        return ret;
> >> +    }
> >> +
> >> +    ret = clk_prepare_enable(hdmi->mclk);
> >> +    if (ret) {
> >> +        dev_err(dev, "Cannot enable HDMI mclk clock: %d\n", ret);
> >> +        goto err_mclk;
> >> +    }
> >> +    ret = clk_prepare_enable(hdmi->bclk);
> >
> > This code begs to use clk_bulk instead.
> >
> >> +    if (ret) {
> >> +        dev_err(dev, "Cannot enable HDMI bclk clock: %d\n", ret);
> >> +        goto err_bclk;
> >> +    }
> >> +    ret = reset_control_deassert(hdmi->tx_rst);
> >> +    if (ret < 0) {
> >> +        dev_err(dev, "failed to deassert tx_rst\n");
> >> +        goto err_rst;
> >> +    }
> >> +    return 0;
> >> +
> >> +err_rst:
> >> +    clk_disable_unprepare(hdmi->bclk);
> >> +err_bclk:
> >> +    clk_disable_unprepare(hdmi->mclk);
> >> +err_mclk:
> >> +    clk_disable_unprepare(hdmi->sys_clk);
> >> +    return ret;
> >> +}
> >> +
> >> +static void starfive_hdmi_disable_clk_assert_rst(struct device *dev, struct starfive_hdmi *hdmi)
> >> +{
> >> +    int ret;
> >> +
> >> +    ret = reset_control_assert(hdmi->tx_rst);
> >> +    if (ret < 0)
> >> +        dev_err(dev, "failed to assert tx_rst\n");
> >> +
> >> +    clk_disable_unprepare(hdmi->sys_clk);
> >> +    clk_disable_unprepare(hdmi->mclk);
> >> +    clk_disable_unprepare(hdmi->bclk);
> >> +}
> >> +
> >> +#ifdef CONFIG_PM_SLEEP
> >> +static int hdmi_system_pm_suspend(struct device *dev)
> >> +{
> >> +    return pm_runtime_force_suspend(dev);
> >> +}
> >> +
> >> +static int hdmi_system_pm_resume(struct device *dev)
> >> +{
> >> +    return pm_runtime_force_resume(dev);
> >> +}
> >> +#endif
> >> +
> >> +#ifdef CONFIG_PM
> >> +static int hdmi_runtime_suspend(struct device *dev)
> >> +{
> >> +    struct starfive_hdmi *hdmi = dev_get_drvdata(dev);
> >> +
> >> +    starfive_hdmi_disable_clk_assert_rst(dev, hdmi);
> >> +
> >> +    return 0;
> >> +}
> >> +
> >> +static int hdmi_runtime_resume(struct device *dev)
> >> +{
> >> +    struct starfive_hdmi *hdmi = dev_get_drvdata(dev);
> >> +
> >> +    return starfive_hdmi_enable_clk_deassert_rst(dev, hdmi);
> >> +}
> >> +#endif
> >> +
> >> +static void starfive_hdmi_tx_phy_power_down(struct starfive_hdmi *hdmi)
> >> +{
> >> +    hdmi_modb(hdmi, HDMI_SYS_CTRL, m_POWER, v_PWR_OFF);
> >> +}
> >> +
> >> +static void starfive_hdmi_tx_phy_power_on(struct starfive_hdmi *hdmi)
> >> +{
> >> +    hdmi_modb(hdmi, HDMI_SYS_CTRL, m_POWER, v_PWR_ON);
> >
> > It looks like one can inline these two helpers w/o too much troubles.
> >
> >> +}
> >> +
> >> +static void starfive_hdmi_config_pll(struct starfive_hdmi *hdmi)
> >> +{
> >> +    u32 val;
> >> +    u8 reg_1ad_value = hdmi->post_cfg->post_div_en ?
> >> +         hdmi->post_cfg->postdiv : 0x00;
> >> +    u8 reg_1aa_value = hdmi->post_cfg->post_div_en ?
> >> +         0x0e : 0x02;
> >> +
> >> +    hdmi_writeb(hdmi, STARFIVE_PRE_PLL_CONTROL, STARFIVE_PRE_PLL_POWER_DOWN);
> >> +    hdmi_writeb(hdmi, STARFIVE_POST_PLL_DIV_1,
> >> +            STARFIVE_POST_PLL_POST_DIV_ENABLE |
> >> +            STARFIVE_POST_PLL_REFCLK_SEL_TMDS |
> >> +            STARFIVE_POST_PLL_POWER_DOWN);
> >> +    hdmi_writeb(hdmi, STARFIVE_PRE_PLL_DIV_1, STARFIVE_PRE_PLL_PRE_DIV(hdmi->pre_cfg->prediv));
> >> +
> >> +    val = STARFIVE_SPREAD_SPECTRUM_MOD_DISABLE | STARFIVE_SPREAD_SPECTRUM_MOD_DOWN;
> >> +    if (!hdmi->pre_cfg->fracdiv)
> >> +        val |= STARFIVE_PRE_PLL_FRAC_DIV_DISABLE;
> >> +    hdmi_writeb(hdmi, STARFIVE_PRE_PLL_DIV_2,
> >> +            STARFIVE_PRE_PLL_FB_DIV_11_8(hdmi->pre_cfg->fbdiv) | val);
> >> +    hdmi_writeb(hdmi, STARFIVE_PRE_PLL_DIV_3,
> >> +            STARFIVE_PRE_PLL_FB_DIV_7_0(hdmi->pre_cfg->fbdiv));
> >> +    hdmi_writeb(hdmi, STARFIVE_PRE_PLL_DIV_4,
> >> +            STARFIVE_PRE_PLL_TMDSCLK_DIV_C(hdmi->pre_cfg->tmds_div_c) |
> >> +            STARFIVE_PRE_PLL_TMDSCLK_DIV_A(hdmi->pre_cfg->tmds_div_a) |
> >> +            STARFIVE_PRE_PLL_TMDSCLK_DIV_B(hdmi->pre_cfg->tmds_div_b));
> >> +
> >> +    if (hdmi->pre_cfg->fracdiv) {
> >> +        hdmi_writeb(hdmi, STARFIVE_PRE_PLL_FRAC_DIV_L,
> >> +                STARFIVE_PRE_PLL_FRAC_DIV_7_0(hdmi->pre_cfg->fracdiv));
> >> +        hdmi_writeb(hdmi, STARFIVE_PRE_PLL_FRAC_DIV_M,
> >> +                STARFIVE_PRE_PLL_FRAC_DIV_15_8(hdmi->pre_cfg->fracdiv));
> >> +        hdmi_writeb(hdmi, STARFIVE_PRE_PLL_FRAC_DIV_H,
> >> +                STARFIVE_PRE_PLL_FRAC_DIV_23_16(hdmi->pre_cfg->fracdiv));
> >> +    }
> >> +
> >> +    hdmi_writeb(hdmi, STARFIVE_PRE_PLL_DIV_5,
> >> +            STARFIVE_PRE_PLL_PCLK_DIV_A(hdmi->pre_cfg->pclk_div_a) |
> >> +            STARFIVE_PRE_PLL_PCLK_DIV_B(hdmi->pre_cfg->pclk_div_b));
> >> +    hdmi_writeb(hdmi, STARFIVE_PRE_PLL_DIV_6,
> >> +            STARFIVE_PRE_PLL_PCLK_DIV_C(hdmi->pre_cfg->pclk_div_c) |
> >> +            STARFIVE_PRE_PLL_PCLK_DIV_D(hdmi->pre_cfg->pclk_div_d));
> >> +
> >> +    /*pre-pll power down*/
> >> +    hdmi_modb(hdmi, STARFIVE_PRE_PLL_CONTROL, STARFIVE_PRE_PLL_POWER_DOWN, 0);
> >> +
> >> +    hdmi_modb(hdmi, STARFIVE_POST_PLL_DIV_2, STARFIVE_POST_PLL_Pre_DIV_MASK,
> >> +          STARFIVE_POST_PLL_PRE_DIV(hdmi->post_cfg->prediv));
> >> +    hdmi_writeb(hdmi, STARFIVE_POST_PLL_DIV_3, hdmi->post_cfg->fbdiv & 0xff);
> >> +    hdmi_writeb(hdmi, STARFIVE_POST_PLL_DIV_4, reg_1ad_value);
> >> +    hdmi_writeb(hdmi, STARFIVE_POST_PLL_DIV_1, reg_1aa_value);
> >> +}
> >> +
> >> +static void starfive_hdmi_tmds_driver_on(struct starfive_hdmi *hdmi)
> >> +{
> >> +    hdmi_modb(hdmi, STARFIVE_TMDS_CONTROL,
> >> +          STARFIVE_TMDS_DRIVER_ENABLE, STARFIVE_TMDS_DRIVER_ENABLE);
> >> +}
> >> +
> >> +static void starfive_hdmi_sync_tmds(struct starfive_hdmi *hdmi)
> >> +{
> >> +    /*first send 0 to this bit, then send 1 and keep 1 into this bit*/
> >> +    hdmi_writeb(hdmi, HDMI_SYNC, 0x0);
> >> +    hdmi_writeb(hdmi, HDMI_SYNC, 0x1);
> >> +}
> >> +
> >> +static void starfive_hdmi_i2c_init(struct starfive_hdmi *hdmi)
> >> +{
> >> +    int ddc_bus_freq;
> >> +
> >> +    ddc_bus_freq = (clk_get_rate(hdmi->sys_clk) >> 2) / HDMI_SCL_RATE;
> >> +
> >> +    hdmi_writeb(hdmi, DDC_BUS_FREQ_L, ddc_bus_freq & 0xFF);
> >> +    hdmi_writeb(hdmi, DDC_BUS_FREQ_H, (ddc_bus_freq >> 8) & 0xFF);
> >> +
> >> +    /* Clear the EDID interrupt flag and mute the interrupt */
> >> +    hdmi_writeb(hdmi, HDMI_INTERRUPT_MASK1, 0);
> >> +    hdmi_writeb(hdmi, HDMI_INTERRUPT_STATUS1, m_INT_EDID_READY);
> >> +}
> >> +
> >> +static const
> >> +struct pre_pll_config *starfive_hdmi_phy_get_pre_pll_cfg(struct starfive_hdmi *hdmi,
> >> +                             unsigned long rate)
> >> +{
> >> +    const struct pre_pll_config *cfg = pre_pll_cfg_table;
> >> +
> >> +    rate = (rate / 1000) * 1000;
> >> +    for (; cfg->pixclock != 0; cfg++)
> >> +        if (cfg->tmdsclock == rate && cfg->pixclock == rate)
> >> +            break;
> >> +
> >> +    if (cfg->pixclock == 0)
> >> +        return ERR_PTR(-EINVAL);
> >> +
> >> +    return cfg;
> >> +}
> >> +
> >> +static int starfive_hdmi_phy_clk_set_rate(struct starfive_hdmi *hdmi)
> >> +{
> >> +    hdmi->post_cfg = post_pll_cfg_table;
> >> +
> >> +    hdmi->pre_cfg = starfive_hdmi_phy_get_pre_pll_cfg(hdmi, hdmi->tmds_rate);
> >> +    if (IS_ERR(hdmi->pre_cfg))
> >> +        return PTR_ERR(hdmi->pre_cfg);
> >> +
> >> +    for (; hdmi->post_cfg->tmdsclock != 0; hdmi->post_cfg++)
> >> +        if (hdmi->tmds_rate <= hdmi->post_cfg->tmdsclock)
> >> +            break;
> >> +
> >> +    starfive_hdmi_config_pll(hdmi);
> >> +
> >> +    return 0;
> >> +}
> >> +
> >> +static int starfive_hdmi_config_video_timing(struct starfive_hdmi *hdmi,
> >> +                         struct drm_display_mode *mode)
> >> +{
> >> +    int value;
> >> +    /* Set detail external video timing */
> >> +    value = mode->htotal;
> >> +    hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HTOTAL_L, value & 0xFF);
> >> +    hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HTOTAL_H, (value >> 8) & 0xFF);
> >
> > As you have hdmi_writeb already, adding hdmi_writew will help here.
> >
> >> +
> >> +    value = mode->htotal - mode->hdisplay;
> >> +    hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HBLANK_L, value & 0xFF);
> >> +    hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HBLANK_H, (value >> 8) & 0xFF);
> >> +
> >> +    value = mode->htotal - mode->hsync_start;
> >> +    hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDELAY_L, value & 0xFF);
> >> +    hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDELAY_H, (value >> 8) & 0xFF);
> >> +
> >> +    value = mode->hsync_end - mode->hsync_start;
> >> +    hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDURATION_L, value & 0xFF);
> >> +    hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDURATION_H, (value >> 8) & 0xFF);
> >> +
> >> +    value = mode->vtotal;
> >> +    hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VTOTAL_L, value & 0xFF);
> >> +    hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VTOTAL_H, (value >> 8) & 0xFF);
> >> +
> >> +    value = mode->vtotal - mode->vdisplay;
> >> +    hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VBLANK, value & 0xFF);
> >> +
> >> +    value = mode->vtotal - mode->vsync_start;
> >> +    hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VDELAY, value & 0xFF);
> >> +
> >> +    value = mode->vsync_end - mode->vsync_start;
> >> +    hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VDURATION, value & 0xFF);
> >> +
> >> +    /* Set detail external video timing polarity and interlace mode */
> >> +    value = v_EXTERANL_VIDEO(1);
> >> +    value |= mode->flags & DRM_MODE_FLAG_PHSYNC ?
> >> +        v_HSYNC_POLARITY(1) : v_HSYNC_POLARITY(0);
> >> +    value |= mode->flags & DRM_MODE_FLAG_PVSYNC ?
> >> +        v_VSYNC_POLARITY(1) : v_VSYNC_POLARITY(0);
> >> +    value |= mode->flags & DRM_MODE_FLAG_INTERLACE ?
> >> +        v_INETLACE(1) : v_INETLACE(0);
> >> +
> >> +    hdmi_writeb(hdmi, HDMI_VIDEO_TIMING_CTL, value);
> >> +    return 0;
> >> +}
> >> +
> >> +static int starfive_hdmi_setup(struct starfive_hdmi *hdmi,
> >> +                   struct drm_display_mode *mode)
> >> +{
> >> +    hdmi_modb(hdmi, STARFIVE_BIAS_CONTROL, STARFIVE_BIAS_ENABLE, STARFIVE_BIAS_ENABLE);
> >> +    hdmi_writeb(hdmi, STARFIVE_RX_CONTROL, STARFIVE_RX_ENABLE);
> >> +    hdmi->hdmi_data.vic = drm_match_cea_mode(mode);
> >> +
> >> +    hdmi->tmds_rate = mode->clock * 1000;
> >> +    starfive_hdmi_phy_clk_set_rate(hdmi);
> >> +
> >> +    while (!(hdmi_readb(hdmi, STARFIVE_PRE_PLL_LOCK_STATUS) & 0x1))
> >> +        continue;
> >> +    while (!(hdmi_readb(hdmi, STARFIVE_POST_PLL_LOCK_STATUS) & 0x1))
> >> +        continue;
> >
> > Please use read_iopoll_timeout here.
> >
> >> +
> >> +    /*turn on LDO*/
> >> +    hdmi_writeb(hdmi, STARFIVE_LDO_CONTROL, STARFIVE_LDO_ENABLE);
> >> +    /*turn on serializer*/
> >> +    hdmi_writeb(hdmi, STARFIVE_SERIALIER_CONTROL, STARFIVE_SERIALIER_ENABLE);
> >> +
> >> +    starfive_hdmi_tx_phy_power_down(hdmi);
> >> +    starfive_hdmi_config_video_timing(hdmi, mode);
> >> +    starfive_hdmi_tx_phy_power_on(hdmi);
> >> +
> >> +    starfive_hdmi_tmds_driver_on(hdmi);
> >> +    starfive_hdmi_sync_tmds(hdmi);
> >> +
> >> +    return 0;
> >> +}
> >> +
> >> +static void starfive_hdmi_encoder_mode_set(struct drm_encoder *encoder,
> >> +                       struct drm_display_mode *mode,
> >> +                       struct drm_display_mode *adj_mode)
> >> +{
> >> +    struct starfive_hdmi *hdmi = encoder_to_hdmi(encoder);
> >> +
> >> +    drm_mode_copy(&hdmi->previous_mode, adj_mode);
> >
> > Why do you need it?
> >
> >> +}
> >> +
> >> +static void starfive_hdmi_encoder_enable(struct drm_encoder *encoder)
> >> +{
> >> +    struct starfive_hdmi *hdmi = encoder_to_hdmi(encoder);
> >> +    struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
> >> +    int ret, idx;
> >> +    struct drm_device *drm = hdmi->connector.dev;
> >> +
> >> +    if (drm && !drm_dev_enter(drm, &idx))
> >> +        return;
> >> +
> >> +    ret = pm_runtime_get_sync(hdmi->dev);
> >> +    if (ret < 0)
> >> +        return;
> >> +    mdelay(10);
> >> +    starfive_hdmi_setup(hdmi, mode);
> >> +
> >> +    if (drm)
> >> +        drm_dev_exit(idx);
> >> +}
> >> +
> >> +static void starfive_hdmi_encoder_disable(struct drm_encoder *encoder)
> >> +{
> >> +    struct starfive_hdmi *hdmi = encoder_to_hdmi(encoder);
> >> +
> >> +    int idx;
> >> +    struct drm_device *drm = hdmi->connector.dev;
> >> +
> >> +    if (drm && !drm_dev_enter(drm, &idx))
> >> +        return;
> >> +
> >> +    pm_runtime_put(hdmi->dev);
> >> +
> >> +    if (drm)
> >> +        drm_dev_exit(idx);
> >> +}
> >> +
> >> +static int
> >> +starfive_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
> >> +                   struct drm_crtc_state *crtc_state,
> >> +                   struct drm_connector_state *conn_state)
> >> +{
> >> +    bool valid = false;
> >> +    struct drm_display_mode *mode = &crtc_state->adjusted_mode;
> >> +    struct vs_crtc_state *vs_crtc_state = to_vs_crtc_state(crtc_state);
> >> +
> >> +    vs_crtc_state->encoder_type = encoder->encoder_type;
> >> +    vs_crtc_state->output_fmt = MEDIA_BUS_FMT_RGB888_1X24;
> >> +
> >> +    const struct pre_pll_config *cfg = pre_pll_cfg_table;
> >> +    int pclk = mode->clock * 1000;
> >> +
> >> +    for (; cfg->pixclock != 0; cfg++) {
> >> +        if (pclk == cfg->pixclock) {
> >> +            if (pclk > 297000000)
> >
> > Magic value.
> >
> >> +                continue;
> >> +
> >> +            valid = true;
> >> +            break;
> >> +        }
> >> +    }
> >> +
> >> +    return (valid) ? 0 : -EINVAL;
> >> +}
> >> +
> >> +static const struct drm_encoder_helper_funcs starfive_hdmi_encoder_helper_funcs = {
> >> +    .enable     = starfive_hdmi_encoder_enable,
> >> +    .disable    = starfive_hdmi_encoder_disable,
> >> +    .mode_set   = starfive_hdmi_encoder_mode_set,
> >> +    .atomic_check = starfive_hdmi_encoder_atomic_check,
> >> +};
> >> +
> >> +static enum drm_connector_status
> >> +starfive_hdmi_connector_detect(struct drm_connector *connector, bool force)
> >> +{
> >> +    struct starfive_hdmi *hdmi = connector_to_hdmi(connector);
> >> +    struct drm_device *drm = hdmi->connector.dev;
> >> +    int ret;
> >> +    int idx;
> >> +
> >> +    if (drm && !drm_dev_enter(drm, &idx))
> >> +        return connector_status_disconnected;
> >> +
> >> +    ret = pm_runtime_get_sync(hdmi->dev);
> >> +    if (ret < 0)
> >> +        return ret;
> >> +
> >> +    ret = (hdmi_readb(hdmi, HDMI_STATUS) & m_HOTPLUG) ?
> >> +        connector_status_connected : connector_status_disconnected;
> >> +    pm_runtime_put(hdmi->dev);
> >> +
> >> +    if (drm)
> >> +        drm_dev_exit(idx);
> >> +
> >> +    return ret;
> >> +}
> >> +
> >> +static int starfive_hdmi_connector_get_modes(struct drm_connector *connector)
> >> +{
> >> +    struct starfive_hdmi *hdmi = connector_to_hdmi(connector);
> >> +    struct edid *edid;
> >> +    int ret = 0;
> >> +
> >> +    if (!hdmi->ddc)
> >> +        return 0;
> >> +    ret = pm_runtime_get_sync(hdmi->dev);
> >> +    if (ret < 0)
> >> +        return ret;
> >> +
> >> +    edid = drm_get_edid(connector, hdmi->ddc);
> >> +    if (edid) {
> >> +        hdmi->hdmi_data.sink_is_hdmi = drm_detect_hdmi_monitor(edid);
> >> +        hdmi->hdmi_data.sink_has_audio = drm_detect_monitor_audio(edid);
> >> +        drm_connector_update_edid_property(connector, edid);
> >> +        ret = drm_add_edid_modes(connector, edid);
> >> +        kfree(edid);
> >> +    }
> >> +    pm_runtime_put(hdmi->dev);
> >
> > Can you use drm_connector_helper_get_modes_from_ddc() here? And then drm_display_info.is_hdmi and .has_audio.
> >
> >> +
> >> +    return ret;
> >> +}
> >> +
> >> +static enum drm_mode_status
> >> +starfive_hdmi_connector_mode_valid(struct drm_connector *connector,
> >> +                   struct drm_display_mode *mode)
> >> +{
> >> +    const struct pre_pll_config *cfg = pre_pll_cfg_table;
> >> +    int pclk = mode->clock * 1000;
> >> +    bool valid = false;
> >> +
> >> +    for (; cfg->pixclock != 0; cfg++) {
> >> +        if (pclk == cfg->pixclock) {
> >> +            if (pclk > 297000000)
> >
> > magic value
> >
> >> +                continue;
> >> +
> >> +            valid = true;
> >> +            break;
> >> +        }
> >> +    }
> >> +
> >> +    return (valid) ? MODE_OK : MODE_BAD;
> >> +}
> >> +
> >> +static int
> >> +starfive_hdmi_probe_single_connector_modes(struct drm_connector *connector,
> >> +                       u32 maxX, u32 maxY)
> >> +{
> >> +    return drm_helper_probe_single_connector_modes(connector, 3840, 2160);
> >> +}
> >> +
> >> +static const struct drm_connector_funcs starfive_hdmi_connector_funcs = {
> >> +    .fill_modes = starfive_hdmi_probe_single_connector_modes,
> >> +    .detect = starfive_hdmi_connector_detect,
> >> +    .reset = drm_atomic_helper_connector_reset,
> >> +    .atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
> >> +    .atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
> >> +};
> >> +
> >> +static struct drm_connector_helper_funcs starfive_hdmi_connector_helper_funcs = {
> >> +    .get_modes = starfive_hdmi_connector_get_modes,
> >> +    .mode_valid = starfive_hdmi_connector_mode_valid,
> >> +};
> >> +
> >> +static int starfive_hdmi_register(struct drm_device *drm, struct starfive_hdmi *hdmi)
> >> +{
> >> +    struct drm_encoder *encoder = &hdmi->encoder;
> >> +    struct device *dev = hdmi->dev;
> >> +
> >> +    encoder->possible_crtcs = drm_of_find_possible_crtcs(drm, dev->of_node);
> >> +
> >> +    /*
> >> +     * If we failed to find the CRTC(s) which this encoder is
> >> +     * supposed to be connected to, it's because the CRTC has
> >> +     * not been registered yet.  Defer probing, and hope that
> >> +     * the required CRTC is added later.
> >> +     */
> >> +    if (encoder->possible_crtcs == 0)
> >> +        return -EPROBE_DEFER;
> >> +
> >> +    drm_encoder_helper_add(encoder, &starfive_hdmi_encoder_helper_funcs);
> >> +
> >> +    hdmi->connector.polled = DRM_CONNECTOR_POLL_HPD;
> >> +
> >> +    drm_connector_helper_add(&hdmi->connector,
> >> +                 &starfive_hdmi_connector_helper_funcs);
> >> +    drmm_connector_init(drm, &hdmi->connector,
> >> +                &starfive_hdmi_connector_funcs,
> >> +                DRM_MODE_CONNECTOR_HDMIA,
> >
> > On an embedded device one can not be so sure. There can be MHL or HDMI Alternative Mode. Usually we use drm_bridge here and drm_bridge_connector.
> >
> >> +                hdmi->ddc);
> >> +
> >> +    drm_connector_attach_encoder(&hdmi->connector, encoder);
> >> +
> >> +    return 0;
> >> +}
> >> +
> >> +static irqreturn_t starfive_hdmi_i2c_irq(struct starfive_hdmi *hdmi)
> >> +{
> >> +    struct starfive_hdmi_i2c *i2c = hdmi->i2c;
> >> +    u8 stat;
> >> +
> >> +    stat = hdmi_readb(hdmi, HDMI_INTERRUPT_STATUS1);
> >> +    if (!(stat & m_INT_EDID_READY))
> >> +        return IRQ_NONE;
> >> +
> >> +    /* Clear HDMI EDID interrupt flag */
> >> +    hdmi_writeb(hdmi, HDMI_INTERRUPT_STATUS1, m_INT_EDID_READY);
> >> +
> >> +    complete(&i2c->cmp);
> >> +
> >> +    return IRQ_HANDLED;
> >> +}
> >> +
> >> +static irqreturn_t starfive_hdmi_hardirq(int irq, void *dev_id)
> >> +{
> >> +    struct starfive_hdmi *hdmi = dev_id;
> >> +    irqreturn_t ret = IRQ_NONE;
> >> +    u8 interrupt;
> >> +
> >> +    if (hdmi->i2c)
> >> +        ret = starfive_hdmi_i2c_irq(hdmi);
> >> +
> >> +    interrupt = hdmi_readb(hdmi, HDMI_STATUS);
> >> +    if (interrupt & m_INT_HOTPLUG) {
> >> +        hdmi_modb(hdmi, HDMI_STATUS, m_INT_HOTPLUG, m_INT_HOTPLUG);
> >> +        ret = IRQ_WAKE_THREAD;
> >> +    }
> >> +
> >> +    return ret;
> >> +}
> >> +
> >> +static irqreturn_t starfive_hdmi_irq(int irq, void *dev_id)
> >> +{
> >> +    struct starfive_hdmi *hdmi = dev_id;
> >> +
> >> +    drm_connector_helper_hpd_irq_event(&hdmi->connector);
> >> +
> >> +    return IRQ_HANDLED;
> >> +}
> >> +
> >> +static int starfive_hdmi_i2c_read(struct starfive_hdmi *hdmi, struct i2c_msg *msgs)
> >> +{
> >> +    int length = msgs->len;
> >> +    u8 *buf = msgs->buf;
> >> +    int ret;
> >> +
> >> +    ret = wait_for_completion_timeout(&hdmi->i2c->cmp, HZ / 10);
> >
> > read_poll_timeout
> Hi Dmitry:
> I think using wait_for_completion_timeout here is a bit clearer than read_poll_timeout logic
> I2c_read has hardware interrupt dependency. so need wait the interrupt completion.
> also it comes with timeout detection.

Hi,

Yes, maybe I was thinking about a different piece of code here.
wait_for_completion looks good here, indeed.

But this actually brings up another question. You reinit_comletion in
starfive_hdmi_i2c_write() and then wait_for_completion in
starfive_hdmi_i2c_read(). How does that work?



>
> >
> >> +    if (!ret)
> >> +        return -EAGAIN;
> >> +
> >> +    while (length--)
> >> +        *buf++ = hdmi_readb(hdmi, HDMI_EDID_FIFO_ADDR);
> >> +
> >> +    return 0;
> >> +}
> >> +
> >> +static int starfive_hdmi_i2c_write(struct starfive_hdmi *hdmi, struct i2c_msg *msgs)
> >> +{
> >> +    /*
> >> +     * The DDC module only support read EDID message, so
> >> +     * we assume that each word write to this i2c adapter
> >> +     * should be the offset of EDID word address.
> >> +     */
> >> +    if (msgs->len != 1 ||
> >> +        (msgs->addr != DDC_ADDR && msgs->addr != DDC_SEGMENT_ADDR))
> >> +        return -EINVAL;
> >> +
> >> +    reinit_completion(&hdmi->i2c->cmp);
> >> +
> >> +    if (msgs->addr == DDC_SEGMENT_ADDR)
> >> +        hdmi->i2c->segment_addr = msgs->buf[0];
> >> +    if (msgs->addr == DDC_ADDR)
> >> +        hdmi->i2c->ddc_addr = msgs->buf[0];
> >> +
> >> +    /* Set edid fifo first addr */
> >> +    hdmi_writeb(hdmi, HDMI_EDID_FIFO_OFFSET, 0x00);
> >> +
> >> +    /* Set edid word address 0x00/0x80 */
> >> +    hdmi_writeb(hdmi, HDMI_EDID_WORD_ADDR, hdmi->i2c->ddc_addr);
> >> +
> >> +    /* Set edid segment pointer */
> >> +    hdmi_writeb(hdmi, HDMI_EDID_SEGMENT_POINTER, hdmi->i2c->segment_addr);
> >> +
> >> +    return 0;
> >> +}
> >> +
> >> +static int starfive_hdmi_i2c_xfer(struct i2c_adapter *adap,
> >> +                  struct i2c_msg *msgs, int num)
> >> +{
> >> +    struct starfive_hdmi *hdmi = i2c_get_adapdata(adap);
> >> +    struct starfive_hdmi_i2c *i2c = hdmi->i2c;
> >> +    int i, ret = 0;
> >> +
> >> +    mutex_lock(&i2c->lock);
> >> +
> >> +    /* Clear the EDID interrupt flag and unmute the interrupt */
> >> +    hdmi_writeb(hdmi, HDMI_INTERRUPT_MASK1, m_INT_EDID_READY);
> >> +    hdmi_writeb(hdmi, HDMI_INTERRUPT_STATUS1, m_INT_EDID_READY);
> >> +
> >> +    for (i = 0; i < num; i++) {
> >> +        DRM_DEV_DEBUG(hdmi->dev,
> >> +                  "xfer: num: %d/%d, len: %d, flags: %#x\n",
> >> +                  i + 1, num, msgs[i].len, msgs[i].flags);
> >> +
> >> +        if (msgs[i].flags & I2C_M_RD)
> >> +            ret = starfive_hdmi_i2c_read(hdmi, &msgs[i]);
> >> +        else
> >> +            ret = starfive_hdmi_i2c_write(hdmi, &msgs[i]);
> >> +
> >> +        if (ret < 0)
> >> +            break;
> >> +    }
> >> +
> >> +    if (!ret)
> >> +        ret = num;
> >> +
> >> +    /* Mute HDMI EDID interrupt */
> >> +    hdmi_writeb(hdmi, HDMI_INTERRUPT_MASK1, 0);
> >> +
> >> +    mutex_unlock(&i2c->lock);
> >> +
> >> +    return ret;
> >> +}
> >> +
> >> +static u32 starfive_hdmi_i2c_func(struct i2c_adapter *adapter)
> >> +{
> >> +    return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL;
> >> +}
> >> +
> >> +static const struct i2c_algorithm starfive_hdmi_algorithm = {
> >> +    .master_xfer    = starfive_hdmi_i2c_xfer,
> >> +    .functionality    = starfive_hdmi_i2c_func,
> >> +};
> >> +
> >> +static struct i2c_adapter *starfive_hdmi_i2c_adapter(struct starfive_hdmi *hdmi)
> >> +{
> >> +    struct i2c_adapter *adap;
> >> +    struct starfive_hdmi_i2c *i2c;
> >> +    int ret;
> >> +
> >> +    i2c = drmm_kzalloc(hdmi->drm_dev, sizeof(*i2c), GFP_KERNEL);
> >> +    if (!i2c)
> >> +        return ERR_PTR(-ENOMEM);
> >> +
> >> +    mutex_init(&i2c->lock);
> >> +    init_completion(&i2c->cmp);
> >> +
> >> +    adap = &i2c->adap;
> >> +    adap->class = I2C_CLASS_DDC;
> >> +    adap->owner = THIS_MODULE;
> >> +    adap->dev.parent = hdmi->dev;
> >> +    adap->algo = &starfive_hdmi_algorithm;
> >> +    strscpy(adap->name, "Starfive HDMI", sizeof(adap->name));
> >> +    i2c_set_adapdata(adap, hdmi);
> >> +
> >> +    ret = devm_i2c_add_adapter(hdmi->dev, adap);
> >> +    if (ret) {
> >> +        drm_warn(hdmi->drm_dev, "cannot add %s I2C adapter\n", adap->name);
> >> +        return ERR_PTR(ret);
> >> +    }
> >> +
> >> +    hdmi->i2c = i2c;
> >> +
> >> +    drm_info(hdmi->drm_dev, "registered %s I2C bus driver success\n", adap->name);
> >> +
> >> +    return adap;
> >> +}
> >> +
> >> +static int starfive_hdmi_get_clk_rst(struct device *dev, struct starfive_hdmi *hdmi)
> >> +{
> >> +    hdmi->sys_clk = devm_clk_get(dev, "sysclk");
> >> +    if (IS_ERR(hdmi->sys_clk)) {
> >> +        dev_err(dev, "Unable to get HDMI sysclk clk\n");
> >> +        return PTR_ERR(hdmi->sys_clk);
> >> +    }
> >> +    hdmi->mclk = devm_clk_get(dev, "mclk");
> >> +    if (IS_ERR(hdmi->mclk)) {
> >> +        dev_err(dev, "Unable to get HDMI mclk clk\n");
> >> +        return PTR_ERR(hdmi->mclk);
> >> +    }
> >> +    hdmi->bclk = devm_clk_get(dev, "bclk");
> >> +    if (IS_ERR(hdmi->bclk)) {
> >> +        dev_err(dev, "Unable to get HDMI bclk clk\n");
> >> +        return PTR_ERR(hdmi->bclk);
> >> +    }
> >> +    hdmi->tx_rst = devm_reset_control_get_by_index(dev, 0);
> >> +    if (IS_ERR(hdmi->tx_rst)) {
> >> +        dev_err(dev, "failed to get tx_rst reset\n");
> >> +        return PTR_ERR(hdmi->tx_rst);
> >> +    }
> >> +
> >> +    return 0;
> >> +}
> >> +
> >> +static int starfive_hdmi_bind(struct device *dev, struct device *master,
> >> +                  void *data)
> >> +{
> >> +    struct platform_device *pdev = to_platform_device(dev);
> >> +    struct drm_device *drm = dev_get_drvdata(master);
> >> +    struct starfive_hdmi *hdmi;
> >> +    struct resource *iores;
> >> +    int irq;
> >> +    int ret;
> >> +
> >> +    hdmi = drmm_kzalloc(drm, sizeof(*hdmi), GFP_KERNEL);
> >> +    if (!hdmi)
> >> +        return -ENOMEM;
> >> +
> >> +    hdmi = drmm_simple_encoder_alloc(drm, struct starfive_hdmi,
> >> +                     encoder, DRM_MODE_ENCODER_TMDS);
> >> +
> >> +    hdmi->dev = dev;
> >> +    hdmi->drm_dev = drm;
> >> +    dev_set_drvdata(dev, hdmi);
> >> +
> >> +    iores = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> >> +    hdmi->regs = devm_ioremap_resource(dev, iores);
> >
> > This should go to probe
> >
> >> +    if (IS_ERR(hdmi->regs))
> >> +        return PTR_ERR(hdmi->regs);
> >> +
> >> +    ret = starfive_hdmi_get_clk_rst(dev, hdmi);
> >> +    if (ret < 0)
> >> +        return ret;
> >
> > And this
> >
> >> +
> >> +    ret = devm_pm_runtime_enable(dev);
> >> +    if (ret)
> >> +        return ret;
> >> +
> >> +    ret = pm_runtime_resume_and_get(dev);
> >> +    if (ret)
> >> +        return ret;
> >> +
> >> +    irq = platform_get_irq(pdev, 0);
> >
> > And this
> >
> >> +    if (irq < 0) {
> >> +        ret = irq;
> >> +        goto err_put_runtime_pm;
> >> +    }
> >> +
> >> +    hdmi->ddc = starfive_hdmi_i2c_adapter(hdmi);
> >> +    if (IS_ERR(hdmi->ddc)) {
> >> +        ret = PTR_ERR(hdmi->ddc);
> >> +        hdmi->ddc = NULL;
> >> +        goto err_put_runtime_pm;
> >> +    }
> >> +
> >> +    starfive_hdmi_i2c_init(hdmi);
> >> +
> >> +    ret = starfive_hdmi_register(drm, hdmi);
> >> +    if (ret)
> >> +        goto err_put_adapter;
> >> +
> >> +    /* Unmute hotplug interrupt */
> >> +    hdmi_modb(hdmi, HDMI_STATUS, m_MASK_INT_HOTPLUG, v_MASK_INT_HOTPLUG(1));
> >> +
> >> +    ret = devm_request_threaded_irq(dev, irq, starfive_hdmi_hardirq,
> >> +                    starfive_hdmi_irq, IRQF_SHARED,
> >> +                    dev_name(dev), hdmi);
> >> +    if (ret < 0)
> >> +        goto err_put_adapter;
> >> +
> >> +    pm_runtime_put_sync(dev);
> >> +
> >> +    return 0;
> >> +
> >> +err_put_adapter:
> >> +    i2c_put_adapter(hdmi->ddc);
> >> +err_put_runtime_pm:
> >> +    pm_runtime_put_sync(dev);
> >> +
> >> +    return ret;
> >> +}
> >> +
> >> +static const struct component_ops starfive_hdmi_ops = {
> >> +    .bind    = starfive_hdmi_bind,
> >> +};
> >> +
> >> +static int starfive_hdmi_probe(struct platform_device *pdev)
> >> +{
> >> +    return component_add(&pdev->dev, &starfive_hdmi_ops);
> >> +}
> >> +
> >> +static int starfive_hdmi_remove(struct platform_device *pdev)
> >> +{
> >> +    component_del(&pdev->dev, &starfive_hdmi_ops);
> >> +
> >> +    return 0;
> >> +}
> >> +
> >> +static const struct dev_pm_ops hdmi_pm_ops = {
> >> +    SET_RUNTIME_PM_OPS(hdmi_runtime_suspend, hdmi_runtime_resume, NULL)
> >> +    SET_LATE_SYSTEM_SLEEP_PM_OPS(hdmi_system_pm_suspend, hdmi_system_pm_resume)
> >> +};
> >> +
> >> +static const struct of_device_id starfive_hdmi_dt_ids[] = {
> >> +    { .compatible = "starfive,jh7110-inno-hdmi",},
> >> +    {},
> >> +};
> >> +MODULE_DEVICE_TABLE(of, starfive_hdmi_dt_ids);
> >> +
> >> +struct platform_driver starfive_hdmi_driver = {
> >> +    .probe  = starfive_hdmi_probe,
> >> +    .remove = starfive_hdmi_remove,
> >> +    .driver = {
> >> +        .name = "starfive-hdmi",
> >> +        .of_match_table = starfive_hdmi_dt_ids,
> >> +        .pm = &hdmi_pm_ops,
> >> +    },
> >> +};
> >> +
> >> +MODULE_AUTHOR("StarFive Corporation");
> >> +MODULE_DESCRIPTION("Starfive HDMI Driver");
> >> diff --git a/drivers/gpu/drm/verisilicon/starfive_hdmi.h b/drivers/gpu/drm/verisilicon/starfive_hdmi.h
> >> new file mode 100644
> >> index 000000000..1b9a11bca
> >> --- /dev/null
> >> +++ b/drivers/gpu/drm/verisilicon/starfive_hdmi.h
> >> @@ -0,0 +1,295 @@
> >> +/* SPDX-License-Identifier: GPL-2.0-only */
> >> +/*
> >> + * Copyright (C) 2023 StarFive Technology Co., Ltd.
> >> + */
> >> +
> >> +#ifndef __STARFIVE_HDMI_H__
> >> +#define __STARFIVE_HDMI_H__
> >> +
> >> +#include <drm/bridge/dw_hdmi.h>
> >> +#include <drm/drm_atomic_helper.h>
> >> +#include <drm/drm_edid.h>
> >> +#include <drm/drm_of.h>
> >> +#include <drm/drm_probe_helper.h>
> >> +#include <drm/drm_simple_kms_helper.h>
> >> +#include <linux/bitfield.h>
> >> +#include <linux/bits.h>
> >> +
> >> +#define DDC_SEGMENT_ADDR        0x30
> >> +
> >> +#define HDMI_SCL_RATE            (100 * 1000)
> >> +#define DDC_BUS_FREQ_L            0x4b
> >> +#define DDC_BUS_FREQ_H            0x4c
> >> +
> >> +#define HDMI_SYS_CTRL            0x00
> >> +#define m_RST_ANALOG            BIT(6)
> >> +#define v_RST_ANALOG            0
> >> +#define v_NOT_RST_ANALOG        BIT(6)
> >> +#define m_RST_DIGITAL            BIT(5)
> >> +#define v_RST_DIGITAL            0
> >> +#define v_NOT_RST_DIGITAL        BIT(5)
> >> +#define m_REG_CLK_INV            BIT(4)
> >> +#define v_REG_CLK_NOT_INV        0
> >> +#define v_REG_CLK_INV            BIT(4)
> >> +#define m_VCLK_INV            BIT(3)
> >> +#define v_VCLK_NOT_INV            0
> >> +#define v_VCLK_INV            BIT(3)
> >> +#define m_REG_CLK_SOURCE        BIT(2)
> >> +#define v_REG_CLK_SOURCE_TMDS        0
> >> +#define v_REG_CLK_SOURCE_SYS        BIT(2)
> >> +#define m_POWER                BIT(1)
> >> +#define v_PWR_ON            0
> >> +#define v_PWR_OFF            BIT(1)
> >> +#define m_INT_POL            BIT(0)
> >> +#define v_INT_POL_HIGH            1
> >> +#define v_INT_POL_LOW            0
> >> +
> >> +#define HDMI_AV_MUTE            0x05
> >> +#define m_AVMUTE_CLEAR            BIT(7)
> >> +#define m_AVMUTE_ENABLE            BIT(6)
> >> +#define m_AUDIO_MUTE            BIT(1)
> >> +#define m_VIDEO_BLACK            BIT(0)
> >> +#define v_AVMUTE_CLEAR(n)        ((n) << 7)
> >> +#define v_AVMUTE_ENABLE(n)        ((n) << 6)
> >> +#define v_AUDIO_MUTE(n)            ((n) << 1)
> >> +#define v_VIDEO_MUTE(n)            ((n) << 0)
> >> +
> >> +#define HDMI_VIDEO_TIMING_CTL        0x08
> >> +#define v_VSYNC_POLARITY(n)        ((n) << 3)
> >> +#define v_HSYNC_POLARITY(n)        ((n) << 2)
> >> +#define v_INETLACE(n)            ((n) << 1)
> >> +#define v_EXTERANL_VIDEO(n)        ((n) << 0)
> >> +
> >> +#define HDMI_VIDEO_EXT_HTOTAL_L        0x09
> >> +#define HDMI_VIDEO_EXT_HTOTAL_H        0x0a
> >> +#define HDMI_VIDEO_EXT_HBLANK_L        0x0b
> >> +#define HDMI_VIDEO_EXT_HBLANK_H        0x0c
> >> +#define HDMI_VIDEO_EXT_HDELAY_L        0x0d
> >> +#define HDMI_VIDEO_EXT_HDELAY_H        0x0e
> >> +#define HDMI_VIDEO_EXT_HDURATION_L    0x0f
> >> +#define HDMI_VIDEO_EXT_HDURATION_H    0x10
> >> +#define HDMI_VIDEO_EXT_VTOTAL_L        0x11
> >> +#define HDMI_VIDEO_EXT_VTOTAL_H        0x12
> >> +#define HDMI_VIDEO_EXT_VBLANK        0x13
> >> +#define HDMI_VIDEO_EXT_VDELAY        0x14
> >> +#define HDMI_VIDEO_EXT_VDURATION    0x15
> >> +
> >> +#define HDMI_EDID_SEGMENT_POINTER    0x4d
> >> +#define HDMI_EDID_WORD_ADDR        0x4e
> >> +#define HDMI_EDID_FIFO_OFFSET        0x4f
> >> +#define HDMI_EDID_FIFO_ADDR        0x50
> >> +
> >> +#define HDMI_INTERRUPT_MASK1        0xc0
> >> +#define HDMI_INTERRUPT_STATUS1        0xc1
> >> +#define    m_INT_ACTIVE_VSYNC        BIT(5)
> >> +#define m_INT_EDID_READY        BIT(2)
> >> +
> >> +#define HDMI_STATUS            0xc8
> >> +#define m_HOTPLUG            BIT(7)
> >> +#define m_MASK_INT_HOTPLUG        BIT(5)
> >> +#define m_INT_HOTPLUG            BIT(1)
> >> +#define v_MASK_INT_HOTPLUG(n)        (((n) & 0x1) << 5)
> >
> > It is untypical to have field defines which start with lowercase letter.
> >
> >> +
> >> +#define HDMI_SYNC                    0xce
> >> +
> >> +#define UPDATE(x, h, l)                    FIELD_PREP(GENMASK(h, l), x)
> >> +
> >> +/* REG: 0x1a0 */
> >> +#define STARFIVE_PRE_PLL_CONTROL            0x1a0
> >> +#define STARFIVE_PCLK_VCO_DIV_5_MASK            BIT(1)
> >> +#define STARFIVE_PCLK_VCO_DIV_5(x)            UPDATE(x, 1, 1)
> >> +#define STARFIVE_PRE_PLL_POWER_DOWN            BIT(0)
> >> +
> >> +/* REG: 0x1a1 */
> >> +#define STARFIVE_PRE_PLL_DIV_1                0x1a1
> >> +#define STARFIVE_PRE_PLL_PRE_DIV_MASK            GENMASK(5, 0)
> >> +#define STARFIVE_PRE_PLL_PRE_DIV(x)            UPDATE(x, 5, 0)
> >> +
> >> +/* REG: 0x1a2 */
> >> +#define STARFIVE_PRE_PLL_DIV_2                0x1a2
> >> +#define STARFIVE_SPREAD_SPECTRUM_MOD_DOWN        BIT(7)
> >> +#define STARFIVE_SPREAD_SPECTRUM_MOD_DISABLE        BIT(6)
> >> +#define STARFIVE_PRE_PLL_FRAC_DIV_DISABLE        UPDATE(3, 5, 4)
> >> +#define STARFIVE_PRE_PLL_FB_DIV_11_8_MASK        GENMASK(3, 0)
> >> +#define STARFIVE_PRE_PLL_FB_DIV_11_8(x)            UPDATE((x) >> 8, 3, 0)
> >> +
> >> +/* REG: 0x1a3 */
> >> +#define STARFIVE_PRE_PLL_DIV_3                0x1a3
> >> +#define STARFIVE_PRE_PLL_FB_DIV_7_0(x)            UPDATE(x, 7, 0)
> >> +
> >> +/* REG: 0x1a4*/
> >> +#define STARFIVE_PRE_PLL_DIV_4                0x1a4
> >> +#define STARFIVE_PRE_PLL_TMDSCLK_DIV_C_MASK        GENMASK(1, 0)
> >> +#define STARFIVE_PRE_PLL_TMDSCLK_DIV_C(x)        UPDATE(x, 1, 0)
> >> +#define STARFIVE_PRE_PLL_TMDSCLK_DIV_B_MASK        GENMASK(3, 2)
> >> +#define STARFIVE_PRE_PLL_TMDSCLK_DIV_B(x)        UPDATE(x, 3, 2)
> >> +#define STARFIVE_PRE_PLL_TMDSCLK_DIV_A_MASK        GENMASK(5, 4)
> >> +#define STARFIVE_PRE_PLL_TMDSCLK_DIV_A(x)        UPDATE(x, 5, 4)
> >> +
> >> +/* REG: 0x1a5 */
> >> +#define STARFIVE_PRE_PLL_DIV_5                0x1a5
> >> +#define STARFIVE_PRE_PLL_PCLK_DIV_B_SHIFT        5
> >> +#define STARFIVE_PRE_PLL_PCLK_DIV_B_MASK        GENMASK(6, 5)
> >> +#define STARFIVE_PRE_PLL_PCLK_DIV_B(x)            UPDATE(x, 6, 5)
> >> +#define STARFIVE_PRE_PLL_PCLK_DIV_A_MASK        GENMASK(4, 0)
> >> +#define STARFIVE_PRE_PLL_PCLK_DIV_A(x)            UPDATE(x, 4, 0)
> >> +
> >> +/* REG: 0x1a6 */
> >> +#define STARFIVE_PRE_PLL_DIV_6                0x1a6
> >> +#define STARFIVE_PRE_PLL_PCLK_DIV_C_SHIFT        5
> >> +#define STARFIVE_PRE_PLL_PCLK_DIV_C_MASK        GENMASK(6, 5)
> >> +#define STARFIVE_PRE_PLL_PCLK_DIV_C(x)            UPDATE(x, 6, 5)
> >> +#define STARFIVE_PRE_PLL_PCLK_DIV_D_MASK        GENMASK(4, 0)
> >> +#define STARFIVE_PRE_PLL_PCLK_DIV_D(x)            UPDATE(x, 4, 0)
> >> +
> >> +/* REG: 0x1a9 */
> >> +#define STARFIVE_PRE_PLL_LOCK_STATUS            0x1a9
> >> +
> >> +/* REG: 0x1aa */
> >> +#define STARFIVE_POST_PLL_DIV_1                0x1aa
> >> +#define STARFIVE_POST_PLL_POST_DIV_ENABLE        GENMASK(3, 2)
> >> +#define STARFIVE_POST_PLL_REFCLK_SEL_TMDS        BIT(1)
> >> +#define STARFIVE_POST_PLL_POWER_DOWN            BIT(0)
> >> +#define STARFIVE_POST_PLL_FB_DIV_8(x)            UPDATE(((x) >> 8) << 4, 4, 4)
> >> +
> >> +/* REG:0x1ab */
> >> +#define STARFIVE_POST_PLL_DIV_2                0x1ab
> >> +#define STARFIVE_POST_PLL_Pre_DIV_MASK            GENMASK(5, 0)
> >> +#define STARFIVE_POST_PLL_PRE_DIV(x)            UPDATE(x, 5, 0)
> >> +
> >> +/* REG: 0x1ac */
> >> +#define STARFIVE_POST_PLL_DIV_3                0x1ac
> >> +#define STARFIVE_POST_PLL_FB_DIV_7_0(x)            UPDATE(x, 7, 0)
> >> +
> >> +/* REG: 0x1ad */
> >> +#define STARFIVE_POST_PLL_DIV_4                0x1ad
> >> +#define STARFIVE_POST_PLL_POST_DIV_MASK            GENMASK(2, 0)
> >> +#define STARFIVE_POST_PLL_POST_DIV_2            0x0
> >> +#define STARFIVE_POST_PLL_POST_DIV_4            0x1
> >> +#define STARFIVE_POST_PLL_POST_DIV_8            0x3
> >> +
> >> +/* REG: 0x1af */
> >> +#define STARFIVE_POST_PLL_LOCK_STATUS            0x1af
> >> +
> >> +/* REG: 0x1b0 */
> >> +#define STARFIVE_BIAS_CONTROL                0x1b0
> >> +#define STARFIVE_BIAS_ENABLE                BIT(2)
> >> +
> >> +/* REG: 0x1b2 */
> >> +#define STARFIVE_TMDS_CONTROL                0x1b2
> >> +#define STARFIVE_TMDS_CLK_DRIVER_EN            BIT(3)
> >> +#define STARFIVE_TMDS_D2_DRIVER_EN            BIT(2)
> >> +#define STARFIVE_TMDS_D1_DRIVER_EN            BIT(1)
> >> +#define STARFIVE_TMDS_D0_DRIVER_EN            BIT(0)
> >> +#define STARFIVE_TMDS_DRIVER_ENABLE            (STARFIVE_TMDS_CLK_DRIVER_EN | \
> >> +                             STARFIVE_TMDS_D2_DRIVER_EN | \
> >> +                             STARFIVE_TMDS_D1_DRIVER_EN | \
> >> +                             STARFIVE_TMDS_D0_DRIVER_EN)
> >> +
> >> +/* REG: 0x1b4 */
> >> +#define STARFIVE_LDO_CONTROL                0x1b4
> >> +#define STARFIVE_LDO_D2_EN                BIT(2)
> >> +#define STARFIVE_LDO_D1_EN                BIT(1)
> >> +#define STARFIVE_LDO_D0_EN                BIT(0)
> >> +#define STARFIVE_LDO_ENABLE                (STARFIVE_LDO_D2_EN | \
> >> +                             STARFIVE_LDO_D1_EN | \
> >> +                             STARFIVE_LDO_D0_EN)
> >> +
> >> +/* REG: 0x1be */
> >> +#define STARFIVE_SERIALIER_CONTROL            0x1be
> >> +#define STARFIVE_SERIALIER_D2_EN            BIT(6)
> >> +#define STARFIVE_SERIALIER_D1_EN            BIT(5)
> >> +#define STARFIVE_SERIALIER_D0_EN            BIT(4)
> >> +#define STARFIVE_SERIALIER_EN                BIT(0)
> >> +
> >> +#define STARFIVE_SERIALIER_ENABLE            (STARFIVE_SERIALIER_D2_EN | \
> >> +                             STARFIVE_SERIALIER_D1_EN | \
> >> +                             STARFIVE_SERIALIER_D0_EN | \
> >> +                             STARFIVE_SERIALIER_EN)
> >> +
> >> +/* REG: 0x1cc */
> >> +#define STARFIVE_RX_CONTROL                0x1cc
> >> +#define STARFIVE_RX_EN                    BIT(3)
> >> +#define STARFIVE_RX_CHANNEL_2_EN            BIT(2)
> >> +#define STARFIVE_RX_CHANNEL_1_EN            BIT(1)
> >> +#define STARFIVE_RX_CHANNEL_0_EN            BIT(0)
> >> +#define STARFIVE_RX_ENABLE                (STARFIVE_RX_EN | \
> >> +                             STARFIVE_RX_CHANNEL_2_EN | \
> >> +                             STARFIVE_RX_CHANNEL_1_EN | \
> >> +                             STARFIVE_RX_CHANNEL_0_EN)
> >> +
> >> +/* REG: 0x1d1 */
> >> +#define STARFIVE_PRE_PLL_FRAC_DIV_H            0x1d1
> >> +#define STARFIVE_PRE_PLL_FRAC_DIV_23_16(x)        UPDATE((x) >> 16, 7, 0)
> >> +/* REG: 0x1d2 */
> >> +#define STARFIVE_PRE_PLL_FRAC_DIV_M            0x1d2
> >> +#define STARFIVE_PRE_PLL_FRAC_DIV_15_8(x)        UPDATE((x) >> 8, 7, 0)
> >> +/* REG: 0x1d3 */
> >> +#define STARFIVE_PRE_PLL_FRAC_DIV_L            0x1d3
> >> +#define STARFIVE_PRE_PLL_FRAC_DIV_7_0(x)        UPDATE(x, 7, 0)
> >> +
> >> +struct pre_pll_config {
> >> +    unsigned long pixclock;
> >> +    unsigned long tmdsclock;
> >> +    u8 prediv;
> >> +    u16 fbdiv;
> >> +    u8 tmds_div_a;
> >> +    u8 tmds_div_b;
> >> +    u8 tmds_div_c;
> >> +    u8 pclk_div_a;
> >> +    u8 pclk_div_b;
> >> +    u8 pclk_div_c;
> >> +    u8 pclk_div_d;
> >> +    u8 vco_div_5_en;
> >> +    u32 fracdiv;
> >> +};
> >> +
> >> +struct post_pll_config {
> >> +    unsigned long tmdsclock;
> >> +    u8 prediv;
> >> +    u16 fbdiv;
> >> +    u8 postdiv;
> >> +    u8 post_div_en;
> >> +    u8 version;
> >> +};
> >> +
> >> +struct phy_config {
> >> +    unsigned long    tmdsclock;
> >> +    u8        regs[14];
> >> +};
> >> +
> >> +struct hdmi_data_info {
> >> +    int vic;
> >> +    bool sink_is_hdmi;
> >> +    bool sink_has_audio;
> >> +    unsigned int enc_in_format;
> >> +    unsigned int enc_out_format;
> >> +    unsigned int colorimetry;
> >> +};
> >> +
> >> +struct starfive_hdmi {
> >> +    struct device *dev;
> >> +    struct drm_device *drm_dev;
> >> +    struct drm_encoder    encoder;
> >> +    struct drm_connector    connector;
> >> +
> >> +    struct starfive_hdmi_i2c *i2c;
> >> +
> >> +    int irq;
> >> +    struct clk *sys_clk;
> >> +    struct clk *mclk;
> >> +    struct clk *bclk;
> >> +    struct reset_control *tx_rst;
> >> +    void __iomem *regs;
> >> +
> >> +    struct i2c_adapter *ddc;
> >> +
> >> +    unsigned long tmds_rate;
> >> +
> >> +    struct hdmi_data_info    hdmi_data;
> >> +    struct drm_display_mode previous_mode;
> >> +    const struct pre_pll_config    *pre_cfg;
> >> +    const struct post_pll_config    *post_cfg;
> >> +};
> >> +
> >> +#endif /* __STARFIVE_HDMI_H__ */
> >> diff --git a/drivers/gpu/drm/verisilicon/vs_drv.c b/drivers/gpu/drm/verisilicon/vs_drv.c
> >> index 3cd533cfa..9669354bd 100644
> >> --- a/drivers/gpu/drm/verisilicon/vs_drv.c
> >> +++ b/drivers/gpu/drm/verisilicon/vs_drv.c
> >> @@ -126,6 +126,11 @@ static const struct component_master_ops vs_drm_ops = {
> >>   static struct platform_driver *drm_sub_drivers[] = {
> >>       &dc_platform_driver,
> >>   +    /* connector + encoder*/
> >> +#ifdef CONFIG_DRM_VERISILICON_STARFIVE_HDMI
> >> +    &starfive_hdmi_driver,
> >> +#endif
> >> +
> >>   };
> >>     static struct component_match *vs_drm_match_add(struct device *dev)
> >> diff --git a/drivers/gpu/drm/verisilicon/vs_drv.h b/drivers/gpu/drm/verisilicon/vs_drv.h
> >> index 369ad22d6..e90723419 100644
> >> --- a/drivers/gpu/drm/verisilicon/vs_drv.h
> >> +++ b/drivers/gpu/drm/verisilicon/vs_drv.h
> >> @@ -24,4 +24,8 @@ to_vs_drm_private(const struct drm_device *dev)
> >>       return container_of(dev, struct vs_drm_device, base);
> >>   }
> >>   +#ifdef CONFIG_DRM_VERISILICON_STARFIVE_HDMI
> >> +extern struct platform_driver starfive_hdmi_driver;
> >> +#endif
> >> +
> >>   #endif /* __VS_DRV_H__ */
> >



-- 
With best wishes
Dmitry


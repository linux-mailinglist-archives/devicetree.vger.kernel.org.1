Return-Path: <devicetree+bounces-198711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D13B0B0DFEA
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 17:06:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4D9E8174CC7
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 15:04:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D46812ECD14;
	Tue, 22 Jul 2025 15:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="L0wK/vgb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC9802EBBB5
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 15:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753196526; cv=none; b=PyZ/05CfxRTryMcntI/dd3PlksHqyMs63o+gpknByQXxrnAeaDa7QbckjLzRJ2PREoo/DAqJUg4Jkr1Rvu1zjpJCslSF6djrb42ShuPvr06Z0rqOJjmAhGnWjsAb30xP3BJA7oyXsTL7nf0in5QmPSCYl9qV/wFg24S1bkbkoIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753196526; c=relaxed/simple;
	bh=K1h1cu9a9c09pfcgEeaHJ/woa5NZCWJa9/sYUL/uLns=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Heh3HJuZbMuFXxCkmKzydnag4NA2aGxOzgBdSB1u0RlHlbhA02iZk1ZQlMnd8gB4XdHCHXDiimlzEzyelbVDfSaoCkt0I0h65s9yv4qX8m8R4jBkkKxK8/Oig/cwYmnh+SAR23jHRyEkmAIiv/IWFjXJwgbSGq5SH8Y1vW2cqOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=L0wK/vgb; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-af0dc229478so289240266b.1
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 08:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753196523; x=1753801323; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nEvjrAIXErsS9BfFw8MZCs9FAL8gPxuYujnNEdkoWd0=;
        b=L0wK/vgbDHNCRKF+JlKBWNuckGo/pX4MfuWm6auRUlBtJOe3x1q8aIkKOMzjQYcgqS
         eOrfZ17WnsPbl6lVGE60AcYC13g+cGWXd4lH5KUwTvhqSqDvr/DxKoFX0/5b/TC7j68H
         AoGGdSsWlszdSBLdJr10e5MZXNQaIKy7GbbM0CH3tZ5+GZMy7hJoSuz3QoyxyznhzEjY
         S97Pfb4/IihhxY8dH3Z96yUpTMFuB0jFVGqp0MmrC/qWoklPKtRhgVM8FT4M9ELYvpOU
         1KDyUwsGG61RFI81WZ+dxyNr9qm6l3DDU/X/AnS3/I22Hi/EAMd7EZ2oysZdkN23jDrW
         jxqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753196523; x=1753801323;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nEvjrAIXErsS9BfFw8MZCs9FAL8gPxuYujnNEdkoWd0=;
        b=OmTFLAcLRrim8vH/OpDHePZNkzWZLApDl2E+evsvND1LwpTIvfbP6iazNh6MRl95fJ
         Gce/h8fz2IHs3/fOAdougBRW7WJOuimGW64qN+m/268V/VO62mexRZNZaMDOQqkQMAdt
         5maL4gUSeMauAc/dfgiiW0u/Xsr23wpTkIGbJ2wRA0C6+LhsEvh6YCUHSB9PM7jkGnQw
         NKuBjGX8t9tFQxV+8h2h1gyZh4A1o5tSjMg5j8i0Q6hr9YSdhJUIb+y/e/rypUaJ3nbe
         x4XBfuewyfzJ9l72fzciyI9vt+cwHIGs+KDGwQGILlKeZHGndG6ToNCRvdTKbmV5goA+
         yX8A==
X-Forwarded-Encrypted: i=1; AJvYcCVz7enJEcGVYx7EAowydU91IlvpXtxWElIRL4n8cLBVT1IzqcoUTHSXHtneVXGXl8BMdFuem2rhDgIy@vger.kernel.org
X-Gm-Message-State: AOJu0Yx42OaYWIchiPcqCRvnZ8lDENJFAOcUD/tQ/uo6JOaC4WXiARJD
	VztP76DwJIsqkO1udNjIQohL0LIgGpldJoTaLCbDuua4AwJqkb/C9qrlW7bbB3Qunl6EKeHEveO
	tKkOgtyZtVf3rke6HHHGSr30FRjvQes6DcVLcg8bwjQ==
X-Gm-Gg: ASbGncvgHnZpFjFQsHGSV0jhRDvLalTfprpQtlKa1OeZ9vNqbxVluFzbpV5UNg4JTNe
	PDFA/2gV7OXDsh3H+uL2SNzvKXRUnmtFnZ+zEqjHqe5nyZXH5YJo6a9TZHWsgH5M2bXjbLIEzYd
	QcRQBXENHpnIzTm04Rw8mxCJPRMcWsV56e5Qs7cV3BeTW8zbEBDuQOGGH34hXteq7KVWmrMQc2k
	gI0Bv9B
X-Google-Smtp-Source: AGHT+IFg73PkXYgN1tNOwxu4msSHw3xq+UPj5j1pYGLTNqKF26OkhV0aHOHkNMbS27ajm5zCuBIru3by7LAgJZv0MNw=
X-Received: by 2002:a17:907:ccaa:b0:ae6:f670:24f2 with SMTP id
 a640c23a62f3a-ae9ce10d92cmr1834939866b.47.1753196521959; Tue, 22 Jul 2025
 08:02:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250714063109.591-1-jie.gan@oss.qualcomm.com> <20250714063109.591-10-jie.gan@oss.qualcomm.com>
In-Reply-To: <20250714063109.591-10-jie.gan@oss.qualcomm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 22 Jul 2025 16:01:48 +0100
X-Gm-Features: Ac12FXxRqitL3ALJ46-K80sEvvW_k-OcH6ReUch-Dg3IVnZ20mIlZwysjxyZnss
Message-ID: <CAJ9a7Vj_NfO7D+j11_7DbgWD-Cn9cQp4g=r9EqHMZiAU63NomQ@mail.gmail.com>
Subject: Re: [PATCH v3 RESEND 09/10] coresight: tmc: add read function for byte-cntr
To: Jie Gan <jie.gan@oss.qualcomm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, James Clark <james.clark@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Tingwei Zhang <quic_tingweiz@quicinc.com>, Yuanfang Zhang <quic_yuanfang@quicinc.com>, 
	Mao Jinlong <quic_jinlmao@quicinc.com>, Jie Gan <quic_jiegan@quicinc.com>, 
	coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi,

On Mon, 14 Jul 2025 at 07:32, Jie Gan <jie.gan@oss.qualcomm.com> wrote:
>
> The byte-cntr read function always reads trace data from the deactivated
> and filled buffer which is already synced. The read function will fail
> when the ETR cannot find a available buffer to receive trace data.
>
> The read function terminates when the path is disabled or interrupted by a
> signal.
>
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
>  .../hwtracing/coresight/coresight-tmc-core.c  | 31 ++++++-
>  .../hwtracing/coresight/coresight-tmc-etr.c   | 90 +++++++++++++++++++
>  drivers/hwtracing/coresight/coresight-tmc.h   |  3 +
>  3 files changed, 120 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/drivers/hwtracing/coresight/coresight-tmc-core.c
> index 354faeeddbb2..3ab25adc4e4d 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-core.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-core.c
> @@ -318,14 +318,18 @@ static int tmc_open(struct inode *inode, struct file *file)
>         return 0;
>  }
>
> -static ssize_t tmc_get_sysfs_trace(struct tmc_drvdata *drvdata, loff_t pos, size_t len,
> -                                  char **bufpp)
> +static ssize_t tmc_get_sysfs_trace(struct tmc_drvdata *drvdata,
> +                                  struct ctcu_byte_cntr *byte_cntr_data,
> +                                  loff_t pos, size_t len, char **bufpp)

Don't change "core" functionalilty to add in bytecntr parameters.

Use helper functions to have a pattern such as:

if (bytecntr_active())
    call_byte_cntr_fn()
else
    call_standard_fn()

>  {
>         switch (drvdata->config_type) {
>         case TMC_CONFIG_TYPE_ETB:
>         case TMC_CONFIG_TYPE_ETF:
>                 return tmc_etb_get_sysfs_trace(drvdata, pos, len, bufpp);
>         case TMC_CONFIG_TYPE_ETR:
> +               if (byte_cntr_data && byte_cntr_data->thresh_val)
> +                       return tmc_byte_cntr_get_data(drvdata, byte_cntr_data, len, bufpp);
> +
>                 return tmc_etr_get_sysfs_trace(drvdata, pos, len, bufpp);
>         }
>
> @@ -339,7 +343,21 @@ static ssize_t tmc_read(struct file *file, char __user *data, size_t len,
>         ssize_t actual;
>         struct tmc_drvdata *drvdata = container_of(file->private_data,
>                                                    struct tmc_drvdata, miscdev);
> -       actual = tmc_get_sysfs_trace(drvdata, *ppos, len, &bufp);
> +       struct coresight_device *helper = coresight_get_helper(drvdata->csdev,
> +                                               CORESIGHT_DEV_SUBTYPE_HELPER_CTCU);
> +       struct ctcu_byte_cntr *byte_cntr_data = NULL;
> +       struct ctcu_drvdata *ctcu_drvdata = NULL;
> +       int port;
> +
> +       if (helper) {
> +               port = coresight_get_port_helper(drvdata->csdev, helper);
> +               if (port >= 0) {
> +                       ctcu_drvdata = dev_get_drvdata(helper->dev.parent);
> +                       byte_cntr_data = &ctcu_drvdata->byte_cntr_data[port];
> +               }
> +       }
> +
> +       actual = tmc_get_sysfs_trace(drvdata, byte_cntr_data, *ppos, len, &bufp);
>         if (actual <= 0)
>                 return 0;
>
> @@ -349,7 +367,12 @@ static ssize_t tmc_read(struct file *file, char __user *data, size_t len,
>                 return -EFAULT;
>         }
>
> -       *ppos += actual;
> +       if (byte_cntr_data && byte_cntr_data->thresh_val) {
> +               byte_cntr_data->total_size += actual;
> +               drvdata->reading_node->pos += actual;
> +       } else
> +               *ppos += actual;
> +
>         dev_dbg(&drvdata->csdev->dev, "%zu bytes copied\n", actual);
>
>         return actual;
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> index 3e3e1b5e78ca..174411e76047 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> @@ -1163,6 +1163,10 @@ ssize_t tmc_etr_get_sysfs_trace(struct tmc_drvdata *drvdata,
>         ssize_t actual = len;
>         struct etr_buf *etr_buf = drvdata->sysfs_buf;
>
> +       /* Reading the buffer from the buf_node if it exists*/
> +       if (drvdata->reading_node)
> +               etr_buf = drvdata->reading_node->sysfs_buf;
> +
>         if (pos + actual > etr_buf->len)
>                 actual = etr_buf->len - pos;
>         if (actual <= 0)
> @@ -1339,6 +1343,92 @@ static bool tmc_byte_cntr_switch_buffer(struct tmc_drvdata *drvdata,
>         return found_free_buf;
>  }
>
> +/*
> + * tmc_byte_cntr_get_data() - reads data from the deactivated and filled buffer.
> + * The byte-cntr reading work reads data from the deactivated and filled buffer.
> + * The read operation waits for a buffer to become available, either filled or
> + * upon timeout, and then reads trace data from the synced buffer.
> + */

This entire function should be moved to one of the byte-cntr source files.

> +ssize_t tmc_byte_cntr_get_data(struct tmc_drvdata *drvdata,
> +                              struct ctcu_byte_cntr *byte_cntr_data,
> +                              size_t len, char **bufpp)
> +{
> +       size_t thresh_val = byte_cntr_data->thresh_val;
> +       atomic_t *irq_cnt = &byte_cntr_data->irq_cnt;
> +       struct etr_buf *sysfs_buf = drvdata->sysfs_buf;
> +       struct device *dev = &drvdata->csdev->dev;
> +       struct etr_buf_node *nd, *next;
> +       ssize_t size = sysfs_buf->size;
> +       ssize_t actual;
> +       loff_t pos;
> +       int ret;
> +
> +wait_buffer:
> +       if (!byte_cntr_data->reading_buf) {
> +               ret = wait_event_interruptible_timeout(byte_cntr_data->wq,
> +                               ((atomic_read(irq_cnt) + 1) * thresh_val >= size) ||
> +                               !byte_cntr_data->enable,
> +                               BYTE_CNTR_TIMEOUT);
> +               if (ret < 0)
> +                       return ret;
> +               /*
> +                * The current etr_buf is almost full or timeout is triggered,
> +                * so switch the buffer and mark the switched buffer as reading.
> +                */
> +               if (byte_cntr_data->enable) {
> +                       if (!tmc_byte_cntr_switch_buffer(drvdata, byte_cntr_data)) {
> +                               dev_err(dev, "Switch buffer failed for byte-cntr\n");
> +                               return -EINVAL;
> +                       }
> +
> +                       byte_cntr_data->reading_buf = true;
> +               } else {
> +                       if (!drvdata->reading_node) {
> +                               list_for_each_entry_safe(nd, next, &drvdata->etr_buf_list, node) {
> +                                       if (nd->sysfs_buf == sysfs_buf) {
> +                                               nd->pos = 0;
> +                                               drvdata->reading_node = nd;
> +                                               break;
> +                                       }
> +                               }
> +                       }
> +
> +                       pos = drvdata->reading_node->pos;
> +                       actual = tmc_etr_get_sysfs_trace(drvdata, pos, len, bufpp);
> +                       if (actual > 0)
> +                               return actual;
> +
> +                       drvdata->reading_node = NULL;
> +
> +                       /* Exit byte-cntr reading */
> +                       return -EINVAL;
> +               }
> +       }
> +
> +       /* Check the status of current etr_buf*/
> +       if ((atomic_read(irq_cnt) + 1) * thresh_val >= size)
> +               /*
> +                * Unlikely to find a free buffer to switch, so just disable
> +                * the ETR for a while.
> +                */
> +               if (!tmc_byte_cntr_switch_buffer(drvdata, byte_cntr_data))
> +                       dev_info(dev, "No available buffer to store data, disable ETR\n");
> +
> +       pos = drvdata->reading_node->pos;
> +       actual = tmc_etr_get_sysfs_trace(drvdata, pos, len, bufpp);
> +       if (actual == 0) {
> +               /* Reading work for marked buffer has finished, reset flags */
> +               drvdata->reading_node->reading = false;
> +               byte_cntr_data->reading_buf = false;
> +               drvdata->reading_node = NULL;
> +
> +               /* Nothing in the buffer, wait for next buffer to be filled */
> +               goto wait_buffer;
> +       }
> +
> +       return actual;
> +}
> +
>  static int tmc_enable_etr_sink_sysfs(struct coresight_device *csdev)
>  {
>         int ret = 0;
> diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
> index 1dbba0bc50a3..4136ec5ecaf7 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc.h
> +++ b/drivers/hwtracing/coresight/coresight-tmc.h
> @@ -364,6 +364,9 @@ int tmc_read_prepare_byte_cntr(struct tmc_drvdata *drvdata,
>                                struct ctcu_byte_cntr *byte_cntr_data);
>  int tmc_read_unprepare_byte_cntr(struct tmc_drvdata *drvdata,
>                                  struct ctcu_byte_cntr *byte_cntr_data);

Declare this in a byte_cntr header file, not here.

> +ssize_t tmc_byte_cntr_get_data(struct tmc_drvdata *drvdata,
> +                              struct ctcu_byte_cntr *byte_cntr_data,
> +                              size_t len, char **bufpp);
>
>  #define TMC_REG_PAIR(name, lo_off, hi_off)                             \
>  static inline u64                                                      \
> --
> 2.34.1
>


-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK


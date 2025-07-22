Return-Path: <devicetree+bounces-198680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 68944B0DDE3
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 16:20:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C6F518830CF
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 14:15:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78EE92ED156;
	Tue, 22 Jul 2025 14:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u7QRbGpK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C225E2ECEB9
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 14:09:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753193384; cv=none; b=Ng9qlYHP2ej11yhgcXLHHgEiPsJLDF69pk+xFNEDYz4jtc9Z3ljodF9v/3kEPJRvQETVk/dkg0cSdLve9fthDH9VJfKH5fjemwsAeDtk72knpMsdAseJO1rIb9psSkFQi1vfCYkbgShim7yWdFrK+p84epm3VuTHe4rHzS8zqcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753193384; c=relaxed/simple;
	bh=4XRWNH6L4gNhJL4fjOK/VGXKWPQRjU+iw51yGIRXI7M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eb9zSxIniP8t5SP4QRI0EGlXz4d0U+t9hSzwca7Z9wQupkyfaj1Lo/iiDE2IY71R4MaZcU0iDmJBgliH3f11HEg9H8QqsWALyx3uWnKb4se9joJulCULb3YrZJO6Tg4apNmgOVbjVrGsSGmCgUT/BRsdVh6R/D3KSb/tgqkXFQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u7QRbGpK; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-748d982e97cso4947867b3a.1
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 07:09:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753193382; x=1753798182; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nYA6BM6RuT7QlZka2P+M+8292j7neabTFGbKg/RuP8A=;
        b=u7QRbGpK/56BVZ8DwvD/zK2Pt6Zht3D56J5V4wgDVnT3X7nosZ9ODdV63CPWA6ephc
         MrZNKNnCrGy12PU3v7DCbtkmSoOVlSzKRuHYqjUHGXBeYAq71KWlmckAXvMXnHZF5MQ9
         gQSRL5vq8NaeVMq2/btL1NMajziBD6LdCYIx1vNIbpElRzrcXxn9JHMa42aijsgtdK7t
         ls6PqnQM4Tn7cUSnMsG3TbPXUjfg0NzxKgDX8GxyWJny2BaTsNwcOgpxN4iNVagbar+X
         8VhOLb0Uh4KHuj4QMHAULhIlmN2lpJdR+2xEwrgeBx8DxF6JISbXAq7zbFxobpKtbLre
         cUsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753193382; x=1753798182;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nYA6BM6RuT7QlZka2P+M+8292j7neabTFGbKg/RuP8A=;
        b=d2vni5x+SX4R3KQ62As71v3yA7AKlLg1o9zLHn1wuppP5cUuf+aEqiuySMaMH7L2vm
         OImN8ZBHDIc4FOrPaKRmyQ2D0LRTnc5nTpms0EaGBFhPjtgv/EMcllVaMSCiijixAtR/
         oG8VTnyOV9PGPp4MC9lMVccDWu71oPNfxt3Qr/tf4OGjjuMeY9bDhUSEElVGUO1tZXpg
         FaB7ldDUeUS9bRRkgTRGDJSDQ8v9PesITQ6ppHMvVssnc1L1QBwaHURE8e2WJcIdmIQQ
         7mm5YRKolmV1w/Dbeviu1meEdEUHHl4TvbTk9Dct8HiUPG27rLxsQv1GOScc5YIqivaM
         I50g==
X-Forwarded-Encrypted: i=1; AJvYcCX7tAtKpEm5T5PCnWEaUmSbv6PRXG5jWVefINh+4FIw0Orl1Yd8WC2aKQmq29kar1/Ih33giu4VewXC@vger.kernel.org
X-Gm-Message-State: AOJu0Ywv8gG7/J3WU1iUYQ6vgWiGRbppsRsEpLKxYXzpgsqlkdqHB0tC
	02jClHnGKscYF4lQAZ6rijV6GggSHerdbHgI1SV7uSMsyUcRg+4XuqLsosCCBuJwxBST1NFnxX1
	iqeXvAL8QYYrTTPKFyp8gFtJrMLLXuhv4RoBeEqxSvg==
X-Gm-Gg: ASbGncvk1x7Od5Seig1QO76ZKJVV+tJIy7+4SY1TY8Ksk5Zm1znkket0VBil2ZA0Jx8
	1T00+PtbkMNBHTuClOL8ZKmnlckTue+eZMA610rq0taWjVT1e1VAYRYEp2C4eyvf2MZ4oA0JxDv
	7FSO0BcSTCzYM4trKzpqJn7vmC8svvmauKx2KQnqpSyxPPOwmwsGW8DdRtyAfg8o1LjqCzRBu09
	B6Z6eM2hFCuO359puU=
X-Google-Smtp-Source: AGHT+IGFU4VWxlYJEYbLdchAtv1j2H85pNZPMbrhLD3/A1/ePknqXU8Y1b1MkhV+cBTSRgsa7pHyElQVUGu1ZTiaT3M=
X-Received: by 2002:a05:6a00:3d53:b0:748:3385:a4a with SMTP id
 d2e1a72fcca58-75724e89802mr35964790b3a.23.1753193381756; Tue, 22 Jul 2025
 07:09:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250714063109.591-1-jie.gan@oss.qualcomm.com> <20250714063109.591-9-jie.gan@oss.qualcomm.com>
In-Reply-To: <20250714063109.591-9-jie.gan@oss.qualcomm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 22 Jul 2025 15:09:30 +0100
X-Gm-Features: Ac12FXwqHXk4-Uo6jXL4Zzw0JmKbOZ72WWBz7IbZfbByNQJn0Pkpcd6_VysI01c
Message-ID: <CAJ9a7VhLXrdP_CPQPgAYTAGWJfsVUa9SG9Bzv9dLtFzR4nFROg@mail.gmail.com>
Subject: Re: [PATCH v3 RESEND 08/10] coresight: tmc: add a switch buffer
 function for byte-cntr
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

This buffer swap code looks OK in principle. The ETR is stopped,
memory synced and set to be read.
See other comments inline.

On Mon, 14 Jul 2025 at 07:31, Jie Gan <jie.gan@oss.qualcomm.com> wrote:
>
> Switching the sysfs_buf when current buffer is full or the timeout is
> triggered and resets rrp and rwp registers after switched the buffer.
> Disable the ETR device if it cannot find an available buffer to switch.
>
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
>  .../hwtracing/coresight/coresight-tmc-etr.c   | 52 +++++++++++++++++++
>  1 file changed, 52 insertions(+)
>
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> index 2b73bd8074bb..3e3e1b5e78ca 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> @@ -1287,6 +1287,58 @@ static struct etr_buf *tmc_etr_get_sysfs_buffer(struct coresight_device *csdev)
>         return ret ? ERR_PTR(ret) : drvdata->sysfs_buf;
>  }
>
> +static bool tmc_byte_cntr_switch_buffer(struct tmc_drvdata *drvdata,
> +                                       struct ctcu_byte_cntr *byte_cntr_data)
> +{

This entire function should be in one of the byte_cntr source files,
not in the main etr files. Please keep byte cntr code separate as far
as possible

> +       struct etr_buf_node *nd, *next, *curr_node, *picked_node;
> +       struct etr_buf *curr_buf = drvdata->sysfs_buf;
> +       bool found_free_buf = false;
> +
> +       if (WARN_ON(!drvdata || !byte_cntr_data))
> +               return found_free_buf;
> +
> +       /* Stop the ETR before we start the switching process */
> +       if (coresight_get_mode(drvdata->csdev) == CS_MODE_SYSFS)

Can this function be called if the mode is not CS_MODE_SYSFS?

> +               __tmc_etr_disable_hw(drvdata);
> +
> +       list_for_each_entry_safe(nd, next, &drvdata->etr_buf_list, node) {
> +               /* curr_buf is free for next round */
> +               if (nd->sysfs_buf == curr_buf) {
> +                       nd->is_free = true;
> +                       curr_node = nd;
> +               }
> +
> +               if (!found_free_buf && nd->is_free && nd->sysfs_buf != curr_buf) {
> +                       if (nd->reading)
> +                               continue;
> +
> +                       picked_node = nd;
> +                       found_free_buf = true;
> +               }
> +       }
> +
> +       if (found_free_buf) {
> +               curr_node->reading = true;
> +               curr_node->pos = 0;
> +               drvdata->reading_node = curr_node;
> +               drvdata->sysfs_buf = picked_node->sysfs_buf;
> +               drvdata->etr_buf = picked_node->sysfs_buf;
> +               picked_node->is_free = false;
> +               /* Reset irq_cnt for next etr_buf */
> +               atomic_set(&byte_cntr_data->irq_cnt, 0);
> +               /* Reset rrp and rwp when the system has switched the buffer*/
> +               CS_UNLOCK(drvdata->base);
> +               tmc_write_rrp(drvdata, 0);
> +               tmc_write_rwp(drvdata, 0);

This cannot possibly be correct. RWP / RRP are pointers into the
system memory where the ETR stores data.

> +               CS_LOCK(drvdata->base);
> +               /* Restart the ETR when we find a free buffer */
> +               if (coresight_get_mode(drvdata->csdev) == CS_MODE_SYSFS)
> +                       __tmc_etr_enable_hw(drvdata);

What happens if the ETR is not restarted? Using __tmc_etr_disable_hw()
is correct for this use case, but if you do not restart then the extra
shutdown that would ordinarily happen in tmc_etr_disable_hw() does not
occur. How is this handled in the rest of the update?

> +       }
> +
> +       return found_free_buf;
> +}
> +
>  static int tmc_enable_etr_sink_sysfs(struct coresight_device *csdev)
>  {
>         int ret = 0;
> --
> 2.34.1
>

Regards

Mike

--
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK


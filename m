Return-Path: <devicetree+bounces-215672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 05001B52530
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 02:52:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D9AE23A8763
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 00:52:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3973B1E521D;
	Thu, 11 Sep 2025 00:52:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IdtYEfRC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7B917D2
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 00:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757551964; cv=none; b=Nzg2T9YRXThAWRiHvcR1W8EnKJZr6bA0zW7xGMkuilZyrVEDl0svE163WxwuHHNQa/jU+Ww6hjwIs9UlN3VibpQo6YQP8K+UGVcfG1Ih5vWsaBL1j9coBFIw/8W57KXFdvHZzjxG1wrojE02SBD6xWmFruYdmduU8jhDlRiaHT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757551964; c=relaxed/simple;
	bh=n9ik6TUUZwljOCIrO/RYqlpUkEHDUTilfPvJTnkLFjo=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=lhPKEcRYFBdpndFzHEcDC/UOP5LyKLL1mm3jkhYFs3z7WpcSfnYAZoCFPP6hsemu3OXIk6r/IA3+lJpTr9M0oRJlAJ7cGViGVrXZY584Tjw2cmLboyBCaHnDYm+CoGswNGghhVNvsS0SrylBnM3C+96h2IZoowxMbn3rAfytQvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IdtYEfRC; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45b9c35bc0aso1490285e9.2
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 17:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757551960; x=1758156760; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n9ik6TUUZwljOCIrO/RYqlpUkEHDUTilfPvJTnkLFjo=;
        b=IdtYEfRCg8EZY5FfRpiCNvqLrvFwT/LIIncN2dm6ZFCKS+zrNfakMzufhQRltK5hsA
         ykKDRj6dMGnRgN49Xq8CnOhdMKbJ6oPen+IyWhL5PRliHu/0Nfkq2JdfDVbx217frmuR
         SVMAS14PK5vnCLxEXlVB6WNvyP8UOC3N8vJkHIRJKsn23Dx2EoeW0A0w92qryJrJeIhC
         cQB/ercNCjV2ttkHknqgGRGq2EFL1cRXjlnkP0IHbQogyX76XC+FLWA0fdDl76nlesX9
         rIdwJM6IaJWz9m3kRKB4n0IhieA1z35KTVm5axIMgnrRUub0/bQ7EIvUnMC8A8B9m5EX
         Nxkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757551960; x=1758156760;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=n9ik6TUUZwljOCIrO/RYqlpUkEHDUTilfPvJTnkLFjo=;
        b=p4PJphfNQNfIAbBgbCg4e+/Iz/gu2s3/Yog6oOSHaFCTz603qefLVBNMdGq9rOj32Z
         QKbANXm9VrMqCa3PuHEw7lZRW4HobuxWrY2RMzXrjU+fg/yEUTHwE2xQJzqrS9uGZv65
         Q06yCGNOA/tYzDrwWDSpkiJ+Mc4gfRRV/4jQfZm0m8DZIB6cDfx0DN5/2l2/VeYpiz8q
         tlp2zhi5SohH9QDXmFKtBYt2OjAGcRY7Z0P7ZW3CvqY1/vSYd/yGiq0U550b2fviSlR2
         tKJD539J+Dr2IQAr6Ad1JpXVvq0m04iuPSCZJNBKPsd8oz6QuuNXYjNCJbotJhEeyOWc
         GF8g==
X-Forwarded-Encrypted: i=1; AJvYcCWuVqBwPB4Y3aETnI3Ui/1pfeq9Mqwvm5N/PiBMtD6Ep/JPNIz7T0vQ2E66A9btbkb1SzHj3AlzqURt@vger.kernel.org
X-Gm-Message-State: AOJu0YwJJn5i4cepsa4JZSJAxEntQPnBKHBKU/jvMQreVX3acEt3xySe
	e82tc0iV+IWInT0YuqhkNdfR/7QakqQb+Fe/yrHqSGHkS8FVXJG+FURQBa4XOcUoqU0=
X-Gm-Gg: ASbGncuKKACaARthgzsJcn/lOzUvsp1LDIB8+W/tzb9LDZbE3uH7jWgM0WwND+WiFBV
	ICyDuC5IejRnmGvCjK6TsH37GgTD4xL9M/MS4djnBShDTlSe9IW3LPyIT2jU3RBT5BtlGboyWOV
	OWFwzIoyBAFpULtGet1pdjULsTXJNgjYGX1Cq1ol0S+94sG6y1K0GpsNmn547lMU7wA2x1fsR5+
	zbnrXui946bYQXCgot07l3+rw38zQdOmgM8eE1pYTvD64OaipVRDJKuhksI59IXy6JKHs8vWLpY
	7a1j7AiBA3oLyh6tyNfytnYXxhB1hEEWrJ7hxezES0JLCdBdthQorWfmVk+WkfvmzzIMdAL5H5v
	lzhY/xhU6oNOzgGzLpE9c5LL8nuA/a6zRqYxAjA==
X-Google-Smtp-Source: AGHT+IENdiQzRqD0ilOksClnHzZl9EP7+Iq2b/6pNdScPtqokFRIwU5MWit31uB/hgllOsIIQBjxTQ==
X-Received: by 2002:a05:600c:3b8e:b0:45b:8039:6196 with SMTP id 5b1f17b1804b1-45def8828d5mr85496425e9.4.1757551960624;
        Wed, 10 Sep 2025 17:52:40 -0700 (PDT)
Received: from localhost ([2a02:c7c:7259:a00:a727:6a46:52e3:cac2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e017bfd14sm6363865e9.21.2025.09.10.17.52.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Sep 2025 17:52:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 11 Sep 2025 01:52:39 +0100
Message-Id: <DCPK67SQ5DEI.2AFDVRKZSEWTS@linaro.org>
Cc: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <srini@kernel.org>, <yung-chuan.liao@linux.intel.com>,
 <pierre-louis.bossart@linux.dev>, <linux-arm-msm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-sound@vger.kernel.org>
Subject: Re: [PATCH v3 0/7] soundwire: qcom: add support for v3.1.0
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Srinivas Kandagatla" <srinivas.kandagatla@oss.qualcomm.com>,
 <vkoul@kernel.org>
X-Mailer: aerc 0.20.0
References: <20250904105616.39178-1-srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <20250904105616.39178-1-srinivas.kandagatla@oss.qualcomm.com>

On Thu Sep 4, 2025 at 11:56 AM BST, Srinivas Kandagatla wrote:
> This patch series adds support for Qualcomm Soundwire Controller
> version v3.1.0.
> As part for adding this support, a new macro of_property_read_u8_index()
> is added so that we can remove the qcom,din-ports and qcom,dout-ports.
> As v3.1.0 supports more than 17 soundwire ports. Also due to change in
> the register offsets, new entries are added to the variant data.
>
> Tested this patchset on X14s and Glymur reference platform.

Well, I don't have any Glymur devices and no idea what is
x14s (I guess some laptop), but I picked the series locally to test
on sm8550, it seems there are some generic changes, and
qcom-soundwire probe failed:

 remoteproc remoteproc1: powering up adsp
 remoteproc remoteproc1: Booting fw image qcom/sm8550/adsp.mbn, size 8364
 remoteproc remoteproc1: remote processor adsp is now up
 qcom,fastrpc 6800000.remoteproc:glink-edge.fastrpcglink-apps-dsp.-1.-1: no=
 reserved DMA memory for FASTRPC
 PDR: Indication received from msm/adsp/audio_pd, state: 0x1fffffff, trans-=
id: 1
 platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@3: Adding to iom=
mu group 12
 qcom,apr 6800000.remoteproc:glink-edge.adsp_apps.-1.-1: Adding APR/GPR dev=
: gprsvc:service:2:1
 platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@4: Adding to iom=
mu group 13
 qcom,apr 6800000.remoteproc:glink-edge.adsp_apps.-1.-1: Adding APR/GPR dev=
: gprsvc:service:2:2
 PDR: Indication received from msm/adsp/charger_pd, state: 0x1fffffff, tran=
s-id: 1
 platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@5: Adding to iom=
mu group 14
 platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@6: Adding to iom=
mu group 15
 platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@7: Adding to iom=
mu group 16
 qcom-apm gprsvc:service:2:1: CMD timeout for [1001021] opcode
 platform 6800000.remoteproc:glink-edge:gpr:service@1:dais: Adding to iommu=
 group 17
 va_macro 6d44000.codec: qcom,dmic-sample-rate dt entry missing
 qcom-soundwire 6d30000.soundwire: probe with driver qcom-soundwire failed =
with error -75
 sched: DL replenish lagged too much
 platform sound: deferred probe pending: snd-sc8280xp: WCD Playback: codec =
dai not found

Are there any dependencies I am missing?

When I reverted the series the audio started to work again.

Best regards,
Alexey


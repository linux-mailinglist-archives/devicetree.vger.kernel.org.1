Return-Path: <devicetree+bounces-92949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D0894EF02
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 15:57:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 547ED1C217E2
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 13:57:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C042E17C7CA;
	Mon, 12 Aug 2024 13:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="1EhFuv2A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD1217C7C3
	for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 13:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723470983; cv=none; b=peiFiDpx5KMi4B2U8lhwSp19vbeJdfyu2cn+Z/VMkNv92KwP5LAsNMhZhKJp45XqAe4a85qA74iyAv9mEqkNS5wXxCWJxuUox7NuQuaEC5ekp/gLe0GtfbZfYde3dO1Ab9x68X02PZTlFtrqabkwWW95LAKiZrdMrsCF/5RFjWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723470983; c=relaxed/simple;
	bh=j2Ltfi0OLr30R/S0+3m3HzBIPuKmssjD9Wb4HCJzRkc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UZti2T6hWcaYKN4XSSkMpmCnbRPTwqQr2EAeMpq4ALDxrFUJY93Ly9mSaU6V/7t403X0srag56j6+JiY9JxNGl5ZWCoiIjrPKfDpUE3SBS00yKBzDf0D87PGJdJKK+i5uNEPXDF4DcAKZhWH/6Fs4GedJcIbhImJRzKQcCVGHAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=1EhFuv2A; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-36d2a601c31so2228597f8f.0
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 06:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1723470978; x=1724075778; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S8pPBKCtj1qMblogWbM7RgQzND2CLqVTOWooV2IgGeU=;
        b=1EhFuv2AqZbYzufjt/Q57oKXW7nxv17WEiw89Wc+KkIgZ6hyzt/l5uO/bMgAjFrys4
         +7TJdEul+N2kGsrCjCY08+bXtvknG4mXXoCDxnHzl5gpHy80/b5DECgGSP2XvmlUWE0C
         tZjoXmKSS2jCv/H6ppJY1SZW/WjaUYB+HxCQslRMEpa3nPIJwj8oQOwprkXbMBq4MUMt
         xMAMoOd98f8t77a2UrvZsyeULqV+Ww9UhoqMAUdoiHi0yoLCU0IJA0vo9Z3p1h7bKCCj
         GK7veecBpCBxi/jHRrQ6OFsxaonyDrOfD8Iua5W4DZv54qKcHkSi0YsfUOHfMcm9TSWp
         VfRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723470978; x=1724075778;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S8pPBKCtj1qMblogWbM7RgQzND2CLqVTOWooV2IgGeU=;
        b=Uf/XsspqZjy2iZRPT03RNTcl9FoBhfq+IQD4LzeKo53MsFjz7oXtvslU3vQODu8hVQ
         WdG3k1XmjV6k8cHqATWa3aMuQuVqvcLsbxWifrCRQoTUWRVI1aR+Y0K7EbHsPswXVYao
         ZfcHKzfikWi9kYIYixy2jpEJuow7WvzT6T6AqllAeDJrgEX7MMblMMS2KsgoDcqdgL39
         hNvBQ8urVOYaZrNQcOmXYkfez4w2Y1mM+4R0n7ZZQCB+3YeyVzhmVVPOWcTfHWNQ/baf
         zspKCaqPOXiYCm4KAyedYvlyfWITEh4T44rbw1uk3afkd2Aw/v/yGvNM3ZH4BumGGkhC
         ybPg==
X-Forwarded-Encrypted: i=1; AJvYcCUPx/SnsdnaTCQAZReCFftQFUZAaBwkcQ1ZHPGHCv++sVvDHWz7fmee15268tYBx/JUusVpVcp+P6bK92pLi9kH6OfcR3USbiwRtA==
X-Gm-Message-State: AOJu0YyDyvDYnRCvm5bidnmmEEhbb37gxFLI39hZT//ZngoyEoSXgdbI
	482UJX2f53mQr33gRGJ+ElrIaU02ulPZpfaIOsgVoI2+O5W9tD3DI40K22KgZcs=
X-Google-Smtp-Source: AGHT+IGUCDDDJmPdkUeF51lGMXmc2B54eXkWDGs+ePmSEkQ87f4+LylylfieyVoH9qavVmYIfup6/A==
X-Received: by 2002:a5d:52c8:0:b0:368:460a:961d with SMTP id ffacd0b85a97d-3716ccd6f24mr267787f8f.3.1723470978233;
        Mon, 12 Aug 2024 06:56:18 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36e4f0a66e8sm7602815f8f.114.2024.08.12.06.56.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Aug 2024 06:56:17 -0700 (PDT)
Message-ID: <0b2279f3-1591-4297-aae3-2b3b915b4a2b@freebox.fr>
Date: Mon, 12 Aug 2024 15:56:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 0/6] HDMI TX support in msm8998
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar
 <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>,
 Pierre-Hugues Husson <phhusson@freebox.fr>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>,
 Conor Dooley <conor.dooley@microchip.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>
References: <20240724-hdmi-tx-v7-0-e44a20553464@freebox.fr>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <20240724-hdmi-tx-v7-0-e44a20553464@freebox.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello Rob, Abhinav, Dmitry,

This series might be ready this time?
Are all the patches supposed to go through
https://gitlab.freedesktop.org/drm/msm.git ?

(Probably not... patches 5 & 6 are probably
supposed to go through Bjorn's tree?)

Regards


On 24/07/2024 17:01, Marc Gonzalez wrote:

> DT bits required for HDMI TX support in qcom APQ8098 (MSM8998 cousin)
> 
> ---
> Changes in v7:
> - prefix the labels hdmi: and hdmi_phy: with mdss_ (Konrad)
> - DID NOT MODIFY patch 3, based on conversation between Conor & Dmitry
> - tested 40+40 boots with/without maxcpus=1 => no iommu panic witnessed
> - Collect tags from Konrad & Dmitry (hopefully b4 did the right thing)
> - Link to v6: https://lore.kernel.org/r/20240715-hdmi-tx-v6-0-d27f029627ad@freebox.fr
> 
> Changes in v6:
> - Fold HDMI PHY driver submission into this series
>   => [PATCH v2] drm/msm: add msm8998 hdmi phy/pll support
>   => Link to v2: https://lore.kernel.org/all/20240704-hdmi-phy-v2-1-a7f5af202cb5@freebox.fr/
>      - Rebase onto v6.10
>      - Move drivers/gpu/drm/msm/hdmi/hdmi.xml.h to drivers/gpu/drm/msm/registers/display/hdmi.xml
>      - Add copyright attribution
>      - Remove all dead/debug/temporary code
>   => Link to v1: https://lore.kernel.org/all/63337d63-67ef-4499-8a24-5f6e9285c36b@freebox.fr/
> - split HDMI PHY driver patch in 2 parts (PHY & TX)
> - Use same regulator names as msm8996 (Dmitry)
> - Remove printk statements
> - Add Vinod's Ack on patch 1
> - Expand commit message on patch 4 = HDMI PHY driver
> - Link to v5: https://lore.kernel.org/r/20240627-hdmi-tx-v5-0-355d5c1fbc3c@freebox.fr
> 
> Changes in v5:
> - Fix property & property-names for TX pinctrl in DTSI (Konrad)
> - NOT CHANGED: clock trees for TX & PHY based on Dmitry & Jeffrey's remarks
> - Link to v4: https://lore.kernel.org/r/20240613-hdmi-tx-v4-0-4af17e468699@freebox.fr
> 
> Changes in v4:
> - Collect tags since v3
> - Reword patch 1 subject (Vinod)
> - Link to v3: https://lore.kernel.org/r/20240606-hdmi-tx-v3-0-9d7feb6d3647@freebox.fr
> 
> Changes in v3
> - Address Rob's comments on patch 2:
>   - 'maxItems: 5' for clocks in the 8996 if/then schema
>   - match the order of 8996 for the clock-names in common
> 
> ---
> Arnaud Vrac (2):
>       drm/msm: add msm8998 hdmi phy/pll support
>       arm64: dts: qcom: add HDMI nodes for msm8998
> 
> Marc Gonzalez (4):
>       dt-bindings: phy: add qcom,hdmi-phy-8998
>       dt-bindings: display/msm: hdmi: add qcom,hdmi-tx-8998
>       drm/msm/hdmi: add "qcom,hdmi-tx-8998" compatible
>       arm64: dts: qcom: msm8998: add HDMI GPIOs
> 
>  .../devicetree/bindings/display/msm/hdmi.yaml      |  28 +-
>  .../devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml |   1 +
>  arch/arm64/boot/dts/qcom/msm8998.dtsi              | 128 +++-
>  drivers/gpu/drm/msm/Makefile                       |   1 +
>  drivers/gpu/drm/msm/hdmi/hdmi.c                    |   1 +
>  drivers/gpu/drm/msm/hdmi/hdmi.h                    |   8 +
>  drivers/gpu/drm/msm/hdmi/hdmi_phy.c                |   5 +
>  drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c           | 779 +++++++++++++++++++++
>  drivers/gpu/drm/msm/registers/display/hdmi.xml     |  89 +++
>  9 files changed, 1037 insertions(+), 3 deletions(-)
> ---
> base-commit: 003a26f5074bfe024603cf76f8fd486a5344f307
> change-id: 20240606-hdmi-tx-00ee8e7ddbac




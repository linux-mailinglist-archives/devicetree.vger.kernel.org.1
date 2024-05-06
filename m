Return-Path: <devicetree+bounces-65180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D97D58BCF68
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 15:48:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 15107B24043
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 13:48:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EC417FBC6;
	Mon,  6 May 2024 13:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="3PACTyXy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF5E77FBBA
	for <devicetree@vger.kernel.org>; Mon,  6 May 2024 13:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715003311; cv=none; b=U8OImHf05xYDYTenvFyacWcVwb8IGDg+D3M3Pzv7tRGPmAkSB/IX0hu4qZt9pi+3uGoSuHEgCIFr6juXT+hQ56l2lPcdXk07ph8le2t4LsN62sgt5Z675j9Tqu/SVGkvogaaczX88E18Es9otaOJwJSeMMlCtPVdbTxW3mxiIW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715003311; c=relaxed/simple;
	bh=/QiOmbDA0s51k+/GZk9L3TVkYAJe99suGA6XGSKHexI=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:Content-Type; b=kM0QTky93dRKBc4HjZwDV8AhflK0+ZUUkJzImvJtMQEyWWd/iHTJO8yGHGqbuePYN2Aya5VCMy1vdL97bGM7CdZ5U11h3ndK8cBjZiDKasCnoqefEuWOtv9nztEIZdF+YLVAGERSo3l2Rt4hbZtwUt96DFmtAFm8VFlB8uX7YA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=3PACTyXy; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-41ba1ba55ebso13943395e9.1
        for <devicetree@vger.kernel.org>; Mon, 06 May 2024 06:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1715003308; x=1715608108; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QpQZF9S049qXGJvc94Xj+0DMMhtpV0sTvcQBUS5iK1E=;
        b=3PACTyXyMLYPy6SwaF1T/motN6j6GofuV+CLPsz2Yrd1i6q4qzhQWyaJ5StMMM5Btx
         DkBOFHF5nyoLG/G1dLboanuh+AIWD360dCvy/SbwZhV+iTQUOgq9pmUoplk6Xhl+Dl0Z
         ux/1OnQYv+qDrpRP6Iqqz6oF6IUFfg8yQ0NTXGt2NT2FQgQTFAtbw5TUbbCGMmS+RHgP
         YQJmRhcqzwJvDJrJUR3PZWcsrg4EJ39z/3Coi5/kuRrOK+iihWjmcJQjLp+XggqMMOGy
         9iP4+NecfS1IJUgSaWSCs8NnGGKqaWjtRkTKAjRRQgbKRtZjzMMVsrg4DorBETP2FCM5
         9W0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715003308; x=1715608108;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QpQZF9S049qXGJvc94Xj+0DMMhtpV0sTvcQBUS5iK1E=;
        b=vKhu/sCrCM6l/Jdlqz8Lfgfs527dZXYh769vVKGARiBAUXYQGwfz/lJgHHL/uTnxGI
         ejH5wYj2A+ujm1m+E+lrQ/iTdDf2gYWpXNtD3+D7DOUWGTWhot1YrWUB9BVmSzCrqx/e
         s+m2eYDK+/lW6wCVZW0SemW8RRujivwH3/LXfWaPKb2UMwxIByFQa4G7FINgO1WQRb35
         qDD5tYlt51UM44SV2GTGIGXWoBk2rFIeb+MgLAYOBMZIKi7vVtIQF5Luiy1w9xjCjb/N
         M7n3SLOVmaTxUQ4KdhGM76vPHN/R5Gcg8XwjM+L14RscTWqCIo1CB7RccFTjXe/MM0Ly
         JiBw==
X-Forwarded-Encrypted: i=1; AJvYcCVyaLhyn4kQzRzlL4RNdGocHmhVL/Wf32+VjrG/auyQGYsMNY92v6HD1safxVLj2Po7sps6oBUOO+tcn/3wCfhRKAbvKdGQkdjQ3Q==
X-Gm-Message-State: AOJu0YxcuhNaMWiYkqKymGcIC0wGTohV5L7gIXImHbrfEIWzmAdxinxS
	H99LyQfQetKRt/weAi+Cl5VAlgFCBHi4Sh/B/HIFLvg9HGzRqvCGD+XumElM9Wk=
X-Google-Smtp-Source: AGHT+IEbrCHCg7Aa7QTpevRKQ/4P9BaGRheKpe1Dh9lR+//YS6OPAFLfJidV2fmkiuzYW0Z+wW9MDA==
X-Received: by 2002:a05:600c:3b8f:b0:41a:821b:37f7 with SMTP id n15-20020a05600c3b8f00b0041a821b37f7mr7461206wms.27.1715003308031;
        Mon, 06 May 2024 06:48:28 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id je8-20020a05600c1f8800b0041bf28aa11dsm16131973wmb.42.2024.05.06.06.48.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 May 2024 06:48:27 -0700 (PDT)
Message-ID: <72860c1d-7434-4be6-8c1d-9ea177602802@freebox.fr>
Date: Mon, 6 May 2024 15:44:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Marc Gonzalez <mgonzalez@freebox.fr>
Subject: [PATCH v3 0/3] Add support for qcom msm8998-venus (HW vdec / venc)
To: Bjorn Andersson <andersson@kernel.org>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Bryan O Donoghue <bryan.odonoghue@linaro.org>
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 linux-media <linux-media@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Changes in v3
- Add Reviewed-by tags for patch 1
- Align msm8998_freq_table to downstream code

Marc Gonzalez (1):
  dt-bindings: media: add qcom,msm8998-venus

Pierre-Hugues Husson (2):
  arm64: dts: qcom: msm8998: add venus node
  media: venus: add msm8998 support

 Documentation/devicetree/bindings/media/qcom,msm8996-venus.yaml |  4 ++-
 arch/arm64/boot/dts/qcom/msm8998.dtsi                           | 48 +++++++++++++++++++++++++++++
 drivers/media/platform/qcom/venus/core.c                        | 48 +++++++++++++++++++++++++++++
 3 files changed, 99 insertions(+), 1 deletion(-)

-- 
2.34.1


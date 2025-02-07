Return-Path: <devicetree+bounces-143959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D7460A2C516
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 15:21:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 73AC0162F9D
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 14:21:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33D041F4E56;
	Fri,  7 Feb 2025 14:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="boNAyiaz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB1C1FA26C
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 14:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738938066; cv=none; b=Pg91+I2pD5ItWhofrlhuhH/HB/hkWyPad10k+G5DYPMOa9ge7LRYpU2Cmfgfpo1iB+2dGP0DmdoAL0o/sRcAINnfl/QCBp5iTUdBrdSUdlSlyzza8cTlAEtkgxEIlRrpAKCIPrv4NrFCLxol6y7nrngiZjcfWFWj084I8n7X+kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738938066; c=relaxed/simple;
	bh=zB5BCO7vbRkbw+9KhUruFW/VbekbxzIkhUgXE+BTnI8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GjsJXYZADrg1TEXxNK4KaIlyZO0uiBNb3/jIComQIi9/h0ItfQN4uIQFaaXRyM4qrdAQlqELZfvoLhKkDoesBf2QfqacBqCFeayKBOUdno2zpjSzODVXIyP71ToG2eXv+MOHuvPbgNO/oRuS+edD6K6txPEqx//MLzlWz8AbmpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=boNAyiaz; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4361e89b6daso14197945e9.3
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 06:21:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738938062; x=1739542862; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qDisuTD3ZLBeOSNMxc2GUk38TNgB9LS+VU1agrbB+iM=;
        b=boNAyiaz9ejYZsRpmFri0bmpmc3c2btHVG0FmomCjWNLd2McXo3UKLfrmfHW83+o2O
         HCCEx109XTr7SVk/RJO21Uo2nKa3ba9OAYtHLw4m4TCciYKs5m0Lm17Mb6K2heEk2Gq/
         QtCewF2/K8IFRJ0SqLjzeSLHOBcGGrHYDpOpCLNkptE8Z9OtCkwDQUkRtyzJ60z1L3Q3
         kwiub3XGgvAnJDQ6/0/U1LHSMnANXpTk9QKTuWxHtZrvexHDsF/MLy2kijL0/DrOarPy
         j/me5JU+H1uSpVsbFLZttKS9rXJrP+yp9LCAdDaUfcV/GrLsQ4wXqzt7I43YIANcGfBX
         W2iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738938062; x=1739542862;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qDisuTD3ZLBeOSNMxc2GUk38TNgB9LS+VU1agrbB+iM=;
        b=g4o9oq7lwdnt5XAiURkeEoiWIUS28ZCTVoADYAwvToAarrinneMuqiliPlOJPXUhVD
         I7TJgc6bltjrjP9YRhd/wbwrD3mVd2szPbTt7EbM7fH/4VACw+X+4TzP9cS6P+4Cavw+
         YJMTGhs22kISP61c41WX7AILFGMIcXz9yR8EEbLSPil0tRHnDUimcHbT8yTN16XoRt04
         bO/N1A+2Z3HYfROFcARN0Acd+a0+XrfW5eCIWRUWO0KIqzvvVaXsgpukwOX6nzif4POz
         ar5SWhXZW1td28G60VXYJExIU062sBoxVKtWPh77PJqdYbKj6BTzgKo00abY2lu4JPJj
         xFaw==
X-Forwarded-Encrypted: i=1; AJvYcCUfdGfzN+4All5Ue8eMD5epL9ackBIG+Kn5pHPShIfX3PbGPsqH+g7TlF74dX2ljR4qBzGQVT3lrNZu@vger.kernel.org
X-Gm-Message-State: AOJu0YzZKCtDguWl0SL1wlLAkiFRbqHuKXLvFhp0th5uSz5jguO0RlKj
	ybxPuAJmMQHZxX6YhxoFXWxLaDx3vsC/lRbGpRmJjaHhC80YrkChbteFtu6fNNk=
X-Gm-Gg: ASbGnctPV63uhBX5EdyggCPM2EYnEFc2Aon217nLaVyd6fg8Z2hnc9Ky19YJDAr4WYf
	XA44d+u7AyAJn3hLraQUbJTn1004BGTPNZHJLfOrFKrQKfVAHlPglKiOnsN/4K2NaNVi6mi+yBp
	/qvYyaaXs4/KKqh8FWGZWgMIZm3okWd6hQX3MN6HTpB1H2XR5dOPV31DxuI7etxyL86UV7hS+zN
	EcrRyheMxJgHKOxhiEuOCm63Q6u6sA5JlQPyEhaoG0QZJs9dB0+eZMmwSAUbVvk/gM7kpL1fyaA
	Mo2s1OVt+ebgF8fh4slUC86rJMfHSLE42umtE/cPDqoWRmJSrIiXvRc9/1TkEk4=
X-Google-Smtp-Source: AGHT+IFxDkESsH4G5gG1BU4H7B4x8RnSu0oAxMNZ2KGruE88D1fDp7b1Y1apydP5lwwz3pFDUdKEAA==
X-Received: by 2002:a05:600c:c19:b0:434:a386:6ae with SMTP id 5b1f17b1804b1-439249842bamr30302495e9.7.1738938062277;
        Fri, 07 Feb 2025 06:21:02 -0800 (PST)
Received: from ?IPV6:2a01:e0a:5ee:79d0:a437:fa6a:2619:f5d8? ([2a01:e0a:5ee:79d0:a437:fa6a:2619:f5d8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4391da9656fsm58840305e9.3.2025.02.07.06.21.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 06:21:01 -0800 (PST)
Message-ID: <8af4e0cb-4ac4-4ca4-ae81-6b5f7a06bf3d@baylibre.com>
Date: Fri, 7 Feb 2025 15:20:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 10/34] drm/mediatek: mtk_hdmi_ddc: Switch to register
 as module_platform_driver
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 chunkuang.hu@kernel.org
Cc: p.zabel@pengutronix.de, airlied@gmail.com, simona@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 matthias.bgg@gmail.com, ck.hu@mediatek.com, jitao.shi@mediatek.com,
 jie.qiu@mediatek.com, junzhi.zhao@mediatek.com,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 dmitry.baryshkov@linaro.org, lewis.liao@mediatek.com,
 ives.chenjh@mediatek.com, tommyyl.chen@mediatek.com,
 jason-jh.lin@mediatek.com
References: <20250113145232.227674-1-angelogioacchino.delregno@collabora.com>
 <20250113145232.227674-11-angelogioacchino.delregno@collabora.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20250113145232.227674-11-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 13/01/2025 15:52, AngeloGioacchino Del Regno wrote:
> In preparation for splitting out the common bits from the HDMI
> driver, change the mtk_cec driver from being registered from the
> HDMI driver itself to be a module_platform_driver of its own.
> 
> With this change, there are no more users of the mtk_hdmi.h header
> so, while at it, also remove it.

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

-- 
Regards,
Alexandre


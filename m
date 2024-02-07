Return-Path: <devicetree+bounces-39386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E22D84C722
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 10:19:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A462284C1B
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 09:19:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87D0020DE5;
	Wed,  7 Feb 2024 09:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yLaZO34V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657D8241E2
	for <devicetree@vger.kernel.org>; Wed,  7 Feb 2024 09:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707297561; cv=none; b=RWhqoL8KagJKeY8hN/KCGeVnaruchxUfvYdSGu/O7AlOz8nN9h5UQW/DhahZgEIHjAWkryCngUV0EmClM7pm91NMdLsEw+Y2v54BcUbr5gDakv4z/DiCO+Wnm24HwZQEqHT93ZeMGrym2ibWywbhRipor+0qAaulzT/8hNEuua0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707297561; c=relaxed/simple;
	bh=nnD/Zu+kD3LGWjsz4VAEl+V3AN6U4MRsssL/Z+o1ncY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=roDcyn8GSmiUZjgL8iPQ/wQfAFiOZ1LEH+cz4XprQcpapTU2yCX6WLLKKpILV0Bw2Fu2EN9MmJCPHJ5lEFl1YmEYEyasOSwFUKXEOUISQuZBuq9y+o5bGL1F5pTS3cTXixUATstr8RtzTuLpJGjmWf3PZ9clRkOuN06jaSbwtnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yLaZO34V; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-33b0ecb1965so308058f8f.1
        for <devicetree@vger.kernel.org>; Wed, 07 Feb 2024 01:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707297556; x=1707902356; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=THgk+e9Cb62XQUQpCM4anGjiBdgkprTbUp5Xnr6DNDA=;
        b=yLaZO34VaXlZpQqoZWaDt7QXKnnUFZuoupNR5ckPTYm0GiSReI+QbJoTleOLw8rRDa
         OdQvBUSfNA63TaZmEbt3NrcOn0OoX0ook+6glIWyajCTaN1CvWZ6Z7sL/1mQ9AXVUfYi
         PpSNdJQvMnD/R+jvFEhRFDMiDj9mBDGiOgQRylmkeltD4LZkcQDnYfwM4yjsah2/fTQ7
         heOro7AzDH0ejMWo1XS8VLkjAsFNw4lxixoBbaR7vuZQsHWpOzvWQ2SgSqu0064pMlSf
         XmbYeyOGO58S/IbrQ8KixAGAzbaxEWRjSeDe7DxaroCn2MCcnlEnCpTvSpl0WOFEmRPp
         GLbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707297556; x=1707902356;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=THgk+e9Cb62XQUQpCM4anGjiBdgkprTbUp5Xnr6DNDA=;
        b=bW3wcQwZ7PiJHLwc2UmCczvnk2f7grzIEIOjkcVE8+bT64nfb06o3pJtdG1No2Y3TB
         jYoT3Kn8HlofTTANhsVtY+x/QlAFYShdKNfij06jF6yaGP68Vr8TUc9xxCIcFaiP38Yz
         SFzjZPPwCvJ63dkMp33w3OVy+XZW0Ok8k3b4YNqevHYKAj/kGjyFeuJHnzVrmbfTo/7g
         ZjMp4x3jwDkBOwEj46oNEgEOBjMc+f9vblTQCE/ULltDtwPnCcMvXfAx3KAuv+ysDS8A
         pMtVAJRsgJuQ0/wNZ7kPKcOjXoFKCmIswMdh+UK9uMH4M5RsgohYAdxVPGhw5IQUPqUk
         fQzg==
X-Gm-Message-State: AOJu0YyPKeKDXhEDmgByqOyB40zTZIEbfgHiJrgFsR4gnVsF3DeqATgy
	pySPDYG0coVOldtwozdIPpyOyGeK8DvSlhHhaLv3Z1sWA9zUgn/Rxsp3SWpc5n0=
X-Google-Smtp-Source: AGHT+IFH3IS82L5gMUchaVBxO2U3Dm3TiOIG6AHHKdxNIxx731oN2gzwqakpiXj2hF5Y0reTcfq/wQ==
X-Received: by 2002:adf:f051:0:b0:33b:26de:ea with SMTP id t17-20020adff051000000b0033b26de00eamr3532439wro.37.1707297556498;
        Wed, 07 Feb 2024 01:19:16 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVWiN+qIiZ+TGCqz6O1ozMaHDU937wmh5nPirJyx1NADCaa8DhzV5aRPcP1mlSeh8HS9tGnzuRYwqGdTodkvALK0+mgXVO87Ajgg1qFaP+36SZu+xs4ctMTJbe/QTi8UKQxz3AuxRxWHghJ+tBTDjP4e2aU8XK7L/Zar6hb1TtfUqdDk+Pajvg6A17Z3ehLjk3EtAKAcNlBMimPGFU9ZutwTsgzR1zDTLoB3Vj6BV+7awo2Qd4kKbzadF7nF1q8g23bprCMoLIidVw+9+tnq5/wJx4eYmATRg+HQIU/QdohVTyula19yRXkyRerG3hRJ08bn2+xB2GsYfsmI3x7Ciu69xbME6dZV7T5d2ezhFUXR//dk/5wwIYwptRGp3MyJumTFHXfgpeRfDlhIELN1Fhoio9bOSQak669MwUghfOz1/s5GNChseQ4qFsej674RQuAETJjWjoQeLjMpuqasSopZBGNY7JhW5OTtd5IbYJXWVtXcdhuN3jqbQ5CqWU6gyhqIwIHUwjaWj/CzcoAGniVOfgsonolBAV5O/qlCp7Mk4rMC3UfJxZyxU/B1JkE2Qsh4CuI5z12vEQWa8xue9rfLQP25L6RiTR5WNAvmNXiFNdtpVTZHS0/5oV5iKdcCqEWXasnhSIycPntk8LJkIkVQOm39whjVtj2rFJpbigZyHSFgKvtiJ5B
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id r20-20020adfb1d4000000b00337d6f0013esm1003490wra.107.2024.02.07.01.19.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Feb 2024 01:19:16 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, 
 Yannick Fertre <yannick.fertre@foss.st.com>
In-Reply-To: <20240205-ltdc_mp13-v1-0-072d24bf1b36@foss.st.com>
References: <20240205-ltdc_mp13-v1-0-072d24bf1b36@foss.st.com>
Subject: Re: (subset) [PATCH 0/5] Add display support for stm32mp135f-dk
 board
Message-Id: <170729755552.1647630.4818786052103823648.b4-ty@linaro.org>
Date: Wed, 07 Feb 2024 10:19:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4

Hi,

On Mon, 05 Feb 2024 10:06:50 +0100, Raphael Gallais-Pou wrote:
> This serie aims to enable display support for the stm32mp135f-dk board
> 
> Those are only patches of the device-tree since the driver support has
> already been added [1].
> 
> It respectivelly:
> 	- adds support for the display controller on stm32mp135
> 	- adds pinctrl for the display controller
> 	- enables panel, backlight and display controller on
> 	  stm32mp135f-dk
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[4/5] drm/panel: simple: fix flags on RK043FN48H
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=536090b695c429e9d672f72341a5b6fb147d389d

-- 
Neil



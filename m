Return-Path: <devicetree+bounces-36396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D03B7840C96
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 17:57:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E2FD1C22FDA
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 16:57:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94857157020;
	Mon, 29 Jan 2024 16:57:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Vi8Y6JME"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5AB7156967
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 16:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706547452; cv=none; b=dlUu3zF726s4Sfzsj85p5vi+zwaon8CuTyMMosdsXzC1ipGLn2cuKBlqhBU1I7x9kbZ96wEOJxKCwcur5/Euio/e9wXGZTeR/MCw2lAjgbLnqJtyS8WzzZ8hzs185E2p3o48Elhld+0mALqa6zU8QK0vqK/Ow1F6bVTaRMJo6L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706547452; c=relaxed/simple;
	bh=PYJV/zCof9bA47ax26MefA3jG31IKhzbByzoCNvZ2I8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ja/B6cKNBIhWmzhpiMhMWZR03Vi/qQDZ1HPR9zVJ09osw10E31ZFAKurBjinmv2nC5SNrdVVrFrlO9ub4q93jHEBhI+9/hue6g3eT0Ui+qN2iH7OgKFIvwax7Py755tFnhBfjAaEKrWI+pSSXXvJlJfu4OxNUVPV6RYbrF9evr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Vi8Y6JME; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-40ef64d8955so11034295e9.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 08:57:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706547449; x=1707152249; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=P9wTVsDZPi9luD11blK9ZetydoMmmMOCQpHaskiEUG8=;
        b=Vi8Y6JME6K13PIHEYFpkm+UvY+QIqD97ax+RkQiaDwFIzCt4Di/UGvrvzCU6BnqMtW
         91E7x4GPkp71SF6gIPiRmVQ3f+w0BgSAzMKnS8WqgSddsPXZn3y4BydHD8jIO3JPeefa
         h/1/4c/Pnseso6K34zWzAhjR2WPCULdHQbZzVH8L6IHoHQU3BMaqTRvf0+GhuPp4EQxr
         4YgZLIyPXbAX2DMz8p1Jpy+/iHIo3ccV3VBg/pJH4XRkiC90C44XEkk6QjgOgTBUQDvE
         vmn+5GIgihywv/InYnCho+V1XnNhHplWqDtzYphi93bHNkvzrQZk+iDaBqiTV5nchBRm
         Mxlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706547449; x=1707152249;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P9wTVsDZPi9luD11blK9ZetydoMmmMOCQpHaskiEUG8=;
        b=LH6ZBq1iSdn3vuC1eR8qH+NJX8ays6wMmiAW0BQsoWvLsjICmB4J+evjlrUcxEfpo1
         yDaOPbNSA5k6KontPnLjMXhSUfQrZpmJhnuxFC9JjDHOVKIwOca77WIv6x13wh4j9WrB
         Lj5UlC6eq+YZXIeM5GB6/peaCCQEucwBKRFu73TSx5qAAAvLRjNCqQZFrtEF/A45Y0j2
         3qR/8/pQMS7cAnr9J9eIPqMX93Nr/4oULK8i6+9wkegBrZuVZuHBDvZu16nYevvqWu5o
         5aZh9xPNChL7luNvQo9O+MNw5n1MR2Dl6bh6bbU8E332UVwzbFHN9l883xQVnYBYZwR6
         DEGQ==
X-Gm-Message-State: AOJu0Yyox+gWcyjvJEqpsLm9dYIngfSZHd7is1PgyamjLcgIUH7fEKw1
	9UJQFxtpbsE3BeMv6KveD1Og9k4TFmnHJ2Thbgabt3IuS47Q9/2xo+rgBCiMmoE=
X-Google-Smtp-Source: AGHT+IF0FIjSQ29fIM0nPO06gQYurBpkH6rYrh1FycF+QEIuZSgXDS1CLBlZ2OOp2thB6a/dIkH+8g==
X-Received: by 2002:a05:600c:3b82:b0:40e:5332:4062 with SMTP id n2-20020a05600c3b8200b0040e53324062mr5626780wms.33.1706547448841;
        Mon, 29 Jan 2024 08:57:28 -0800 (PST)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id k26-20020a05600c1c9a00b0040ef79b2fa6sm3008972wms.33.2024.01.29.08.57.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jan 2024 08:57:28 -0800 (PST)
Date: Mon, 29 Jan 2024 16:57:26 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benjamin Tissoires <benjamin.tissoires@redhat.com>,
	Jiri Kosina <jikos@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-input@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sc8280xp-x13s: Fix/enable
 touchscreen
Message-ID: <20240129165726.GA4700@aspen.lan>
References: <20240129-x13s-touchscreen-v3-0-c4a933034145@quicinc.com>
 <20240129-x13s-touchscreen-v3-2-c4a933034145@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240129-x13s-touchscreen-v3-2-c4a933034145@quicinc.com>

On Mon, Jan 29, 2024 at 08:47:48AM -0800, Bjorn Andersson wrote:
> The touchscreen present on some SKUs of Lenovo Thinkpad X13s is never
> detected by Linux. Power is applied and the device is brought out of
> reset using the pinconfig in DeviceTree, but the read-test in
> __i2c_hid_core_probe() fails to access the device, which result in probe
> being aborted.
>
> Some users have reported success after rebinding the device.
>
> Looking to the ACPI tables, there's a 5ms after-power and a 200ms
> after-reset delay. The power-supply is shared with other components, so
> this is active all the way through boot. The reset GPIO, on the other
> hand, is low (reset asserted) at boot, so this is first deasserted by
> the implicit application of the pinconf state.
>
> This means the time between reset deassert and __i2c_hid_core_probe() is
> significantly below the value documented in the ACPI tables.
>
> As the I2C HID binding and driver support specifying a reset gpio,
> replace the pinconf-based scheme to pull the device out of reset. Then
> specify the after-reset time.
>
> The shared power rail is currently always on, but in case this ever
> change, the after-power delay is added as well, to not violate the
> power-on to reset-deassert timing requirement.
>
> Fixes: 32c231385ed4 ("arm64: dts: qcom: sc8280xp: add Lenovo Thinkpad X13s devicetree")
> Tested-by: Daniel Thompson <daniel.thompson@linaro.org>

For the sake of completeness (and to make sure I don't forget if anyone
asks me in the future) I also (successfully) tested with the output
high removed from the touchscreen pinctrl.


Daniel.


PS Strictly speaking I tested v2 and am replying to v3... but the DT
   should be the same for both versions ;-).


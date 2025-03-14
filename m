Return-Path: <devicetree+bounces-157532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 57ECAA60F9A
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 12:09:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 45F2A1899A32
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 11:09:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 668561FAC25;
	Fri, 14 Mar 2025 11:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m6hG0Loi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C7691F4288
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 11:09:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741950553; cv=none; b=PQv8agx68PTfsQMqc5QXRa9dcDi3FHt9JCAlbXiHH835jVFucx2YLrZmWxPTGsh34caMVO4LHo2SuEr7dGEElZ968kKy4gkifYqmTR9tXuvuk45apGuEANOpj4kVoaWzqgfr9fwaya5oX4RVRaoksxyv+hKQMrCLt1bNVdzptr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741950553; c=relaxed/simple;
	bh=MAwD1GtRtdpg0DZzKIDlnqc2cR1boIHlvN2IYDSCjM8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fx/rmd9sC0yxhC55VdkSUV2sxaPT82eAzaYykcQmymIhqUTi0IM3531GSjgE4U0LRZSjkApDdz+ntS5+92qNGc7P5NLrAv00pA67O3SPV+GRFGwW3le5YduJG4YG8hGOVgag8j0Vm5WQV50rdESSRRjjtO+22PNteMWp3NT9JWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m6hG0Loi; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-54991d85f99so3168245e87.1
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 04:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741950550; x=1742555350; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MAwD1GtRtdpg0DZzKIDlnqc2cR1boIHlvN2IYDSCjM8=;
        b=m6hG0LoilCMzzgojzMDVf6zenpvMylGBfpavXWHCQdef7eY55MPvFJCssroITc8Ye7
         6GgIY4Br+E8GfbKyh4ciZ2dicFsLugUrgCZeyeGpxzZh+F8tGEF6u3QZqikjjllJChyU
         +PcnxoPTEfPJMUXCAIbK8okZIwqbdw8j93cgqRs5POWZPZu4C0L5SXWN/jRzYlanUuUk
         V++xXzwn9LzjDxFHd1zxrSYMSqQEh11CViOorklVWHALYIY5FoY4n6C2fb6OITfdQShZ
         jI2UKloN5gRZUJQoE2TfxKe2SPSUnIsCnTLIfHT4q8/Cx0IYPlJDG8ndLx66FPrya9yJ
         xfWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741950550; x=1742555350;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MAwD1GtRtdpg0DZzKIDlnqc2cR1boIHlvN2IYDSCjM8=;
        b=dvF4QaRIz+0L5+j84fpWbV2q/MCIzcQCqZRNZje5Lb3B7usZx06wLLsqMidxgoxKj9
         d+y16XJbBhV4lVw56+yvTtp92Nh/gXPg8iHkKdnMo2EhWLtxByqASZ47+yHSwxtDv0ci
         oUebqUkFeIs6eZbs+1t/U0H8RT3EiGCuP0lTARVSJQqD3CpCceDLMv13QF8ydxjT8N6e
         N3vn4an6wlfAxtrBThc7J93xernbwPhby+nwEk1WrOJF3djyv3/xlGoGlXnzhCnSo4UR
         ajeEE1rQ37XPE6yzetoEkvYJGMeTbZTHFQ4eb6xH9MLBhrory0cCG0DuYZ1gQamtcVRU
         PdzQ==
X-Forwarded-Encrypted: i=1; AJvYcCUVAJG28bsLjv4PUg8sCn+c+Kq3nZ6Rjh4l6LnYKhsxrGljPeLGK+/7mgz7SssINZ+nofn1t7lJDCi1@vger.kernel.org
X-Gm-Message-State: AOJu0YyA73RezwGo/d+qQXBGJxTf6z7D7YbqPJtZH1qiMQ2XXaLYbvqm
	wfX9XEhU7gbnw8/S5OuuhbRqmQnG2cKi7DYtBnIlaGjdu8eB7ddJu0+Nxpf2X5jB75eL/ydYDOI
	uDglPyOkdugum56i0bvRD6OpcTlcVDWE9HXKuCA==
X-Gm-Gg: ASbGncv9wjrOwRtO3MzeNh0yv2d6c6pOWj07KA/UJ69qnA69z+ySdawEbqCNkKfgvIK
	aOdSROAf5qIJUkirIygyKFrtV1SGU0H/Dwdr+76H/mu3dGKMEGbPK0axeSUZ6U7rdpQRjJVzVKg
	HzczZ2oygsN6vucmHgOaefrao=
X-Google-Smtp-Source: AGHT+IExhx3X663308XXZlwm1c0/8LT2zEZAKvTgV6X9Pe3GenUDahAFj22+6QCmZWTu+4UGyOhFdfoHzjo57MlIqmE=
X-Received: by 2002:a05:6512:238b:b0:549:88b8:ccad with SMTP id
 2adb3069b0e04-549c3f97e1amr693966e87.20.1741950549684; Fri, 14 Mar 2025
 04:09:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250312072509.3247885-1-quic_wasimn@quicinc.com>
In-Reply-To: <20250312072509.3247885-1-quic_wasimn@quicinc.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Mar 2025 12:08:58 +0100
X-Gm-Features: AQ5f1JqeFCXuNVd4MM_MrfjWEL2E41hAn6iGIfmUHWTfM1E_vGppRUa3h1NuRX8
Message-ID: <CACRpkdZ6r47jhGVVoLn8XzfuMKMrkg8nCcp6hMwzUnTUSTZEwg@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] pinctrl: qcom: Enable egpio function for sa8775p
To: Wasim Nazir <quic_wasimn@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 12, 2025 at 8:25=E2=80=AFAM Wasim Nazir <quic_wasimn@quicinc.co=
m> wrote:

> Add egpio function for GPIOs ranging from 126 to 148.

Patches applied!

Yours,
Linus Walleij


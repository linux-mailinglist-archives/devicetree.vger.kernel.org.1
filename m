Return-Path: <devicetree+bounces-51287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AE787EBC8
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 16:13:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CC9DE1C210AD
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 15:13:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63A9B4AEDD;
	Mon, 18 Mar 2024 15:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vzeI6qsK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92C2028DD6
	for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 15:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710774788; cv=none; b=fOmF8uhC7YUKsuuJSXfovoKdkipQZjw+RvErmgbdUydh/oDx/uIheyk91L1BgDH0NPdzgcb0s04d0n0qJ2GLDnFB14tEZx3IYkBu92dgyknITxOCx2vVF7wR4DVCJkLQ51bvBgCwDAS2cNrDWWJGpHxWh0LA4nLu2KajSiR/u9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710774788; c=relaxed/simple;
	bh=3nk1nbNx7KeAzAHRwZu/IZSp4qQkMvdYonFQnOWh5+A=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=AGY+uwsjAQwIYIk7hM7tObSy0EM04yR5FkmOlxmorMiSz7Ke3wGz9ytKEU/cf8qwMQTSit+Z9oGHurUkGV+8odmv87+92WFcLbZO9iCkaiTfu8LajvuJIi8gaGBxX286V2X/OgB0w4NTkSMpkBxbv3ioVeB7ozpkfEQsjNQzFVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vzeI6qsK; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-41460512c25so2742275e9.0
        for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 08:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710774785; x=1711379585; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TrjBOYLuW2abzmfWmezAaX6lixBVWAZVGcjAB2YcmOo=;
        b=vzeI6qsKYuSSp1V5xGRRWII/06SsxIsu7WD3JDqbJgbGvhZUJrlq8KGcl8iRZz73hk
         /U/YNO0iIZM2llbp8L5LWwgIcr5gjfc9y/5npbp8goUtmmKJhK2r2jqt6kiRGMFmzXlj
         UWaAZ9gr5H+tGGpgCXIuJoh+dSOBZ/tynoG725xBdLmvJAfZp+ensZLolWfif8Eg28B7
         g7OVJ7uPTZA/PCYpoGfH2h3mdELvREaQejzOK9f/DG/+3mCKL9hGcGGVQnvm49KSxZOd
         q0DstWVhppCqFbb9E/y7esbF/MNQgccUfflhCKWhq9OpugbJjOjSdQYrdCJQUjvGG8NF
         dL8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710774785; x=1711379585;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TrjBOYLuW2abzmfWmezAaX6lixBVWAZVGcjAB2YcmOo=;
        b=lgxhIdOCM9BBw//hKTsZa4Vt00lofvMPG2chanYgHt3HCD+dUVmYM793M2yLbkvHZI
         m+CGd4azrIe6BYFX3FVdXwqXOijZPqOzDVJWZ5/Poc10OQ6P6Q7ROD6FoSOIyZDbJhJa
         8F02eyrTzJ7jw9KgvS9odJRJ8QKhYYcuZl0rSeyddK01YQv+iVUqkurBOlzrasRSpT1t
         wHcK65a5b+LRRhg3ynKx0cKnrN7e9lfQ78uGTtt58sPo4SVYgd8O0+Odf+KtpJt2W0VL
         brFRAPaK6qZ3JhOBjSP7iVN3xtf0M4tjie12c8SQyngP/g3aRNYnCuzeVINheg4KZC8h
         T5Iw==
X-Forwarded-Encrypted: i=1; AJvYcCX/vaHmnQZnsEn62C1qrSihDhSdMEPpFxc3iHsyQAOQ+qoZqePA4kX2VxIIwnV74O1HcqjY9XX7+/IvM0Rq6o0vTqGAgJaP/YamRQ==
X-Gm-Message-State: AOJu0YyTwgkERzylob+/sRkI33uh25moCVrL6sm2yTHt+4NiCZ6wl0z+
	IL+fedODD85G7pu6y0MsL3rf/ufoGMJ5XuXOr/W8gS+qndBgiBD7T1+Ktkc67MI=
X-Google-Smtp-Source: AGHT+IE51HiIuz0F5FFcfWMIT/9a4GoCioqqzjUXf2sOZBq/P4mE3IbkcrLGmlWr0Pafiz2LtW+zjA==
X-Received: by 2002:a05:600c:4ed3:b0:413:f4d1:199e with SMTP id g19-20020a05600c4ed300b00413f4d1199emr6895120wmq.31.1710774784691;
        Mon, 18 Mar 2024 08:13:04 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id m8-20020a05600c4f4800b00413ea26f942sm17880628wmq.14.2024.03.18.08.13.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Mar 2024 08:13:04 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Sam Ravnborg <sam@ravnborg.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
In-Reply-To: <20240317155746.23034-1-laurent.pinchart@ideasonboard.com>
References: <20240317155746.23034-1-laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 0/2] drm/panel: Add Startek KD050HDFIA020-C020A support
Message-Id: <171077478395.2130203.2470908227641017506.b4-ty@linaro.org>
Date: Mon, 18 Mar 2024 16:13:03 +0100
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

On Sun, 17 Mar 2024 17:57:44 +0200, Laurent Pinchart wrote:
> This small series adds support for the Startek KD050HDFIA020-C020A panel
> to the ilitek-ili9881c driver. There's not much special here, patch 1/2
> addresses the DT binding and patch 2/2 the driver. Please see individual
> patches for details.
> 
> The series has been tested witha Compulab SB-UCM-iMX8MPLUS carrier
> board.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: ili9881c: Add Startek KD050HDFIA020-C020A support
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/77880bd4512e261372dfc3f49a5ed44fde9d3fa5
[2/2] drm/panel: ilitek-ili9881c: Add Startek KD050HDFIA020-C020A support
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/9fb8aaff8eef56c1822e5267e52d4ab8ebb5b523

-- 
Neil



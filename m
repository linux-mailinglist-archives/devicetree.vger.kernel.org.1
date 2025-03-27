Return-Path: <devicetree+bounces-161136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C28A72AD8
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 08:52:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 22C9A7A4326
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 07:50:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AA3A1FF7CC;
	Thu, 27 Mar 2025 07:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HMJ0RddH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81D541FF61D
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 07:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743061916; cv=none; b=jGljTwG+pi5i3G9/SGKMUwriltxT4ndEEKzEzG+k/uDXxypZSX2hk6AUtJB+Vk8PeemM0AY/AUMomg9scbOFM6/HTztJoBj/UAYUVLLgqZwEz9+iP7tpleUqm0DKNEieSx/KqFFr1bAYvtethmYEKqgQ+42hv7/U0F9mgZBH2Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743061916; c=relaxed/simple;
	bh=lj+SRBXnGsvFf1NOFHTmthPnLRUd7U7gHWbfI3QLXWM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SxPZp0oBJhqyMpz1rqx26OQugZFGrVuiLPpaJZX+XUMIT5TjFxkjTeR0KXQ+j1rPNC3h9kzNhgcOdo56Tv6PGXolAwibfAjTMB+TmNZc1n/47aqLUXwRwWSP8oWI2O/rTHReruq82en1Bw9P5D9RtewMUked33lQRA0MlsoovG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HMJ0RddH; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ac3b12e8518so127125566b.0
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 00:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743061913; x=1743666713; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bkkkpsCZMXpOpBqlhNefevBtrymahUPNIaJzLNjWAFU=;
        b=HMJ0RddH+/NpIkJ12mchDhveiC+QwEQgU+h4kStEpod5PM3WKeCZ9tYfs+018fzovD
         kcDNNo6S8h8yT9wbkt5SI5u6N7bEkyG9Qi3alGB1J0cSjZZNdNOCciO3r2db5t1O8zWU
         6wZYCq2rU1GgWyChIvv1ytrCA7rclRgL6FwIV65gk6rHTTMjxwtkrAvI+wxflDAQgxe8
         w0ruP6ddAlghULef73Y2zHlTPyS0GtEf8ItiXzye8FmFEaUYK/Ah7LcY70ZHn5AGaEiq
         8j8R8oAP0qPRNk5rbNAqvEoOKgaZzKrAmghgkAaOVnvOLWHxVWa/raVrRlgVAVb0Hqcs
         Z01g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743061913; x=1743666713;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bkkkpsCZMXpOpBqlhNefevBtrymahUPNIaJzLNjWAFU=;
        b=Uke2a1n2QO326Hgdm9VT9lNZOsD4/fx3Xv8dW2GDOt2tTWBucumWYyNyMkOq3e94hZ
         S/tpA56CUE+ZfXg8zliBhtH9Byf3AboS83CAxlhlP0kfTcFkkfOGzCdN8ZA/UT+1HiWP
         AI0BuMpnpZKugf5Ap9+k+TyAIr/cvrASbl27GB/2dk8GelLMapWMjUtdatY0kVS3JCRW
         LF4MkKdHnLZop2sbAFCDJztqDS2WDtnKmEqp7JsOevNE//cMaOzG6Ytm77Bk9W7qqWWn
         et8QaN1YsjRbK2aACVh+SC6pee1ecT7bbL7m7vOBmSreFFPhaKcIaw3LklNhre9aDZzM
         X7Tw==
X-Forwarded-Encrypted: i=1; AJvYcCWeN4oEnvAK6a+tx3Exk9p04U2wt099gQ+f6CVGlieP8LKjkiXMEjqWPxl2oPUF4I2GMlFnVGHJFspy@vger.kernel.org
X-Gm-Message-State: AOJu0Ywgq850z4bvUo54KPpoI37DeClL9vygXe5Pcjb6Oot8rdHHCBZD
	91SKdSy5DiTookBrAPrYxPdjUssCxVDXfHCPmtQ4mCsTiWlpoEGNovGGIt9op38=
X-Gm-Gg: ASbGncuy0834WUCrGjEUhd0hVQ80zg9pMqhFWih6tH6cNmfyxB9k173njQK4LCJtNc/
	ULUyO7OdJGQFLXdch0DRRludrSH2dKiQ2QFwY4JLY8gJBA/nWqyKkxKL4wJUA2KKaqTeSUowlKe
	JZjwYaxyXjwD0Yc9ouO82S5aHF6jV0KF6HE/dO4ej6CS6Fw2PBaxWGtmyBgL7IH5t8SjjrAICqq
	wZCKks+14ZfXESfwkUZCkGxVgBkY482RcCsYKhPhLaMOrcVRqYzRcl4kU9Sy1OGri9qXfSLTYvR
	5UH2q7sJwwpI7ALgEvECccr1aAc6ozIU/GunC3fp4Q==
X-Google-Smtp-Source: AGHT+IFV1UJVhREk9/GsUuOGS9IHZ/MvkBCpSqwJ+EdM05OmvKh/YSMogqljBF93/hELR+0ofu4aZA==
X-Received: by 2002:a17:907:7b8c:b0:ac2:9683:ad2c with SMTP id a640c23a62f3a-ac6fb1d6bdbmr197580166b.57.1743061912747;
        Thu, 27 Mar 2025 00:51:52 -0700 (PDT)
Received: from linaro.org ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef8d3d38sm1166893266b.39.2025.03.27.00.51.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 00:51:51 -0700 (PDT)
Date: Thu, 27 Mar 2025 09:51:49 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Christopher Obbard <christopher.obbard@linaro.org>
Cc: Douglas Anderson <dianders@chromium.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, Johan Hovold <johan@kernel.org>,
	Rui Miguel Silva <rui.silva@linaro.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/4] arm64: dts: qcom: x1e78100-t14s: add hpd gpio to
 LCD panel
Message-ID: <Z+UDlXFKbmxCECp9@linaro.org>
References: <20250325-wip-obbardc-qcom-t14s-oled-panel-v2-0-e9bc7c9d30cc@linaro.org>
 <20250325-wip-obbardc-qcom-t14s-oled-panel-v2-2-e9bc7c9d30cc@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250325-wip-obbardc-qcom-t14s-oled-panel-v2-2-e9bc7c9d30cc@linaro.org>

On 25-03-25 19:21:27, Christopher Obbard wrote:
> The eDP panel has an HPD GPIO. Describe it in the devicetree.
> 
> Unfortunately I cannot test this on the non-OLED model since I
> only have access to the model with OLED (which also uses the
> HPD GPIO).
> 
> I believe this could be split into two patches; one adding the
> pinctrl node and one adding the hpd gpio to the T14s devicetree.
> But I will wait for your comments on this ;-).

You should definitely drop these two paragraphs entirely from the commit
message. Maybe add them to the cover letter.


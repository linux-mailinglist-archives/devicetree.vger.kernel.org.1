Return-Path: <devicetree+bounces-78632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D037912F1C
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 23:02:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D536928829E
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 21:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C7D417B51F;
	Fri, 21 Jun 2024 21:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vwNq7w0T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E527617B518
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 21:02:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719003742; cv=none; b=eRjQBaa0/494z2wiVo5LL3HoTuL+GOJiUTDOVCtd+kBegh6I5o9A3s8xMtz3a9QwR926E6xEXQT7twkE56rMuaNMcYtmjcnwV445F8+jejLl4lQqfE1/LHMQnShS63fBtfp0nMt9u+FCdUH0Tp3YAi9BojRabXXB3c2ChWIF84I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719003742; c=relaxed/simple;
	bh=j54JWD/2tp28DryNhfjkHMogz6rdh/lUSRKB3jxkBpQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LBRx1Qc7mY/oQhCYnYf+hC0INb7f4oiINiPXiIaN0uOJVzj0knEjybObyzllYel6OgTx8M9SXxZYiprSwDUVfydy0R4mAM3wPuHAFVfU6jYto+Udh8G+F0/Hy1cQy1zFE2k3AcP8StKiRWipEwHpj6NuAXuw/umOwHYI+cN+pbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vwNq7w0T; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2ebe3bac6c6so29636121fa.1
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 14:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719003739; x=1719608539; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wV3zc5+uIc10gjzJbQ0sxc5XsdFKbsu9Jk8PxhMdqEw=;
        b=vwNq7w0Tjdu0Ffe1+CqgW8futqkiMARlXxkcyLWzPjTaygZj+7pIu37AZLKwaZRYrH
         3i3/9uaYStqekq+g/kX8Bi0j0hKUz8sGNY4dvRCbNKK0bomMoc/TqEZbCK6H2UgRhCMt
         WjNe7papY4SB98EjvLNlOP0dULt3kfMFQ9dS25x0g0YvfHjNy3z013hMl8iW7do7ZPAU
         U9r1ukrHLq72L67br8760dW67+mKT9WD0YjH2/kzm5Zoo4y+VTWYiVcW5wGpoFYB14s4
         xMglJogHRlNghWprSKiDS/L+QRo+qgM96wGyl1QP8r8iVHGNaAwh0Ph9It5fL+mNqGuk
         M7wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719003739; x=1719608539;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wV3zc5+uIc10gjzJbQ0sxc5XsdFKbsu9Jk8PxhMdqEw=;
        b=UC6REEYpwiCMQcv077vMuBqyjZK4B9kG0ntPL7e1hkCVYqcHCYUYm9TvXBxxcVuhcE
         SbGhuQLld3Z2fw14pzZTv7QTLcEYBRC9ryZM5RHgKnLqIpZmaio9J0RkgxM7op99TTUv
         3EgztoDJc1pUthiOT008ztlX5d+T2Ez6hjxpeXvUFVI9SwPIsPqkq2onhyLDQRPtrl6q
         OAFWlCct5cvzYObzpcEYQ4hAl3XdFEamW9F2TOyTLDF+NldjdAyhaL6nKboNOZ4Ecm4Y
         55vMIiAVdeYxmPluFkOJWx12ODOb0iiKm6L6zQacWvDsY2qGdfl0TzyUC8a/QEjcLoys
         n+ZA==
X-Forwarded-Encrypted: i=1; AJvYcCXa99t3ic5oec8iIy7TCpJF9or8Jdy9z5Z8ZaEsvbp86oxy/McV5x2c7VbU++ayTEVdk4XaCgE+JGrVQhH9hx5fQMYVd9HAaLgDsA==
X-Gm-Message-State: AOJu0YyKQtSXC+wbxpKJ6r6RUe8vt/pJkBR9gkJEJ2qP7NyykZGMt6RX
	MVnwrcAGQcLw8+tvSCp/QrUl7OW7NUlzw20NCqlCVs5a356EHVrZiGpoLg+J3ds=
X-Google-Smtp-Source: AGHT+IG4TWZnduOAOc8KqQQU1wC6JQHxbbkWfneKen4zXyBkG7DG8YoRBYSWmAaoMciOyj4A1w5egw==
X-Received: by 2002:a2e:2416:0:b0:2eb:e137:6584 with SMTP id 38308e7fff4ca-2ec3ce940bamr69698641fa.20.1719003739098;
        Fri, 21 Jun 2024 14:02:19 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec4d757fabsm3022631fa.77.2024.06.21.14.02.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 14:02:18 -0700 (PDT)
Date: Sat, 22 Jun 2024 00:02:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qcm6490-fairphone-fp5: Configure
 PM8008 regulators
Message-ID: <p4v4msqx6io7mewq3vceb4d5gxcb25whcnuxehzwvfxh6c3dfc@wliip5e43phf>
References: <20240621-fp4-fp5-pm8008-v1-0-dbedcd6f00f1@fairphone.com>
 <20240621-fp4-fp5-pm8008-v1-2-dbedcd6f00f1@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240621-fp4-fp5-pm8008-v1-2-dbedcd6f00f1@fairphone.com>

On Fri, Jun 21, 2024 at 10:42:31AM GMT, Luca Weiss wrote:
> PM8008 regulators are used for the cameras found on FP5. Configure the
> chip and its voltages.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 105 ++++++++++++++++++++-
>  1 file changed, 104 insertions(+), 1 deletion(-)
> 


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


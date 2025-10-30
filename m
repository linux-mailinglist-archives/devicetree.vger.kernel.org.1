Return-Path: <devicetree+bounces-233461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EABDC2265E
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 22:17:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D76943B80DE
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 21:17:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6401C302163;
	Thu, 30 Oct 2025 21:17:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="or7uHJAn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450E9268C40
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 21:16:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761859021; cv=none; b=T5BPDw0eL/ylvALLsOMGjEwuJyjG9Ffci/zpDDDg95BtbyQ66kfvxiNYErEmGmzmoTU43CM9EjFRsPO7NQ3WKRa7IKKYcBu3H0VmXo8OVPII3ZJyH9RTie7IYsORZkS/76DyWXVskt0++6RDUDhqBOeU/vvp6nAvbcazckM/zXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761859021; c=relaxed/simple;
	bh=z6375WTq4Yvi4ovxduQFOHZwxvwgNlfEn5b74zi9Rbg=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=jBSJy1SUSpnaNC8Yms7neIHvjCWfy9qaShP/mxvXpY8ZZ6GB3VUtpvduCqS4dZn9yWKND6UXfShTk9p36OnlmMR4QI/tq+O3uePFo+b+3iqh6jfB4q50PKZgzYak1JCBLrY/I0/s2QWNd8hkQGkS1qOzyavHf5JV1/AXBcR+nQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=or7uHJAn; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3f0ae439bc3so944947f8f.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 14:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761859016; x=1762463816; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z6375WTq4Yvi4ovxduQFOHZwxvwgNlfEn5b74zi9Rbg=;
        b=or7uHJAne3M168VW5hkOAZiNpBMKOY/XL62YNrIOzzKli99+ZiKYNPGbBTTqHhJAcC
         h8BaAR/XjfhU0KG8oOpSV2rWvK5zON3ddOhOUG94cz6m7Nsivhma0lfflIr4zWBf9OMC
         LkmZa7csBbFQxKFaqTU+y4pz0Q/K44e4M1YycNmryoUWcT8RPV8mhIBw6E6LZz3Nklz1
         e/H1DL38CV1fDfXkd5Se7aElLvaxurMsqbRvB3KRDXdz8ibIlVDeOQQ0YCF2hZE6MUTR
         7ZO95od0DmaVP9INcPeH1fagbYP03duxKLGtFPFtpzWE4k2LsnztzQ891E7KyX/y+n82
         AgSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761859016; x=1762463816;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z6375WTq4Yvi4ovxduQFOHZwxvwgNlfEn5b74zi9Rbg=;
        b=bM1anv533Tl+MUGzbtPEQviKiunMW3N2XhPgbijuvxY/PGgRbPtbJO1AjtWW0P52DJ
         MzhHZ/5PfvTcZXUCjFkS5tdQu2nAfCpsw7fIbm4VbOXoY/e9BsrIiiDJuKbb1F2ltBpe
         WAd1UQb0S++J2pLOX9rQu58VB8kTFve8xicm47616dC5gN/0JeQ5rN15qCnHUJezLyDT
         BwJ3t4aVwKkVkUz0EgDXBySg4cjOhrTK6cxGuup3f0GR0LjTemF4TcEl+xfy0285LedY
         POECDchUshhgVsZl+7nNba2FeshGohqtH4NOliyE1nKqSIMEPs+R//e37lRC48bXBVsq
         jKTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXqdSLWBZ0a/hgxald8uPDMM0n9Y9KwJPwOa/BUJjisVvlpMygL1PARLOkG8CEfFQwgVqc4cibU/iuF@vger.kernel.org
X-Gm-Message-State: AOJu0Ywodh+cMyurCe+BFLDJrCRgt1111N/ZEIlAZZ+fShbHR2F6PqpP
	ubtjhgH36u+y0Gj34vlgBC6YcG65C5WmrC3qub87+W9fG4h1QfZCKlQVxlsX8wiqDv8=
X-Gm-Gg: ASbGncsfEUk6AZvXHXG0a8AT5d2G5WmhTSlSt8xrB7bmqwLN4nHza5k8rayAuuboQvY
	nPJ4xhU1McplXVJYZJPzE81qwK0HPmyJcwb+bHQyKrM8XVCuP9lcg3BkAt1huik9ljqT0ss61ca
	4ZhHlRu1zBBt99keC6JwNJtMNqRe2QDuJpK9TJLhNBuJQHAzXBoL8KMDMwrR9qTe7uOZeBw/saI
	Zw+vz9jhoeMr9sDow4rVp1f0WnkbHCxmpJ16i0eBvWCgLsya3d6ew5xyyeKFvMJDeUGj53Fw2Br
	J3XProfqN0ndNmBCrVkDnJ7D9n65xaY7vn9GY2MCXALNfKGEFtZv08mzyp7Qut5nHmGUOyZYsHI
	YJAhBsQg2QpAZX+BGVfEwHJwzIwfOTxKrhM06vwbnzW40WYWMsYvXYKJPZ9kwqA1iaCWtNvCwig
	lo+Jgf7hdUb0s/qs0mfbqXml9uMQ==
X-Google-Smtp-Source: AGHT+IER+NlrHMyAE87dwI1tkEn0iN9IkW6YNIezVtY3mnKy8AByh4iQATc1QapWcTKE5yrO18mcDQ==
X-Received: by 2002:a5d:588e:0:b0:428:5674:7a13 with SMTP id ffacd0b85a97d-429bd6adccamr865686f8f.36.1761859016075;
        Thu, 30 Oct 2025 14:16:56 -0700 (PDT)
Received: from localhost (054722ac.skybroadband.com. [5.71.34.172])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429bf19c53csm626241f8f.34.2025.10.30.14.16.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 14:16:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 30 Oct 2025 21:16:54 +0000
Message-Id: <DDVYW9DO3Y24.36V1557ZYB2XI@linaro.org>
Subject: Re: [PATCH 1/3] arm64: dts: qcom: rename qcm2290 to agatti
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>, "Bjorn
 Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 <cros-qcom-dts-watchers@chromium.org>
Cc: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.21.0
References: <20251030-rename-dts-2-v1-0-80c0b81c4d77@oss.qualcomm.com>
 <20251030-rename-dts-2-v1-1-80c0b81c4d77@oss.qualcomm.com>
In-Reply-To: <20251030-rename-dts-2-v1-1-80c0b81c4d77@oss.qualcomm.com>

On Thu Oct 30, 2025 at 6:20 PM GMT, Dmitry Baryshkov wrote:
> QCM2290 and QRB2210 are two names for the same die, collectively known
> as 'agatti'. Follow the example of other platforms and rename QCM2290 to
> agatti.dtsi.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Reviewed-by: Alexey Klimov <alexey.klimov@linaro.org>


Thanks,
Alexey


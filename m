Return-Path: <devicetree+bounces-88498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A6993DED6
	for <lists+devicetree@lfdr.de>; Sat, 27 Jul 2024 12:50:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 19CAF1F23B0F
	for <lists+devicetree@lfdr.de>; Sat, 27 Jul 2024 10:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2EA957CAC;
	Sat, 27 Jul 2024 10:50:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sMtsG19v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9C45589B
	for <devicetree@vger.kernel.org>; Sat, 27 Jul 2024 10:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722077448; cv=none; b=HnW7tfa8dUkR8ZlbK+HYDNTTzc0y3DGZuAOYKM0GIewFl9wQUIXxou86gpnVa4pQhebrhIz/N14MTcZkVxPYUnyLI3Grx0RT+1v2QW6YL8FeJXLeJrADNE1IqBD+1KnF1H9W7DzlYLAA4ikN/QBeXTJLlIy4zIGcBfjnLsdC8+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722077448; c=relaxed/simple;
	bh=bgwrnEG4+KKkcqavt5c73pSKb8m7wjKG0GzrJJfQqdM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Kpa0tLrMnF8mIiUlO3ou40eKfZJYuYJFTmXUYpaiRpyXq4c4qKfSZK5EdNcY+LHcVK+R2AgAhu+pC2AS5giP0wAZ9f/lVgS9p5qvsjyEoA0JT19/aKWOJq8MSy0a+zOiVJJTLbtueWCj+5yAdy3TAK9UM6A2ulWnUd2EQ++Q0VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sMtsG19v; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2ef2fbf1d14so21100021fa.1
        for <devicetree@vger.kernel.org>; Sat, 27 Jul 2024 03:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722077445; x=1722682245; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Fd+7g5fHC4ORBdyiR8TQfKxaZDxIN1H5zo/2q04zI6o=;
        b=sMtsG19vvsRqoTFD6ZFVm0VsUEJX+zkGcU2IpusZdKUJYRYysNjxX4k6pOf2dF73od
         yEmhtOx615FKc0JdriBMCnnx3cz0d7lh4ugtjxod/zE1FriLwjZHZ2QgZzDqkfhtLNKj
         efc03woU4/YWlC9auADVptiIhD8jEeXP8JlpTy3RZc8F+SLtRwuBXL/pDOfgrL43aEYz
         oesVnLrw8jK0AyPDDAGKTbtFuuGYk2yenbWaRUSwJYBUsDa8pGf04Vev0K3K8J8g+KVC
         Pwt9NTkrp/vovCUTOImw3eYm1pceZQQNTOYwlfu3LABgWW0lSMNFQNhuQYdOqmKidhxM
         zFBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722077445; x=1722682245;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fd+7g5fHC4ORBdyiR8TQfKxaZDxIN1H5zo/2q04zI6o=;
        b=t4o7/pZeDjpstYKg5e0/8QJw7aWnu2gvXe+xjP2z+r8kcfQVWZxfwTN58ObrLn2q9E
         1EbfXJEXFMBNlDEGcWoKEjWdln/GYnsmyXHjA5d16Sh5ol/0HS9jjvTXc4BTR94UfhUW
         5u5QRtF2y8Fwxly1Bag22KII2XZ2EDqDZiuRcQkR9FPLnTCB7lOXabRTGtewoRITOD3t
         UfeGZYmkkrwqqneVK//dFPxhkAsj9JZSSMcIwWbYQPQFd6SdyApMJykHz7TG0TtZI8Pm
         a4BuGyCauSjH+fRp/S5XFkoRM6dS3I8PbENJ89oGiBOzb4u1j78hZglAZNUxbJjNXLJ8
         GcJw==
X-Forwarded-Encrypted: i=1; AJvYcCW+TZb6yWiTFJ+JnXNSnbsM27B+1BhBhKXd0ljQq0RLbF3fe0xxtEekUEkKlFurwWWZLCrh6LJLi8tICWqQoHgVLcco81ij8nQSMw==
X-Gm-Message-State: AOJu0YyswU8ws51RImBXB/lXBudfkn6qq/uz1zpi7pFHo9bJfmEqYSCl
	4gEXv+qHu+eW/M4sLQcEhfnv3DjOpeFLuEtrKcZKHd06HxVKE9t3DpQjt82564E=
X-Google-Smtp-Source: AGHT+IGbFxS0CZBWTC+NU2o9/gkF52WeV0FeXTg6mfbsZPlhXM51iD5ux4nWAfhR7wpwSmMvyI1BpQ==
X-Received: by 2002:a2e:9784:0:b0:2ef:21a6:7c82 with SMTP id 38308e7fff4ca-2f12f0f45d0mr5019411fa.20.1722077445278;
        Sat, 27 Jul 2024 03:50:45 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f03d04d7aesm6689321fa.78.2024.07.27.03.50.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jul 2024 03:50:44 -0700 (PDT)
Date: Sat, 27 Jul 2024 13:50:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ajit Pandey <quic_ajipan@quicinc.com>, Imran Shaik <quic_imrashai@quicinc.com>, 
	Taniya Das <quic_tdas@quicinc.com>, Jagadeesh Kona <quic_jkona@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH 3/4] clk: qcom: gcc-sc8180x: Add GPLL9 support
Message-ID: <d7rqh2agblkiuectnkpac64rcz2qg6dv4kzfaoenb4boq47ku6@kk34x43mrdpy>
References: <20240725-gcc-sc8180x-fixes-v1-0-576a55fe4780@quicinc.com>
 <20240725-gcc-sc8180x-fixes-v1-3-576a55fe4780@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240725-gcc-sc8180x-fixes-v1-3-576a55fe4780@quicinc.com>

On Thu, Jul 25, 2024 at 05:03:13PM GMT, Satya Priya Kakitapalli wrote:
> Add the missing GPLL9 pll and fix the gcc_parents_7 data to use
> the correct pll hw.
> 
> Fixes: 4433594bbe5d ("clk: qcom: gcc: Add global clock controller driver for SC8180x")
> Signed-off-by: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
> ---
>  drivers/clk/qcom/gcc-sc8180x.c | 20 +++++++++++++++++++-
>  1 file changed, 19 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry


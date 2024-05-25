Return-Path: <devicetree+bounces-69189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D52268CF131
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 22:11:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2C165B20E91
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 20:11:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C253127B70;
	Sat, 25 May 2024 20:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bMoZnpY9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE491126F1F
	for <devicetree@vger.kernel.org>; Sat, 25 May 2024 20:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716667854; cv=none; b=rRJrRsGAxIafdAjVaGhLw6/2uiyp8yPvC3XnNAZmuRTgqFsyYxnJdbU3EqHZ17qnCPFl3vZPTu7R6051ziXK+Xwj/Z/Bok/rYMyebFlzlh3c0DYPdlhcvT7/K7WnwbC2MwnqqGP2qcc7UROgXfo6freTz6DoiNlouy5u33V1mUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716667854; c=relaxed/simple;
	bh=e/SqsMrQ9q0SfIyPEwKs25/TzKjlnC/zHcUIC17p6aI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IKvVaKYN3d+EyhsBGgLDyRolwCJUVjJKb9HFm1HDwWtkONFXtCsMXek7XLFckC1FZPG6H7xnGXy0WVrAxUJtvFt8KZJWX0t/2k6XqfiYUAHg9SMAeUcj1RkIhnhfCHegtknh4c/IbS9TujTHWaKFs9utU/8W8tMY/kb8MfVwxBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bMoZnpY9; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2e6f2534e41so86577171fa.0
        for <devicetree@vger.kernel.org>; Sat, 25 May 2024 13:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716667850; x=1717272650; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hay1dQxWlyajud/Uox2lrtdjKK8bbHNkgB0DvkOyyo4=;
        b=bMoZnpY9R671hsx3NlQGiK9jXGw+I/LKb54rwwpOktCtoRjQ1nP38fzHrBXHKitO5a
         LXNO5hVYlAkqty0UujD3aBjnBaCfu6ko1vJLXy7OvyKXsbvujIpH/BhIUc7EA/C8cA5y
         7CdGhqx/0Z8aKX7+ZdY/IjrJ9pjxMj+CEG/qc8uzttvevcEjw59irkCGJMRLyonE6vFI
         ze4tB+Q2bfvVHHk3c55oxkKK5cgTeiMW7J2h8CLDiiwPfwQpPhhM3Qs/dl+Jy3dHAnDp
         JZZ+2he5X+lOKAMMt+QvDSHsKbwyaN5vZ5e0jvAIvrYjDEt6QN33NF4Bvcox3JRRSzqp
         vZ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716667850; x=1717272650;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hay1dQxWlyajud/Uox2lrtdjKK8bbHNkgB0DvkOyyo4=;
        b=Amh2NwVUNoocSDvGSY1ZLLUIDFHvtTOZfkao36z71D/5O1yxQEAqip0dnGI1K0cAa7
         9STTWPBbZp1/IVvhXUcz+SG1s2hfojCANkAhERztkPreT7BXxqFqra6J8ltCX59ojDjF
         NO7IzdnzqTYSrrtslR301KMYzpF/PgpNKkjFwgz+rnfcwlq2MrnC9OR6Ckp0AUPyUIrf
         mz3X4HORThs/EYX53ALiBt+GljtrfhDN4ExVCks0e81G/6Oi62Hl23lbOFPYkFA4vPcv
         xb+qr0px91wKeWH92sjcEUUKitWR6Gqmk5c5uQESgpO8lfYv5GdlW7XFDMHX5zEbnCh7
         eIcw==
X-Forwarded-Encrypted: i=1; AJvYcCWjurmMl27MuQQWtHFcmbUZuzeJN0r9xd1TaVZli5QzOZA2NHsEn1dGRy+Mnap+2CkUXcN6iadDU50wpMBGRq/OEUeMxwlK8Q2g9w==
X-Gm-Message-State: AOJu0YxB8XGZkebBrEMNzsmGH0Vq4UKztGVWs5CeHcARWzGYz+KTocP0
	fEWFl19Ekxpi/XHKFli1cryPCDbGbQ++0Tt8esUfTlWO6/RyHQeKAV9yu5xaw+s=
X-Google-Smtp-Source: AGHT+IGTic3xlNUhfOJl2SaWSAmP8JtysqkrRSUBGy/UQ+3NdA+Ph+fMfzB/slWuwtwSwhMgkJOMZQ==
X-Received: by 2002:a2e:a9ac:0:b0:2e9:5b89:dc6a with SMTP id 38308e7fff4ca-2e95b89de87mr40099391fa.39.1716667849736;
        Sat, 25 May 2024 13:10:49 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95be009d3sm8493621fa.102.2024.05.25.13.10.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 May 2024 13:10:49 -0700 (PDT)
Date: Sat, 25 May 2024 23:10:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Bjorn Andersson <quic_bjorande@quicinc.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc8180x: Fix LLCC reg property again
Message-ID: <chsvdomhzn3zsncjk4v6inwign4tjzooaxoto2lriltu6pqfb7@vrvqwwe3fsrh>
References: <20240525-sc8180x-llcc-reg-fixup-v1-1-0c13d4ea94f2@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240525-sc8180x-llcc-reg-fixup-v1-1-0c13d4ea94f2@quicinc.com>

On Sat, May 25, 2024 at 10:44:11AM -0700, Bjorn Andersson wrote:
> From: Bjorn Andersson <quic_bjorande@quicinc.com>
> 
> Commit '74cf6675c35e ("arm64: dts: qcom: sc8180x: Fix LLCC reg
> property")' transitioned the SC8180X LLCC node to describe each memory
> region individually, but did not include all the regions.
> 
> The result is that Linux fails to find the last regions, so extend the
> definition to cover all the blocks.
> 
> This also corrects the related DeviceTree validation error.
> 
> Fixes: 74cf6675c35e ("arm64: dts: qcom: sc8180x: Fix LLCC reg property")
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc8180x.dtsi | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


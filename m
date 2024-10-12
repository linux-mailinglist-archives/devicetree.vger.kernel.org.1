Return-Path: <devicetree+bounces-110574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E3E99B190
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 09:33:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8705FB22B78
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 07:33:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA37F13D53F;
	Sat, 12 Oct 2024 07:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CdFhtjPC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4AF13C69E
	for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 07:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728718418; cv=none; b=ZwXUqKfd6pjoaTpiPxPd+4vrYefO2ezLlIjd2X4jXWlEBK7zBpOCQrWY38bZRCIJP7I7ogwG7yPuWRwlFnS7d3ZrjsZ0HEiTgLA48pRxJIsVNUS9MbEMlCu1rMT/T8W9iKKnAfHbrzg1IIPGsYIk4JwsByvqDua51zQ3ByHdPrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728718418; c=relaxed/simple;
	bh=XpkD6PjpGuMLKRRIelZOF4WU1zEBhCUk3dVVAmMMKN8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q4f2RlvhVPgGAPSFGjVQBdDLrZSUj4zzDNb4yGNgbAgcZxEWIiHwMlclf8l0adxmFyW3nj9mfGk5uwKKpo18u4PKcWCp1exip3Bd8N1zjSc328L1s+10/fgSvVd5ahW+1ChRIzNPnkgJyu4tMZElmHoy334sN1Ks09dnO3AIJGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CdFhtjPC; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2fabfc06de3so29129561fa.1
        for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 00:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728718414; x=1729323214; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/HxH5wdzzYhATwK4YbdIT0t+B3UnxhMUOLH9SZSIajk=;
        b=CdFhtjPCbfGBw6G0IN8HA72ttLh3xu3eXD78VaffOjYpcJSKtWiwKwKJvFRhGx5Keh
         yJyoon0mmWO8xXQcVF08ThhAVA1qYdqJp0INDOjJfHES2l6vokETSbT4OE0pbCvvKawR
         7tmJNTEOJrZf1wm2eGLjkbcz8oFYDX90UDGWFbgqKbpTz5PWI4EHovpWehtWJDmIL84S
         uwcWzEThwE57CcG3x2VHWL3IwrCYEPgjT1CXWGTFjTyx0qgTbryCXIMn7Nrq0y20/qee
         Z1xKSMLOYuX/0QdillkvLdRJJhxL0cxnC4st9EWs+mNEdosqmoKxRzLtXp2uUDx0qiwE
         1nTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728718414; x=1729323214;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/HxH5wdzzYhATwK4YbdIT0t+B3UnxhMUOLH9SZSIajk=;
        b=a+OkfnXFdNKKMjURD65trn3gXBMyCTUQJ3a3pgsF0QAY8Ir+dZTkUx3QIdXKJhmh60
         bOh38AOvUjtqQhGUVd7wHS1fdSlzOE85vPK4jQ/Cet4M8G18E4HZH1nzK8e2JBX/KzlH
         ih2I72M/YOEwVlepI+ZQ7JDlvZMinKKMQI7Z3p1nmYm/LEihHXSUgmPqMK82zTXNJTPA
         m9aKzPV6WOEbMbgBkEZXC05H58hmgpDdG/qxxlTmf6cJJSjdBj7IJYJDi16XNlEzXVwS
         Nx1srGRwfCwy5PTZfVdqAltVyRGCf56qS4GzD/S10skr+k7SqjmBO80Rlvl+cAtc1Dd4
         9F1w==
X-Forwarded-Encrypted: i=1; AJvYcCXnZbC2dh4U0/e7PCh0D9DpzYMx2xqmJvuzq9Vh1SR8Z8cwTehieuG1c/gDuFdeNjuzFgdRXY0q7Xlt@vger.kernel.org
X-Gm-Message-State: AOJu0YyO+5SGerhMZzKRfG2yb6NY3zHHLLQu7JaVtUCYEzFtdlH6mp7x
	GzS8OsF9Xg8ZL1YtmEEnYt8EPu0aEYJLIPeFDFvjRCno1ZNzKz19k/OKXw9Vf0s=
X-Google-Smtp-Source: AGHT+IHy04luOQ5N31Y8h7T44ACeH2SV/eM1h6QEEfVLa/G/QNFeE1H9wyjUiEaXrCKjKx7jotKsmA==
X-Received: by 2002:a2e:b889:0:b0:2f7:51e3:fe2f with SMTP id 38308e7fff4ca-2fb3270b0aemr21112811fa.13.1728718414445;
        Sat, 12 Oct 2024 00:33:34 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb24590c17sm7156081fa.39.2024.10.12.00.33.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 00:33:32 -0700 (PDT)
Date: Sat, 12 Oct 2024 10:33:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jonathan Marek <jonathan@marek.ca>
Cc: linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: x1e80100-crd: enable otg on usb
 ports
Message-ID: <vln325xaz2sgshikl4lytdqjlra56khz5q4jp3vzmk3xojrdu4@w3thwqwpgqqh>
References: <20241011231624.30628-1-jonathan@marek.ca>
 <20241011231624.30628-2-jonathan@marek.ca>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241011231624.30628-2-jonathan@marek.ca>

On Fri, Oct 11, 2024 at 07:16:22PM -0400, Jonathan Marek wrote:
> The 3 USB ports on x1e80100-crd are OTG-capable, remove the dr_mode
> override to enable OTG.
> 
> Signed-off-by: Jonathan Marek <jonathan@marek.ca>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 12 ------------
>  1 file changed, 12 deletions(-)

I can not verify this on the CRD, but at least it matches the
data-role="dual".

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


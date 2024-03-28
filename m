Return-Path: <devicetree+bounces-54047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DDBA88F4EF
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 02:55:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF7081C2678B
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 01:55:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 031D51804A;
	Thu, 28 Mar 2024 01:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DBg5y5MS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7880A2CAB
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 01:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711590904; cv=none; b=JLwXahTzYCKJ6PDNRjbTdkIoMKZJTOBSmM91nCNN03D9reEIripOVhOwgG5/7b3Eep/WaMU1qmhN0jbluwt+CdL0LAf2TUAzdvPLbC14kmkEEzGYPzA70cG7Q5LNEdwYkaiZEozcHfNDT8FpMfruHhw1p7S3XBtFT3xZeoXgLUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711590904; c=relaxed/simple;
	bh=HZdnwNoXxWoGzLg2VQ6m1rbwvJy9TXrJcq306nSM7WU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YiCyDoUMChMHYwHBKanmVI77PIa0O+Q8F9tcyqsjDqfG98tNDh5J57c0dtqP9bKr7u0At393l6WmYfeHSScfeJ9bFF6FXTEnioJUxH1K8VpsMcMMZ5dSnY+ZC4+U3vyhXm9KmAaViqY/WQz6dzoQq/ghHQpTqkgER5++HILCxck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DBg5y5MS; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-dcbcea9c261so447752276.3
        for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 18:55:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711590902; x=1712195702; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ALb/aRygHviOk6gluVyyo7V4k4A2Pfn1TEU0psjmkus=;
        b=DBg5y5MStygXbyrwRN8W7e27eaQiA+Y/Tofz7xAZJk9ljVbqrxkCJxly0QyDALVUhE
         GpQoNLMeAHbbkCvnpo7op9xHmxqzeFCc3H4S3+GZ+fpyO1wrTVVBYWu/Cl4sbxXbFR3g
         ZNI/vV8T05pO+Q4+l2wuZ78bPW3KDaxLjD38zGvwM4+EeEa3qHoX1A+hW/YL1pt+9z+L
         XL0kKm/JoAZKaDD02PnvRIgJm7WjMsZJ/PJt1o6yn4ToYv+vrmmPde3yzDNXP7f7EtGT
         5TlAmsVIX+/W9kUgPyxtqmDuZ5R0QljUyv3aubB7slaVnDnOHz4ZskB6kjIq2uPTrd2/
         OJKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711590902; x=1712195702;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ALb/aRygHviOk6gluVyyo7V4k4A2Pfn1TEU0psjmkus=;
        b=i99RdUWz5YSUEjgucDO4xKQZNKoIysFSI2oH1qeFH6i9lO6EJUt6/9pz1kiNyOZGD2
         NFZe0J+Bk3WjJInLV/+WdbFmPBDrUe61VdFxy2FSmELJpPnz7alWD75ZZ3zm8ISFbswi
         oewAr4Ff9GDI49QTg3BYB4TEh5EnNN3ItI4wAnCl1PswYEMS87XaBZRtdu9OjpZeZ/K6
         G8OHKbFwbRr1jyWmHOFzVrAl5tFm0r612NyuVkkOR+iyFcaSpi5GFummnVEiflyyr2et
         yPWEy6HwuEP/nd/kBhVntVsk5bHB/oF3tzDo7HuDaTqAH7yrwiYaNQ4YKA8gyFTEoH34
         jytQ==
X-Forwarded-Encrypted: i=1; AJvYcCVa702GYETbxsyaTP2EbFxXDqdz2rjnoszM3ekbMwzUarJIx+RJTfteDX6yjpm6DpkLku/Hy+Y0yOHTdJ13txf6bw39PDRO1ThBqg==
X-Gm-Message-State: AOJu0Yy/NYMb8O6uruE65HdSq43tv28DXI0pjjGs/vjSrOXFXfzmAmI6
	OlKULUllGNLwq02QdzXQWpb4cgZJeaMPxODlnjQ3T8nbNG6IcCpoPsBlG5EjJ8fv9Wsia22Uutx
	EM577neKzUs1mcAUTyCqypIiQmx+pzxwv/hchZrDOuFUMjD3/
X-Google-Smtp-Source: AGHT+IFCbaTC3zvlel//KUFNLOeGVfLTLHjUeq3vH+xCrngLpNb7HC0ZeixUsAO/5BEehPEYBqCSaYH+eE2+mYXJSu0=
X-Received: by 2002:a25:ab8d:0:b0:dcb:f7a0:b031 with SMTP id
 v13-20020a25ab8d000000b00dcbf7a0b031mr1608022ybi.50.1711590902480; Wed, 27
 Mar 2024 18:55:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240326-rb3gen2-dp-connector-v2-0-a9f1bc32ecaf@quicinc.com> <20240326-rb3gen2-dp-connector-v2-3-a9f1bc32ecaf@quicinc.com>
In-Reply-To: <20240326-rb3gen2-dp-connector-v2-3-a9f1bc32ecaf@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 28 Mar 2024 03:54:51 +0200
Message-ID: <CAA8EJporooWutXaN4DYHK_G5=zY+tW3YLcieAwAX1Xno6KanDw@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] arm64: dts: qcom: qcs6490-rb3gen2: Enable adsp and cdsp
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: cros-qcom-dts-watchers@chromium.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 27 Mar 2024 at 04:04, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
>
> Define firmware paths and enable the ADSP and CDSP remoteprocs.
>
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 10 ++++++++++
>  1 file changed, 10 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry


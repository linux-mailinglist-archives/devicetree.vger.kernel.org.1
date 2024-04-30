Return-Path: <devicetree+bounces-63913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B42648B6F1A
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 12:07:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 05CF3B22357
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 10:07:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73183129E62;
	Tue, 30 Apr 2024 10:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P8/0UXeA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A6DC1292D2
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 10:06:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714471618; cv=none; b=i7MiF7wfiJI9ty87yId2ag88WwxMnDwQPqtI+5rYLo88KmX23j5yrJwxR/f/6qP0kwXIB8YEwkdrM8tIVVsr650M8sE/nIneDvnvNPE9EaIAKzwnPadC3O/vB97kX04N8eemv1XTt5eNgEF9gMgLr8GYOtiMvdWYmQokMvvfjWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714471618; c=relaxed/simple;
	bh=axteUmH6ZxwjdcX+M+kFgVq2+FpkI3vjfHuuHBVqfQI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gxHXx/TClieY76I9Auh88anBirQ9nAbSGr2GUIvoc8nrC3VieTJa9EwHWMTLiDNUmUywvOURza74qwMv0y1f2upNSUgjRq5Lma2D1Npv4WQZbBVeoHTyTaPXqLaCmlUHrke/9hiHMrVvsoYdwMzEfvOBdFN/06C9ANO7v1d8gj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P8/0UXeA; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-de5d439b729so2319034276.0
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 03:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714471614; x=1715076414; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MlCHLOgPqDRLXHqKx+3SitAREHYVUHF6/1Vu/GrVjUI=;
        b=P8/0UXeAedpFngzpVva+dG/ekjEUqzLQDewZ0IiVBKfmBKncpwLUfE33/AkDd+uw/+
         rl17QyBkW0FzgeYj9Zk3iahtPUksRKaDbWzv+2DmbN1fj0MwMz5CywUAQcxXUzELzxyR
         Ptvi90SAMjlsa86Ddx3jHptpnVE0vRt4eiJHerD+j5YzgAb95uv9y9thRhNOckWumegb
         yHow4df75bRryeYg08PaMEQynGF6Keck1gGb7OFWKk8kl1JW0n0zqw0ukDpQf9iEBz8w
         6fyWHutJA37DrmU6cMYuq/JjxN+Kd8OlyW0g8TX9h7kA2QN3ZA1gG/9ANYClcpa2bkOr
         becQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714471614; x=1715076414;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MlCHLOgPqDRLXHqKx+3SitAREHYVUHF6/1Vu/GrVjUI=;
        b=q+rtoUxl399u/jHMImLcw5LH8qIy9Xz8H6QS0DIX2BfUQvUTViPhj04sANSRS1zvYC
         3/Z+nGMVh2TcOHyaDPUcyG5MCbeHx9wSnp3RcRHiCL/nSBV16wzVccQ8Ps/Fh4hHeRQA
         mgGwAB6AC/azvRh/SE/fJDWK4wd+4K+ENPw7VljnhYcqYPOA1J9KdjmI1vSwZV8LHyMC
         KWxlPZ6qmtVjHeI7y3ghn4MzKL/Lb1JVGVsOI6esoMYPhTHgz62tli+hsRv2bcaO59Ja
         49HvQnb1qhHDb6BoRUek+hnl83SdA7kFK08lmwqbSl/jcH4hlWFOiTZbc4DIDIbcMfSB
         MlXw==
X-Forwarded-Encrypted: i=1; AJvYcCX9jhg4ivyyzoSmN5d4oXSc3j08mv7NAiaOHMUwpDaTRGbrB68PmD+/xQA0U77riVyZXlJMegN7I7zMbj5m+SphCCbpet679gDcZw==
X-Gm-Message-State: AOJu0YxtlUoiLNj18DKMfVWvDWS1AJ20kn0Hsv1GwIofR0nbfxZOogYB
	zGk6urT/gqHHaa7GVZOcCvV4kwMCiK7DStC7g31oA0quoIVJQpGpuEbPPA3KWxA+mmVNqVq+uzA
	APxPn6e6fPCsAeAlfM5z9R3Q/sYf8qxI7lgNn6g==
X-Google-Smtp-Source: AGHT+IHoP+iVd7qlwAFzYWTdougtImUWdhZLRa6FuX18dZxDNxyUVqYihujO3viQd+oKo5o++hiv2iH4hzQQlPWUCcM=
X-Received: by 2002:a05:6902:cc2:b0:de6:a86c:b84e with SMTP id
 cq2-20020a0569020cc200b00de6a86cb84emr248624ybb.16.1714471614593; Tue, 30 Apr
 2024 03:06:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240429-usb-link-dtsi-v1-0-87c341b55cdf@linaro.org>
 <20240429-usb-link-dtsi-v1-11-87c341b55cdf@linaro.org> <a35c0e9f-9f1f-44ea-8248-cc632c6db291@linaro.org>
In-Reply-To: <a35c0e9f-9f1f-44ea-8248-cc632c6db291@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 30 Apr 2024 13:06:43 +0300
Message-ID: <CAA8EJppK0YPqQXGmQdZrrkTz-mf5h-vOsoak1p0fSMWLKDuovQ@mail.gmail.com>
Subject: Re: [PATCH 11/12] arm64: dts: qcom: delete wrong usb-role-switch properties
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 30 Apr 2024 at 12:34, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 29.04.2024 2:43 PM, Dmitry Baryshkov wrote:
> > The usb-role-switch property doesn't make sense for the USB hosts which
> > are fixed to either host or peripheral USB data mode. Delete
> > usb-role-switch property being present in SoC dtsi.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
>
> I'm more than sure all of these devices are physically capapable of
> doing both modes, but the infra to switch modes / provide VBUS as
> host was / is not hooked up or present yet

Yes. So it makes sense to add the usb-role-switch property if/when the
board gains dr_mode = 'otg' support.


-- 
With best wishes
Dmitry


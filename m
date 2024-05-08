Return-Path: <devicetree+bounces-65707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F38C8BFB44
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 12:48:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C0B091C20DFF
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 10:48:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1956481AC9;
	Wed,  8 May 2024 10:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ice7gnbB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EB0B81723
	for <devicetree@vger.kernel.org>; Wed,  8 May 2024 10:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715165280; cv=none; b=HehGRp3JWosbUTQ8PaFO81D4bSVEODPS9e2qFQskMA9kcNmEzkVDS/n1/edcxW0xypiF36VyCOa3TTrG+IZS5OJUBECDbc6vieGlgmee8qrsREl4tLjlbOJWEONP8vch4uFiX+QFSSj7hECD4vs9Pk/Ut6jbadZkvjmiEK3XdyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715165280; c=relaxed/simple;
	bh=vpbiHsnsZyeL5F2e2N4ix1aSqeYmPGen1pGmaZRkQLY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R249hKvOikLd3KgfdFJR9/52Mfkx4XvqiWVMlQxOjGCVm+0kRwvahvjSlFchX3M+LrxQZgPh1jR3yAsovTKTC1kE5GiJgM7nf3/jBnSGzbcpk1wP/PDIkPnvuDhy8E+VAOWkBKonGX7dtbF2izK8Ux7ZwRcyPx9qbLZGpXlCvlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ice7gnbB; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-de604ca3cfcso4111840276.3
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 03:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715165277; x=1715770077; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eoZX15B6govTZa1crSFZ03U1Z5NpIxQlGrKdNgAOQcI=;
        b=ice7gnbB6KJJbj+0L9JlGDku5Nnr3B9LNgRo76/G44JSa9uXtlwrehvj5DJNfoLPQv
         +cwguD53v+58bb4beVa0UOB1dmtG/aOugurMw6442qShzZwRYN7V+5OKBb5Q50Lk35mB
         j8eFbN5BDpe+CM7BMs9nzEOI3gJsrNHqeV2TY0HCkqVAqvcFHIoHEQic4ms5NOBFnVIz
         sbtDmBFbaVOyQMuWqhZT/PZ0EfOId+BRPN3PQdzeSJmVbUqWo4AxwheEP3uGP2lSoGc6
         Nva1LfeZ+8y2EEwyrEcFRrlesVDXsms/z2EKA0LNcCcUGRk+0AotoA9N2u1f7A6fDmkz
         MWGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715165277; x=1715770077;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eoZX15B6govTZa1crSFZ03U1Z5NpIxQlGrKdNgAOQcI=;
        b=vIfH996ahPl48hhS8v2i0qDR+ZFzFPas9K266oiIyHiZCUldiMj3Ne24Ch+2QkJ8WF
         2RxKxjCbG55w7lsxVV7kSJ7hwnaOfyAIdiWEHkz4YsWxSy8CI/prMnu4etWxeqao/l8r
         MQ58GAcX0mqnEJZcTxliDSxfsrNZxa4+SOwtHlEv2MsFu8wg5TrkimGEleW9+iirPhbu
         p7+Ur8TWXAj+PO2EoOBVWouvbKEjD6O+pNEzHMJEzb6lwk3ANo/hSlBzNTBK44Jc4ny9
         S38KsbvIRORCGsWtMiIwWMvYVtzbut4CmbRSTaG8rzJhhVZVrp9DV+d1d2C663Oi3aKd
         AEtw==
X-Forwarded-Encrypted: i=1; AJvYcCVnlTUf+RC/RjT4FYlHpstUTK1lp8B8hgOTP1PEubgiYL61wgVifBTp682Fwv5PJMnEbEs25TIAVby+X7fv+8W8hx+haoroJG9HUg==
X-Gm-Message-State: AOJu0YydQw7ANbCHjotao0t0Qc/t0Xfy8r2UlkfP9f82LrvtGkjICPxL
	0XiHAPmEXBQGVy8dHRsFd8QfWsUaYsbQtb8UKVXq3Xt/g4zOE55OjGxSF0rwAl+mgsqIIOXUngC
	vVtK6f/CF2cb3OytV+7yetbuxdposyAsiZ6XB+w==
X-Google-Smtp-Source: AGHT+IEWwosbEieIG3yPj7wVS7/X+26Rl5SJvi7/VdhV3IY6zo46NS8e83824/vbmNXb+zl5PPWRF6ISWsjL+0RJS9M=
X-Received: by 2002:a5b:9ca:0:b0:de0:f74b:25f3 with SMTP id
 3f1490d57ef6-debb9dd9428mr2093299276.60.1715165277491; Wed, 08 May 2024
 03:47:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <171405653305.2527744.3813895380659072690.robh@kernel.org>
 <20240426142442.7769-1-quic_vvalluru@quicinc.com> <jr3ble6sxr5mr6cvm6ldvpyk5j4rucj3xy6vbha6ttoecte3d7@llu6qf6oasuc>
 <20240508102202.GA28609@hu-vvalluru-hyd.qualcomm.com>
In-Reply-To: <20240508102202.GA28609@hu-vvalluru-hyd.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 8 May 2024 13:47:46 +0300
Message-ID: <CAA8EJppiGiaddrNLRGtzjKHfcYYU4LcXLCyOgfy2En7LRggv4A@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: qcs6490-rb3gen2: enable hdmi bridge
To: jr3ble6sxr5mr6cvm6ldvpyk5j4rucj3xy6vbha6ttoecte3d7@llu6qf6oasuc.smtp.subspace.kernel.org
Cc: Bjorn Andersson <andersson@kernel.org>, robh@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, konrad.dybcio@linaro.org, 
	krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, quic_abhinavk@quicinc.com, 
	quic_nankam@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Wed, 8 May 2024 at 13:22, Prahlad Valluru <quic_vvalluru@quicinc.com> wrote:
>
> On Mon, May 06, 2024 at 06:14:10PM -0500, Bjorn Andersson wrote:
> > On Fri, Apr 26, 2024 at 07:54:42PM GMT, Prahlad Valluru wrote:
> > > From: Venkata Prahlad Valluru <quic_vvalluru@quicinc.com>
> > >
> >
> > Please don't thread new versions off existing version. b4 helps you with
> > getting these things right, please check go/upstream for more details.
>
> My internal gitconfig is not configured correctly. Fixed in v3.

No. V3 was still sent as a reply. Please fix the way you are sending
the patches. It has nothing to do with the git config.

>
> >
> > > Enable lt9611uxc bridge for qcs6490 rb3 gen2 platform.
> > >
> >
> > Even if it's clear what this is, I would prefer if you described the
> > hardware a little bit in your commit message.
> > "Rb3Gen2 has a HDMI connector, connected to DSI via a LT on i2cX.... reset and
> > irq pins comes from x and y. Describe this."
> >
>
> Agreed. Updated the commit text to include bridge details.

>


-- 
With best wishes
Dmitry


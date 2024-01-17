Return-Path: <devicetree+bounces-32623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7188E82FF5F
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 04:41:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 150EC288A5A
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 03:41:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F45863A5;
	Wed, 17 Jan 2024 03:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bv6p26MZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 866F9567D
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 03:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705462880; cv=none; b=Ybrq9xo7waTyzVU7a/8C5Y2m5UsWKD7Q3KaDnwmH8SOOz7MbGw2/xqZSMTJG0l6g077tIDNxM+4YIwphOnx48wIxImEE8J/HjpcHbxHxBZTPHSkx1Cd6bTgwVDzfL353PAQEnpqS+eYYqPjXMHWPZGTUtKX9++tlI6mfLzRX0wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705462880; c=relaxed/simple;
	bh=EEId0MKcmgt9JlwyzpnkONCbMwG4GyRqNccGKHgGcYM=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:MIME-Version:
	 References:In-Reply-To:From:Date:Message-ID:Subject:To:Cc:
	 Content-Type; b=ttU/2LkcIBLPc5/gG40+gQmO1k5n8Ufeh4TH4OF8UlpLyR1AjmnB+YI3nidHiTFccL7TXB7BEKFTVk8YC/XAcgJTGaew2JtulVfW6fwROPWPjYuBwEK8MFK6J5QxZUYZYndpoxKERgC/M3FKLCyx7AwV3nFo/aVoM6hi0h1XSN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bv6p26MZ; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-5ff5be20308so8633107b3.1
        for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 19:41:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705462877; x=1706067677; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=phBopZIe8FQ8TfC3rGLxMMXiYtQqVnQSRAWiIxrbEjM=;
        b=bv6p26MZqLAl/5R/0Y29Rbkgsh48keAAVS4W1Jl0aKWGdzVjyz32pArIO8m16HnQSH
         wHR7QoJABLDXClabDfiLlhlLHmF9DWUFvENXRWCDI9F1ps9Yw3JBzfJUf0NkRWCctva9
         AnfS9IZeO9YNrPa7+W5BmeOgCnhqp4jVGCg+pEAqJyuD00gsgqCaDpIJBcDfiS7GZ3E0
         trN941vl9v8tovIeBHdp3SpIB78Mitp8fYtXVUuxQfJPCUll6InBNXaBPZPz3Uzyn4ye
         JrTh353fHBVyDR7Z7xszUmkBjLLfp4YkODdQ8bca9Hgomkg6QGshh9gh7Zw37bK8yDNX
         uMnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705462877; x=1706067677;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=phBopZIe8FQ8TfC3rGLxMMXiYtQqVnQSRAWiIxrbEjM=;
        b=UIgny6g7eAzYn84cAMWGr4o3055lSQ6QL+dceLASsbl1Rp84ds9PeJQf6JDdI6K+A0
         OGO+9RXTgVZU8fz+mCLyqm3s7kfe6JXOpcVGwON1Mlkowbwu+VoTtLw6f5FSHyoELVlW
         iKeHzih12e/g6TRqdSTEQzNYFrPNBR5o91ISbQwaWkCSerrnBJfbymWt2yKPsOZHnzxa
         dpjnHVoor2ZZ+EkrBUIuIglN1wmOqucu0iqTlQ+MYYbS+oBzlpuD5LgPJUkbVbIUo+Ft
         m2S4i9ZTrgS5eguB33bTu0BiIfjQ0w4JUW70If+DDs7k1OOj3ZGSvDXD4BK4YW77IJCx
         vwzA==
X-Gm-Message-State: AOJu0YwiHDbhMgC6j51HYrBIvR6DNl50Yf9A1gsSGMbC5StKrcqZGLj8
	wJBZqLnveL/6EObEi4kyDCTsABgUXSlu1dJR9J6DJCeDHIKDvA==
X-Google-Smtp-Source: AGHT+IGUsoweo6ywE9NuRgmV77Nud0CaiDRCB1/0Ro9u4X0ineqNsXB/m24vmlTNJu02pfPVblJGx7rtTuervD4DCco=
X-Received: by 2002:a81:af66:0:b0:5fc:17ab:2f0a with SMTP id
 x38-20020a81af66000000b005fc17ab2f0amr91991ywj.13.1705462877532; Tue, 16 Jan
 2024 19:41:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240115-lpg-v5-1-3c56f77f9cec@quicinc.com> <CAA8EJpoemnXTmshWrArVOCm0GRSkWZ5tH557nbAjRL1Tgg-Dig@mail.gmail.com>
 <e16f5ff1-9b12-4f90-89d5-f95cbfb859e7@quicinc.com> <6c29ce72-e303-406a-bb75-5b36b0cd8ee4@linaro.org>
 <44ab50c4-c63b-436c-af46-9b4543181446@quicinc.com>
In-Reply-To: <44ab50c4-c63b-436c-af46-9b4543181446@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Jan 2024 05:41:06 +0200
Message-ID: <CAA8EJpq8exe6n3OQnreLCsV+BnZKcu24d==rEKup=+n28nnDHw@mail.gmail.com>
Subject: Re: [PATCH v5] arm64: dts: qcom: qcm6490-idp: Add definition for
 three LEDs
To: hui liu <quic_huliu@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, quic_fenglinw@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Wed, 17 Jan 2024 at 05:02, hui liu <quic_huliu@quicinc.com> wrote:
>
>
>
> On 1/15/2024 6:26 PM, Krzysztof Kozlowski wrote:
> > On 15/01/2024 11:18, hui liu wrote:
> >>
> >>
> >> On 1/15/2024 5:56 PM, Dmitry Baryshkov wrote:
> >>> On Mon, 15 Jan 2024 at 11:48, Hui Liu via B4 Relay
> >>> <devnull+quic_huliu.quicinc.com@kernel.org> wrote:
> >>>>
> >>>> From: Hui Liu <quic_huliu@quicinc.com>
> >>>>
> >>>> Add definition for three LEDs to make sure they can
> >>>> be enabled base on QCOM LPG LED driver.
> >>>
> >>> The "function" property is still placed incorrectly. Posting the next
> >>> iteration before concluding the discussion on the previous one is not
> >>> the best idea.
> >> Do you mean I should update it as below? Seems there is no consumer to
> >> use the function config, do we need to add now?
> >
> > Paste the output of dtbs_check for your board (or CHECK_DTBS=y for your
> > Makefile target).
> I checked the dt-binding file of LPG LED, I will update the dts as
> below, if you think it's correct, I will push v6.

Is there any reason why you are defining three different LEDs instead
of multi-led with three components?

>
> +&pm8350c_pwm {
> +       #address-cells = <1>;
> +       #size-cells = <0>;
> +       status = "okay";
> +
> +       led@1 {
> +               reg = <1>;
> +               color = <LED_COLOR_ID_RED>;
> +               function = LED_FUNCTION_STATUS;
> +       };
> +
> +       led@2 {
> +               reg = <2>;
> +               color = <LED_COLOR_ID_GREEN>;
> +               function = LED_FUNCTION_STATUS;
> +       };
> +
> +       led@3 {
> +               reg = <3>;
> +               color = <LED_COLOR_ID_BLUE>;
> +               function = LED_FUNCTION_STATUS;
> +       };
> +};



-- 
With best wishes
Dmitry


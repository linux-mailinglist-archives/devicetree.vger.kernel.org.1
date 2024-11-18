Return-Path: <devicetree+bounces-122532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CFA9D0F53
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 12:12:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C5E8D1F2251B
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 11:12:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18DD4198E99;
	Mon, 18 Nov 2024 11:12:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tcR6foje"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75D3D198E78
	for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 11:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731928356; cv=none; b=ITQaXpiHys/8zS0fuMT+/YOkKL7Wdr4pDv4N3Y6iAAQAcUfJSAPG+V8apa2sq0LcRV78PmYojFVx9UT3dghdvUJQWosnG6WnENw+zK8w6ucBd8K3RXQf3dL3Th21o4PsH1VUG5RirGVzKIVsP3JVTayIguoqdr/x4hkb0bFAGiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731928356; c=relaxed/simple;
	bh=kf6LlUkHvKfaYWUSRBGDtYSN1GF1H8EH4+zF0AWvGa0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ek1z7nrePJKwTqBsX2diXDe4wmN34mrAkpKmjN1Jh2cwzWCmNyFJrOhzw3AI/WczCnUVQ3ruTNipG+8zSJubq5K/KvDKiZoCqeTFcRf3QnkIWT7C/MPnhCvxsrtcesyJ3zfzrsZTjDJIjVYoegrE2GqYev3RAjhdYdFkTYLwLN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tcR6foje; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e30d212b6b1so2965245276.0
        for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 03:12:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731928353; x=1732533153; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=G22RYx+cV9f6HvHq4QtBk4s+ht1Zmmz+PXqgctOpaeM=;
        b=tcR6foje3v6Xz6LC4j5DaKm11DcLChQu3Gp/45ll8TcXqsAD7FE7aycSNxK996zKF/
         QAGRfoRWwQcsZQg919zo1g49Hxu3ryq1k8dd/1oapATGHteahUYG0ohH+SIhzUgJ/phu
         Mrs7th/oOdVbZT3feSPKsN9Eu2KxDcecFjLgFS4kXXRupnwmu3hFiRmKFaV7SIuxpUDg
         YWwtM9Af8aybY/JThhivjIVRObijmIcir53c5Cymkr+kifEknjdZsj9JLl6V9UFmtBnT
         WoxGDlq+E4cto9MDXWGJ0HSgrQeq/BYSB2RHmy84caKdzEJz7rQoFZh1Ora/34v8E72X
         H56w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731928353; x=1732533153;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G22RYx+cV9f6HvHq4QtBk4s+ht1Zmmz+PXqgctOpaeM=;
        b=NsYNwVqwdDSA9QoU8wWCyKjM1PPN7U4vF7GgWIB7vVmtmkLYpuKYEnAQtoALFbUFYS
         6ppL/nAYoZZHUPFBYnFh5+zkofDTwtcmTTx5qccLc7XCs6jK3Oh52h9bR0+56Onx+yed
         ZZ0BSs0Ej1nFGy/tDk11kB9QYSFiior5KU6cfyP/6Xub06FRaZIQTttvcVIfRftNGXaU
         e3TutBX0IT/3FWsxt8XB2Q9TEU6oRKFPMjUAE6YgnkxomI3+L7LGRqoSsNDHx4urRlV7
         YlVjOOua8PI01NuId0m1KUovBfZ46lnBTpBlE7OX3CDTql+2MI13Gq+X1UQbKNIkOTSd
         wlcQ==
X-Forwarded-Encrypted: i=1; AJvYcCXOWZa74Rn/pznc7YUHKJ20wacU2UDLvkWFpCD13ImQhdRX1RDsb8p+7VjZyBXhqP9zyAt1K2mmXpxO@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8jNprNPoJQgq3cjLd5DrXO24hHh6l1OiPaWBHFwZA6FZgQF/L
	ER8ZQFsOvA9hXPir7UDImhBVuUV7b9k2z1OdrkVKZl0paPB6Mgw9jswajetG/gdOBhWea8ibP0B
	f+d2Hb7UKvuBBZLm3byM58ivuRKYeIKpCinviLA==
X-Google-Smtp-Source: AGHT+IHLY+BrilGuLpgXss8DD+0OdYBfBhz6KB3G2UBFhJs4vHAEcnVQq2ZHDT9bvsudkIPm7u0B5atzMYz3d60CAAw=
X-Received: by 2002:a05:6902:2d05:b0:e2b:e0ba:d50 with SMTP id
 3f1490d57ef6-e3825d34f31mr9904280276.5.1731928353503; Mon, 18 Nov 2024
 03:12:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241112075826.28296-1-quic_rlaggysh@quicinc.com>
 <20241112075826.28296-2-quic_rlaggysh@quicinc.com> <tv7gsceomtdjcymma5ximownsxleg2ujuxcwjgkzj5zhmlscr7@wnyx3bfi2cpo>
 <386f0f4a-b17e-4f0b-90ef-0a960f23b1e4@quicinc.com>
In-Reply-To: <386f0f4a-b17e-4f0b-90ef-0a960f23b1e4@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 18 Nov 2024 13:12:22 +0200
Message-ID: <CAA8EJprotUaKk+H6C+QK8VN4uNWhUrTaoTq7sj+X0x+oJr2qZw@mail.gmail.com>
Subject: Re: [PATCH V4 1/3] dt-bindings: interconnect: Add EPSS L3 compatible
 for SA8775P
To: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Odelu Kukatla <quic_okukatla@quicinc.com>, 
	Mike Tipton <quic_mdtipton@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 18 Nov 2024 at 13:07, Raviteja Laggyshetty
<quic_rlaggysh@quicinc.com> wrote:
>
>
>
> On 11/12/2024 7:20 PM, Dmitry Baryshkov wrote:
> > On Tue, Nov 12, 2024 at 07:58:24AM +0000, Raviteja Laggyshetty wrote:
> >> Add Epoch Subsystem (EPSS) L3 interconnect provider binding on
> >> SA8775P SoCs.
> >>
> >> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> >> ---
> >>  Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
> >> index 21dae0b92819..94f7f283787a 100644
> >> --- a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
> >> +++ b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
> >> @@ -33,6 +33,7 @@ properties:
> >>                - qcom,sm6375-cpucp-l3
> >>                - qcom,sm8250-epss-l3
> >>                - qcom,sm8350-epss-l3
> >> +              - qcom,sa8775p-epss-l3
> >>            - const: qcom,epss-l3
> >
> > No, sa8775p isn't compatible with qcom,epss-l3. I asked you to split the
> > driver patch, not to change the compatibles.
> >
> >
> Got it, I will split the driver code changes into two patches.
> First patch will contain the SoC-specific compatible change and multi device support.

no ands, just multidev.

> Second patch will contain the generic compatible addition to of_match table.
>


-- 
With best wishes
Dmitry


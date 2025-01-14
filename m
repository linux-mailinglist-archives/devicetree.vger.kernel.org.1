Return-Path: <devicetree+bounces-138426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 94248A10506
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 12:09:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A04F91885B24
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 11:09:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C08D229638;
	Tue, 14 Jan 2025 11:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k7dhqpU7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D9D1ADC9B
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 11:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736852971; cv=none; b=hJRZsAb6+wDnBU5o7oIYFAQoD0aq4biZ5jcOk67p6PK13EUSzaw0oflYSHWDTJ3p+j0V3lrgLvrWy2ID0H3Dyuaq7sc5x1qBNo6PQyZQJAz7Ded+vTcF62phyZu0o+OboH/BSeSc9gg6ca6FHcJETG1tEWvvY7TxqxpWvofrjUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736852971; c=relaxed/simple;
	bh=/EXThW0DdZmGZxhAod1B+2JleORmg5tWavc1aUYMhnM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QAlA6hYCsYymGmGgWfypEsxJG2Vqbk9VyAs+BMXNdS8w+gUB30/+bp1EyvMPJOAWxhUDFKkfJcoRKSdtD6p616QanIVPkE81fZ2QLxGv52a1VfS+NpLL32ggEbOAk95MusDRVhUTVF/3W25ptYfntFgaUBJkZGQVa+OFsLpriBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=k7dhqpU7; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53e389d8dc7so5270576e87.0
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 03:09:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736852968; x=1737457768; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lSEEVDHkJF+59l08MDf/HdvOaR7SqGhIx6AtZQIytfk=;
        b=k7dhqpU7ZROKyQbauMpSOiDVU+g34CujlywUDnJf5Es3Q9esKMH2NlgF6mwtUjJGth
         CVPRRo8cgoBTrY4he1PmBXMLAa2HnSbgsvj69YM+V4tVPEa/wfWIZAL/BV626ux86I3s
         FQmVrMvDWczLkmocz8xBXVjvzqyWaSmWze+LkX6bHveIDM/tFIfd178BJp+AtJCmtJf4
         e62Y5l4cYmX5XVfCAPIXBqaT4wa85V66DEjQxn3aiVmFeyS0TRVCNmlhOmyfNG8BRRkp
         4XsR08SeEEO8LUYy+HxT3THI458/23ELz+8obXXA+4hT0Ownx5zxqntkklPuZz+xvYU8
         0PHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736852968; x=1737457768;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lSEEVDHkJF+59l08MDf/HdvOaR7SqGhIx6AtZQIytfk=;
        b=qbfE44oOErAlgNRXUTvgQd+l3/0FkT6jeZldTVd0Ciiid3b8f765UlrKWHKdHeo6Xj
         xp1qOMgmmBkqFQ7CbUgc9bK3x2PKd+8M7iPeQjFU8P/TOokZkk0mBuS2QcYle3r35oys
         C06c96BSBPZoIbJ4S4LyN2sZx8lfIYbbyi1FUXXiSIyLBQ5tZJsQ2lJySNXhIHRH2AY1
         IQkX4PO3DWaenSdDdMRWdoRjrI1DBcLAjYjtC9P7rerANCyAsdVg/XF5nNZfDvnA67Nk
         qTRdnCEXOq9iOfxBJGfV0DyN6BFXz9IdmqRtVYrT53JWuMe/TSuMr2/yr/HcKW8Gr9EH
         yZhw==
X-Forwarded-Encrypted: i=1; AJvYcCXqbbRx2YneJanAa5OWt3Gi8yelobpSIStHN43vswwE/41l7fLH1vIkHz8dviTo+mKJtKKFWIc74bhX@vger.kernel.org
X-Gm-Message-State: AOJu0YzDy8MPlvZPs+h9DvEXEieckfCmr/UUX/iInv1krrdWFGf7YL16
	lW86kwsPLaQNnzbNU/KZWeMly4Vn+on6m9xmUIE8TgmEs9ObkAruF8kXa9ri0ss=
X-Gm-Gg: ASbGncsa7dI1egF1YBrJowFA3e5B1hhhaJ8B/P1EDz+2MrNm8g5+LI9wj8jZyF9bpSp
	yZwS15+CY2DpuVZV6sB2BnZhlzDMF9sbd0jqUS2kzkL52iNHAfa+5sF8JBSnWOf8L6Q5TJFCUNv
	bf9wXbZ6uX/0vkaeb9CpVo5xOT1keY72AXmD/VnzCsCiHSTU+77wCSgRk1QmAD58XS0nuz2gI+o
	qctwlN059hnNjedPlZLmwR6WMNkwPbq0XXeGXDjFbrCySUnBFFNIiL8r1NDNU0MG1oo/eYgGGB2
	vwP4EWPddlV1tDj8FAXT+xDlYgULgBCoNqhA
X-Google-Smtp-Source: AGHT+IGsHdnrR/PD2l0aAbVi6WVa0Zza137alj0eWph9uI3wb2zRUaR8X1MT+Wuu41m9TUTAYoQAtw==
X-Received: by 2002:a05:6512:4024:b0:540:3566:5760 with SMTP id 2adb3069b0e04-542847f9ea2mr7548782e87.35.1736852967850;
        Tue, 14 Jan 2025 03:09:27 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be49943sm1652662e87.25.2025.01.14.03.09.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 03:09:27 -0800 (PST)
Date: Tue, 14 Jan 2025 13:09:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Yongxing Mou <quic_yongmou@quicinc.com>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 3/4] dt-bindings: display/msm: Document MDSS on QCS8300
Message-ID: <rx5jyaehsgdw5cluyjtrn5yvxnd2uemdde5jbvq2dq3dirr2ak@hkegxop7tiew>
References: <20250113-mdssdt_qcs8300-v3-0-6c8e93459600@quicinc.com>
 <20250113-mdssdt_qcs8300-v3-3-6c8e93459600@quicinc.com>
 <lyv4bopv3zw62qll5cjjx46ejdjjmssvhabdxj2uq23mcmwqpb@lld6hynsiwfe>
 <CAA8EJppUEB-c5LbWN5dJoRh+6+nNFH3G9h_uwbuTo=B8kp_9oA@mail.gmail.com>
 <bda8dd18-3bed-427a-bd19-9cb011256c93@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bda8dd18-3bed-427a-bd19-9cb011256c93@kernel.org>

On Tue, Jan 14, 2025 at 11:11:23AM +0100, Krzysztof Kozlowski wrote:
> On 14/01/2025 11:00, Dmitry Baryshkov wrote:
> > On Tue, 14 Jan 2025 at 09:57, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >>
> >> On Mon, Jan 13, 2025 at 04:03:10PM +0800, Yongxing Mou wrote:
> >>> +patternProperties:
> >>> +  "^display-controller@[0-9a-f]+$":
> >>> +    type: object
> >>> +    additionalProperties: true
> >>> +
> >>> +    properties:
> >>> +      compatible:
> >>> +        items:
> >>> +          - const: qcom,qcs8300-dpu
> >>> +          - const: qcom,sa8775p-dpu
> >>> +
> >>> +  "^displayport-controller@[0-9a-f]+$":
> >>> +    type: object
> >>> +    additionalProperties: true
> >>> +
> >>> +    properties:
> >>> +      compatible:
> >>> +        items:
> >>> +          - const: qcom,qcs8300-dp
> >>> +          - const: qcom,sm8650-dp
> >>
> >> Parts of qcs8300 display are compatible with sa8775p, other parts with
> >> sm8650. That's odd or even not correct. Assuming it is actually correct,
> >> it deserves explanation in commit msg.
> > 
> > It seems to be correct. These are two different IP blocks with
> > different modifications. QCS8300's DP configuration matches the SM8650
> > ([1]), though the DPU is the same as the one on the SA8775P platform.
> > 
> > [1] https://lore.kernel.org/dri-devel/411626da-7563-48fb-ac7c-94f06e73e4b8@quicinc.com/
> 
> That's the driver, so you claim that qcs8300, which is a sa8775p, is not
> compatible with sa8775p because of current driver code? You see the
> contradiction? sa8775p is not compatible with sa8775p because of current
> driver patch?

I think you are slightly confused with different similar QCS SKUs here.
QCS9100 is sa8775p. QCS8300 is a lighter version of it.

> 
> I don't think it is correct, but let's repeat: if you think otherwise,
> this should be explain in commit msg.
> 
> Best regards,
> Krzysztof

-- 
With best wishes
Dmitry


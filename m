Return-Path: <devicetree+bounces-184261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5B5AD374C
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 14:52:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D3D5018934A4
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 12:49:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F01902868A1;
	Tue, 10 Jun 2025 12:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dI+u6Ptn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0358629B227
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 12:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749559330; cv=none; b=dMVKJwk7b9+DkRjBPHLdNqCphSG1eRCsLtU2jLtES5SHNYmi1WhqA08iPVgQtRaBfwSB39dypPc6B7Eo97bZ1RM6nONDTwohcZnn2hmYTDNWp2nARTd4UvYhMH6w4ZoTyMAUHykqV7skntHOlbFfrar/ofaV/cVcKwjpegjNLww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749559330; c=relaxed/simple;
	bh=iKluIB/aogkNb4SsYFfMAeMNaCttGkx2Qf5lwDYT/IA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UmtQ2mqkTuwnFiG2jlMZ7vE6F3CbylnZ6UpDIkfklUy2lWPMWsBScjWKpQxjIvQxbb7uD9KTYmbjAjazdxO1G+5cSSJlU4rIWN+xcGPnriBSehSmozRGPVRhmwpy0zU40WFxTwlyH2UVUKO2vRAFiyY6o8FOL7n0HMNuSqnZcKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dI+u6Ptn; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-32a6c0d613eso5240031fa.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 05:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749559327; x=1750164127; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7892+96/YNyaPMEOcMkrUJ4mJoRZWMLEaU8stqv79JU=;
        b=dI+u6PtnPircfLGGMfYWHOL220vHR/2bSr5XXfsH0dXPKPLqVW7AZGWzWjRTrGbB2Y
         MexHDowTion1jrzR59fJ4SFVayTeMTwbI6ZsK2JUCQqw1K63Jo0ydLKFWc1S4NTr+51r
         +Uf2e6N4/vNS5ZxlzZgk6yrS9Jd9j2uX4en3mJ3+DRadWb5pR0xgOqD8or19GR+0mbNt
         FEizI1TB8ZxW8qpzV0clbLwA0rFXx50O6FS/6A2mBr+3FoJp0hsAbvLOp4F+tfi/FGKq
         hpPDmb5A3wm6nwJiBSwOi43JCOotLCR8RP6WSyaLWRzXmWxykIQHbPfYgvqCY5JDF6mI
         Bs9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749559327; x=1750164127;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7892+96/YNyaPMEOcMkrUJ4mJoRZWMLEaU8stqv79JU=;
        b=VyZjf68a9QrDClyvr5jojjtob4XmzTKPxDzH5Z+tA1eduQeZOzTRyYiiOHG/93+hm1
         iYxkbJF8Ck8JZ0e0f+TZyz+yaIInqB/GQ5ttBEjAd6Yi+ndDRaReKB8iKrlHANzTPL7Z
         g0zeQy52t486f/GOdzB/2VBIlANQLtH0JlMD5WJ2Y/6GFQRMLnFya7QP///mPoBrCImh
         qsex3YtY6p1vih+OzYGK3Ax7MRJutf0viZU62SH98BPCOQClyOTRw4ydKDlyFVDajiQT
         /GS2WAbO20/XhJE+soBC7hpgD6xPiEIEYzAONAyNmusyvExoOEOfi1kZUSGLk/yXYfpR
         ZsfA==
X-Forwarded-Encrypted: i=1; AJvYcCW9sBN0hFVUafth8Wngh5iUKYz723MbxPoNgAQG2VcPxtP0Dpy6Q25qETfxNLadcdFkMIU0qRhYx9zt@vger.kernel.org
X-Gm-Message-State: AOJu0Yzi12liMBaCOD0ydsTgxgYVcoFGeCEzxCJnwoH7M0EQozqFQu3F
	IvR/AwtVAszZkIJ1wqefn4Rf/mEWdieZcSM+kz1vqxrRVNsT+H1+DyrqDWvUKDqKdb8=
X-Gm-Gg: ASbGncsYRN1S1Sv2rdRW40nkuCHmHfgQoLsHiXuPMm/Q/WrYVm3PwMvgGslS/7RA713
	U0HHMYhySzfszQLxu91T5gtzUVCwTjpl4C4lJ+DgXtkMxLCpV9MbleGGpkDcFZUrwBRR1H7xfug
	cDkQIgwkxeg3PCxfUTPxE9zhHPzsDS5iT1YhuiiL+FAwg6utIsl7hr8/5wA8vqWEWWbiYanZNvR
	t8Z62c5Jk1gE5Fd/zxu7ajnmEcyunS1YSQ2KW4rIE2Zgyd0u4UIMXDlK4YCmLN5vcwDaZwXh/Aj
	eGh0oHRJHjpdyS0VVDNoZNitMbqekoAuGyxYntdJfcxH2suRGarkKV9bGlB+O68DK5TTNBSilQ0
	b5gUr9+qHLnQBPCNNg+sCuUI2awZKc/olCL0upQqS
X-Google-Smtp-Source: AGHT+IFAhNH7DEpOKaM2NRhWOMRt0wnPmUnBMxXQ+wBRObzbAd5OuDTUSptTXwysMUwvBMWR/vTvgQ==
X-Received: by 2002:a2e:a549:0:b0:32a:62a2:f727 with SMTP id 38308e7fff4ca-32ae32324a6mr16684341fa.1.1749559327097;
        Tue, 10 Jun 2025 05:42:07 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32ae1d00c11sm13765191fa.106.2025.06.10.05.42.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 05:42:06 -0700 (PDT)
Message-ID: <26a0a50a-849a-4a2b-87f7-af11b6f91ea1@linaro.org>
Date: Tue, 10 Jun 2025 15:42:05 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: media: qcom,x1e80100-camss: Sort
 interconnect alphabetically
Content-Language: ru-RU
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250610083318.2773727-1-vladimir.zapolskiy@linaro.org>
 <20250610111145.zp62zx5rjmezvmkb@umbar.lan>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250610111145.zp62zx5rjmezvmkb@umbar.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/10/25 14:11, Dmitry Baryshkov wrote:
> On Tue, Jun 10, 2025 at 11:33:17AM +0300, Vladimir Zapolskiy wrote:
>> Sort the entries of interconnect and interconnect-names lists in
>> alphabetical order.
> 
> This looks like an ABI change. At least you should explain the reason
> for the patch.

There was a number of comments and notes on the mailing list that
any changes to dt bindings without users are acceptable, i.e. no
users implies no ABI change.

Also it was used as a justification to accept dt binding documentation
changes without the correspondent .dtsi changes, like in this particular
case. So, I believe the room for fixes is still open.

>>
>> Fixes: 2ab7f87a7f4b ("dt-bindings: media: Add qcom,x1e80100-camss")
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> ---
>> Another fix on top of https://lore.kernel.org/all/20250502204142.2064496-1-vladimir.zapolskiy@linaro.org/
> 

--
Best wishes,
Vladimir


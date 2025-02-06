Return-Path: <devicetree+bounces-143684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A55A2AE96
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 18:13:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A8901188B285
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 17:13:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED46B23957A;
	Thu,  6 Feb 2025 17:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="SMvR7Uen"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCB6239565
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 17:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738861983; cv=none; b=bWeoNoQroaElM8JpPGZ5FVY602HEDt7OvmzY9AfUzdpMUK0EumBXtndvk2aa0rgr/GEvv8MqhjAxTIGLabHQvosh1ksXuIYt7rLE85k++2X94NZ2jLHyGBQakOR2dx1Cysg/gE+cDs6iAlJ6p+9mxSSxLzMBbNE+LLuhdn/PY4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738861983; c=relaxed/simple;
	bh=JD2RvonAJ9DBFMXuKGU9NeO0g72GuuyBmB4wD3G1Gnc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cnlqtXGeeg2bJLA66lKaUIpx1Znw/Q86uFtZVlnmUQeNG3ZIAS8hpjQhJSlTFxrFwc57abvOXBOC+kP08nT+wkzyGYzzOLiOSjo0007BqWubMdgZ77rq2ONMgYIyK5m75uGziSJUqS2Te1U+nxbkOUaRnLQNjh5nAoSXzhZhB6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=SMvR7Uen; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5401bd6cdb7so1254347e87.2
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 09:13:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1738861978; x=1739466778; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O2RdyVj5jOCd3ia3pc2+O1XE+ZT30tuGGwdgIs4fbdI=;
        b=SMvR7UenLjMWpx3bCiVlgHwYA5MZgaTQegLwMQQ8By0XAkIfVAIu45Hp9Ut3eFUZHY
         qtwZWL3lToreh83rwj4epHAZpRQ6nfa0DcsdUOCCOx/I4Jc7Ro2PRfudDDAquIehkkQs
         jzgIfFQyryXIVkEkrUWDcmo9FZh3oNh53e+cg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738861978; x=1739466778;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O2RdyVj5jOCd3ia3pc2+O1XE+ZT30tuGGwdgIs4fbdI=;
        b=RYDseIVBCcjOBOtgBNjh7iav1PhPTsMo1Wg1fbAVAWAItcBWfjJWgawnXUygKivKap
         Ex/v3t5WuBeZ0UggV59/I4D5kkUUXeQYOymafeWCDDlgUb38NoAirXgiKRxUrBTcT/9Q
         9pfkc5vA9VLqmEM1wyxVF72JXXKuUZmGpVDZgUgnmI2j2Rqa0WS+wGwN9ogbB20VmgI1
         IRipgQPbTBrjGIvE7/xRsNcoUIojANRCh+pUD94NZgDrN0JGdxfrfNaDs57RKfvRMGRI
         C8MDS2MyN2TdehjLhzSaA1KY1ubt23G4/Km3pyARTtOEnJIMsePFSzXarf53hJMppdc1
         UjpA==
X-Forwarded-Encrypted: i=1; AJvYcCXCWEXvCIUsG96ZfoXHDKu1UNn3evZBSolSTAVcvrqfohBnvKVL63UYh+PAPM3r0Y7L3g1bL1hggS52@vger.kernel.org
X-Gm-Message-State: AOJu0YzDe3EDVw4Ha5uCoBvs5jhJrGOFRGcaF7/PUuJUb18jjfLhzrds
	jgkjoMtVwRLlh3CMuQs/kCFVWod7WeBkAXA1IFneI/O6YkzZ3y9jWo/yoT4lh5VvB40/bnP+1Oj
	L5w==
X-Gm-Gg: ASbGncti45qcaoirOrb80d+elN+b55qqXxpSVZ+i+GH1nhfK/nEpJVt/OKioB7VZ1HS
	g0vROS2n6ftS+q725mw7FQfVM5E2HcxFTS2dhppQK+e4LWJo6fIPtm21G+UrqAYr40MAXOsp6Rk
	YzYV0bK5P/8sabkBJkIeCFd3kNOdR0CmFjREBM0LJcsuaKkOIKGqRdpQxGO7fltdENPYfkSM7kr
	CQn6Bmz1CZJ5zNEWT31Gh2UXtwdjifI0CnrgKuWg/F/blgB+hqZFlQSjuRFFTZbMdVVQRXkjmdG
	KEe1xoMZFQaOA7zymTEeNmMJ2ZSfcVwhyG7vKq46VqmBeQsromplL70=
X-Google-Smtp-Source: AGHT+IF0yyq0jXXx86wiubAxXnmIpxDieAke4EZuK1Dc2ndL/8cGI+TaDcklt4Ywkc5ImiYfLVJ+/g==
X-Received: by 2002:a05:6512:3b86:b0:540:3566:5397 with SMTP id 2adb3069b0e04-54405a181f3mr2676496e87.22.1738861978186;
        Thu, 06 Feb 2025 09:12:58 -0800 (PST)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com. [209.85.167.47])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54410603fffsm177935e87.220.2025.02.06.09.12.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2025 09:12:57 -0800 (PST)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-543e4bbcd86so1316418e87.1
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 09:12:57 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWnOMZulSA5G3TD2lRo2SQYsMnTTjT0OKQjGgcnnRWkTwccaOBTBgbeToqJnzgL/riYPSXDY3E70tk2@vger.kernel.org
X-Received: by 2002:a05:6512:118b:b0:543:f1a0:9e88 with SMTP id
 2adb3069b0e04-54405a67331mr3046321e87.32.1738861976679; Thu, 06 Feb 2025
 09:12:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250206131300.1295111-1-yelangyan@huaqin.corp-partner.google.com>
 <20250206131300.1295111-2-yelangyan@huaqin.corp-partner.google.com>
In-Reply-To: <20250206131300.1295111-2-yelangyan@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 6 Feb 2025 09:12:45 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UfWJoUsKzYMkyU3U4Yn1ufAs=NHMCDL+db887Uec9fww@mail.gmail.com>
X-Gm-Features: AWEUYZkoK-bVDmYrUZC5ORoOtjHMjmCrwad94ZOQdmJPAxCPBnzPQFDM-XcGn8w
Message-ID: <CAD=FV=UfWJoUsKzYMkyU3U4Yn1ufAs=NHMCDL+db887Uec9fww@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: vendor: add csot
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, airlied@gmail.com, 
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Feb 6, 2025 at 5:13=E2=80=AFAM Langyan Ye
<yelangyan@huaqin.corp-partner.google.com> wrote:
>
> Add "csot" to the Devicetree Vendor Prefix Registry.
>
> Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Doc=
umentation/devicetree/bindings/vendor-prefixes.yaml
> index 42d14899d584..375f1f7c79ef 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -336,6 +336,8 @@ patternProperties:
>      description: Crystalfontz America, Inc.
>    "^csky,.*":
>      description: Hangzhou C-SKY Microsystems Co., Ltd
> +  "^csot,.*":
> +    description: Guangzhou China Star Optoelectronics Technology Co., Lt=
d

Doing a `git log` on
`Documentation/devicetree/bindings/vendor-prefixes.yaml` shows that
most patches use the subject prefix `dt-bindings: vendor-prefixes`,
not `dt-bindings: vendor`. If device-tree folks care about this
difference and they don't want to fix it when applying, they might
request you to send a new version.

In any case, that's fairly minor so I'm OK with:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

I would assume this will go through the DT tree, not drm-misc. If this
is wrong then someone should shout.

-Doug


Return-Path: <devicetree+bounces-197177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08923B08662
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 09:20:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E1E593A7701
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 07:19:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BD6C21C166;
	Thu, 17 Jul 2025 07:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="GCNZBWW0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com [209.85.208.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1A4D219311
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 07:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752736809; cv=none; b=BevosEm7s6xLNXoQhQe/X5FghddkStgmbjgJ1hYTPKXpwyJScshzc9VRwfDV8GX7Wt5VGcKL1GNQz5oPAoeL3LLLmwnc2mrumGAMMoCmgkv3KVNtTJKfbku9+sRuAYrrtlxmHI2UIalx7Ivx5wL9zAELur/VHVVl/niuuNBDAgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752736809; c=relaxed/simple;
	bh=1aZeis3vma/ediM1poNKu6JuGfB4CaNR4b2CAxnOIck=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=KvCdevOOTNV6T9C3xjmy6RLupeesAjpM1FgUMz2/sY+cHwcn4Agw5SKpUUc6oy6AwucRRQW/yjqiEl1jVKrM4ReM135ED60Pwlm66yRiAzny8u0Esx/y3cUWYhIam7lf2LixIqHFUOXFBbeIYLKRkEaitHCYKXvtMYVru9Xs3to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=GCNZBWW0; arc=none smtp.client-ip=209.85.208.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f67.google.com with SMTP id 4fb4d7f45d1cf-60bf5a08729so1242455a12.0
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 00:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752736805; x=1753341605; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ds0KxRVsVnCi5GTnUrpIjwbuU2zKD6tXzYfIxeDgpac=;
        b=GCNZBWW0UIEi/Tde8UD5c03KWqNPqmCEdasTU+f/XNIGCV6uMCI/69L99gyXhoVp/w
         iRVwRv/SZ3dLQVimlgxm9tRJzObiTGIY+AjmEuAkV8Q0+KpTK7aBJ6zcGOyWmykr0sH0
         r/YVRZsMABhNlI6Ic34F0QKDILB/OIyW3YEcdgHmQH1t/cdTtM9X5uLWcyYUdeIsp3wW
         aoqzH6hSQ0LjAGAXuQJlKTbjzAj2F10i0Lpl/5lNMM/u7Hp/5ClJWcd0bDw1CKYKd57K
         dCJmClD8+KMgvxt4HJA5k6ZWfUFvX4lWwKsJX6ZlS8SJANCsiZRMSXOBHpw4UF8HalEi
         6XWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752736805; x=1753341605;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ds0KxRVsVnCi5GTnUrpIjwbuU2zKD6tXzYfIxeDgpac=;
        b=nCVS2pAuD0astH9X1XQDOugj/Nni4wnXmcM1MvLFpdIpawdiPwM52pW5AENSfa2ATh
         1GUH0OMGzYgJFYvNprJHqC7372IW/xKH5h2cIiTRTOi+TKZ7mVbfiyQ2PSQCzWUoGdBS
         sI8d07dYsHvcK+NoYIlJ8jOOYrnHooFjl70Eje+ntQ+p+zNInU81Fhb6EdkNMZGexHl9
         FUGFu/aeFej1ey4b5YFIXoTuA6rD5ar8YqaDTmRlTqMN7FPgHkTyLqVDz/EPXejeH3yW
         0MXegUFCJJ3V1ijn1UvVnOyhLj51T+HHBXo0nFBvSISpWmH8AfPMMTNMjKWjnFL3btpX
         FqVQ==
X-Gm-Message-State: AOJu0YxP/9n1Z0RPmcKkfKwNKh5XJGyaL5SQC8mkjUL2uL6Cnxd/TyH2
	GpLLcIVJQ4MiN04BBoa+Zny3WnLhwGh4ZcvNgXzbvLUyQ7sQnrftrAxfRpHZNlmhuP0=
X-Gm-Gg: ASbGncv1A3DROjKwqJDbJ0HrJGPR93UDsM5HtTrT7Rtv6Qp1WFvl/ev78kt7O228Ypt
	rhhRc/XgArkbX5sfU2rk3o9qJH/KgG76zvAfrJLVAGReRXAex9E5AF2aPYRxY9UkyJmdGufXxOR
	NK30Hol6ioBTb+/ohY/MqRrM+g5jFaoJW/jjS42IDtdLfIIoi02YFAGOnyAKU7HQunRPnZRTejI
	JFRWZOxus+1IU1rOIelnf+mhGrz0BtkWLl+bMZUZHWJJizpVtTsrhY6AN6KnKvXTSpKluaSPpz4
	sywAGXnCRP/WDH+21lFic+8ISKm4HRS7k0qBJMsvSzkSwJK30epvSbOS0lV7Dw8HI5jQoO+MxFt
	P0iAyPHIjg+LWJ53L1QosGXS4Oh0USxojen7+vHLJBAJEFpE3FYbwsLMt
X-Google-Smtp-Source: AGHT+IG2hDv2K216WzVbMCe0wIlm1Ij0bAYvzV4KV/5gVYFra+yeIkTw2eBkNA6ZcZTCjmFQQ8r8DA==
X-Received: by 2002:a05:6402:5243:b0:5f3:26bb:8858 with SMTP id 4fb4d7f45d1cf-61285bf5095mr5097862a12.34.1752736805170;
        Thu, 17 Jul 2025 00:20:05 -0700 (PDT)
Received: from localhost (212095005146.public.telering.at. [212.95.5.146])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-611ee1716fcsm8066563a12.7.2025.07.17.00.20.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jul 2025 00:20:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 17 Jul 2025 09:20:03 +0200
Message-Id: <DBE5CBN6IUD7.B03MK0X9PDFS@fairphone.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: remoteproc: qcom,milos-pas:
 Document remoteprocs
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: <devicetree@vger.kernel.org>, "Mathieu Poirier"
 <mathieu.poirier@linaro.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Manivannan Sadhasivam" <mani@kernel.org>,
 <linux-remoteproc@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, <phone-devel@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Bjorn Andersson" <andersson@kernel.org>,
 <~postmarketos/upstreaming@lists.sr.ht>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250709-sm7635-remoteprocs-v3-0-c943be976180@fairphone.com>
 <20250709-sm7635-remoteprocs-v3-1-c943be976180@fairphone.com>
 <175210021011.3927964.2963774922041119366.robh@kernel.org>
In-Reply-To: <175210021011.3927964.2963774922041119366.robh@kernel.org>

On Thu Jul 10, 2025 at 12:30 AM CEST, Rob Herring (Arm) wrote:
>
> On Wed, 09 Jul 2025 13:13:07 +0200, Luca Weiss wrote:
>> Document the bindings for the ADSP, CDSP, MPSS and WPSS PAS on the Milos
>> (e.g. SM7635) SoC.
>>=20
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>>  .../bindings/remoteproc/qcom,milos-pas.yaml        | 201 ++++++++++++++=
+++++++
>>  1 file changed, 201 insertions(+)
>>=20
>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/remoteproc/qcom,milos-pas.example.dts:2=
0:18: fatal error: dt-bindings/interconnect/qcom,milos-rpmh.h: No such file=
 or directory
>    20 |         #include <dt-bindings/interconnect/qcom,milos-rpmh.h>
>       |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

I forgot to mark the milos interconnect series to be a dependency of
this.

If a resend is necessary, I can add it in v4.

Regards
Luca

> compilation terminated.
> make[2]: *** [scripts/Makefile.dtbs:131: Documentation/devicetree/binding=
s/remoteproc/qcom,milos-pas.example.dtb] Error 1
> make[2]: *** Waiting for unfinished jobs....
> make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1519: dt_bin=
ding_check] Error 2
> make: *** [Makefile:248: __sub-make] Error 2
>
> doc reference errors (make refcheckdocs):
>
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/202507=
09-sm7635-remoteprocs-v3-1-c943be976180@fairphone.com
>
> The base for the series is generally the latest rc1. A different dependen=
cy
> should be noted in *this* patch.
>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>
> pip3 install dtschema --upgrade
>
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your sch=
ema.



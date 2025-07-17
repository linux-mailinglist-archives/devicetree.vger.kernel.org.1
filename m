Return-Path: <devicetree+bounces-197138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 479F2B0850E
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 08:37:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 66BC07A149E
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 06:36:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77588215767;
	Thu, 17 Jul 2025 06:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="TYoW3SNH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com [209.85.208.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5EB31A841F
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 06:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752734257; cv=none; b=hKBkw7+Jjnr/l2cNxFn0sVwXLKuxLQxQNfGC8BPjCQYyzONp35HzyX4KRNzUEYDxsCN3mcdEtMAywg87S4H1oN+DuhgQ9AHcoJ8DBrgaykt4s7lPbppneDQwyNck+HM0KQB+a/9xThEK3dEZkVAd5yCnrZgagIKRzmS1cMGI920=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752734257; c=relaxed/simple;
	bh=Zni4kW5i/r0n1MT3GlQi9RAdKp2l+BHLM9aozZDydqo=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Subject:
	 References:In-Reply-To; b=h8raQU3FqA7bczkWEDli6OexaBwS8XxnvvwF9SLBMgZ0BsuyzOgkafio0EoXiw1OcEHdw2Qz6S4b2HTmn0IMpkP+2kyTNMPxUOYj1tL61QEgg5QoFmwHejCUzUArpkJWHWfqEZUMh+kO0SGlEiGgtNVtECv3qVGcE+hUBMw1hV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=TYoW3SNH; arc=none smtp.client-ip=209.85.208.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f68.google.com with SMTP id 4fb4d7f45d1cf-6099d89a19cso1138162a12.2
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 23:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752734254; x=1753339054; darn=vger.kernel.org;
        h=in-reply-to:references:subject:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zni4kW5i/r0n1MT3GlQi9RAdKp2l+BHLM9aozZDydqo=;
        b=TYoW3SNH5iZ8nWo5x3YTIv2lAGyP2cJ6eFc+4n5U1Mm0CtpMZ2YBnGkTRUOJpuCmdH
         Iy9Qsp2y9hjswmFtBWIDG4gENSbKZDCEFToVQNVboOnwURLu3W0Pa74dqbEnpjumkhPS
         unFI294L37Z4DL5MyLvyngf/SYv+7LCkQ2NRVj4V7NDTkNkC2o2797jd0xMNJ4vaOIYY
         lisKCrttO+Viw8XKylroIlqqZc8j0OP4Bzusq82RwxoWYWIc330OBtyxrAdne2CL8WZB
         Bq7w4r/+Qp27cctQB1AQ7vcri0NsSiCIVC7shsmk0ySJZ86NsjZp69cQMGQ6UKccLAaM
         nJsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752734254; x=1753339054;
        h=in-reply-to:references:subject:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Zni4kW5i/r0n1MT3GlQi9RAdKp2l+BHLM9aozZDydqo=;
        b=p8qY5EvuRAv5clzIDlA9cXgmDvgrFZ0Dnigw6dQiEQzEzyb+ajQdUeVYBcaoAk72AH
         lBCODpk2tlG2eWgc+ZvHl5d+iS3W/l9j96R/jwLVDhLuCdOje2VrhkVn8MFnCAzD3Du0
         BrGa7dpQBlUSVp/voj5cdpZTUhM9P2wFlz6POcq/8OII6y4yGdOQO1d/EX5lV5Rr8MZ7
         3C4mbqlmRO0nkkJb7A47CNSojecOlR22H42FQEF0upKuUrkGU37cbaycq3J940w78AwH
         IJxDzyakKTTzMWxSGoFqaTXRC6qNPqUhPXcwU2lm+iPftpnKFXH5o5EfFI+6PYnnugTW
         WMNw==
X-Forwarded-Encrypted: i=1; AJvYcCXDL9xjnTnVC51OdKaNftl7Nk7elGAQzSVsxbuDwTdqq48u3QGYFxN3c2oHAnp69JqVbNb7f6FkoYur@vger.kernel.org
X-Gm-Message-State: AOJu0YzdVdJF5Qnp9WJuoWm+KJxyYqRg/qSsaQDVqHAVnawM8YauMJF3
	R3Bqd6wMn97tbH7t9fU/2nNm6pRnTbxDPVRBDo4fIcz1i9XjE5EjvRZOXuKEHl4Bc/A=
X-Gm-Gg: ASbGncujLs5txjdzlank7U36id0HOxHj/W3JzUCnc0bWcYpMBzR6u8cO93dgPY/KrBn
	xN4p+EV5LAxz74fehvYN9evoEVjpHOcomA5wd73PLtiMB8FlSV1hYpO20qoZv2tj/R3TX90eKqw
	cXJVUTTufTIrojL4Fxk57jSGAGFGcEq0R/6Ubw5bLNDdYA/JJnV8QREzqW89RL8BLI1lR2VMMhQ
	j4it9yuQTKZk4QXy8iu6sW5APlZQVnbmlF/0ldULkLGwyntCyq8HRHkDliRViiUpjiMkXw0sMG1
	dHidDpqNtZC8I+wGBhrFg0684vfSseev+LgD8l3rP0bGHT6eEza2/BfN6Dwx2yhSnAfmLJ7jauj
	/PCUUIRVP+E9ODmYv7D4UmY2TtxDKSupxek8aVc+UzS4/AF/m/fDLFgWz
X-Google-Smtp-Source: AGHT+IGz1stbTnvtFDRlGNi4Bv6lmWH+rbIuhvgmaYas5MP9Lr4lEhFJPcw6uCq9/uRql5jJ5FaC2w==
X-Received: by 2002:a17:907:a588:b0:ae1:f1e0:8730 with SMTP id a640c23a62f3a-ae9ce1c2d25mr614526466b.57.1752734253912;
        Wed, 16 Jul 2025 23:37:33 -0700 (PDT)
Received: from localhost (212095005146.public.telering.at. [212.95.5.146])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e8294b5fsm1285352466b.125.2025.07.16.23.37.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jul 2025 23:37:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 17 Jul 2025 08:37:32 +0200
Message-Id: <DBE4FRROKPLE.2O2PPHRU80073@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>, "Bjorn
 Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: arm: qcom-soc: Document new Milos and
 Glymur SoCs
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250716162412.27471-2-krzysztof.kozlowski@linaro.org>
 <DBE47UNGCDLE.3AZF5XENB5BEB@fairphone.com>
 <7a552f24-50df-4c94-9bda-50712fc72485@linaro.org>
In-Reply-To: <7a552f24-50df-4c94-9bda-50712fc72485@linaro.org>

On Thu Jul 17, 2025 at 8:33 AM CEST, Krzysztof Kozlowski wrote:
> On 17/07/2025 08:27, Luca Weiss wrote:
>> On Wed Jul 16, 2025 at 6:24 PM CEST, Krzysztof Kozlowski wrote:
>>> Extend the schema enforcing correct SoC-block naming to cover Milos
>>> (compatibles already accepted by some maintainers for next release) and
>>> Glymur (posted on mailing lists [1]) SoCs.
>>>
>>> Link: https://lore.kernel.org/linux-devicetree/20250716152017.4070029-1=
-pankaj.patil@oss.qualcomm.com/ [1]
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>
>>> ---
>>>
>>> I asked for documenting the Milos name at v2 of Milos patchset... it di=
d
>>> not happen and patches are already being accepted.
>>=20
>> Sorry about that, I seem to have missed that.
>>=20
>> However I did not see any dt validation errors with my milos dts or
>> dt_binding_check on the bindings, where are these patterns relevant, in
>> case I should touch it again in the future?
>
> There would not be any errors, because how these bindings are written -
> to ignore other, unknown names.

Ok clear, thanks for sending this patch!

Regards
Luca


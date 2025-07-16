Return-Path: <devicetree+bounces-196891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A31B07802
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 16:28:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 477541882063
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 14:28:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34185246BC4;
	Wed, 16 Jul 2025 14:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Zq14PDnD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B88523F403
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 14:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752676079; cv=none; b=CwgbJJ9GrO5Sv4brdgskaUlkS+0pdwzVoGeoU3qmwAfZvDx1A7jHfVXttLrbA/YgydpSiF0fy+9uJo9JycdOk8p5ojoaTuZKl9B+SwFr6cX69yt07SJkma0gzb4NlV0TngVSysMcYC0k1qISM/aRs+yr0vqMf4tzGs3hLCmmfb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752676079; c=relaxed/simple;
	bh=HzXwiqqDnfe41YiTu6uYFU8UDZG1ohDw66m7kk99BP8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EAE9vxdair54c7VuINbK5bPVxqyTTxUFnYC5QNXlVD8Wlq8/HYp3L9W32X42BwBiEeZw0Y7TZI9uVyrXRuEKnkzG+Fn4IlPrxlDTe5Km/IKlXRtalmhGxKfB/3RppB4EeOrK1OIorSHmL9yAKe4N5+UdZdk3yK3ArIron63GJ5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Zq14PDnD; arc=none smtp.client-ip=209.85.161.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-615913ff67fso623605eaf.0
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 07:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1752676075; x=1753280875; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VuHTPSN5ob/sxMMWugl2mb75NZygOdwpDw39+8JfWkw=;
        b=Zq14PDnD+6qroyAdEzwtiIOyFwGU+w/3weBRm7CfYLhQDMV2ycBqBm8TmAuIeORF2q
         sAJd4bQxrr+US2f9lPfLszLs6H/SIcIQfG5Ivbm1scngeSZ7GhT1w9Tk2FEe4Cyy+/YX
         Dv4HewR6FGktL9A63q6+VDGvrxKN+TG9ODd3Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752676075; x=1753280875;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VuHTPSN5ob/sxMMWugl2mb75NZygOdwpDw39+8JfWkw=;
        b=j9oj+Sw5zwZwqM/G3oU2RSG/qrhBE1w/Iqw/IV0X6zRXV9MRI3IEd+vgLJoeJMXxm0
         kec+4PGENBkU8dwJianoMpFDxrYpKVRJf4g8spKSOQt6EyHF8BxR5CikDEjXvkq2vX2W
         oQYOeKCqlPKn9MxR0DuUK9c5ztKvK/LGUrbZ7Ku7iKhUqi59hh4ZtD70CcK+IVD708AE
         86UeYOp94aber/aN431oxtth5T7IHvOs6ZedFSPyVmKrtUHSTUpJHtcQYWiOBpV2wegy
         3/ZlNdozb4J8pHc6b+qSh6f9a0ODKBJ3KwTHPBIsbW0ISCogol7byD1mT2lX0ZkKOgi5
         GDSA==
X-Forwarded-Encrypted: i=1; AJvYcCU9JYZB+2EXwM8JY7PmH8UluxSbuzWkBryxhesqP1icyzGMYlhhHkelSa0Labqh8mEj4o8N5vEFqjWu@vger.kernel.org
X-Gm-Message-State: AOJu0YwZMANoRXMnyUvmEAQFkcbpIPjDqO1uLhEQcL5Y7eOC25FkQXjz
	iYs5sMYCqgIRdFcdO5wJow8ePYsv8Us7lPpDd46hVX/W5Ay8COUC09NfZqwSRiq6XZ3OQO9r2jd
	wfGQ=
X-Gm-Gg: ASbGnctiKVit2oIblRSBefrNYs6UUqprk1gvI33aTx37sIKKFSu+YeN475EfEoAhyWw
	ZLAcGFAtkFuoHDKF7JbLD8Tl5yf+/sJ+1OU1qlgwY8L4NWHQdmtzOZ4MYvxszhU7aPAyGs+/Yt2
	ROxVpvWKuTOlgtdbKaXyfEoaTKNuWOn4ooGi8cku3FdvtrLHd4r5dQWTjXJit6MierGqV3siz1e
	r6e0W/ot45fpzDwlYxrvt3x4qLe909Hy9P9VXMel/Dw2HNrylOnmEeCQcMxcK43Pr92h6RUuY6j
	eDncMff9uq5RtweGurXMn1TgijiHja1eFW7kSLC7PToYX+7DVKLO7mKLnhWlC4GoB8CuKT492cK
	lQkagXp621hpwUMkEh4tstyrv/k8i8e0r9CY5Y73rg5mF7WX5zlgEGbwgL5Li+w==
X-Google-Smtp-Source: AGHT+IE+5Z8bB6Gm3mmSyqqYtodCaLj/ud8mYSZXj+qxe+hM09jG4Q12fjt/jWTmxyboMetHfqHzWQ==
X-Received: by 2002:a05:6820:8315:b0:611:74c1:6771 with SMTP id 006d021491bc7-61593388e34mr3219155eaf.3.1752676074657;
        Wed, 16 Jul 2025 07:27:54 -0700 (PDT)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com. [209.85.210.48])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-613d9f1bfb2sm2192388eaf.33.2025.07.16.07.27.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jul 2025 07:27:54 -0700 (PDT)
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-73b5350980cso724630a34.1
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 07:27:50 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVUi974SFmOrfpFLKDdRA3xaqNAiQLGu5evknTgQFVEV8+KgiSiXldAiY4ARrmxPDRM2S2Bf734MJ1h@vger.kernel.org
X-Received: by 2002:a17:90b:3e45:b0:310:c8ec:4192 with SMTP id
 98e67ed59e1d1-31c8f9bab05mr11330150a91.10.1752675724138; Wed, 16 Jul 2025
 07:22:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250716-topic-goodnight_cheza-v2-0-6fa8d3261813@oss.qualcomm.com>
 <20250716-topic-goodnight_cheza-v2-3-6fa8d3261813@oss.qualcomm.com>
In-Reply-To: <20250716-topic-goodnight_cheza-v2-3-6fa8d3261813@oss.qualcomm.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 16 Jul 2025 07:21:51 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XmwiA_gX9pF5Dja1vezson7f21WHC8u8+Rhg_6OUJ+rw@mail.gmail.com>
X-Gm-Features: Ac12FXxTIFX6vNFTUbNM5dNMu4K5yloNK1nFrEKpkxnVSSYFOEXl7o-QWsvciQ8
Message-ID: <CAD=FV=XmwiA_gX9pF5Dja1vezson7f21WHC8u8+Rhg_6OUJ+rw@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] dt-bindings: arm-smmu: Remove sdm845-cheza
 specific entry
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Rob Clark <robin.clark@oss.qualcomm.com>, linux-arm-kernel@lists.infradead.org, 
	iommu@lists.linux.dev, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 16, 2025 at 3:16=E2=80=AFAM 'Konrad Dybcio' via
cros-qcom-dts-watchers <cros-qcom-dts-watchers@chromium.org> wrote:
>
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>
> The firmware on SDM845-based Cheza boards did not provide the same
> level of feature support for SMMUs (particularly around the Adreno
> GPU integration).
>
> Now that Cheza is being removed from the kernel (almost none exist at
> this point in time), retire the entry as well.
>
> Most notably, it's not being marked as deprecated instead, as there is
> no indication that any more of those ~7 year old devboards will be
> built.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Docu=
mentation/devicetree/bindings/iommu/arm,smmu.yaml
> index 7b9d5507d6ccd6b845a57eeae59fe80ba75cc652..646814ec7d15f6d8a0136de73=
b7eaddae232ea64 100644
> --- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> +++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> @@ -132,10 +132,6 @@ properties:
>                - qcom,sm7150-smmu-v2
>            - const: qcom,adreno-smmu
>            - const: qcom,smmu-v2
> -      - description: Qcom Adreno GPUs on Google Cheza platform
> -        items:
> -          - const: qcom,sdm845-smmu-v2
> -          - const: qcom,smmu-v2

The code supporting this can also be removed then, right?

drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c:     { .compatible =3D
"qcom,sdm845-smmu-v2", .data =3D &qcom_smmu_v2_data },

Reviewed-by: Douglas Anderson <dianders@chromium.org>


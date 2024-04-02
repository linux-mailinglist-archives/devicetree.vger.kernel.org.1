Return-Path: <devicetree+bounces-55543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 815DB895904
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 17:59:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A3F811C22927
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 15:59:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7E851332B8;
	Tue,  2 Apr 2024 15:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ju3OhhWV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EAB1332A1
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 15:58:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712073541; cv=none; b=k1lDM3O0bhlihtKZaNCc5qoexBEk4mv1i413w0L2hxMPhr0NR/l61S3ZIad1tB04HYJMODwBKKrtrqZowTZQXiQ3rxFD2nLSFr7fumvolShs3hRXvA0LjcWhNqgKsLHHE99GjR7JGCgPAJTDgQT6Iox57ZUbRtTnHXHQFtQWSzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712073541; c=relaxed/simple;
	bh=8NAIgXsfazcwXjwK5f4+owrNYeHcAdGOOqJqfK2TAl0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=g4+b22WZ0lZ1UQLrg//tz2HZ2VrzEeVPmuZF+dr/5QsqplV5EZbssT4seSxU+pxdA2obfDZVQBOIXsQMkdtaIlcaOM8G6QNxSlC9P3Zh95oNX2KL/vKTS+gfzl5TYr/S5sV/Ab/MR7MLgVYWkSb9QpWyabb/YqTah+2IrCSN2cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ju3OhhWV; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6eaf9565e6bso1824477b3a.2
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 08:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712073539; x=1712678339; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+o7XM/+4QFL4NFpVeras/FA7hCjajIU2dOFHOBIo+B4=;
        b=Ju3OhhWV/JgKLb/LsBqgqqhApdXynk6XID0duRJ5dletGGjZw0vAGFaEKDqlc26PRI
         CTfrt2IJJZQcS3yfA3C9W7zFJnP4lnUtQzfZYBZX1C4Q9i7YIj297ri5yo89jgfG1LHJ
         IrXA8sQMS0603egAkZUZBCv4Ioxb5QjTzi7Zz3HdDXaNJ5xIRXF3r1C0F79xJUmGl3lf
         Lme/p/Ehwhv0x6mLx9Erx1lsvYfNTw1eq5OjSgaWmDhxR+dpMTygEB9DMgsTZ/H3Ejij
         H9EkYkLzfFeujf+h8b1DJtDOO7/nvOdwGRL23PGEAUmZ0eYeY/tqrPkd9Q9uVes7RsO5
         a/qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712073539; x=1712678339;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+o7XM/+4QFL4NFpVeras/FA7hCjajIU2dOFHOBIo+B4=;
        b=uW+TheX/SHlpb1/TunMy+lMGacYLprWP35LDKRIVlwhH2tGfSCjX5MhRvd4xBJZRZ3
         cQrNYLgDnsvP419Y6vB3hDvOj+85+bVJ5DgPgtTL2E9kc6ObOzzv+pstyDRXa0iZgEyb
         ObgXgQG2fQwkNImu0CV2UpGvf+EefoXefT6+umnSpkAVH3vAm/Qd7QX/lq6D6JwZXGQ9
         bVhgGV+4/Vtof/Jj0Tk3H6k96yxEOPiv4x75sRTDwqg5mwEk2zB8YPjLO4gCegqcbrFi
         HzPxRpsxIOm/ekTeniaGqrBjJrMHBuNO/QmBOnLTju8Ip8ZzpiYwGP7fP/sOKEiD4iu9
         nw5g==
X-Forwarded-Encrypted: i=1; AJvYcCWQ28wTDk8L8S5c+KZIF2A3ydr5GaqpE0fAiKOKsor7fcQe4azrmzliTxryakrQTn0CrUPoPdr9HAWXCEiYbPmDFDyInzyd9DtuJQ==
X-Gm-Message-State: AOJu0YxPTeVOuk1RCYtrY592MR+OdjdLTLxWQS31C9xqbKQYQQZ88fS5
	CRwC6aFwZMw33we6xUSCrUR3HG4AklL36Z+iTk4QFZE4j5PmvPEzpHoEhmAt8hWKkIpPBqwPPST
	7XMHjL3swbkICdq+pHMAI8YU2IV0t3avEaYBMhQ==
X-Google-Smtp-Source: AGHT+IEzsVJjfQE5WZje+CSZh6uu8A/j82gSVdAZbljD1m2TlI5e1JTeeViL0IFd5ZW5fAGfo0XB97vETuhPUGuxvMQ=
X-Received: by 2002:a05:6a20:3946:b0:1a3:32e5:f38a with SMTP id
 r6-20020a056a20394600b001a332e5f38amr13336915pzg.45.1712073539439; Tue, 02
 Apr 2024 08:58:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240401-msm8996-remoteproc-v1-0-f02ab47fc728@linaro.org>
 <20240401-msm8996-remoteproc-v1-3-f02ab47fc728@linaro.org> <d9ba1e11-44ea-4c1f-ab33-56a8bf57ab63@linaro.org>
In-Reply-To: <d9ba1e11-44ea-4c1f-ab33-56a8bf57ab63@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 2 Apr 2024 18:58:48 +0300
Message-ID: <CAA8EJpqn-s=o2D0CcFg3ZMQUQWGW6UiAs+hZK2gM1A5YciS9MA@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: msm8996: add fastrpc nodes
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Apr 2024 at 17:47, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 31.03.2024 11:10 PM, Dmitry Baryshkov wrote:
> > From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> >
> > The ADSP provides fastrpc/compute capabilities. Enable support for the
> > fastrpc on this DSP.
> >
> > Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/msm8996.dtsi | 57 +++++++++++++++++++++++++++++++++++
> >  1 file changed, 57 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> > index 7ae499fa7d91..cf7ab01f3af6 100644
> > --- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> > @@ -3545,6 +3545,63 @@ q6routing: routing {
> >                                               };
> >                                       };
> >                               };
> > +
> > +                             fastrpc {
> > +                                     compatible = "qcom,fastrpc";
> > +                                     qcom,smd-channels = "fastrpcsmd-apps-dsp";
> > +                                     label = "adsp";
> > +                                     qcom,non-secure-domain;
> > +                                     #address-cells = <1>;
> > +                                     #size-cells = <0>;
> > +
> > +                                     cb@8 {
> > +                                             compatible = "qcom,fastrpc-compute-cb";
> > +                                             reg = <8>;
> > +                                             iommus = <&lpass_q6_smmu 8>;
> > +                                     };
> > +
> > +                                     cb@9 {
> > +                                             compatible = "qcom,fastrpc-compute-cb";
> > +                                             reg = <9>;
> > +                                             iommus = <&lpass_q6_smmu 9>;
> > +                                     };
> > +
> > +                                     cb@10 {
> > +                                             compatible = "qcom,fastrpc-compute-cb";
> > +                                             reg = <10>;
> > +                                             iommus = <&lpass_q6_smmu 10>;
> > +                                     };
> > +
> > +                                     cb@11 {
> > +                                             compatible = "qcom,fastrpc-compute-cb";
> > +                                             reg = <11>;
> > +                                             iommus = <&lpass_q6_smmu 11>;
> > +                                     };
> > +
> > +                                     cb@12 {
> > +                                             compatible = "qcom,fastrpc-compute-cb";
> > +                                             reg = <12>;
> > +                                             iommus = <&lpass_q6_smmu 12>;
> > +                                     };
> > +
> > +                                     cb@5 {
> > +                                             compatible = "qcom,fastrpc-compute-cb";
> > +                                             reg = <5>;
>
> No need to copy downstream's creative alphabetical-but-not-numerical
> sorting..

Ack, I'll fix the order.

> The entries look OK though.. although, any reason we have
> such a weird binding including faux child nodes and not just an array
> of iommus? Is the only way to discover the fastrpc nodes' properties
> such as qcom,non-secure-domain or vmid belonging through hardcoding?

No idea here. This is how fastrpc nodes are defined on all existing
platforms. Maybe Srini knows the story and the reason behind the
bindings??



-- 
With best wishes
Dmitry


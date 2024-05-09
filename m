Return-Path: <devicetree+bounces-66057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6E88C1174
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 16:45:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C00ACB20B28
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 14:45:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAADF12FF9B;
	Thu,  9 May 2024 14:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UwjjQcqq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650C73AC2B
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 14:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715265892; cv=none; b=eBRSOmmC350ELdqT0/+lztzxsNOJG0vXKqX9XaMY1U2lZgOZu3FFSx6vekF93qw0e4wmeuE8kOSZcaDWFfcrc18PODhGugS9jeHC/MmLGX/wSbun1372+xhVJRuwU2wPhrAeBur3RAEKqv5NE/ZpvlMDNN9TTWtlwqZZpzyeBx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715265892; c=relaxed/simple;
	bh=I5AJqok/mmlR9WpwnqkukvdTrAUuKkenbiOx9SXK4Fc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=p9E3dteHCgcZZEy7mDRLzk/3pg4DDAWGlR18QpbxFff1EDSWSDUIUsX10cuivGgqvZWT7Y9VT4sy2otFCfp1T3ZJsATjrG3oWiTiymoxCkWJBBmfUbjv6k4qnBREHOTKX0ZTUjGgGzSCik941F9laAFezSX33SpjewoxRlO4bl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UwjjQcqq; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-61bed738438so9518997b3.2
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 07:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715265889; x=1715870689; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EdKZiB2s4opqgvof2kv3i43Za9nb3C0GOrVIKiWmw0k=;
        b=UwjjQcqqVZxQPTDMfLERflTOAIih5Vx1/lXUr17VJytFSKsGYekzxlObcg9NC2Fd0l
         s5fZJIhCLfpl9xs73lXB6kCJOQlynaHlu7q0VrTciZCYqNzy6eglyzsPAvwzwhiG1oRZ
         yN03bDTLnESKdb0jTqKKwYtDZx1OanFIdzCLkp0JWWaco4NXFlkVSGeBfckM97Dy2x2F
         HGifb5CZAPTib4awLDEDQydSbkpelQAkz04jmDnBMBAkyau1FRoUN7B+Y3o0exWkEPJZ
         ySs8JSGvfNs2bQSRPcBe9l3+dMUn9J7p1jK47lXohmiZRlXozaO+tOaL4XUc/AVh47kO
         PEdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715265889; x=1715870689;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EdKZiB2s4opqgvof2kv3i43Za9nb3C0GOrVIKiWmw0k=;
        b=YyMQufqAezWomtFq5Ci9IiI+g3PaU5iQHEr3xDuMTKD3sUYhbltUaEZ+CK6alHBQe0
         8KCksici+EzD1y7kpRoJXmDldV02L1eoWw5IfJzQXQEpbnE3cmQ4h5xF1DDOAR9ih7RG
         bdOiokhZoTvkm1k43t67uOQImudMQuBI1uBYsb6+CPQNwNlpFbmPuhsL82Vxce9XnWxk
         +y21V18zML9YuCSAldQj5XZQrBjCTqFeThF5HEWfjZO7fjW9lvQAKCJP+RFrbMXyi+Oj
         EHCnNvXKY4cWajjUN7cNqiCV7bKAKDxqQKIvx3AlQbG3kjsHcfSj6EzipAccAC3ok/Hl
         wrzw==
X-Forwarded-Encrypted: i=1; AJvYcCUN98FQM38Q7d2Vp7lY6FbtvIXaTwu73itiqY0HgN3m/EfjHGjdaNYmBj/QaktjkIIXIPI+GsnvhqFUAHnrNNR1IxoLFuBskSkHEQ==
X-Gm-Message-State: AOJu0YxfF4S5rWWBc45uXr9Rea+icFBzOEgZ4UlC3t1hPeVdgAbDpazp
	gF/aI3HJ9s7ivdIX8yMvPL2cHwPzOXr1MmCTVfXSCCp9CHK17dPa/wlqKT05UfosKn+rMQFZO9z
	ZWXsTByU3emuSj9CSHSUd3dW8zLZAC93WzuYTew==
X-Google-Smtp-Source: AGHT+IGALxxw9TMatt24iHtj/HIRHztNAUbk6tLEX2rUTAXggUKpaWOX7Rx1RT45SQfhXHktooLHv52NhRf+EeDRKpM=
X-Received: by 2002:a25:fc07:0:b0:deb:d148:8dad with SMTP id
 3f1490d57ef6-debd148905cmr2630303276.0.1715265889347; Thu, 09 May 2024
 07:44:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
 <20240501-qcom-phy-fixes-v1-3-f1fd15c33fb3@linaro.org> <20240509141623.GA1011543-robh@kernel.org>
In-Reply-To: <20240509141623.GA1011543-robh@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 9 May 2024 17:44:37 +0300
Message-ID: <CAA8EJpoyMAR9fLJLVgtHf8jSwe5d6ZYzt28LVogjrX+B-_W=hw@mail.gmail.com>
Subject: Re: [PATCH 03/13] dt-bindings: phy: qcom,usb-snps-femto-v2: use
 correct fallback for sc8180x
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abel.vesa@linaro.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	cros-qcom-dts-watchers@chromium.org, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, David Wronek <davidwronek@gmail.com>, 
	Andy Gross <andy.gross@linaro.org>, Evan Green <evgreen@chromium.org>, 
	Douglas Anderson <dianders@chromium.org>, Iskren Chernev <me@iskren.info>, 
	Luca Weiss <luca.weiss@fairphone.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Yassine Oudjana <y.oudjana@protonmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@somainline.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 9 May 2024 at 17:16, Rob Herring <robh@kernel.org> wrote:
>
> On Wed, May 01, 2024 at 07:19:29PM +0300, Dmitry Baryshkov wrote:
> > The qcom,sc8180x-usb-hs-phy device uses qcom,usb-snps-hs-7nm-phy
> > fallback. Correct the schema for this platform.
> >
> > Fixes: 9160fb7c39a1 ("dt-bindings: phy: qcom,usb-snps-femto-v2: use fallback compatibles")
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> > index 0f200e3f97a9..fce7f8a19e9c 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> > @@ -15,9 +15,6 @@ description: |
> >  properties:
> >    compatible:
> >      oneOf:
> > -      - enum:
> > -          - qcom,sc8180x-usb-hs-phy
> > -          - qcom,usb-snps-femto-v2-phy
>
> This is now listed as undocumented. You need to remove it from the
> driver as well or keep it here as deprecated.

Ack, I'll send a separate patch, removing this compat. It has never
been used in the DT files.

>
> >        - items:
> >            - enum:
> >                - qcom,sa8775p-usb-hs-phy
> > @@ -26,6 +23,7 @@ properties:
> >        - items:
> >            - enum:
> >                - qcom,sc7280-usb-hs-phy
> > +              - qcom,sc8180x-usb-hs-phy
> >                - qcom,sdx55-usb-hs-phy
> >                - qcom,sdx65-usb-hs-phy
> >                - qcom,sm6375-usb-hs-phy
> >
> > --
> > 2.39.2
> >
>


-- 
With best wishes
Dmitry


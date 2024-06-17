Return-Path: <devicetree+bounces-76387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC1390A712
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 09:28:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B14D41F216C6
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 07:28:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 595BE18FC84;
	Mon, 17 Jun 2024 07:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Cn6yD3BX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1BDA18C33C
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 07:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718609318; cv=none; b=a6VY98fc4BbqsLOs3ovvV0B93VKZQZHsxAcKkz+n3ZkJhhNOo5Knz8xrssmWa544ZcT82FD3i7MPr4ke/2EdifJDN8SAr1mCM9AgiC4VU140VNY+kIYJ+U7rRw9Jg86PhX8sCPr7A1edf//6PBPcYwb0SqGjDL+9HSNbxku07K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718609318; c=relaxed/simple;
	bh=LbcaeO7g+XXyhIaUIw2LMzHvMLsMS1SLl4XS875bxSQ=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=AQAvc1+jvdBqhrQgSKPXTaA2k+N7dHKhAZ/1HTKqSweJiygaq1KDA1HazYiUglm6HJBNFUv4DE2ndJnuCkklgjgXgS6GsIRn51sXu8lXKdswHmKlIou7qgGHSXvKI7YLUFAZZrRYqwCQ09FLNwQkfRtYFLF0GNqk6pQLDLlfSVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=Cn6yD3BX; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a6f11a2d18aso525499666b.2
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 00:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1718609314; x=1719214114; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tHyISATt+WJttxke6EIQCpnTGfj4Yi4w9h5lYCsDGOA=;
        b=Cn6yD3BXNbUHuD6e8UeUFwPued5uoqrTSdRLwLV5djzNp37k3xsuocbuXKhvnDbA5s
         tQdheveSiI/PGMn1LiNJKKbdUniLY3wbu89tMrMmzqcG2DQWmPrVeLv26GvY4yWS3IhA
         yByf7bwqOWlCIKujKZOwEUaCcv67kCoX5HBEvVJkbSUM2fRR3ut/pv4UPJBMEctNvyPn
         RjgZYKjosxuAKp+FdnFlmkItY8F3VTDePg3GP604BBDpHAEW6WV0Zbr/3/2DE6VtLi1f
         GS6jP0IehEUZUKpy27BaDfQtrYhqOG2oXwKAYruKLFGqo0ou75MWmWmfUWBJoj/UIfDy
         8LjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718609314; x=1719214114;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tHyISATt+WJttxke6EIQCpnTGfj4Yi4w9h5lYCsDGOA=;
        b=tRTfMejAp/vlOd/hLgsZb/wBbGPaO5UOu75UZlj04Ib0uSOPzFUci3yf+/7wcWUbC8
         F8a8k8udoRuAw6r6rm33BDkYyo9I1/A6azeoTi6ch5tHr0Nizqs9HyAprCroqdrmsXmL
         aIlOTrEFjUgwNII4uKUxLov3h0GJly+IdbeVP62I2gJC8YvL3FDza2KHNtMkSCWo8u1r
         hfQfVLXM6uEUPWI/JYloluVZs52VuwcHdu2aR/uWS3QB15qJTxGVDCVWwoyQiwd5soz4
         +yBEzHRgK4dXGwVbearH7WpC4doZ0QYthmc0oqN1LPNvSWDc3KlnlzDq7HkyQqMznN6c
         kRiQ==
X-Forwarded-Encrypted: i=1; AJvYcCUIQSR7mXIn4SqwQqOH6M+DznVjGQJnSjH96OH5DphcPDRdbNWiLYQNu8bNteEcUNKA4WGTWA1SU0bDqyQrK6uVUwfCf0azJ7hqMw==
X-Gm-Message-State: AOJu0Yz/o1uhjO29iTWWwoWHsi4YZamu2X0h5KtJJQyugY0EC+09RDoJ
	U4YoqIBqxj1kLid1fuTfDRBsGe2KY7i8MlW7hIfK06sVHnWnvkfqY4z2VfxZZZI=
X-Google-Smtp-Source: AGHT+IE/Y4LqXgdNZ0zcQVhr3sQUeAw8IWyATC1u6ONvFcRL9KXrD7KEcyjfA0ImOde2Km0XLQNqxA==
X-Received: by 2002:a17:907:c081:b0:a6f:77bb:1713 with SMTP id a640c23a62f3a-a6f77bb1889mr294286966b.9.1718609313862;
        Mon, 17 Jun 2024 00:28:33 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56da328csm494948466b.12.2024.06.17.00.28.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jun 2024 00:28:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 17 Jun 2024 09:28:32 +0200
Message-Id: <D2245MXG8CS1.11EGKFJQLYPTI@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Luca Weiss" <luca.weiss@fairphone.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konrad.dybcio@linaro.org>,
 "Stanimir Varbanov" <stanimir.k.varbanov@gmail.com>, "Vikash Garodia"
 <quic_vgarodia@quicinc.com>, "Bryan O'Donoghue"
 <bryan.odonoghue@linaro.org>, "Mauro Carvalho Chehab" <mchehab@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-media@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Krzysztof
 Kozlowski" <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2] media: dt-bindings: qcom,sc7280-venus: Allow one
 IOMMU entry
X-Mailer: aerc 0.17.0
References: <20240412-sc7280-venus-bindings-v2-1-48ca8c2ec532@fairphone.com>
 <D1Q6CMZM78VI.ABYGRRV5E61B@fairphone.com>
In-Reply-To: <D1Q6CMZM78VI.ABYGRRV5E61B@fairphone.com>

On Mon Jun 3, 2024 at 8:39 AM CEST, Luca Weiss wrote:
> On Fri Apr 12, 2024 at 4:19 PM CEST, Luca Weiss wrote:
> > Some SC7280-based boards crash when providing the "secure_non_pixel"
> > context bank, so allow only one iommu in the bindings also.
>
> Hi all,
>
> This patch is still pending and not having it causes dt validation
> warnings for some qcom-sc7280 boards.

Hi Rob,

Could you please pick up this patch? Mauro seems to ignore this patch
either on purpose or by accident and I'd like for this dtbs_check
failure to finally be fixed.

Regards
Luca

>
> Regards
> Luca
>
> >
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > ---
> > Reference:
> > https://lore.kernel.org/linux-arm-msm/20231201-sc7280-venus-pas-v3-2-bc=
132dc5fc30@fairphone.com/
> > ---
> > Changes in v2:
> > - Pick up tags
> > - Otherwise just a resend, v1 was sent in January
> > - Link to v1: https://lore.kernel.org/r/20240129-sc7280-venus-bindings-=
v1-1-20a9ba194c60@fairphone.com
> > ---
> >  Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/media/qcom,sc7280-venus.=
yaml b/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml
> > index 8f9b6433aeb8..10c334e6b3dc 100644
> > --- a/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml
> > +++ b/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml
> > @@ -43,6 +43,7 @@ properties:
> >        - const: vcodec_bus
> > =20
> >    iommus:
> > +    minItems: 1
> >      maxItems: 2
> > =20
> >    interconnects:
> >
> > ---
> > base-commit: 9ed46da14b9b9b2ad4edb3b0c545b6dbe5c00d39
> > change-id: 20240129-sc7280-venus-bindings-6e62a99620de
> >
> > Best regards,



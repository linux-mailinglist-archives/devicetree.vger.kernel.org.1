Return-Path: <devicetree+bounces-92331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB9494CC0F
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 10:22:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1D7AA1F22C2A
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 08:22:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 793B218CC19;
	Fri,  9 Aug 2024 08:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="rhOTNa5H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E84018DF8A
	for <devicetree@vger.kernel.org>; Fri,  9 Aug 2024 08:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723191770; cv=none; b=fIq96641wv56dFSvFuef4AEH5i+Z+vlE5nBQHzAJZfuR0WE0rb+6Vr0pIjlKLKnkcRRXSKVCkq2Bks7bnxHSvPfKOiPSTCJFd4xTgeymu+xK/kQJoeZh1/lP4iWGvtI/TG9GLINviprTdWIGbOnwUkr767pswaIzrhea9S9lSXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723191770; c=relaxed/simple;
	bh=Ms18h9NjuLZqJPYnLon/Q1xIk7Z7z9uiAC/S/PYy7ZU=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=F085rwKW4qHun/pfKA7//ZsS+ZQiGMvPPRmg1O739Fb7rYYbB8c9g4YgyPaWkL4sfIfYcnKCfiuq5Tao42Nz/DuOitJcbsQJYo/+JgXlO1zoua8dFn/gcG6TQGu6UKVqaLZ39hBxIXixXSMgigP4Io2/D4AblAxsU2WjlVBXJ9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=rhOTNa5H; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a7aa212c1c9so249852766b.2
        for <devicetree@vger.kernel.org>; Fri, 09 Aug 2024 01:22:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1723191767; x=1723796567; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hvSjJhQsiaOkLBeBDuAHjN93be2CrieZJTO6dIpg/w4=;
        b=rhOTNa5HYUZirDigL6zKL3xOqTXTV/NtGbnOQm6vUFlCDY10DkWjFUXISpvxkuH6+t
         bSJ4apzgZKTmup1gy6CRayk2Lyyn2SeTA3cwSMGpKYXO/co5l4Cg+L1gmlQT5j5bLBkr
         FkoJ9ZRxW9I7myUF3/GOn/XX9YHkkfGoX3cB2T8OTUNmPdtW5oWtfj/wCROD5xKil44K
         pVRUBNoCdwIo5uZybBjnwJSU2WzWvYHlDOLUpgveiLHn1rXQGnx01wP5rhJZnQx+vnGp
         oBURuNz9MxhfEZOONNXWrw0RaHl8o6WYLWfxMvRY/iTJxTQwnAKqlPyvhUNTJfHw+6Hl
         t/ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723191767; x=1723796567;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hvSjJhQsiaOkLBeBDuAHjN93be2CrieZJTO6dIpg/w4=;
        b=WZ22Xd1yXCtg58jDN3cIvpKLaNU38rR30KMP1zyd+pA3TF9rendWmwNCyVf0Q6tuX0
         hFD762CbGIe5hEx24RFqhjkToP6c/kER5AsTpGz0LgoOmZ1CH/UGH2FzGOBM+vEIREA5
         e7R1Y+EGjSOVXJP24IjTLMvJQLs6BPhlcX4AxrFSkk9Rr/reG1XeWfbokC7UbIGEz99V
         Hm6g72F+gad4W/hAU7SgDHoDpSx4+QAG2Qs0+0NTM7UI1Be90oShLzwADzt6VMAt72Pa
         rN0kkUCrsTz20vwNI3M/PkfbuNZo/hIS+15vRQLlYKKNBh9k3Ghp4OeEUAjua8P0GTnu
         kYYQ==
X-Forwarded-Encrypted: i=1; AJvYcCWlVCWioL9bDRbOxwLxiw1nUpG4C9FjlilqKZ/kYCswjS53eMeVCmzgHjsAPuvJhxYZwheDsDBPJXuIRhC1yXgZ4xeNmEUC0dWC0w==
X-Gm-Message-State: AOJu0YwbZxb3PSKQWxT+kecBhtn9pVlCYJxPLV8bAKcVBQi4pXj7LRAz
	o1zUaQmDnv67pLra/cLzckipW3Tcb42w8SCTgNVN/5uAxppTHuMFdRH7tXN/VAw=
X-Google-Smtp-Source: AGHT+IFnmUoOc78x9xnZg4BTUCEu1xBvAZLSD1YT+x9iEix9bA+IJPvu6V3OKL334EWP+pDr+DaUhw==
X-Received: by 2002:a17:907:c7d2:b0:a7a:8876:4427 with SMTP id a640c23a62f3a-a80aa59b6b6mr65561366b.25.1723191766644;
        Fri, 09 Aug 2024 01:22:46 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7de2e1b093sm708152166b.148.2024.08.09.01.22.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Aug 2024 01:22:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 09 Aug 2024 10:22:45 +0200
Message-Id: <D3B8I0RHMCRX.27GXO53ITZKEH@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-media@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Krzysztof
 Kozlowski" <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2] media: dt-bindings: qcom,sc7280-venus: Allow one
 IOMMU entry
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Luca Weiss" <luca.weiss@fairphone.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Stanimir
 Varbanov" <stanimir.k.varbanov@gmail.com>, "Vikash Garodia"
 <quic_vgarodia@quicinc.com>, "Bryan O'Donoghue"
 <bryan.odonoghue@linaro.org>, "Mauro Carvalho Chehab" <mchehab@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>
X-Mailer: aerc 0.18.2-0-ge037c095a049
References: <20240412-sc7280-venus-bindings-v2-1-48ca8c2ec532@fairphone.com>
 <D1Q6CMZM78VI.ABYGRRV5E61B@fairphone.com>
 <D2245MXG8CS1.11EGKFJQLYPTI@fairphone.com>
In-Reply-To: <D2245MXG8CS1.11EGKFJQLYPTI@fairphone.com>

On Mon Jun 17, 2024 at 9:28 AM CEST, Luca Weiss wrote:
> On Mon Jun 3, 2024 at 8:39 AM CEST, Luca Weiss wrote:
> > On Fri Apr 12, 2024 at 4:19 PM CEST, Luca Weiss wrote:
> > > Some SC7280-based boards crash when providing the "secure_non_pixel"
> > > context bank, so allow only one iommu in the bindings also.
> >
> > Hi all,
> >
> > This patch is still pending and not having it causes dt validation
> > warnings for some qcom-sc7280 boards.
>
> Hi Rob,
>
> Could you please pick up this patch? Mauro seems to ignore this patch
> either on purpose or by accident and I'd like for this dtbs_check
> failure to finally be fixed.

Hi all,

Another month, another ping.

Can *anybody* please pick up this patch?

Regards
Luca

>
> Regards
> Luca
>
> >
> > Regards
> > Luca
> >
> > >
> > > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > > ---
> > > Reference:
> > > https://lore.kernel.org/linux-arm-msm/20231201-sc7280-venus-pas-v3-2-=
bc132dc5fc30@fairphone.com/
> > > ---
> > > Changes in v2:
> > > - Pick up tags
> > > - Otherwise just a resend, v1 was sent in January
> > > - Link to v1: https://lore.kernel.org/r/20240129-sc7280-venus-binding=
s-v1-1-20a9ba194c60@fairphone.com
> > > ---
> > >  Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/media/qcom,sc7280-venu=
s.yaml b/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml
> > > index 8f9b6433aeb8..10c334e6b3dc 100644
> > > --- a/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml
> > > +++ b/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml
> > > @@ -43,6 +43,7 @@ properties:
> > >        - const: vcodec_bus
> > > =20
> > >    iommus:
> > > +    minItems: 1
> > >      maxItems: 2
> > > =20
> > >    interconnects:
> > >
> > > ---
> > > base-commit: 9ed46da14b9b9b2ad4edb3b0c545b6dbe5c00d39
> > > change-id: 20240129-sc7280-venus-bindings-6e62a99620de
> > >
> > > Best regards,



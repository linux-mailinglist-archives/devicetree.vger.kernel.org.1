Return-Path: <devicetree+bounces-36557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE688841CDE
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 08:47:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A426286288
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 07:47:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B69D253E05;
	Tue, 30 Jan 2024 07:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="HiGPYP4d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D09AF53803
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 07:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706600824; cv=none; b=eHSditSwJPGp3mWOymUBNOoshmEs0YN0ONx4aRqV7F6SGfcVwiI+g8HnlnXRfB+f/oWiE5fqq6S2JicsF4ifm8f+bxrUXjC9lNzaw619VmNGiXfQ/EBGm4Cmi1hZiR1wdpHx2xYpOFCf8gEf1ILd/1UYdCZGm8O9p694rIKz4gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706600824; c=relaxed/simple;
	bh=6wF3pjl+xGSbuQROF2HwbVRfOfePnmBeqT9YPU+Cd88=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=NY3kAGjan7jyauLXSZR/P+06xwiuNDVxr0f3pNhlU0uFqxgPoKxnTibGR0lV+aI8WT57QNOKEQ0E0r0u459udg37TMwxdZakY5rR7AsLPzv8/5dgmh/leaaPXhG7pJcLAlF3wYi4bbOxSmG4oHJ7g54hZpL7+z7eya8FX2ZPAuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=HiGPYP4d; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-55c2c90c67dso3821562a12.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 23:47:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1706600821; x=1707205621; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QlGtGfNm9kPhTsKQ1zfGwKYIV+yyIvsTE/Mjc0NVPIk=;
        b=HiGPYP4dYhUZByAnXCCfDyML/k5Tvd6nNZeKOF1+AtmmNXus/UUnslfILqa8rUm2gJ
         9HBwMHR8Zcrj3Jidevt7zIlYx4IqEC20W8ys7x1PWXZc8BiZLfqmP8RpF0px0ytZQWko
         I+FkP2gEYOyHXLrRqAV16brvLen0EWVDspuM1j+RdoedCPtTagGBCXKIc7ymagE410bC
         C13k39T3q33FXUvZrEwyzUmM98bmvllEzzg2HN/RccxvNRWz9G5aBadfgBa3hgcpMCco
         IIkUJc2qWddJXXBRnYcuFhDo0MdGaTj455hVkVa8mbINkt6Z1IMVGlfAB7bvJVNU6iCF
         N3ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706600821; x=1707205621;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QlGtGfNm9kPhTsKQ1zfGwKYIV+yyIvsTE/Mjc0NVPIk=;
        b=m8wKn7BZetFLYfN5kRkz8Z02q3+32SjzbcUjFyyv8NX0kIjAWiq/pCjAMlOa8hwmjp
         nG2mC4heNqTqUVsqXwa985jkgPRM/k7YjLbrH/Xdsh6/SHmoVlbLHi5/ld1UHEXKSOeW
         y8mC29kSIy9pNmbAExr85BeFvGDp1+PFdydBYfODMRJXQIpMN/Dla8i5+vvb4WnU7FwH
         jzuU1rfR0LnH/cnu+YEsSxOz6oP9zaABusu94Ju8lVWWTU+l4wvfi56ucuNTfyQN4+Rl
         4hxCUKzsGYRabcXCJH5WDDKdqVZ/aJ2DMlNjr5TxHvMHt6o98g+ad8gzRzfkrfoZxGkK
         DZ9Q==
X-Gm-Message-State: AOJu0YwqR/yaXhZvsc8DZ3kXi6vigssM6IAm+9bDaYnnKQecnRj8ZrDu
	PgrfmCqU8gwyFYPrQ8lvWblUajVt0lQKvhnERXRXloQ0C6hTt7y3z+tiuHSjcFs=
X-Google-Smtp-Source: AGHT+IE7X9hDipYR0YX/csSCqzOnet8vdLtg+tkdmtHjx4F4Cc1elveRWT2+rBnQl0qvijzggQV9ow==
X-Received: by 2002:a50:ed90:0:b0:55f:43af:4a29 with SMTP id h16-20020a50ed90000000b0055f43af4a29mr420603edr.18.1706600821066;
        Mon, 29 Jan 2024 23:47:01 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id q10-20020aa7cc0a000000b0055ef56f4575sm2182091edt.39.2024.01.29.23.47.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jan 2024 23:47:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 30 Jan 2024 08:47:00 +0100
Message-Id: <CYRVI1IQ2UKE.15ZGCYLRT3ND3@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Conor Dooley" <conor@kernel.org>, "Vikash Garodia"
 <quic_vgarodia@quicinc.com>
Cc: "Bjorn Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konrad.dybcio@linaro.org>, "Stanimir Varbanov"
 <stanimir.k.varbanov@gmail.com>, "Vikash Garodia"
 <quic_vgarodia@quicinc.com>, "Bryan O'Donoghue"
 <bryan.odonoghue@linaro.org>, "Mauro Carvalho Chehab" <mchehab@kernel.org>,
 "Rob Herring" <robh+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 "Stanimir Varbanov" <stanimir.varbanov@linaro.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-media@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] media: dt-bindings: qcom,sc7280-venus: Allow one IOMMU
 entry
X-Mailer: aerc 0.15.2
References: <20240129-sc7280-venus-bindings-v1-1-20a9ba194c60@fairphone.com>
 <20240129-numerate-brought-4660c2a89719@spud>
In-Reply-To: <20240129-numerate-brought-4660c2a89719@spud>

On Mon Jan 29, 2024 at 6:37 PM CET, Conor Dooley wrote:
> On Mon, Jan 29, 2024 at 08:48:54AM +0100, Luca Weiss wrote:
> > Some SC7280-based boards crash when providing the "secure_non_pixel"
> > context bank, so allow only one iommu in the bindings also.
> >=20
> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>
> Do we have any idea why this happens? How is someone supposed to know
> whether or not their system requires you to only provide one iommu?
> Yes, a crash might be the obvious answer, but is there a way of knowing
> without the crashes?

+CC Vikash Garodia

Unfortunately I don't really have much more information than this
message here:
https://lore.kernel.org/linux-arm-msm/ff021f49-f81b-0fd1-bd2c-895dbbb03d56@=
quicinc.com/

And see also the following replies for a bit more context, like this
one:
https://lore.kernel.org/linux-arm-msm/a4e8b531-49f9-f4a1-51cb-e422c56281cc@=
quicinc.com/

Maybe Vikash can add some more info regarding this.

Regards
Luca

>
> Cheers,
> Conor.
>
> > ---
> > Reference:
> > https://lore.kernel.org/linux-arm-msm/20231201-sc7280-venus-pas-v3-2-bc=
132dc5fc30@fairphone.com/
> > ---
> >  Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >=20
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
> >=20
> > ---
> > base-commit: 596764183be8ebb13352b281a442a1f1151c9b06
> > change-id: 20240129-sc7280-venus-bindings-6e62a99620de
> >=20
> > Best regards,
> > --=20
> > Luca Weiss <luca.weiss@fairphone.com>
> >=20



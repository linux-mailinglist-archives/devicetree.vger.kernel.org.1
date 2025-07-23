Return-Path: <devicetree+bounces-199052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D0AB0F25F
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 14:35:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A928054588B
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 12:35:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E34482E5B37;
	Wed, 23 Jul 2025 12:35:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Q46Jvvlp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119392C1581
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 12:35:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753274140; cv=none; b=V4YcKE1SdOMKaEzJpDeJPT80HNv+yy9/etdEmf4JFQ+PWJ+SIsJrWShY+7oyzl7bPUkdFkMaWZY6n7sAcyVwAEaWt+ec4JyFdiz6W0iJWSOki+h2G8T5VrJi4aporJRty8xVT5tLoedY4twzmurkQwBYaw2aijUkysLttmBC/QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753274140; c=relaxed/simple;
	bh=0EFY2t7da13tTNsn0kil1sRIUFA9tzt2B90v+UiI8vw=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=ESV7J3fCI5fV82lST521HvF6RZumytQg9Ja9UmsKYaRCS6s3xgb9kW0S+Le9aUkAiqcgAoJkcnNhq3itcGY1LkNF7652nDXwi6SnOgU5Czq6N8X2LaHpHQ3rLx4AQvJYibv+JTos2iGRAl3w9Wusdbe1sD7wFhfXYvt8O+2KexQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=Q46Jvvlp; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-6077dea37easo10276603a12.3
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 05:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1753274137; x=1753878937; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z+L8u4oiexjWpNgCligb/vTUSVa660rSwO8FUFGgqs0=;
        b=Q46JvvlphqQ3wb249gRqcxWSAE5qFicgBvNrgzFqq8cWqrqvmhLJVqITQf74A/I91K
         001QS+vxKAkNmjGOhTHzBrF+jTsnClICVLkoPQU6jmkp+TDIQIIHdT20Uj2LWFSefGT6
         sV87Tf6ZU36xpQ37iXH7HxmWAnvKFMaFs1Kbrxoy8/VUIs/09PkiVOk9r6vnWBmIez0G
         KY4WCQzWW9cg3Q731ZYzI5aRC3HfYD0sBwdv7aYkCo/m9BnNL6cRVNfUTP01mhqzfY5o
         YsDp2KS8dJd5dK1zzpxpp7oIb4omo+VHvZDHvGGFucHuThdmjqsIIeQfqcyE6EFZ6XAB
         HNIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753274137; x=1753878937;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z+L8u4oiexjWpNgCligb/vTUSVa660rSwO8FUFGgqs0=;
        b=mauyAoJNl7LDSx+nOP0xJYNPThNKSQJb93lRD3iHAkBMT1du2M2SR2flLfWeQ8GuZu
         PXNzEHwxjilxnTwBYL03MUX8dJOoVupq19PTDja0R+sa8FmxkYsxs9t7PnW3Qu5BKvKx
         scIBKjhU6KkJdOfHes1a3DIVfXoMnRxcVOoRb0M82fJ1b9ycX2b37NS7/ZbrVfNdeyoK
         CQ4PpSAAEeEzs2pDAO0KHBqv3s9tpvuKuLLFZMHcz0MozjUCcNdjARaxrY29PDi2kuPp
         YYplCNom49EW61V5clU7A4SKsQqclw4W//hgN+o41E5Cve8T1kTqzOZalI0b658HOTTK
         ezTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXAug973Eqq2lSkJMIk2rkgnBmlnLKiBMLFRFscYl553EAnMI6kEDqSlTSr6l2eyeOxS74lgtXtSIKg@vger.kernel.org
X-Gm-Message-State: AOJu0YwlrHVLZBVd1mwi4XllEz3DDkKmuQgPKzeu/Y46SZNF7m772PT+
	lpPc3Ue+ErNjViybyim6LBI5M8QoNRWK0xBvFpYLJTe4foJ58NIfmCh83kNmfmzRCzg=
X-Gm-Gg: ASbGncv5daSuVduW3gK7/o3grz10OFHuvxkm5NRr5iOs5CHFoR2DGFXV63DHdUImgqk
	pDBS8r8Udc1crP0seyG8I8EAHslhROshjpQeH80BeYfhKqB/0f7z9SwS95cOgawsVdCSQlZNdqB
	6C5LLucN8GwJuyqIvbdjugnGBcZzybFyvU0/GCp2BN+eBDlS2Z2jDa3sczTJW6EklnXAMHkS4mI
	Gy/AiAvZXERyQzicquswfzX86ccyqVCLTGlG32qZI4mplojQZPQg6WLQxB7ILR0ZYf5rlyl2Zdw
	x7GW07tjXrFeFxmSHketiHcow5eZ5enh8oMDbOTrHzQseCCyZZpRtQQhosboafYea/J9b1s5CO2
	wL9MWjTMvqMaSDjL7TgQaCz9778sCWHB1ZSZ1dx9kwBL7NDIIA9InePOD7FAQu+pTW0U=
X-Google-Smtp-Source: AGHT+IHiFY0lG9mRPneADgyis/AcrbOpYfn7ovZrGfkcXUWNCou+f8RDQqROv1F9QSh2mViYt+ozOQ==
X-Received: by 2002:a17:906:9fc6:b0:ae3:4f99:a5aa with SMTP id a640c23a62f3a-af2f64bcdf5mr272122666b.4.1753274137382;
        Wed, 23 Jul 2025 05:35:37 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aec6ca817b7sm1038885766b.135.2025.07.23.05.35.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jul 2025 05:35:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 23 Jul 2025 14:35:36 +0200
Message-Id: <DBJFT72B59MC.RIRP9YSHOX98@fairphone.com>
To: "Mark Brown" <broonie@kernel.org>
Cc: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Felipe Balbi" <balbi@kernel.org>, "Srinivas
 Kandagatla" <srini@kernel.org>, "Liam Girdwood" <lgirdwood@gmail.com>,
 "Jaroslav Kysela" <perex@perex.cz>, "Takashi Iwai" <tiwai@suse.com>, "Bjorn
 Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Wesley Cheng" <quic_wcheng@quicinc.com>,
 "Stephan Gerhold" <stephan.gerhold@linaro.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-usb@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski@linaro.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-sound@vger.kernel.org>, "Dmitry Baryshkov"
 <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v2 0/5] Enable USB audio offloading on Fairphone 4
 smartphone
From: "Luca Weiss" <luca.weiss@fairphone.com>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250501-fp4-usb-audio-offload-v2-0-30f4596281cd@fairphone.com>
 <DBDAPORDD5IM.1BHXPK225E2PP@fairphone.com>
 <DBHIM4SA3OIK.PXX6HMDE93B8@fairphone.com>
 <ac3f1eb2-5830-4bda-bc57-c4d29c22aba0@sirena.org.uk>
 <DBJDZBYHR94V.1QGVALCL60M1X@fairphone.com>
 <00c2ac7c-763f-467f-8199-76de9f5d71b0@sirena.org.uk>
In-Reply-To: <00c2ac7c-763f-467f-8199-76de9f5d71b0@sirena.org.uk>

On Wed Jul 23, 2025 at 2:19 PM CEST, Mark Brown wrote:
> On Wed, Jul 23, 2025 at 01:09:35PM +0200, Luca Weiss wrote:
>> On Wed Jul 23, 2025 at 12:57 PM CEST, Mark Brown wrote:
>
>> > As previously discussed they won't apply until after the merge window.
>
>> Sorry about that, I thought the conflict was for the 6.16 merge window,
>> not 6.17?
>
> There is a conflict.  You could check this yourself...

I see now where the conflict is, due to an updated previous patch.

I will send a v3 shortly with that resolved. Then it applies on your
for-next branch cleanly.

Regards
Luca


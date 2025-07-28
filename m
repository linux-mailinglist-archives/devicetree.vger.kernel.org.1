Return-Path: <devicetree+bounces-200121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 312FCB1376F
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 11:25:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B94E83B7F54
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 09:24:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B40022356BA;
	Mon, 28 Jul 2025 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="hnRqEenl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B3622FE15
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:24:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753694693; cv=none; b=W0FZsbNtMXvhN8JYXvnv/fJjCGBSragN10iT5r98RSN6s6AT8bNMM3VoBHkLkF4r1Tq9GERHNjnjEcNx89aLAmNYOj1qfZpxVlbxL7C5dldbnUoHVzlSQovVvhs0w96LKWyQZmOvplG7Dy/Mm/h81Gp67wXzlJ9FVh0YYYNzs18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753694693; c=relaxed/simple;
	bh=p7SaI3KRq9+LTs81Ai4ENBC/+OQ8Fyl2MN4HlWaQG8E=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=JFbFeEim6bcmPLDtumrvTUMnSaiSVL5U8JgcTqwa17LtMBjCaUDLiLfh6BtDKuKqLrLWIu2fO+Zjrg/DU4hYbIxhMFKat3XVnuvhEhULVrJfRabvKJiFt4UO5M5am8r83aeivBWVTviZDknRPx2EkRVfqJvaTtgUtqUiVxHcWMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=hnRqEenl; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ae0c571f137so799815966b.0
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 02:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1753694690; x=1754299490; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p7SaI3KRq9+LTs81Ai4ENBC/+OQ8Fyl2MN4HlWaQG8E=;
        b=hnRqEenl351V0jKU5o0FexJPeykocfKZRvqd3XPdnk3WxuWZwK00bVDgumZlsDIuYA
         qZBZjSv6nK4+/lxPc5uQC+3mJo0azz2pQMt8MS2MFmThRbPXSOiBQPBSJRH0R+rcay62
         2hLXp2wTfLHQxL+CJMqWzNRo/90jUrmwlLVfMC0kIEOtDk5qQT3p13mJEG6WW6ZT6NhT
         sbjSd7OUW5whJBGK3H09wQLtbxRJ+cMOhjckpcwt9x5oogSr9YA1k51d7HI1EHDDDz+S
         GuZtAeqhdxjNnC0H6GqZbWsheZ00/JaiyAubXrB6KWTN72i7o6MQ14blYwMBf1V650sC
         mBgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753694690; x=1754299490;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=p7SaI3KRq9+LTs81Ai4ENBC/+OQ8Fyl2MN4HlWaQG8E=;
        b=mgWQYc+X8RFCea2aNJTJ9JYD0EgjtfZG+2sqQEN5U6BMyFzz22ifdH7bT7Fn/Ugw0F
         QV4Xh64Cuenj1nyiwIbEhhlVdAxAL5H8W/WqoprEunjH779jxChG9YqXbV8XCpPo+aX9
         KCPINxHNOCA+gRxkx1ISMB+czGIQOFZ2bpsukX8lC6BVsv0sF5P+7C433WP67pwLvs21
         o8JrsO7Cto2m/ddJlLXff7X1KthwvPjJvKxlquCmfm40MT0NIPjj4PgsL08tSXlidSl0
         bPhJyRhBLfHe+ovm2LTi4dh1IvC6EXl1sEENsrPeLZan3C4rrOtrojv1fdU/5Wl9v28O
         xoLw==
X-Forwarded-Encrypted: i=1; AJvYcCUTKQhCELL6NnKV+StsS3OJ2OSCFq6AH4iDJxoWkJcjLajok3FTnCosxag3ySJm6+zsMIZazwo0Y6hM@vger.kernel.org
X-Gm-Message-State: AOJu0YxhdatvsYPUFYQBuPUosvuFssL3tJlcPYeKaBtUz6Q6O0YQWVag
	rnodHJBr9lBp8SpLScOQXfVqfoHP+oJBJks8iDjNdIBzr4v+wahjmF4bKbKjHIA70vA=
X-Gm-Gg: ASbGncuUfn9jcd6La8rDcMkge/qoPCo3dDN3Qbb520Tz2Ne3PLkG0LkbPemezfQCm5F
	vThS9MMqenl1ERBPZw+S7rf6DR4te4hWz94eA78Fn0XODmmDKkAnad1iS/w6qSsnxS6sTjgA7Uq
	rCRR+314pm3AUeYY0NwOJwdXPTSDikEr8y/rgaVbXcJ8rYVUvatrDy3Se/N4UYAzXfcketyMtX5
	JDClFm/I4WD59eGYetibEcGQx0LzJbn6D42VrL0/Ugy/DX7TPMgBW72FcQrV0k7ORgqlgXA51j8
	b+l+EvSRQTRMkUAs+rl04pv63YtDa4JAbvlcwUfdKMkPaFKFgRUg9WgAn9uDXqD07hMXRavQYza
	lRc16bO9oK6ZuG/uwYMBA062gQMglwWwcF0t+es0jBHfUsuzog/zpvQhaf9BwfDqIio4=
X-Google-Smtp-Source: AGHT+IGk6lrYnsZId9mCE/cRiQIVZNKCJUyZ+AEWNPRvXM5N0BY5nsGMSTWyTaZBxtJaa8J1biPu9w==
X-Received: by 2002:a17:907:e2c5:b0:af2:4429:206b with SMTP id a640c23a62f3a-af6190f8b0amr1131320966b.33.1753694690008;
        Mon, 28 Jul 2025 02:24:50 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af635afd811sm384349466b.136.2025.07.28.02.24.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jul 2025 02:24:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 28 Jul 2025 11:24:49 +0200
Message-Id: <DBNKVU7OQHNL.12Z6O3PI6SHGU@fairphone.com>
Subject: Re: [PATCH] slimbus: qcom: remove unused qcom controller driver
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>, "Konrad Dybcio"
 <konrad.dybcio@oss.qualcomm.com>
Cc: <srinivas.kandagatla@oss.qualcomm.com>, <srini@kernel.org>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-sound@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250724132808.101351-1-srinivas.kandagatla@oss.qualcomm.com>
 <276b7977-45d9-4b37-a4f5-1c65802ac267@oss.qualcomm.com>
 <mwhxikivaxtz5px5e7jkqtuuk2iz457fy5drsnaj32j4o5qqk6@hwkcjso4jpsp>
In-Reply-To: <mwhxikivaxtz5px5e7jkqtuuk2iz457fy5drsnaj32j4o5qqk6@hwkcjso4jpsp>

Hi all,

On Thu Jul 24, 2025 at 4:24 PM CEST, Dmitry Baryshkov wrote:
> On Thu, Jul 24, 2025 at 03:31:50PM +0200, Konrad Dybcio wrote:
>> On 7/24/25 3:28 PM, srinivas.kandagatla@oss.qualcomm.com wrote:
>> > From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>> >=20
>> > Qcom Slimbus controller driver is totally unused and dead code, there =
is
>> > no point in keeping this driver in the kernel without users.
>> >=20
>> > This patch removes the driver along with device tree bindings.
>> >=20
>> > Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.c=
om>
>> > ---
>>=20
>> I *thiiink* this is apq806x code, with 8974 adopting the new hw.
>>=20
>> +Dmitry, does you computer history museum require this driver?
>
> I never had time to try enabling audio on IFC6410 nor Nexus 7. But if
> the driver would be actually useable there, I'd prefer to keep it.

FWIW on the WIP msm8974 audio branch (from years ago, unfortunately), I
don't see "qcom,slim" compatible being used, also with no change to
drivers/slimbus/qcom-ctrl.c.

That branch is using the compatible "qcom,slim-ngd-v1.5.0" for MSM8974.

So at least for my museum collection, it's not needed.

Regards
Luca


Return-Path: <devicetree+bounces-194847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A505AFFB87
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 10:01:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0771E588428
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 08:01:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81AF228B7D0;
	Thu, 10 Jul 2025 08:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Uzxu+4NA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEFED2874F8
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 08:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752134454; cv=none; b=AVKlAxKGUCv37kI000UQcM95K8GlUG8h0Ju7Q+irx4VlfXy5EVfExYDixtMLcKldrLsGp6DYsVpZuDgYvfm3W858sNnD10mvkYEW7b9dEJKp2W2etF2i0RVTjyzVrjfNY6tFpf8CkF3Fyk1lQjjbLZKRczj4+Fw8Jt5AbVfdT34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752134454; c=relaxed/simple;
	bh=iK8IOTCXE2lrPjdoQaDJjyXlv03DESYVyObGJ/m44kA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=owQ2+S2yDBituXuou1866DrM3jECCDh79oNai6QNZscD8KRs53e8IZwUWpm3BIPfxuCkmbtCbV3ju2NnZ2c494S2XpTfju1Hj2WVt4iCDTU9AoUeFAq6pvMyWIRG2RNJaIVTVzpTg3gGMGJhdT81p6ymO2VPPR/mrKuoMiw6Jws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Uzxu+4NA; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-2ea58f008e9so631215fac.0
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 01:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752134452; x=1752739252; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ToFgcIrPsT47qophkUF6t9hEDKpaWGkYpzWGaT7NuQQ=;
        b=Uzxu+4NAdve9XcUnFWFBHCBNjqpalyRMQQ+dFqV1zfDYJhEFqifdAH4w2/3/PznNHN
         XhOp4QrvgzAdwA4nTwqwRv3bDciGdY2BmjM2WEMHx2K7mUyz2CObhpeBoWzP8DW5yiwT
         8OcayffK6GHXAwRFRyLmVKqYZe+5Kee6r4gDAFSgvJ+s+zJF6B0NkPpWp96SSXfD5vp5
         mqIGf9CDXFUMaXx6K+mBxx3TUpYuCFaIqaBsxC+Ega/uMAWv8OAo19E4wk8soxxEwFfz
         OsOTWQ0kmKPljXHsr1sOZai40cJ9lwZvQqffsLv40q5wkipMXGNg+5fPIrjIVh+i9pvR
         iCew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752134452; x=1752739252;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ToFgcIrPsT47qophkUF6t9hEDKpaWGkYpzWGaT7NuQQ=;
        b=wYE8optPCvdqGjVDvIeffChpv3kPfHXiwDWAtb5azUL49SK4NA28mnnUFYnqQglKt/
         ZmVLwus3YhYy60yG+EOkILP7FT83B3jP1RAqA6HLKfnxyKu9W/z+zJgmuA0PVa/kym43
         xW0HwXCPCdj+bgSnFeALmAl1pvVozgNkocT8RHhR5dcjfZ8rXhvarAejUCtXXIW+o+C9
         AYyot99nBao2SZwzg7mXPCpgr61irzodMECidHxXcGwmynC0i0fOtD4MxlKUYA3BfMrv
         3oN6wwo5TuKBBt3047RFmb9QwzhD4vcjMVOmwE/BIyEcqm7+JvjYehuBrivD6Wbq640L
         oo+A==
X-Forwarded-Encrypted: i=1; AJvYcCXSaomLnJH7weURWVI9cpT93PCrmiSE44GMtq8I8iav2c/D7KNIachCk/x4sdsHpYYmS0N1m9Zbl5/k@vger.kernel.org
X-Gm-Message-State: AOJu0YxuGWU5MESq9rbCYzjPWyOVUYTrposyDqxoFTTJfFV2w2U0D851
	yVMZMJpX4PeahTVraUNJI8zNxpeBbXhNb1kgJIsuko7XcYtv46QMekiUMS5fBni3U0C4t/yndcy
	jcYlrDLvk2NZCZ++txqE7Pu6tfM4knDOQcHn4JXI/GxEjOeDaqiUET1I=
X-Gm-Gg: ASbGncvdc/12n/Es9odKmMvGT5kp5heEko3leWnkKNaDLQepF/azF+oPeOU4Z1wrwWC
	FQobjjR0q7y96K8tL+yCg0Kxy+ibmR3mwoC0ORuuo3MQpu5k+aSXrZP63Nj6yAsj7SfR2+6e4XG
	G2/69Kb7cQ9RigyI2+CO61BAV9MAfjqY7+ZeU15lzjgUE=
X-Google-Smtp-Source: AGHT+IG42etH9AipEwoVy40wJMSye+NWVNGQGCdLQSYPBIHb3YYmVeD+/TNpEhAraHgVOha7QcC5U1cAMQ15bwl7bNY=
X-Received: by 2002:a05:6870:a351:b0:2d4:ce45:6990 with SMTP id
 586e51a60fabf-2ff10820374mr954468fac.7.1752134451671; Thu, 10 Jul 2025
 01:00:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250710073443.13788-3-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250710073443.13788-3-krzysztof.kozlowski@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 10 Jul 2025 09:00:40 +0100
X-Gm-Features: Ac12FXyPZ25VVFt9KdiEcMMJ5hhaX1smahS3sKtKfS3Bife6pmJ1SYWsA7BHfaM
Message-ID: <CADrjBPpkZf2Hc_97e+-ZX5hpCw+DubEOUNiJ6fHLx0Kq2PZ7Uw@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: tesla/google: MAINTAINERS: Reference "SoC
 clean" maintainer profile
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 10 Jul 2025 at 08:35, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Effectively all Tesla FSD and Google GS101 DTS patches go via Samsung
> SoC maintainer, who applies the same rules as for Samsung SoC: DTS must
> be fully DT bindings compliant (`dtbs_check W=3D1`).  Existing sources
> already are compliant, so just document that implicit rule by mentioning
> respective maintainer profile in their entries.
>
> Cc: Peter Griffin <peter.griffin@linaro.org>
> Cc: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> Cc: Tudor Ambarus <tudor.ambarus@linaro.org>
> Cc: Alim Akhtar <alim.akhtar@samsung.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>


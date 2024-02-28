Return-Path: <devicetree+bounces-46846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1442286AFBB
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 14:02:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2B322894CD
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 13:02:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC9E314900E;
	Wed, 28 Feb 2024 13:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hCg28rL8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1F53BBEE
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 13:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709125371; cv=none; b=YMYAkltVPbEelbEpfYTc5kriNtZlSzXBxyK+IRCTFSL7r989sHnyRDLrMHTs8UbeC+DewvzMOdVbV/U1nBK5hHjYXShlvPIJnn1nqF4/nRlglF/rbI502cfgcmlTO/qaFg/5l45HW86xSmddqvwWKko5qNJ/gzoxA40VAYX9ShM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709125371; c=relaxed/simple;
	bh=3cYG7GaJLaJHPFKTz6+fE0NqWzsbSwHco8JoDUKQEQY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hsFA9eCN8PMGTKqHtZG5PoncsHzaXVwcxPIYuwHwO8M9XduQFRv9rRaGEy4hpmcUxBh/MdxCJD2n//JxNn3K9aZ9Vv1htfOuz7r5PZ6+xWECIqGv9WRt8Dswx69uZzZ4V1h7PSmRiWgayhHp5lfvlsNgUwQqH7D4l90pSqJqYA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hCg28rL8; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-609241c2696so20453587b3.0
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 05:02:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709125369; x=1709730169; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=x6lSKguAFNJlnGwYnPcXJDGp7aYh6GWsOXe6nAyiYVg=;
        b=hCg28rL8oQhsqzK4oYJZsSxvYvmljTITpK5k0wS+vfNH+vKG9z8H8l5pp4r41mYF+9
         p510o9l1WIA8Wm7T2r7h9/mLz4CKHFsNRJMgKj+qmuxzkae8EV6/HWFyRNPzuPZ9SmEV
         ZIRGSRmM2X1v7AVwcX0W432l6Y7VrBQ+JpLoXLVyFEhXIECUyUfUSsGZweEpmqQBbJnS
         npv0fQnT12bn58e6iJOQuzd/Lyyz8WvczN9nn8lQMSlDEZi7u/6/Z/FFB72Dh9XxQ2Jh
         ArmuL0uyavKLdZorcCRUuOASszDvpDEzvOjBs6U/pgfHnSXTdEo5tqmNGwpzdrmOBbie
         C27Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709125369; x=1709730169;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x6lSKguAFNJlnGwYnPcXJDGp7aYh6GWsOXe6nAyiYVg=;
        b=VuPGXx3etPponPYXIxOM5zI2htnNzu/LS1MoNY3xq+19hfgS7yn84p+EMiZNfPMzom
         rLiED6z/8PgZQVUeaBQ+kwNE9coT1kIncqoJ90Rgrkmy9IbtR4kkXdOUw5UdoT2IIBt3
         gpkUgy1WCCjYQQGPqrtmvKDfpI8Of4VUaXCweQ6iud7Gq1BKfS002wgr6HFDp5pCJkSJ
         cjwh72os6SVfcJMmMueuNl39iUPXtHKQY+0nFAAjH2qo6wrfl5uf1u0uFvax1XEY7hmd
         LAFTN/S3v2YPz6DvtFo/PcMbNINIs0ZU2YpSmJ7uGC8/ZlBET7SFoVHJFcc+rIZ1yBX8
         89Qg==
X-Forwarded-Encrypted: i=1; AJvYcCXHxBfPfAJGiyN/lhSG34tvMdN16qhP3EQwuzgo1y3PJB/b7Q+utQRWloP1V9OtLxU9FPqMGFTJ+g3ZH/tIzQ5NneipGsjWPAWs8Q==
X-Gm-Message-State: AOJu0YwPA4UcdNEMnORSyAjK0ad4EBSR0hxn0mo5NSuH93L6mXMuUXM/
	Jwzg/guV0wb78/nQMZKPVAvvQAvdZAoO16DR6B4u1fBltgAl10Pimpud4uqOZyIhml0af5WJ5ZX
	iBsM99Eb67JSFiQIWeuDWZYQRRHpKHS2WyFGXKg==
X-Google-Smtp-Source: AGHT+IHt515XwjEFX2Talx1MabYfeTXhLsH0vACvt9NK8SBc6/4ePgqNHrqmsK6WApAXc6SEFfgq73kQu0EE4nMTs0E=
X-Received: by 2002:a05:6902:1b09:b0:dcc:53c6:113a with SMTP id
 eh9-20020a0569021b0900b00dcc53c6113amr2580289ybb.59.1709125368961; Wed, 28
 Feb 2024 05:02:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240218-msm8996-fix-ufs-v3-0-40aab49899a3@linaro.org> <yq1o7c24oyt.fsf@ca-mkp.ca.oracle.com>
In-Reply-To: <yq1o7c24oyt.fsf@ca-mkp.ca.oracle.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 28 Feb 2024 15:02:37 +0200
Message-ID: <CAA8EJpqUrvzU_=EGcXdpLjVetSkCv0vfnc1hNhPQdyUQvY7UzQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/5] scsi: ufs: qcom: fix UFSDHCD support on MSM8996 platform
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	"James E.J. Bottomley" <jejb@linux.ibm.com>, Nitin Rawat <quic_nitirawa@quicinc.com>, 
	Can Guo <quic_cang@quicinc.com>, 
	Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
	Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-scsi@vger.kernel.org, devicetree@vger.kernel.org, 
	stable@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 27 Feb 2024 at 04:33, Martin K. Petersen
<martin.petersen@oracle.com> wrote:
>
>
> Dmitry,
>
> > First several patches target fixing the UFS support on the Qualcomm
> > MSM8996 / APQ8096 platforms, broken by the commit b4e13e1ae95e ("scsi:
> > ufs: qcom: Add multiple frequency support for
> > MAX_CORE_CLK_1US_CYCLES"). Last two patches clean up the UFS DT device
> > on that platform to follow the bindings on other MSM8969 platforms. If
> > such breaking change is unacceptable, they can be simply ignored,
> > merging fixes only.
>
> Does not apply to 6.9/scsi-staging. Please rebase if you want this
> series to go through the SCSI tree.

Please pick up just the UFS patch. DT patches should go through arm-soc tree.

-- 
With best wishes
Dmitry


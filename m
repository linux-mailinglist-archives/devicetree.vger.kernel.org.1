Return-Path: <devicetree+bounces-73294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DC78FE7F6
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 15:36:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3167284D1B
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 13:36:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4197196436;
	Thu,  6 Jun 2024 13:36:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="ZPew/BYw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CD4195FDA
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 13:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717680963; cv=none; b=dCJtLPqiDoIst1HMz28+vfXTCJNINvDqIddP7TyeWecfR0/12A1TF9JdnOk9bMTi9jQyeDO4jGn9xieB4PyZOndJ5gAAY0z9e/2EkTP086Cd3A/Sdo0OujcZGXcGflQfgEfkdzT4F0qZnhS0Do0F8FglmMjjy2iuPn50kixfy6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717680963; c=relaxed/simple;
	bh=Dn+68IYvXFRM/ZJNZhnDd4YDu9/8K+l2gjrIK8I9Atw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BncpjmZzLT5hfXbOYwkeT5Dcmo2wDoF0vH12n3MM8GCyAemUZKzX2ZRQTPUzFZOMqT6ExmV/cs95LLhnQn0klSumSrq0Nu+/yQ5tRAye2ES3IBE1ZH5muMmNfW/Hv+kkQCQ/fBByUURBfMzlhqi9jHRuzIKflz1pukZ00HjNfgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=ZPew/BYw; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2eab19e7034so18788871fa.0
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 06:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1717680959; x=1718285759; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qcE4lbv2vNyPF1qxio9ZhgpB3UHvF6AORt7V6CDt54g=;
        b=ZPew/BYwIKEy0uQJtRGU5tOLUXyRlErHL96FWn6X8IqfA5LiltkPUv5gsc2WKBMwg4
         Q/MDVNkMkvwPBr+PvTRA5ayfnA1PgwF1o1WRHSDjxxqjDjL13o0zsETXfL05QKrbNA3f
         /WHZyYbwSd2laAe96gYtl77a36Q4HJ2Qwe87hkrZ+s8cIuOfPZljE1ZvrxZHLEw+2K9G
         urGmDGyTde7eMN1TfK5eyL4w4h3vHy92Kg8/unhJ/13G1wdbGjM9Ku0urSYqCDeWTwhN
         W+JR4Juf/JLrM1tLq8WRvVu0ItVD0EvOa8nJN4TKsHqxOqNHDpgOtBWseR7ohsLW/Cne
         P7PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717680959; x=1718285759;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qcE4lbv2vNyPF1qxio9ZhgpB3UHvF6AORt7V6CDt54g=;
        b=VplerEoKhuUfAg+LuODzB+EXGzCHs6NtRktouSlH2xRC7xFdnfhv/NheXHqv1NbQXW
         AXKM+LKnFh9vVl1rT5uSUZV5GQJLpTJJfo7O1cbd/hHkGRBjU2qNAmGuu0sfQjbzlfgG
         tenQRop5pjeCvcVm2j2VFGdNV6DULQlAPzhV0xwdjAMBFJdPXhS3rVq4eVBs5w9RBfVU
         rNxloH2Fr/qpCTp7xrYpAA5pJUUs1c76BpJJdo4oHkPLnckLlhanDnUIqplqJ+T5lEoj
         4waO9xIp2b4DVr2C00H13btLVp92LChMiTbWt3bCp1a/xNnXAObOFRh324/pXsxT2HIg
         PF/A==
X-Forwarded-Encrypted: i=1; AJvYcCUsSVe7kKwQgYWrmr14F/Go/vmmJYLqGbtKMQuNY1auYjMEQOlpdh2F+yyd5EqqGZqmMd6boOjHGMaZ4taXg6LcORiFt3LUHdK6DA==
X-Gm-Message-State: AOJu0YzRnvWJl7XYxvHGLgB1BRPQRjEWQkUYjbcA7WiEnleBvGebWS5D
	XNCBalrntzjML2ZM+uWEQAR9xGu6geNk8L532eWWgNHC4Dk6MEply+IBU5bylyBPFnJGu4EYq3y
	IMcZYFhLoy8SMkwwS4CruDolwYTR8Mq8GvZsjYbSi0oflJyni8vU=
X-Google-Smtp-Source: AGHT+IFBM66nYsYkj5n/LotNPGso9ssGRfTDwE6YFuYv71IJpcC35zwc+EVz+BTh4BzurMJ5gBpZ2OPmZZ2xaKfaFt0=
X-Received: by 2002:a2e:9e99:0:b0:2ea:c518:7c6f with SMTP id
 38308e7fff4ca-2eacff98b6bmr8848171fa.1.1717680959188; Thu, 06 Jun 2024
 06:35:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240605122106.23818-1-brgl@bgdev.pl> <20240605122106.23818-2-brgl@bgdev.pl>
 <87h6e6qjuh.fsf@kernel.org>
In-Reply-To: <87h6e6qjuh.fsf@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 6 Jun 2024 15:35:47 +0200
Message-ID: <CAMRc=MdiKxtnN+g92RUTXdOydaPV5M2u5iUdKyE2SNvDkdXAjg@mail.gmail.com>
Subject: Re: [PATCH v9 1/2] dt-bindings: net: wireless: qcom,ath11k: describe
 the ath11k on QCA6390
To: Kalle Valo <kvalo@kernel.org>
Cc: "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jeff Johnson <jjohnson@kernel.org>, linux-wireless@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	ath11k@lists.infradead.org, linux-kernel@vger.kernel.org, 
	ath12k@lists.infradead.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 6, 2024 at 3:30=E2=80=AFPM Kalle Valo <kvalo@kernel.org> wrote:
>
> Bartosz Golaszewski <brgl@bgdev.pl> writes:
>
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > Add a PCI compatible for the ATH11K module on QCA6390 and describe the
> > power inputs from the PMU that it consumes.
> >
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>
> [...]
>
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: pci17cb,1101
> > +    then:
> > +      required:
> > +        - vddrfacmn-supply
> > +        - vddaon-supply
> > +        - vddwlcx-supply
> > +        - vddwlmx-supply
> > +        - vddrfa0p8-supply
> > +        - vddrfa1p2-supply
> > +        - vddrfa1p7-supply
> > +        - vddpcie0p9-supply
> > +        - vddpcie1p8-supply
>
> Not sure if we discussed this before, but based on this I understand
> that there can't be an DT entry for device pci17cb,1101 without all the
> supply properties? But there are QCA6390 devices with PCI id 17cb:1101
> which do not need these supplies and already work. For example, my Dell
> XPS 13 x86 laptop is one. Or anyone who manually installs QCA6390 board
> to their PCI slot and some of them might want to use DT, for example
> setting qcom,ath11k-calibration-variant.
>
> This is not a blocker for me, just making sure that we are not breaking
> any existing setups.
>

If they are already powered up without the need for the PCI pwrctl
driver to do it, then they will work alright. Bindings don't affect
functionality. But if you have a QCA6390 then you have its PMU too and
the bindings model the real-world hardware.

IOW: your laptop should be alright but the supplies are really there
which warrants adding them to the bindings.

Bart

> --
> https://patchwork.kernel.org/project/linux-wireless/list/
>
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpa=
tches


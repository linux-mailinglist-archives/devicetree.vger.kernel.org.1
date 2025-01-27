Return-Path: <devicetree+bounces-141056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 06442A1D43E
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 11:16:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3B7011887AE6
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 10:16:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC0911FCFE5;
	Mon, 27 Jan 2025 10:16:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="mVpnGmoF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFCFC1FC7D3
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 10:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737972988; cv=none; b=JVV4xaKDcUHS8oTHqW6IeaqqCiCzJbTrpzYq9IG802ukotnL4URjcG8omANnUsS4lKe+6qxaM3gSHVSFNswrqW/V89bGly+m7i06TVFw78hyP+DrRioRPRsHsDtAMd6zkYOL891bRMnnY4XKA9ekdVd5xpvhu++yzHORhMN6weg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737972988; c=relaxed/simple;
	bh=obQsn4n7j3csTpncFqIxH2uui8/pigmf4CVX1DuQRO0=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=Lod22JxV0W28DhEmV/yksYxFJtrHlXzkHsvZ/dkYMzRfwRccOGk3EyeGEwfVvIh0otP25PnUYkdin7cKYCFrbSGkoHoymeuUJt/Xr5q1VH1xR4MY1tjYuN52QNAx5Ikv20HFMhd6cxb0s15AGHzgAQ/vzMNUaHjdUZkVpoKPvVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=mVpnGmoF; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-aaf0f1adef8so724820966b.3
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 02:16:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1737972985; x=1738577785; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+/2xaO6ZwSPMjtqS6BLYIWLcBC2EYqu3omtVNpOuuag=;
        b=mVpnGmoFo9bQY/Lkg2/+nTujQsKYOn9VQE/UeEvDyRrLBVoshMqZe14LzwImA6h/eW
         Gxx7eXlhLLLeGSMkf7aFBp35sXbpl9zKDEPfKlaOvR63NZxxB1pdKbjkWmldbTn3clw+
         WbTY+YbZC7he0JqcsBkZBbQXYVLw9ms8cwQvOtkZ2kanS0A8pEFf1LEAncYMbVnuYIYS
         HgDQ80q/9QjX4x0+20GlnGSYFWCYDYBIkGTlDLFxL+YUPgDVVjXLThW+H+OXHGGkEl3h
         aHGFVjT8CGaw4fxH/20hshmv1qTvenJTAauU08kjbcdLvn4BP5V4ZktgmD/LBgCXUoDi
         0a7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737972985; x=1738577785;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+/2xaO6ZwSPMjtqS6BLYIWLcBC2EYqu3omtVNpOuuag=;
        b=YzB09BRvNQJ/PnmNigIhu98MNfafhbQgDlxTMmNCjL/TyXy6z3NyBTogMuQFAUF3Ug
         90WOdL1Lu3cjFrcHZ5z3J7/iBdmAPKbKQhPhaBIhA4C1Lm6v2X9XV1DIf/UHIyayWn/O
         VwOFD/dqbXZa8mSXjdZfJEP8iXo+N+et9YgMQzzR3vCz0imkzNvyiEjihPeW0E3SDGHI
         mXFC4RLfnZKwl0WHqC6gIMg4QnhunDRITuRwSHzhjfS+QOfVmuqNxYUJxbw2RF5oOu5c
         mT+mOL6/qH+31LTOWZ8yRzn8J9a9FMIWgcsMo+XMcz/gUOF1H70srHNV1FsYnIHLdc4k
         Yzcw==
X-Forwarded-Encrypted: i=1; AJvYcCWBxif1SOaRIKC1qXNLXbqGCUlQtBdAo0M9MoMVZ1Wj5KnLHOo/WMRtKGQ9fLzbGaDw3mO4qwp99GFe@vger.kernel.org
X-Gm-Message-State: AOJu0YxD2yCE5OTZdouZHJQ/Yd2ieCYgWjODU6OTWRAwZa45XvX3twdm
	mPYTFj6Lfu6Qj9bTe1xxgmiyJvtKnsiiUSD/7h+FEa4LH++kgNdAoEGRALnHU1WsjEiCSYGZhxl
	v
X-Gm-Gg: ASbGncvx0QCKWNA5Rcd5tsMx+cf9khRzEkwcgXuaBjivMOcyRVRQSr4XVRU7wHxNquW
	LDbLQDkDHyHjsCRfO/IFYj1GFeMf27ca5yzeFyngMVInpxdCsk8gnZIZvnQd7YbTrZCD2BRgM8i
	io1Kx0cxoq/VY74/lN8AIXRazPDaRbx/4r8Gf9Tk9y/aKjpGo6cs7suzJXa4TnZJs5BqZHj8avo
	a/MqhmcUPsgDI5xp0ZS4GJjE//5jqBndtD8ABOcfWHDscKM4kpZ3gE01u+WSy1sx1Pfhl83gPDM
	ZEI7Z8g4t3EREwFe+hYC3sMBKP4z+0VurMyoxkwyhbFBY/NGKA==
X-Google-Smtp-Source: AGHT+IEgVzXXA7K++zDeXRdG9gymB7ci66L3akpPcMPbt52hmSJZiloLpPQ6jyZUInZAMPERyeQkww==
X-Received: by 2002:a17:907:94c7:b0:aab:daf0:3198 with SMTP id a640c23a62f3a-ab38b36bed2mr3924063166b.40.1737972985195;
        Mon, 27 Jan 2025 02:16:25 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab675e63187sm567191466b.54.2025.01.27.02.16.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 02:16:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 27 Jan 2025 11:16:24 +0100
Message-Id: <D7CS06UAY85B.1L2QQXQ63GFZ7@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Luca Weiss" <luca.weiss@fairphone.com>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Ulf Hansson" <ulf.hansson@linaro.org>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: power: rpmpd: Fix comment for SM6375
X-Mailer: aerc 0.19.0-0-gadd9e15e475d
References: <20241202-rpmpd-sm6375-v1-1-12a4f0182133@fairphone.com>
In-Reply-To: <20241202-rpmpd-sm6375-v1-1-12a4f0182133@fairphone.com>

On Mon Dec 2, 2024 at 4:45 PM CET, Luca Weiss wrote:
> During an earlier commit, the comment from SM6350 was copied without
> modifying. Adjust the comment to reflect the defines.

Ping, could this trivial patch be picked up please?

Regards
Luca

>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  include/dt-bindings/power/qcom-rpmpd.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/include/dt-bindings/power/qcom-rpmpd.h b/include/dt-bindings=
/power/qcom-rpmpd.h
> index df599bf462207267a412eac8e01634189a696a59..d9b7bac309537cbfd2488e7d4=
fe21d195c919ef5 100644
> --- a/include/dt-bindings/power/qcom-rpmpd.h
> +++ b/include/dt-bindings/power/qcom-rpmpd.h
> @@ -65,7 +65,7 @@
>  #define SM6350_MSS	4
>  #define SM6350_MX	5
> =20
> -/* SM6350 Power Domain Indexes */
> +/* SM6375 Power Domain Indexes */
>  #define SM6375_VDDCX		0
>  #define SM6375_VDDCX_AO	1
>  #define SM6375_VDDCX_VFL	2
>
> ---
> base-commit: 40384c840ea1944d7c5a392e8975ed088ecf0b37
> change-id: 20241202-rpmpd-sm6375-06582e126d7f
>
> Best regards,



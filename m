Return-Path: <devicetree+bounces-248218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CA727CCFF19
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:01:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1D56B3028110
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 13:01:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CDE43002BA;
	Fri, 19 Dec 2025 13:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Nxw1pCJe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429F63246F4
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766149265; cv=none; b=Ii+iM+4u7pW3CfgYYE1TAhH6TW4StOLPO9oz+boIVXMjW3ppvSx6SB0Zu/jBMxVJ4pW8B1w5h4Rkjkx6vFUh/yN5gg+ytlfP3Dbe9o8n6AKG5hVz4yTcYBGtWHxozJfBp5uazPoqTPfaolDWTbN8TxJ6DCRYu/0+nggep/hbRGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766149265; c=relaxed/simple;
	bh=OMj7xeqwJMwjOl9SBTbfE9Y8LYVng9ddlrSM4o/HdWk=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=Iuz0RsOLA5Ds/aMoZ4HUfQenoUFWgZXHxI8229q20nJuOVq2C9DU+8hhhWFly+dRh/M5ph7QgMzzWf+Io5suARnVaby9oysMAkUtOOtrClGvtXfN17s0AETpVu4Pd9pRqriPKtSgcMjSgaGrXW1K3sUzkBuaQZPELkqTPUb7Nyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=Nxw1pCJe; arc=none smtp.client-ip=209.85.208.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f65.google.com with SMTP id 4fb4d7f45d1cf-64c893f3a94so206360a12.0
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 05:01:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1766149258; x=1766754058; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QH9a092t0vWzb6LlKTi2ntIznrIkgJiQ0lVDXHwlCgM=;
        b=Nxw1pCJeW6oYa0o7jXMT8/6bl0Qhufe/V6WkUqMzXlQARU542McV65Oi/jPSqlsZn/
         1GLdq0p/m3WxvDD27Z0cwi61SyEJ8ka7YygzMCSArhE+byrxS8Hr8HnQc+mFNmbWRhh/
         ZewHkSu1CVwenStJijMPshEsPoHM5V38SiDf9YLrQ4DMYZGTURGhWO5HZibBeZLdl2Tf
         H7WM76XqfwudX4lwdNHmTLSmc98SAmLrhTuJZUtEPCx04ER10yFEww5SUJ1pz8sbXLMC
         nMhYEuF9q32CvQYex+TBIFv+YYIcSczWUJet0EPT/rwbpBo1SnPYWfpEOISQpAJPq9RM
         iLIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766149258; x=1766754058;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QH9a092t0vWzb6LlKTi2ntIznrIkgJiQ0lVDXHwlCgM=;
        b=FvLXshEex3EypCpqoRQ4ErnstUxlwPS/z2cnIOjrIg2Bb2ePRsxMuVtZW7NHzxxue/
         8V2/K6GGielNiKdGvVziNZEZJv3QBVd7kbHEoUqQBXRuXPuKgu5RjXpX1LXBSu4p3ARC
         0Z4e4yoTv04KMFz/HjY6lO2jp09kt/ZaI8/ae1j0v+FC07mrcFRiTDnMRDdNHsqbOZiQ
         +zfqXgAoO6uoV9pRtt+A6pnZ/QrJywmP98BtzFZnnVHsL0sDOrLXgE8S7OmTAi9VNC/f
         wGkIKo9Xhn7Og+9ZLYynnkQJ5VaKlQST02H7QN4vE4jtbSFM0bbb78s+5rjN4GDl8M6O
         eHUw==
X-Forwarded-Encrypted: i=1; AJvYcCVjeqg2vUODGv+vaIqjilZAGzoi4kg6WobpJkppZK6wa3jTphnOhYw7Xl6QObQiuJGH/T3dlZdiKFDA@vger.kernel.org
X-Gm-Message-State: AOJu0YyMSK5RPOeYCcW+46C+1QctQjn9Mq5hzDgeP+/NxQFdF8ZsYmHC
	8Fx6sqJQUjl6lWJ7kGpYdcftMq/0JqWhtKg3A59Ik66MBoxDTldqQ/ilY8HmzbS6Xj8=
X-Gm-Gg: AY/fxX470rBeGMAYlwzojYTg32p6FN4sf0i915Idln51kvACF/fxZ+PTkG1UUZPKjHS
	Y3Q9jmUz/RpTLB6LNZ4IR+hsvfGVSIZY+CgSHJQxnGIvf00b3O4tefRNcS7J0lFnq8FF9NCAI8a
	+34iiHPHjDeWAo+OKcUMi0csYUjE5l7Yk62WbX/11DXvi9XK/txwc4kWdQA7J7XgoEfrLoUdJIv
	YUnL4LahBQluaCkZ9l+e0/h9mbixyqiYzNXCMCvNnNRBqOMBGU0Gy5qZ6Bd6Q+WUY9fu4fvgJed
	y+MlKZlXWoYFw/Ws00pc0BGgezcMbzueYp1NzfAVTE+5HMLo500qbBe7v6MBhSo7u0fLIyDMSQ5
	mNGShdd04QmyMyhnaHn9Alm/D6Zt+FgXjk3WcwdcnzXyntwS1KjihzuRGQB+sgmfkq4v01Yv993
	+coPpmazDLof0Lxdf0tbeo8y4E6BTG/wg8Pg5kGipeKg6j8ZQKzSG8R5mvNqRxjT74a6ZLf7HoM
	RMKsWwpjKB+BWumEi1WdwFO
X-Google-Smtp-Source: AGHT+IHLGt3dLozOmdXSlTcHVXCnuuxt1U6E7k8MjKzoQF2b3nEBMoU2ft3Yv3cwbA/6YNKG+iAu0A==
X-Received: by 2002:a17:907:fdc1:b0:b7d:266a:772c with SMTP id a640c23a62f3a-b803574c34fmr311215066b.21.1766149258484;
        Fri, 19 Dec 2025 05:00:58 -0800 (PST)
Received: from localhost (2001-1c00-3b89-c600-71a4-084f-6409-1447.cable.dynamic.v6.ziggo.nl. [2001:1c00:3b89:c600:71a4:84f:6409:1447])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037de11e5sm223530866b.39.2025.12.19.05.00.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 05:00:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 19 Dec 2025 14:00:57 +0100
Message-Id: <DF27NRY60F8J.19D014VO387TN@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-pm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-crypto@vger.kernel.org>
Subject: Re: [PATCH v4 3/9] dt-bindings: qcom,pdc: document the Milos Power
 Domain Controller
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Luca Weiss" <luca.weiss@fairphone.com>, "Rafael J. Wysocki"
 <rafael@kernel.org>, "Viresh Kumar" <viresh.kumar@linaro.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Manivannan Sadhasivam"
 <mani@kernel.org>, "Herbert Xu" <herbert@gondor.apana.org.au>, "David S.
 Miller" <davem@davemloft.net>, "Vinod Koul" <vkoul@kernel.org>, "Thomas
 Gleixner" <tglx@linutronix.de>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konradybcio@kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251210-sm7635-fp6-initial-v4-0-b05fddd8b45c@fairphone.com>
 <20251210-sm7635-fp6-initial-v4-3-b05fddd8b45c@fairphone.com>
In-Reply-To: <20251210-sm7635-fp6-initial-v4-3-b05fddd8b45c@fairphone.com>

Hi Rob,

On Wed Dec 10, 2025 at 2:43 AM CET, Luca Weiss wrote:
> Document the Power Domain Controller on the Milos SoC.
>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>

Looking at other commits in qcom,pdc.yaml, you're the person who usually
picks up these patches.

Could you please pick this patch up, it has been on the lists since
months, blocking the arm64 dts from going in.

Regards
Luca

> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml | 1=
 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/qcom,=
pdc.yaml b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.=
yaml
> index 38d0c2d57dd6..0c80bf79c162 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yam=
l
> +++ b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yam=
l
> @@ -27,6 +27,7 @@ properties:
>      items:
>        - enum:
>            - qcom,glymur-pdc
> +          - qcom,milos-pdc
>            - qcom,qcs615-pdc
>            - qcom,qcs8300-pdc
>            - qcom,qdu1000-pdc



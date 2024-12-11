Return-Path: <devicetree+bounces-129981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 379D29ED712
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 21:12:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A822D2832E0
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 20:12:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FCAC20B20A;
	Wed, 11 Dec 2024 20:12:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FATNfFS1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131642594B3
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 20:12:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733947962; cv=none; b=hOjU48YzVCrU/3p5iiA2makUAVQMYYIMMOFXX0H3sl6tzTjluar6eNKjzNCTlCDy0d3rk4DBgK/5RKz73RNkuDZh4DYY+4gqSLA32blOtMJDhkq5nrT/5Sff/S4pmuoTGpPpTTOChBwDUOMa3DymPvb4TiO10NfMqRoVusvAlfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733947962; c=relaxed/simple;
	bh=/fVcvfI/nJgq0KL9QHFEEc3B//jpEClgu6sMbVc2hJE=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=n3VKhgXMKJFF3v442Zi7pBgMFwfZGpSjfG+jh6N/resdQdsiRoHcg628CgctgP+CHgilLuvkDbz3TOkURAYirlsWtdKpy2TOeQ6xx5IG0L15WTexnI6Ih8a5QwltxN1/ueNMcG7AucElFVkdosOG+nGEgm2pL6AhGb0RSDMNHic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FATNfFS1; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-385d7f19f20so3434167f8f.1
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 12:12:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733947957; x=1734552757; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TPN2+AhDq4P0SWNYP6pOLiBUFHEUMd0r1OKMpQRaBeY=;
        b=FATNfFS18kvqaKIJKr/FAXZZq8pJ/DSe7M5/JRLICn/BMsu08fL3+FZjtQ8m4JgnMf
         opTGKwMkj/aDAc5KoTV90802yFTRaaKVvfbnhqPtKXQcL5MgSBA0K4cNb08RJlVWMur9
         Bo8EH0L1D0ez1LbfxXYS3zE78TJPNRw/CE5xVP/OvqtBTk4l2iHy0Qhmj2wGGnY1Jt9T
         kMa9GWTIFfpM9YOnu4B5+7EbpePIh5tJ9DDb35Zes1aVxb4i4T0t3tQ51N1LKWXNMHi2
         CKdhHQUxhz35Vckk+VlLIMgNUiQKrHd4oHbwGxjgBmYanNhAwg0skyxrGtZEWHBrVCe2
         QhdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733947957; x=1734552757;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TPN2+AhDq4P0SWNYP6pOLiBUFHEUMd0r1OKMpQRaBeY=;
        b=J5q0udN7+NDyinUw9/Q3jIH1LWgP6Dy8E4PK3jaeNeIg4vXui2zAx/gb1kX2CjBp79
         BFW1F5SpDzN8AWuCqCRHg3kKXJh4Cr7Bf1JDtXcAKDXtIzrXIw8LpnHTala8yTm1MCZx
         koUr/GgQOpdm1nb0kkOVrv7Aovec7tjAsBtT1oHNrwqXMv0QFUltAzUfTNO0IN1d6e3z
         MIDZ2XjAArj3SfmQa2sA5kooiBIXlnwEbszQPAHX3FNQNsPMf8Cqe6oIdCi03ZHELtl2
         BKVBpeArxNMvyrfyAc++TH5KXLnG41c1oo30e7HB7EdWcNFkQcTZWWgQLA6sBRp7cLh2
         bURQ==
X-Forwarded-Encrypted: i=1; AJvYcCUIwbV/ZXxrKU+eXQ2verkhpDmUH4WrqSwxgD9GdYvcxWpxa4/kFG/uDG2/qe/ye2n05UOOtE48vCf2@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2BnqFJZLqQhepigzyzMmy9us/l/eP2HHozK0C8bDPeiUKfm+X
	NqBcYwD6SiwH8Su4gsVh1alI7y9nQQGR1NsPf7z9t9cjw4P41Nmye0Bjbm/Q9DM=
X-Gm-Gg: ASbGnctvbYpkRAAKD6v813XFwm8aNrV9mm5vT+/yDf7F3e8T1AYiWpQEAWVu7F2yvt7
	lOIS4QV5z6o9LQNr5rbz9fJnC0HwsQl4KE/r3wZ86yHEGpIWZ/jcgEzwiWGPw1KnBpY70tcl9Ht
	zjISe0qNEkOD96jc02N5dH3bIOdUZdU3wt8OaPY9cdwvbU0Tw9pyDFks2I5R+wedhlnC/SUK02B
	UhcbzXYX/tzJ9g1artWxX/EKa7PANE46kewxxEaH3riGViU5V3ZSVHt
X-Google-Smtp-Source: AGHT+IGhKdHf66Trsg0Xay3Wa/RqDWr8rS+2Oi6F9OIapryWlc50G8eqxXs0nor3X97sj8+KlZI9gA==
X-Received: by 2002:a5d:5984:0:b0:385:edd1:2245 with SMTP id ffacd0b85a97d-3864cea45bbmr3619738f8f.30.1733947957412;
        Wed, 11 Dec 2024 12:12:37 -0800 (PST)
Received: from localhost ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4361ee54736sm23968785e9.41.2024.12.11.12.12.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2024 12:12:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 11 Dec 2024 20:12:36 +0000
Message-Id: <D69592H3JKB6.21HDMPXX9Q6OF@linaro.org>
Cc: <broonie@kernel.org>, <konradybcio@kernel.org>,
 <konrad.dybcio@oss.qualcomm.com>, <andersson@kernel.org>,
 <srinivas.kandagatla@linaro.org>, <tiwai@suse.com>, <lgirdwood@gmail.com>,
 <perex@perex.cz>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>, <dmitry.baryshkov@linaro.org>,
 <linux-sound@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 05/10] dt-bindings: arm: qcom-soc: extend pattern
 matching for QRB4210/QRB2210 SoCs
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
X-Mailer: aerc 0.18.2
References: <20241101053154.497550-1-alexey.klimov@linaro.org>
 <20241101053154.497550-6-alexey.klimov@linaro.org>
 <ghlkqehfs5sagxrcvyywixfkt6ie3pwwtqm2j3n3c3xytjl3sb@d435kwmo3nki>
In-Reply-To: <ghlkqehfs5sagxrcvyywixfkt6ie3pwwtqm2j3n3c3xytjl3sb@d435kwmo3nki>

On Fri Nov 1, 2024 at 7:54 AM GMT, Krzysztof Kozlowski wrote:
> On Fri, Nov 01, 2024 at 05:31:49AM +0000, Alexey Klimov wrote:
> > Add missing QRB platform name to the pattern matching Qualcomm compatib=
les.
> >=20
> > Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/arm/qcom-soc.yaml | 4 ++--
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Since I am not going to use "qrb" in this patches, should I resend
it as a separate patch? Because we have platforms qrb4210 and etc.?



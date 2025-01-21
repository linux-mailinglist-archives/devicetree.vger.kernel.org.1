Return-Path: <devicetree+bounces-139953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4FCA179C8
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 10:04:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B9A87161B4A
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 09:04:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DA881A8F9B;
	Tue, 21 Jan 2025 09:04:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XWP4SHI4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB39D1B3925
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 09:04:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737450256; cv=none; b=ukUxYA2G3rlqd6vNR/bYzfunEFF+F+fHbcFpuq1lBRk4ysF0gmQgkpPyvAeh3NCYmWp0BWTuvIczdR0S6ITVSkoLzy2NSNdKAMb7hsR28S7OnV3b5n0zgAh6B6gdOCV2zM/iHX+VpNmPp+jiSDoEyDFRnOgrPcG1FRJyPW8pBBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737450256; c=relaxed/simple;
	bh=XwVdkJ0HT0hM/KIl8vIxKEXw+1hsQ3Gq1c+crROmjnk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LpfpZDsXt05XY+dyVD8yu1CoWKH5y3VnCUEIkq9MtCRlq6Yrls480GsIwV7Jp4aUmB3pylyh8VFkHowsCxRfCv5ZbOA/iwxF2D3IGV5rUUSka+HS1S+qbKKiev/sTtWFitSEEvYoDeV1FyjHFUaqlPfjc6mkBjIi6SS0qxJdX70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XWP4SHI4; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-e4a6b978283so10646963276.0
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 01:04:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737450254; x=1738055054; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TRZ/7QvY6hrDbStw9BfjbdwJZJ42Wh88+/2ZYHdzGQs=;
        b=XWP4SHI4n1KMXD2QXy7MxmdGtfs/slvVfIejFISFg9KLhJDqQjO835YwfLmMwws9ki
         U9z1195i/k0jeDYwtQbCfwaIMh+ufK93LaHiHq3reLKzxhT77ILDcuWNdNSRAHM7DPxW
         srJ5K55EEaRd1ftMXSQ38qOHIh6RwXZHBh1xVFa0tHdtVQ7BOm/HqG68iFUhxxLLE3wP
         OEmo9bZ+yzImGpaR6Mrmp3cwxwY5IHZp0JnLPx56KbffP3J3w5kit0Ew1DmbpBOkgmne
         U5f2PfLF+V+STpmWLAvuG0va5VYr+WlyvKsV8tTwkeI6ssGO2izPfLONI7932vfP4ieU
         ElEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737450254; x=1738055054;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TRZ/7QvY6hrDbStw9BfjbdwJZJ42Wh88+/2ZYHdzGQs=;
        b=iGUlA1nvs30sadLdB/gDoskZJ8EENWE9tMcz9wcFfe/cwXyw40uUTtpgF2uisRVf9T
         tsusGagETKkjYp81tyRuKPMYiFtSpqXuvvgIX7QobhBT/XHig3MBMQpAYC5yRIQ/o/gQ
         RixKf81bYPEL7D4FXV8JAVtPQKAqNbeNMLiYGduHRtkk9zR2AzMc40CLs8SgrYYpXCC/
         4+myTg/p1XKbCB6rGjyOAj5PY0UVXaqDYQXWv6b46ltaXkyUuhtUHg7qK4CwfMfiF+Jm
         cfg6rk55A/BfgC7cZkierLecrkn9NWjPMgMAiLvgg2izFOUtWzEvIPCXyphWy40WkG33
         Nwgg==
X-Forwarded-Encrypted: i=1; AJvYcCWuq9CcDlB002QScXDXf4EEywLYIpnswteNfSFLqRIc64IycJ4Nt5MxZ8nwV5NbyR74JJ3ZLLzL2B3R@vger.kernel.org
X-Gm-Message-State: AOJu0YzTNpsQiSKxm/DF65na9DJkX2KhNVwL0HwXzLaNSYEOW9EeS8cU
	j765fVCicl4jh8T2Czp6R7G5xaMGG5KKRLpiX3vtT4Zd6QYo0WgkFLfoZgiFROvNEdTm2zne2ls
	OYJ71oemx6KUwQrGEtGQhXUwZQhxx4LF5ce3Eew==
X-Gm-Gg: ASbGncv+U5EGab08Ruhbly7NXumIleyicQvxxBg/OEZ9RDYLJ7PljtZ8cvp3u4w3Yt5
	PU5pqZiR7fTB0VoOwuq5OAQilOfNZ04MU8ckhHZL7Fjv0k614BGtyOzfY/YNMJnABTA==
X-Google-Smtp-Source: AGHT+IFoHnJ8l+eLZ41NWp1MLHPBCOOYwtFmi7V7spFBaYo1FbiwAoxMsckJztOB4VIjiozcDUteo3hH6psVJeLHtaM=
X-Received: by 2002:a05:690c:6602:b0:6f0:3f7:ab1e with SMTP id
 00721157ae682-6f6c9b4cbc2mr209039717b3.16.1737450253743; Tue, 21 Jan 2025
 01:04:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250120140006.655463-1-amadeus@jmu.edu.cn> <20250120140006.655463-5-amadeus@jmu.edu.cn>
In-Reply-To: <20250120140006.655463-5-amadeus@jmu.edu.cn>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 21 Jan 2025 11:04:02 +0200
X-Gm-Features: AbW1kvaqAo6FggkPbLLX4WSITapjTkIJC6qfk1nn9joPTOdmHxvm-qRWqv7CaB4
Message-ID: <CAA8EJppBVScb2YRkBcYEoDm1Len8RknAHyfOWCkti5d7MrSxzg@mail.gmail.com>
Subject: Re: [PATCH v5 4/5] arm64: dts: qcom: ipq6018: rename aliases of
 mp5496 regulator
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 20 Jan 2025 at 16:00, Chukun Pan <amadeus@jmu.edu.cn> wrote:
>
> Change the aliases of mp5496 regulator from ipq6018 to mp5496.

s/aliases/labels/

>
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  arch/arm64/boot/dts/qcom/ipq6018-mp5496.dtsi | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>


-- 
With best wishes
Dmitry


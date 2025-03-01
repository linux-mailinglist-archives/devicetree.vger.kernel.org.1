Return-Path: <devicetree+bounces-152971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DA2A4ACF4
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 17:59:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A8003ABDE6
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 16:59:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0D7C1E521B;
	Sat,  1 Mar 2025 16:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Xoo37irw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E47F61DE8A8
	for <devicetree@vger.kernel.org>; Sat,  1 Mar 2025 16:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740848359; cv=none; b=f/GZ/OhKt1CYDjrtorAsNlydYN/36A4oOopH9nXCHvXqxU+g7IVvzHP8zPCvVAk0Q4/ZJfstav+AFdJ6vwd0r5ATc5iCCl5fykp+FDOVwY7eTbI68gia/Oxtwbe80jY+dRYaoI+Ynkce+ik3ruiGQNXXiqGlncPHBpSROBqmmo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740848359; c=relaxed/simple;
	bh=iA5cPbq/9vj429yRUOv7R3QM0Odgw+vixO4V5xlgpBI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=luiWWvN4NfdpO39tCLtGKzVG1SVI48bS+bFUk4qGW/gbEHH66ayJR5aRPdGjoPqs7WC1jSAU+b8Od8tx44BbaQRbsSBorx4e7VrcrMxxHntIATXTa7kGh1V3cNJ7tfYSg4FG0KXXoV3CXGqDC5UkAp7ZxPLZqE6KPC8vdzGDCZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Xoo37irw; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-307325f2436so32985581fa.0
        for <devicetree@vger.kernel.org>; Sat, 01 Mar 2025 08:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740848355; x=1741453155; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8yH9gwYALLNPfPaQHLNB6Pw53oWquI/ljPL4PqtQc4A=;
        b=Xoo37irwySjqTyepe78VUVBUucrV9s1MjFfKbCIJoDhk52TjLM0TNnDcz6mY4mveU/
         u6gmi6rb0Wk4s2Hm7aI8M6OvasGTJM68GKEDV6/X1DhEGddz3YPDmKluSOPzyc1uE4qG
         XsjX3Po5uxqGiku/PqXT6qEFvaf4SfEUJZqOM2oFsOWwGxlv2mkXSxc/jUbwHWphSoB3
         nWpub7pyftHMYUklJk5MgaY8qE3vXWCeRzABRy8sITAoUhzC7zH7Y7p/LfcgUGf1woXe
         xbONEDWHpUuUROoLwhG3M8UbptcVjlti9cP5UHsmIELC2IcYWEQMIh1muRQGab1eUblg
         ziyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740848355; x=1741453155;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8yH9gwYALLNPfPaQHLNB6Pw53oWquI/ljPL4PqtQc4A=;
        b=EKJT1L67p4rBkJ12rFuQv4tdKM2nxGJsuafaXagdp/cIInwNnfS0pwn977TjZTswDB
         xvXcYJyK2DG+cMFk5NOytz7qCHXdg4HnYiPUA0wPLlFhMLluBMiBxQ9L0o1nzIUd1nM6
         7/XfmJblx0mFYsnW1iXzgjVqgFALHr5nBWWJoc9zol5GCTVHjq7ofCIsf9lEiaguW7Su
         B2F582q3BtVzu2K1YVNGyA3e4+SLuS8cUNkYo0RI4hofy/QdnCVMcTqTkSMpqMrcqdj+
         NherbZFQHHTwTVDKpM4+HniyQ4ysnFHO3zi6Rs819lLxfcc/JSfO0sdIOTHKbuztPXFG
         5hyg==
X-Forwarded-Encrypted: i=1; AJvYcCV0kyYm/D4dx2hjXK/MJcvZzafXvau4BebiIv1Z21vmlR8HgABET5agyd8JfBLljJ1QreXX5crXPkNk@vger.kernel.org
X-Gm-Message-State: AOJu0YyAMnqh6yA1m/ltv1dqkAXXqKLwrRzb/TpByGtXNNleLBHPs7s2
	GFJZ77okVmodm9/vNsxbuhKMjhoAFFS4R4XpNPMlB71jwAO9VYxnJz8oZL6+FdE=
X-Gm-Gg: ASbGncsIEWAlOLefQ2fXSO56ZQKDrAcseVIZItD01o+LQiUGHsDilUL3aXNiUhvtjV0
	aD+vSaeAGvJISgXTV1/ftRy+GpoB6+dul6x6ZNG+jlub9/zXxz22AL2hxkcHwkgrI3JcA1aXolf
	/L1G0/NB5G8Ec3MCoZmbKWEEDy2S/JrNImM1VF9MUpYCJixn543ZBabdgpmfct3VNSpxFZ1HnYK
	/QYCcJ6yYHmsclxEAiwBUfob+/DD5+pXJgQj8LldQfkxjJFdo+Wz8rxTisVxPJ5i6C6GlzwsmtX
	tMC8pkYX0kzNjTOmwaWp6n458xwqT2Xz2XR/ZgjqMqMSrV1X0XhGG2PVLbzC6+uHnACKtowUcEN
	z0PqtPMu/0AEFJlh7NonbC3yo
X-Google-Smtp-Source: AGHT+IEVHoucPnHehRJx7iK3J6AShz+KMdwofBAN581qWxfDGPZrVO0T7MEE9K9AUrnUMGyOVN+cYw==
X-Received: by 2002:a2e:864d:0:b0:308:eb58:6580 with SMTP id 38308e7fff4ca-30b9345c812mr22403201fa.33.1740848354988;
        Sat, 01 Mar 2025 08:59:14 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30ba9f3ccecsm1399641fa.7.2025.03.01.08.59.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Mar 2025 08:59:13 -0800 (PST)
Date: Sat, 1 Mar 2025 18:59:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yuvaraj Ranganathan <quic_yrangana@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qcs8300: add QCrypto node
Message-ID: <vrokhkstd3zbvdxcagjvbxnzdwznakwg2xitd7wpbdxogqvfkd@grleg3nqtoxm>
References: <20250227180817.3386795-1-quic_yrangana@quicinc.com>
 <20250227180817.3386795-2-quic_yrangana@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250227180817.3386795-2-quic_yrangana@quicinc.com>

On Thu, Feb 27, 2025 at 11:38:17PM +0530, Yuvaraj Ranganathan wrote:
> The initial QCE node change is reverted by the following patch
> https://lore.kernel.org/all/20250128115333.95021-2-krzysztof.kozlowski@linaro.org/
> because of the build warning,
> 
>   qcs8300-ride.dtb: crypto@1dfa000: compatible: 'oneOf' conditional failed, one must be fixed:
>     ...
>     'qcom,qcs8300-qce' is not one of ['qcom,ipq4019-qce', 'qcom,sm8150-qce']
> 
> 1. ICE crypto node is not sorted and fix to sort it.
> 2. Add the QCE node back that fix the above warning.

Two issues. Two commits. Pretty simple.

> 
> Signed-off-by: Yuvaraj Ranganathan <quic_yrangana@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 22 +++++++++++++++++-----
>  1 file changed, 17 insertions(+), 5 deletions(-)
-- 
With best wishes
Dmitry


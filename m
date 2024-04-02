Return-Path: <devicetree+bounces-55388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA20895088
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 12:41:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DD401C225B0
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 10:41:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BDEB5F84F;
	Tue,  2 Apr 2024 10:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GE9/grAw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD125B699
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 10:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712054447; cv=none; b=FH6oLy89Xqtmc2kFXjGSHaOtEtAXxquTngjXgPvAy2qW/9yRHIdOuDYQ0pVzoTKQ38+xe408bwi3AgcSfRv1na85aokxInmHkcTNEnTSwk0MbiJJDQ/hxkVirFnO+1ZqqH+IsuaUYb/AzT7wPzo3w8KhfI6JPxUgesycZymA3O4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712054447; c=relaxed/simple;
	bh=UsPusJ70z/hTGNwQRA1c0DtkXeRzoz/bLJ9nq3UmtYo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Pqfc4Co9V3RlcJgAubSlGjsVVtE5mGDBqGiKkbaR4MrouFL7oP1rXKMSj0zZKB9YPVqoXWRmNgskaPmwgqeLKwpQx8zxNYWGjdTplfZ8J+MRsnXSBSRBtKngQkNX7RCcx3oKz+GkgzP/f+YOiWgmCIaOnMKsEnxtfY9g7oNUqXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GE9/grAw; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-dcbd1d4904dso4597733276.3
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 03:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712054444; x=1712659244; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9PYIxF4j0xg6PPKY6bKCHDAb7yDnCos1Y4nrGksgbb4=;
        b=GE9/grAwXjS3vyGcP3xO2p7aY4SQE7kknB7whhEJj+RZknboC7Fkvp5M0xLcp1w1YF
         9VpuKcerKq53qlB3n6JQSIHAjOlswb4uYVhXhsR6Ja9wE/rPHMag0KbrooFWPEMq+hLH
         P7hhUzKBJNjEmLbY+0YEbZUL/slxVBYtziKTaXOC98GLtnQuknFdZYcC58bEU3+fj+W2
         IWMHarmeQM/wegnsXs/iykS1bPnSwd1fzwdYT3pVsAfNRgxk2Eitfk8A7n60Oc/8jjkj
         5aK16Le0kSOPc7dZXxF6fxVp/iJlt2UiWq0n4uKZsaqagXfsnZfC1fXvzH/ekK3lzCGj
         xzbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712054444; x=1712659244;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9PYIxF4j0xg6PPKY6bKCHDAb7yDnCos1Y4nrGksgbb4=;
        b=lyOxGr4aJaugDgSd6NvcFY+qworGgtngGae1T9fl9+0Ip2y9kYyGckPpeWDl2ruSAn
         eZOwho6MKhRMoFRjokyjmxt+0pyg0/T2fBK9ZRcK8ax1HGvA69r1UF5ZRKYi+b5j9sbg
         aQf0YuzRhzfctBhappkm+GEPw7fNFrIaDSuhIxklk2RM49JW0NmZ21wTM/t8yF3X+V9L
         7km/evckTl4NHrr6rJT4FjacRpOIqzAKfGMGIqb/uO6vj0qxwWCGi0EwF3FCe2+GRUG9
         LHQjIofWVLTHiTL7djVXKAvywMrMw8lSAHyGcfkYIQ9vABqfa0jLuhGlm8f7/AGhCXau
         79aQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4J0FKjuQK/pEyyr0UKkCVydioIxzpcJ4f0k0RycjrHFO5LV7zAVmP5R8a8lVFl6c2AL99qzHpLo1jKCYgoU+b1Pa02XamUN6TOQ==
X-Gm-Message-State: AOJu0YwIqUXpF8H03bL2DPWwP8jKYFD2ARCZ5g070QbaXFjuiv0WAFzX
	ZF5BaOmG0mfv57yRzHUUbeGJhcXLpmSk9qA47o139DLLEiG8Mfe+EX+cpGT7w8aXesiTHN0HPNX
	SLfJBHhdPfgiyIar2NmYg+3eapDQ/Jqv/x26MGQ==
X-Google-Smtp-Source: AGHT+IFJm9l+G9UEBddm5xRcgxHteNtcPg5V78UGOHmM+aa84AtnvwUHGqb/sEXQfiCIWlOZaAm0r9DYyPYH6p7uu4g=
X-Received: by 2002:a5b:ccc:0:b0:dc6:de64:f74 with SMTP id e12-20020a5b0ccc000000b00dc6de640f74mr9783364ybr.9.1712054443883;
 Tue, 02 Apr 2024 03:40:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240402103406.3638821-1-quic_varada@quicinc.com> <20240402103406.3638821-4-quic_varada@quicinc.com>
In-Reply-To: <20240402103406.3638821-4-quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 2 Apr 2024 13:40:32 +0300
Message-ID: <CAA8EJpphk_kqzBE7cKb73ipdpTi29t9ZSOOdSfq7pAGSs5NKeg@mail.gmail.com>
Subject: Re: [PATCH v6 3/6] interconnect: icc-clk: Add devm_icc_clk_register
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, mturquette@baylibre.com, 
	sboyd@kernel.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, djakov@kernel.org, quic_anusha@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Apr 2024 at 13:34, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> Wrap icc_clk_register to create devm_icc_clk_register to be
> able to release the resources properly.
>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v5: Introduced devm_icc_clk_register
> ---
>  drivers/interconnect/icc-clk.c   | 29 +++++++++++++++++++++++++++++
>  include/linux/interconnect-clk.h |  4 ++++
>  2 files changed, 33 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


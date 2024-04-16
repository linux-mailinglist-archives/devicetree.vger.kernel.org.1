Return-Path: <devicetree+bounces-59821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0658A7173
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 18:31:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C01D1F22680
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 16:31:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35D9B2EAF9;
	Tue, 16 Apr 2024 16:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RISmRxOx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B1010A14
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 16:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713285079; cv=none; b=ZYmdfD+vEX5DHRs4F6d0ZNwSxtvrTHVZDfklgdxoaR482hwEKn7IaqmiTocsPZIYE59jDWDLgyj6Srmt4/ibeATY255vrIaR6J9siIG7Aaewex6uyvS2MlzrDED8Wtqjuvd+WIBKq+iTL+AIR8SgHXVxfmwqj1DKkQajW9Mea3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713285079; c=relaxed/simple;
	bh=D/TTuyRaftFb3LDRxju0Ljo4YVpxPz74LbyObKzjd2o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IsbNiZFAQtRYsbalfkR7RNIevYGfYvA+KTb/XKgbl+s2DerxhZLaxUi+LKmjQluvL0cQB1ET3BWzuZOMErEdMTTc16Hw7Kq14ZMqdvcppeBQlDg4JKzqneZ4CIMo6h6RQ9qukzbQjyDdpkFI1coIXyN4R0nkV4QQmbjvPT+Zi5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RISmRxOx; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-dc6dcd9124bso4502591276.1
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 09:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713285077; x=1713889877; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9dToPYehH+g6V6v2hNgg16rhT+ANp2c0WokJKovgwYw=;
        b=RISmRxOxxCujjZUVVh+Y1LxtdOCbFGQ0XcqTDkqTUA/g4NlkP3FtOLUkTN+hgUU6iv
         47lHLsWh6oMDWtxMAZYWgxhAXdy0h47Mgc19NiYP1S+eCr96/ryeIbkzOrWpPBzeTxTo
         qWK5ZrMiOUbYEXakStWDcU3ZxJhprC4bDb9ZmQZNiRMpqHgZb606iW/TPWN0zS/R+Eb4
         GT7Do3B8uEPkOzAT6YvgfXGYgs0tMX4i1ECaGBO/N1il32Sf0cB48N4MwXC/SKQvbHqN
         ez7wI6pfUmwWlMQpKDTK9I+jDHlFFFtufygWJgORr3dK+FDhR7JAn97mrp+IJiR6w1Fs
         V6ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713285077; x=1713889877;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9dToPYehH+g6V6v2hNgg16rhT+ANp2c0WokJKovgwYw=;
        b=JVeuZERdiFjIwMFTgvc3t2LVytNA6RwKWwwB1SF7I3Nr3yROG0eHUosvL4iWmx2aha
         nnWNID3woTqckN8DiyYKdbFTrF4qu/XHfRboUlQKA8h6d/jknczgiCd1TlsiuPcz9XHx
         Pc6vCNZUQzvpXsJxbT/ByjYHsH4vXlEGEs79dGoNBsFK28LBHmPBBf10lBwKtBOjuqpf
         nbFC+vfjpW41lroLeoBAkZS6mQ8O2pg4xEX1QN51Jrmy0iDv+kwQsVqLrQzrO1Sf+KpG
         86oVktO/s+/hweXVv+XwTPR57/AMBnjyyhP/yw0Djq2bR33iHMnPgLFfvfGuMFPewZhU
         VB0w==
X-Forwarded-Encrypted: i=1; AJvYcCUOhLY9PcmcNDTS6UTIdlif5msRebTU9+TsaQAJOuSiQk4M8E4YwhCJ2wbQkuOdLbjurNm2anRQwwyDuyId1vSVFR3dr56ap8KFEQ==
X-Gm-Message-State: AOJu0Yz1BDtSaKqQbcfB70kpZr/hMX1AeOPZe6qzRYrM5KM8l2ZPFG+8
	rloiCZ5G2yq9mt8wayw4d0zeddkqONDuCzpfd+CIti6Rl7YGGRzTlAiWDlnWZKw39VOfWYgKuOO
	1yuctWVj9plNpiOEqX4JWXZYxnJDeeAZOJJ2Awg==
X-Google-Smtp-Source: AGHT+IGBjn7zuaQgCFJTrQ+1Nhcpwm06XCwoBwLu3ii+rK6PeQm5e0AS9rBhQvWI9xkE/yOff1MKshJ9e4elqmpnh6I=
X-Received: by 2002:a05:6902:14c:b0:dcc:eb38:199c with SMTP id
 p12-20020a056902014c00b00dcceb38199cmr11823917ybh.56.1713285076816; Tue, 16
 Apr 2024 09:31:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240328095044.2926125-1-quic_sibis@quicinc.com> <20240328095044.2926125-4-quic_sibis@quicinc.com>
In-Reply-To: <20240328095044.2926125-4-quic_sibis@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Apr 2024 19:31:06 +0300
Message-ID: <CAA8EJppg6MiRawsJ3A1_FKF_1cti6Jf0LQJOuTKx+Akhig9COQ@mail.gmail.com>
Subject: Re: [PATCH 3/5] arm64: dts: qcom: x1e80100: Resize GIC Redistributor
 register region
To: Sibi Sankar <quic_sibis@quicinc.com>
Cc: sudeep.holla@arm.com, cristian.marussi@arm.com, andersson@kernel.org, 
	konrad.dybcio@linaro.org, jassisinghbrar@gmail.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	quic_rgottimu@quicinc.com, quic_kshivnan@quicinc.com, conor+dt@kernel.org, 
	quic_gkohli@quicinc.com, quic_nkela@quicinc.com, quic_psodagud@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Thu, 28 Mar 2024 at 11:53, Sibi Sankar <quic_sibis@quicinc.com> wrote:
>
> Resize the GICR register region as it currently seeps into the CPU Control
> Processor mailbox RX region.
>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-66013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E35468C0EE4
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 13:33:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6931AB20D3E
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 11:33:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46685131740;
	Thu,  9 May 2024 11:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sLJqdM2U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FDB1311B8
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 11:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715254404; cv=none; b=P/gcyO5HmES9l0Ypdn6Kf3cw+xf5LB9yRVPRyqe45GF9TnmotmkKrcJIVAIPQMYXKFABhj7qOUhPOZwzInbrUF0Ksv3zl6kQ2plQ7l18/RBpIzemF5h2dpmw45gklcqlSo8ZPnuiG86jtfibGtIOLmMC28grGfWpC5dCxeXP2dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715254404; c=relaxed/simple;
	bh=D7puHKjXDTv5CLRZ3bEx0o+8HxlulMS9vgRBINXXqrM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=O0lXpU4jHorZfBN2dTQmeKv7TMiL0+vBlXGqwXBhWK9aEMbsJqjOnDsLVncFFVCvP80mYcM2chTkdpwrdPJEVB92NB2SOw/q2p222jALMwHC0v6enYdBpE5h2zGkFwpJbgRIbu6+zHFqqP/boFhVneNcD0k/2ak7Z4VtIYM6esA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sLJqdM2U; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-62050e00cfdso6332117b3.3
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 04:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715254401; x=1715859201; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=J580ICpcOc18LR2tYPLoMdkVY56F2qD4SEKK1qAL5yg=;
        b=sLJqdM2UWqAeZGdkFtmSl3wLNDNq7zngJ8r8Xt0q5b7CvcXbqd5MyD7Vmms96aIiuu
         VcpSM7SqVeLZvYtFggs+bvVPt1SWQIJ2e0YsVTctIGG9NN3Ad1IYqqiayC4Jq8P4oRuA
         MOBEbA3KXVVcAV4egUq9jKfHONImo31LrKGHiMsYNbVmsbrBrU3uuOAKNPaghwCkc6zQ
         C771mTzZREStEbdWrT36/M6oXNIu+XGSecc4DH04C4HbwHydfr92h5DL3UINzfOZjKor
         ydizMMhF3NgQrI5BomC9eB2eXsCcecRPDPH7Ha7vap1iSo9A6XpIUCzTBOJ4/h4h8hlI
         ZFSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715254401; x=1715859201;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J580ICpcOc18LR2tYPLoMdkVY56F2qD4SEKK1qAL5yg=;
        b=s0X1MkjQYGDWo9TzoWTTvSg0GUDe/ZDTtYyFj+NQHHjD58vu+bABUlQriK2eO6Liot
         PbgKe/C/7sLKBrZpPTH2jAov4GrNw45tqN03gu1ncDWedrL8CaEB6r1c7k8quIathBO0
         94ZFvn4EthkioYjAx9O/cDYl9+rIwvkkWcw0APHTj1LqnW1b0/YWH3qaQ3TxcyGajBl2
         m9b6GgqYTUBi++y8o4Bx7mXc3FbFAHpYkXa0N9STTJvK5aeHEn8VpLVLIMX+PjgVkhL5
         P0qaUsHi2mbqm35mFy81oXU06xsZSU/69wL64KGlrHHJy8DgpTN9QmEskv0tLx1yKBLv
         0SWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGXH90XlzjEoS9Ba+hyFzfKqoCiUE6AMYDoUlRHOAASVblHWmXAF+AZEakQB31WPk3GJTModIPMI7ISnXxwR/GY6xVQKNwlKaE3A==
X-Gm-Message-State: AOJu0YyNwP2yssIXYTZFCE6zgTJjFJZ4m2Pmjo9R1Z3FiCDTEpyx16c6
	WLApc5Qij4el++QJiL4JS4o3/sz085AkrbFlBo+9AO5tfkn/2Ogy8JVsr9FuY1yiSbpbMNaArIQ
	uuvMaRuqXjXojlapJd9rTzL7AIro4tbadlY0G2w==
X-Google-Smtp-Source: AGHT+IEfaCfQubu0abV2NMgYTivyKDCF+wOYcdPXycOmHmsIEbvjKhurZcgORLCZE2y7Zlgc68XyimSEPRYH4Jo0rAQ=
X-Received: by 2002:a0d:df4c:0:b0:614:719a:501c with SMTP id
 00721157ae682-62085c79e1bmr53862627b3.14.1715254399818; Thu, 09 May 2024
 04:33:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240509-videocc-sm8150-dt-node-v4-0-e9617f65e946@quicinc.com> <20240509-videocc-sm8150-dt-node-v4-2-e9617f65e946@quicinc.com>
In-Reply-To: <20240509-videocc-sm8150-dt-node-v4-2-e9617f65e946@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 9 May 2024 14:33:07 +0300
Message-ID: <CAA8EJpq91Ouuwg59CJfM62cC6LsmzOB64ee330c7h0+Pmx_JJA@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: sm8150: Add video clock
 controller node
To: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
	Jonathan Marek <jonathan@marek.ca>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Ajit Pandey <quic_ajipan@quicinc.com>, 
	Imran Shaik <quic_imrashai@quicinc.com>, Jagadeesh Kona <quic_jkona@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 9 May 2024 at 13:24, Satya Priya Kakitapalli
<quic_skakitap@quicinc.com> wrote:
>
> Add device node for video clock controller on Qualcomm
> SM8150 platform.
>
> Signed-off-by: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8155p.dtsi |  4 ++++
>  arch/arm64/boot/dts/qcom/sm8150.dtsi  | 14 ++++++++++++++
>  2 files changed, 18 insertions(+)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


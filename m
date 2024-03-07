Return-Path: <devicetree+bounces-49012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F26D9874983
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 09:24:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7AF5CB21547
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 08:24:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D8B763401;
	Thu,  7 Mar 2024 08:24:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yabwS6aa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162385FDCC
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 08:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709799870; cv=none; b=hmfTsPvLxywa5d6xtLiVcAsQgp3EfEqsB9GstaYw7p+7ISRKHyz/D8q7lOaMQ0CqZ9/BDyXZGJz0DTxdnvTDkIDaYB52580JxUixvonpTxEjYJmvYIT6g4iYxTybOvkWRNGLVEIDidke1qP7OdUbrdMUQD3ovu2mDtb930oYtYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709799870; c=relaxed/simple;
	bh=HwIOtDxBs12zJ1pvutYk5Ifex95KRtN8D3N43+ZcAH0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BvjJNMPLGPa7f4p47dknRtGLBtEI0JrUHJieacTK8IS7vU0cFvYGGyCEWS4fprgg0S/VSNTDAc5LuIlcpFLEbXmV7JCRaPxA8QSiNYtSekl9YQjzl2HZ+9fWOUCTh+2cAGU2t88qXJjOpIPqwZrZMfclBXqcyth6nS067eET2VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yabwS6aa; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-dcc7cdb3a98so596358276.2
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 00:24:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709799868; x=1710404668; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HrWzrMUBdT94HiU9dUcTPoeH7WMZ5J8gNIFhjinA3XM=;
        b=yabwS6aaXCzgGvFibIinRm8ZSwvAXOfLiefILhrE84G1GObiyJyukOfnwE+z911cHk
         t4zrC+KFZu1EGcn8gE31PLQpt0Li2WToMHv0joeWB2CGdSmkWNIZUuC409nIA1l+OlpN
         ldQfWsQbHl9p9UzrEz0gjphgZZxKDrgb8fh0NwJBkWxSp6v4Tn4J02Rltt3M3zJ8AR51
         Ll9fO6vhKwvxFzivk7IEkiaHCa4MWBx56DamQ/1PcnOnYBjcpROMhN7CxIMrK2dOCFBy
         97XXU8JU5aPN4luq4dXqrl/ZtwC+yelVyVPcvwQecB6eAX6SysAMx7sJpnrjQHkZpdkr
         ruWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709799868; x=1710404668;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HrWzrMUBdT94HiU9dUcTPoeH7WMZ5J8gNIFhjinA3XM=;
        b=jTN/ApQAkLUQff0olCgfBduFfB6hIkSR0wASMvSoXV0yWV0xtWyx9SFQXNmSlFqCMG
         h1bN+EF6uMuXS95iVuduOGsf6rPpSWU+ATZlxu2vVEKM6riJ0GwGRJ6XzjGg3suAg6EE
         wzSq4NacZ6597rHRTtAj382DS+zrgsf3mGDDiBaXVqffGDQuARRLpaVWOS8QRlrkw89w
         x6Ixu+of+TUSr08NfUr5iw/WAX9inBPT6HBy8IqAcfk+clS7tKSkpIQrV2s43pahijVR
         OPfvLfKv36ZoBSPrjvN1XFC8dkcss45MQKWQgOP7WEQx4qoU0ymh+JKO5/GwuSM5yme7
         q3JA==
X-Forwarded-Encrypted: i=1; AJvYcCVHWRC/4FFK0eLzDng+u5TG3wk3A0UusSixj5lQcJoOi14VH+msFK0vvi5IJ6SER4Ublmul1E/qT5uWM7457/F0iqyCA3HjVY6eFw==
X-Gm-Message-State: AOJu0YxAUCtkB67TvKjGIGNZtKBRF6zDWVfcWqAJPa7ODB/jMGVHaK13
	UOX66Iz3zohAkTLQNMdeHchv19gAFQmYuN6CT9s7a+6xgsMm4xdYZpd1Jo5oNJGmM5JFXbgFbin
	i5yHb4apFcBYIVnJAr54IOCNidUk4UqV0UO1wgg==
X-Google-Smtp-Source: AGHT+IGo9lHi+LEb+DS8+PgVMTubJMqAp8Nr0DkwjG6EMkEJSTxocKlvC0xiwUrwFMIXHE/XWrup2AjbpmgQzZTgH3U=
X-Received: by 2002:a25:8a08:0:b0:dbe:4f15:b5cf with SMTP id
 g8-20020a258a08000000b00dbe4f15b5cfmr14221787ybl.15.1709799868120; Thu, 07
 Mar 2024 00:24:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240215103929.19357-1-quic_riteshk@quicinc.com> <5271ebb4-68e7-468f-b1e0-b35a77f53902@quicinc.com>
In-Reply-To: <5271ebb4-68e7-468f-b1e0-b35a77f53902@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 7 Mar 2024 10:24:17 +0200
Message-ID: <CAA8EJpridDoMFRTo46n6dqvm1Lu8Bxka2S5AD97JjXM_6WhCLg@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] add display and panel on qcm6490 idp
To: Ritesh Kumar <quic_riteshk@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	catalin.marinas@arm.com, will@kernel.org, quic_bjorande@quicinc.com, 
	geert+renesas@glider.be, arnd@arndb.de, neil.armstrong@linaro.org, 
	nfraprado@collabora.com, m.szyprowski@samsung.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	quic_abhinavk@quicinc.com, quic_rajeevny@quicinc.com, 
	quic_vproddut@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Thu, 7 Mar 2024 at 10:20, Ritesh Kumar <quic_riteshk@quicinc.com> wrote:
>
>
> On 2/15/2024 4:09 PM, Ritesh Kumar wrote:
> > Build the Novatek NT36672E DSI Panel driver as module and enable
> > display subsystem on Qualcomm qcm6490 idp board.
> >
> > Ritesh Kumar (2):
> >    arm64: defconfig: enable Novatek NT36672E DSI Panel driver
> >    arm64: dts: qcom: qcm6490-idp: add display and panel
>
> Can you please review and apply these two patches.

Can you please read docs regarding the kernel development process?


-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-35742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C52583E906
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 02:38:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A120D1C21A6D
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 01:38:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22B29944D;
	Sat, 27 Jan 2024 01:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NVbUYeom"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780438F51
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 01:38:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706319486; cv=none; b=kK/MdUyxzo3Eq63aniDMy/6n79ZAYy5VSGilAvWolEHmMj+fHcRDwENRZAY0xUQsHR/PmDXuWGXTMr8+qBvwSTBhtasX01kjEK7MtJ2WQh3D+MVraC+Jcg7SFxaN8gocxPUryMJNBbeTPmoDWrWRjznhOrIkWQEpaqRKejfXAA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706319486; c=relaxed/simple;
	bh=eRJi6eaKhotdFeyDU4wt6lYqIfWEYqa9/NQ3q4nJKtA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Ivt/RvW0/hpufj3kGerKOaCJa5AAQ9gDCNGwZIEwgJqo4JHg2+NWJYVhKWJGl6q0i7D7a/jkL+8j3TH0YnYQEu7Rr4M+szczd9pL+051DlWMhGHXW9zERrxQNdUydXzOX8BrgvNPs0xFaQY//StxCENdJZ2nFofElKve11YSZn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NVbUYeom; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-40e9ef9853bso14088745e9.1
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 17:38:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706319483; x=1706924283; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NGjOHvA3bmpeR3PPxd2MGAuCofR2CKZYXxkr7q0R5hY=;
        b=NVbUYeomaTOLZxkRqFu9kYZZIvoFUXJDSz0J6wIc2mulRKhpDbKXTSmsQuAp+V3aPp
         btrS7iqeZwG5toTnnvV136MRP/87egdtuG0zxGdlETudGjKFHhulIUxpDi5qKodJ5Awh
         ubmwG5W7Fu3ivUt0hHk9haayMElrDa+ytNrpYXJxUs0SdSensgOOP2C9WHNoAxv5ZSof
         jHpW5YL93p3LwyxbIOlkJ/gBuog/cP17xUeHtlxUHP5aBnYf3vSIwVEvRHxMsylJba5q
         mlvrtPI4xcZl3f4kotzxnciLqNbpki/YpB5WkrQxkcJogCc63+BO6kq3VRTQKCTAr2jI
         jHwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706319483; x=1706924283;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NGjOHvA3bmpeR3PPxd2MGAuCofR2CKZYXxkr7q0R5hY=;
        b=Is7T9qku3/L0pTotk7/09m8VCf3Ww3GMrT6FI9yusOwWwZOFjkCtkSV72T8mf8Almo
         j5IJYx2m4HFUWNV9y3Q7mWmCuN9AwhPwdsMvDo7S1jyMmC4VYAx34lBpPH45hBqRvdrn
         M6GoT3+m7h51dSHGQaGrTMXxJetVWbZ9TayPSAl6b1+IUA0Add/vq2XaOPnSD6ddthaf
         nfk/qU7Z5mbC/kzGbyoCh7SrJosIIemsayrYacpSHm4cHlKT8CCgB6BYAindAxugTXg8
         KKHCj88ALfSD5MmYpztGEIVB2qmBQLn7DXRlg5IyrPrGJVDW/VYMSJ2ZbkMYc/17Ju1n
         2Zvg==
X-Gm-Message-State: AOJu0YwStkxTeit7UYC60mA4MIZykzyFvHKtAV85L280cyzHqVLsD33z
	69T3iOTaGyaQ+Yspn9bMlWeLt/f/LS6NAVdbBecbsd5uUzA+5XzO3coEQlS9IpA=
X-Google-Smtp-Source: AGHT+IHuk1WdhFM4MdG5wZNPvkPFcjQbQfgwzamMmmvZplCwS8KGzf+nkYuFlGVbtjwulcQRoiYQLw==
X-Received: by 2002:a05:600c:5697:b0:40e:d342:88f2 with SMTP id jt23-20020a05600c569700b0040ed34288f2mr393972wmb.51.1706319482794;
        Fri, 26 Jan 2024 17:38:02 -0800 (PST)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id n10-20020a056000170a00b0033940bc04fesm2384558wrc.16.2024.01.26.17.38.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 17:38:02 -0800 (PST)
Message-ID: <2089a7cff2eee7213353b0b933815390dc708464.camel@linaro.org>
Subject: Re: [PATCH 5/5] clk: samsung: gs101: don't mark non-essential
 clocks as critical
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: peter.griffin@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com, 
 tudor.ambarus@linaro.org, willmcvicker@google.com,
 semen.protsenko@linaro.org,  alim.akhtar@samsung.com,
 s.nawrocki@samsung.com, tomasz.figa@gmail.com,  cw00.choi@samsung.com,
 mturquette@baylibre.com, sboyd@kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Date: Sat, 27 Jan 2024 01:38:01 +0000
In-Reply-To: <20240127003607.501086-6-andre.draszik@linaro.org>
References: <20240127003607.501086-1-andre.draszik@linaro.org>
	 <20240127003607.501086-6-andre.draszik@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.1-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Sat, 2024-01-27 at 00:35 +0000, Andr=C3=A9 Draszik wrote:
> The peric0_top1_ipclk_0 and peric0_top1_pclk_0 are the clocks going to
> peric0/uart_usi, with pclk being the bus clock. Without pclk running,
> any bus access will hang.
> Unfortunately, in commit d97b6c902a40 ("arm64: dts: exynos: gs101:
> update USI UART to use peric0 clocks") the gs101 DT ended up specifying
> an incorrect pclkk in the respective node and instead the two clocks
               ^^^^^

'pclk', I'll send a v2 after collecting any other potential feedback.

Cheers,
Andre'



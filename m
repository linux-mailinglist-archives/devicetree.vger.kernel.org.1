Return-Path: <devicetree+bounces-188574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 819F4AE3FC6
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 14:23:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0328C166B01
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 12:18:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8CBC24A069;
	Mon, 23 Jun 2025 12:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gsL0ov1r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8CD624A061
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 12:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750680982; cv=none; b=iKjZSY4LFeJCFTX1wuiJqBEXcDaFnDThi8mQM/VIDKdqYonPNKqeXVHV/g/60CIVgPlrNe79Y3PSTtw+BcR9F6UXmFUnokvqckDup9zVPnGw6OtMhBz1u8kmVGfHIp8cbuT2VahqYM2YwQgWEg+1Ed/xZ9/Rtoa1HQsRo8GEzi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750680982; c=relaxed/simple;
	bh=NkXLZqiJfY/csdYeqd5+JOrKqFd5dWqsdN/hyy/5zL0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iW/xHTE7pVU3OPO152kqxXqTt5bFEk8pBxqZAr6881sUMwnTveATyRjXjyw6uXWWevW3RyILjPiVPtwWLQxzgjaRE1W1CCsCmNy7xHDdaxrwPloRRFPDVmtICrcz8bdPWBQQgM0gypc5vRMMUgcrUng8t1vfEDF8WZC+XAgv9Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gsL0ov1r; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-45348bff79fso45743105e9.2
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 05:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750680979; x=1751285779; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tI+c5+DB9KdJhJt1LZtd5DtDnbtfkWz+1nzFqyeD/8s=;
        b=gsL0ov1rWp7V8txeD4D2i+tZvViClai0LdlAL+uxdeWoIQmeVpDGeB3dZE6QEd7U8V
         Ek5VjYRUmYA4fB+JuBMYDcJ07XCUK52zRCj7cIjvWVPalb1aSjyTZD2scf7hcFw+S0zw
         SnL+c/ODUlm0H8FYoq/IB6dUusy0FhYndvyfLC6AXB4jmjXFIHIxn+vM//Itvc9QjvZF
         orAqSFgfuMycZKgEMdqzMyF64UwoXzq0X47S7I62DVnT4X01IgF7qXqYIk2RLaCfgxM/
         gEXTxREfJuYaMnucziXNcac+ajtnOytFnaMFPhbkXkHzp4QsuX5R4OS+J1S4HnIFM80P
         M0Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750680979; x=1751285779;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tI+c5+DB9KdJhJt1LZtd5DtDnbtfkWz+1nzFqyeD/8s=;
        b=CKuzYuf3R5SY8+U6224rOvsSKcTY4+bDaWWnNP0S5QxK7iFFtxk7jm7mDa0CbixDYP
         /CovyfrF8bdzRx92MqFnJiuNugCKrsD9ROUcSav5dPHHs2nyKM7tul4gzFhyYubapo+R
         oaREZ2Z1YKhnmRSRQoIkxUmK8b5W3QMONEYjxJWWqV2okGtkR2DLtmPM0f1HvLqUQygX
         MVUS0MuQ4muECf8hFXDyup545wpffLRS1q7vo4CGnyr8WTEra0V61Qo58jxXhx6evOkO
         DcO5dPKQRShuBaC7U4Wqu4U4mNQd41Yc2RNCtXiIOQZ1eqIZmJXP0YYmKvTRwHOshzdf
         E5BQ==
X-Forwarded-Encrypted: i=1; AJvYcCVmJopBDi8kwzJ/9NypyvUP+qQk6lXrFoK3Aqi90pWPzjjf92I9TdwGTe5sKVRfAj1+tN8G8k5YmSqc@vger.kernel.org
X-Gm-Message-State: AOJu0Yw121ffJpPF8dJXXm29Df4K6uu2/ayneIFp6JP2cyiHgg2sk7SF
	IeOwYsZV/R2T21neZ5rkxVpyRLkNxCs3RWOynJnsj2aFPlLR9F3gK93wXtKPL+KYQAF9rxrk0th
	8LmaT
X-Gm-Gg: ASbGnctGQk4FN+lQTW8QTL5ysMLYlpT7AiYE/0Dw3bfstZppbrx/zFWJq38LF+n0nKW
	JjkpntgLzgn8LOS8P5JMr3nv7KvRUbekAhiCkTuxtjSaQ9x6VvSY1bBYz70Az4cCndfEmmg9HUI
	kNSw+uGjQ1OcundBZj9boVrOkmfk4ANcO/LjVGzFRMvrMny6OvxxrY58bZ8M3lR7OiKF5Xua54P
	Hu1euqL2bEwa/D8Kdt1/fdg+waOIxbWWGiszm5Kx7Laic9Y3Ws5cbp/7ikMMemDfX2pGWqL3QRb
	cturpCAzF+tGQHFYDxpSBhPw5kkRV8xUYIcovpJ9YwM4igoP3AvIVUN/89lIbY9EwRyogYfoUA=
	=
X-Google-Smtp-Source: AGHT+IFldADGsyYQzcmWOXmHdcApCNvxHXRGgwlxtSHaBSQ6Vsn5s+guD1RaxkhQlgmOC9uJO8RIfQ==
X-Received: by 2002:a05:6000:2282:b0:3a4:d79a:35a6 with SMTP id ffacd0b85a97d-3a6d12e34b9mr11149269f8f.14.1750680978817;
        Mon, 23 Jun 2025 05:16:18 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef30:b3ca:db17:bc4f:ae5a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453647084a5sm109160175e9.38.2025.06.23.05.16.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 05:16:18 -0700 (PDT)
Date: Mon, 23 Jun 2025 14:16:16 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	jens.glathe@oldschoolsolutions.biz
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Anthony Ruhier <aruhier@mailbox.org>,
	Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH v2] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: add
 Bluetooth support
Message-ID: <aFlFkD7uNC_lOtHg@linaro.org>
References: <20250610-slim7x-bt-v2-1-0dcd9d6576e9@oldschoolsolutions.biz>
 <fbedfcb3-a326-4357-8d10-3be925e5df8f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fbedfcb3-a326-4357-8d10-3be925e5df8f@oss.qualcomm.com>

On Sat, Jun 14, 2025 at 09:54:05PM +0200, Konrad Dybcio wrote:
> On 6/10/25 6:59 PM, Jens Glathe via B4 Relay wrote:
> > From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> > 
> > To enable Bluetooth pwrseq appears to be required for the WCN7850.
> > Add the nodes from QCP.
> > Add uart14 for the BT interface.
> > 
> > Tested-by: Anthony Ruhier <aruhier@mailbox.org>
> > Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> > ---
> > This patch adds the Bluetooth support for the WCN7850 card on this laptop.
> > Since WCN7850 is supposed to need pwrseq, also added this from the QCP.
> > 
> > This is also part of my tree [1] for the Yoga Slim 7X.
> > definition for the pwrseq and regulators.
> > 
> > [1] https://github.com/jglathe/linux_ms_dev_kit/blob/jg/ubuntu-qcom-x1e-6.15.0-jg-6/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts 
> > ---
> > Changes in v2:
> > - rebased to next-20250610
> > - added tested-by from Anthony Ruhier
> > - Link to v1: https://lore.kernel.org/r/20250426-slim7x-bt-v1-1-d68f961af886@oldschoolsolutions.biz
> > ---
> 
> I'm mildly confused given the multitude of options - but does this
> check +Stephan's M.2 description appropriateness check?
> 

Well, Bjorn has already merged two instances of this description in
x1e80100-asus-vivobook-s15.dts and x1e80100-hp-omnibook-x14.dts, so it
doesn't sound fair anymore to block these kind of patches without
proposing an actually viable alternative solution.

From a quick glance at the Yoga Slim 7x mainboard, I think that WiFi/BT
is indeed a M.2 card there (like CRD/T14s, but unlike QCP). We haven't
decided on a good way to model that yet. It would be nice to have at
least my TODO comment that I added in the CRD/T14s commits so that it is
obvious that there is ideally still some rework to be done in the
future.

Jens, can you add the same TODO comment that exists in the other two
device trees mentioned above?

Thanks,
Stephan


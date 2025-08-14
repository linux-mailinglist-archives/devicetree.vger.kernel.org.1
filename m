Return-Path: <devicetree+bounces-204430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B8DB25811
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 02:10:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E5C82A70DB
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 00:10:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43BF92FF65A;
	Thu, 14 Aug 2025 00:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gDBjSgkH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BF52FF642
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 00:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755130223; cv=none; b=ICT54ew0Z2lB/cNf7L9TyAKtrsYQdwv8qIg296r02tu0pMF7ljIEBB7ASnAviIBryviGSN6/5Fa6E5SCOK40gvrsNcKu3Ta4+VDLRG730ZvX16YoDUhwtDs2a/J6HxXHbwzIFQfZl+GjJWRTNjGLActo9JZ1a3UKQs7tM9Dg/kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755130223; c=relaxed/simple;
	bh=r1QCrmN8tVo4aJpeIo0LUvhjUnUqAZ5cDFytjwJaPAk=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=pjruZhX1xkJUgYJZkwOW+YsgkvqbNebV1b39gOot2olzb2KqQxdsI91YZ8LWXHA03GGxE2W2XPPzqvtk1zDn351zDh0e5YZgXdL06Jg5Hk/1IBAKuHOY3NtGurdY+LwVm5CHP7i+tAJbS8xrJmPRH0P7MhZt+OI5OVbHoreAcao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gDBjSgkH; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3b916fda762so717546f8f.0
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 17:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755130218; x=1755735018; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gpKIMCug5prSO8UBINdYvWrP0TkGisSi9mxT6awdEX8=;
        b=gDBjSgkHkE1DcZ8ecoJHcRpsd84Odlscj+9dOKuA26g4J2691NnFt+59dIajYA0rkJ
         uDN2O+Mvm6uS9DXHJv3Ft8pDKkv5DC/JbtNVENuU+mmpwCh2RS26vdIWBi8f/3qJTPb6
         zE/2ycRw6wBtLEKaMCXgrpYkHpVEXgAU/eH+WuJAr8xOIQ4x/rbM1dbJmG0AJ6PWMKKF
         sehdD5KELkext8T+V0+kOh62Zkl873v1zqojpKFKjkenBb/dh+QfB2vnHkGEPI0mymfs
         AiEYhDSvPaE8G5CD1kBlui6YUsXIPvBTqzqtA8wW5A33cp/IsUKqARWHfRDIyjyg/fGx
         /WXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755130218; x=1755735018;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gpKIMCug5prSO8UBINdYvWrP0TkGisSi9mxT6awdEX8=;
        b=cuZisXcnDF5MNAresa23rbgTX4/JoQCAc8tokdvIYEKVo3WBu40utGmApLP6/sxDKN
         1ULUHpy7RT4gpoo2BiEqsxdggan1S7l9P5jf8K6p2gTr+OitgyIPJihzRq9AeBk+86Zx
         GWK5Nd8M436bfLXCsQL7xZZmrpze9eejXm58Cvw/M8FHVGID+M3F1aWh1vv1G0f3ui8q
         JEkRe6udJZCBNmlEfBc13IQ+baUsRoj7hMxqp7puA+HcenDVqRWcJp5nLiECdGDMO7AA
         s8XBPBuZvuzSQfOjzPD9PGQz2ZHBQGl9d3b8HoPS4DKwTQKDJ9mTXhwwefkReaOHhNEK
         CCcg==
X-Forwarded-Encrypted: i=1; AJvYcCX0HhXOgYE6gMd8fvEOfLr7dJMrm7yf3lTaLY81mtixkp+ysF9Bt4zG9mMOZcxRS0/OlbtbrLhZXEPJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwF9DXGyLV+rylyCBBsTKUwfbEAqvS69JmbRUSj6UWHTPSQLJ4d
	Narj0rBcPK4jHi2FWV5khzDp8E/4GoCv23mReFHlg7mDXMrEBKb4XBpY985P1/z8EjsaQtaFUZ1
	d4Ft3
X-Gm-Gg: ASbGncvDkEKXtRJTb18AUWg+ElFONEBSbmxpflEXkKy0p6squRtFatR6VRSHxCYQq5D
	rRjlhg2z1zUt+TWvtQA/ERf8AmKj/vb/NxMVOGniNa9Equdxygfutqet7rB/6948iI+2sz3Erz2
	RWbkIgNC5zAi1mRIRqzCYhh34QSdWG0nwtHlxYbPaCi25G85FvOIBM+R0bf8KKIITOTzY8vKeIO
	KgOqS5Yq2ALA8KK4OHDhj5BT/jmiAKxY08v3pEPGMNxL3V5xcry/YgZ1Orn8BsIyc/OhyZ6flvw
	01IXtMySDvUYdLghMGd+HhFjTtTHvSgTxHnw+kEu/CJstQsDH3CHKeMF0YzxlbXwj2QAcvdMmNZ
	iTeWYMVKEkZt5EIZhrdxgfo4yt3Y=
X-Google-Smtp-Source: AGHT+IEL5c2Xg+0dBRlOrtdb9SKnnns8CAIkWnJ+rAhdQ3/ikKH0DsK1f2QeK/B8eUDvA0MAmimMfA==
X-Received: by 2002:a05:6000:200f:b0:3b7:908e:e4ac with SMTP id ffacd0b85a97d-3ba50662180mr342068f8f.2.1755130218457;
        Wed, 13 Aug 2025 17:10:18 -0700 (PDT)
Received: from localhost ([2a02:c7c:7259:a00:7f3a:5ab2:26aa:831f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c3ac093sm51686067f8f.9.2025.08.13.17.10.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 17:10:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 14 Aug 2025 01:10:16 +0100
Message-Id: <DC1PQIF1FR6Y.JO8TBH3K6TS1@linaro.org>
Subject: Re: [PATCH 0/9] arm64: dts: qcom: x1: Disable audio codecs by
 default
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Stephan Gerhold" <stephan.gerhold@linaro.org>
Cc: "Bjorn Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski@linaro.org>, <linux-arm-msm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Abel Vesa"
 <abel.vesa@linaro.org>, "Johan Hovold" <johan@kernel.org>
X-Mailer: aerc 0.20.0
References: <20250813-x1e80100-disable-audio-codecs-v1-0-af82d9576f80@linaro.org>
In-Reply-To: <20250813-x1e80100-disable-audio-codecs-v1-0-af82d9576f80@linaro.org>

On Wed Aug 13, 2025 at 4:58 PM BST, Stephan Gerhold wrote:
> Currently, the macro audio codecs are enabled by default in x1e80100.dtsi=
.
> However, they do not probe without the ADSP remoteproc, which is disabled
> by default. Also, not all boards make use of all the audio codecs, e.g.
> there are several boards with just two speakers. In this case, the
> &lpass_wsa2macro is not used.
>
> Disable the audio codecs by default in x1e80100.dtsi and enable only the
> used macros for each device.
>
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
> Stephan Gerhold (9):
>       arm64: dts: qcom: x1-asus-zenbook-a14: Explicitly enable used audio=
 codecs
>       arm64: dts: qcom: x1-crd: Explicitly enable used audio codecs
>       arm64: dts: qcom: x1e001de-devkit: Explicitly enable used audio cod=
ecs
>       arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s: Explicitly enable =
used audio codecs
>       arm64: dts: qcom: x1e80100-hp-omnibook-x14: Explicitly enable used =
audio codecs
>       arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Explicitly enable us=
ed audio codecs
>       arm64: dts: qcom: x1e80100-microsoft-romulus: Explicitly enable use=
d audio codecs
>       arm64: dts: qcom: x1e80100-qcp: Explicitly enable used audio codecs

The subject or title is a bit confusing. "Disable audio codecs" and bunch
of enable commits.
Maybe "Move audio codecs enablement out of .dtsi into whatever"?

>       arm64: dts: qcom: x1e80100: Disable audio codecs by default

Best regards,
Alexey


Return-Path: <devicetree+bounces-233459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CB55BC225EC
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 22:04:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 851DF4E288B
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 21:04:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61092333732;
	Thu, 30 Oct 2025 21:03:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UkZ3/dam"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84749219303
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 21:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761858239; cv=none; b=BwSIrcfIwxityCK6KShkREXh+zQQbvd0RfX8sJZusYgE0/O72eUlh9tndDkjL5j4FRtFJY7EP5s+JUafIPgU6aZ8efk3iTL+gZBrkT3hzSGr74C5JJeysNuawudN+40NpOyaDCGJwrc1XrUZACKDCTvj9BYv4epLcsuvQQDOgH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761858239; c=relaxed/simple;
	bh=Mmg0QcOckoARFwLJXtWfFSkFuqQoLOpNDnE+ivjKx9M=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=KKxt+lcHb808484ikFbq/6OHib4lxlsmjIx8xXz2mtEu5Rm3kdD3IrVvigFcDyNrk5PG2BQQFzIBH/qZzNevWwxLuFrpbdYEvmiSQYHLf9Xrs6uTjuzT6BRNGq1cXbxLjmjmo65IHOiLR2eCj6hmrE61OzWm+V3IR5Yz+niywRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UkZ3/dam; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-46e6a689bd0so14694885e9.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 14:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761858236; x=1762463036; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mmg0QcOckoARFwLJXtWfFSkFuqQoLOpNDnE+ivjKx9M=;
        b=UkZ3/damTIqvOWERo56XKIBZCdAm9AZkcsyynHOpmH/6mG6U03VaSjqxyFUPJBm0bU
         OP0F0NyyiR9YmK0u3w0Zi40A2+yOI85fEN60jSI6KCDZvrdh/lFK3o9+PYGMLQCOrW1s
         YZUSxmrVnjiGt+7hmpT9GHu2SzobUSEl9seEzz8gCMEqGF4ShmVRn0br2nOSM/78BEVt
         QGCm5Ju4UajqUY+AzPT++Q/n8owf7oP0nqteiumsbuu0WtM76lpdZmpdrmVau3Xpq2Us
         2DDpL30cNpE8shiEl3dIst+Fv62+t8JXpxKtPXpgBhPDyIPsN9/xuK1zVZTSX4+OHVF3
         pL4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761858236; x=1762463036;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Mmg0QcOckoARFwLJXtWfFSkFuqQoLOpNDnE+ivjKx9M=;
        b=H1goZHEklCiekAZq3JjQVkth/XfNQmo4Lg0lQ2sdA7LgqhQix8eP+BnH68H3eCVf1h
         o3ADT4+yrYwPHuIQtWpi341r94Bi68KsdJxHvLhm/uNfCoAs8P4t34yhq8L3B6oOUtMa
         rcJ/cwgEY36IC0IW1ywN861dCRHoEkNDY5ktw1x8G5fG0fkrF3AKYnXYa1YyHku9YG8j
         0sYSqZMHyBj8Gga66Jl2PbYOdOqzKm01pxFsdbHQvLrxo1O1Py8MTSSxgtu9fPquRLH7
         3Hun5g7fxh5WJVNqwOZGsPKktJSeQJUZtYgOJ0HN29Bq+vRQFOMtN+qMF65ZCl7CK6Qo
         qpmg==
X-Forwarded-Encrypted: i=1; AJvYcCWva6atxIg7/Vp5oOMauH9DWcv5L59EbvhhfnbvMb6EBgwGYcY4IBjC30LZbdqr2yPKmg9CHt31/HqZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwFQ3cIUjEv1GcB62MYvBLUOfsGURGpTx4CLzsfukXvlRDVqAbn
	z7xuCAuyjks7FueYsn1DwUX+xjSowfIUYvktX7HDewFxalHHIjDd6qs8TS5W1iLyy5o=
X-Gm-Gg: ASbGncvnDju0R9ynnkjVA7hPpzZMabgc4gGkvG4w0E3YKc/ilPabrJW8TTrNOZTs9Zs
	bmtNUCJGJyGoo9nBYId+FoHnghVS8/pE1qQHwlm+H8MF4RwFDvXkZcW98k3KZaYPg7OA+Ply2wC
	zLwviQq63iP7yd4Rsfl6sJxF1xfhig+exoi0C4dI8CG2WBoJshPlDwGY6g8uKwaeHn+9/xTDWCF
	BA24THSrTBNruy/MyOe/Rxro9QQ4ymHg+BqudfC+1QL5bO09zWVE2/ETl4iiXYmDMKRCLptBYJz
	FCoZgqJOpWm9UFd038xS4AhzaAp8lltsJwWwpZQzXDitsCl3LED1m1wDu1aIg9LxOWULOLEC3OU
	K6DAgb8o6iBjz4Xd7wN+4beq39MKU75YkiU/OVYUk7u4pdAmojrB8inGG6U3SpfnRRumRzr1sne
	yRdCtbcxRKr8TJxrBr032Tp2cokA==
X-Google-Smtp-Source: AGHT+IGkeNaYKvyK6RfsmW9P2I2Bei9/3fDZq7zhXE2U6MX7ry6sRZVC9VoMigtpV+m4XtidjifL/g==
X-Received: by 2002:a05:600c:83ce:b0:471:115e:87bd with SMTP id 5b1f17b1804b1-4773086eb33mr8700635e9.26.1761858235643;
        Thu, 30 Oct 2025 14:03:55 -0700 (PDT)
Received: from localhost (054722ac.skybroadband.com. [5.71.34.172])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952de5f9sm34127953f8f.38.2025.10.30.14.03.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 14:03:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 30 Oct 2025 21:03:51 +0000
Message-Id: <DDVYM9SMCT7O.17T5SIB9IEED4@linaro.org>
Cc: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <devicetree@vger.kernel.org>, <perex@perex.cz>, <tiwai@suse.com>,
 <linux-sound@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>
Subject: Re: [PATCH] ASoC: dt-bindings: pm4125-sdw: correct number of
 soundwire ports
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Srinivas Kandagatla" <srinivas.kandagatla@oss.qualcomm.com>,
 <broonie@kernel.org>, <srini@kernel.org>
X-Mailer: aerc 0.21.0
References: <20251029144636.357203-1-srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <20251029144636.357203-1-srinivas.kandagatla@oss.qualcomm.com>

On Wed Oct 29, 2025 at 2:46 PM GMT, Srinivas Kandagatla wrote:
> For some reason we ended up limiting the number of soundwire ports to 2
> in the bindings, the actual codec supports 4 rx and 5 tx ports.

The reason is quite simple. The available _limited_ documentation at that
point suggested that there are two rx and two tx ports. There simply
were no better docs.
If you finally got access to the right docs then it is good to fix that.

> Fixes: 88d0d17192c5 ("ASoC: dt-bindings: add bindings for pm4125 audio co=
dec")
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>

You should run get_maintainer.pl script when sending patches and check who
should be put into c/c. See [1] too.
Here you should run smth like this:

get_maintainer.pl -f Documentation/devicetree/bindings/sound/qcom,pm4125-sd=
w.yaml=20

or check with b4 how it works.

The c/c list is not full.
Perhaps this is a consequence of putting all Qcom audio related things unde=
r
one entry in maintainers file.

Best regards,
Alexey

[1]: https://docs.kernel.org/process/submitting-patches.html#select-the-rec=
ipients-for-your-patch



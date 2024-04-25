Return-Path: <devicetree+bounces-62699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3259C8B2084
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 13:40:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 30FA61C2394B
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 11:40:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6151012B151;
	Thu, 25 Apr 2024 11:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xj2INoU1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81C1612AAD1
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 11:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714045185; cv=none; b=WUiNlRMtrWFOaCBTJXkL64DmaH7lgIqdo/ekovQ2wX7+57WlnlsLYkvS6et5M710yXRTJHv5Wpyw8rSxIpUIM84COzzJ+3PcEI23fOx4Pgm/bB7oF68a2GPIBIggbzObnsB9CnLNMNBIi9Hica82D+OO7xB2h7FuZFS5ttRU6nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714045185; c=relaxed/simple;
	bh=lx1UMZxQ7GI3jnCiWDSMDINtorN1nVNDmR/Gckd3Kyc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=qTJvg0VNzwl5yHKMiZBsh4Bswqvm6DNQ7zVCRyaL7yNJz/xbkTZAy9wJ2DVh3W7nMtF5ds4yg/zeBu93aD7/8q1DPXndk11wsMpVfMjsq+8rUElEY2LWlmwMrw+KQsnM5Ki/4pi2IMivGW2hraysuuMZTlYtklKWyd79B0zYfJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xj2INoU1; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-41adf3580dbso5259195e9.0
        for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 04:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714045182; x=1714649982; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lx1UMZxQ7GI3jnCiWDSMDINtorN1nVNDmR/Gckd3Kyc=;
        b=xj2INoU16bTYKQIQwjjDOjaqlOIneuCHoRH4PaCQeERXmeqTAgOqe7voW2yhrY0+aT
         WpS4sn+Vk0PgPgnCd2CFKGUPAbyYaiZovfOR21epZ4RkK4puV9HZef9FUtHe0Zyklat/
         YdQB8oOzDuf0bdSMJCUC30CDhK7k+61t4hppcXY91JiMOkoqA1RA6j07nDVnIEDAmeAx
         X7yAMN0E2IuUcA0HoWSoV6ytRt9UzPPTDYdR93DnpCp/pjsLTP07d4K5Ahrwd4LO8J8B
         TbvdB1IVx+k9/ZTP8ihisckiOjvR8F+230eCrublUr1uuXIJDk0LqpM3RjqmdJqWL1V1
         3t/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714045182; x=1714649982;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lx1UMZxQ7GI3jnCiWDSMDINtorN1nVNDmR/Gckd3Kyc=;
        b=h0uWsg2oJJ8mwYrxcKmg1V55uALSkusITuflwqFZI1YIfYSXMyAsH1aYohQJSyrREb
         B6lFp0xH5jGRpVzFACf2vahll+r6aSAvldBGf6DDvMOo89sqTHG8YNCGGE2Kejo4aSt4
         CMM3yDcA6VzX1hzWQTs2xZ9sr8mk1Jd7j8MvJZFopEyr49f99CVnEGAdme8DryYxkj0c
         qhU4lL/+56B7FhZmpa6FQmT0E374uWrQlDyBdFZnXd5qdRNIanzlLNU9gWwgeDM5USDy
         7EAqoI1takA26Z8O07+JawH3aksi25LvwLiytSCIdNsnAF1T6By+BJDmbYlqDkzTBkoA
         7p5w==
X-Forwarded-Encrypted: i=1; AJvYcCXSdWBvYaEHNPzKsxd+9yLmmGqeCgc7+XqpIsUWncBwM4a9UnX9cN9RuxME3q0shBGdDnKzfXu1+P/5dtNEivsv2J9GAQ16YNEq6g==
X-Gm-Message-State: AOJu0YwN+6qcUZVWb1NABkI/8IM7tKfqQVUC6D+hldAp7hFbzm8LVpjy
	d6IVHwJr5TGc/Cid1IN8WBNTDTgx+GMuGbWArRmNHeFS3Rh7/n8zOApVW923Wao=
X-Google-Smtp-Source: AGHT+IGq82OhzsAz74n/xOWFujdowqxi2tmMG3tUKmEgRbvC6V2sRAwNbx7JTrE2QD+khqp3ZW/xjg==
X-Received: by 2002:a05:600c:3ca6:b0:41a:4623:7ee9 with SMTP id bg38-20020a05600c3ca600b0041a46237ee9mr1851362wmb.10.1714045181717;
        Thu, 25 Apr 2024 04:39:41 -0700 (PDT)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id l23-20020a05600c1d1700b00418f99170f2sm25007939wms.32.2024.04.25.04.39.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Apr 2024 04:39:41 -0700 (PDT)
Message-ID: <7b10292dcc2f538c8d5c27322206507130a6595c.camel@linaro.org>
Subject: Re: [PATCH v2 04/14] arm64: dts: exynos: gs101: enable cmu-hsi2
 clock controller
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, mturquette@baylibre.com, 
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
  vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com,  bvanassche@acm.org, s.nawrocki@samsung.com,
 cw00.choi@samsung.com,  jejb@linux.ibm.com, martin.petersen@oracle.com, 
 James.Bottomley@HansenPartnership.com, ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
Date: Thu, 25 Apr 2024 12:39:39 +0100
In-Reply-To: <20240423205006.1785138-5-peter.griffin@linaro.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
	 <20240423205006.1785138-5-peter.griffin@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2024-04-23 at 21:49 +0100, Peter Griffin wrote:
> Enable the cmu_hsi2 clock management unit. It feeds some of
> the high speed interfaces such as PCIe and UFS.
>=20
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>

I think I replied to this before, in any case:

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>



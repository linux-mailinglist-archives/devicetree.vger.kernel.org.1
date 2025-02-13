Return-Path: <devicetree+bounces-146317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D434A346C5
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 16:28:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB3883B2EFE
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 15:20:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B62E33D97A;
	Thu, 13 Feb 2025 15:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x2QCH6gy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BE213F434
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 15:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739460040; cv=none; b=ceSZSRgtockH/ID1hM0Wx8uA3Avr6WOtD/OTQV9nuGw/clBGwr0NUdpbOac5SMXHDsSEtdvSoLuL73KzLzPWbKdNVoMVGpcNUCWiisT5A2dCiLuSXuPJjQZiQ95IxCnX5O6qYcPyjZTSgtl+iOiY0gSpX2RZNlcBTZhmaDG9GCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739460040; c=relaxed/simple;
	bh=rfpPomdaAuC/C/fVrS0p4u4D+n8uN16/rL49lRiJWnY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BVqh6h8vzoia0N6c9CMDwYdWtDTaLCd4ixzYN1HFQ5SzGiBQq3qcAdWF7aJIR3YzlIkCkhJPm6DgDiEb+JLFYAaBWOtQE+flK6+E3zoVpeelFlMZZxNIEeM7t1MZIUM2inI6O2e4li5Trocxeh/VT9HfpJNC84MraJnjwluVJhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=x2QCH6gy; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e5db2d767f2so498604276.2
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 07:20:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739460038; x=1740064838; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rfpPomdaAuC/C/fVrS0p4u4D+n8uN16/rL49lRiJWnY=;
        b=x2QCH6gyWVWNjpe2+HEgLP1mqY/X5n2KqG+LvZ9wohdc6WeENRtHM6pDJT0OTSyHOz
         2Dkt+6p+/3lf1Oyot9hGsxQ1vD1RwJ8mxMRnYtLUdV6kzXK3e2Lku5c3PyAHIKwS/PYF
         5lmLxMn5zcxxfiPd9dAgIEzXyRRqWeWtGRsZcHVniB1+naFAdYVQqV76DFsdJiZONxWG
         kmJexM4lKtIvcogsKJFH7sb14vSYu8U714KhWbqGdWdgUhrwV8zRh2WyZ6NZZepP5z0g
         44L/3fDzxfKA0CWBrzczWv/Sqz/VAelBljA1fOBCXUG+j1E/bMbc8lsjTElsQu7uA9k+
         X0Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739460038; x=1740064838;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rfpPomdaAuC/C/fVrS0p4u4D+n8uN16/rL49lRiJWnY=;
        b=WuyNNRLDN7A4tTtjpQzs2UqQznuY0i8FzwV8QpvDj28u5UIBokWZgEK4hEtmzjt8Cb
         7RXuatbYDPbvyMof2VsW/ccL/YQshFIsxifKZS6G/cLSzBDZBtxCKj/qcfa3bMLMDONd
         3PHyhSA0fGQ/FOz2SabhyqCdoRyoXkMSAVfUVxnQZdn7HUx8r3uRSED64gw9LjATmgTC
         Jj06rHdD8SAuaiTs5DCqSkkuXtOYAWIpgqefaWnFUJl7X0PesoFhWxFj/C7Vga55fk0t
         UsF7aMciNEvyNrLlTozcES9lx7ha8L3qS3u/5AmpIX+sFUMEP7p9CqWqHgjeK1SzMU19
         k+ew==
X-Forwarded-Encrypted: i=1; AJvYcCVpzbQZPNM8Yk1mbOzSx8oZcqs9+V1n1YvSK+So/0O8WgUEdpv0WIBH5sgax+OqM6Gyxb/kzi2217ww@vger.kernel.org
X-Gm-Message-State: AOJu0YyRrkW87yz0GrBnrsotJpRFFpXYEImsEz4myavlv13rxJme8wrM
	os+srC+QLExlPKuhkY+AbjDmMTELMp4e6DkOK9sSsJ6q/jA/N233OfWbGMl2PpQw26sEgjLEPXa
	bN37w0esn4Iocs8IWWn2nsuE9JInIfd7lGlEVyw==
X-Gm-Gg: ASbGncsNJG5MsUdWI67Ix8VPjkyO0Ou3ghnBsjdEdNSQXG3kYQaVJo3o4CXJ2L9d07Y
	+DSz7H1xpGnhIrVaFYUh+KxaJ3REdtoSF/qGGbaABp+OvoTvai7SH779SKeValSiUN6/tKi2IwA
	==
X-Google-Smtp-Source: AGHT+IFl/TG61rvCBbheyo/94kyjI8M7amCo+Z6FRtUrkr7CyRBFmSwZjs8C3zZwm91mmD1mfp5rexOLBEr+jyGCvjE=
X-Received: by 2002:a05:6902:1206:b0:e57:f8cd:f0a4 with SMTP id
 3f1490d57ef6-e5d9f1793cemr7130963276.34.1739460037910; Thu, 13 Feb 2025
 07:20:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com>
 <CAPDyKFq+pWXq75xEtfkeCkmkdZtfp9dAFej4M+6rO6EAUULf=w@mail.gmail.com> <yq14j0y25hd.fsf@ca-mkp.ca.oracle.com>
In-Reply-To: <yq14j0y25hd.fsf@ca-mkp.ca.oracle.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 13 Feb 2025 16:20:01 +0100
X-Gm-Features: AWEUYZklR9qSyrIhPSPo_ng6rtBVVDlndlqorR6YtDIMuUhis6JkRbA7309T0XU
Message-ID: <CAPDyKFqsiBaSV--a_SvJ1n0733XXjSoONztf0e=jsGTZhKxQJw@mail.gmail.com>
Subject: Re: [PATCH v7 0/7] Initial support for RK3576 UFS controller
To: Shawn Lin <shawn.lin@rock-chips.com>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>
Cc: "James E . J . Bottomley" <james.bottomley@hansenpartnership.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 12 Feb 2025 at 22:56, Martin K. Petersen
<martin.petersen@oracle.com> wrote:
>
>
> Ulf,
>
> > If so, may I suggest that I pick patch2, patch3 and patch4 via my
> > pmdomain tree and share them via an immutable branch, so they can be
> > pulled into James/Martin's scsi tree?
>
> Sure, that's fine with me.

Okay, great! I have picked up the patches and pushed them to the below
immutable branch, which is based upon rc2.

git.kernel.org/pub/scm/linux/kernel/git/ulfh/linux-pm.git rockchip

Kind regards
Uffe


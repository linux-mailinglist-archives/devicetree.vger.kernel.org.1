Return-Path: <devicetree+bounces-224969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F615BC94F5
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 15:31:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 732743B1DB8
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 13:31:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA9DC2E7F0B;
	Thu,  9 Oct 2025 13:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QOYpd02K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD3C2E093A
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 13:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760016684; cv=none; b=jo/fjaXZWtbkyi1AjtgHKttIr0/KmZ87F2TCDSvFCwWUZlyOmowIS0jK/6qsyyBTE55qP0i5bDNdhpJbsyEDqrt3Fay3ZxtuF7YdD5QdWUov6APEiQwuBigpiQQAMorgKYHjzP6gCIkKGJQLqrvahWUy/wtm/mNzdHqUUR3bKFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760016684; c=relaxed/simple;
	bh=4uMuw9n5pwbOi9ibO0Djym5GMms0Of0kx57oeDZ/s/s=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=b0slTJ71UdZdYsIr03ZvfqRu1M/ZTKzyts0uTyBGHkChhtzaAuekL/Kzba+c2GWgI9MGzI+MWYneSXM+fqPlwlgNmaUZd1WmkFCLP6ly5nUGILMxQ09duBwS+AMZIWXDgwp0dJ5+BPYYVm+RkCN+Van/digQpQfVm1Dvta8IF2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QOYpd02K; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-6364eb29e74so1762595a12.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760016681; x=1760621481; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4uMuw9n5pwbOi9ibO0Djym5GMms0Of0kx57oeDZ/s/s=;
        b=QOYpd02K8BVgNunRW7q+mLlUaygR+qTqS46lbZKjTaHTxrBVGFu/XS56SXqS6lEl1s
         AR9Z3Of9CdnuTxKzHufvGgPmBuMbj5wN7FdFS7OhblKcWPYcU0xVVk17QcnozeQc5NlN
         3t58Ff9n8TcIXt5jbCIq2kiPrxypK/kxOAADc7VJU7FDn5QtnjF4jvkGa4RRJYvKs36g
         CBdJOnige3e0uILxxLYTM0sW9xze/h9D4yZah453EBY7UqePVO6KOPtfXm303AkeAu7i
         YZQ/qhx6NG+SZBA9vmKpN0skfQ1SbAVKZyEaZWwx8t+t/x4LCe1qt4ft4tdTVif1VQ6d
         eXvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760016681; x=1760621481;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4uMuw9n5pwbOi9ibO0Djym5GMms0Of0kx57oeDZ/s/s=;
        b=hYqCwhbFJ94NgEEKP6Xc6etPiyXzwM4TB6+80wADbAWUg/vg5r+owOWmVrYIC75TEI
         BWY9beQUx18n5ByqrKfMA9ZSyJceuGmAVv7WzfTTv5Bzq/QHBd9SEF5hRHHITapPrSEC
         AkTLi4W90xHiqi3ZroE4Hr6j2Agd+Gmm2klda1RK86CmYmlgQW9eGUaqOk+X0nRFA5JA
         JW7qveCqNtEr+5I5F8Yxpo2lx9+Z2UkqWNMKEKq1RplBPmH43LMgQNDrT40Rmgxh2Ii9
         HVmWVnxAztBbFbEtfb5Ika/cMmcL/5G9RBuLYI0JhDkJ9aR15G0tCyJ1osjlIWfRwF+n
         nbxg==
X-Forwarded-Encrypted: i=1; AJvYcCXg+hInhK/MqRIZIzWpbTyS6YCTIhxliZ5o469jfCMlSw/iZy+vhci+QsF0A7hxGuvN2XRhZu4YWl1d@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6YoL0kdLhsh4wgXjofNTvq5NsEsxpsieL9IWQAkSNtyk79xjs
	wYj5xMGvdOaEKps8MeODN+bdntQ+VnsgfatXTLs+tGRzdL1TZwhVKW9+EOsAz7V608c=
X-Gm-Gg: ASbGnctSZlqyS8XS2a5zOVDEiTytkLtRKQvzXj92H7OseqHydprzuYETp7CyK2Z0zEd
	ubxEBZFPiZrbOaarozXFt9NStyH5RctAvNvo/XTL6H/wHxqci+YQIlAMOpe9/jVxcphAItATOXB
	UsN031SC0+FlvNJtr9+u61lhZRjRJIu6CEY7SmInDIooUwQl/IqVp3EfhDWMUmcgBy180PYxbDF
	H4J4/O4KMxOB1jSXjKKhujITNbwltJNu4QeqCl4VsBwKM3XawyhevvcbMLn89xvPJUFtH7L0r/6
	5XDivjBw28mCpBkwJzaJ/BuZdRlWkgaldejdfz2O/vna66s0aBMSRTYDQhRf0wUV/mCPRzdFWom
	4VfV7/f7G7x0YOaj7FusjOjrhzunS7vwc++9Ru5KUxBSGWfx4GQ90vA==
X-Google-Smtp-Source: AGHT+IEnaDw79r99A3B3756aMdxT7SHXjMqW6rLoG3x0RAXtUbJZNUbfM/vMx/v7BA9OApMfoCnFYg==
X-Received: by 2002:a17:907:9720:b0:b4b:dd7e:65f8 with SMTP id a640c23a62f3a-b50aaa9bbe9mr879682766b.25.1760016681115;
        Thu, 09 Oct 2025 06:31:21 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652a9ebbsm1905425766b.7.2025.10.09.06.31.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 06:31:20 -0700 (PDT)
Message-ID: <9d4ccadf76ccfff1a8b5f572b8aa190e2dc40c29.camel@linaro.org>
Subject: Re: [PATCH 03/10] pmdomain: samsung: use to devm_kstrdup_const() to
 simplify error handling
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar
 <alim.akhtar@samsung.com>,  Rob Herring <robh@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,  Ulf
 Hansson <ulf.hansson@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus
	 <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Date: Thu, 09 Oct 2025 14:31:19 +0100
In-Reply-To: <5df18f42-b567-4d27-9e12-29723af40d6e@kernel.org>
References: <20251006-gs101-pd-v1-0-f0cb0c01ea7b@linaro.org>
	 <20251006-gs101-pd-v1-3-f0cb0c01ea7b@linaro.org>
	 <5df18f42-b567-4d27-9e12-29723af40d6e@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2025-10-09 at 09:13 +0900, Krzysztof Kozlowski wrote:
> On 07/10/2025 01:43, Andr=C3=A9 Draszik wrote:
> > Convert to using devm_kstrdup_const() so as to simplify cleanup during
> > error handling.
>=20
>=20
> This is either a fix (then describe the fixed issue and add Fixed tag)
> or you change the logic, not only simplify.
>=20
> Previously on of_genpd_add_provider_simple() the memory was not
> kfree_const. Now it will be.

Indeed it's a fix after all - While the driver doesn't allow unbind,
I added this patch due to the followup patches that add potential error
returns during probe, but somehow missed an already-existing error
return after this call.

Thanks Krzysztof!


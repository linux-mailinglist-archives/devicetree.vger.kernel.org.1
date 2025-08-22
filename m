Return-Path: <devicetree+bounces-207811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5DEB30E81
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 08:07:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C3AB5E5E62
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 06:06:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB9F8224AFC;
	Fri, 22 Aug 2025 06:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DMJxFvmD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B27920B80D
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:06:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755842774; cv=none; b=h3D+ky87hY/38hyS0iUI2GiYRZYL+qkA+bhV/sRV6Pl8XLB9yuAQqTNeSVS84mDkgeDzpctXVFvaB0NKy9a0XTwTggihE+UMmfRF1GdDTg+8OgXMRzOoPDkKvfTcIl0xMvXM4m9nHnZhI0zQilC60KipHhpqcjKI2I7+6H1N7Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755842774; c=relaxed/simple;
	bh=HGqWuoHgmmgHoSzHhFhnGFrp/claoOUiLRgGZX10r+s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gVqjY24efz1SiSUYN5J4r+qusNHwk2D+4FlD9E7oGsOXtX8ZOi8TKMoFCmwwTUnirTVtBF3czfae/MsKfHG24nbFs5d1fAUFP6FH070VsQHvvX8MbXjXXo+hN6xHhnEOWauMbbnhzw+/At9y1r4QnFgAynTVNcLAD+nVUjBj3/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DMJxFvmD; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-76e39ec6f30so1683298b3a.2
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 23:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755842772; x=1756447572; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aRj4gWuvSe9KJNF2HvWgOVVCeMpYCcJ3nSN/Zd2LcHQ=;
        b=DMJxFvmDwwnfaVQEyBimhTyC3/vAl8YX4HmwenkWr99X+4uER8nR878f8WzC6IojkE
         PkVHD2fbFmLVpx/ZUobGQcsP0SexyAfVEYBJ9v0mwF+wbOaglQwObYtVjCLdiCjmFVEb
         h1Ns+UasMGZYQmHjmB9MbKo+rtGKjsRvJ4g5tyivd7Uf6R3zFEkQh2y6vL/QBW954EqO
         4LeluaYYWFlRS9AWaryVHcGXJZCCFtG8YCOjH+qtESboqPBE1fhv98sQmXxBACha6/Lg
         dID8CWqtyH9JIP+k9hAgEDcnEx4OGgcaDs5uNAwvikhGXLmnoub40MJFmkBZK1xLIuyH
         G5OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755842772; x=1756447572;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aRj4gWuvSe9KJNF2HvWgOVVCeMpYCcJ3nSN/Zd2LcHQ=;
        b=J2WCmSWHYrAenIYDo/tcrgknFffO3LSz6D6ud6T82A7bHKK9ff3MpL3KgF1+sbLKv3
         S6xDfXHiTcMZMaQF4qcXfT9o8gNeR6k0WPp8v4iCQUvXJ9IktgEBpWoJ3bdvY5PMXtB+
         b/c/s8ZUa5qXopxafpKTQJOkJgxi61/DRhP9U4k1Y066Fz3WWB2dfgax/fpKqUqjF426
         PLUdcV8g733B1C8ptNmxd5m38JqDQR1H7qp+koCXvKxAjKv7BGIKMeAcgGJA3HSqtXzf
         ikuC+kXwMYITyQu5Iecf0aW1TNm/WH0vVem9CUowFEfs6lbXwCMM+7CxP68M5gkeYOKx
         cjsQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnKZHzSVplnfYPCqqXIx79Rn1S8AzpS54Yn2fNgDlCb/gzk2DPX0SQodlwFUIgrn+8flrYkDAWaMkZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxW+w9WMPqTIoD1Cr9WEJUNUECEW7fTOJYHqWEKC5ebWFepZC+8
	AvwrwiBNwQjigjgpeoOp+EtCNfkyNT10PBsXPlvYQziR5B+a9XvI/iYEXEL91qX8mfk=
X-Gm-Gg: ASbGncs9NSKaUODq6N2nNs1FrlMHGoBVTBeTkzou1psxG7xAtwC5rC1JkxZJhTYcRkC
	IzXwrpgi9B7QGSXEERoqXuK8pfgKnj88W8GnqZxgR4Yb/qWB0I4aSer/CjodmPAJP0bizRYMCTh
	BwFksdkjFJSWQ/RZ2QQKOhWWrAC3CVXZO23B3pvMDNRHFM2xrf1YhHGH40l0cLrIaItMqe+uUxO
	GIoPuCxzaRQ2QodbD7iLsXHRIlY6ySXuySPUmlxJUu9boB2QU+bWiiVWB3MfU0da5FNu4EjvMSh
	iSSwsEi9+QWucaig3wvpi+ZDNekzhXBMBfLwRZF/PdfVt0bhp2pGcxVWAIRddtgjYjjJfxxluHJ
	g4GETnxFfqgHs8wPWZ71nxAQw
X-Google-Smtp-Source: AGHT+IGryQhx7NkdJSDc5m5rZZNOBqLyR8DTgK4iIdr8kRPK/dFFCXNh+UbON3GVXLnVhVtonBLu0g==
X-Received: by 2002:a05:6a20:3ca6:b0:243:78a:829d with SMTP id adf61e73a8af0-24340e4640dmr2844133637.54.1755842772379;
        Thu, 21 Aug 2025 23:06:12 -0700 (PDT)
Received: from localhost ([122.172.87.165])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-325154999f1sm1475868a91.25.2025.08.21.23.06.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 23:06:11 -0700 (PDT)
Date: Fri, 22 Aug 2025 11:36:09 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Judith Mendez <jm@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Bryan Brattlof <bb@ti.com>, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: Re: [PATCH 0/3] OPP: Support more speed grades and silicon revisions
Message-ID: <20250822060609.djvsm5nmryit5ypl@vireshk-i7>
References: <20250818192632.2982223-1-jm@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250818192632.2982223-1-jm@ti.com>

On 18-08-25, 14:26, Judith Mendez wrote:
> As the AM62x, AM62ax, and AM62px SoC families mature, more speed
> grades are established and more silicon revisions are released. This
> patch series adds support for more speed grades on AM62Px SoCs in
> ti-cpufreq. Also allow all silicon revisions across AM62x, AM62Px,
> and AM62Ax SoCs to use the already established OPPs and instead determine
> approprate OPP application with speed grade efuse parsing.
> 
> Also fix 1GHz OPP which according to device datasheet [0], also supports
> speed grade "O".
> 
> [0] https://www.ti.com/lit/gpn/am62p
> 
> Judith Mendez (3):
>   cpufreq: ti: Support more speed grades on AM62Px SoC
>   cpufreq: ti: Allow all silicon revisions to support OPPs
>   arm64: dts: ti: k3-am62p: Fix supported hardware for 1GHz OPP

Applied. Thanks.

-- 
viresh


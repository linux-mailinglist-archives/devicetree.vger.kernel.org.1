Return-Path: <devicetree+bounces-229267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D23CBF5880
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 11:35:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 13CC84FF6FE
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 09:35:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E54602E0B68;
	Tue, 21 Oct 2025 09:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jeANKKqw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578272DAFC0
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 09:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761039317; cv=none; b=chfL4Pf5sIFTbNcUkp59PnpoQTtXjqlCmUkiTa/Ccp+WaqjXmBtfGyh/GwukIptQ/8OCasHTaXrE4zKDPgtk01f055hC8P1/1TItqmG7Fu55uVu6IlkFFFaDNHG20sEbvO1JoLqxrVH8IXRmk0zIRyt+W04WAEr+Wakg3re8+FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761039317; c=relaxed/simple;
	bh=bcpL8irMMM+I6nfVnxAplLJBqbQTjzwjMcmHCIsz5gE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F3d18priNdp07TqkwaKRz+74+my/yE9hfQ2Zrgr7dsuq1lsq4ZxGbMaSV9IfYw8z6bgT6XkWpjTGXmklypgWfCpDCGITnwf5qtErK8nLdqqLQ4sFiuAV/6mNVs9oBf6GrLwu+F7yrSyKbqIVoCkSIAuJkOVevw6EbMZ5B8UDQCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jeANKKqw; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-781251eec51so4212118b3a.3
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 02:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761039316; x=1761644116; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xdLn1ynyVPZ4dxUpr8ekiQALFxRstWPAZs5IYw4es7s=;
        b=jeANKKqwyH/aCH+y7EL0NjMWQg7wZwMmDu5kYZBYPSXHo170Xpevbq8OppdFAyhuGV
         +l+vgjAaG+0tMUsip0A+iu5ZMywWpWaI4gfTxmfz5ZaQX4VcWC8qazsLQ7YlzQQnHf+J
         F/rnKHA7yVY2AO0XRi0UyAO1nBCRa2GJ5CfHnPamxWqEV4z2L691lVg7UwukSYfSJkyx
         /5jIb7b5YSqZvlw3hn8VBBiQT1n8LSi+ToGArxDwciBxBc5rQZbp+s+thH5XYeIe9FqL
         91sLYaVEsjIj0OVpk6ux+ecYZe/A45IK6VYkdGWYpYEVE57CTjCmv6JjcN66Sygt9e1+
         MN3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761039316; x=1761644116;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xdLn1ynyVPZ4dxUpr8ekiQALFxRstWPAZs5IYw4es7s=;
        b=Ixg50h+pYvc218IgvVNBA33DNo00CHQlHxfTAsNbcxuqF1WXv+MgFHn6E12pP8Ziec
         TQSlUNnLS72UxFpwdKMYlu+yuLL54lT+3fY/DR3PtVZsNfZDkuYz+LTKoBKECHFxKrzS
         vp6FIrgsilS336bmOWG6R0VqLMXK/7ihqlFj8abusSecKjhB9liiKRUmYXYgOJdXWj8v
         IyhomSS15sR7vH1/dw+VECzORjVs/8AH2WRowpT70EO08VmB98yLft/U1ajNTocECwTE
         0hVXtEhbG4gpXwMbPtwk/IRzPsohWKBdC+nJ5gduYLK5cRDM3TTrWOEHRFSLijzSG/bv
         aOvQ==
X-Forwarded-Encrypted: i=1; AJvYcCX/ktGNIK5XLRtNQZC0Wz2W3KB6oW+Jwx9ExPxSiU9jHFqT2vbvQlZ6RaltOPmZz98uTrhzYyds0yxV@vger.kernel.org
X-Gm-Message-State: AOJu0Yzykf/cgA/9ufmWQAvcdNY6HTbWDHL2gBktwDOVk0CqBvHCKmlV
	fLNcDXVk5VlQhAnvj4Co89g/K0rwBJB7lGp9jX3XQBcaPm0rgPUfgFoI3yQADg==
X-Gm-Gg: ASbGnctFUy0XjeaWzKi0dMetRHZFmJPm+HTFT7IVMuwVzW8ijLItSgI/5kNjY5Ffddd
	9XQSeUm/w2LWX/PcTF7Is0AWtcgdYJjStP8an7345f5YNRlxO9mW5ktITLBZq3fpgJxrYw6hyji
	mSoq7AUVEBc9yXawuQsv540B68zqAmHiXjwpiXqkGPSlPHjMxM5US7DsOZDFNa8SWfXMnBA/bsx
	CO9ptJLmgWOwJrSF5avnF9OZi3yB31RKHuuwVtyTV1IPdllyTsq5lKiNrLXoVZUkc9weo9cjnC4
	BPNMh51YC7HWPjzj/UWKZLQzyBDiYXn4XllsgxHalIAS/VQL+rTl/CqtiBD2py4Mty7nhsxftbI
	+bw3XQuOvaXuDeHWlFY1R3GMPBeUqM2qQtV+hCXAzQ/DSkR5LrZoA9UyGKPejeNQGIUTWGK+O1P
	4crIafYCzYmN4=
X-Google-Smtp-Source: AGHT+IGFkWwUhKlvX3wjqRF8Ewtzj69yE0Ksx7a5SqOmni4nW94Y4t7Udab8ZYZ89rvlIzREH0Iieg==
X-Received: by 2002:a05:6a21:328a:b0:334:a1bb:5898 with SMTP id adf61e73a8af0-334a8621674mr21770370637.40.1761039315601;
        Tue, 21 Oct 2025 02:35:15 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6a764508b0sm9918642a12.0.2025.10.21.02.35.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 02:35:14 -0700 (PDT)
Date: Tue, 21 Oct 2025 17:35:12 +0800
From: Longbin Li <looong.bin@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Alexander Sverdlin <alexander.sverdlin@gmail.com>, Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
	Ze Huang <huangze@whut.edu.cn>, devicetree@vger.kernel.org, sophgo@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v2 0/3] riscv: sophgo: add top syscon device for cv18xx
Message-ID: <c2b4zfjfqqorku2oznpwhvk4mwfwv4sypv5qxi2pk4xsxknhnz@o6euptpneeqk>
References: <20251020083838.67522-1-looong.bin@gmail.com>
 <62bb4f8d-ffbb-4529-ab0a-70fd8c77078d@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <62bb4f8d-ffbb-4529-ab0a-70fd8c77078d@kernel.org>

On Mon, Oct 20, 2025 at 12:04:06PM +0200, Krzysztof Kozlowski wrote:
> On 20/10/2025 10:38, Longbin Li wrote:
> > Add top syscon device bindings related DTS change for CV1800.
> > 
> > ---
> > 
> > Changes in v2:
> > 
> >   - Add ranges property.
> >   - Use proper regex in patternProperties.
> >   - Add complete example including child nodes.
> > 
> > Changes in v1:
> > 
> >   - https://lore.kernel.org/all/20251012022555.6240-1-looong.bin@gmail.com/
> > 
> > Changed by RFC:
> > 
> >   - https://lore.kernel.org/all/20250611082452.1218817-1-inochiama@gmail.com/
> 
> 
> So this is v3, not v2. We do not count from 0, -1 or -2 (of you have
> three RFCs). Please start using b4, so you will get it right. Otherwise
> how can we compare versions between v1 and RFC? Try yourself with `b4 diff`.
> 
> Best regards,
> Krzysztof

Sorry about that, I will fix it next commit. Thanks!


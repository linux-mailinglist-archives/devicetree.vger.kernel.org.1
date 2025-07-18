Return-Path: <devicetree+bounces-197692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D470CB0A51A
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 15:26:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1AD133BF48C
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 13:26:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 907A62DC339;
	Fri, 18 Jul 2025 13:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="CBkffhpO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEFC62D3236
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 13:26:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752845186; cv=none; b=ObTaB4MEMtUaDc09KuwG1pVplST68aA2ucpprDS6DJkB5ilxy21+1MyNW6MERIj5f/qJX7WklDBqxakPmF35NLmCRfHQ0KwUFt7Iui8tb05iqybSVEx3zjfcGMVyz1t/tgpmtFJKnqU21Z8+YpUFyOZfjeT+hYi72mY2EGJ+1SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752845186; c=relaxed/simple;
	bh=eWsb5uSBhu6bPzZbSom7WozOJmoigRto8Pj5BCIHyeU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UKBHl1/ztdo0D69WbXdB2okByrqb1NJmNdzEYsUul5UbP6pXvP5Ck1dcFxMpGgxwT3/jhFumQ+Z0b5QFx2DlpFTOJAg1gGvcFJhUf847rI4E5+dfwZxxBzQxamzIUHcbmOIW/VCX0mxrRFh/QcmXlSkyhGXzIVQdK7lMBU2zmXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=CBkffhpO; arc=none smtp.client-ip=209.85.219.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-6fd1b2a57a0so20132676d6.1
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 06:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1752845184; x=1753449984; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eWsb5uSBhu6bPzZbSom7WozOJmoigRto8Pj5BCIHyeU=;
        b=CBkffhpOZayaxr1TAMRBLvIuUh3AFm+C/tgijlIIKNfWD9zDUlWR6CuvShPwfhmnVT
         eHMMNntb+FLoDCc1FokCpzxS3LFwPpPs+yBku7RstNzHZTzc+7QwBgT7gAlUZ0KozSdC
         7sigJx9D6MNS45ha9iTlZmIZPa6/+AHwxxERCHBl09fmwd4TG6npNe2wPv/rzBY+Khio
         8Jd8EnyJyU4dWf1wfLo5iAdgHg06sxc0UuuGBbs3qPwseNknj4FnT3T0mbhfrwwhdPun
         xAIZQiKUxOl/5FhZlpKpi4+MBDaS8uCxIrrq9KY+fqF11Qj/yBd1O3rNlQqzZciRHq2b
         iMwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752845184; x=1753449984;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eWsb5uSBhu6bPzZbSom7WozOJmoigRto8Pj5BCIHyeU=;
        b=jQRPNyI4sZ45qQnrfjIdiAWkDhus060KT3vEj3hUmz7MnK6BmfZWgKHiwC4gKLKCWl
         Eo5lBk/1yTA3jXd3IuhtRRZ8vSK2HP8Qa+aHA2tTeV9Id2cYZq3HLptyxri4oPuNHWXp
         5BJOT/MJz8Q62fHFs4/j/0lr6ktsz78IqBHdtKyVPE5Bm+a6oTUD8liennv1vpNaAI6Z
         l/K+cP/kXcP9NZM+obXhyggRZp3yw6fX9LiLnyCBsUGZxDyEc+pxma50s7Cir5kwDA2U
         ZoR68KQPMZWPIfEn+KNxUstsQuSpRusirVzZq3Wg5iTpqLIgD7ha+BU3IVtjoBhafaks
         bUJQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTe+CD5MiOk8Qj1K5XpvewT4CdHXpzXbI4WcHQB5foHRGm08JEKJuhfH3+r0KLegTYu/mtUlxFSnzd@vger.kernel.org
X-Gm-Message-State: AOJu0YxH07NatycdNelhptlTU3YFE9oPnjmVw1YpBQdUViwD6FcJ74Jr
	W6CAHgjnLWEDJ6ZqkCcoapLvIlhcnkwwMT0pWlzQWKyfwRIB7NyCMTr5DRCH/y4J3U8=
X-Gm-Gg: ASbGncsXotKHxKK67SQjXC2bx9Sc0Y0mfzChpGaqeZFPH4a1ZgNGUR/zI+tZhQXH4Ep
	wlVxYpW1AsYZgPTUCFUYmxcczC4jBWH1sXZuZsHcGtVtAIEGJgGbVI+jWsePXGGTiBcJ2l08jK1
	eOcg5yENOCSy6tM6OK4IL3lz5bj1BPBhSUkDjIMGSIeDUKjy3JjAjcD/LPfr1T1y+ruXN9AsGmS
	PHH5abWRnMHvlpyACzZbgPciZi1VsqbsQ8sDpMTensi9BfLXlJ3D/D96nd0QShGC1/pbdp5pXns
	wW/E42/Isa443pSqSpS9GqetjtA9E5FYFHiiYT7HkXxHcRLOoFFxBsbMV58G+LRmjHd9R7j1jzX
	21NI37YP8QWcDbz4nGN9N5XmK/1g5mYqa2mtzj6XREhCgi8V9tzTyPaJppMoRYvuS8HwPzsjgIw
	==
X-Google-Smtp-Source: AGHT+IHxe3HazeTMlNhrIdTEfQ3VTjX7wXKy+xR8Lh7PRfCMXJiCHtJEIAJGMTKjnmoXNaUXBSYUhw==
X-Received: by 2002:a05:6214:1d2d:b0:701:9a6:92f1 with SMTP id 6a1803df08f44-704f480de58mr194846736d6.10.1752845183716;
        Fri, 18 Jul 2025 06:26:23 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-56-70.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.56.70])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4abb4980463sm6903981cf.12.2025.07.18.06.26.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 06:26:23 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1ucl6U-00000009yt2-29EA;
	Fri, 18 Jul 2025 10:26:22 -0300
Date: Fri, 18 Jul 2025 10:26:22 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Will Deacon <will@kernel.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	joro@8bytes.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v6 3/5] iommu: Add verisilicon IOMMU driver
Message-ID: <20250718132622.GC2206214@ziepe.ca>
References: <20250710082450.125585-1-benjamin.gaignard@collabora.com>
 <20250710082450.125585-4-benjamin.gaignard@collabora.com>
 <aHTzPwTob8_5rtBS@willie-the-truck>
 <baa1fcde-f167-4a1b-afca-0a2957a688cc@collabora.com>
 <aHozv0NG1OBlAH6c@willie-the-truck>
 <b4169471-fcd0-4415-8281-c5bd722e5f2b@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b4169471-fcd0-4415-8281-c5bd722e5f2b@arm.com>

On Fri, Jul 18, 2025 at 01:56:36PM +0100, Robin Murphy wrote:

> All they really have in common is that they're 2-level formats with 32-bit
> PTEs and 10 bits per level (as is tegra-smmu too). The permission encodings
> have some overlap but are not fully equivalent. Crucially, the schemes for
> packing >32-bit PAs into PTEs are incompatibly different, so if you're
> really keen to genericise things to *that* extent, that's what Jason's
> already working on.

Right, I agree with this. The page table code is duplicated
extensively across iommu and the way to fix it is what I'm working on.

It is all the same code, same patterns, same problems, same bugs :)

I think it is best to leave this as is for now.

Jason


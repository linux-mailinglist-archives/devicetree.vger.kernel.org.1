Return-Path: <devicetree+bounces-145171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4F3A309F1
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 12:31:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 36F073A1E5F
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 11:31:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A6DE1F0E3E;
	Tue, 11 Feb 2025 11:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="YYGBbFzo"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 069D81B85FD
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 11:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739273466; cv=none; b=GBA35XKZDR/TI0C3tZnul/eU+riUbKiN3B3hsbjvLiNGxVRrgL/ASUmraHEqm2P4lqwnL9xpARx7K+YUt5em+46cdufnBTs3wCVaOkL1GOR6MVPK8880YAG0vPsS9DUS9RvS3Ul1l7MTuDMshMpSQ4tG7J31B+qoR2DYAQ5nlbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739273466; c=relaxed/simple;
	bh=SxRO+2V18543uuVvqtYarJpvwbWlhVTPdjSnXR1nptc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hd9nSaVjFuFa07JITPyra/eys3YY8WTkXkFKnObE0NXuvHkprPZiCc3Xg8icFQjK12A39pGWbZD/j0/8MubkEZq1sUdPEi578eA/Ynldsg6KKG+Tssqr6k7E749JdopzjUWbqqMmp0KUqou5mByiZe2TgcErlFuK4e09PYSaSzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=YYGBbFzo; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1739273463;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XkXaSMBOnMyZHKLeyMgqeVTTrgOxiy57mT/LG6mdTOI=;
	b=YYGBbFzoYIz8FHbVujpBMknQki61CnY1/aEFL0EObZ1v/wAvZZ/ucpdDZlUkt+lqkbve+7
	eLpZopiNK64iRiz01X7X8Yo0sJV0CYAoqqiy/wGLjXIRV0EWVyPFvrqJc93U2vDW63sNah
	hBq3/nbrHh/bfF5i/wLb096gZ8k5sxo=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-691-7mfJkvrtM8iPSZ0ASjM7Ew-1; Tue, 11 Feb 2025 06:31:02 -0500
X-MC-Unique: 7mfJkvrtM8iPSZ0ASjM7Ew-1
X-Mimecast-MFC-AGG-ID: 7mfJkvrtM8iPSZ0ASjM7Ew
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-38dafe1699cso3602217f8f.3
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 03:31:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739273461; x=1739878261;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XkXaSMBOnMyZHKLeyMgqeVTTrgOxiy57mT/LG6mdTOI=;
        b=tAjSbKUz71crqVBCvY2sxL2R5JeG/cijEvQacjWPmyxJ7azuSeoEds+6WY/KVbPYtT
         jLF+avns4ZIk8C2ABY0S64WA1jf6Ko6/ESiODc48poWULX1DoUtgJjkXcIblBCjVQUki
         /1SGubKojoK2iPDyyuREXF1gvqY3qL80dSVP17iG7/MeEldpgAXc1aMKgSHdXspARy3T
         i4tZZnB8texWIQHRKM/FCP8qjRfL+LmQMDMVXmzy2G4sKK/t4DzDqXyDUOheMLzmT3/U
         Bgq02IG4pevVK23w/hr4NId+cwG1GvS307rnVg8YGWzkfbG+7eMKa1ieSajN+mJe7d+H
         mmIw==
X-Forwarded-Encrypted: i=1; AJvYcCXFmMfSYzF0rLGVvfSLT70Q1gvRqdmgPaChiR10stEpb/QdyTpAtIHJ7cEfY9ieH4tvptIcogOcqgPY@vger.kernel.org
X-Gm-Message-State: AOJu0Yzvn35nKqB/DRqvUF4TfMug3l/vpsrJ4oV3mIXkvVgo0nLs12ws
	usK6tW4j8yQwtZr09CECg7tRorPWxjPXpyq2gSyJs2qkyNMze3P0IC/ijQsdu4JDdmFfL8PrkNW
	qeikdrGgcDRyCZAfb6CIq1++sJesjcGEw3vAQ3FzBCwAAi9+jipUnAo/WObs=
X-Gm-Gg: ASbGnctn8VI6JEh0SpH/LBi0DaVC8/cM7f1uzQzTBdddSEvTAU9W3jJErH3F22NWGb2
	UaUrDQRuqKorf5Y0A+GT/2QMCk+P+hUxwJwtSNYlzyJTwIBoJNEQnvUDxO0LaUMtItMZeqd4lC5
	bJXQH7jUSd3cIdb2OUtkbXFdGm6WmEdnGkpZJQEdi5oicVpJQPh09K0l2NQ0FVBzOAnlCGR4IlH
	piwC7qekZ7zQcWfCUJ+JbaQjoNY7z815VnVujqMOx7PrtPxaYf1zggMgTpPTIoAYVuWQs1PfWlR
	73EbndiLtUDqV3MC33BZ1yIrLdEOQVp6pyc=
X-Received: by 2002:a5d:5846:0:b0:38d:def8:8307 with SMTP id ffacd0b85a97d-38ddef88639mr6802177f8f.55.1739273461495;
        Tue, 11 Feb 2025 03:31:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHayBvfNx73SbQMhbxNkafqfD+FDlmMiZt8eb9H+FDR01lT95RUPwq8zXQKROFW+H5GCWVS0g==
X-Received: by 2002:a5d:5846:0:b0:38d:def8:8307 with SMTP id ffacd0b85a97d-38ddef88639mr6802140f8f.55.1739273461119;
        Tue, 11 Feb 2025 03:31:01 -0800 (PST)
Received: from [192.168.88.253] (146-241-31-160.dyn.eolo.it. [146.241.31.160])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43941ddc8e9sm68421845e9.26.2025.02.11.03.30.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2025 03:30:59 -0800 (PST)
Message-ID: <6abfb27a-8116-4b15-9485-39e5b1f98c2f@redhat.com>
Date: Tue, 11 Feb 2025 12:30:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] net: stmmac: refactor clock management in EQoS driver
To: Swathi K S <swathi.ks@samsung.com>, krzk@kernel.org, robh@kernel.org,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 conor+dt@kernel.org, richardcochran@gmail.com, treding@nvidia.com,
 Jisheng.Zhang@synaptics.com, ajayg@nvidia.com, Joao.Pinto@synopsys.com,
 mcoquelin.stm32@gmail.com, andrew@lunn.ch, linux-fsd@tesla.com
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 alexandre.torgue@foss.st.com, peppe.cavallaro@st.com, joabreu@synopsys.com,
 ssiddha@tesla.com, xiaolei.wang@windriver.co, si.yanteng@linux.dev,
 fancer.lancer@gmail.com, halaney@redhat.com, pankaj.dubey@samsung.com,
 ravi.patel@samsung.com, gost.dev@samsung.com
References: <CGME20250207122130epcas5p1857043fa03e7356dc8783f43a95716ef@epcas5p1.samsung.com>
 <20250207121849.55815-1-swathi.ks@samsung.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20250207121849.55815-1-swathi.ks@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/7/25 1:18 PM, Swathi K S wrote:
> Refactor clock management in EQoS driver for code reuse and to avoid
> redundancy. This way, only minimal changes are required when a new platform
> is added.
> 
> Suggested-by: Andrew Lunn <andrew@lunn.ch>
> Signed-off-by: Swathi K S <swathi.ks@samsung.com>

For unclear (to me) reasons, our CI failed to pick this patch. I guess
the too wide recipients list confused the CI, I suggest re-spinning
including only the ML reported by get_maintainers output and adding the
target tree ('net-next') in the subj prefix.

Thanks,

Paolo



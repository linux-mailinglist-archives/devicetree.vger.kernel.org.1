Return-Path: <devicetree+bounces-219167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A38E7B883F7
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 09:45:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C05D188BB43
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 07:46:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 220B72F60B5;
	Fri, 19 Sep 2025 07:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GBGigD0c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6202E2C1581
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 07:45:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758267922; cv=none; b=gpcZZh7iePS+W8ED78e1yX4yD4lPBmBHmGbw4nelim5VAkU/Mqtk/7JbTaApiaSy3Dqeas7P3ucH1je1M0JvfunFGxTnGRAdUC6ze/R1k5JA2MzZ8aYlct/T4BPLavwyALo+l4LAeQMJKsBqZxrIcpMGN5Bt/qncXxdz0oLr7DU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758267922; c=relaxed/simple;
	bh=G5NCxklBPHy4efUUiThtpcKjg0wPNcH+CK6EOvnsvrs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e03tvvSLqru7TuLB3aHr4Sc79glDDvxbYJsGv21DSZAWEvXrZSqaKfkuXf8N40YjTtt3HwkKCijKYjNm5x+jr/9M1aaKg2HZaeGwHRe2hdfxLFyyE1Jn75ibroxnHewDrTFnBFwpM/mAsxBGmQ9Hds4DIVBmeVxIKfS0Ck9HCVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GBGigD0c; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3ecdf2b1751so1010149f8f.0
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 00:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758267919; x=1758872719; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PNMgvIIFlPxMgwjf1A0nfVZAfJVYlyoyJvlDVyQp+0I=;
        b=GBGigD0cljP/rEOt78vhsH2aVfMuQcqMM+HQAqBJLoFDAPsfDGAfmT0fFIwcRnVO0B
         PNfwtUID7/+c/KYLqz71vHLsY5Dz2S8ffwPOfWkOY6mTbKtc7wzneCnueD3a9TJY96AQ
         6j/OWq20Y21eX90IHt20lRkFHO8Hzcm6Djc7odLkjWE3JUPDDqdkEBb/HXNnI6sIEukD
         i51cBaepc/aS6DE35g8qkYdy+Mo9KwCIvhQWJEAFEsgDHaMhFmKFuGeDKHKoN4/9zEw6
         tY6NRV8ZGRLRx0Kfy0P4lesSck6sE2A1f86NgcxTBPh8p38fsSRV/6A2PibIyCa58GX2
         MWVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758267919; x=1758872719;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PNMgvIIFlPxMgwjf1A0nfVZAfJVYlyoyJvlDVyQp+0I=;
        b=tzd7SC7mJaE7acMW6K2EJn3GAY/Zwva444ncVZ9bRN4GfSqjbPNCFXPbeleOeb0KUq
         mwwZV5abNSB9mbb4iLbCJ8mSx2xm5TWqva0IMdBmu/y8HikWRjC1zsGQDvqxlt9pCajk
         zBimGEAqiKqyk6PTChU4ZAMCqYCOv7AHqZVxCKftZNV94DND9BhEIU+tUnvNgSs/rg90
         s+Fhl69drdCvSectxHkWGOKfwAIGpV2ulF66uS4QtLFqjg0cpnjunfGxupvi+jEcEAVH
         ASHbdVA2nD4458PKOf1TSnmBD6T6b/X7CMRxCkxNPlgAmFoymRvj9RkXehnNXNJryPxz
         7VpA==
X-Forwarded-Encrypted: i=1; AJvYcCWEpjJRgUatsMfOmljia6i9wVcsXed0Yyta+lGVyLwtwPozNhmaj+ihThHn/omoVoPf3vPa+glypyd9@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0JrQWDCKWhxdwJ6iHwJFjBIJV4/KqaFkWe0I/ftmXlCPMlULd
	Eq42xw0idjupPTsUVx7rMxJVXxj8iWLUE/lVBOnt2s+8/7G8AhbU+z7x
X-Gm-Gg: ASbGncv890warzYGbO1/kdK127rq4Cy3J2WlbiP0S3jz2RJIDNgr2fwyYboDwfwc2kN
	tgO8BnGf4UBq+8uymsoiBdFXKDRVBgN5mGPXms8Fqlml6j6rOKrw4FVXg52Tod/j1lJCN/sd926
	Bh+stpIYvQHjwP7P/5DfBsY674Wigd+azrwHdFHbwuqLTfXESbs9EFEPC24M6ZkjiH1TPEnzLMY
	VULvCQQSVsKXKOXxul2Jr5mjSZQUwyOpUodesoOoLXBXG5aWoxfksL/3l4oDzF0eWBcxVOLgAIk
	Oz385UR4R9auVZX4nzKzy5C3ImDBfS4GJbqi7gEOQ3GhTnMNNddINK2ZWliRRZMXHqLTCh+Glvr
	1rk25Wxp3U/izOfW45SGL
X-Google-Smtp-Source: AGHT+IG5w03VkX5w0L+qmk9oTgo8UMgIyxUlqtHb7DAa5eouVlBho3WcVeCjzVUkdw6abcur45ZJQg==
X-Received: by 2002:a05:6000:25c3:b0:3ee:1586:6c85 with SMTP id ffacd0b85a97d-3ee8713efdcmr1612059f8f.57.1758267918368;
        Fri, 19 Sep 2025 00:45:18 -0700 (PDT)
Received: from andrea ([176.201.192.207])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45f3211e8c7sm73637115e9.3.2025.09.19.00.45.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 00:45:17 -0700 (PDT)
Date: Fri, 19 Sep 2025 09:45:11 +0200
From: Andrea Parri <parri.andrea@gmail.com>
To: Xu Lu <luxu.kernel@bytedance.com>
Cc: Guo Ren <guoren@kernel.org>, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, alex@ghiti.fr, ajones@ventanamicro.com,
	brs@rivosinc.com, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	apw@canonical.com, joe@perches.com
Subject: Re: [External] Re: [PATCH v2 0/4] riscv: Add Zalasr ISA extension
 support
Message-ID: <aM0KBwkdPFD69oui@andrea>
References: <20250902042432.78960-1-luxu.kernel@bytedance.com>
 <aLciY2putG8g2P9F@andrea>
 <aMoyntAydNMtcl+3@gmail.com>
 <aMw3504EwlnDOJI0@gmail.com>
 <CAPYmKFt=5=t_nxY4FadG0_vSgAu1tXyO15OCvo5x6QorqM+BAw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPYmKFt=5=t_nxY4FadG0_vSgAu1tXyO15OCvo5x6QorqM+BAw@mail.gmail.com>

> The existing implementation of spin_unlock, when followed by
> spin_lock, is equal to 'FENCE rw, rw' for operations before

This is not true without Zacas, that is, when using LR/SC: write-to-read
remains unordered in that case.

  Andrea


Return-Path: <devicetree+bounces-187397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B16ADFD56
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 07:54:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 71E08176E24
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 05:54:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5354242D9A;
	Thu, 19 Jun 2025 05:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z5LJ9Q9f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6D324468E
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 05:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750312461; cv=none; b=KSmI6fwOePX+CRM7MP27jyL2PpvlTpXLYUKwvELOq56K8ZZ2VcOCFUyPEqYitFjVJ8rXLdCG3XYbzRDMEejW69nNgn8gysbMaCIQakfE0tWmsE96Sl0e/sHgsNH/UAvAXKOJqaTuH5BKjpAe2PNeKaohauPe9kOIdBLpfpRLToU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750312461; c=relaxed/simple;
	bh=fkIz5c3VvVkstShK1H66lgQuGsJWH2TH8Np1JEM/A24=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QI4dc0xs8mQw7/LAVN01BgKfLOCxp+i4Iw5SBdt9WpVX6AhjG/eZn+DTDGmRPVLpJ40ENGG0QK8gcNHD2hO1ytb+jovQQsbvHUmcyEmg1TNYu/ki3NsMpgynj9kYVWWLoSCgylwPDhJkDNzKKY16wVtZxVzEoLU/knO4daqBrbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z5LJ9Q9f; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-235ef62066eso5560965ad.3
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 22:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750312459; x=1750917259; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mNX8x8v1rA4gsmPSGKn+LRzfhgT9AcyvzOiTf8D9D0s=;
        b=Z5LJ9Q9f0ofkODevuOGOSa+q9zAGOr9EkWdQceQvsx8na87HdYuzd1WdynY2uBNwpc
         HzBYUe4w67pG1FXk8elRHk9d3yoBPmr7Qz8YM4Hj5NMEo+Wm+yds5TYF5cg8ri20awlb
         yhQDin/WidyI2Kq121k8rfcy4nVqxG8eyUj/p3FKfarhXfrEQxSd/N6ngt0UcCasam10
         oFN7R+V24IWtNLwBwAfAoobLjlHyBf5b9PjU78DmpyK+Kkqr/R6XzNtvvMH0pY9MXY0J
         SJRluh0qmRKNwElyCGrUHfZ3lE6KLHSnY51RVVYHxZ8uwvKWii3FTxFPZBBYNlGhUqpK
         n9Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750312459; x=1750917259;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mNX8x8v1rA4gsmPSGKn+LRzfhgT9AcyvzOiTf8D9D0s=;
        b=ri8nT/xIosoNYtjWpJGt3VYSL+5UYVYTte1mXlkgLkDIbvWykuX2AnskEi31GSm8mA
         b4HQC4RZapIRgnVQswTJrPvpzL10JYelKiYjyRL4nClrbE9VLtqH9jOVSU2ZG0daUkAK
         ffAru7zbdUTirVZgP/TyXpPryyDluZJbZy1fdL4I/Xt0atbCez47Fr7ox7buowZu7CcJ
         ROH7ThKkFBaiGLvVT2+pPd/i3pHkrAg5GIltH7BSNSKCxVI1y73i8Vjs3owaMdmLzl7V
         R0mjhPxxSlm9aBr3YQFKk2wfZCPXR0G1jhd8e75eZsLjYcWVU3y/GvAAXuw/ENc/pQI/
         DdtQ==
X-Forwarded-Encrypted: i=1; AJvYcCX0S8GFqnsbwP33Ckk7KJZbN1KaehtSn+3njAkGSwvK85JwgkEb2RIL+hXlwUrBIhh3B3ZnIerCm8pl@vger.kernel.org
X-Gm-Message-State: AOJu0YxSJH7HYs1E9pULGCUqtI5OVXkQfKSJZVvchg2U6LKs8Who/iAP
	6uz2N9GIb4Jtdn9tVGKYbLrZgJ3qNvL1OonW2IiLpmDDVEMT5ArXLhK8v2QBQFivoFdOTqChizq
	oxJ5C
X-Gm-Gg: ASbGncvxNn1mkQ6rAPHX3rXpa2ZYU4WMhBakhf8cKWcAh78tdi804QL7WvyB3cWkcFW
	XSFW5vmI6vvC8l+7axZ23bTqAqQDt/YMxVEZFVejI9BcEiIZLMdnKFBvCo5gg38BdYZm8P1U6gq
	bDRhNnNffdAXTsK5FVMBpq+r4UkM18jW53QDvvgP/wwZg4zS7Y9FQzeO0ygPMAnfygsbpnWxuZL
	2K2ZWRjlaxuMWcEzzUy8d029BuOigDMmSLJcGAg976PhwHx4QKQ381izj8OfAVfl+nlzeBwOnx0
	TqVG7bXwvRj/jkPtqsA7JeFyBhL4DgQmydbxJ5e2GllCxoOUjz0E6BwIjcQfdh4+ueaECPEepQ=
	=
X-Google-Smtp-Source: AGHT+IHpBy809k4j/mgtJ3pLZAei1vSVsYHbL1LodLYl1qhBrEB6gEr4Vdl8NOXI+5UF/UVojJEPMQ==
X-Received: by 2002:a05:6a21:8dc3:b0:21a:ede2:2ea3 with SMTP id adf61e73a8af0-21fbd4d2985mr27026444637.17.1750312442235;
        Wed, 18 Jun 2025 22:54:02 -0700 (PDT)
Received: from localhost ([122.172.81.72])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-748900b04e4sm12287505b3a.121.2025.06.18.22.54.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 22:54:01 -0700 (PDT)
Date: Thu, 19 Jun 2025 11:23:59 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Tamir Duberstein <tamird@gmail.com>, Viresh Kumar <vireshk@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Miguel Ojeda <ojeda@kernel.org>,
	Alex Gaynor <alex.gaynor@gmail.com>,
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
	=?utf-8?B?QmrDtnJu?= Roy Baron <bjorn3_gh@protonmail.com>,
	Andreas Hindborg <a.hindborg@kernel.org>,
	Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
	Danilo Krummrich <dakr@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Brendan Higgins <brendan.higgins@linux.dev>,
	David Gow <davidgow@google.com>, Rae Moar <rmoar@google.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Luis Chamberlain <mcgrof@kernel.org>,
	Russ Weight <russ.weight@linux.dev>, Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Abdiel Janulgue <abdiel.janulgue@gmail.com>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	FUJITA Tomonori <fujita.tomonori@gmail.com>,
	Nicolas Schier <nicolas.schier@linux.dev>,
	Frederic Weisbecker <frederic@kernel.org>,
	Lyude Paul <lyude@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
	Anna-Maria Behnsen <anna-maria@linutronix.de>,
	Benno Lossin <lossin@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	John Stultz <jstultz@google.com>, Stephen Boyd <sboyd@kernel.org>,
	Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
	"Liam R. Howlett" <Liam.Howlett@oracle.com>,
	Breno Leitao <leitao@debian.org>, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org,
	linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com,
	linux-pci@vger.kernel.org, linux-block@vger.kernel.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	netdev@vger.kernel.org, linux-mm@kvack.org,
	linux-pm@vger.kernel.org, nouveau@lists.freedesktop.org
Subject: Re: [PATCH v12 1/6] rust: enable `clippy::ptr_as_ptr` lint
Message-ID: <20250619055359.tormmysgxxcper6q@vireshk-i7>
References: <20250615-ptr-as-ptr-v12-0-f43b024581e8@gmail.com>
 <20250615-ptr-as-ptr-v12-1-f43b024581e8@gmail.com>
 <CANiq72mfjzXj0f4PKPKg7QgbOrhay4CF_+TBgScecKWO6acmyQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CANiq72mfjzXj0f4PKPKg7QgbOrhay4CF_+TBgScecKWO6acmyQ@mail.gmail.com>

On 18-06-25, 18:48, Miguel Ojeda wrote:
> On Sun, Jun 15, 2025 at 10:55 PM Tamir Duberstein <tamird@gmail.com> wrote:
> >
> > Apply these changes and enable the lint -- no functional change
> > intended.
> 
> We need one more for `opp` [1] -- Viresh: I can do it on apply, unless
> you disagree.

Please do. Thanks.

> diff --git a/rust/kernel/opp.rs b/rust/kernel/opp.rs
> index a566fc3e7dcb..bc82a85ca883 100644
> --- a/rust/kernel/opp.rs
> +++ b/rust/kernel/opp.rs
> @@ -92,7 +92,7 @@ fn to_c_str_array(names: &[CString]) ->
> Result<KVec<*const u8>> {
>      let mut list = KVec::with_capacity(names.len() + 1, GFP_KERNEL)?;
> 
>      for name in names.iter() {
> -        list.push(name.as_ptr() as _, GFP_KERNEL)?;
> +        list.push(name.as_ptr().cast(), GFP_KERNEL)?;
>      }
> 
>      list.push(ptr::null(), GFP_KERNEL)?;

For cpufreq/opp:

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh


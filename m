Return-Path: <devicetree+bounces-203674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71370B223AE
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 11:50:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 842B25007B6
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 09:50:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 835E72E9ED8;
	Tue, 12 Aug 2025 09:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Map2H7XL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13121F91D6
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 09:49:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754992201; cv=none; b=rrolbcUBTPFu6I6u0gWvQRFWgOsSwLxWy2l2Tb41F6wYJxjE8h0ZXbydnIgEzeUOuwfwmb5LNBgXRodZzL7yWQgx1ojYpnOyC/T6l4WbGHMBYTtHxCjyDWW5ugjuwxsmMVcyaaKPYVaOcFmRecjvCHjeY9S50E057DMm18sz8AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754992201; c=relaxed/simple;
	bh=0490oyMMcCSA6IAYKsOOlTvkHGvUwxMFO7SMFhwwTEc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dWg7MSgJ967swRuTWarFI/gcnb0zTxeUWVrRDbuWTYTMW606iR2oCB7i1Ndtd5fTIblUj/Rx0x2TgNymcBAKuKRvyL14xqNoCKUpN9ztjam34RlTCu47E0yoi8/aelmxKLaDLd8Go1LiI2BD4nHb5tRc5bt23wt4hAK9FmN0TGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Map2H7XL; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-31ec651c2a1so4286148a91.0
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 02:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754992199; x=1755596999; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rHx6Lde4qag7Ztq8SOjvT6+8sJ05xOxFR27nxsVwgtA=;
        b=Map2H7XLyX5tAhnuBljyVK5gOENCd/EFkAAjRUiix4f3fE2IA4HYRcT0FY7MjwuFsH
         MBcEoUDadpXMRudf01gQo1K9S677BwmIWc4jhirjNZFbjKnVhQVvrw+DL9Xgk9jUcHpY
         QH3BxUQsu37C3KVsf6d8SI6hysrrryrQ91Zcxudj2jtIF7CORWKR1aV1B/SARjwm76Ek
         c/mIOtKhQ/DnD0pMOw14GKRLNt/LHoz3mOvae+ZSl5HhPfMIPRx+6vs068NBvVcmAOX4
         mE8CdDYcSCpskV0pTYUVnwTsCM0qdG5FpGLRJSilNIh2JH+SmAnmRKI4QxirDWGOJ8hZ
         QbpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754992199; x=1755596999;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rHx6Lde4qag7Ztq8SOjvT6+8sJ05xOxFR27nxsVwgtA=;
        b=EGTnHm9UGEn5n2xlmHFGV2f7Gv8Pmjm2bauxyznrGO2N9nxtGY3ETUi58ReKgHEWJQ
         3J0Nd5rByq6K52Lglx8xgyAosLngJ3Dw1EsnSCExlrUWyoM/1iWbzOORqA7sIjauL2Hg
         3RCqc+vLwVnzNGpcSsm9VUBh8YgD4lqDN2a1sGZvnTQPDbGJF4vG2yda1zk6jsUv1GCT
         c3Ut5qHDkbL0z4YRT6voK/CBh2oVHXJmlII8gOq11NFpPSUDzBcGnbdd08Ycas8G58Sf
         210cMMjxaEQWHk7rC79VeeoMj2eWgTtE7lJqYRSjih6EAoAmAfujVzu4/k46EfD7d5sm
         iY6A==
X-Forwarded-Encrypted: i=1; AJvYcCVZ0ffSxZfcxRAk/PPudzRH+5GjunXA/rfq8KhyMIKdB44ht5T0/o9tI6Ir39JK6gq50cbV4My9cKp0@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2q0zw43903ksBU2/9DOJlDBmvKVKDDdjimrxXE0s8tsdAyKB6
	tG75X3ZId6lWj0VHSGFvdLnO7jh74uloHQypT0msMBpz8MMGqN6me/VE5LT4B+LYfXY=
X-Gm-Gg: ASbGncsKE5WXKt7vMA70PxhOuv58dBCeNWUfdfuzzu2+rEULrJMvm5BZloIY6TaQv4G
	lvNwVKVxI7BHhWrRSkfzhYzX2KYs6yF5+curWJcWpKr+uPzetHMerjPAX1QZixdMTdpLjnmtUNl
	8pzTy/jnVY4G44iHunLNrtkLgEjDnr1SA47QTIo2vlTLYIv0QQDTKxO+YSPgpkRJ/P6XU5wsiY1
	te3C83WK5GeEsidEGzyzsoxzmdhPw6i+E68zZkYNk9h09ivUdWXCuJ0yB87vz3wk/rqnp3vCcyW
	zw/7pvx5e+0PJL3IQ0BAGeks6XznXeND3fhiJWBl+zYWa44XMwZga/Bh7TSuwC+Z8Yk1nl9UgbM
	8oYzsjIB96Ao2YQXqzGCUfxzu
X-Google-Smtp-Source: AGHT+IFaE9wVmVALZ0AY3vMXxmm7SesZjwR/ULKy6XjkkdnNRyUoc7TfxGfX3avMzoLT05C0xMUULg==
X-Received: by 2002:a17:90b:55cd:b0:312:1c83:58e7 with SMTP id 98e67ed59e1d1-321b3e81bb1mr7812400a91.1.1754992199185;
        Tue, 12 Aug 2025 02:49:59 -0700 (PDT)
Received: from localhost ([122.172.87.165])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b422b7d86f7sm24860991a12.24.2025.08.12.02.49.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 02:49:58 -0700 (PDT)
Date: Tue, 12 Aug 2025 15:19:55 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	Eugenio =?utf-8?B?UMOpcmV6?= <eperezma@redhat.com>,
	Jason Wang <jasowang@redhat.com>,
	"Michael S. Tsirkin" <mst@redhat.com>,
	Saravana Kannan <saravanak@google.com>,
	Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
	Arnd Bergmann <arnd@kernel.org>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Alex =?utf-8?Q?Benn=C3=A9e?= <alex.bennee@linaro.org>,
	Bill Mills <bill.mills@linaro.org>, devicetree@vger.kernel.org,
	virtualization@lists.linux.dev, Sudeep Holla <sudeep.holla@arm.com>,
	Bertrand Marquis <bertrand.marquis@arm.com>,
	"Edgar E . Iglesias" <edgar.iglesias@amd.com>,
	Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [RFC PATCH 0/6] virtio: Add support for Virtio message transport
Message-ID: <20250812094955.fdyil4cbxr3bx4bo@vireshk-i7>
References: <cover.1753865268.git.viresh.kumar@linaro.org>
 <CAL_JsqJn2XtvWaDBSqYPUe2ZVxE7t4EbAt8OPncbQaKjh1jY5w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_JsqJn2XtvWaDBSqYPUe2ZVxE7t4EbAt8OPncbQaKjh1jY5w@mail.gmail.com>

Hi Rob,

On 30-07-25, 08:39, Rob Herring wrote:
> On Wed, Jul 30, 2025 at 4:29 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> > ### Memory Mapping and Reserved Memory Usage
> >
> > The first two patches enhance the reserved-memory subsystem to support attaching
> > struct device`s that do not originate from DT nodes — essential for virtual or
> > dynamically discovered devices like the FF-A or loopback buses.
> 
> We support creating devices from reserved-memory nodes.

I didn't know about this.

> Just add a
> compatible which you should do anyways because node names are not
> supposed to be that specific or an ABI.

Yeah, I already knew that the node-names thing isn't going to fly as
you and Krzysztof rightly pointed out. I just wanted inputs from you
guys and so did that as a first implementation to get the discussion
started.

I tried something like this now:

      reserved-memory {
        #address-cells = <2>;
        #size-cells   = <2>;
        ranges;

        rmem@100000000 {
          compatible = "restricted-dma-pool", "virtio-msg,loopback";
          reg = <0x00000001 0x00000000  0x0 0x00400000>; /* 4 MiB */
        };
      };

and this works fine. I am adding two compatibles for virtio-msg:
"virtio-msg,loopback" and "virtio-msg,ffa". Yes I will properly
document them in the next version.

With this, we don't need the 2nd patch anymore:
  of: reserved-memory: Add of_reserved_mem_lookup_by_name

but still need the 1st one:
  of: reserved-memory: Add reserved_mem_device_init()

Thanks.

-- 
viresh


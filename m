Return-Path: <devicetree+bounces-5222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB487B5A47
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 20:39:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id F3AF128249F
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:39:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C563C1EA94;
	Mon,  2 Oct 2023 18:39:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F98E1D54F
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 18:39:15 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BBEBAD
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 11:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696271952;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=WYt6bra2fRdXu2dkXwuYoSR3Jxl4VEKHXbPW5NpZljc=;
	b=JzHq0TtQkTWjAKIsDt6j/JaZYaWn2Y/JfF/IsJXcfnnDdTYBvMY5AzK/1G8jSmheIy4Krk
	OfL8fn9H7M+zXyvd9oo/Fw9wpIJ3mOHiUMA2KL4wG4089ubDwSFofd7u7q4DislNiVK3lx
	oELOYpGkkJdCPhtPgH+fwvMGOQs4AOc=
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com
 [209.85.128.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-658-aMZDji-cOmuRKiKeMAiNrw-1; Mon, 02 Oct 2023 14:39:11 -0400
X-MC-Unique: aMZDji-cOmuRKiKeMAiNrw-1
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-59f616f4660so1376857b3.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 11:39:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696271951; x=1696876751;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WYt6bra2fRdXu2dkXwuYoSR3Jxl4VEKHXbPW5NpZljc=;
        b=qdehkKf3kBO1F6EqIR3JmIJ1p1lxykY8U582wbHDv+WcUFD18y+7WwiglupEGUZXAZ
         9Tw0gZCdx6aV/d1sLoyiOY6kopFUvHZvAF/VzGAn09rNeCGDINpM5g8cukSaI0c32Y9b
         +ebX0uucPNbRO/BxVknHl2JWHIPBXmORA3wxmL11yWMxfGfy2nErDmb0mKGKy7Nk4e0l
         FmhauUHJFRUvNVccH8I4XJ77ah/OwOETNyViUM5+HkshVQnt5mSKOCZO5HVVTbS32iUa
         hD2PHrh5WwVM7/g33aa/ki/qsnCbxoAeV5q5ksRspmEGl1Fd1CKIHcwr4lhJGZilcnsW
         ipig==
X-Gm-Message-State: AOJu0Yy1FaSq2Vh/d1g59JVaotviKfS+zjpy/a/m1p4yabNh29DmpaS6
	p3jZuc3eWvslr+HUlgwe+rfekEL5A1fbFu4plQiokI1G0Hymk7SxqUUzUrlp1CJJEbjSMNRHIr3
	uvQS2lUjWFtE10xaPpDT01g==
X-Received: by 2002:a25:8603:0:b0:d32:f2e7:7786 with SMTP id y3-20020a258603000000b00d32f2e77786mr10996416ybk.56.1696271951092;
        Mon, 02 Oct 2023 11:39:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFOWEC4ny8KWu3fUPvQKn4wRh0cjkvr8hu/5wFhvnGe0yZ1IUYjTdLH/xTEiyfLSuO18WFTAQ==
X-Received: by 2002:a25:8603:0:b0:d32:f2e7:7786 with SMTP id y3-20020a258603000000b00d32f2e77786mr10996398ybk.56.1696271950763;
        Mon, 02 Oct 2023 11:39:10 -0700 (PDT)
Received: from brian-x1 (c-73-214-169-22.hsd1.pa.comcast.net. [73.214.169.22])
        by smtp.gmail.com with ESMTPSA id n5-20020a5b0485000000b00d911680fd10sm236158ybp.50.2023.10.02.11.39.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 11:39:10 -0700 (PDT)
Date: Mon, 2 Oct 2023 14:39:08 -0400
From: Brian Masney <bmasney@redhat.com>
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: sudeep.holla@arm.com, cristian.marussi@arm.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	andersson@kernel.org, konrad.dybcio@linaro.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v4 4/4] firmware: arm_scmi: Add qcom hvc/shmem transport
 support
Message-ID: <ZRsOTH//BZ74mU6P@brian-x1>
References: <20230718160833.36397-1-quic_nkela@quicinc.com>
 <20230911194359.27547-1-quic_nkela@quicinc.com>
 <20230911194359.27547-5-quic_nkela@quicinc.com>
 <ZRsNHnuUdGl+vuqz@brian-x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZRsNHnuUdGl+vuqz@brian-x1>
User-Agent: Mutt/2.2.9 (2022-11-12)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Oct 02, 2023 at 02:34:06PM -0400, Brian Masney wrote:
> On Mon, Sep 11, 2023 at 12:43:59PM -0700, Nikunj Kela wrote:
> > +		func_id = readl((void __iomem *)(scmi_info->shmem) + size - 16);
> > +#ifdef CONFIG_ARM64
> > +		cap_id = readq((void __iomem *)(scmi_info->shmem) + size - 8);
> > +#else
> > +		/* capability-id is 32 bit wide on 32bit machines */
> > +		cap_id = readl((void __iomem *)(scmi_info->shmem) + size - 8);
> > +#endif
> 
> The 32 bit case is defined as a u64 in two places above.

Also should the 32 bit case be 'size - 4' instead of 'size - 8'? Sorry
I just noticed that as soon as I pressed send.

Brian



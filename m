Return-Path: <devicetree+bounces-6612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CAB7BC02F
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 22:18:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 640381C20A48
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 20:18:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 272AD43AB8;
	Fri,  6 Oct 2023 20:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="gzrrM85Z"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A9843A81
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 20:18:20 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E809AC6
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 13:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696623479;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=cauyGxPXg9Dqki16H5wczwQOTEld3BMCtuai5OgK+Nw=;
	b=gzrrM85Z6RGjfbt8QlTd5FnF8p1KQDUSduZ6y8KluYvJs9GYxaA6kq9Ph8npE2LmOAaZnq
	g/Mn7sTSgtFGcdHXTNLfWmj1FmD9OD4tFE+Q8J7FEACjaav7ddnjTE30zLvxra1n3Ra0HO
	W2UezdT0qWfM0VDWvWiNceNO54N6+sk=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-688-KbA1VPbyPHGBNr3GTkMmKA-1; Fri, 06 Oct 2023 16:17:36 -0400
X-MC-Unique: KbA1VPbyPHGBNr3GTkMmKA-1
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-774105e8c7fso258908885a.0
        for <devicetree@vger.kernel.org>; Fri, 06 Oct 2023 13:17:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696623456; x=1697228256;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cauyGxPXg9Dqki16H5wczwQOTEld3BMCtuai5OgK+Nw=;
        b=gLwUaQWZ5iYy4vyfJ9xFhy1CM+3tmk4CDUrRDury0gW6pIG4Oh27iOfJP/4bMkXcgF
         dEI8pu197eFpSMaYtfD3EYfzvnjnVbrVJnu/8BNHXrIdcUKXYJgg051qDoqaXOUzd7lz
         NoZJGpqkovS8jT08+6roHBLrk0FKAVDQw0lgNTUrj8x+HBqIkJxToM1YQP+WckwL99tn
         9S+Ys1r3CWq2IXoX/3sUDCSuONMrZZyWZriGS6JTIXBwcAv8r8KTQGmQ5U6flkiHiHRv
         /1uuqdg4wZJSJm6KxZoO1qlzVD5qGl8OrOrdNC1enptnyKnR1m2WdkrtXOzdpeCcVK0V
         MplA==
X-Gm-Message-State: AOJu0Yy3hsHntq4LXrcpzaNpdrWBDIXeBqSvZRNFm/oU4Knel67PAU/I
	1XOKQmD7DoTh4b154GTLVdJzlqtXliB8o166eml1ZHueStME8MLHod0+lu99alWE5H8yf64F3lZ
	cgE88GwLRp6VmZX0mxd1eng==
X-Received: by 2002:a05:620a:4489:b0:76f:20df:f038 with SMTP id x9-20020a05620a448900b0076f20dff038mr11224072qkp.12.1696623455772;
        Fri, 06 Oct 2023 13:17:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHzdJwo4Lu0XqeCt5pKxLkTdXoxw67dKVHpvuq2Ezi/7kUtOb2wNQ5MEHDrEkr1H47Bbgm2Nw==
X-Received: by 2002:a05:620a:4489:b0:76f:20df:f038 with SMTP id x9-20020a05620a448900b0076f20dff038mr11224050qkp.12.1696623455499;
        Fri, 06 Oct 2023 13:17:35 -0700 (PDT)
Received: from brian-x1 (c-73-214-169-22.hsd1.pa.comcast.net. [73.214.169.22])
        by smtp.gmail.com with ESMTPSA id ow10-20020a05620a820a00b0076f35d17d06sm1554711qkn.69.2023.10.06.13.17.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 13:17:34 -0700 (PDT)
Date: Fri, 6 Oct 2023 16:17:32 -0400
From: Brian Masney <bmasney@redhat.com>
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: sudeep.holla@arm.com, cristian.marussi@arm.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	andersson@kernel.org, konrad.dybcio@linaro.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v5 2/2] firmware: arm_scmi: Add qcom smc/hvc transport
 support
Message-ID: <ZSBrXOsYayiA97oi@brian-x1>
References: <20230718160833.36397-1-quic_nkela@quicinc.com>
 <20231006164206.40710-1-quic_nkela@quicinc.com>
 <20231006164206.40710-3-quic_nkela@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006164206.40710-3-quic_nkela@quicinc.com>
User-Agent: Mutt/2.2.9 (2022-11-12)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Oct 06, 2023 at 09:42:06AM -0700, Nikunj Kela wrote:
> This change adds the support for SCMI message exchange on Qualcomm
> virtual platforms.
> 
> The hypervisor associates an object-id also known as capability-id
> with each smc/hvc doorbell object. The capability-id is used to
> identify the doorbell from the VM's capability namespace, similar
> to a file-descriptor.
> 
> The hypervisor, in addition to the function-id, expects the capability-id
> to be passed in x1 register when SMC/HVC call is invoked.
> 
> The capability-id is allocated by the hypervisor on bootup and is stored in
> the shmem region by the firmware before starting Linux.
> 
> Signed-off-by: Nikunj Kela <quic_nkela@quicinc.com>

Reviewed-by: Brian Masney <bmasney@redhat.com>



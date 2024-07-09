Return-Path: <devicetree+bounces-84335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB0792BD32
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 16:41:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CBCED28A89F
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 14:41:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 448E919CCFE;
	Tue,  9 Jul 2024 14:41:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="bIM2e2h9"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83BF18A933
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 14:41:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720536063; cv=none; b=kqsoduJED+k2biOm8lcYkQTOHC/i45sn1SesvfzSl04v1fR7e0fa7HisyGkP6GwN9jll8Fk3cOh0nvRIZ0A1k6x24HhECUi/Y1wWCt3Qvf5LWEr7MpjLKLE0pJF8TXLIHiyrNXnJ5mk4g8yJPI4+NZW2B6KpWo76UDRa7K+EvWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720536063; c=relaxed/simple;
	bh=Jgewn17s9Ey6YUyp0qStVti3zXHXm8kcXfPAYUyBLhQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GprtVTnCr+lyarr5XVg0AJum9CVk3arr027hPcCOmK5gO0+CKUJDHZ3zFoZgLFSKXkx8XTWLHqGpYF0Nz7NJvp0EgGuejZRCtw9F00BO9EtHJySpOKMVBhgC86L7MnLCPXIdKO/t7+rYJBNOJg96gnotIvfK7UvI+3TlJ+8A6C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=bIM2e2h9; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1720536060;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=9dNUMlILD/JowgtlDpz/3Xfo0pUbwll0dZL3HCPAgDc=;
	b=bIM2e2h9Pjg7mRDcdEvJM93WhUHb9cu8xDb19p2FZxe7oGA06lyx1BhFGmjswtuapdl8fa
	cSQV+/VxGCF3UGiw0/nzJPNwzX8HeWaN8o3cTEAeuO6Pe3gz/MVsr4A0JlnoYV+xuVQsU8
	WGl79J6AsY3Yvd962u+mjVd5mY66vVQ=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-329-0PXYVb2rP8SoRoIvwsqFIQ-1; Tue, 09 Jul 2024 10:40:58 -0400
X-MC-Unique: 0PXYVb2rP8SoRoIvwsqFIQ-1
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-79f1bf8ad5eso122323385a.3
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 07:40:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720536058; x=1721140858;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9dNUMlILD/JowgtlDpz/3Xfo0pUbwll0dZL3HCPAgDc=;
        b=gnlmjlG4yD4EKV1N4lBvPEGWRR8GtlS5MPBq5l4oXxh4/6iyysNJW4J/U+/WZnF/Ox
         20egfza2LpPOzqqcOOrZjoS70zJNFzZv6DFDwUilaeKz3IrH5Zrx46W3XTq6RBBDSleS
         hTB/JEglKCN2tL6JXJREHbS13AFOaQ2nO49J8YBiG45Qd7Z7rwrZLSQKlDitUTzrGGm8
         Hr95nYmkm8fwBTDzZX3ghJ76iEkZs7iylk/3Fd8U2pWAZswoxN9yfFUpZUdwYvNPHGoh
         xhTROGF49BCBpXCYPC+uJn3t1RIR+165U+VPLrATu3TdgsCO2w1pzCwFnOhu3d5/PbQf
         u1rQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbVzMtha2zrf//dag/XALM2bNSlvcHo2qffSwIspAQjcuqi1JqX3BspOcvefXGTLjCHKcilt2ufK2+l9pFPyvEZeBST9Ia37LTAQ==
X-Gm-Message-State: AOJu0YzpZfIY5JHfrHKZpfKyHKiaCLhin/oncA6ckAxh84XAeM5CbI3a
	dOf69/2M6+x41jLWXM6rLBj5msD32kKj/JKQn0q9Rh9RUw1HS4opO1w0PpQkrdcdXoGdGvCnkd1
	J4g3GpvVZ2YW924tCp04CR7Y4mPAxv3CW1HMBJFJj5KlPmCTAOxA+LgXUq8g=
X-Received: by 2002:a05:620a:1926:b0:79f:68a:4d10 with SMTP id af79cd13be357-79f19a64fafmr349734485a.25.1720536058283;
        Tue, 09 Jul 2024 07:40:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFnyT5xuAnGF3d6+RqcZrSyPI6vPv662QIU9QcvPWdPyiZO1DjY4R2T/cM0JO2WXzwX3CsQiA==
X-Received: by 2002:a05:620a:1926:b0:79f:68a:4d10 with SMTP id af79cd13be357-79f19a64fafmr349730385a.25.1720536057997;
        Tue, 09 Jul 2024 07:40:57 -0700 (PDT)
Received: from x1gen2nano ([2600:1700:1ff0:d0e0::40])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-79f18ff834csm102827385a.5.2024.07.09.07.40.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 07:40:57 -0700 (PDT)
Date: Tue, 9 Jul 2024 09:40:55 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bhupesh Sharma <bhupesh.sharma@linaro.org>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jose Abreu <joabreu@synopsys.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, kernel@quicinc.com, netdev@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/2] net: stmmac: dwmac-qcom-ethqos: add support for
 emac4 on qcs9100 platforms
Message-ID: <g7htltug74hz2iyosyn3rbo6wk3zu54ojooshjfkblcivvihv2@vj5vm2nbcw7x>
References: <20240709-add_qcs9100_ethqos_compatible-v2-0-ba22d1a970ff@quicinc.com>
 <20240709-add_qcs9100_ethqos_compatible-v2-2-ba22d1a970ff@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240709-add_qcs9100_ethqos_compatible-v2-2-ba22d1a970ff@quicinc.com>

These patches are for netdev, so you need to follow the netdev
rules, i.e. the subject should be have [PATCH net-next] in it, etc as
documented over here:

    https://docs.kernel.org/process/maintainer-netdev.html#tl-dr

On Tue, Jul 09, 2024 at 10:13:18PM GMT, Tengfei Fan wrote:
> QCS9100 uses EMAC version 4, add the relevant defines, rename the
> has_emac3 switch to has_emac_ge_3 (has emac greater-or-equal than 3)
> and add the new compatible.

This blurb isn't capturing what's done in this change, please make it
reflect the patch.

Thanks,
Andrew



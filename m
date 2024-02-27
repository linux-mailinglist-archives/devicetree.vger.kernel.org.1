Return-Path: <devicetree+bounces-46540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9B586A036
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 20:30:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 46B96B32918
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 19:24:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87221524CF;
	Tue, 27 Feb 2024 19:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="cyAAu5FG"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AED112D60B
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 19:22:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709061771; cv=none; b=khFQVyajFxkRTbUUO4eS/mEddGiiBLGZ+7jykXfzZd5YHv8JIMuIakCuleDHyWhkjUCinNpAc8RoKALqE2VWSMNH4c+3iebGcdvQM7KParuQUFZl8abOsgkbsuM75aOi9tCInnAwD40jgXcqTPftJFKgMsz7GVkC37p24678F6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709061771; c=relaxed/simple;
	bh=6CQ5gmdtyYpJOht39IMv2Luza/449m9TszX8sO5JgoE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qlw8EgNLM21A8JG1/xvrjqEu/o6FM9WbO8ogoTUHZPstbXlXjAYUEsfyLEqLYjMNwjmnuoOdiSsiYa3U+wwUqIwbZ8LHzgas/wqciDxlFxSGZUmx8Zy4t5fK16Gkmg7I7BO9K+Bw9EU9RTg2tGjoH0GiBHoO4wpk9MX2qR3LkKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=cyAAu5FG; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1709061768;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mhq+ZYoih/qrTYF14e3+nwNYDVyTycUAByxpGo4QvPY=;
	b=cyAAu5FGbpfTG3i9kn8VrBrrBRpYbjctDQSY5pQurYoZAmxdUWo1GAI81V0tB4+9spzMAU
	wPs5tdgRktwWVC5xwv6ERgumP2MSGMoVQgZW4S8VolpsA393YI/cmPJPMNM8wYgC4WtcrU
	b5FbjSwU2TTGU5KBKtPe+Uqafq/y6AI=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-563-InTB5C2qMfeZpV1pnSkNxQ-1; Tue, 27 Feb 2024 14:22:47 -0500
X-MC-Unique: InTB5C2qMfeZpV1pnSkNxQ-1
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-787b8dd3330so15271185a.1
        for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 11:22:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709061767; x=1709666567;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mhq+ZYoih/qrTYF14e3+nwNYDVyTycUAByxpGo4QvPY=;
        b=p4wtzF2iOp5nCddCypTsu19g7TZ9VPirlUFTng70ghq6mDrZvtWXqgiQFhLvddSxX/
         jCPTh7jcCGcVklfprNtD32q0Ff/mYpe66bDeCerrZ5rlm4/kt6Cq6OwNOEihd+57wc5/
         wrPRNw0KtFfUOhb9FfSJC/lFKFPmOp2qBl2rUI1kj3NCtdkK8YUCuuVoDN9LneWYXtoi
         soltWAP8aa+EsXNhQQdnXt3eXvBJS9di+odOTi+cuy9gkXukdRFy6OhZ8GCZFnpD+G9g
         XGL7dZ9je5h1Hm3LlzfdKuFImaggUOjoYpZco3xiVxOZzO8tyKKyLX2MBYJDCkeWUVyQ
         PxKg==
X-Forwarded-Encrypted: i=1; AJvYcCW4BrxeX/42URjYTiRnpGV86w9HqCb8gBrUWTpcOqmso0Z8OrzSnOnYlulQqZITUQNCFhJY0ZM1G3C+5Mj8RhrA99sS3IcjFN73/A==
X-Gm-Message-State: AOJu0Ywzz29ZrfkHJFaSkJkJ5QxY194m0sgD9XsGkJE4J6REl2CNCdeg
	WolpVUtcDmiJ0F0h2YyBFVZ/W+mxHP/OwGOxbolq8dE2WB69CGgIA3rp73yrjNmUmJF4g5xW6k0
	LXSfhFsnZW5Fpk9jNe1FO99OfQoYelR44QCeAxHf7az4WsKvVpZYNBT6/Tj8=
X-Received: by 2002:a0c:a701:0:b0:68f:b941:3463 with SMTP id u1-20020a0ca701000000b0068fb9413463mr389404qva.3.1709061766850;
        Tue, 27 Feb 2024 11:22:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEAw3whhp33K3ejS51UcfWRh1RcSEZcDXSSQzXWA6/oS1qCwFTMJD+0WG25R51Ed1Z43180zA==
X-Received: by 2002:a0c:a701:0:b0:68f:b941:3463 with SMTP id u1-20020a0ca701000000b0068fb9413463mr389376qva.3.1709061766538;
        Tue, 27 Feb 2024 11:22:46 -0800 (PST)
Received: from fedora ([142.189.203.219])
        by smtp.gmail.com with ESMTPSA id op10-20020a056214458a00b0068ff8d75a90sm3695560qvb.19.2024.02.27.11.22.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Feb 2024 11:22:46 -0800 (PST)
Date: Tue, 27 Feb 2024 14:22:44 -0500
From: Lucas Karpinski <lkarpins@redhat.com>
To: Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@somainline.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, Alex Elder <elder@ieee.org>, 
	Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, Sibi Sankar <quic_sibis@quicinc.com>, 
	Rajendra Nayak <quic_rjendra@quicinc.com>
Subject: Re: [PATCH V26 2/3] misc: dcc: Add driver support for Data Capture
 and Compare unit(DCC)
Message-ID: <cnbntxeussvhvkgwqm7c6jtpondmrlrnsyskhxhqp2463r7lfw@3umkzfwoa5le>
References: <cover.1691496290.git.quic_schowdhu@quicinc.com>
 <2624304811c253e1a28350668fb69cf463ac47f9.1691496290.git.quic_schowdhu@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2624304811c253e1a28350668fb69cf463ac47f9.1691496290.git.quic_schowdhu@quicinc.com>
User-Agent: NeoMutt/20231221

On Tue, Aug 08, 2023 at 05:58:26PM +0530, Souradeep Chowdhury wrote:
> diff --git a/Documentation/ABI/testing/debugfs-driver-dcc b/Documentation/ABI/testing/debugfs-driver-dcc
> index 27ed5919d21b..7f588580a906 100644
> --- a/Documentation/ABI/testing/debugfs-driver-dcc
> +++ b/Documentation/ABI/testing/debugfs-driver-dcc
> @@ -1,4 +1,4 @@
> -What:           /sys/kernel/debug/dcc/.../ready
> +What:           /sys/kernel/debug/qcom-dcc/.../ready
>  Date:           December 2022
Looks like this patch set is getting closer to being accepted, please 
keep the date updated accordingly.

> +#define DCC_LL_NUM_INFO			0x10
> +#define DCC_LL_LOCK			0x00
> +#define DCC_LL_CFG			0x04
> +#define DCC_LL_BASE			0x08
> +#define DCC_FD_BASE			0x0c
> +#define DCC_LL_OFFSET                   0x80
> +#define DCC_LL_TIMEOUT			0x10
> +#define DCC_LL_INT_ENABLE		0x18
> +#define DCC_LL_INT_STATUS		0x1c
> +#define DCC_LL_SW_TRIGGER		0x2c
> +#define DCC_LL_BUS_ACCESS_STATUS	0x30
> +
> +/* Default value used if a bit 6 in the HW_INFO register is set. */
> +#define DCC_FIX_LOOP_OFFSET		16
> +
> +/* Mask to find version info from HW_Info register */
> +#define DCC_VER_INFO_MASK		BIT(9)
> +
> +#define MAX_DCC_OFFSET			GENMASK(9, 2)
> +#define MAX_DCC_LEN			GENMASK(6, 0)
> +#define MAX_LOOP_CNT			GENMASK(7, 0)
> +#define MAX_LOOP_ADDR			10
> +
> +#define DCC_ADDR_DESCRIPTOR		0x00
> +#define DCC_ADDR_LIMIT			27
> +#define DCC_WORD_SIZE			sizeof(u32)
> +#define DCC_ADDR_RANGE_MASK		GENMASK(31, 4)
> +#define DCC_LOOP_DESCRIPTOR		BIT(30)
> +#define DCC_RD_MOD_WR_DESCRIPTOR	BIT(31)
> +#define DCC_LINK_DESCRIPTOR		GENMASK(31, 30)
> +#define DCC_STATUS_MASK			GENMASK(1, 0)
> +#define DCC_LOCK_MASK			BIT(0)
> +#define DCC_LOOP_OFFSET_MASK		BIT(6)
> +#define DCC_TRIGGER_MASK		BIT(9)
> +
> +#define DCC_WRITE_MASK			BIT(15)
> +#define DCC_WRITE_OFF_MASK		GENMASK(7, 0)
> +#define DCC_WRITE_LEN_MASK		GENMASK(14, 8)
> +
> +#define DCC_READ_IND			0x00
> +#define DCC_WRITE_IND			(BIT(28))
> +
> +#define DCC_AHB_IND			0x00
> +#define DCC_APB_IND			BIT(29)
> +
> +#define DCC_MAX_LINK_LIST		8
> +
> +#define DCC_VER_MASK2			GENMASK(5, 0)
> +
> +#define DCC_SRAM_WORD_LENGTH		4
> +
> +#define DCC_RD_MOD_WR_ADDR              0xC105E
> +
> +enum dcc_descriptor_type {
> +	DCC_READ_TYPE,
> +	DCC_LOOP_TYPE,
> +	DCC_READ_WRITE_TYPE,
> +	DCC_WRITE_TYPE
> +};
Can you fix the spacing in the macros?

> +static int dcc_add_loop(struct dcc_drvdata *drvdata, unsigned long loop_cnt, int curr_list)
u32 loop_cnt

Lucas



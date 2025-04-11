Return-Path: <devicetree+bounces-165944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 26852A85EAF
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 15:22:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 26CD917D1BB
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 13:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB92B14375C;
	Fri, 11 Apr 2025 13:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="YJo9Ya7o"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F902367C7
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 13:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744377458; cv=none; b=Vzlp9DLXc1ASwTC2DtlDqJFeg/gw5lXLR7Ra3qTFXtT/mHaRNbMHByMdiIAuD8D56W3XoguvhkDfJT5Cba4m/kDXsL0sT9nrwivCAOJnLvf5KMFUx1Efyuuw/IF2AZXE7fRDt9vLCC5FmSwBj17KGKJoX32pbQeQj/RZJQXHYEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744377458; c=relaxed/simple;
	bh=0vAlQXUS7Qy2jeHeUT8fAxf4F02U5tCBQQ3d2Vwre84=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=hw3fpxgME+Y/ah4+mFDEgXAlTR+mGwTzxWGvmDkKLIA4q/4AXt+gYchrYOV7tCcl6h2FImTZc9LiJzCOqI4DqUIFH2IjHZtjs8KR0kVDQdMwQyCWJ/DikFaD8cYXDfLGrMk54N1pkFQXp3wFQN3OITDUd8NQCwHn0P/lJOA86gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=YJo9Ya7o; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744377455;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aAPMnr15UUC2IJaasw8kvWmrIDi+EshqBG8kRRliicc=;
	b=YJo9Ya7o4iGMnbJS/u4QF2xMEiCA3szkh3fhJHwqFIShXwbO7fjCmma4x7zGCyfGeweNWS
	oBOLT9lrr8g5LAMsF/neNkvBmHFaNtfzQdS30Q+yxAyiYRL/IorWubqquqEJAOQCRuqTs8
	DkBipmx0mVL5CPY1dGAzQE2kLWiNl94=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-104-xSJHeetwPd2MxncaHr6QqA-1; Fri,
 11 Apr 2025 09:17:32 -0400
X-MC-Unique: xSJHeetwPd2MxncaHr6QqA-1
X-Mimecast-MFC-AGG-ID: xSJHeetwPd2MxncaHr6QqA_1744377442
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 863C81800EC5;
	Fri, 11 Apr 2025 13:17:21 +0000 (UTC)
Received: from [10.45.225.124] (unknown [10.45.225.124])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 55E621828ABC;
	Fri, 11 Apr 2025 13:17:16 +0000 (UTC)
Message-ID: <46ff3480-caca-4e2c-9382-2897c611758a@redhat.com>
Date: Fri, 11 Apr 2025 15:17:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/14] mfd: zl3073x: Add components versions register
 defs
From: Ivan Vecera <ivecera@redhat.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: netdev@vger.kernel.org, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Prathosh Satish <Prathosh.Satish@microchip.com>,
 Lee Jones <lee@kernel.org>, Kees Cook <kees@kernel.org>,
 Andy Shevchenko <andy@kernel.org>, Andrew Morton
 <akpm@linux-foundation.org>, Michal Schmidt <mschmidt@redhat.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>
References: <20250409144250.206590-1-ivecera@redhat.com>
 <20250409144250.206590-8-ivecera@redhat.com>
 <CAHp75Ve4LO5rB3HLDV5XXMd4SihOQbPZBEZC8i1VY_Nz0E9tig@mail.gmail.com>
 <b7e223bd-d43b-4cdd-9d48-4a1f80a482e8@redhat.com>
Content-Language: en-US
In-Reply-To: <b7e223bd-d43b-4cdd-9d48-4a1f80a482e8@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93

On 11. 04. 25 1:19 odp., Ivan Vecera wrote:
> The range for regmap 1: (registers 0x000-0x4FF)
> regmap_range_cfg {
>      .range_min = 0,
>      .range_max = 10 * 128 - 1, /* 10 pages, 128 registers each */
>      .selector_reg = 0x7f,      /* page selector at each page */
>      .selector_shift = 0,       /* no shift in page selector */
>      .selector_mask = GENMASK(3, 0),    /* 4 bits for page sel */
>      .window_start = 0,         /* 128 regs from 0x00-0x7f */
>      .window_len = 128,
> };
> 
> The range for regmap 2: (registers 0x500-0x77F)
> regmap_range_cfg {
>      .range_min = 10 * 128,
>      .range_max = 15 * 128 - 1, /* 5 pages, 128 registers each */
>      .selector_reg = 0x7f,      /* page selector at each page */
>      .selector_shift = 0,       /* no shift in page selector */
>      .selector_mask = GENMASK(3, 0),    /* 4 bits for page sel */
>      .window_start = 0,         /* 128 regs from 0x00-0x7f */
>      .window_len = 128,
> };
> 
> Is it now OK?

No this is not good... I cannot use 2 ranges.

This is not safe... if the caller use regmap 2 to read/write something 
below 0x500 (by mistake), no mapping is applied and value is directly 
used as register number that's wrong :-(.

Should I use rather single mapping range to cover all pages and ensure 
at driver level that regmap 2 is not used for regs < 0x500?
-or-
what would be the best approach?

I.



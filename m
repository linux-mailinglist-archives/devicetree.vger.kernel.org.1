Return-Path: <devicetree+bounces-324455-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rH6+AcLqUGql8QIAu9opvQ
	(envelope-from <devicetree+bounces-324455-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 14:51:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB9C73AED4
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 14:51:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=riscstar-com.20251104.gappssmtp.com header.s=20251104 header.b=RHGwl9Px;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=riscstar.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324455-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-324455-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 046C1300E28B
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 12:51:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE541426D3F;
	Fri, 10 Jul 2026 12:51:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F1B42A786
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 12:51:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783687871; cv=none; b=ilzrcBBBATUtx9y+cfkHLbRs48OLeAu6nbwV2wASvfffuNG+ZSCtSi4Gys3wqVk0FJRL47UJI71ph/om8/z6VPCSqGyuCCzTxD6a+dZ4slnp1IKqYe6AuSCAYW752U862SxSRIdqNccpVg5iWrxdWexR39x2G5ruzYYB/eC+jMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783687871; c=relaxed/simple;
	bh=6ikcLdHgMP7Ta1QNKMU8D2+OrlHjityLyO+ugcqC5/s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=htr79bf7OcxznO3snlIEcJulV6N3hdJ9j6Z8ZBk7ESt2DBo0WKNOD8F62MsYg89aNZbo+jzNvC5NPit1x7cD2UYITzP5kyVqc/f5oqnwvicgkvNcvcCeyzBoGHRfg5MmF5c8Y/AFXWwTElIirRD4jWE4htMnAHDrlTsWU0jm0j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20251104.gappssmtp.com header.i=@riscstar-com.20251104.gappssmtp.com header.b=RHGwl9Px; arc=none smtp.client-ip=209.85.219.48
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-8ee88fce476so9547006d6.0
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 05:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20251104.gappssmtp.com; s=20251104; t=1783687868; x=1784292668; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RI31gw/Ag7VVxVHoPD2L4lb5ga+FSsjQx8Z6xYz3UlU=;
        b=RHGwl9PxJfLoEKUCb1jF8TRRS0WemZQYky3/4iykJu5954iY/INB4n+vvW/Tkjw8tJ
         weMJ9MSjZEjdN1OGrQpmMJFaZ9f3qSKMZPLiTRkkvXb7habCG4ro06hRGfu5CeaRwIqA
         FdmEsy/EGmuCjkAS8gBYXbEUqiUOlfyEuHCUVpKBe2lh0+39HDv40+cNd4KPzxFA+UXe
         TtDeoTp5t1XBOf1uvafmTKzE1emDz6YujPGdqHsBQTmYCF8jvPBjl/DzZMBeUnwH42sT
         Y44wJOerLw6m4Bq8oNa+N5NcWadfIL42T7LVhNsdycnC9iw+/aXnvz3MHKZUbMxjSfEZ
         xUWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783687868; x=1784292668;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RI31gw/Ag7VVxVHoPD2L4lb5ga+FSsjQx8Z6xYz3UlU=;
        b=B67ImIId+V+L0+ZkE55yqjS7XsubMrfvP7SRoLxaStHl5i22tIle7DG4p0hx9A2gQ9
         C4z7e/gZaSagEpRKLmmkUqBhANEss0vBDWu03DaiQw6zFnmHYw8m4voRPHDnIV/sPdWv
         7Vwq/jPk5h80efYxOSruknPr5nJ17Rqyr0LjHbMJR1Bkhw1bRkdtzMr+RN721pWMApJT
         vJp68sdpQVsnk3foeBl3kLNmIacG3QCBSrQVt9bM6osh24EhJKWzUYBhT/YLVbQjQFUE
         9+OXYve5chj0EPFs+CyH7slfL8mu5oGrzOOeG8xcKcK4L5APg7r33w8RJW3OPc25KOEn
         fwkA==
X-Forwarded-Encrypted: i=1; AHgh+RqWrQv+Xe5AUt1LuPs5kledbF/U2nAIxepQrkCRbSnjxohve8d0aVl/f/7wo0gmGNZzcrz6d/k8hxwj@vger.kernel.org
X-Gm-Message-State: AOJu0YysUt9RB7BeO13mqFsxAeCHIhp+mobCIZn2ihfGOvdWeKKTzq+w
	RWr9np0RE4wT3l5+q++BqYUziyif87DxDv6Q6cPe8smZbzsL7YB5UZJ83FZB8w7k3gQ=
X-Gm-Gg: AfdE7ckiIBRzKfnYTZNRF7nBWZI42Ud7FLS116O0xyfDkSIK3mhYAj02FpwyoMgapA6
	TGzGFabYKX/AJzePEm70epLC3Q3kzNh4BXogVewdr1YsQChx3gMZHBGqMBEUyQH/rgZ3zmzia5+
	6tZuHaHfrkQ35wbMJlf9s89obe0U3bs8X/U8h1ZV03+wGVyR2oueVz8Hvaqxif0bzVpDf/soBKy
	zfPQKbPDayZDvQLxeMR3afCe0nVPDk9xPtAVM/TViBXpQXzeBWscsfOLp5tR6WhyG4DcnT3onOa
	mfKldRbETq3LIZNtGagf7kTTmK5XZyc2ZivrefFMfOHEunxgbW7eCguSXqS2mDtnSfe7o4XjnVb
	qtqWqT9gsK2mzEikYPqV5B2PUWN99UMy2O6iFA7Cm4x0N8Fp4BdPRME9mM3oniKXdjP4FzcSCs6
	vxH0MX6dnWRUve
X-Received: by 2002:a05:6214:2487:b0:8ce:aace:eaf7 with SMTP id 6a1803df08f44-8fec246fde7mr144215156d6.39.1783687868337;
        Fri, 10 Jul 2026 05:51:08 -0700 (PDT)
Received: from [172.22.22.28] ([73.62.185.64])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8ffd80fd82csm40299876d6.35.2026.07.10.05.51.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2026 05:51:07 -0700 (PDT)
Message-ID: <9de024d9-c7a8-4291-a79d-83acc77b261d@riscstar.com>
Date: Fri, 10 Jul 2026 07:51:05 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/6] PCI: spacemit-k1: Add multiple PHY handles support
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Inochi Amaoto <inochiama@gmail.com>
Cc: Jingoo Han <jingoohan1@gmail.com>, Manivannan Sadhasivam
 <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 Christian Bruel <christian.bruel@foss.st.com>, Frank Li <Frank.Li@nxp.com>,
 Nam Cao <namcao@linutronix.de>, Qiang Yu <qiang.yu@oss.qualcomm.com>,
 Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
 Xincheng Zhang <zhangxincheng@ultrarisc.com>,
 Siddharth Vadapalli <s-vadapalli@ti.com>, Vidya Sagar <vidyas@nvidia.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
 Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
References: <20260709040027.958400-1-inochiama@gmail.com>
 <20260709040027.958400-3-inochiama@gmail.com>
 <ak9KzNFF26B0Kttz@ashevche-desk.local>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <ak9KzNFF26B0Kttz@ashevche-desk.local>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20251104.gappssmtp.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324455-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@linux.intel.com,m:inochiama@gmail.com,m:jingoohan1@gmail.com,m:mani@kernel.org,m:bhelgaas@google.com,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlan@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:christian.bruel@foss.st.com,m:Frank.Li@nxp.com,m:namcao@linutronix.de,m:qiang.yu@oss.qualcomm.com,m:krishna.chundru@oss.qualcomm.com,m:zhangxincheng@ultrarisc.com,m:s-vadapalli@ti.com,m:vidyas@nvidia.com,m:neil.armstrong@linaro.org,m:gustavo.pimentel@synopsys.com,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:dlan@gentoo.org,m:looong.bin@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:looongbin@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[linux.intel.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	FORGED_SENDER(0.00)[elder@riscstar.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,google.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,foss.st.com,nxp.com,linutronix.de,oss.qualcomm.com,ultrarisc.com,ti.com,nvidia.com,linaro.org,synopsys.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gentoo.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[elder@riscstar.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[riscstar-com.20251104.gappssmtp.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,riscstar.com:mid,riscstar.com:from_mime,riscstar-com.20251104.gappssmtp.com:dkim,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8DB9C73AED4

On 7/9/26 2:16 AM, Andy Shevchenko wrote:
>> +		if (IS_ERR(k1->phy[i])) {
>> +			if (PTR_ERR(k1->phy[i]) == -ENODEV)
>> +				break;
>> +
>> +			return PTR_ERR(k1->phy[i]);
>> +		}
> 		if (PTR_ERR(k1->phy[i]) == -ENODEV)
> 			break;
> 		if (IS_ERR(k1->phy[i]))
> 			return PTR_ERR(k1->phy[i]);

I'm not sure this is a huge improvement.  Checking IS_ERR()
before using PTR_ERR() is comforting (a little along the
lines of the other issue you mentioned--assigning a result
before checking for an error).  Anyway, it's a little bit
of an ugly construct no matter how you do it.  Here's another
possible way to do it.

	k1->phy[i] = devm_of_phy_get_by_index(dev, node, i);
	if (!IS_ERR(k1->phy[i]))
		continue;

	ret = PTR_ERR(k1->phy[i]);
	if (ret == -ENODEV)
		break;

	return ret;

					-Alex


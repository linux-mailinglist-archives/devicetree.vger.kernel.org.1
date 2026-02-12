Return-Path: <devicetree+bounces-264900-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id RMm6B4tXjWkf1QAAu9opvQ
	(envelope-from <devicetree+bounces-264900-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 05:31:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3C412A4F6
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 05:31:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB85C3123A2C
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 04:31:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FA1218C933;
	Thu, 12 Feb 2026 04:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="01P6gwoj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF601B808
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 04:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770870664; cv=none; b=MhwzNcsLBvu2/sepiEVwLRZoGyqmMrfXLm1l3/gYTqmdTHkF9TlJTdmlg4Vj5MLMYT8K69HVfpa6kmvJvWvJOKpQ8sgjofDYfPK9upt2/7bGQ4HH0tgzEcFWfrSNsqtNDOTUDq9ZnKorFzoSjdqOKp91ts6uQvBlWUm2PA8f7sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770870664; c=relaxed/simple;
	bh=A5HJcCKxAsHpNeprXQQ2Ms4Osb6cPf2AX08DAxbWxU0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qiYbrMdBrW+sw/OmFFDFEuiWqKA0Sm+uzQYGPciF0P5W7Mm6/zqe06iv1M/KCgKWd/YKrf6SBFdrOsfmM5jVju3ur/X2LhwzDabqFv6A9Zq+GgfNpNWrramoxYvvm2oe8k4SrT0cYdHw1YDB97cWbgnf/hYtXYX+y4r3jNX7C3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=01P6gwoj; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-7cfd95f77a3so4109873a34.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 20:31:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1770870661; x=1771475461; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c4Ihvw6EZ0tT6LZ8X2ohWxs32TnyPwD3MnzBsPDVJ/4=;
        b=01P6gwoj8blw88pIPqLENTUr3HWPT0Lg+9CB2nZDEQ8eRra06eIpF8/On7qFxGGvY2
         S2V8pieYbTE+BVKX6njClmn/gEvSUmNVnLqMIrFM+1aKH+0IFzszIh0bjLikcYvSNPDq
         SLJR/1OG9tk1Qv1jumA8G9lWBvxxIajct0Q7zVf3o97JUi2cFpfBkFaRZy1pxd5EF7UL
         r21mm63M59pZO3CUvDe9OkL6CA9zvXtb69qymWIlM+bc9UMdL2svs/HyD4aXc5Rn4EU9
         2Kc3/B1oA/terNhNJXYcnE0GBK+H5rRo5jMalDqsApiBNazTXdXDuDhJxa9yacjGPfKf
         M61g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770870661; x=1771475461;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c4Ihvw6EZ0tT6LZ8X2ohWxs32TnyPwD3MnzBsPDVJ/4=;
        b=IYNaMstDhkip9niv0CsrdAxNKYC/M/5qV80EjIwV4dufUmX99OwJiQCmfXvVAMGB/e
         CyRh2JGBGpMRYVV4Owh06rQE+iANUq1xCD4RMcfa7QLpO0tFP+HgQoFw5E0cs03wW4ZW
         fs62V+P0mXLolBfT74dgxsFKN44DTyk1xsZIGqSAbXanba4eI8swsz/8ne4CM/8rewar
         2dSiQxFUdFlD0QAI3eo3LAta0Rak1wMlwKjLjeuoYjQYUbz/grb5mZj4FpZdxmnFEpR7
         B9Iie/8+gapQwR8WAAYGBVf6aktQry/119TAqAC9JfN57n2xhr8XKraPoLd2LYGLQoeX
         P6LQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQ7gFpX7fTqZzCcBxK6sHUkusZiHwIEWP23DVBuw3W1o4ExepCzKXYMJlYbn0PMDPOSprEfB88R2Hc@vger.kernel.org
X-Gm-Message-State: AOJu0YyXUNjHxNiLqmUNJjonXJHJw+1ZD/Am3eFb5wblTMAAWJE9jASO
	2T3MBM4FVYi4Of/8jqnd/S1kCRfYrpagWlFPeefjlMYYgDkD90GstQljop0Q6zj4OQ==
X-Gm-Gg: AZuq6aL0Vi5HLfGC1fZR4W7eCIF6bzDHz5h3B6PXH7sHSOkppP+ZR7lYUHIb6fFQirO
	GDgkHjM1wgcgk7gkTHO4Y412J62KHRsYkxZgujViUQNOFJd0btL8FlmFMUlGcXNGyoLW7QzI0/O
	SAMMMuK7z+CCNj48sXoUtqW7xjn3GxLLXE6MQbk6yqsRc5GiE1joSxQFkxu1B+o97JYOtTEIzjm
	JwUECH9N7Y2C26BXX6O/yx+tJsMW6hgGrduS3UxjfTaWz3tqlqXhPtC0Ob1vK5b/Ph+II3IsOtY
	vDMqM1n1fk3YSXl6rGDGGm9FXOB/r9Yidcd0UXu81J0CRq8cELpbeBVJpc0aXRiP5R3VEEjaSVX
	XvR1VL7OvR877R7qGZkaQLUUL+SB+MGomM2msv+Tym4n/dXo4Y/ApZG5d4zDHJMrzAOBL6BtKrN
	A9wSVRxnPoay75yZsdl46Trb4srthxpW/ESY+bdAMoUaxQxC408ztlvc+6SIGj5MC5Es8t8F4=
X-Received: by 2002:a05:6830:631c:b0:7cf:e57f:def6 with SMTP id 46e09a7af769-7d4b298b8a8mr955597a34.6.1770870661018;
        Wed, 11 Feb 2026 20:31:01 -0800 (PST)
Received: from ?IPV6:2600:1700:4570:89a0:76c9:5d3e:a5ad:fa9e? ([2600:1700:4570:89a0:76c9:5d3e:a5ad:fa9e])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d4a7530d08sm2833057a34.2.2026.02.11.20.30.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Feb 2026 20:31:00 -0800 (PST)
Message-ID: <d6a67899-b82b-4738-9ad5-27cbd735ff2f@google.com>
Date: Wed, 11 Feb 2026 20:30:56 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] usb: typec: tcpm: add support for Sink Cap Extended
 msg response
To: kernel test robot <lkp@intel.com>,
 Amit Sunil Dhamne via B4 Relay <devnull+amitsd.google.com@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: oe-kbuild-all@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 Kyle Tso <kyletso@google.com>, RD Babiera <rdbabiera@google.com>
References: <20260211-skedb-v1-2-616340426cdc@google.com>
 <202602120453.BOyqL3t6-lkp@intel.com>
From: Amit Sunil Dhamne <amitsd@google.com>
Content-Language: en-US
In-Reply-To: <202602120453.BOyqL3t6-lkp@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264900-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[google.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[amitsd@google.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,amitsd.google.com,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,01.org:url,intel.com:email]
X-Rspamd-Queue-Id: 5B3C412A4F6
X-Rspamd-Action: no action


On 2/11/26 7:56 PM, kernel test robot wrote:
> Hi Amit,
>
> kernel test robot noticed the following build warnings:
>
> [auto build test WARNING on 8dfce8991b95d8625d0a1d2896e42f93b9d7f68d]
>
> url:    https://github.com/intel-lab-lkp/linux/commits/Amit-Sunil-Dhamne-via-B4-Relay/dt-bindings-connector-Add-sink-properties-to-comply-with-PD-3-1-spec/20260212-072745
> base:   8dfce8991b95d8625d0a1d2896e42f93b9d7f68d
> patch link:    https://lore.kernel.org/r/20260211-skedb-v1-2-616340426cdc%40google.com
> patch subject: [PATCH 2/2] usb: typec: tcpm: add support for Sink Cap Extended msg response
> config: x86_64-rhel-9.4-ltp (https://download.01.org/0day-ci/archive/20260212/202602120453.BOyqL3t6-lkp@intel.com/config)
> compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260212/202602120453.BOyqL3t6-lkp@intel.com/reproduce)
>
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202602120453.BOyqL3t6-lkp@intel.com/
>
> All warnings (new ones prefixed by >>):
>
>>> Warning: drivers/usb/typec/tcpm/tcpm.c:351 cannot understand function prototype: 'struct pd_identifier'
>>> Warning: drivers/usb/typec/tcpm/tcpm.c:368 cannot understand function prototype: 'struct sink_caps_ext_data'

This is because of the incorrect formatting of the documentation
comments for these structs. I will fix it in the next revision.


Regards,

Amit



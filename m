Return-Path: <devicetree+bounces-131422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2C09F31F3
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 14:49:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8CE8F1884ADA
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 13:49:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FBDB20456F;
	Mon, 16 Dec 2024 13:49:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgsg2.qq.com (smtpbgsg2.qq.com [54.254.200.128])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E773529CA
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 13:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.254.200.128
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734356992; cv=none; b=T6l+mU7yLm2jg6OkOL+AJWDXJBBl7WfBo2h26eY87ltMrnbXxqi7cp2dQTXgy8qIwaRd5P2Wp2b62kdkBWAUJ0W3NB+f7sFMvLBzn1/DdSmdqOu89JqdqoK6tfX7sX9Lb1S1daTNwe04/ENSuKaul4NaUOyhaUo90UVzmwQt2WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734356992; c=relaxed/simple;
	bh=4hdvd3XgYMmXv8uJtZY51CKDtMarzluVLUy4I6PfQgA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K3lIrAEgaKK31WCspi+9v7cWP2SQ4PautOUH/ZX98Qx/PjIwzZiyJDI4QP0+e7HrImq6VcJz6ZUo+C9rvvARIXNcVtMY8j4ID3ff3zhjDbiBBIgDYpXcCa2p3yyiUR+LGOv0XG+mDpa+ho0AqHXHTUmhp1rbCgeHveIM+RbRSsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.254.200.128
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip4t1734356916t3049ip
X-QQ-Originating-IP: rryKMwZok+QwQSoI7na6RTagmbs0tAuNzaSxdwi9+EY=
Received: from [IPV6:240f:10b:7440:1:f7da:fd82 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 16 Dec 2024 21:48:30 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14767455672543644934
Message-ID: <5707EE9715A7E332+f33721f1-8b50-4262-bdaa-468ad2c79ecc@radxa.com>
Date: Mon, 16 Dec 2024 22:48:28 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 02/12] arm64: dts: rockchip: Change node name for
 pwm-fan for Radxa ROCK 5C
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-3-naoki@radxa.com>
 <0b0efc1d-2340-4ec5-a46e-62a6cebbc2b6@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <0b0efc1d-2340-4ec5-a46e-62a6cebbc2b6@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: N6euzTYZA5gvRMB+LuyAfQrH/UOmDQpnqTvUjlna1cjdxBmrlzxT4+Ud
	tqifDkr7Han25LWfBAesOx/9KNErmZ9QBbVI0qH9QrvuNQUprA7v56SlrSELK6cTZIM7IjY
	lvbIiW5lAKcwasvAIt/sbwid5y2++VFzblQhHpZNJ2SrZAojy9w/ZtGQlJw21NytFrKSaWm
	PHp+vhHqEVEL7SJCK3sOjgUWMkCIbnt03oxU3ljF8SzvuuADmpXW4xnBt/tmwa4+0LZ7Lcb
	iUCHht5w3azrU4sERiwnTOfWOfv8GS05DswsX8qiIPUizjUI1BfjuyF20xpWWL51tWENuK5
	bIWmoJkXSnjr1vThe/bivDaDT+0u15+Plkclp4q3SaIfGATZLGEwNuK5KyKVorvlXhx2Ejl
	cuw8BAmt1FcRgjnPtu7+ZVcZbr5hseQKpKusjIvWHyAj7vdfcQYMGI2EJT5diPOSIUCiif6
	kf63jyIgNuBbYdbaKzRFBcBpoZ0VFFpxLJwHktXYuwYhkzqdufx+xy33T6mqbMbZjmW40eC
	LA6w386GZ4152XXA8qx8RE6nNdkQ7VaVLCZ177mhJPY37bi1Xyzvw+rrfZYp5/q68L4omUy
	Bcx7NKnU4ITAARr0rPgwerLjeuV1mBLxKO3lwLZs3IjpqpgMo13V057nlpO/ALaAdrz+zCu
	KRgPzuZjCXLe0NQEgOWOgOrB7tyeuivuc/b6sqQIG+m8b+zsm35hh4sAmKeEEbMeYQjCpcR
	pA9iyYpLcLapVmL82ppc0aP+oY8ib/E/B/+3Z6W8ehRn9Qmp/xToIuQHv1dj04MpqHAbEFn
	9dH8v+AUFVpTObUlX10+EprMVbNHfIr29i0uAWNFusyt6gnXoE/xkdttD4MTet8iMeHELHv
	sxx98d+9gSZyn9V6ZlmMHP6EutlqkVJ/9GHuWomhDOnKhvMHWjqT7WrQuJSGOW1geu58RF/
	sU9Bp8Xf4ZCTtFlxAvMyaYXGvtcRi5hpKbtFwQodzXdIDBw==
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0

On 12/16/24 22:37, Krzysztof Kozlowski wrote:
> On 16/12/2024 12:30, FUKAUMI Naoki wrote:
>> Use more common name "pwm-fan" for pwm-fan node. No functinal change.
> 
> No, generic name is fan.

  https://lore.kernel.org/all/71aa84af7a030e66487076e0976c8cad@manjaro.org/

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 




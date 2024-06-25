Return-Path: <devicetree+bounces-79613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6B4916021
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 09:37:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 642E31F2127B
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 07:37:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73C39146A62;
	Tue, 25 Jun 2024 07:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="Sjras/TT"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-245.mail.qq.com (out203-205-221-245.mail.qq.com [203.205.221.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE2B1DFFD
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 07:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.221.245
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719301023; cv=none; b=UQJuanOQYGhec8mPdV11Kl6ZbYUdS95J5518p90q/Ya32+zy9eb5jpTypNdAbsdnmFef4amCNtu4PseTCJXCQFox0N3ZdLJVxj6jBII4mq6Uhk6iSmCbEkt8yrXN9FFIz5/0KXk0SBXCKpem6hv0Ll8ggzr+kaZ0UEYWVt5uyhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719301023; c=relaxed/simple;
	bh=blHGl7YrLZrp0runine851Pzqlb9ZjFxG0Vn9AY/Hpg=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=ZMsiw8ej4Non1nSO3NOtkVPmXPEmqEYjkx6S9uqVVmRuY+gdlhFse6zMizzUMImtv5HHZ7Xq/CbNf0Kz6v2omixxTc8xom/4L8cVihtxFcJJH8F77EjQrh1wr3nCXaRKSa05sMMb6SDd+kwjyO5bCAgK+zEgUDavjIfRrRGF3HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com; spf=pass smtp.mailfrom=qq.com; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=Sjras/TT; arc=none smtp.client-ip=203.205.221.245
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qq.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1719301008; bh=blHGl7YrLZrp0runine851Pzqlb9ZjFxG0Vn9AY/Hpg=;
	h=Date:From:Subject:To:Cc:References:In-Reply-To;
	b=Sjras/TTidKALzyf1fynFV3OJJ23G+E8GMacj/N8D8RVTs43DXI3yjjeHuhdgsCt2
	 S3yzuyuZ/99St38mJ5lF/aC3nPBJW3RDZ/FnR1mM6HvldJfC06dxiGPblQpO0FxhYw
	 /RAmQFQnlYNUl4MjhSw7CFLEf1gRyJ2hIMrjHPyI=
Received: from [172.19.0.1] ([1.202.45.181])
	by newxmesmtplogicsvrszb9-0.qq.com (NewEsmtp) with SMTP
	id 7A1AD09D; Tue, 25 Jun 2024 15:30:33 +0800
X-QQ-mid: xmsmtpt1719300633tccg7adpq
Message-ID: <tencent_EA937A49A986C9F72ED02576DBA758E75205@qq.com>
X-QQ-XMAILINFO: MBhxx2BUoWsxWKrEKH2Cp6EqNrnlbYYZ8u4kucMHho5VXlOOOhAisT20p7+sY4
	 dES31lHMNzvKruM9ByNhSr01aSoHRx4nhNCnQ7pSUMhoZjjFzqVaZCO01J4LBS3JWtysBgR/IQdC
	 aptkyAn1JhB988eave2svvgeW0BRkwefgGLXiXINiPxnq02lmFjh2sGbMmt8OBVR5c5zm/OAVLmA
	 Tf6dnQC/Myc1kNWMVcAHUj8UgLa1FROrGVDTv/HW9kWdGn1SBApOoAZ3uagOojqnR0GGBaBjOI/t
	 srHpFYRO9vlkM+3ye7oJBPkGO9TJ2/61eUdcpeUd6BPMd7AbCcvzDB2onE+tuy2elo8SYdGH+A5P
	 22SvOBTsXlJ1KKzWLTTSow/Fyg/xujVMKGIfX4ZM2d2UURuZmAHbmZPiUbkVdTaf4Y+Aw5C7Ghkt
	 8RJCyb7nEpVKQpo7zBUX3askB1w4LghzLfCYsFiebcg48jaxmeyPsRKwjoX0eFiRNWpX3nNOkSSk
	 hWzmH9osxuKBQQOAT9unaMRt0CcAG5/vwhw/PlRBCEPLfKRAkQnm1sw6lhx73YE3TLTDHZ0WNNkg
	 1VGD3tKDCyY/LEgmkox6psvuNq8ZVEd4fgI4UuCjE2uLJuvGMmDCaOGuGTPdxrAXFaWqo3/nPLDo
	 ryCpKCWBL0a+Q2VcfWfsdXjG8B7b3Z3712uABCV82T9MWKwBngye5mHylwTn7tBcelDAnz/dqSY+
	 8vLrBtsBUmhkMrpcxr5UWza4Ju5OUZKAy4SqsMPBa21Ufbp7XmkyEiJxb36NS1/IFXQ09gavXj5p
	 Oo4pv/M3SxCTXRUYSrVWyfdI3eDYlT/bLPbLKhVCZiuKNRAvrb9BSHCqrIMwzUwj0mGhXls8E+Dw
	 bgU+hawWCtq88alyPE1ecUhXPy3n3UcdXpwvfoxnIw74BKFt4c5b86nTcyvhej8mRvS8ciXi+UZT
	 c22f6BCr4=
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-OQ-MSGID: <0a751065-d90e-492b-aa5a-435ab621304f@qq.com>
Date: Tue, 25 Jun 2024 15:30:32 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: plusls <plusls@qq.com>
Subject: Re: [PATCH] ARM: dts: sunxi: H3/H5: Add phys property to USB HCI0
To: andre.przywara@arm.com
Cc: devicetree@vger.kernel.org, jernej.skrabec@gmail.com,
 krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, robh+dt@kernel.org, samuel@sholland.org,
 uwu@icenowy.me, wens@csie.org
References: <20221110005507.19464-1-andre.przywara@arm.com>
In-Reply-To: <20221110005507.19464-1-andre.przywara@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

I use Armbian in my orangepi one board, and I use the usb gadget to simulate keyboard and mouse.

It works on Armbian_23.11.1, but it break in Armbian_24.5.1.

After some time, I found out that it is cause by linux kernel commit: b13d48408e9f0aa80f3d9f93960aa49bd0da7af8, when I remove the "phys" property, the usb gadget works again.



Return-Path: <devicetree+bounces-243727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E79C9BAE4
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 14:55:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F375C3A675E
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 13:55:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB8FF31B836;
	Tue,  2 Dec 2025 13:55:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast3.qq.com (smtpbguseast3.qq.com [54.243.244.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA4B631CA42
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 13:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.243.244.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764683725; cv=none; b=iPiPKMkNg+rKs//CuYMp13KEytZrCNwPp9iVzx/Yuip26ir0yDgLPRIjDxl8LVjak5wIpnwcIW68QbL9fdf5725bI0VrE0ftuK1eOg1zee56vFujvzaaXslEfYxEDFmEwvb9OmM1qHbiqchr480YIDIF6v5Op6cer9HpTeawBJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764683725; c=relaxed/simple;
	bh=3Yo8vbVwPzg9uplu7kyDXRNU0Fqk+YgAY3QCSK9XzYA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EdH+1WTAc9CF1WpRV2p9YFaeRxa+36K+javSQ/l0vtxvinxOoDfY/c5rFud0jHM9Mj7oPZt+UUg3qn5+943tC58OAXpvCDAfzSlxzfUK0TnePlBjF4+audT/OkWveC6ULYT0yzf8HtVD3zUoMlQZJaR01mpmDlD4CPi8eL6adr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.243.244.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip2t1764683638t31b7b010
X-QQ-Originating-IP: sb64r6O47jjjH5w5oIDnoBTEBXLnfUgt9M/oBxU68ZQ=
Received: from [IPV6:240f:10b:7440:1:a68f:7233 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 02 Dec 2025 21:53:52 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 499419002538705467
Message-ID: <A665FF5170FE9550+0e1d2609-454b-4a82-9e52-2d167e351187@radxa.com>
Date: Tue, 2 Dec 2025 22:53:51 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: rockchip: Make eeprom read-only for Radxa
 ROCK 3C/5A/5C
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, dsimic@manjaro.org,
 heiko@sntech.de, krzk+dt@kernel.org, linux-rockchip@lists.infradead.org
References: <20251201144629.135570-1-naoki@radxa.com>
 <20251202135008.513685-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251202135008.513685-1-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: MVkZiY22hz/mWTqE3GlezKOdRtk9ZhRntpdPqE+Caax+dX162d0oE1yX
	dokc3p4i9Sx2NEGuR3aVCElsfqaY5xIXHfhuG/v13SCk+hLY/u6+Bh/41T8XNSPwGHU95pv
	kD/c97E5yXD3n8tPvttwprhmBHxnLdbLqKOOj1oepWDrPyVO6t5TWLZAJBqBaU6mp6pXq28
	EPC8o8VOH1E9bx0820cQKvoUNO+YBtqYmW8hq7/l79ymqH6KGMJy5Pu7zJFF+D69jIQqPsE
	D2zrN+nZVH6Kz6MzcohBOU4BEWMviXywNfLKdV2QEAS7c3Y0llUYGcKHl+8ISgk+gTbkN/K
	+OYxgTfK24YYWqf5f5cNR/FswT/2HJdRqHw95HxGOsICnZNxlLkFpa1YbiOeV+fgt4/Lewt
	aIVcmOP9KSTmnRkYO1RcDxxVxPvlyg/S8QCDVqPbSpwnobsBbK2YXy3yi0PdZLvEeSRuh2+
	xAvQkCxrzOpfA9UMP6PguZlSf0Yj+qTeYtmDQYKr404GoSmlEp6K3reSlq5BSQxnlKmVhCs
	wn/z5FRw1T6F3cUfEJm575UmEfnh9ON9ZZG/gZMWHn08Yk17CsKFRKPoQmsOjKD3W8C6wrF
	q7iea2bj8xK+93a0W1L++KPgeTZ7CL6VcoMN0t4ErUprvdqQvgUsmWPlwQHBp8VPpiuUJW9
	eHXCyi3Z6hRKRF9eHIAMk+YR+V+w6hM9FXw+48Qyr6oCDJqxLh3Zkc38V4X0X6R9GR4RIBz
	U2n98Scdgegi/cxv1c2/aGGVzsCV6MLPRmZddQu6F9s2c5ouSPwQ1eNx1QDsY/r6yHJ2v9i
	tPSSGLje0uKckUy/Ey/zpFmFndfwO41B09iruWGrl2MX0Ms1TX5CQMeDfV/gm7NTKBU96+B
	zlv5Ac0/k8BJlqHLAdqWQ7TxCXDbOELYUuYEHsaMPk0wz5anHc7xEoqeYETV45R38UGzNOP
	VvnJW8gW0LUBsn+l5xScrDe8kWO3LmG5J3B8=
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0

Hi Chukun,

On 12/2/25 22:50, Chukun Pan wrote:
> Hi,
> 
>> Fixes: ee219017ddb50 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
>> Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5a")
>> Fixes: 3ddf5cdb77e6e ("arm64: dts: rockchip: add Radxa ROCK 5C")
> 
> Since the EEPROM on these boards are empty, this patch doesn't
> fix anything, so the Fixes tag is not needed here. If you want
> it to be backported, you can add "Cc: stable@vger.kernel.org"

Ah, sure, Fixes tags are not needed. Thank you for pointing that out.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Thanks,
> Chukun
> 




Return-Path: <devicetree+bounces-77145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E866C90D7BB
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 17:49:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B967628861B
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 15:49:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C78B7347E;
	Tue, 18 Jun 2024 15:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="kHPRdhvX"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-209.mail.qq.com (out203-205-221-209.mail.qq.com [203.205.221.209])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A794487B0
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 15:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.221.209
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718725735; cv=none; b=k53ZGGGGvbDxhg+p8SkOpzqFDxR61eCVZze8WyOAi8vttnn1GeRPIw/3FRI7BG/OmofEmy6bqvECVfUExC5jbAi+0mpbrtizXcSXQoknIrVqPWYe1Z72e5Aw3wZxz1f1R7vaUSE/sZpGWcuFlUVJgdAwDq6rbcPTQINxgkvlS1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718725735; c=relaxed/simple;
	bh=2DG5PgpVr7jCgaOIGTQ7RrjqkjpKAT+ntGXAYMQb+oU=;
	h=Message-ID:Content-Type:Mime-Version:Subject:From:In-Reply-To:
	 Date:Cc:References:To; b=JPoOjpd3gkBuCwuTjPzYQKhn3h9aHU1H47TJi62vUWERqHt1WOAXyiRvb+5ZWg7667MAM93THeomD0JC/5mBqBVuFmvYDeVSFBoGnioaMH8rGnx3QP3Ohxd/bb9ngEtovBvdhD2aIRtKA9jYlKWfT02FMmsybQEr5L7ATzta2fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name; spf=none smtp.mailfrom=cyyself.name; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=kHPRdhvX; arc=none smtp.client-ip=203.205.221.209
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cyyself.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1718725725; bh=/C5kFVRvrrvnxuZJu3f1SjKBCgEnQApKELoeAmk6QTo=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To;
	b=kHPRdhvX5To+lfEQ8Ag2TJXAdWAqcVa9++f/TikpCVZj0gWmpOTLgOW5cwU2vuNKP
	 r93IJT+2PHEX26SeNLNBIpxlSg3jLKV+wT/btk4cQ8j/mOAOb/mceJ4kEkkEhXWPVC
	 JtjkXIH7AXOi90WKaojKy/F646wG+jHxM2jVTJkM=
Received: from smtpclient.apple ([2408:8207:18a1:9700:f590:27c2:9473:13fc])
	by newxmesmtplogicsvrsza15-1.qq.com (NewEsmtp) with SMTP
	id C24B5298; Tue, 18 Jun 2024 23:48:36 +0800
X-QQ-mid: xmsmtpt1718725716tanbo82h4
Message-ID: <tencent_895CC418D210ECC617BE44C17EED3BC72E07@qq.com>
X-QQ-XMAILINFO: NSObNE1Kae7ZynrA0yfv/YLFQYxJ8j4D9TcyQnfxY+GrgoUTnXVqGpnhJfZVqm
	 sGZHi/pD99ThCqT4XE0//wGl25nS+I2kRajYmL/+46C1+jeh1lIE0Ax29kogMXf/85tl8D9nKmn4
	 bpGrSWG4eemzLPUzN0sTb1bLilwXGp7iqG0iTvJmSmITP40mjeNFgVqFJKOzS0qSf2zxfhAhorJP
	 89vb/N6ZwV2p281zItyfaSvJ4Orsy/QnmohRzT0JRG66R5bx4O6kG7uR41FdYcy6dE1q0ho43TGq
	 bJp8SZZCRPC+Lq8adHwhDmAgLv01nyc4RH6zOMcJ85eZMaXIpyl+sMhaSvQjP0m67A7vD7OCgINQ
	 ogAZOP7twsJfFSOtMr9D/SslUEYkovGKQDw+Bo3kQk2Wewry2UFYtgpjs8aeO3Lx6K3Q+HVZAvou
	 axg00kAPaKKelYJ8yUkCvb/7hhjW8ysnM1bq4hnQHZjERSr03NRi2PM5rNqAlyNu1S/Wjz+BfKNI
	 EmtY6rLulCltw+0OVOfPGql82LQ0UTQfKXwYjnYQS6nTQ+8inbEDY0i7C+oZ7rewAkEwvPR0DeGR
	 yj4Ezx+xzCuvhWFAh5iN1eCu/qYeDuWqZaVkxtM/c6tx4HM/rgqYPyg4Jxgch9TWsyEd+L4vbc4l
	 CYVsd+y1ZbN4SQZ+9HNOSY11XmgCLhBR24n08PixSovL8hx1TQlTLXNJUh/u2EvXJG9OvQQdoOMD
	 cWtvEE/oA4R6h+l+EythdVxj6f6UHnLr7btjviH95HnXt7bLTcLZGxe5n5OPlizQdghXtqwYCrlV
	 TXfp914G1BS4r1VFusKoymChzARORMDPq6GQ7Qh1fMlImbP6Sbq1E1mJI/p6Pg63L04KL9HLzcSd
	 38kZR2BxhdHQN1FKWDQZeWh7QxZkJourjUQyuRxYqB9aTOicaFVF8lGy2D0vonc3gQiBSahr4xj7
	 URY5/10ZCbug1+kPgm2Uvgj/YWzENMwxnOTNlbwhTKkOCyatKMZg==
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
Content-Type: text/plain;
	charset=us-ascii
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.600.62\))
Subject: Re: [PATCH v1 4/9] dt-bindings: timer: Add SpacemiT K1 CLINT
From: Yangyu Chen <cyy@cyyself.name>
In-Reply-To: <20240618-backlands-flaring-f8b8b603868c@spud>
Date: Tue, 18 Jun 2024 23:48:26 +0800
Cc: linux-riscv@lists.infradead.org,
 Conor Dooley <conor+dt@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Samuel Holland <samuel.holland@sifive.com>,
 Anup Patel <anup.patel@wdc.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
X-OQ-MSGID: <7A18A63B-55E7-4206-8941-8FB5C8B6F138@cyyself.name>
References: <tencent_BC64B7B1876F5D10479BD19112F73F262505@qq.com>
 <tencent_2A51312A21F88DDB7C7D82A2DA8E8EE7B808@qq.com>
 <20240618-backlands-flaring-f8b8b603868c@spud>
To: Conor Dooley <conor@kernel.org>
X-Mailer: Apple Mail (2.3774.600.62)


> On Jun 18, 2024, at 23:40, Conor Dooley <conor@kernel.org> wrote:
> 
> On Mon, Jun 17, 2024 at 01:20:49AM +0800, Yangyu Chen wrote:
>> Add compatible string for SpacemiT K1 CLINT.
>> 
>> Signed-off-by: Yangyu Chen <cyy@cyyself.name>
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Actually, I'm not confident about this after carefully reviewing
the file. The "riscv,clint0" is marked deprecated, and the description
is For the QEMU virtual machine only.



Return-Path: <devicetree+bounces-134520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 600E79FDB70
	for <lists+devicetree@lfdr.de>; Sat, 28 Dec 2024 16:09:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 144E8161719
	for <lists+devicetree@lfdr.de>; Sat, 28 Dec 2024 15:09:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C756D18A922;
	Sat, 28 Dec 2024 15:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnP+MoHE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CA7F15A842;
	Sat, 28 Dec 2024 15:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735398569; cv=none; b=HUoPQ7bZhh2S8vMXFpR1HOMAAvYX3ladmfaWH6i8zBiwLaOyxGS0ldlsODax13gNbsKw5ugr2EmEBB7lygDINOJFxHZ6jb9y2ugQg7nQH8nTQp7MQYpkYYSGgCRprKXfAWZD280trYxqzH9iBUiacyqoVJsCilcLaGsG+EPb9i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735398569; c=relaxed/simple;
	bh=YGFktZ9edCTGmBVJdWffFblUSWddkTUls5OAQ/cXnmU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Yv8Vh4M9gNXvTzUIlJYtPvGKSOi9VFqV4Jaq5j6bjh0UU4IwHOv5vLaOxd2uwv16HQ3pmHub/FikF1b2PYnh/zkQPXQQ8ivMCkU7TRdBYaJlC9m7Vx0624GcYGcMVFaW5T6bYAWVYodm9r2/FQA3aOmjPkwM3NfboMdZPOVV1dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnP+MoHE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E035C4CECD;
	Sat, 28 Dec 2024 15:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735398569;
	bh=YGFktZ9edCTGmBVJdWffFblUSWddkTUls5OAQ/cXnmU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=GnP+MoHEGM5RF0MFXsjpHDZ4XVt8+xWSs7h0uUeRADOY89nqolT5U6ruTbu5BxeLX
	 g+A4R++YhRI2hjtNboh03a/o2k5kYt5S+YwNxsRY3Pj6GSgzAgjmuyAxJoTj/gDtCR
	 8Egqj0ofpVYroaqOhDVd8jTTzgsqplVDg/7xmNYwLfd7/dECOWky5jLYZbvy307ZW+
	 mpxjdM3rQ1KgB7mRQu9Z7QsUIcwPA2uOK2abZQbIKyUF0+rzSfy4hfcb0rU+rNexNl
	 PURi/nr9Y6nHDk1K1u7sG6OeYO3Z8eIL3Xz4chn4pMbbn1eMQjtDiZ5COtsqIVPkRz
	 monVx2SiLB/Og==
Message-ID: <76a93a4c-1dc0-4ce8-b851-924b0d0d963d@kernel.org>
Date: Sat, 28 Dec 2024 17:09:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: k3-am62p-j722s-common-main: enable USB0
 for DFU boot
To: Siddharth Vadapalli <s-vadapalli@ti.com>, nm@ti.com, vigneshr@ti.com,
 kristo@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, srk@ti.com
References: <20241220054550.153360-1-s-vadapalli@ti.com>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20241220054550.153360-1-s-vadapalli@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 20/12/2024 07:45, Siddharth Vadapalli wrote:
> Add the "bootph-all" property to the "usb0" device-tree node. This is
> required for the USB0 instance of USB to be functional at all stages of
> USB DFU boot.
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>

Reviewed-by: Roger Quadros <rogerq@kernel.org>



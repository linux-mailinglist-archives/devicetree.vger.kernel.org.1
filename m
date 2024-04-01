Return-Path: <devicetree+bounces-55207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3C589478F
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 01:07:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7B29D1F21ED3
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 23:07:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E54FF5674A;
	Mon,  1 Apr 2024 23:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="Opug703d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340D12A1BF
	for <devicetree@vger.kernel.org>; Mon,  1 Apr 2024 23:07:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712012859; cv=none; b=IvdQKJCi2qTcDqZYbfQ9VwZ1hLoi89FHhbNxvTEVnMxgurDpAwgK7WCU81SZuvf1M6llTsLeyV92r5eQbTDm1izfJf9AJ447KloW1KW2FKK+Xh3FQxEd/MNJgxAlgbOErbjwbIoORTz3RfDbSKy8xkfoq4Wd4goe819Ekt99emc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712012859; c=relaxed/simple;
	bh=hoXkPyampwSW233gW+T4GDRUjq2WdAMd1vTQD+Q3scQ=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=KA6Y7s2A821VEtHRMufvIsZ7CxDwB9JeD8Bi3ANltNiP1r6o40nZkTDedAhrIrargc+8YOt/+iChySLzDCB65FR3CVTg/WfT0Pws3WvKHe/X7MbHDtIR5bvudB5RUdM/NOb6yuY3Tp/ydoz8jsRDvI3/PXL2C7R7E0UQF95CTTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=Opug703d; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1712012849;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ez8K/LNR7tXtx83jTNF3btgaVdrBsM54UDLlwKef3gM=;
	b=Opug703dxiULly4qMS+QOas7box1RVrABGD2bgBEkKtorDOrA47yYdAC/oL1O+k8qEp8Lk
	VeZlKXF+kCUg9WX+PLP7154oOcdN6Capx4cDtR9A1UTvleMySFOoTqxNa5uLJqlz1aRh4B
	w/WLbAFOpH5Xm9Q8dUoL1tB90f8vSzoSsBQcKrfuEKlRCZPhcmyLa7LVpOX8gVbipL9mgk
	sjneZCPH0XGrFGYWd0YJN2AJO2gUZVInBkWBlSu29sqhQAlf71osFrXJFL/wYatl+cZNEu
	AaTt2IWxS+AY3ldFsUe1kWzs6SqsWHE0Qc+IXXnnlb+6ECpAeugWCIf3fs5vHQ==
Date: Tue, 02 Apr 2024 01:07:27 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Remove unsupported node from the
 Pinebook Pro dts
In-Reply-To: <171200852040.1394042.4883299945962544319.b4-ty@sntech.de>
References: <0f82c3f97cb798d012270d13b34d8d15305ef293.1711923520.git.dsimic@manjaro.org>
 <171200852040.1394042.4883299945962544319.b4-ty@sntech.de>
Message-ID: <fd6b90fc4d277bb4034a919e72959e94@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-04-01 23:55, Heiko Stuebner wrote:
> On Mon, 1 Apr 2024 00:20:56 +0200, Dragan Simic wrote:
>> Remove a redundant node from the Pine64 Pinebook Pro dts, which is 
>> intended
>> to provide a value for the delay in PCI Express enumeration, but that 
>> isn't
>> supported without additional out-of-tree kernel patches.
>> 
>> There were already efforts to upstream those kernel patches, because 
>> they
>> reportedly make some PCI Express cards (such as LSI SAS HBAs) usable 
>> in
>> Pine64 RockPro64 (which is also based on the RK3399);  otherwise, 
>> those PCI
>> Express cards fail to enumerate.  However, providing the required 
>> background
>> and explanations proved to be a tough nut to crack, which is the 
>> reason why
>> those patches remain outside of the kernel mainline for now.
>> 
>> [...]
> 
> Applied, thanks!
> 
> [1/1] arm64: dts: rockchip: Remove unsupported node from the Pinebook 
> Pro dts
>       commit: 43853e843aa6c3d47ff2b0cce898318839483d05

Great, thanks!


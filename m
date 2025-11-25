Return-Path: <devicetree+bounces-241855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F93AC8398C
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 07:59:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A7CA3AB84C
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 06:59:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10E332D2384;
	Tue, 25 Nov 2025 06:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="RbFACwaL"
X-Original-To: devicetree@vger.kernel.org
Received: from out-177.mta0.migadu.com (out-177.mta0.migadu.com [91.218.175.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B422D0C72
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 06:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764053965; cv=none; b=V14oKdqeI2/P9lM7+nqQgAcsHVt5xhECS75H3Kr3R5yWc58K/qXNtRonkkCSHR+UsnmbTLWIByjmwQ/6uathQOeUpYDCK/p+nLJC0O/Bu1tgIBOZg/B0o9vHv3J57kjhn37qnXlGRVtoNTe+IcPRnQZWrVToUwFhKfd6Kx+j4Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764053965; c=relaxed/simple;
	bh=A8WtecfCLG/eG0f5MBFzaYx7n/CF2fJamNaFi94TsI0=;
	h=Message-ID:Date:MIME-Version:To:Cc:References:Subject:From:
	 In-Reply-To:Content-Type; b=gw5uMvXZf4ZQe8025ivk0eNiiaOzKFrcfcecxbIYbzXJUPmV75z/X8vLQ4wlYsTsyIYhXKTmjpvXz/KRsr+hJHiFYrOlY1OTAIbGpJfAipEhmqVQlRYihMGUgGThyXB5kyhtDTFPTlleWlnS2gTJxMReWTMr3Sxd3XoVU/I+Acw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=RbFACwaL; arc=none smtp.client-ip=91.218.175.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Message-ID: <b0a488db-7965-4b3d-9f12-5effb7b0e3e6@postmarketos.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1764053950;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XUudSo+Hu+T3sFFrzKApdVsT231wP8h5fao4Ts27aN4=;
	b=RbFACwaLxsaWTyOYQRYz4fdRVzcmJ2Cd7kJu9xehcZ/GrLyeXBm7FUlkg1vqRjL66xibg4
	31/PKuuRA9SSZR9p9cikw8w1dhMMIkHWD6/z9Fx2t4HK6DY8sJEZGwiZRWtXEKX8QIkv5Z
	v5jDkyLuoQ09DL1tjY7pPYoEi1ohOGAL7G0wfZI650ta2lNBDThb7px1uc5NWZU9KpFxMd
	b5fFYN2Etq0UZYf8rMs+JwD79yVokSULHUfwdD+XgM0lXseiGCBRKyYHfgOiVF3YyD+Skv
	914qgtSl5zi6w8z6igVxZhNAbTOTEoIuVQQMXbTpgC77YVgg+UJRWdxYmYYTDQ==
Date: Mon, 24 Nov 2025 22:59:04 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
To: amit.pundir@linaro.org
Cc: ath10k@lists.infradead.org, bjorn.andersson@linaro.org,
 davem@davemloft.net, devicetree@vger.kernel.org, jeffrey.l.hugo@gmail.com,
 john.stultz@linaro.org, konradybcio@gmail.com, kuba@kernel.org,
 kvalo@codeaurora.org, linux-kernel@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org, robh+dt@kernel.org,
 sumit.semwal@linaro.org
References: <1601058581-19461-1-git-send-email-amit.pundir@linaro.org>
Subject: Re: [PATCH] ath10k: Introduce a devicetree quirk to skip host cap QMI
 requests
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Paul Sajna <sajattack@postmarketos.org>
In-Reply-To: <1601058581-19461-1-git-send-email-amit.pundir@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT

+1 on this from me. I need it for my patch-series for LG G7 ThinQ 
(judyln) as well.

https://lore.kernel.org/all/20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org/T/#m90e8087d4388e588b71a0eff01b88f1721f73b73



Return-Path: <devicetree+bounces-125878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFB09DF961
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 04:06:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6404E281B12
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 03:06:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95E1D2AE99;
	Mon,  2 Dec 2024 03:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="bGpF3LHT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B020518E29
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 03:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733108811; cv=none; b=qm5Ad453/NzedWQWSMaV0p0ckDDTEztSlqeJ5qmUtOqgjkUjmZBWxDnhPVZUoUOuBa2t+0fFcG2wQ3RNm+0ATOMU8rbmUr7iTUw3SAm9/uAeu9YZmtIgTMIjW8Z/qJpwdiaYnHYnqyyf0LJ7g9uR6Vd8OeOS6IZK7/M5m9nulIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733108811; c=relaxed/simple;
	bh=NtzWGrwSUtgq01GmWLbAHgTwI1ImRsh/kpnBd+FLqz0=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=TsLhRzEf5p29nx5BunCKr4uHzmnvDqI2PZyUAo037t2t6ZeVzQ+c4viuOoG/0fVuzLWpcqFLBS9c+iJZaWxS5rOgWQszG/SgUkiU9FKCnrGqxAR8uwcDBYn0rDsIJnBk9YRfFD/NPsVZOWVsvwdw4taeiEpg5W0WOZnPXAOG1HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=bGpF3LHT; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733108802;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=oCiJSkyUdzdNJTsrh7tGzNo4KPKV/WbkvH64T/ZZLNg=;
	b=bGpF3LHTyOIau/oQk/2ABSF6dC3ofAYnZYNABVO3NN9FA7XNwGWoGlNG9ZAEppon63aZ4Z
	z6BJ+tVkvThLs96SjDbPiRWgvuGaTLKvKSK/pNwFVPY3YfYUC2vq8HOf3twUqBDK2OS1gz
	P78bd7D14c27dDaTzULbbrUpRnH6a7jAJcLmBudqlXAWkhX8Ji+Pmon8XMU6EpSi0j7J/k
	djKOIKOtYV6LyJIX5nSK6F1Am5TUWjnLjhqQQib/uf/ruf1boDvTnRXozGF6f12xmRX+v9
	skzaiDp/jf1eIMTSECeSjl9oaWp7Ag0Or4bUGWC5A89KmNajHOUgnREKpy/wfg==
Date: Mon, 02 Dec 2024 04:06:42 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org,
 inindev@gmail.com, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org,
 alchark@gmail.com, krzk+dt@kernel.org
Subject: Re: [PATCH v2 0/4] arm64: dts: rockchip: cosmetic changes for Radxa
 ROCK 5B
In-Reply-To: <20241202023227.2671-1-naoki@radxa.com>
References: <20241202023227.2671-1-naoki@radxa.com>
Message-ID: <e981c540fe086313ad6ef6fcba62eeaf@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Fukaumi,

On 2024-12-02 03:32, FUKAUMI Naoki wrote:
> this patch series sort nodes and properties, remove redundant
> properties, and minor cosmetic changes.
> 
> no functional change is intended.
> 
> this patch series depend on following patch series:
>  "arm64: dts: rockchip: sync dts with schematic for Radxa ROCK 5B"
> 
> https://patchwork.kernel.org/project/linux-rockchip/cover/20241130004057.7432-1-naoki@radxa.com/
> 
> FUKAUMI Naoki (4):
>   arm64: dts: rockchip: sort nodes in .dts for Radxa ROCK 5B
>   arm64: dts: rockchip: sort nodes in root node for Radxa ROCK 5B
>   arm64: dts: rockchip: sort properties in .dts for Radxa ROCK 5B
>   arm64: dts: rockchip: cosmetic changes for Radxa ROCK 5B
> 
>  .../boot/dts/rockchip/rk3588-rock-5b.dts      | 184 ++++++++----------
>  1 file changed, 86 insertions(+), 98 deletions(-)

I'd suggest that you expand the descriptions of all four patches
in this series.  The way they're currently written leaves a lot of
room for improvement, such as turning them into proper sentences
and expanding the wording to describe the intent and nature of the
introduced changes better.

The cover letter surely provides an additional explanation for
the entire series, but please note that only the patch descriptions
can find their way into the repository, so each patch description
needs to be self-contained and independent of the cover letter and
the descriptions of other patches in the series.


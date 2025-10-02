Return-Path: <devicetree+bounces-223265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEC5BB2882
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 07:26:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 543693BBDBF
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 05:26:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2258284880;
	Thu,  2 Oct 2025 05:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="MWwjhX42"
X-Original-To: devicetree@vger.kernel.org
Received: from out-189.mta0.migadu.com (out-189.mta0.migadu.com [91.218.175.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0FEE27F000;
	Thu,  2 Oct 2025 05:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.189
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759382776; cv=none; b=A2wNJ0e2bufSzLrDsjxwa4tlO2XPcSYeZVvNrX3auhx9wJDEIyWIcqmVDGfYSI7d9S13GnwnydfXjNJT9H3MJ4ciJydAefe6PHWj1npfB3RiZtrET0FNZZx38p88JyQN6IsQiNmN5qJntUcDwB9LyhDeRB5UvOBJnAGs0PqsdRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759382776; c=relaxed/simple;
	bh=hcLhwxJJZOWXUPZwdoFe2zGZFEXuIaSy2t/7jL7qUvs=;
	h=MIME-Version:Date:Content-Type:From:Message-ID:Subject:To:Cc:
	 In-Reply-To:References; b=JOBzrIaEh8tILHwqKc0vi2wOojTLydE+xri5FTXkgx8MoYPHiQHC5x7gun2bg0el47j2PHeQ8Jk5l6ALpCGXE/qoydQ5W3rrk8NirfVhJqgKg9TdfDFgAMn7Lsc4g27/GIvIKIGH0bzkU8wf1CLvjXMuycxi4LOTpusEBnvSLtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=MWwjhX42; arc=none smtp.client-ip=91.218.175.189
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1759382761;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hcLhwxJJZOWXUPZwdoFe2zGZFEXuIaSy2t/7jL7qUvs=;
	b=MWwjhX420uIJPcauIu1sA+1f/mzHf90s3Sljby/+IE8ixTt9J+Rp6VJIjBL4zYD5RRtZrs
	dUODL9VhVSqwrScVKLpwnlHROR0EFVzpmHpyDPRl/JXxwZI0kF3mQMIabiL+5QkU/6tpZ8
	4fbvD8Shw+JuwJwZUFH05cDUidjpuCsQO8cjVskCNz5BG0hcl4717hEmfoeEzjq10GacPH
	8P0RpC07K4mIemEGS5hG2yAzwCL3SBKoOWQch0qIhQb0hwn5pDeI3MXKyghBA/K0gbA0WZ
	FCu7DvvM3SPxn3I2Q1FE3vXXRbumMT5HmMRIuaSfYyopntRhHgIdQzKBsBgjEQ==
Date: Thu, 02 Oct 2025 05:25:59 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Paul Sajna" <sajattack@postmarketos.org>
Message-ID: <b8817a128ca13b8bcc3a90fa114d916292183729@postmarketos.org>
TLS-Required: No
Subject: Re: [PATCH v3 00/11] arm64: dts: qcom: sdm845-lg-{common, judyln}:
 Improve HW support in dts
To: "Bjorn Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "David Heidelberg" <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, "Amir Dahan"
 <system64fumo@protonmail.com>, "Christopher Brown"
 <crispybrown@gmail.com>
In-Reply-To: <20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org>
References: <20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org>
X-Migadu-Flow: FLOW_OUT

September 29, 2025 at 5:05 AM, "Paul Sajna" <sajattack@postmarketos.org m=
ailto:sajattack@postmarketos.org?to=3D%22Paul%20Sajna%22%20%3Csajattack%4=
0postmarketos.org%3E > wrote:

> Changes in v3:
> - remove msm ids

I'm noticing now that this breaks wifi because the msm ids are used to id=
entify the firmware

> ath10k_snoc 18800000.wifi: failed to fetch board data for bus=3Dsnoc,qm=
i-board-id=3D0,qmi-chip-id=3D0,variant=3Dlg_judyln from ath10k/WCN3990/hw=
1.0/board-2.bin

What are your thoughts on this?


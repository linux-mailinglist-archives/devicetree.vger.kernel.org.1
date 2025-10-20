Return-Path: <devicetree+bounces-228719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A2927BF0605
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 12:04:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA00B3E7B1C
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 10:03:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F93E2F4A1F;
	Mon, 20 Oct 2025 10:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="UvPDScRh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1351723507E;
	Mon, 20 Oct 2025 10:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760954593; cv=none; b=lDxnDFGb8jB56O3l20keapf/TWqh82uDuYJ8t6jpzrOw8XXcimcJLuPR1clSdPpJLB5vER+1/sTAtEkAL2qse40/uzm1G+83a0P5cEkMtppqcIdp2Jw5qvSrV2EKdlkhfz3YEE4VN7uy6lkHp6N4+Ud+Ifv8dTVfqCrxP+era30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760954593; c=relaxed/simple;
	bh=JQfE3KNG+D5b8f84jPlSpb+DOEVmhCtdtf+KQumTN+I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lrl0o46rEb7NKvYiNTItFyWSZe1vMOK2BFVkdP4BBImK58SOXtR9cZrlIJkGlIVkhYgV7tEivHtM5MfI3K9o4rw6G6/LZL46lsOH/i1wg751etXS93Uhoy747/N8CIyoZCY1PX2Zc1L1xUJ3svTXy0xjB/u7yFmkJQNPwoJaKp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=UvPDScRh; arc=none smtp.client-ip=220.197.32.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=UlfP0VetgKs41Qf2UYWtLeAZdZiBKKUyFtRjTgmHDK4=;
	b=UvPDScRhxxrNnRdKq9YBwOvp34T8zAgVT09Dqd5Ix5HmxyhBjSeliEl9lD/U3i
	/KO8cbHFehRK+amVNYQOWp6HhIGq+0aSFfRDIFqwmeOEbfIaUYaxZNj3pzEbs4rN
	ktQ2bMgW6ENQgYs4ZQx2mMbJOOfaNt7gF9FSnT+iJaheU=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgD3H7B0CPZoxAhSAA--.26000S3;
	Mon, 20 Oct 2025 18:01:27 +0800 (CST)
Date: Mon, 20 Oct 2025 18:01:24 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: Frank Li <Frank.li@nxp.com>, Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	John Garry <john.g.garry@oracle.com>,
	James Clark <james.clark@linaro.org>,
	Mike Leach <mike.leach@linaro.org>, Leo Yan <leo.yan@linux.dev>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-perf-users@vger.kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev
Subject: Re: [PATCH v2 5/5] arm64: dts: imx94: add DDR Perf Monitor node
Message-ID: <aPYIdGPhr81i2w2F@dragon>
References: <20250821-imx94-ddr-pmu-v2-0-052c6420605d@nxp.com>
 <20250821-imx94-ddr-pmu-v2-5-052c6420605d@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250821-imx94-ddr-pmu-v2-5-052c6420605d@nxp.com>
X-CM-TRANSID:M88vCgD3H7B0CPZoxAhSAA--.26000S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU7zuWDUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiNhf2XGj2CHfydwAA3v

On Thu, Aug 21, 2025 at 07:01:53PM +0800, Xu Yang wrote:
> Add DDR Perf Monitor for i.MX94.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

Applied, thanks!



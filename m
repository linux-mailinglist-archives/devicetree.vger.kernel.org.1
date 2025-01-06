Return-Path: <devicetree+bounces-135875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D814A02B88
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 16:44:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EC2491660F4
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 15:43:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF3AF165F1F;
	Mon,  6 Jan 2025 15:43:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+RxhfXT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96FB4142E77;
	Mon,  6 Jan 2025 15:43:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736178208; cv=none; b=hhaN+u6wqxnxeEbBFJ+VmjNM3xDjUDFTA1vu/TazEO5j7i5MU7FLKs9mMIgDm0uAVcxGq7NJmgCr9G0rVQyXwmtNq0K10LVnkJZB+8ODxmTnXnr4VHOTklIiLVBwisWX3Wn9pQk3NdlYzaHCfUvMn9tVOf8RN/xCvxiVJV8JKvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736178208; c=relaxed/simple;
	bh=ssWmrKg7U81ziEXjNyLEoomZAtl0l1yLKPpNvRiBfoM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Dem8kJetx1TeRq9p3zez4QGQ0X+Zqpvx8NL259g0MkS+bL0d6We++r/OnxsyZxjB/5lXSldzDkL+v1UJkteMQ2M21smUglhYYkdDOO2YpxOVX7d7WpteqnAMYfnTJ4xFUCCRXUGXZYtY8+ViguE1doLru5QburbXXjAa1niPERM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+RxhfXT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A75F6C4CEDF;
	Mon,  6 Jan 2025 15:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736178208;
	bh=ssWmrKg7U81ziEXjNyLEoomZAtl0l1yLKPpNvRiBfoM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e+RxhfXT3UwlMOvSCoqyAEmP9ykd3zmatgNn3g260TsYKHY3ehsj9Jv9yNWQIK69t
	 gvDUmiI9ca7hv6TB5aRkkMl7/uFE7W/D7P7GkLc2/tAf8UGa+80x2V0+0T/t39i4OH
	 16q5YDO4sO8nPJSskmKq9tCV8E9nzpfHoUH98NE4vrhZwj+yxtCdi2u3wiS9G+kUvX
	 zorEhgl/+fUWNFypZhk5MiefCXVQnTpvvuMYy5CebmhI+ypVkAMDkJjORTVSR2edom
	 OW0ThwtW/Q5ueNR6Zc4cvPeoQeVBBSHNM5eqSv2S+f0bcIHTtk6eXQ/XjhcSIJdtUt
	 oOVCfGDldFptw==
Date: Mon, 6 Jan 2025 15:43:23 +0000
From: Lee Jones <lee@kernel.org>
To: Jure Repinc <jlp@holodeck1.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Troy Mitchell <troymitchell988@gmail.com>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] mfd: add new driver for P1 PMIC from SpacemiT
Message-ID: <20250106154323.GA6763@google.com>
References: <20241230-k1-p1-v1-0-aa4e02b9f993@gmail.com>
 <20241230-k1-p1-v1-2-aa4e02b9f993@gmail.com>
 <3082943.DJkKcVGEfx@excalibur>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3082943.DJkKcVGEfx@excalibur>

Deleted pointless signed mail without looking at it, since it slows down
mail traversal too much.

-- 
Lee Jones [李琼斯]

